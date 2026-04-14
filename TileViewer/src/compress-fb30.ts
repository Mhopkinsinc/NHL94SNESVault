/**
 * NHL 94 SNES - $FB30 Canonical Huffman Compressor
 *
 * Inverse of decompress-fb30.ts. Compresses raw byte data into the FB30 format:
 *   Header: [0x30, 0xFB, flags, meta0, meta1, endMarker]
 *   Phase 1: VLI-encoded code length distribution
 *   Phase 2: VLI-encoded gap-encoded symbol assignments
 *   Phase 3: Huffman-coded data with RLE extensions
 */

import type { FB30HuffmanTable } from "./decompress-fb30";

// ============================================================
// BitWriter — inverse of BitReader (MSB-first within each byte)
// ============================================================

class BitWriter {
  private bytes: number[] = [];
  private currentByte = 0;
  private bitPos = 7; // MSB first

  writeBit(bit: number): void {
    if (bit) {
      this.currentByte |= (1 << this.bitPos);
    }
    this.bitPos--;
    if (this.bitPos < 0) {
      this.bytes.push(this.currentByte);
      this.currentByte = 0;
      this.bitPos = 7;
    }
  }

  writeBits(value: number, count: number): void {
    for (let i = count - 1; i >= 0; i--) {
      this.writeBit((value >> i) & 1);
    }
  }

  /** True when the next bit to write would be the MSB of a new byte */
  atByteBoundary(): boolean {
    return this.bitPos === 7;
  }

  flush(): Uint8Array {
    if (this.bitPos < 7) {
      // Partial byte — pad remaining bits with 0
      this.bytes.push(this.currentByte);
    }
    return new Uint8Array(this.bytes);
  }
}

// ============================================================
// VLI writer — inverse of readVLI (Exponential Golomb order 2)
// ============================================================

// Same base table as in decompress-fb30.ts (CODE_80C2B6+$04)
const VLI_BASES = [0, 0, 0, 4, 12, 28, 60, 124, 252, 508, 1020, 2044, 4092, 8188];

function writeVLI(writer: BitWriter, value: number): void {
  // Find the right range
  // valueBitCount=2: values 0-3  (prefix: 1, then 2 data bits)
  // valueBitCount=3: values 4-11 (prefix: 01, then 3 data bits)
  // valueBitCount=4: values 12-27 (prefix: 001, then 4 data bits)
  // etc.

  let valueBitCount = 2;
  while (valueBitCount + 1 < VLI_BASES.length &&
         VLI_BASES[valueBitCount + 1] !== 0 &&
         value >= VLI_BASES[valueBitCount + 1]) {
    valueBitCount++;
  }

  // Also check: value must be >= VLI_BASES[valueBitCount]
  // For valueBitCount=2, base=0, max=3 (2 bits)
  // For valueBitCount=3, base=4, max=11 (3 bits -> 8 values)
  // Verify value fits in this range
  const base = VLI_BASES[valueBitCount];
  const maxInRange = base + (1 << valueBitCount) - 1;
  if (value > maxInRange) {
    throw new Error(`VLI value ${value} out of range (max ${maxInRange} for ${valueBitCount} bits)`);
  }

  if (valueBitCount === 2) {
    // Prefix: just a 1 bit
    writer.writeBit(1);
  } else {
    // Prefix: (valueBitCount - 2) zeros followed by a 1
    for (let i = 0; i < valueBitCount - 2; i++) {
      writer.writeBit(0);
    }
    writer.writeBit(1);
  }

  // Data bits
  writer.writeBits(value - base, valueBitCount);
}

// ============================================================
// Huffman tree builder
// ============================================================

interface HuffmanCode {
  symbol: number;
  codeLength: number;
  code: number; // canonical code bits
}

interface HuffmanNode {
  freq: number;
  symbol: number; // -1 for internal nodes
  left: HuffmanNode | null;
  right: HuffmanNode | null;
  depth: number; // for tie-breaking: tree depth
}

function buildHuffmanCodeLengths(
  frequencies: Map<number, number>,
  maxLength: number = 16
): Map<number, number> {
  const symbols = Array.from(frequencies.entries())
    .filter(([, freq]) => freq > 0);

  if (symbols.length === 0) return new Map();
  if (symbols.length === 1) {
    return new Map([[symbols[0][0], 1]]);
  }

  // Build Huffman tree using a priority queue (min-heap via sorted array)
  const nodes: HuffmanNode[] = symbols.map(([symbol, freq]) => ({
    freq,
    symbol,
    left: null,
    right: null,
    depth: 0,
  }));

  // Sort: by frequency ascending, then by symbol ascending for tie-breaking
  nodes.sort((a, b) => a.freq - b.freq || a.symbol - b.symbol);

  const queue = [...nodes];

  while (queue.length > 1) {
    const left = queue.shift()!;
    const right = queue.shift()!;
    const parent: HuffmanNode = {
      freq: left.freq + right.freq,
      symbol: -1,
      left,
      right,
      depth: Math.max(left.depth, right.depth) + 1,
    };

    // Insert parent in sorted position.
    // Tie-breaking: merged (internal) nodes go AFTER leaf nodes and AFTER
    // shallower internal nodes at the same frequency. This produces deeper,
    // less balanced trees — matching typical SNES-era implementations where
    // newly merged nodes are appended after existing same-frequency entries.
    let inserted = false;
    for (let i = 0; i < queue.length; i++) {
      if (parent.freq < queue[i].freq) {
        queue.splice(i, 0, parent);
        inserted = true;
        break;
      }
    }
    if (!inserted) queue.push(parent);
  }

  // Extract code lengths from tree
  const codeLengths = new Map<number, number>();

  function walk(node: HuffmanNode, depth: number) {
    if (node.symbol >= 0) {
      codeLengths.set(node.symbol, depth);
      return;
    }
    if (node.left) walk(node.left, depth + 1);
    if (node.right) walk(node.right, depth + 1);
  }

  walk(queue[0], 0);

  // Handle single-symbol edge case (should already be handled above)
  if (codeLengths.size === 1) {
    const sym = codeLengths.keys().next().value!;
    codeLengths.set(sym, 1);
  }

  // Enforce max length limit
  let maxLen = 0;
  for (const len of codeLengths.values()) {
    if (len > maxLen) maxLen = len;
  }

  if (maxLen > maxLength) {
    limitCodeLengths(codeLengths, frequencies, maxLength);
  }

  return codeLengths;
}

function limitCodeLengths(
  codeLengths: Map<number, number>,
  _frequencies: Map<number, number>,
  maxLength: number
): void {
  // Simple heuristic: redistribute long codes
  // Collect symbols sorted by length desc, then frequency
  const entries = Array.from(codeLengths.entries())
    .sort((a, b) => b[1] - a[1]); // longest first

  // Cap all to maxLength
  for (const [sym, len] of entries) {
    if (len > maxLength) {
      codeLengths.set(sym, maxLength);
    }
  }

  // Verify Kraft inequality: sum of 2^(-len) <= 1
  // Equivalent: sum of 2^(maxLength - len) <= 2^maxLength
  let kraftSum = 0;
  for (const len of codeLengths.values()) {
    kraftSum += 1 << (maxLength - len);
  }
  const kraftLimit = 1 << maxLength;

  // If overflowed, increase some shorter codes
  while (kraftSum > kraftLimit) {
    // Find shortest code and increase its length by 1
    let minLen = maxLength;
    let minSym = -1;
    for (const [sym, len] of codeLengths.entries()) {
      if (len < maxLength && len < minLen) {
        minLen = len;
        minSym = sym;
      }
    }
    if (minSym === -1) break; // can't fix
    const oldContrib = 1 << (maxLength - minLen);
    const newContrib = 1 << (maxLength - minLen - 1);
    kraftSum -= oldContrib;
    kraftSum += newContrib;
    codeLengths.set(minSym, minLen + 1);
  }
}

function canonicalize(codeLengths: Map<number, number>): HuffmanCode[] {
  // Sort by (codeLength, symbolValue) — canonical order
  const entries = Array.from(codeLengths.entries())
    .sort((a, b) => a[1] - b[1] || a[0] - b[0]);

  const codes: HuffmanCode[] = [];
  let code = 0;
  let prevLen = 0;

  for (const [symbol, codeLength] of entries) {
    if (prevLen > 0) {
      code = (code + 1) << (codeLength - prevLen);
    }
    // For the very first symbol, code stays 0
    codes.push({ symbol, codeLength, code });
    prevLen = codeLength;
  }

  return codes;
}

// ============================================================
// Encoding planner — decides symbol/run/literal/terminate actions
// ============================================================

/** Compute how many bits a VLI-encoded value takes */
function vliBitCost(value: number): number {
  let valueBitCount = 2;
  while (valueBitCount + 1 < VLI_BASES.length &&
         VLI_BASES[valueBitCount + 1] !== 0 &&
         value >= VLI_BASES[valueBitCount + 1]) {
    valueBitCount++;
  }
  if (valueBitCount === 2) {
    return 1 + 2; // prefix "1" + 2 data bits
  }
  return (valueBitCount - 2) + 1 + valueBitCount; // zeros + "1" + data bits
}

export type EncodingAction =
  | { type: "symbol"; symbol: number }
  | { type: "run"; runCount: number }
  | { type: "literal"; symbol: number }
  | { type: "terminate" };

function planEncoding(
  data: Uint8Array,
  endMarker: number,
  codedSymbols: Set<number>,
  codeMap?: Map<number, { code: number; length: number }>,
  endMarkerLength?: number
): { actions: EncodingAction[]; endMarkerFreq: number } {
  const actions: EncodingAction[] = [];
  let endMarkerFreq = 0;
  let i = 0;

  while (i < data.length) {
    const sym = data[i];

    if (!codedSymbols.has(sym) || sym === endMarker) {
      // Uncoded symbol or end-marker byte in data — use literal escape.
      // The end marker's Huffman code triggers the escape handler in the
      // decoder, so data bytes equal to endMarker must use literal escapes.
      actions.push({ type: "literal", symbol: sym });
      endMarkerFreq++;
      i++;
      continue;
    }

    // Count consecutive identical bytes, stopping before the last byte
    // The SNES compressor's run counter stops at dataLength-1, leaving
    // the final byte to be emitted as a standalone symbol before termination
    let runLen = 1;
    while (i + runLen < data.length - 1 && data[i + runLen] === sym) {
      runLen++;
    }

    // Emit the first occurrence as a Huffman symbol
    actions.push({ type: "symbol", symbol: sym });
    i++;

    if (runLen > 1) {
      const repeat = runLen - 1;

      // Decide: RLE vs individual encoding based on bit cost
      // RLE cost: endMarkerLength + VLI(repeat) bits
      // Individual cost: repeat * symbolLength bits
      const symLen = codeMap?.get(sym)?.length;
      const emLen = endMarkerLength;

      if (symLen !== undefined && emLen !== undefined) {
        const rleCost = emLen + vliBitCost(repeat);
        const individualCost = repeat * symLen;

        if (rleCost < individualCost) {
          // RLE is cheaper
          actions.push({ type: "run", runCount: repeat });
          endMarkerFreq++;
          i += repeat;
        } else {
          // Emit individually — cheaper or equal
          for (let j = 0; j < repeat; j++) {
            actions.push({ type: "symbol", symbol: sym });
          }
          i += repeat;
        }
      } else {
        // No code info available (building from scratch) — always use RLE
        actions.push({ type: "run", runCount: repeat });
        endMarkerFreq++;
        i += repeat;
      }
    }
  }

  // Termination
  actions.push({ type: "terminate" });
  endMarkerFreq++;

  return { actions, endMarkerFreq };
}

// ============================================================
// Main compressor
// ============================================================

/**
 * Choose an optimal end marker for the given data.
 * Prefers byte values not present in data; among those, picks the one
 * that the SNES compressor typically uses (value that sorts well).
 * If all 256 values appear, picks the least frequent.
 */
export function chooseEndMarker(data: Uint8Array): number {
  const freq = new Uint32Array(256);
  for (const b of data) freq[b]++;

  // Prefer unused values
  let bestSym = -1;
  let bestFreq = Infinity;
  for (let s = 0; s < 256; s++) {
    if (freq[s] < bestFreq) {
      bestFreq = freq[s];
      bestSym = s;
      if (bestFreq === 0) break; // can't do better
    }
  }
  return bestSym;
}

export interface CompressResult {
  data: Uint8Array;
  log: string[];
  actions?: EncodingAction[];
  codeLengthCounts?: number[];
  orderedSymbols?: number[];
  maxLengthIndex?: number;
}

export function compressFB30(
  uncompressedData: Uint8Array,
  endMarker: number,
  metadata: { flags: number; meta0: number; meta1: number },
  referenceTable?: FB30HuffmanTable
): CompressResult {
  const log: string[] = [];

  log.push(`Input: ${uncompressedData.length} bytes`);

  let codeLengthCounts: number[];
  let orderedSymbols: number[];
  let maxLengthIndex: number;

  if (referenceTable) {
    // Use pre-extracted Huffman table from original compressed data
    codeLengthCounts = referenceTable.codeLengthCounts;
    orderedSymbols = referenceTable.orderedSymbols;
    maxLengthIndex = referenceTable.maxLengthIndex;
    log.push(`Using reference Huffman table: ${orderedSymbols.length} symbols, max length ${maxLengthIndex + 1}`);
  } else {
    // Build Huffman codes from scratch (iterative approach).
    //
    // RLE decisions depend on code lengths, but code lengths depend on
    // frequencies which depend on RLE decisions. We iterate:
    //   1. Initial plan with all-RLE fallback → count code frequencies
    //   2. Build tree → re-plan with cost-based RLE → count new frequencies
    //   3. Repeat until frequencies stabilize (typically 2-3 iterations)
    //
    // This converges to a self-consistent tree + encoding plan that
    // optimizes compression ratio.

    // Helper: count Huffman code frequencies from an action list.
    // Each symbol action → one use of that symbol's code.
    // Each run/literal/terminate → one use of end marker's code.
    function freqsFromActions(actions: EncodingAction[], em: number): Map<number, number> {
      const freq = new Map<number, number>();
      for (const a of actions) {
        if (a.type === "symbol") {
          freq.set(a.symbol, (freq.get(a.symbol) || 0) + 1);
        } else {
          freq.set(em, (freq.get(em) || 0) + 1);
        }
      }
      return freq;
    }

    // Data symbols: all unique bytes except the end marker (which is escape-only)
    const dataSymbols = new Set<number>();
    for (const byte of uncompressedData) {
      if (byte !== endMarker) dataSymbols.add(byte);
    }
    log.push(`${dataSymbols.size} unique data symbols (excl. end marker $${endMarker.toString(16).padStart(2, "0")})`);

    // Pass 1: plan with all data symbols coded, no cost info → all-RLE fallback
    const pass1 = planEncoding(uncompressedData, endMarker, dataSymbols);
    let curFreq = freqsFromActions(pass1.actions, endMarker);
    log.push(`Pass 1 (all-RLE): ${curFreq.size} symbols, endMarkerFreq=${curFreq.get(endMarker) || 0}`);

    // Iterate: build tree → re-plan with cost-based RLE → check stability
    const MAX_ITERATIONS = 6;

    for (let pass = 2; pass <= MAX_ITERATIONS; pass++) {
      const codeLens = buildHuffmanCodeLengths(curFreq);
      const codes = canonicalize(codeLens);
      const codeMap = new Map<number, { code: number; length: number }>();
      for (const c of codes) codeMap.set(c.symbol, { code: c.code, length: c.codeLength });
      const codedSet = new Set(codes.map(c => c.symbol));
      const emLen = codeMap.get(endMarker)?.length ?? 5;

      const replan = planEncoding(uncompressedData, endMarker, codedSet, codeMap, emLen);
      const newFreq = freqsFromActions(replan.actions, endMarker);
      log.push(`Pass ${pass} (cost-based): ${newFreq.size} symbols, endMarkerFreq=${newFreq.get(endMarker) || 0}`);

      // Check stability
      let stable = true;
      for (const [sym, count] of newFreq) {
        if ((curFreq.get(sym) || 0) !== count) { stable = false; break; }
      }
      if (stable) {
        for (const [sym, count] of curFreq) {
          if ((newFreq.get(sym) || 0) !== count) { stable = false; break; }
        }
      }

      curFreq = newFreq;

      if (stable) {
        log.push(`  Frequencies stable after pass ${pass}`);
        break;
      }
    }

    // Final tree from stable frequencies
    const finalCodeLengths = buildHuffmanCodeLengths(curFreq);
    const finalCodes = canonicalize(finalCodeLengths);

    orderedSymbols = finalCodes.map(c => c.symbol);
    const maxCodeLength = Math.max(...Array.from(finalCodeLengths.values()));
    maxLengthIndex = maxCodeLength - 1;

    codeLengthCounts = [];
    for (let len = 1; len <= maxCodeLength; len++) {
      codeLengthCounts.push(finalCodes.filter(c => c.codeLength === len).length);
    }
    while (codeLengthCounts.length < 16) codeLengthCounts.push(0);

    log.push(`Built Huffman codes: ${finalCodes.length} symbols, max length ${maxCodeLength}`);
    for (let i = 0; i <= maxLengthIndex; i++) {
      if (codeLengthCounts[i] > 0) {
        log.push(`  Length ${i + 1}: ${codeLengthCounts[i]} symbols`);
      }
    }
    log.push(`Symbols: [${orderedSymbols.map(s => "$" + s.toString(16).padStart(2, "0")).join(", ")}]`);
  }

  // Build canonical codes from the code length counts + ordered symbols
  const codeMap = new Map<number, { code: number; length: number }>();
  {
    let fc = 0;
    let si = 0;
    for (let lenIdx = 0; lenIdx <= maxLengthIndex; lenIdx++) {
      const count = codeLengthCounts[lenIdx];
      for (let j = 0; j < count; j++) {
        const sym = orderedSymbols[si + j];
        codeMap.set(sym, { code: fc + j, length: lenIdx + 1 });
      }
      si += count;
      fc = (fc + count) << 1;
    }
  }

  // Plan encoding — determine which symbols are coded vs literal
  const codedSymbols = new Set(orderedSymbols);
  const endMarkerCodeLen = codeMap.get(endMarker)?.length ?? 5;
  const { actions } = planEncoding(uncompressedData, endMarker, codedSymbols, codeMap, endMarkerCodeLen);

  // Step 4: Write compressed output
  const writer = new BitWriter();

  // -- Header (6 bytes, written directly) --
  const header = [0x30, 0xfb, metadata.flags, metadata.meta0, metadata.meta1, endMarker];

  // -- Phase 1: Code length distribution --
  // VLI-encode count of symbols at each length, with Kraft early-stop
  let kraft = 0;
  let phase1Count = 0;

  for (let i = 0; i < 16; i++) {
    kraft *= 2;
    const count = codeLengthCounts[i] || 0;
    writeVLI(writer, count);
    kraft += count;
    phase1Count++;

    const remaining = 15 - i;
    if (remaining > 0 && count > 0) {
      if (kraft * (1 << remaining) >= 0x10000) {
        break;
      }
    } else if (remaining === 0) {
      break;
    }
  }

  log.push(`Phase 1: code length distribution written (${phase1Count} lengths)`);

  // -- Phase 2: Gap-encoded symbol assignments --
  // Walk symbols in canonical order, encode gaps between them
  const usedSlots = new Uint8Array(256);
  let slotPtr = -1;

  for (const sym of orderedSymbols) {
    // Count how many unused slots we skip to reach this symbol
    let gap = 0;
    while (true) {
      slotPtr = (slotPtr + 1) & 0xff;
      if (!usedSlots[slotPtr]) {
        gap++;
        if (slotPtr === sym) break;
      }
    }
    usedSlots[slotPtr] = 1;
    writeVLI(writer, gap - 1); // assembly does INC A after VLI read, so we write gap-1
  }

  log.push(`Phase 2: ${orderedSymbols.length} symbol assignments written`);

  // -- Phase 3: Huffman-coded data with RLE --
  for (const action of actions) {
    switch (action.type) {
      case "symbol": {
        const hc = codeMap.get(action.symbol)!;
        writer.writeBits(hc.code, hc.length);
        break;
      }
      case "run": {
        // Emit end-marker Huffman code, then VLI(runCount)
        const emCode = codeMap.get(endMarker)!;
        writer.writeBits(emCode.code, emCode.length);
        writeVLI(writer, action.runCount);
        break;
      }
      case "literal": {
        // end-marker + VLI(0) + bit0 + 8-bit raw symbol
        const emCode = codeMap.get(endMarker)!;
        writer.writeBits(emCode.code, emCode.length);
        writeVLI(writer, 0);
        writer.writeBit(0);
        writer.writeBits(action.symbol, 8);
        break;
      }
      case "terminate": {
        // end-marker + VLI(0) + bit1
        // If the "1" bit would start a new byte, omit it — the decompressor's
        // peekBit() returns 1 at end-of-data, so no explicit bit is needed.
        const emCode = codeMap.get(endMarker)!;
        writer.writeBits(emCode.code, emCode.length);
        writeVLI(writer, 0);
        if (!writer.atByteBoundary()) {
          writer.writeBit(1);
        }
        break;
      }
    }
  }

  log.push(`Phase 3: ${actions.length} encoding actions written`);

  // Flush remaining bits
  const bitstream = writer.flush();

  // Combine header + bitstream
  const result = new Uint8Array(header.length + bitstream.length);
  result.set(header);
  result.set(bitstream, header.length);

  log.push(`Compressed output: ${result.length} bytes`);

  return { data: result, log, actions, codeLengthCounts, orderedSymbols, maxLengthIndex };
}

// ============================================================
// Comparison helper
// ============================================================

export interface CompareResult {
  match: boolean;
  originalSize: number;
  recompressedSize: number;
  firstDiffByte: number;
  diffCount: number;
  log: string[];
}

export function compareCompressed(
  original: Uint8Array,
  recompressed: Uint8Array
): CompareResult {
  const log: string[] = [];
  const maxLen = Math.max(original.length, recompressed.length);
  let firstDiff = -1;
  let diffCount = 0;

  for (let i = 0; i < maxLen; i++) {
    const a = i < original.length ? original[i] : -1;
    const b = i < recompressed.length ? recompressed[i] : -1;
    if (a !== b) {
      diffCount++;
      if (firstDiff === -1) firstDiff = i;
      if (diffCount <= 10) {
        const aStr = a >= 0 ? `$${a.toString(16).padStart(2, "0")}` : "---";
        const bStr = b >= 0 ? `$${b.toString(16).padStart(2, "0")}` : "---";
        log.push(`  Byte $${i.toString(16).padStart(4, "0")}: original=${aStr} recompressed=${bStr}`);
      }
    }
  }

  const match = diffCount === 0;
  if (match) {
    log.unshift(`MATCH! ${original.length} bytes identical.`);
  } else {
    log.unshift(`MISMATCH: ${diffCount} bytes differ (first at $${firstDiff.toString(16).padStart(4, "0")})`);
    log.splice(1, 0, `Original: ${original.length} bytes, Recompressed: ${recompressed.length} bytes`);
    if (diffCount > 10) {
      log.push(`  ... and ${diffCount - 10} more differences`);
    }
  }

  return {
    match,
    originalSize: original.length,
    recompressedSize: recompressed.length,
    firstDiffByte: firstDiff,
    diffCount,
    log,
  };
}
