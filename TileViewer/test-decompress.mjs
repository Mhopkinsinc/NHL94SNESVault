/**
 * Quick test: run the FB30 decompressor against the Yzerman portrait
 * at SNES address $99:C426 in the ROM.
 *
 * Usage: node test-decompress.mjs
 */
import { readFileSync } from "fs";

// --- Inline the decompressor (simplified port for Node testing) ---

class BitReader {
  constructor(data, startByte) {
    this.data = data;
    this.bytePos = startByte;
    this.bitPos = 7;
  }
  readBit() {
    if (this.bytePos >= this.data.length) throw new Error("read past end");
    const bit = (this.data[this.bytePos] >> this.bitPos) & 1;
    this.bitPos--;
    if (this.bitPos < 0) { this.bitPos = 7; this.bytePos++; }
    return bit;
  }
  readBits(n) {
    let v = 0;
    for (let i = 0; i < n; i++) v = (v << 1) | this.readBit();
    return v;
  }
  peekBit() {
    if (this.bytePos >= this.data.length) return 1;
    return (this.data[this.bytePos] >> this.bitPos) & 1;
  }
}

const VLI_BASES = [0, 0, 0, 4, 12, 28, 60, 124, 252, 508, 1020, 2044, 4092, 8188];

function readVLI(reader) {
  if (reader.readBit() === 1) return reader.readBits(2);
  let count = 3;
  while (reader.readBit() === 0) count++;
  return VLI_BASES[count] + reader.readBits(count);
}

// --- Load ROM ---
const rom = readFileSync("../NHL '94 (USA).sfc");
const bank = 0x99, addr = 0xc426;
const fileOffset = ((bank & 0x7f) * 0x8000) + (addr & 0x7fff);
console.log(`File offset: 0x${fileOffset.toString(16)} (${fileOffset})`);

const compressed = rom.slice(fileOffset, fileOffset + 0x10000);
console.log(`Magic: ${compressed[1].toString(16)}${compressed[0].toString(16)}`);
console.log(`End marker: 0x${compressed[5].toString(16)}`);

const reader = new BitReader(compressed, 6);

// Phase 1: Code length counts
const codeLengthCounts = [];
let totalSymbols = 0;
let maxLenIdx = -1;
let kraft = 0;

for (let i = 0; i < 16; i++) {
  kraft *= 2;
  const count = readVLI(reader);
  codeLengthCounts.push(count);
  totalSymbols += count;
  kraft += count;
  if (count > 0) maxLenIdx = i;
  const remaining = 15 - i;
  if (remaining > 0 && count > 0 && kraft * (1 << remaining) >= 0x10000) break;
  if (remaining === 0) break;
}

console.log(`\nCode length distribution (${totalSymbols} symbols, max len ${maxLenIdx + 1}):`);
for (let i = 0; i <= maxLenIdx; i++) {
  if (codeLengthCounts[i] > 0) console.log(`  Len ${i+1}: ${codeLengthCounts[i]}`);
}

// Phase 2: Symbol assignments
const used = new Uint8Array(256);
const symbols = [];
let ptr = -1;

for (let i = 0; i < totalSymbols; i++) {
  let gap = readVLI(reader) + 1;
  while (gap > 0) {
    ptr = (ptr + 1) & 0xff;
    if (!used[ptr]) gap--;
  }
  used[ptr] = 1;
  symbols.push(ptr);
}

console.log(`\nSymbols (${symbols.length}): [${symbols.slice(0, 20).map(s => '0x' + s.toString(16).padStart(2, '0')).join(', ')}...]`);

// Phase 3: Decode
const output = [];
let lastSym = 0;
const endMarker = compressed[5];

function decodeOne() {
  let code = 0, fc = 0, si = 0;
  for (let li = 0; li <= maxLenIdx; li++) {
    code = (code << 1) | reader.readBit();
    const c = codeLengthCounts[li];
    if (code - fc < c) return symbols[si + (code - fc)];
    si += c;
    fc = (fc + c) << 1;
  }
  throw new Error("Invalid code");
}

let done = false;
while (!done && output.length < 0x20000) {
  const sym = decodeOne();
  if (sym === endMarker) {
    const run = readVLI(reader);
    if (run > 0) {
      for (let r = 0; r < run; r++) output.push(lastSym);
    } else {
      if (reader.peekBit() === 1) { done = true; }
      else { reader.readBit(); const raw = reader.readBits(8); output.push(raw); lastSym = raw; }
    }
  } else {
    output.push(sym);
    lastSym = sym;
  }
}

console.log(`\nDecompressed: ${output.length} bytes`);
// Dump all tiles
const bytesPerTile = 32;
const tileCount = Math.floor(output.length / bytesPerTile);
console.log(`Tile count (4bpp): ${tileCount}\n`);

for (let t = 0; t < tileCount; t++) {
  const tileData = output.slice(t * bytesPerTile, (t + 1) * bytesPerTile);
  const hex = tileData.map(b => b.toString(16).padStart(2, '0')).join(' ');
  const allZero = tileData.every(b => b === 0);
  console.log(`Tile ${t.toString().padStart(2)}: ${hex}${allZero ? ' (blank)' : ''}`);
}

// Also decode tile 1 as 4bpp pixels to check
console.log('\nTile 6 decoded as 4bpp pixels:');
const t = 6;
const off = t * 32;
for (let y = 0; y < 8; y++) {
  const bp0 = output[off + y*2];
  const bp1 = output[off + y*2 + 1];
  const bp2 = output[off + 16 + y*2];
  const bp3 = output[off + 16 + y*2 + 1];
  let row = '';
  for (let x = 0; x < 8; x++) {
    const shift = 7 - x;
    const pixel = ((bp0>>shift)&1) | (((bp1>>shift)&1)<<1) | (((bp2>>shift)&1)<<2) | (((bp3>>shift)&1)<<3);
    row += pixel.toString(16);
  }
  console.log(`  Row ${y}: ${row}`);
}

// Verify by running an exact emulation of the SNES bit buffer
console.log('\n--- SNES Bit Buffer Emulation Verification ---');
const rom2 = readFileSync("../NHL '94 (USA).sfc");
const compressed2 = rom2.slice(fileOffset, fileOffset + 0x10000);

// Emulate the exact 65816 bit buffer behavior
class SNESBitBuffer {
  constructor(data, startOffset) {
    this.data = data;
    // Match assembly init: skip 5+1 = 6 bytes, read 16-bit at offset 6
    // LDA ($0C) at offset 6 reads bytes[6] and bytes[7] as 16-bit LE
    // Then XBA swaps, giving byte[6] in high, byte[7] in low
    this.A = (data[6] << 8) | data[7]; // after XBA
    this.srcPtr = 8; // $0C after two INCs
    this.Y = 8; // bits remaining
    this.bitsRead = 0;
  }

  readBit() {
    // ASL A: shift left, carry = MSB
    const carry = (this.A >> 15) & 1;
    this.A = (this.A << 1) & 0xFFFF;
    this.Y--;
    this.bitsRead++;

    if (this.Y === 0) {
      // Reload: SEP #$20, LDA ($0C), REP #$20, INC $0C, LDY #$08
      // SEP #$20 makes LDA 8-bit, loads into A low, preserving A high
      const nextByte = this.data[this.srcPtr];
      this.A = (this.A & 0xFF00) | nextByte;
      this.srcPtr++;
      this.Y = 8;
    }

    return carry;
  }

  readBits(n) {
    let v = 0;
    for (let i = 0; i < n; i++) v = (v << 1) | this.readBit();
    return v;
  }
}

function readVLI_SNES(buf) {
  if (buf.readBit() === 1) return buf.readBits(2);
  let count = 3;
  while (buf.readBit() === 0) count++;
  return VLI_BASES[count] + buf.readBits(count);
}

const snesBuf = new SNESBitBuffer(compressed2, 6);

// Phase 1 with SNES emulation
const clc2 = [];
let ts2 = 0, ml2 = -1, k2 = 0;
for (let i = 0; i < 16; i++) {
  k2 *= 2;
  const c = readVLI_SNES(snesBuf);
  clc2.push(c);
  ts2 += c;
  k2 += c;
  if (c > 0) ml2 = i;
  const rem = 15 - i;
  if (rem > 0 && c > 0 && k2 * (1 << rem) >= 0x10000) break;
  if (rem === 0) break;
}
console.log(`SNES emu code lengths: [${clc2.join(',')}]`);
console.log(`SNES emu total symbols: ${ts2}`);

// Phase 2 with SNES emulation
const used2 = new Uint8Array(256);
const syms2 = [];
let ptr2 = -1;
for (let i = 0; i < ts2; i++) {
  let gap = readVLI_SNES(snesBuf) + 1;
  while (gap > 0) {
    ptr2 = (ptr2 + 1) & 0xff;
    if (!used2[ptr2]) gap--;
  }
  used2[ptr2] = 1;
  syms2.push(ptr2);
}
console.log(`SNES emu symbols match: ${JSON.stringify(syms2) === JSON.stringify(symbols)}`);

// Phase 3 decode with SNES emulation
const out2 = [];
let lastS2 = 0;
let done2 = false;
while (!done2 && out2.length < 0x20000) {
  let code = 0, fc = 0, si = 0;
  let foundSym = -1;
  for (let li = 0; li <= ml2; li++) {
    code = (code << 1) | snesBuf.readBit();
    const c = clc2[li];
    if (code - fc < c) { foundSym = syms2[si + (code - fc)]; break; }
    si += c;
    fc = (fc + c) << 1;
  }
  if (foundSym < 0) { console.log('ERROR: invalid code'); break; }

  if (foundSym === endMarker) {
    const run = readVLI_SNES(snesBuf);
    if (run > 0) {
      for (let r = 0; r < run; r++) out2.push(lastS2);
    } else {
      // peek
      const nextBit = snesBuf.readBit();
      if (nextBit === 1) { done2 = true; }
      else { const raw = snesBuf.readBits(8); out2.push(raw); lastS2 = raw; }
    }
  } else {
    out2.push(foundSym);
    lastS2 = foundSym;
  }
}
console.log(`SNES emu decompressed: ${out2.length} bytes`);
console.log(`Match original: ${JSON.stringify(out2) === JSON.stringify(output)}`);

// Compare byte by byte
let mismatches = 0;
for (let i = 0; i < Math.max(output.length, out2.length); i++) {
  if (output[i] !== out2[i]) {
    if (mismatches < 10) console.log(`  Mismatch at ${i}: simple=${output[i]?.toString(16)} snes=${out2[i]?.toString(16)}`);
    mismatches++;
  }
}
if (mismatches > 0) console.log(`  Total mismatches: ${mismatches}`);
else console.log('  Perfect match!');
