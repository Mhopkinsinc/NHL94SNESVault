/**
 * NHL 94 SNES Sprite Frame Browser
 *
 * Parses the Frame Header Table at ROM offset $010000 (976 entries × 4 bytes)
 * and renders composed sprite frames from the frame data that follows.
 *
 * Frame data structure (per sprites.md):
 *   - 22-byte sprite header
 *   - N × 7-byte sprite entries
 *   - Tile data (4bpp bitplane, 32 bytes per 8×8 tile)
 */

import { RGB, decodeTile } from "./snes-tiles";
import { identifyCompression, decompress } from "./decompress";

const FRAME_TABLE_OFFSET = 0x10000;
const FRAME_COUNT = 976;
const HEADER_SIZE = 0x16; // 22 bytes
const ENTRY_SIZE = 7;

export { FRAME_COUNT };

export interface SpriteEntry {
  xOffset: number;
  yOffset: number;
  firstTile: number;
  flags: number;
  size: number; // $FF = 16×16 (2×2 tiles), else 8×8
}

export interface FrameHeader {
  numSprites: number;
  flag: number;
  numTiles: number;
  padding: number;
  stride: number;
  dataLength: number;
  hotspotX: number;
  hotspotY: number;
  rawBytes: Uint8Array; // full 22-byte header for debugging
}

export interface FrameData {
  frameId: number;
  fileOffset: number;
  header: FrameHeader;
  sprites: SpriteEntry[];
  tileData: Uint8Array;
  log: string[];
}

function signed16(val: number): number {
  return val >= 0x8000 ? val - 0x10000 : val;
}

function signed8(val: number): number {
  return val >= 0x80 ? val - 0x100 : val;
}

export function parseFrame(romData: Uint8Array, frameId: number): FrameData {
  const log: string[] = [];

  if (frameId < 1 || frameId > FRAME_COUNT) {
    throw new Error(`Frame ID must be 1–${FRAME_COUNT}, got ${frameId}`);
  }

  // Read 4-byte pointer from header table (1-based frame IDs)
  // The ASM (CODE_80B08D) adds base $82:$8000 to get a SNES address,
  // then uses LoROM indirect-long addressing. We replicate that here:
  //   ADC #$8000 (low word) → SNES address within bank
  //   ADC #$0082 (high word + carry) → SNES bank byte
  //   LoROM file offset = (bank & $7F) * $8000 + (addr & $7FFF)
  const tableAddr = FRAME_TABLE_OFFSET + (frameId - 1) * 4;
  const ptrLow = romData[tableAddr] | (romData[tableAddr + 1] << 8);
  const ptrHigh = romData[tableAddr + 2] | (romData[tableAddr + 3] << 8);
  const snesAddrFull = ptrLow + 0x8000;
  const carry = snesAddrFull > 0xFFFF ? 1 : 0;
  const snesAddr = snesAddrFull & 0xFFFF;
  const snesBank = ((ptrHigh & 0xFF) + 0x82 + carry) & 0xFF;
  const frameOffset = ((snesBank & 0x7F) * 0x8000) + (snesAddr & 0x7FFF);

  log.push(`Frame ${frameId}: table @ $${tableAddr.toString(16)}, SNES $${snesBank.toString(16)}:$${snesAddr.toString(16).padStart(4, "0")} -> file $${frameOffset.toString(16)}`);

  // Dump first 64 raw bytes for diagnostics
  const rawDump = romData.slice(frameOffset, Math.min(frameOffset + 64, romData.length));
  const rawDumpHex = Array.from(rawDump).map(b => b.toString(16).padStart(2, "0")).join(" ");
  log.push(`Raw data (first 64 bytes): ${rawDumpHex}`);

  // The game ALWAYS uses a 22-byte header (confirmed from ASM at CODE_80B08D:
  // Y starts at $0016=22 for sprite entry reads, hardcoded).
  const rawBytes = romData.slice(frameOffset, frameOffset + HEADER_SIZE);
  const hdr: FrameHeader = {
    numSprites: romData[frameOffset + 0x00],
    flag: romData[frameOffset + 0x01],
    numTiles: romData[frameOffset + 0x02],
    padding: romData[frameOffset + 0x03],
    stride: romData[frameOffset + 0x0A],
    dataLength: romData[frameOffset + 0x10] | (romData[frameOffset + 0x11] << 8),
    hotspotX: signed8(romData[frameOffset + 0x12]),
    hotspotY: signed8(romData[frameOffset + 0x13]),
    rawBytes,
  };

  log.push(`Header: ${hdr.numSprites} sprites, ${hdr.numTiles} tiles, stride=${hdr.stride}`);
  log.push(`  flag=$${hdr.flag.toString(16)}, dataLen=$${hdr.dataLength.toString(16)}, hotspot=(${hdr.hotspotX}, ${hdr.hotspotY})`);
  const hexHeader = Array.from(rawBytes).map(b => b.toString(16).padStart(2, "0")).join(" ");
  log.push(`  raw: ${hexHeader}`);

  // Validate: for well-formed frames, dataLength should equal header + entries
  const expectedDataLen = HEADER_SIZE + hdr.numSprites * ENTRY_SIZE;
  if (hdr.dataLength !== expectedDataLen) {
    log.push(`  WARNING: dataLength=$${hdr.dataLength.toString(16)} != expected $${expectedDataLen.toString(16)} (header may be invalid)`);
  }

  // Sanity-check
  const maxSprites = Math.min(hdr.numSprites, 64);
  const maxTiles = Math.min(hdr.numTiles, 256);

  // Parse sprite entries
  const sprites: SpriteEntry[] = [];
  for (let i = 0; i < maxSprites; i++) {
    const off = frameOffset + HEADER_SIZE + i * ENTRY_SIZE;
    const rawEntry = romData.slice(off, off + ENTRY_SIZE);
    const entry: SpriteEntry = {
      xOffset: signed16(romData[off] | (romData[off + 1] << 8)),
      yOffset: signed16(romData[off + 2] | (romData[off + 3] << 8)),
      firstTile: romData[off + 4],
      flags: romData[off + 5],
      size: romData[off + 6],
    };
    sprites.push(entry);

    const sizeStr = entry.size === 0xFF ? "16x16" : "8x8";
    const hFlip = (entry.flags & 0x40) !== 0;
    const vFlip = (entry.flags & 0x80) !== 0;
    const flipStr = (hFlip || vFlip) ? ` [${hFlip ? "H" : ""}${vFlip ? "V" : ""}-flip]` : "";
    const rawHex = Array.from(rawEntry).map(b => b.toString(16).padStart(2, "0")).join(" ");
    log.push(`  sprite[${i}]: (${entry.xOffset}, ${entry.yOffset}) tile=${entry.firstTile} flags=$${entry.flags.toString(16)}${flipStr} ${sizeStr}  raw=[${rawHex}]`);
  }

  // Check flag byte: $80 = inline tile data, anything else = tiles pre-loaded in VRAM
  const hasInlineTiles = (hdr.flag & 0x80) !== 0;
  const tileStart = frameOffset + HEADER_SIZE + maxSprites * ENTRY_SIZE;

  let tileData: Uint8Array;
  if (!hasInlineTiles) {
    log.push(`Flag=$${hdr.flag.toString(16)}: tiles are PRE-LOADED in VRAM (no inline tile data)`);
    log.push(`  This frame references tiles that were DMA'd to VRAM by a separate decompression call.`);
    log.push(`  The sprite entries reference VRAM tile indices, not inline data offsets.`);
    tileData = new Uint8Array(0);
  } else {
    // Tile data follows sprite entries — may be raw or compressed
    const maxReadLen = Math.min(0x10000, romData.length - tileStart);
    const rawSlice = romData.slice(tileStart, tileStart + maxReadLen);

    const compType = rawSlice.length >= 2 ? identifyCompression(rawSlice) : null;
    if (compType) {
      log.push(`Tile data @ $${tileStart.toString(16)}: COMPRESSED (${compType.name} — ${compType.description})`);
      try {
        const result = decompress(rawSlice);
        tileData = result.data;
        log.push(`  Decompressed ${result.data.length} bytes (${Math.floor(result.data.length / 32)} tiles)`);
        for (const line of result.log) {
          log.push(`  ${line}`);
        }
      } catch (err) {
        log.push(`  Decompression FAILED: ${err instanceof Error ? err.message : String(err)}`);
        tileData = new Uint8Array(0);
      }
    } else {
      const tileBytes = maxTiles * 32;
      const safeTileEnd = Math.min(tileStart + tileBytes, romData.length);
      tileData = romData.slice(tileStart, safeTileEnd);
      log.push(`Tile data @ $${tileStart.toString(16)}: raw, ${tileData.length} bytes (${Math.floor(tileData.length / 32)} tiles)`);
    }
  }
  const actualTileCount = Math.floor(tileData.length / 32);

  // Log tile layout using DMA params from header
  if (hasInlineTiles && actualTileCount > 0) {
    const topBytes = rawBytes[0x0C] | (rawBytes[0x0D] << 8);
    const botBytes = rawBytes[0x0E] | (rawBytes[0x0F] << 8);
    const topTiles = Math.floor(topBytes / 32);
    const botTiles = Math.floor(botBytes / 32);
    log.push(`Tile layout: topSection=${topTiles} tiles (${topBytes} bytes), bottomSection=${botTiles} tiles (${botBytes} bytes)`);
  }

  return { frameId, fileOffset: frameOffset, header: hdr, sprites, tileData, log };
}

/**
 * Render a composed sprite frame to a canvas.
 * Returns the bounding box dimensions.
 */
export function renderFrame(
  canvas: HTMLCanvasElement,
  frame: FrameData,
  scale: number,
  palette?: RGB[],
): { width: number; height: number } {
  const DEFAULT_PAL: RGB[] = Array.from({ length: 16 }, (_, i) => {
    const v = Math.round((i / 15) * 255);
    return [v, v, v] as RGB;
  });
  const pal = palette ?? DEFAULT_PAL;
  const { sprites, tileData } = frame;

  // Calculate bounding box from all sprite entries, clamping to sane limits
  const MAX_DIM = 256; // max pixel dimension per axis
  let minX = 0, minY = 0, maxX = 0, maxY = 0;
  for (const s of sprites) {
    const w = s.size === 0xFF ? 16 : 8;
    const h = w;
    // Skip sprites with clearly bogus offsets
    if (Math.abs(s.xOffset) > MAX_DIM || Math.abs(s.yOffset) > MAX_DIM) continue;
    minX = Math.min(minX, s.xOffset);
    minY = Math.min(minY, s.yOffset);
    maxX = Math.max(maxX, s.xOffset + w);
    maxY = Math.max(maxY, s.yOffset + h);
  }

  // Clamp to safe canvas size
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

  // The SNES OBJ hardware arranges tiles in a 16-wide grid in VRAM.
  // A 16x16 sprite with tile N uses VRAM tiles: N, N+1, N+16, N+17.
  // But the inline ROM data is packed linearly with topSectionSize tiles
  // per VRAM row. To convert: romIndex = floor(vramTile/16)*topSection + vramTile%16
  //
  // topSectionSize = number of tiles in VRAM row 0 (top halves of 16x16 + 8x8 tiles).
  // Also derivable from header: bytes $0C-$0D = topSectionSize * 32.
  const topSectionSize = Math.floor(
    ((frame.header.rawBytes[0x0C] | (frame.header.rawBytes[0x0D] << 8)) / 32)
  );

  // Render each sprite entry
  for (const s of sprites) {
    if (Math.abs(s.xOffset) > MAX_DIM || Math.abs(s.yOffset) > MAX_DIM) continue;

    const is16 = s.size === 0xFF;
    const tilesX = is16 ? 2 : 1;
    const tilesY = is16 ? 2 : 1;

    // SNES OAM flags: bit 6 = H-flip, bit 7 = V-flip
    const hFlip = (s.flags & 0x40) !== 0;
    const vFlip = (s.flags & 0x80) !== 0;

    for (let ty = 0; ty < tilesY; ty++) {
      for (let tx = 0; tx < tilesX; tx++) {
        // Compute VRAM tile index (SNES 16-wide OBJ grid)
        const vramTile = s.firstTile + ty * 16 + tx;
        // Convert VRAM tile to ROM linear index
        const tileIdx = Math.floor(vramTile / 16) * topSectionSize + (vramTile % 16);
        const tileOffset = tileIdx * 32;

        if (tileOffset + 32 > tileData.length) continue;

        const tile = decodeTile(tileData, tileOffset, "bitplane4");

        // When flipping a 16x16 sprite, the tile positions within
        // the 2x2 grid also swap (e.g. H-flip swaps left/right tiles)
        const drawTx = hFlip ? (tilesX - 1 - tx) : tx;
        const drawTy = vFlip ? (tilesY - 1 - ty) : ty;
        const baseX = s.xOffset - minX + drawTx * 8;
        const baseY = s.yOffset - minY + drawTy * 8;

        for (let y = 0; y < 8; y++) {
          for (let x = 0; x < 8; x++) {
            // Flip pixel coordinates within each 8x8 tile
            const srcX = hFlip ? (7 - x) : x;
            const srcY = vFlip ? (7 - y) : y;
            const px_x = baseX + x;
            const px_y = baseY + y;
            if (px_x < 0 || px_x >= imgW || px_y < 0 || px_y >= imgH) continue;

            const colorIdx = tile[srcY][srcX];
            if (colorIdx === 0) continue; // transparent over background

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
