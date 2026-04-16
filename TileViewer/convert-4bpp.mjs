import fs from "node:fs";
import path from "node:path";

function decodeBitplane4Tile(data, offset) {
  const pixels = [];
  for (let y = 0; y < 8; y++) {
    const row = [];
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

function decodeNibbleTile(data, offset) {
  const pixels = [];
  for (let y = 0; y < 8; y++) {
    const row = [];
    for (let b = 0; b < 4; b++) {
      const value = data[offset + y * 4 + b];
      row.push((value >> 4) & 0x0f);
      row.push(value & 0x0f);
    }
    pixels.push(row);
  }
  return pixels;
}

function encodeNibbleTile(pixels) {
  const out = new Uint8Array(32);
  for (let y = 0; y < 8; y++) {
    for (let x = 0; x < 8; x += 2) {
      const left = pixels[y][x] & 0x0f;
      const right = pixels[y][x + 1] & 0x0f;
      out[y * 4 + (x >> 1)] = (left << 4) | right;
    }
  }
  return out;
}

function encodeBitplane4Tile(pixels) {
  const out = new Uint8Array(32);
  for (let y = 0; y < 8; y++) {
    let bp0 = 0;
    let bp1 = 0;
    let bp2 = 0;
    let bp3 = 0;
    for (let x = 0; x < 8; x++) {
      const value = pixels[y][x] & 0x0f;
      const shift = 7 - x;
      bp0 |= (value & 1) << shift;
      bp1 |= ((value >> 1) & 1) << shift;
      bp2 |= ((value >> 2) & 1) << shift;
      bp3 |= ((value >> 3) & 1) << shift;
    }
    out[y * 2] = bp0;
    out[y * 2 + 1] = bp1;
    out[16 + y * 2] = bp2;
    out[16 + y * 2 + 1] = bp3;
  }
  return out;
}

function convertTiles(input, mode) {
  if (input.length % 32 !== 0) {
    throw new Error(`Input size ${input.length} is not a multiple of 32 bytes.`);
  }

  const tileCount = input.length / 32;
  const output = new Uint8Array(input.length);

  for (let tileIndex = 0; tileIndex < tileCount; tileIndex++) {
    const offset = tileIndex * 32;
    const pixels = mode === "planar-to-nibble"
      ? decodeBitplane4Tile(input, offset)
      : decodeNibbleTile(input, offset);
    const encoded = mode === "planar-to-nibble"
      ? encodeNibbleTile(pixels)
      : encodeBitplane4Tile(pixels);
    output.set(encoded, offset);
  }

  return output;
}

function printUsage() {
  console.log("Usage:");
  console.log("  node convert-4bpp.mjs planar-to-nibble <input.bin> <output.bin>");
  console.log("  node convert-4bpp.mjs nibble-to-planar <input.bin> <output.bin>");
  console.log("");
  console.log("For center-ice logos, use planar-to-nibble on SuperFamiconv tile output before FB30 compression.");
}

const [, , mode, inputPath, outputPath] = process.argv;

if (!mode || !inputPath || !outputPath || !["planar-to-nibble", "nibble-to-planar"].includes(mode)) {
  printUsage();
  process.exit(mode ? 1 : 0);
}

const input = fs.readFileSync(inputPath);
const output = convertTiles(new Uint8Array(input), mode);

fs.mkdirSync(path.dirname(outputPath), { recursive: true });
fs.writeFileSync(outputPath, output);

console.log(`Converted ${input.length / 32} tile(s): ${inputPath} -> ${outputPath} (${mode})`);