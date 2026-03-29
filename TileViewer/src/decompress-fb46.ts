/**
 * NHL 94 SNES - $FB46 Huffman Tree / Pair-Expansion Decompressor
 *
 * Translated from the 65816 assembly at CODE_80BA63.
 * See Docs/Dev_Notes/Decompression_Routines.md for the full algorithm description.
 *
 * Data format after the 2-byte $FB46 magic:
 *   Bytes 2-4: header (skipped, 3 bytes)
 *   Byte  5:   escape/terminator node ID
 *   Byte  6:   number of tree definition triplets (N)
 *   Bytes 7+:  N triplets of (parent, left_child, right_child)
 *   Then:      compressed data stream
 *
 * The tree is a binary pair-expansion structure:
 *   - Leaf nodes (table=0) output their byte value directly
 *   - Internal nodes (table<0) expand to their left and right subtrees
 *   - The escape byte (table>0) signals: next byte is literal output,
 *     or 0x00 = end-of-stream
 *
 * The assembly unrolls tree traversal for speed; this implementation
 * uses a clean recursive approach matching CODE_80BB97.
 */

import type { DecompressResult } from "./decompress";

export function decompressFB46(compressedData: Uint8Array): DecompressResult {
  const log: string[] = [];

  // Validate magic
  if (compressedData[0] !== 0x46 || compressedData[1] !== 0xfb) {
    throw new Error(
      `Invalid magic: expected FB46, got ${compressedData[1].toString(16).toUpperCase()}${compressedData[0].toString(16).toUpperCase()}`
    );
  }

  // Node type table: 0=leaf, >0=escape byte, <0=internal node
  // Assembly uses $0100-$01FF (256 bytes)
  const nodeType = new Int8Array(256); // signed 8-bit

  // Left/right child tables
  // Assembly uses $0500 and $0600
  const leftChild = new Uint8Array(256);
  const rightChild = new Uint8Array(256);

  // Byte 5: escape/terminator node — gets INC'd in table
  const escapeNode = compressedData[5];
  nodeType[escapeNode] = 1; // INC $0100,X

  // Byte 6: number of tree definition triplets
  const pairCount = compressedData[6];

  log.push(`Escape byte: $${escapeNode.toString(16).padStart(2, "0")}`);
  log.push(`Tree pairs: ${pairCount}`);

  // Read tree definition triplets starting at byte 7
  let pos = 7;
  for (let i = 0; i < pairCount; i++) {
    const parent = compressedData[pos++];
    const left = compressedData[pos++];
    const right = compressedData[pos++];
    leftChild[parent] = left;
    rightChild[parent] = right;
    nodeType[parent]--; // DEC $0100,X — internal nodes go to -1 (or 0 if escape byte)
  }

  // Count internal vs leaf for logging
  let internalCount = 0;
  for (let i = 0; i < 256; i++) {
    if (nodeType[i] < 0) internalCount++;
  }
  log.push(`Internal nodes: ${internalCount}, escape table value: ${nodeType[escapeNode]}`);

  // Output buffer
  const output: number[] = [];
  const MAX_OUTPUT = 0x20000;

  /**
   * Recursive in-order tree traversal — matches CODE_80BB97.
   * Only outputs leaf nodes (nodeType=0). Internal nodes are recursed into.
   */
  function expandNode(node: number) {
    // Left subtree
    const left = leftChild[node];
    if (nodeType[left] !== 0) {
      expandNode(left);
    } else {
      output.push(left);
    }

    // Right subtree
    const right = rightChild[node];
    if (nodeType[right] !== 0) {
      expandNode(right);
    } else {
      output.push(right);
    }
  }

  // =========================================================================
  // Main decode loop — matches CODE_80BAE3
  // =========================================================================
  let done = false;

  while (!done && pos < compressedData.length && output.length < MAX_OUTPUT) {
    const byte = compressedData[pos++];
    const type = nodeType[byte];

    if (type === 0) {
      // Leaf: output directly (CODE_80BADF)
      output.push(byte);
    } else if (type < 0) {
      // Internal node: expand subtree (CODE_80BAEF → recursive walk)
      expandNode(byte);
    } else {
      // Positive (escape byte): literal escape mode (CODE_80BACC)
      // Read alternating: literal output, then node check
      while (!done && pos < compressedData.length && output.length < MAX_OUTPUT) {
        // Read literal byte
        const literal = compressedData[pos++];
        if (literal === 0x00) {
          // End of stream (CODE_80BAC9 → RTS)
          done = true;
          break;
        }
        output.push(literal);

        // Read next byte and dispatch
        if (pos >= compressedData.length) break;
        const next = compressedData[pos++];
        const nextType = nodeType[next];

        if (nextType === 0) {
          // Leaf: output and return to main loop
          output.push(next);
          break;
        } else if (nextType < 0) {
          // Internal node: expand and return to main loop
          expandNode(next);
          break;
        }
        // Positive: loop (another escape sequence)
      }
    }
  }

  log.push(`Decompressed ${output.length} bytes (FB46 Huffman Tree)`);
  log.push(`Compressed stream: ${pos} bytes consumed`);

  return {
    data: new Uint8Array(output),
    log,
  };
}
