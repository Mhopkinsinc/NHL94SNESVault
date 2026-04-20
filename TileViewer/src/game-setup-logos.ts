/**
 * NHL 94 SNES Game Setup Logo Browser
 *
 * The game setup screen logos are stored differently from the team logo - Center Ice Mode:
 *
 * 1. Compressed data at SNES $81:ABDE (file $ABDE) is decompressed (FB30)
 *    into a blob containing:
 *      - A pointer table at the start (4 bytes per entry: relative offset)
 *      - Frame structures (22-byte header + N×7-byte sprite entries + tile data)
 *
 * 2. CODE_80B08D reads from this blob: [$base + index*4] gives a relative
 *    pointer to the frame data within the blob.
 *
 * 3. Team indices 0-27 = "home/left" logos, 33-60 = "away/right" logos. Not 100% certain about 33-60
 *
 * 4. Palettes from the same per-team table at $9C:850F used by team-logos.
 *
 * Assembly reference: CODE_9DD9AD (bank_9D.asm) loads the setup screen,
 * CODE_9DDDB3/CODE_9DDDFF renders individual team logos via CODE_80B08D.
 */

import { RGB, decodeTile, parseSNESPalette } from "./snes-tiles";
import { decompress } from "./decompress";

// SNES $81:ABDE -> file offset = ($01 * $8000) + ($2BDE) = $ABDE
const SETUP_COMPRESSED_OFFSET = 0x00ABDE;

// Per-team palette pointer table: SNES $9C:8497 -> file $0E0497
// Each 4-byte entry [addr:16LE][bank:16LE] points to 32 bytes of SNES palette
// (16 colors x 2 bytes). CODE_9DE0BD copies these 32 bytes to WRAM.
// Entry 0 (Anaheim) = $9A:EDBC, etc.
const PALETTE_TABLE_OFFSET = 0x0E0497;

const TEAM_COUNT = 28;
const HEADER_SIZE = 0x16; // 22 bytes
const ENTRY_SIZE = 7;
const FIXED_IMPORT_TILE_COUNT = 36;
const FIXED_IMPORT_TILE_BYTES = FIXED_IMPORT_TILE_COUNT * 32;
const FIXED_IMPORT_PADDED_TILE_COUNT = 50;
const FIXED_IMPORT_TOP_TILE_COUNT = 16;
const FIXED_IMPORT_TILES_WIDE = 6;
const FIXED_IMPORT_FIRST_TILES = [0, 2, 4, 6, 8, 10, 12, 14, 32] as const;
const FIXED_IMPORT_POSITIONS = [
  [0, 0],
  [16, 0],
  [32, 0],
  [0, 16],
  [16, 16],
  [32, 16],
  [0, 32],
  [16, 32],
  [32, 32],
] as const;

export { TEAM_COUNT };

export const TEAM_NAMES = [
  "Anaheim", "Boston", "Buffalo", "Calgary", "Chicago", "Dallas",
  "Detroit", "Edmonton", "Florida", "Hartford", "LA Kings", "Montreal",
  "New Jersey", "NY Islanders", "NY Rangers", "Ottawa", "Philadelphia",
  "Pittsburgh", "Quebec", "San Jose", "St Louis", "Tampa Bay",
  "Toronto", "Vancouver", "Washington", "Winnipeg",
  "All-Star West", "All-Star East",
];

function snesLoROMToFile(bank: number, addr: number): number {
  return ((bank & 0x7f) * 0x8000) + (addr & 0x7fff);
}

function signed16(val: number): number {
  return val >= 0x8000 ? val - 0x10000 : val;
}

export interface SetupSpriteEntry {
  xOffset: number;
  yOffset: number;
  firstTile: number;
  flags: number;
  size: number;
}

export interface SetupLogo {
  teamIndex: number;
  teamName: string;
  side: "home" | "away";
  numSprites: number;
  flag: number;
  numTiles: number;
  topBytes: number;
  botBytes: number;
  dataLength: number;
  sprites: SetupSpriteEntry[];
  tileData: Uint8Array;
  palette: RGB[];
  paletteAddr: string;  // SNES address string e.g. "9A:F17C"
  frameOffset: number;  // offset within decompressed blob
  log: string[];
}

export interface IndexedSetupLogoImage {
  width: number;
  height: number;
  pixels: Uint8Array;
  palette: RGB[];
  paletteNames: string[];
}

interface SetupLogoBounds {
  minX: number;
  minY: number;
  width: number;
  height: number;
}

const MAX_DIM = 256;

function createDefaultPalette(): RGB[] {
  return Array.from({ length: 16 }, (_, i) => {
    const v = Math.round((i / 15) * 255);
    return [v, v, v] as RGB;
  });
}

function clampSigned8(value: number): number {
  return Math.max(-128, Math.min(127, value));
}

function writeSigned16(target: Uint8Array, offset: number, value: number): void {
  const normalized = value < 0 ? value + 0x10000 : value;
  target[offset] = normalized & 0xff;
  target[offset + 1] = (normalized >> 8) & 0xff;
}

function writeWord(target: Uint8Array, offset: number, value: number): void {
  target[offset] = value & 0xff;
  target[offset + 1] = (value >> 8) & 0xff;
}

function getImportedTileIndices(firstTile: number): [number, number, number, number] {
  return [firstTile, firstTile + 1, firstTile + 16, firstTile + 17];
}

function createImportedTileData(tileData: Uint8Array): Uint8Array {
  if (tileData.length !== FIXED_IMPORT_TILE_BYTES) {
    throw new Error(
      `Imported setup logo must be exactly ${FIXED_IMPORT_TILE_BYTES} bytes (${FIXED_IMPORT_TILE_COUNT} tiles), got ${tileData.length}`
    );
  }

  const padded = new Uint8Array(FIXED_IMPORT_PADDED_TILE_COUNT * 32);
  for (let slot = 0; slot < FIXED_IMPORT_FIRST_TILES.length; slot++) {
    const blockX = (slot % 3) * 2;
    const blockY = Math.floor(slot / 3) * 2;
    const sourceTileIndices = [
      blockY * FIXED_IMPORT_TILES_WIDE + blockX,
      blockY * FIXED_IMPORT_TILES_WIDE + blockX + 1,
      (blockY + 1) * FIXED_IMPORT_TILES_WIDE + blockX,
      (blockY + 1) * FIXED_IMPORT_TILES_WIDE + blockX + 1,
    ];
    const targetTileIndices = getImportedTileIndices(FIXED_IMPORT_FIRST_TILES[slot]);
    for (let index = 0; index < targetTileIndices.length; index++) {
      const sourceOffset = sourceTileIndices[index] * 32;
      const targetOffset = targetTileIndices[index] * 32;
      padded.set(tileData.slice(sourceOffset, sourceOffset + 32), targetOffset);
    }
  }

  return padded;
}

export function getImportedSetupLogoExpectedSize(): number {
  return FIXED_IMPORT_TILE_BYTES;
}

export function buildImportedSetupLogo(
  romData: Uint8Array,
  rawTileData: Uint8Array,
  side: "home" | "away" = "home",
): SetupLogo {
  const log: string[] = [];
  const paletteResult = readPalette(romData, 0);
  const tileData = createImportedTileData(rawTileData);
  const sprites: SetupSpriteEntry[] = FIXED_IMPORT_FIRST_TILES.map((firstTile, index) => {
    const [xOffset, yOffset] = FIXED_IMPORT_POSITIONS[index];
    return {
      xOffset,
      yOffset,
      firstTile,
      flags: 0,
      size: 0xFF,
    };
  });

  log.push(`Imported setup logo (${side}) using fixed 3x3 16x16 layout`);
  log.push(`  Source tiles: ${FIXED_IMPORT_TILE_COUNT} (${rawTileData.length} bytes)`);
  log.push(`  Padded tile buffer: ${FIXED_IMPORT_PADDED_TILE_COUNT} tiles (${tileData.length} bytes)`);
  log.push(`  Header: 9 sprites, 50 tiles, flag=$80`);
  log.push(
    `  topBytes=$${(FIXED_IMPORT_TOP_TILE_COUNT * 32).toString(16)}, botBytes=$${((FIXED_IMPORT_PADDED_TILE_COUNT - FIXED_IMPORT_TOP_TILE_COUNT) * 32).toString(16)}, dataLen=$${(HEADER_SIZE + sprites.length * ENTRY_SIZE).toString(16)}`
  );

  sprites.forEach((sprite, index) => {
    const tiles = getImportedTileIndices(sprite.firstTile).join(", ");
    log.push(`  sprite[${index}]: (${sprite.xOffset}, ${sprite.yOffset}) tile=${sprite.firstTile} flags=$0 16x16 uses [${tiles}]`);
  });
  for (const line of paletteResult.log) log.push(line);

  return {
    teamIndex: 0,
    teamName: "Imported (Anaheim palette)",
    side,
    numSprites: sprites.length,
    flag: 0x80,
    numTiles: FIXED_IMPORT_PADDED_TILE_COUNT,
    topBytes: FIXED_IMPORT_TOP_TILE_COUNT * 32,
    botBytes: (FIXED_IMPORT_PADDED_TILE_COUNT - FIXED_IMPORT_TOP_TILE_COUNT) * 32,
    dataLength: HEADER_SIZE + sprites.length * ENTRY_SIZE,
    sprites,
    tileData,
    palette: paletteResult.palette,
    paletteAddr: paletteResult.snesAddr,
    frameOffset: -1,
    log,
  };
}

export function serializeSetupLogoFrame(logo: SetupLogo): Uint8Array {
  if ((logo.flag & 0x80) === 0) {
    throw new Error("Cannot serialize a setup logo frame without inline tile data");
  }

  const expectedTileBytes = logo.numTiles * 32;
  if (logo.tileData.length !== expectedTileBytes) {
    throw new Error(
      `Setup logo tile buffer length ${logo.tileData.length} does not match numTiles (${logo.numTiles} => ${expectedTileBytes} bytes)`
    );
  }

  const entryBytes = logo.sprites.length * ENTRY_SIZE;
  const bounds = getSetupLogoBounds(logo);
  const frameBytes = new Uint8Array(HEADER_SIZE + entryBytes + logo.tileData.length);

  frameBytes[0x00] = logo.numSprites & 0xff;
  frameBytes[0x01] = logo.flag & 0xff;
  frameBytes[0x02] = logo.numTiles & 0xff;
  frameBytes[0x03] = (logo.numTiles >> 8) & 0xff;
  writeWord(frameBytes, 0x0C, logo.topBytes);
  writeWord(frameBytes, 0x0E, logo.botBytes);
  writeWord(frameBytes, 0x10, logo.dataLength);
  frameBytes[0x12] = clampSigned8(bounds.minX) & 0xff;
  frameBytes[0x13] = clampSigned8(bounds.minY) & 0xff;
  frameBytes[0x14] = clampSigned8(bounds.minX + bounds.width) & 0xff;
  frameBytes[0x15] = clampSigned8(bounds.minY + bounds.height) & 0xff;

  logo.sprites.forEach((sprite, index) => {
    const entryOffset = HEADER_SIZE + index * ENTRY_SIZE;
    writeSigned16(frameBytes, entryOffset + 0x00, sprite.xOffset);
    writeSigned16(frameBytes, entryOffset + 0x02, sprite.yOffset);
    frameBytes[entryOffset + 0x04] = sprite.firstTile & 0xff;
    frameBytes[entryOffset + 0x05] = sprite.flags & 0xff;
    frameBytes[entryOffset + 0x06] = sprite.size & 0xff;
  });

  frameBytes.set(logo.tileData, HEADER_SIZE + entryBytes);
  return frameBytes;
}

function getSetupLogoBounds(logo: SetupLogo): SetupLogoBounds {
  let minX = 0;
  let minY = 0;
  let maxX = 0;
  let maxY = 0;

  for (const sprite of logo.sprites) {
    const span = sprite.size === 0xFF ? 16 : 8;
    if (Math.abs(sprite.xOffset) > MAX_DIM || Math.abs(sprite.yOffset) > MAX_DIM) continue;
    minX = Math.min(minX, sprite.xOffset);
    minY = Math.min(minY, sprite.yOffset);
    maxX = Math.max(maxX, sprite.xOffset + span);
    maxY = Math.max(maxY, sprite.yOffset + span);
  }

  return {
    minX,
    minY,
    width: Math.min(Math.max(maxX - minX, 8), MAX_DIM),
    height: Math.min(Math.max(maxY - minY, 8), MAX_DIM),
  };
}

function getSetupTileIndex(logo: SetupLogo, vramTile: number): number {
  const topSectionSize = Math.floor(logo.topBytes / 32);
  const topRows = Math.ceil(topSectionSize / 16);
  const bottomStartVram = topRows * 16;

  if (vramTile < bottomStartVram) {
    return vramTile;
  }

  return topSectionSize + (vramTile - bottomStartVram);
}

function forEachSetupLogoPixel(
  logo: SetupLogo,
  bounds: SetupLogoBounds,
  visit: (x: number, y: number, colorIdx: number) => void,
): void {
  for (const sprite of logo.sprites) {
    if (Math.abs(sprite.xOffset) > MAX_DIM || Math.abs(sprite.yOffset) > MAX_DIM) continue;

    const is16 = sprite.size === 0xFF;
    const tilesX = is16 ? 2 : 1;
    const tilesY = is16 ? 2 : 1;
    const hFlip = (sprite.flags & 0x40) !== 0;
    const vFlip = (sprite.flags & 0x80) !== 0;

    for (let ty = 0; ty < tilesY; ty++) {
      for (let tx = 0; tx < tilesX; tx++) {
        const vramTile = sprite.firstTile + ty * 16 + tx;
        const tileIdx = getSetupTileIndex(logo, vramTile);
        const tileOffset = tileIdx * 32;
        if (tileOffset + 32 > logo.tileData.length) continue;

        const tile = decodeTile(logo.tileData, tileOffset, "bitplane4");
        const drawTx = hFlip ? (tilesX - 1 - tx) : tx;
        const drawTy = vFlip ? (tilesY - 1 - ty) : ty;
        const baseX = sprite.xOffset - bounds.minX + drawTx * 8;
        const baseY = sprite.yOffset - bounds.minY + drawTy * 8;

        for (let y = 0; y < 8; y++) {
          for (let x = 0; x < 8; x++) {
            const srcX = hFlip ? (7 - x) : x;
            const srcY = vFlip ? (7 - y) : y;
            const pixelX = baseX + x;
            const pixelY = baseY + y;
            if (pixelX < 0 || pixelX >= bounds.width || pixelY < 0 || pixelY >= bounds.height) continue;

            const colorIdx = tile[srcY][srcX];
            if (colorIdx === 0) continue;
            visit(pixelX, pixelY, colorIdx);
          }
        }
      }
    }
  }
}

export function buildSetupLogoIndexedImage(
  logo: SetupLogo,
  paletteOverride?: RGB[],
): IndexedSetupLogoImage {
  if (logo.tileData.length === 0) {
    throw new Error("Game setup logo has no inline tile data to export");
  }

  const bounds = getSetupLogoBounds(logo);
  const pixels = new Uint8Array(bounds.width * bounds.height);
  const palette = (paletteOverride ?? logo.palette ?? createDefaultPalette()).slice(0, 256);
  const paletteNames = palette.map((_, index) => index === 0 ? "transparent" : `color${index}`);

  forEachSetupLogoPixel(logo, bounds, (x, y, colorIdx) => {
    pixels[y * bounds.width + x] = colorIdx;
  });

  return {
    width: bounds.width,
    height: bounds.height,
    pixels,
    palette,
    paletteNames,
  };
}

/**
 * Decompress the game setup screen blob from ROM.
 * This should be called once and cached.
 */
export function decompressSetupBlob(romData: Uint8Array): { data: Uint8Array; log: string[] } {
  const log: string[] = [];
  const maxRead = Math.min(0x10000, romData.length - SETUP_COMPRESSED_OFFSET);
  const compressed = romData.slice(SETUP_COMPRESSED_OFFSET, SETUP_COMPRESSED_OFFSET + maxRead);

  log.push(`Decompressing game setup data from file $${SETUP_COMPRESSED_OFFSET.toString(16).toUpperCase()}`);
  log.push(`  SNES address: $81:ABDE`);

  const result = decompress(compressed);
  log.push(`  Decompressed: ${result.data.length} bytes ($${result.data.length.toString(16).toUpperCase()})`);
  for (const line of result.log) {
    log.push(`  ${line}`);
  }

  return { data: result.data, log };
}

/**
 * Read the number of frame entries from the pointer table.
 * The first pointer value / 4 gives the count (pointers end where first frame begins).
 */
export function getFrameCount(blob: Uint8Array): number {
  if (blob.length < 4) return 0;
  const firstPtr = blob[0] | (blob[1] << 8) | (blob[2] << 16) | (blob[3] << 24);
  return Math.floor(firstPtr / 4);
}

function readPalette(romData: Uint8Array, teamIndex: number): { palette: RGB[]; snesAddr: string; log: string[] } {
  const log: string[] = [];
  const palIdx = Math.min(teamIndex, TEAM_COUNT - 1);
  const base = PALETTE_TABLE_OFFSET + palIdx * 4;
  const palAddr = romData[base] | (romData[base + 1] << 8);
  const palBank = romData[base + 2] | (romData[base + 3] << 8);
  const palFile = snesLoROMToFile(palBank, palAddr);

  const snesAddr = `${palBank.toString(16).toUpperCase()}:${palAddr.toString(16).toUpperCase().padStart(4, "0")}`;
  log.push(`  Palette ptr: $${snesAddr} (file $${palFile.toString(16).toUpperCase()})`);

  const palBytes = romData.slice(palFile, palFile + 32);
  const palette = parseSNESPalette(palBytes);

  const colorStrs = palette.map((c, i) => `${i}:rgb(${c[0]},${c[1]},${c[2]})`);
  log.push(`  Palette: ${colorStrs.join(" ")}`);

  return { palette, snesAddr, log };
}

/**
 * Parse a game setup logo from the decompressed blob.
 */
export function parseSetupLogo(
  romData: Uint8Array,
  blob: Uint8Array,
  teamIndex: number,
  side: "home" | "away" = "home",
): SetupLogo {
  const log: string[] = [];
  const name = TEAM_NAMES[teamIndex] ?? `Team ${teamIndex}`;
  // Both home and away use the same frame data (indices 0-27).
  // The +33 offset in the assembly (CODE_9DA62D) applies to the BG overlay
  // table at $9C:8497 for screen positioning, not to the blob frame index.
  const blobIndex = teamIndex;

  log.push(`Team ${teamIndex}: ${name} (${side})`);
  log.push(`  Blob index: ${blobIndex}`);

  // Read pointer from blob's pointer table
  const ptrOff = blobIndex * 4;
  if (ptrOff + 4 > blob.length) {
    throw new Error(`Blob index ${blobIndex} exceeds pointer table (blob size: ${blob.length})`);
  }
  const frameOffset = blob[ptrOff] | (blob[ptrOff + 1] << 8);
  // High word is typically 0 for data within the same WRAM region
  const frameOffsetHigh = blob[ptrOff + 2] | (blob[ptrOff + 3] << 8);

  log.push(`  Pointer: $${frameOffset.toString(16).padStart(4, "0")} (high: $${frameOffsetHigh.toString(16).padStart(4, "0")})`);
  log.push(`  Frame at blob offset: $${frameOffset.toString(16).padStart(4, "0")}`);

  if (frameOffset + HEADER_SIZE > blob.length) {
    throw new Error(`Frame offset $${frameOffset.toString(16)} + header exceeds blob size`);
  }

  // Read 22-byte frame header
  const rawBytes = blob.slice(frameOffset, frameOffset + HEADER_SIZE);
  const numSprites = blob[frameOffset + 0x00];
  const flag = blob[frameOffset + 0x01];
  const numTiles = blob[frameOffset + 0x02];
  const topBytes = blob[frameOffset + 0x0C] | (blob[frameOffset + 0x0D] << 8);
  const botBytes = blob[frameOffset + 0x0E] | (blob[frameOffset + 0x0F] << 8);
  const dataLength = blob[frameOffset + 0x10] | (blob[frameOffset + 0x11] << 8);

  log.push(`  Header: ${numSprites} sprites, ${numTiles} tiles, flag=$${flag.toString(16)}`);
  log.push(`    topBytes=$${topBytes.toString(16)}, botBytes=$${botBytes.toString(16)}, dataLen=$${dataLength.toString(16)}`);
  const hexHeader = Array.from(rawBytes).map(b => b.toString(16).padStart(2, "0")).join(" ");
  log.push(`    raw: ${hexHeader}`);

  // Validate dataLength
  const expectedDataLen = HEADER_SIZE + numSprites * ENTRY_SIZE;
  if (dataLength !== expectedDataLen) {
    log.push(`    WARNING: dataLength=$${dataLength.toString(16)} != expected $${expectedDataLen.toString(16)}`);
  }

  // Parse sprite entries
  const maxSprites = Math.min(numSprites, 64);
  const sprites: SetupSpriteEntry[] = [];
  for (let i = 0; i < maxSprites; i++) {
    const off = frameOffset + HEADER_SIZE + i * ENTRY_SIZE;
    if (off + ENTRY_SIZE > blob.length) break;

    const entry: SetupSpriteEntry = {
      xOffset: signed16(blob[off] | (blob[off + 1] << 8)),
      yOffset: signed16(blob[off + 2] | (blob[off + 3] << 8)),
      firstTile: blob[off + 4],
      flags: blob[off + 5],
      size: blob[off + 6],
    };
    sprites.push(entry);

    const sizeStr = entry.size === 0xFF ? "16x16" : "8x8";
    const hFlip = (entry.flags & 0x40) !== 0;
    const vFlip = (entry.flags & 0x80) !== 0;
    const flipStr = (hFlip || vFlip) ? ` [${hFlip ? "H" : ""}${vFlip ? "V" : ""}-flip]` : "";
    log.push(`  sprite[${i}]: (${entry.xOffset}, ${entry.yOffset}) tile=${entry.firstTile} flags=$${entry.flags.toString(16)}${flipStr} ${sizeStr}`);
  }

  // Read tile data
  const hasInlineTiles = (flag & 0x80) !== 0;
  const tileStart = frameOffset + HEADER_SIZE + maxSprites * ENTRY_SIZE;
  let tileData: Uint8Array;

  if (!hasInlineTiles) {
    log.push(`  Flag=$${flag.toString(16)}: tiles pre-loaded (no inline tile data)`);
    tileData = new Uint8Array(0);
  } else {
    const maxTiles = Math.min(numTiles, 256);
    const tileBytes = maxTiles * 32;
    const safeTileEnd = Math.min(tileStart + tileBytes, blob.length);
    tileData = blob.slice(tileStart, safeTileEnd);
    log.push(`  Tile data at blob+$${tileStart.toString(16)}: ${tileData.length} bytes (${Math.floor(tileData.length / 32)} tiles)`);

    const topTiles = Math.floor(topBytes / 32);
    const botTiles = Math.floor(botBytes / 32);
    log.push(`  Tile layout: topSection=${topTiles} tiles, bottomSection=${botTiles} tiles`);
  }

  // Read per-team palette
  const palResult = readPalette(romData, teamIndex);
  for (const line of palResult.log) log.push(line);

  return {
    teamIndex,
    teamName: name,
    side,
    numSprites,
    flag,
    numTiles,
    topBytes,
    botBytes,
    dataLength,
    sprites,
    tileData,
    palette: palResult.palette,
    paletteAddr: palResult.snesAddr,
    frameOffset,
    log,
  };
}

/**
 * Render a game setup logo to a canvas.
 */
export function renderSetupLogo(
  canvas: HTMLCanvasElement,
  logo: SetupLogo,
  scale: number,
  palette?: RGB[],
): { width: number; height: number } {
  const pal = palette ?? logo.palette ?? createDefaultPalette();

  if (logo.tileData.length === 0) {
    // No inline tiles — render placeholder
    canvas.width = 64 * scale;
    canvas.height = 64 * scale;
    const ctx = canvas.getContext("2d")!;
    ctx.fillStyle = "#1a1a2e";
    ctx.fillRect(0, 0, canvas.width, canvas.height);
    ctx.fillStyle = "#555";
    ctx.font = `${12 * Math.max(scale / 2, 1)}px monospace`;
    ctx.textAlign = "center";
    ctx.fillText("No inline tiles", canvas.width / 2, canvas.height / 2);
    return { width: 64, height: 64 };
  }

  const bounds = getSetupLogoBounds(logo);
  const imgW = bounds.width;
  const imgH = bounds.height;

  canvas.width = imgW * scale;
  canvas.height = imgH * scale;
  canvas.style.width = `${canvas.width}px`;
  canvas.style.height = `${canvas.height}px`;

  const ctx = canvas.getContext("2d")!;
  ctx.imageSmoothingEnabled = false;

  const imageData = ctx.createImageData(imgW, imgH);
  const px = imageData.data;

  // Fill background with palette color 0
  const bgColor = pal[0] ?? [0, 0, 0];
  for (let i = 0; i < px.length; i += 4) {
    px[i] = bgColor[0];
    px[i + 1] = bgColor[1];
    px[i + 2] = bgColor[2];
    px[i + 3] = 255;
  }

  forEachSetupLogoPixel(logo, bounds, (x, y, colorIdx) => {
    const idx = (y * imgW + x) * 4;
    const color = pal[colorIdx] ?? [255, 0, 255];
    px[idx] = color[0];
    px[idx + 1] = color[1];
    px[idx + 2] = color[2];
    px[idx + 3] = 255;
  });

  // Scale up
  const tempCanvas = document.createElement("canvas");
  tempCanvas.width = imgW;
  tempCanvas.height = imgH;
  const tempCtx = tempCanvas.getContext("2d")!;
  tempCtx.putImageData(imageData, 0, 0);
  ctx.drawImage(tempCanvas, 0, 0, imgW * scale, imgH * scale);

  return { width: imgW, height: imgH };
}
