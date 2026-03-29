/**
 * NHL 94 SNES — Master Decompression Dispatcher
 *
 * Mirrors CODE_80C373: reads the 2-byte magic number from the compressed
 * data header and dispatches to the correct decompressor.
 *
 * Magic numbers:
 *   $FB10 — LZ77 / Sliding Window  (CODE_80B8DB)
 *   $FB46 — Huffman Tree            (CODE_80BA63)
 *   $FB30 — Canonical Huffman       (CODE_80BBB3)
 *   $FB7A — RLE                     (CODE_80C2F3)
 */

import { decompressFB30 } from "./decompress-fb30";
import { decompressFB10 } from "./decompress-fb10";
import { decompressFB46 } from "./decompress-fb46";
import { decompressFB7A } from "./decompress-fb7a";

export interface DecompressResult {
  data: Uint8Array;
  log: string[];
}

export interface CompressionType {
  magic: number;
  name: string;
  description: string;
  implemented: boolean;
}

export const COMPRESSION_TYPES: CompressionType[] = [
  { magic: 0xfb10, name: "FB10", description: "LZ77 / Sliding Window", implemented: true },
  { magic: 0xfb46, name: "FB46", description: "Huffman Tree", implemented: true },
  { magic: 0xfb30, name: "FB30", description: "Canonical Huffman", implemented: true },
  { magic: 0xfb7a, name: "FB7A", description: "RLE (Run-Length Encoding)", implemented: true },
];

export function identifyCompression(data: Uint8Array): CompressionType | null {
  if (data.length < 2) return null;
  const magic = (data[1] << 8) | data[0];
  return COMPRESSION_TYPES.find((t) => t.magic === magic) ?? null;
}

export function decompress(compressedData: Uint8Array): DecompressResult {
  const type = identifyCompression(compressedData);

  if (!type) {
    const magic = compressedData.length >= 2
      ? `$${((compressedData[1] << 8) | compressedData[0]).toString(16).toUpperCase().padStart(4, "0")}`
      : "(insufficient data)";
    throw new Error(`Unknown compression magic: ${magic}`);
  }

  if (!type.implemented) {
    throw new NotImplementedError(type);
  }

  switch (type.magic) {
    case 0xfb10: return decompressFB10(compressedData);
    case 0xfb46: return decompressFB46(compressedData);
    case 0xfb30: return decompressFB30(compressedData);
    case 0xfb7a: return decompressFB7A(compressedData);
    default: throw new Error(`No decompressor for ${type.name}`);
  }
}

export class NotImplementedError extends Error {
  compressionType: CompressionType;

  constructor(type: CompressionType) {
    super(`${type.name} (${type.description}) decompressor is not implemented yet.`);
    this.name = "NotImplementedError";
    this.compressionType = type;
  }
}
