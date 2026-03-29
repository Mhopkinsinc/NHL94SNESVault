/**
 * NHL 94 SNES - $FB10 LZ77 / Sliding Window Decompressor
 *
 * Translated from the 65816 assembly at CODE_80B8DB.
 * See Docs/Dev_Notes/Decompression_Routines.md for the full algorithm description.
 *
 * Data format after the 2-byte $FB10 magic:
 *   Bytes 2-4: header (skipped by decompressor, Y starts at 5)
 *   Bytes 5+:  compressed stream of control bytes + data
 *
 * Control byte dispatch (bits 7-5):
 *   0xxxxxxx  — Short match:   2-byte sequence, 10-bit distance, length 3-10
 *   10xxxxxx  — Extended match: 3-byte sequence, 14-bit distance, length 4-67
 *   110xxxxx  — Far match:      4-byte sequence, 16-bit distance, length 5-1028
 *   111xxxxx  — Bulk literal:   raw bytes, length 4-128; values >= 0x71 = termination
 */

import type { DecompressResult } from "./decompress";

export function decompressFB10(compressedData: Uint8Array): DecompressResult {
  const log: string[] = [];

  // Validate magic
  if (compressedData[0] !== 0x10 || compressedData[1] !== 0xfb) {
    throw new Error(
      `Invalid magic: expected FB10, got ${compressedData[1].toString(16).toUpperCase()}${compressedData[0].toString(16).toUpperCase()}`
    );
  }

  const output: number[] = [];
  let pos = 5; // skip 2-byte magic + 3-byte header (assembly: LDY #$0005)
  const MAX_OUTPUT = 0x20000; // 128KB safety limit

  /**
   * Copy literal bytes from the compressed stream to output.
   */
  function copyLiterals(count: number) {
    for (let i = 0; i < count; i++) {
      output.push(compressedData[pos++]);
    }
  }

  /**
   * Copy match bytes from already-decompressed output (back-reference).
   *
   * Assembly uses: $6B = $6F - distance - 1, then reads [$6B],Y
   * The CLC; SBC pattern computes A - M - 1 (borrow=1 when carry clear).
   */
  function copyMatch(distance: number, length: number) {
    const srcStart = output.length - distance - 1;
    for (let i = 0; i < length; i++) {
      // Read from output — index may overlap with current write position
      // (self-referential copy for RLE-like patterns)
      output.push(output[srcStart + i]);
    }
  }

  let done = false;

  while (!done && output.length < MAX_OUTPUT && pos < compressedData.length) {
    // Main loop: read control byte (CODE_80B8F0)
    const ctrl = compressedData[pos++];

    if ((ctrl & 0x80) === 0) {
      // =====================================================================
      // SHORT MATCH (bit 7 clear) — CODE_80B8FC
      // Control byte: 0DDMMMLL
      //   LL (bits 1-0):  literal count (0-3)
      //   MMM (bits 4-2): match length field (0-7), +3 = length 3-10
      //   DD (bits 6-5):  distance high 2 bits
      // Next byte: distance low 8 bits
      // =====================================================================
      const nextByte = compressedData[pos++];
      const litCount = ctrl & 0x03;

      // Copy literals
      if (litCount > 0) {
        copyLiterals(litCount);
      }

      // Distance: ((ctrl & 0x60) << 3) | nextByte
      // Assembly: AND #$0060; ASL;ASL;ASL → shifts bits 6-5 up by 3
      // Equivalent to (ctrl & 0x60) << 3, which puts them at bits 8-9
      const distance = ((ctrl & 0x60) << 3) | nextByte;

      // Match length: ((ctrl & 0x1C) >> 2) + 3
      const matchLen = ((ctrl & 0x1c) >> 2) + 3;

      copyMatch(distance, matchLen);

    } else if ((ctrl & 0x40) === 0) {
      // =====================================================================
      // EXTENDED MATCH (bit 7 set, bit 6 clear) — CODE_80B960
      // Control byte: 10MMMMMM
      //   MMMMMM (bits 5-0): match length field (0-63), +4 = length 4-67
      // Next 2 bytes: $73 and $75
      //   $73 bits 7-6: literal count (0-3)
      //   $73 bits 5-0: distance high 6 bits
      //   $75: distance low 8 bits
      // =====================================================================
      const byte73 = compressedData[pos++];
      const byte75 = compressedData[pos++];

      // Literal count from $73 top 2 bits
      // Assembly: LDA $73; ASL;ASL; XBA; AND #$0003
      const litCount = (byte73 >> 6) & 0x03;

      if (litCount > 0) {
        copyLiterals(litCount);
      }

      // Distance: ($73 & 0x3F) << 8 | $75
      const distance = ((byte73 & 0x3f) << 8) | byte75;

      // Match length: (ctrl & 0x3F) + 4
      const matchLen = (ctrl & 0x3f) + 4;

      copyMatch(distance, matchLen);

    } else if ((ctrl & 0x20) === 0) {
      // =====================================================================
      // FAR MATCH (bits 7+6 set, bit 5 clear) — CODE_80B9C8
      // Control byte: 110MMLL_
      //   LL (bits 1-0):  literal count (0-3)
      //   MM (bits 3-2):  match length high 2 bits
      // Next 2 bytes: 16-bit distance (big-endian after XBA)
      // Next byte: extra match length ($77)
      // Match length = (MM << 8) + $77 + 5
      // =====================================================================
      const litCount = ctrl & 0x03;

      // 16-bit distance: assembly does LDA [$0C],Y (little-endian read) then XBA
      // So stream order is [high, low] effectively:
      // LE read: A = (stream[pos+1] << 8) | stream[pos]
      // XBA:     A = (stream[pos] << 8) | stream[pos+1]
      const distHi = compressedData[pos];
      const distLo = compressedData[pos + 1];
      const distance = (distHi << 8) | distLo;
      pos += 2;

      // Extra length byte
      const extraLen = compressedData[pos++];

      // Copy literals (after reading distance+extra, before match)
      if (litCount > 0) {
        copyLiterals(litCount);
      }

      // Match length: ((ctrl & 0x0C) >> 2) << 8 + extraLen + 5
      const matchLen = (((ctrl & 0x0c) >> 2) << 8) + extraLen + 5;

      copyMatch(distance, matchLen);

    } else {
      // =====================================================================
      // BULK LITERAL (bits 7+6+5 all set) — CODE_80BA21
      // Control byte: 111LLLLL
      //   LLLLL (bits 4-0): length field
      //   literal_count = (LLLLL << 2) + 4
      //   If count >= 0x71 (113): termination
      // =====================================================================
      const rawLen = (ctrl & 0x1f) << 2;
      // Assembly: ASL;ASL then ADC #$04 (carry clear from ASL of small value)
      const litCount = rawLen + 4;

      if (litCount >= 0x71) {
        // ===================================================================
        // TERMINATION — CODE_80BA46
        // Final literal count = ctrl & 0x03
        // ===================================================================
        const finalLits = ctrl & 0x03;
        if (finalLits > 0) {
          copyLiterals(finalLits);
        }
        done = true;
      } else {
        copyLiterals(litCount);
      }
    }
  }

  log.push(`Decompressed ${output.length} bytes (FB10 LZ77)`);
  log.push(`Compressed stream: ${pos} bytes consumed`);

  return {
    data: new Uint8Array(output),
    log,
  };
}
