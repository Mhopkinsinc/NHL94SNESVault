/**
 * NHL 94 SNES - $FB7A RLE (Run-Length Encoding) Decompressor
 *
 * Translated from the 65816 assembly at CODE_80C2F3.
 * See Docs/Dev_Notes/Decompression_Routines.md for the full algorithm description.
 *
 * Data format after the 2-byte $FB7A magic:
 *   Bytes 2-4: header (skipped, 3 bytes)
 *   Bytes 5-6: sub-mode word (16-bit LE)
 *              $0101 = byte-granularity RLE (CODE_80C313)
 *              other = word-granularity RLE (CODE_80C32F)
 *   Byte 7+:   RLE control stream
 *
 * Control byte encoding (same for both modes):
 *   0x00:           end of stream
 *   0x01-0x7F (N):  repeat run — read value(s), write N+1 times
 *   0x80-0xFF (N):  literal run — copy (~N & 0xFF)+1 value(s) verbatim
 *
 * In byte mode each unit is 1 byte; in word mode each unit is 2 bytes.
 */

import type { DecompressResult } from "./decompress";

export function decompressFB7A(compressedData: Uint8Array): DecompressResult {
  const log: string[] = [];

  // Validate magic
  if (compressedData[0] !== 0x7a || compressedData[1] !== 0xfb) {
    throw new Error(
      `Invalid magic: expected FB7A, got ${compressedData[1].toString(16).toUpperCase()}${compressedData[0].toString(16).toUpperCase()}`
    );
  }

  // Read sub-mode word at offset 5-6 (little-endian)
  const modeWord = compressedData[5] | (compressedData[6] << 8);
  const byteMode = modeWord === 0x0101;

  log.push(`Sub-mode: $${modeWord.toString(16).padStart(4, "0")} — ${byteMode ? "byte-granularity" : "word-granularity"} RLE`);

  const output: number[] = [];
  let pos = 7; // first control byte
  const MAX_OUTPUT = 0x20000;

  if (byteMode) {
    // =====================================================================
    // Byte-granularity RLE (CODE_80C313)
    // =====================================================================
    while (pos < compressedData.length && output.length < MAX_OUTPUT) {
      const ctrl = compressedData[pos++];

      if (ctrl === 0) {
        // End of stream
        break;
      } else if (ctrl & 0x80) {
        // Literal run: count = (ctrl ^ 0xFF) + 1
        // Assembly: EOR #$FF → TAX, then DEX;BPL loop (X+1 iterations)
        const count = (ctrl ^ 0xff) + 1;
        for (let i = 0; i < count; i++) {
          output.push(compressedData[pos++]);
        }
      } else {
        // Repeat run: write value (ctrl + 1) times
        // Assembly: TAX, then DEX;BPL loop (X+1 iterations)
        const count = ctrl + 1;
        const value = compressedData[pos++];
        for (let i = 0; i < count; i++) {
          output.push(value);
        }
      }
    }
  } else {
    // =====================================================================
    // Word-granularity RLE (CODE_80C32F)
    // Each unit is a 2-byte word written as [byte1, byte2]
    // =====================================================================
    while (pos < compressedData.length && output.length < MAX_OUTPUT) {
      const ctrl = compressedData[pos++];

      if (ctrl === 0) {
        // End of stream
        break;
      } else if (ctrl & 0x80) {
        // Literal word run: count = (ctrl ^ 0xFF) + 1 word pairs
        const count = (ctrl ^ 0xff) + 1;
        for (let i = 0; i < count; i++) {
          output.push(compressedData[pos++]); // byte 1
          output.push(compressedData[pos++]); // byte 2
        }
      } else {
        // Repeat word run: write word pair (ctrl + 1) times
        // Assembly reads byte1 into B (via XBA), byte2 into A,
        // then alternates XBA;STA;XBA;STA for each iteration
        const count = ctrl + 1;
        const byte1 = compressedData[pos++];
        const byte2 = compressedData[pos++];
        for (let i = 0; i < count; i++) {
          output.push(byte1);
          output.push(byte2);
        }
      }
    }
  }

  log.push(`Decompressed ${output.length} bytes (FB7A RLE)`);
  log.push(`Compressed stream: ${pos} bytes consumed`);

  return {
    data: new Uint8Array(output),
    log,
  };
}
