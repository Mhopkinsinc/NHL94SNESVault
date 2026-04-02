/**
 * NHL 94 SNES Game Setup Logo Browser
 *
 * The game setup screen logos are stored differently from the team logo browser:
 *
 * 1. Compressed data at SNES $81:ABDE (file $ABDE) is decompressed (FB30)
 *    into a blob containing:
 *      - A pointer table at the start (4 bytes per entry: relative offset)
 *      - Frame structures (22-byte header + N×7-byte sprite entries + tile data)
 *
 * 2. CODE_80B08D reads from this blob: [$base + index*4] gives a relative
 *    pointer to the frame data within the blob.
 *
 * 3. Team indices 0-27 = "home/left" logos, 33-60 = "away/right" logos.
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

// Palette pointer table: SNES $9C:850F -> file $0E050F (same as team-logos.ts)
const PALETTE_TABLE_OFFSET = 0x0E050F;

const TEAM_COUNT = 28;
const AWAY_OFFSET = 33;
const HEADER_SIZE = 0x16; // 22 bytes
const ENTRY_SIZE = 7;

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
  frameOffset: number;  // offset within decompressed blob
  log: string[];
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

function readPalette(romData: Uint8Array, teamIndex: number): { palette: RGB[]; log: string[] } {
  const log: string[] = [];
  const palIdx = Math.min(teamIndex, TEAM_COUNT - 1);
  const base = PALETTE_TABLE_OFFSET + palIdx * 4;
  const palAddr = romData[base] | (romData[base + 1] << 8);
  const palBank = romData[base + 2] | (romData[base + 3] << 8);
  const palFile = snesLoROMToFile(palBank, palAddr);

  log.push(`  Palette ptr: $${((palBank << 16) | palAddr).toString(16).toUpperCase()} (file $${palFile.toString(16).toUpperCase()})`);

  const palBytes = romData.slice(palFile, palFile + 32);
  const palette = parseSNESPalette(palBytes);

  const colorStrs = palette.map((c, i) => `${i}:rgb(${c[0]},${c[1]},${c[2]})`);
  log.push(`  Palette: ${colorStrs.join(" ")}`);

  return { palette, log };
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
  const blobIndex = side === "away" ? teamIndex + AWAY_OFFSET : teamIndex;

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
  const DEFAULT_PAL: RGB[] = Array.from({ length: 16 }, (_, i) => {
    const v = Math.round((i / 15) * 255);
    return [v, v, v] as RGB;
  });
  const pal = palette ?? logo.palette ?? DEFAULT_PAL;
  const { sprites, tileData } = logo;

  if (tileData.length === 0) {
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

  // Calculate bounding box
  const MAX_DIM = 256;
  let minX = 0, minY = 0, maxX = 0, maxY = 0;
  for (const s of sprites) {
    const w = s.size === 0xFF ? 16 : 8;
    if (Math.abs(s.xOffset) > MAX_DIM || Math.abs(s.yOffset) > MAX_DIM) continue;
    minX = Math.min(minX, s.xOffset);
    minY = Math.min(minY, s.yOffset);
    maxX = Math.max(maxX, s.xOffset + w);
    maxY = Math.max(maxY, s.yOffset + w);
  }

  const imgW = Math.min(Math.max(maxX - minX, 8), MAX_DIM);
  const imgH = Math.min(Math.max(maxY - minY, 8), MAX_DIM);

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

  // Compute top section size for VRAM tile grid mapping
  const topSectionSize = Math.floor(logo.topBytes / 32);

  // Render each sprite
  for (const s of sprites) {
    if (Math.abs(s.xOffset) > MAX_DIM || Math.abs(s.yOffset) > MAX_DIM) continue;

    const is16 = s.size === 0xFF;
    const tilesX = is16 ? 2 : 1;
    const tilesY = is16 ? 2 : 1;
    const hFlip = (s.flags & 0x40) !== 0;
    const vFlip = (s.flags & 0x80) !== 0;

    for (let ty = 0; ty < tilesY; ty++) {
      for (let tx = 0; tx < tilesX; tx++) {
        // SNES 16-wide VRAM tile grid mapping
        const vramTile = s.firstTile + ty * 16 + tx;
        const topRows = Math.ceil(topSectionSize / 16);
        const bottomStartVram = topRows * 16;

        let tileIdx: number;
        if (vramTile < bottomStartVram) {
          tileIdx = vramTile;
        } else {
          tileIdx = topSectionSize + (vramTile - bottomStartVram);
        }
        const tileOffset = tileIdx * 32;

        if (tileOffset + 32 > tileData.length) continue;

        // Try 4bpp bitplane format first (native VRAM format)
        const tile = decodeTile(tileData, tileOffset, "bitplane4");

        const drawTx = hFlip ? (tilesX - 1 - tx) : tx;
        const drawTy = vFlip ? (tilesY - 1 - ty) : ty;
        const baseX = s.xOffset - minX + drawTx * 8;
        const baseY = s.yOffset - minY + drawTy * 8;

        for (let y = 0; y < 8; y++) {
          for (let x = 0; x < 8; x++) {
            const srcX = hFlip ? (7 - x) : x;
            const srcY = vFlip ? (7 - y) : y;
            const px_x = baseX + x;
            const px_y = baseY + y;
            if (px_x < 0 || px_x >= imgW || px_y < 0 || px_y >= imgH) continue;

            const colorIdx = tile[srcY][srcX];
            if (colorIdx === 0) continue;

            const idx = (px_y * imgW + px_x) * 4;
            const color = pal[colorIdx] ?? [255, 0, 255];
            px[idx] = color[0];
            px[idx + 1] = color[1];
            px[idx + 2] = color[2];
            px[idx + 3] = 255;
          }
        }
      }
    }
  }

  // Scale up
  const tempCanvas = document.createElement("canvas");
  tempCanvas.width = imgW;
  tempCanvas.height = imgH;
  const tempCtx = tempCanvas.getContext("2d")!;
  tempCtx.putImageData(imageData, 0, 0);
  ctx.drawImage(tempCanvas, 0, 0, imgW * scale, imgH * scale);

  return { width: imgW, height: imgH };
}
