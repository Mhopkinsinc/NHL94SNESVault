/**
 * NHL 94 SNES - $FB30 Canonical Huffman Decompressor
 *
 * Translated from the 65816 assembly at CODE_80BBB3 (LoadGameSetupScreen).
 * See Docs/Dev_Notes/Decompression_Routines.md for the full algorithm description.
 *
 * Data format after the 2-byte $FB30 magic:
 *   Byte 2:    flags/unused (skipped)
 *   Bytes 3-4: metadata (pushed/pulled by dispatcher, not used by decompressor)
 *   Byte 5:    end-of-stream marker symbol value ($73 register)
 *   Bytes 6+:  bitstream containing:
 *              1) Code length distribution (VLI-encoded counts for lengths 1-16)
 *              2) Symbol assignments (VLI-encoded gap deltas)
 *              3) Huffman-coded data with run-length extensions
 */

class BitReader {
  private data: Uint8Array;
  private bytePos: number;
  private bitPos: number; // 7 = MSB, 0 = LSB

  constructor(data: Uint8Array, startByte: number) {
    this.data = data;
    this.bytePos = startByte;
    this.bitPos = 7; // start at MSB
  }

  readBit(): number {
    if (this.bytePos >= this.data.length) {
      throw new Error(
        `BitReader: read past end of data at byte ${this.bytePos}`
      );
    }
    const bit = (this.data[this.bytePos] >> this.bitPos) & 1;
    this.bitPos--;
    if (this.bitPos < 0) {
      this.bitPos = 7;
      this.bytePos++;
    }
    return bit;
  }

  readBits(n: number): number {
    let value = 0;
    for (let i = 0; i < n; i++) {
      value = (value << 1) | this.readBit();
    }
    return value;
  }

  /** Peek at the next bit without consuming it */
  peekBit(): number {
    if (this.bytePos >= this.data.length) return 1; // treat end-of-data as "stop"
    return (this.data[this.bytePos] >> this.bitPos) & 1;
  }

  get position(): string {
    return `byte ${this.bytePos}, bit ${this.bitPos}`;
  }

  get byteOffset(): number { return this.bytePos; }
  get bitOffset(): number { return this.bitPos; }
}

/**
 * Variable-Length Integer reader matching CODE_80C1B0.
 *
 * Encoding (Exponential Golomb order 2):
 *   1xx        -> value 0-3   (3 bits total)
 *   01xxx      -> value 4-11  (5 bits)
 *   001xxxx    -> value 12-27 (7 bits)
 *   0001xxxxx  -> value 28-59 (9 bits)
 *   etc.
 */
// Base values from the lookup table at $80C2B6+$04:
const VLI_BASES = [0, 0, 0, 4, 12, 28, 60, 124, 252, 508, 1020, 2044, 4092, 8188];

function readVLI(reader: BitReader): number {
  const firstBit = reader.readBit();
  if (firstBit === 1) {
    // 1xx: read 2 value bits, range 0-3
    return reader.readBits(2);
  }

  // First bit was 0 — count consecutive 0 bits to determine value bit count
  // X starts at 2 in the assembly, gets INX'd to 3 before first BCC check
  let valueBitCount = 3;
  while (reader.readBit() === 0) {
    valueBitCount++;
  }

  // Read valueBitCount data bits
  const rawValue = reader.readBits(valueBitCount);
  return VLI_BASES[valueBitCount] + rawValue;
}

import type { DecompressResult } from "./decompress";

/**
 * Extracted Huffman table from an FB30 compressed stream.
 * Used by the compressor for round-trip verification.
 */
export interface FB30HuffmanTable {
  codeLengthCounts: number[];  // index 0 = length 1, index 1 = length 2, etc.
  orderedSymbols: number[];    // symbols in canonical order
  maxLengthIndex: number;      // highest used code length index (0-based)
  endMarker: number;
}

/**
 * Extract just the Huffman table (Phase 1 + Phase 2) from FB30 compressed data.
 * Does NOT decompress the data stream — only parses the header and code tables.
 */
export function extractFB30Codes(compressedData: Uint8Array): FB30HuffmanTable {
  if (compressedData[0] !== 0x30 || compressedData[1] !== 0xfb) {
    throw new Error("Invalid FB30 magic");
  }

  const endMarker = compressedData[5];
  const reader = new BitReader(compressedData, 6);

  // Phase 1: code length distribution
  const codeLengthCounts: number[] = [];
  let totalSymbols = 0;
  let maxLengthIndex = -1;
  let kraft = 0;

  for (let i = 0; i < 16; i++) {
    kraft *= 2;
    const count = readVLI(reader);
    codeLengthCounts.push(count);
    totalSymbols += count;
    kraft += count;

    if (count > 0) {
      maxLengthIndex = i;
    }

    const remaining = 15 - i;
    if (remaining > 0 && count > 0) {
      if (kraft * (1 << remaining) >= 0x10000) {
        maxLengthIndex = i;
        break;
      }
    } else if (remaining === 0) {
      break;
    }
  }

  // Phase 2: symbol assignments
  const usedSlots = new Uint8Array(256);
  const orderedSymbols: number[] = [];
  let slotPtr = -1;

  for (let i = 0; i < totalSymbols; i++) {
    let gap = readVLI(reader) + 1;
    while (gap > 0) {
      slotPtr = (slotPtr + 1) & 0xff;
      if (!usedSlots[slotPtr]) {
        gap--;
      }
    }
    usedSlots[slotPtr] = 1;
    orderedSymbols.push(slotPtr);
  }

  return { codeLengthCounts, orderedSymbols, maxLengthIndex, endMarker };
}

/**
 * Trace the decode actions from an FB30 compressed stream.
 * Returns the same action sequence that the compressor should produce.
 */
export interface DecodeAction {
  type: "symbol" | "run" | "literal" | "terminate";
  symbol?: number;
  runCount?: number;
  dataIndex: number; // position in the output data at this point
}

export function traceFB30Decode(compressedData: Uint8Array): DecodeAction[] {
  if (compressedData[0] !== 0x30 || compressedData[1] !== 0xfb) {
    throw new Error("Invalid FB30 magic");
  }

  const endMarker = compressedData[5];
  const reader = new BitReader(compressedData, 6);

  // Phase 1: code length distribution
  const codeLengthCounts: number[] = [];
  let totalSymbols = 0;
  let maxLengthIndex = -1;
  let kraft = 0;

  for (let i = 0; i < 16; i++) {
    kraft *= 2;
    const count = readVLI(reader);
    codeLengthCounts.push(count);
    totalSymbols += count;
    kraft += count;
    if (count > 0) maxLengthIndex = i;
    const remaining = 15 - i;
    if (remaining > 0 && count > 0) {
      if (kraft * (1 << remaining) >= 0x10000) {
        maxLengthIndex = i;
        break;
      }
    } else if (remaining === 0) break;
  }

  // Phase 2: symbol assignments
  const usedSlots = new Uint8Array(256);
  const orderedSymbols: number[] = [];
  let slotPtr = -1;
  for (let i = 0; i < totalSymbols; i++) {
    let gap = readVLI(reader) + 1;
    while (gap > 0) {
      slotPtr = (slotPtr + 1) & 0xff;
      if (!usedSlots[slotPtr]) gap--;
    }
    usedSlots[slotPtr] = 1;
    orderedSymbols.push(slotPtr);
  }

  // Phase 3: decode and record actions
  function decodeOneSymbol(): number {
    let code = 0;
    let fc = 0;
    let si = 0;
    for (let lenIdx = 0; lenIdx <= maxLengthIndex; lenIdx++) {
      code = (code << 1) | reader.readBit();
      const count = codeLengthCounts[lenIdx];
      if (code - fc < count) return orderedSymbols[si + (code - fc)];
      si += count;
      fc = (fc + count) << 1;
    }
    throw new Error("Invalid Huffman code");
  }

  const actions: DecodeAction[] = [];
  let dataIndex = 0;
  let done = false;

  while (!done) {
    const symbol = decodeOneSymbol();

    if (symbol === endMarker) {
      const runCount = readVLI(reader);
      if (runCount > 0) {
        actions.push({ type: "run", runCount, dataIndex });
        dataIndex += runCount;
      } else {
        if (reader.peekBit() === 1) {
          reader.readBit();
          actions.push({ type: "terminate", dataIndex });
          done = true;
        } else {
          reader.readBit();
          const rawSymbol = reader.readBits(8);
          actions.push({ type: "literal", symbol: rawSymbol, dataIndex });
          dataIndex++;
        }
      }
    } else {
      actions.push({ type: "symbol", symbol, dataIndex });
      dataIndex++;
    }
  }

  return actions;
}

/**
 * Decompress $FB30 (Canonical Huffman) compressed data.
 *
 * @param compressedData  The full compressed block starting at the $FB30 magic bytes
 * @returns DecompressResult with the decompressed byte array
 */
export function decompressFB30(compressedData: Uint8Array): DecompressResult {
  const log: string[] = [];

  // Validate magic
  if (compressedData[0] !== 0x30 || compressedData[1] !== 0xfb) {
    throw new Error(
      `Invalid magic: expected FB30, got ${compressedData[1].toString(16).toUpperCase()}${compressedData[0].toString(16).toUpperCase()}`
    );
  }

  // Byte 5: end-of-stream marker symbol
  const endMarker = compressedData[5];
  log.push(`End marker symbol: $${endMarker.toString(16).padStart(2, "0")} (${endMarker})`);

  // Bitstream starts at byte 6
  const reader = new BitReader(compressedData, 6);

  // =========================================================================
  // Phase 1: Read code length distribution (up to 16 bit lengths)
  // Matches the loop at CODE_80BBD9
  // =========================================================================
  const codeLengthCounts: number[] = []; // index 0 = length 1, etc.
  let totalSymbols = 0;
  let maxLengthIndex = -1;

  // The assembly tracks $75 (Kraft sum accumulator) and exits when
  // $75 << remainingIterations overflows 16 bits (Kraft inequality satisfied).
  // $75[i] = 2 * $75[i-1] + count[i]
  // Exit when $75[i] * 2^(15-i) >= 0x10000
  let kraft = 0; // $75 in the assembly

  for (let i = 0; i < 16; i++) {
    kraft *= 2; // ASL $75 at top of loop
    const count = readVLI(reader);
    codeLengthCounts.push(count);
    totalSymbols += count;
    kraft += count;

    if (count > 0) {
      maxLengthIndex = i;
    }

    // Check Kraft overflow: $75 << (15-i) >= 0x10000
    const remaining = 15 - i;
    if (remaining > 0 && count > 0) {
      if (kraft * (1 << remaining) >= 0x10000) {
        maxLengthIndex = i;
        break;
      }
    } else if (remaining === 0) {
      // Last iteration, exit naturally
      break;
    }
  }

  log.push(
    `Code length distribution (${totalSymbols} total symbols, max length ${maxLengthIndex + 1}):`
  );
  for (let i = 0; i <= maxLengthIndex; i++) {
    if (codeLengthCounts[i] > 0) {
      log.push(`  Length ${i + 1}: ${codeLengthCounts[i]} symbols`);
    }
  }

  // =========================================================================
  // Phase 2: Read symbol assignments
  // Matches CODE_80BC32-80BC53 — gap-encoded symbol values
  // =========================================================================
  const usedSlots = new Uint8Array(256);
  const orderedSymbols: number[] = [];
  let slotPtr = -1; // 8-bit, wraps at 255→0 (assembly: X starts at $FF, INX to $00)

  for (let i = 0; i < totalSymbols; i++) {
    let gap = readVLI(reader) + 1; // assembly: INC A after reading VLI
    while (gap > 0) {
      slotPtr = (slotPtr + 1) & 0xff;
      if (!usedSlots[slotPtr]) {
        gap--;
      }
    }
    usedSlots[slotPtr] = 1;
    orderedSymbols.push(slotPtr);
  }

  log.push(`Symbols (first 16): [${orderedSymbols.slice(0, 16).map((s) => "$" + s.toString(16).padStart(2, "0")).join(", ")}${orderedSymbols.length > 16 ? ", ..." : ""}]`);

  // =========================================================================
  // Phase 3: Build canonical Huffman decode table
  // =========================================================================
  // Assign canonical codes to symbols based on their lengths
  // orderedSymbols[] is in canonical order: first all symbols at length 1,
  // then length 2, etc.

  // For decoding, we just need the counts and the ordered symbols.
  // decodeHuffman will walk bit-by-bit comparing against canonical codes.

  // Find which symbol is the end marker and note its code length
  let endMarkerLengthIndex = -1;
  let symIdx = 0;
  for (let lenIdx = 0; lenIdx <= maxLengthIndex; lenIdx++) {
    for (let j = 0; j < codeLengthCounts[lenIdx]; j++) {
      if (orderedSymbols[symIdx] === endMarker) {
        endMarkerLengthIndex = lenIdx;
      }
      symIdx++;
    }
  }
  log.push(
    `End marker '$${endMarker.toString(16)}' at code length ${endMarkerLengthIndex + 1}`
  );

  // =========================================================================
  // Phase 4: Decode the Huffman-coded data stream
  // =========================================================================
  const output: number[] = [];
  let lastSymbol = 0;

  function decodeOneSymbol(): number {
    let code = 0;
    let fc = 0;
    let si = 0;

    for (let lenIdx = 0; lenIdx <= maxLengthIndex; lenIdx++) {
      code = (code << 1) | reader.readBit();
      const count = codeLengthCounts[lenIdx];
      if (code - fc < count) {
        return orderedSymbols[si + (code - fc)];
      }
      si += count;
      fc = (fc + count) << 1;
    }
    throw new Error(`Invalid Huffman code at ${reader.position}`);
  }

  const MAX_OUTPUT = 0x20000; // 128KB safety limit
  let done = false;

  while (!done && output.length < MAX_OUTPUT) {
    const symbol = decodeOneSymbol();

    if (symbol === endMarker) {
      // End marker hit — handle run-length extension or termination
      // Matches CODE_80C17C logic
      const runCount = readVLI(reader);

      if (runCount > 0) {
        // Repeat last output symbol runCount times, then continue
        for (let r = 0; r < runCount; r++) {
          output.push(lastSymbol);
        }
      } else {
        // runCount == 0: check next bit
        if (reader.peekBit() === 1) {
          // Next bit is 1: decompression complete
          done = true;
        } else {
          // Next bit is 0: consume it, read 8-bit raw symbol, output, continue
          reader.readBit(); // consume the 0 flag
          const rawSymbol = reader.readBits(8);
          output.push(rawSymbol);
          lastSymbol = rawSymbol;
        }
      }
    } else {
      output.push(symbol);
      lastSymbol = symbol;
    }
  }

  // Compute how many bytes of compressed input were consumed
  const compressedSize = reader.bitOffset === 7 ? reader.byteOffset : reader.byteOffset + 1;

  log.push(`Decompressed ${output.length} bytes from ${compressedSize} compressed bytes`);

  return {
    data: new Uint8Array(output),
    log,
    compressedSize,
  };
}
