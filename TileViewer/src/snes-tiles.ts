/**
 * SNES Tile Renderer
 *
 * Supports multiple pixel data formats:
 *
 * - "nibble": Nibble-packed (each byte = 2 pixels, high nibble first).
 *   This is the format produced by the FB30 decompressor — the data goes to
 *   WRAM and the game converts to bitplane before VRAM DMA.
 *   32 bytes per 8x8 tile (4 bytes per row).
 *
 * - "bitplane4": SNES 4bpp bitplane format (32 bytes per 8x8 tile).
 *   Bytes 0-15: bitplanes 0 & 1 interleaved, bytes 16-31: bitplanes 2 & 3.
 *
 * - "bitplane2": SNES 2bpp bitplane format (16 bytes per 8x8 tile).
 */

export type RGB = [number, number, number];

// Default grayscale palette (16 entries for 4bpp)
const DEFAULT_PALETTE: RGB[] = Array.from({ length: 16 }, (_, i) => {
  const v = Math.round((i / 15) * 255);
  return [v, v, v] as RGB;
});

/**
 * Parse 32 bytes of SNES 15-bit palette data into 16 RGB colors.
 * SNES format: little-endian 16-bit, 0BBBBBGGGGGRRRRR
 */
export function parseSNESPalette(data: Uint8Array): RGB[] {
  const palette: RGB[] = [];
  for (let i = 0; i < 16; i++) {
    const word = data[i * 2] | (data[i * 2 + 1] << 8);
    const r5 = word & 0x1f;
    const g5 = (word >> 5) & 0x1f;
    const b5 = (word >> 10) & 0x1f;
    // 5-bit to 8-bit: (v << 3) | (v >> 2) maps 0→0, 31→255
    palette.push([(r5 << 3) | (r5 >> 2), (g5 << 3) | (g5 >> 2), (b5 << 3) | (b5 >> 2)]);
  }
  return palette;
}

export type PixelFormat = "nibble" | "bitplane4" | "bitplane2";

export interface TileRenderOptions {
  format: PixelFormat;
  tilesWide: number;
  scale: number;
  palette?: RGB[];
}

/** Decode a single nibble-packed tile (32 bytes) → 8x8 palette indices */
function decodeTileNibble(data: Uint8Array, offset: number): number[][] {
  const pixels: number[][] = [];
  for (let y = 0; y < 8; y++) {
    const row: number[] = [];
    for (let b = 0; b < 4; b++) {
      const byte = data[offset + y * 4 + b];
      row.push((byte >> 4) & 0xf); // high nibble = left pixel
      row.push(byte & 0xf);        // low nibble = right pixel
    }
    pixels.push(row);
  }
  return pixels;
}

/** Decode a single 4bpp bitplane tile (32 bytes) → 8x8 palette indices */
function decodeTileBitplane4(data: Uint8Array, offset: number): number[][] {
  const pixels: number[][] = [];
  for (let y = 0; y < 8; y++) {
    const row: number[] = [];
    const bp0 = data[offset + y * 2];
    const bp1 = data[offset + y * 2 + 1];
    const bp2 = data[offset + 16 + y * 2];
    const bp3 = data[offset + 16 + y * 2 + 1];
    for (let x = 0; x < 8; x++) {
      const shift = 7 - x;
      row.push(
        ((bp0 >> shift) & 1) |
        (((bp1 >> shift) & 1) << 1) |
        (((bp2 >> shift) & 1) << 2) |
        (((bp3 >> shift) & 1) << 3)
      );
    }
    pixels.push(row);
  }
  return pixels;
}

/** Decode a single 2bpp bitplane tile (16 bytes) → 8x8 palette indices */
function decodeTileBitplane2(data: Uint8Array, offset: number): number[][] {
  const pixels: number[][] = [];
  for (let y = 0; y < 8; y++) {
    const row: number[] = [];
    const bp0 = data[offset + y * 2];
    const bp1 = data[offset + y * 2 + 1];
    for (let x = 0; x < 8; x++) {
      const shift = 7 - x;
      row.push(((bp0 >> shift) & 1) | (((bp1 >> shift) & 1) << 1));
    }
    pixels.push(row);
  }
  return pixels;
}

function bytesPerTile(format: PixelFormat): number {
  return format === "bitplane2" ? 16 : 32;
}

export function decodeTile(data: Uint8Array, offset: number, format: PixelFormat): number[][] {
  switch (format) {
    case "nibble": return decodeTileNibble(data, offset);
    case "bitplane4": return decodeTileBitplane4(data, offset);
    case "bitplane2": return decodeTileBitplane2(data, offset);
  }
}

/** Render decompressed tile data to a canvas as an assembled image */
export function renderImage(
  canvas: HTMLCanvasElement,
  data: Uint8Array,
  options: TileRenderOptions
): { tileCount: number; tilesHigh: number } {
  const { format, tilesWide, scale, palette } = options;
  const pal = palette ?? DEFAULT_PALETTE;
  const bpt = bytesPerTile(format);
  const tileCount = Math.floor(data.length / bpt);
  const tilesHigh = Math.ceil(tileCount / tilesWide);

  const imgWidth = tilesWide * 8;
  const imgHeight = tilesHigh * 8;

  canvas.width = imgWidth * scale;
  canvas.height = imgHeight * scale;
  canvas.style.width = `${imgWidth * scale}px`;
  canvas.style.height = `${imgHeight * scale}px`;

  const ctx = canvas.getContext("2d")!;
  ctx.imageSmoothingEnabled = false;

  const imageData = ctx.createImageData(imgWidth, imgHeight);
  const px = imageData.data;

  for (let t = 0; t < tileCount; t++) {
    const tileX = (t % tilesWide) * 8;
    const tileY = Math.floor(t / tilesWide) * 8;
    const tile = decodeTile(data, t * bpt, format);

    for (let y = 0; y < 8; y++) {
      for (let x = 0; x < 8; x++) {
        const idx = ((tileY + y) * imgWidth + tileX + x) * 4;
        const color = pal[tile[y][x]] ?? [255, 0, 255];
        px[idx] = color[0];
        px[idx + 1] = color[1];
        px[idx + 2] = color[2];
        px[idx + 3] = tile[y][x] === 0 ? 0 : 255; // index 0 = transparent
      }
    }
  }

  const tempCanvas = document.createElement("canvas");
  tempCanvas.width = imgWidth;
  tempCanvas.height = imgHeight;
  const tempCtx = tempCanvas.getContext("2d")!;
  tempCtx.putImageData(imageData, 0, 0);
  ctx.drawImage(tempCanvas, 0, 0, imgWidth * scale, imgHeight * scale);

  return { tileCount, tilesHigh };
}

/** Render each tile individually in a grid (for debugging) */
export function renderTileGrid(
  canvas: HTMLCanvasElement,
  data: Uint8Array,
  options: TileRenderOptions
): void {
  const { format, scale, palette } = options;
  const pal = palette ?? DEFAULT_PALETTE;
  const bpt = bytesPerTile(format);
  const tileCount = Math.floor(data.length / bpt);
  const gridCols = Math.min(tileCount, 12);
  const gridRows = Math.ceil(tileCount / gridCols);

  const cellSize = 8 * scale + 1;
  canvas.width = gridCols * cellSize;
  canvas.height = gridRows * cellSize;
  canvas.style.width = `${canvas.width}px`;
  canvas.style.height = `${canvas.height}px`;

  const ctx = canvas.getContext("2d")!;
  ctx.imageSmoothingEnabled = false;
  ctx.fillStyle = "#111";
  ctx.fillRect(0, 0, canvas.width, canvas.height);

  for (let t = 0; t < tileCount; t++) {
    const col = t % gridCols;
    const row = Math.floor(t / gridCols);
    const tile = decodeTile(data, t * bpt, format);

    const ox = col * cellSize;
    const oy = row * cellSize;

    for (let y = 0; y < 8; y++) {
      for (let x = 0; x < 8; x++) {
        const color = pal[tile[y][x]] ?? [255, 0, 255];
        ctx.fillStyle = `rgb(${color[0]},${color[1]},${color[2]})`;
        ctx.fillRect(ox + x * scale, oy + y * scale, scale, scale);
      }
    }
  }
}
