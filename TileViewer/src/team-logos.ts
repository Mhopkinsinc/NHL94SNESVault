/**
 * NHL 94 SNES Team Logo Extractor
 *
 * Team logos are composed from:
 *   1. Per-team compressed tile graphics (FB30 at $9C:83B7 table, +0/+2)
 *   2. Per-team tilemaps (8x4 tile grids at $9C:83B7 table, +4/+6)
 *   3. Per-team palettes (raw 16-color SNES palette at $9C:850F table)
 *
 * Tile/tilemap pointer table at SNES $9C:83B7 (file $0E03B7), 8 bytes/team:
 *   [tileGfxAddr:16] [tileGfxBank:16] [tilemapAddr:16] [tilemapBank:16]
 *
 * Palette pointer table at SNES $9C:850F (file $0E050F), 4 bytes/team:
 *   [palAddr:16] [palBank:16] -> 16 raw SNES 15-bit RGB colors (32 bytes)
 *
 * Tilemap header: [width:16] [height:16] [info:16] then width*height tile entries
 * Tile index $FF = blank (game does INC A, $FF wraps to $00 = transparent)
 * ROM value 0 = data tile 0, value 1 = data tile 1, etc.
 */

import { RGB, decodeTile, parseSNESPalette } from "./snes-tiles";
import { decompress } from "./decompress";

// SNES $9C:83B7 -> file offset ((0x1C) * 0x8000) + 0x03B7
const TEAM_TABLE_OFFSET = 0x0E03B7;
// SNES $9C:850F -> file offset ((0x1C) * 0x8000) + 0x050F
const PALETTE_TABLE_OFFSET = 0x0E050F;
const TEAM_COUNT = 28;

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

interface TeamPointers {
  tileGfxAddr: number;  // SNES address (bank:addr combined)
  tileGfxFile: number;  // file offset
  tilemapAddr: number;
  tilemapFile: number;
}

function readTeamPointers(romData: Uint8Array, teamIndex: number): TeamPointers {
  const base = TEAM_TABLE_OFFSET + teamIndex * 8;
  const gfxAddr = romData[base] | (romData[base + 1] << 8);
  const gfxBank = romData[base + 2] | (romData[base + 3] << 8);
  const mapAddr = romData[base + 4] | (romData[base + 5] << 8);
  const mapBank = romData[base + 6] | (romData[base + 7] << 8);

  return {
    tileGfxAddr: (gfxBank << 16) | gfxAddr,
    tileGfxFile: snesLoROMToFile(gfxBank, gfxAddr),
    tilemapAddr: (mapBank << 16) | mapAddr,
    tilemapFile: snesLoROMToFile(mapBank, mapAddr),
  };
}

export interface TeamLogo {
  teamIndex: number;
  teamName: string;
  widthTiles: number;
  heightTiles: number;
  tileData: Uint8Array;
  tilemap: number[];   // tile indices ($FF = blank, 0+ = direct data tile index)
  palette: RGB[];      // 16-color per-team palette from ROM
  log: string[];
}

function readTeamPalette(romData: Uint8Array, teamIndex: number): { palette: RGB[]; fileOffset: number; log: string[] } {
  const log: string[] = [];
  const base = PALETTE_TABLE_OFFSET + teamIndex * 4;
  const palAddr = romData[base] | (romData[base + 1] << 8);
  const palBank = romData[base + 2] | (romData[base + 3] << 8);
  const palFile = snesLoROMToFile(palBank, palAddr);

  log.push(`  Palette ptr: $${((palBank << 16) | palAddr).toString(16).toUpperCase()} (file $${palFile.toString(16).toUpperCase()})`);

  const palBytes = romData.slice(palFile, palFile + 32);
  const palette = parseSNESPalette(palBytes);

  const colorStrs = palette.map((c, i) => `${i}:rgb(${c[0]},${c[1]},${c[2]})`);
  log.push(`  Palette: ${colorStrs.join(" ")}`);

  return { palette, fileOffset: palFile, log };
}

export function parseTeamLogo(romData: Uint8Array, teamIndex: number): TeamLogo {
  const log: string[] = [];
  const name = TEAM_NAMES[teamIndex] ?? `Team ${teamIndex}`;
  const ptrs = readTeamPointers(romData, teamIndex);

  log.push(`Team ${teamIndex}: ${name}`);
  log.push(`  Tile GFX: $${ptrs.tileGfxAddr.toString(16).toUpperCase()} (file $${ptrs.tileGfxFile.toString(16).toUpperCase()})`);
  log.push(`  Tilemap:  $${ptrs.tilemapAddr.toString(16).toUpperCase()} (file $${ptrs.tilemapFile.toString(16).toUpperCase()})`);

  // Read tilemap header
  const mapOff = ptrs.tilemapFile;
  const widthTiles = romData[mapOff] | (romData[mapOff + 1] << 8);
  const heightTiles = romData[mapOff + 2] | (romData[mapOff + 3] << 8);
  const info = romData[mapOff + 4] | (romData[mapOff + 5] << 8);
  log.push(`  Tilemap: ${widthTiles}x${heightTiles} tiles, info=$${info.toString(16).padStart(4, "0")}`);

  // Read tilemap entries — each is 2 bytes: [tileIndex, attributes]
  // The game code (CODE_9DBC67) does INC A on the raw tile byte:
  //   ROM $FF → INC → $00 → blank/transparent
  //   ROM $00 → INC → $01 → first tile (data tile 0)
  //   ROM $01 → INC → $02 → second tile (data tile 1)
  // So ROM value N maps directly to data tile N; $FF = blank.
  const totalCells = widthTiles * heightTiles;
  const tilemap: number[] = [];
  for (let i = 0; i < totalCells; i++) {
    const tileIdx = romData[mapOff + 6 + i * 2];
    // const attr = romData[mapOff + 6 + i * 2 + 1]; // attributes (palette/flip bits)
    tilemap.push(tileIdx);
  }
  log.push(`  Tilemap indices: [${tilemap.join(",")}]`);

  // Read per-team palette
  const palResult = readTeamPalette(romData, teamIndex);
  for (const line of palResult.log) log.push(line);

  // Decompress per-team tile graphics
  const gfxOff = ptrs.tileGfxFile;
  const maxRead = Math.min(0x10000, romData.length - gfxOff);
  const gfxSlice = romData.slice(gfxOff, gfxOff + maxRead);

  let tileData: Uint8Array;
  try {
    const result = decompress(gfxSlice);
    tileData = result.data;
    const tileCount = Math.floor(tileData.length / 32);
    log.push(`  Decompressed tile GFX: ${result.data.length} bytes (${tileCount} tiles)`);
    for (const line of result.log) {
      log.push(`    ${line}`);
    }
  } catch (err) {
    log.push(`  Decompression FAILED: ${err instanceof Error ? err.message : String(err)}`);
    tileData = new Uint8Array(0);
  }

  return { teamIndex, teamName: name, widthTiles, heightTiles, tileData, tilemap, palette: palResult.palette, log };
}

export function renderTeamLogo(
  canvas: HTMLCanvasElement,
  logo: TeamLogo,
  scale: number,
  palette?: RGB[],
): { width: number; height: number } {
  const pw = logo.widthTiles * 8 * scale;
  const ph = logo.heightTiles * 8 * scale;
  canvas.width = pw;
  canvas.height = ph;

  const ctx = canvas.getContext("2d")!;

  // Fill background with palette color 0
  const bgColor = palette ? palette[0] : [0, 0, 0] as RGB;
  ctx.fillStyle = `rgb(${bgColor[0]},${bgColor[1]},${bgColor[2]})`;
  ctx.fillRect(0, 0, pw, ph);

  if (logo.tileData.length === 0) return { width: pw, height: ph };

  const tileCount = Math.floor(logo.tileData.length / 32);

  for (let row = 0; row < logo.heightTiles; row++) {
    for (let col = 0; col < logo.widthTiles; col++) {
      const cellIdx = row * logo.widthTiles + col;
      const tileIdx = logo.tilemap[cellIdx];

      if (tileIdx === 0xFF) continue; // $FF in ROM → blank (game does INC → $00)

      // ROM value maps directly to data tile index (no -1 offset)
      if (tileIdx >= tileCount) continue;

      const tileOff = tileIdx * 32;
      // FB30 decompresses to nibble-packed format (32 bytes/tile, 2 pixels per byte)
      const pixels = decodeTile(logo.tileData, tileOff, "nibble");

      for (let py = 0; py < 8; py++) {
        for (let px = 0; px < 8; px++) {
          const colorIdx = pixels[py][px];
          if (colorIdx === 0) continue; // transparent

          const color: RGB = palette ? palette[colorIdx] : [colorIdx * 17, colorIdx * 17, colorIdx * 17];
          ctx.fillStyle = `rgb(${color[0]},${color[1]},${color[2]})`;
          const dx = (col * 8 + px) * scale;
          const dy = (row * 8 + py) * scale;
          ctx.fillRect(dx, dy, scale, scale);
        }
      }
    }
  }

  return { width: pw, height: ph };
}
