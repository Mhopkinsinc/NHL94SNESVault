/**
 * NHL 94 SNES Team Logo Extractor
 *
 * Team logos are composed from:
 *   1. Per-team compressed tile graphics (FB30 at $9C:83B7 table, +0/+2)
 *   2. Per-team tilemaps (8x4 tile grids at $9C:83B7 table, +4/+6)
 *   3. A shared bank of 8 center-ice palettes at $9A:D0B6 selected by
 *      the tile attribute byte's SNES BG palette bits (bits 2-4)
 *
 * Tile/tilemap pointer table at SNES $9C:83B7 (file $0E03B7), 8 bytes/team:
 *   [tileGfxAddr:16] [tileGfxBank:16] [tilemapAddr:16] [tilemapBank:16]
 *
 * Tilemap header: [width:16] [height:16] [info:16] then width*height tile entries
 * Tile index $FF = blank (game does INC A, $FF wraps to $00 = transparent)
 * ROM value 0 = data tile 0, value 1 = data tile 1, etc.
 */

import { RGB, decodeTile, parseSNESPalette } from "./snes-tiles";
import { decompress } from "./decompress";

// SNES $9C:83B7 -> file offset ((0x1C) * 0x8000) + 0x03B7
export const TEAM_TABLE_OFFSET = 0x0E03B7;
const CENTER_ICE_PALETTE_BANK = 0x9A;
const CENTER_ICE_PALETTE_ADDR = 0xD0B6;
const CENTER_ICE_PALETTE_COUNT = 8;
const PALETTE_SIZE = 32;
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

export function snesLoROMToFile(bank: number, addr: number): number {
  return ((bank & 0x7f) * 0x8000) + (addr & 0x7fff);
}

export interface TeamPointers {
  tileGfxAddr: number;  // SNES address (bank:addr combined)
  tileGfxFile: number;  // file offset
  tilemapAddr: number;
  tilemapFile: number;
}

export function readTeamPointers(romData: Uint8Array, teamIndex: number): TeamPointers {
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
  tileAttrs: number[];
  palette: RGB[];      // primary 16-color palette selected by tile attrs
  paletteBank: RGB[][];
  paletteSlotOffset: number;
  paletteSlot: number;
  paletteSlots: number[];
  paletteSlotAddrs: string[];
  paletteAddr: string;
  log: string[];
}

export interface IndexedTeamLogoImage {
  width: number;
  height: number;
  pixels: Uint8Array;
  palette: RGB[];
  paletteNames: string[];
  usedPaletteSlots: number[];
}

export interface IndexedTeamLogoImageOptions {
  preservePaletteBlocks?: boolean;
}

function getEffectiveCenterIcePaletteSlot(rawSlot: number, paletteSlotOffset: number): number {
  return rawSlot + paletteSlotOffset;
}

export function buildTeamLogoIndexedImage(
  logo: TeamLogo,
  paletteOverride?: RGB[],
  options: IndexedTeamLogoImageOptions = {},
): IndexedTeamLogoImage {
  const width = logo.widthTiles * 8;
  const height = logo.heightTiles * 8;
  const pixels = new Uint8Array(width * height);
  const tileCount = Math.floor(logo.tileData.length / 32);
  const preservePaletteBlocks = options.preservePaletteBlocks ?? false;

  if (paletteOverride) {
    const palette = paletteOverride.slice(0, 256);
    const paletteNames = palette.map((_, index) => index === 0 ? "transparent" : `color${index}`);

    for (let row = 0; row < logo.heightTiles; row++) {
      for (let col = 0; col < logo.widthTiles; col++) {
        const cellIdx = row * logo.widthTiles + col;
        const tileIdx = logo.tilemap[cellIdx];
        if (tileIdx === 0xFF || tileIdx >= tileCount) continue;

        const tileOff = tileIdx * 32;
        const tilePixels = decodeTile(logo.tileData, tileOff, "nibble");
        for (let py = 0; py < 8; py++) {
          for (let px = 0; px < 8; px++) {
            const colorIdx = tilePixels[py][px];
            if (colorIdx === 0) continue;
            const pixelIndex = (row * 8 + py) * width + (col * 8 + px);
            pixels[pixelIndex] = colorIdx;
          }
        }
      }
    }

    return {
      width,
      height,
      pixels,
      palette,
      paletteNames,
      usedPaletteSlots: [logo.paletteSlot],
    };
  }

  const usedPaletteSlots = preservePaletteBlocks
    ? [5, 6]
    : (logo.paletteSlots.length > 0 ? [...logo.paletteSlots] : [logo.paletteSlot])
        .sort((left, right) => left - right);
  const palette: RGB[] = [];
  const paletteNames: string[] = [];
  const paletteBaseBySlot = new Map<number, number>();
  let nextPaletteIndex = 0;

  for (const slot of usedPaletteSlots) {
    paletteBaseBySlot.set(slot, nextPaletteIndex);
    const slotPalette = logo.paletteBank[slot] ?? logo.palette;
    const startColorIndex = preservePaletteBlocks ? 0 : 1;
    for (let colorIndex = startColorIndex; colorIndex < 16; colorIndex++) {
      palette.push(slotPalette[colorIndex] ?? [0, 0, 0]);
      paletteNames.push(`slot${slot}-color${colorIndex}`);
      nextPaletteIndex += 1;
    }
  }

  for (let row = 0; row < logo.heightTiles; row++) {
    for (let col = 0; col < logo.widthTiles; col++) {
      const cellIdx = row * logo.widthTiles + col;
      const tileIdx = logo.tilemap[cellIdx];
      const attr = logo.tileAttrs[cellIdx] ?? 0;
      if (tileIdx === 0xFF || tileIdx >= tileCount) continue;

      const rawPaletteSlot = (attr >> 2) & 0x07;
      const effectivePaletteSlot = getEffectiveCenterIcePaletteSlot(rawPaletteSlot, logo.paletteSlotOffset);
      const paletteBase = paletteBaseBySlot.get(effectivePaletteSlot);
      if (paletteBase === undefined) continue;

      const tileOff = tileIdx * 32;
      const tilePixels = decodeTile(logo.tileData, tileOff, "nibble");
      for (let py = 0; py < 8; py++) {
        for (let px = 0; px < 8; px++) {
          const colorIdx = tilePixels[py][px];
          const pixelIndex = (row * 8 + py) * width + (col * 8 + px);
          if (colorIdx === 0 && !preservePaletteBlocks) continue;
          pixels[pixelIndex] = preservePaletteBlocks
            ? paletteBase + colorIdx
            : paletteBase + colorIdx - 1;
        }
      }
    }
  }

  return {
    width,
    height,
    pixels,
    palette,
    paletteNames,
    usedPaletteSlots,
  };
}

function readCenterIcePaletteBank(romData: Uint8Array): { palettes: RGB[][]; addrs: string[]; log: string[] } {
  const log: string[] = [];
  const palettes: RGB[][] = [];
  const addrs: string[] = [];
  const base = snesLoROMToFile(CENTER_ICE_PALETTE_BANK, CENTER_ICE_PALETTE_ADDR);

  log.push(`  Center-ice palette bank: $${CENTER_ICE_PALETTE_BANK.toString(16).toUpperCase()}:${CENTER_ICE_PALETTE_ADDR.toString(16).toUpperCase()} (file $${base.toString(16).toUpperCase()})`);

  for (let index = 0; index < CENTER_ICE_PALETTE_COUNT; index++) {
    const addr = CENTER_ICE_PALETTE_ADDR + index * PALETTE_SIZE;
    const fileOffset = base + index * PALETTE_SIZE;
    const palBytes = romData.slice(fileOffset, fileOffset + PALETTE_SIZE);
    const palette = parseSNESPalette(palBytes);
    const snesAddr = `${CENTER_ICE_PALETTE_BANK.toString(16).toUpperCase()}:${addr.toString(16).toUpperCase().padStart(4, "0")}`;

    palettes.push(palette);
    addrs.push(snesAddr);

    const colorStrs = palette.map((c, i) => `${i}:rgb(${c[0]},${c[1]},${c[2]})`);
    log.push(`  palette[${index}] $${snesAddr}: ${colorStrs.join(" ")}`);
  }

  return { palettes, addrs, log };
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
  const tileAttrs: number[] = [];
  const paletteCounts = new Map<number, number>();
  for (let i = 0; i < totalCells; i++) {
    const tileIdx = romData[mapOff + 6 + i * 2];
    const attr = romData[mapOff + 6 + i * 2 + 1];
    tilemap.push(tileIdx);
    tileAttrs.push(attr);

    if (tileIdx !== 0xFF) {
      const paletteSlot = (attr >> 2) & 0x07;
      paletteCounts.set(paletteSlot, (paletteCounts.get(paletteSlot) ?? 0) + 1);
    }
  }
  log.push(`  Tilemap indices: [${tilemap.join(",")}]`);
  log.push(`  Tile attrs: [${tileAttrs.map((attr) => `$${attr.toString(16).padStart(2, "0")}`).join(",")}]`);

  const rawPaletteSlots = [...paletteCounts.entries()]
    .sort((left, right) => right[1] - left[1] || left[0] - right[0])
    .map(([slot]) => slot);
  const paletteSlotOffset = rawPaletteSlots.length > 0 && rawPaletteSlots.every((slot) => slot === 0 || slot === 1)
    ? 5
    : 0;
  const paletteSlots = rawPaletteSlots.map((slot) => getEffectiveCenterIcePaletteSlot(slot, paletteSlotOffset));
  const preferredPaletteSlots = [5, 6].filter((slot) => paletteSlots.includes(slot));
  const paletteSlot = preferredPaletteSlots.length > 0
    ? preferredPaletteSlots.sort((left, right) => {
        const leftRawSlot = left - paletteSlotOffset;
        const rightRawSlot = right - paletteSlotOffset;
        const leftCount = paletteCounts.get(leftRawSlot) ?? 0;
        const rightCount = paletteCounts.get(rightRawSlot) ?? 0;
        return rightCount - leftCount || left - right;
      })[0]
    : (paletteSlots[0] ?? 0);

  // Read shared center-ice palette bank and select the slot used by this logo.
  const palResult = readCenterIcePaletteBank(romData);
  for (const line of palResult.log) log.push(line);
  log.push(`  Raw palette slots used: [${rawPaletteSlots.join(", ") || "0"}]`);
  if (paletteSlotOffset !== 0) {
    log.push(`  Applying center-ice palette slot offset: +${paletteSlotOffset}`);
  }
  log.push(`  Palette slots used: [${paletteSlots.join(", ") || "0"}]`);
  if (preferredPaletteSlots.length > 0) {
    log.push(`  Preferred auto slots present: [${preferredPaletteSlots.join(", ")}]`);
  }
  log.push(`  Selected palette slot: ${paletteSlot} -> $${palResult.addrs[paletteSlot]}`);

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

  return {
    teamIndex,
    teamName: name,
    widthTiles,
    heightTiles,
    tileData,
    tilemap,
    tileAttrs,
    palette: palResult.palettes[paletteSlot] ?? palResult.palettes[0] ?? [],
    paletteBank: palResult.palettes,
    paletteSlotOffset,
    paletteSlot,
    paletteSlots,
    paletteSlotAddrs: paletteSlots.map((slot) => palResult.addrs[slot] ?? palResult.addrs[0] ?? ""),
    paletteAddr: palResult.addrs[paletteSlot] ?? palResult.addrs[0] ?? `${CENTER_ICE_PALETTE_BANK.toString(16).toUpperCase()}:${CENTER_ICE_PALETTE_ADDR.toString(16).toUpperCase().padStart(4, "0")}`,
    log,
  };
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
  const bgColor = palette ? palette[0] : (logo.paletteBank[logo.paletteSlot]?.[0] ?? [0, 0, 0] as RGB);
  ctx.fillStyle = `rgb(${bgColor[0]},${bgColor[1]},${bgColor[2]})`;
  ctx.fillRect(0, 0, pw, ph);

  if (logo.tileData.length === 0) return { width: pw, height: ph };

  const tileCount = Math.floor(logo.tileData.length / 32);

  for (let row = 0; row < logo.heightTiles; row++) {
    for (let col = 0; col < logo.widthTiles; col++) {
      const cellIdx = row * logo.widthTiles + col;
      const tileIdx = logo.tilemap[cellIdx];
      const attr = logo.tileAttrs[cellIdx] ?? 0;
      const rawPaletteSlot = (attr >> 2) & 0x07;
      const effectivePaletteSlot = getEffectiveCenterIcePaletteSlot(rawPaletteSlot, logo.paletteSlotOffset);
      const tilePalette = palette ?? logo.paletteBank[effectivePaletteSlot] ?? logo.palette;

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

          const color: RGB = tilePalette[colorIdx] ?? [colorIdx * 17, colorIdx * 17, colorIdx * 17];
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
