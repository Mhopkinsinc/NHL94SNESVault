import { readFileSync, writeFileSync, existsSync, copyFileSync } from "fs";
import { createRequire } from "module";

const require = createRequire(import.meta.url);
const { decompressFB30, extractFB30Codes } = require("../tmpbuild/decompress-fb30.js");
const { compressFB30, chooseEndMarker } = require("../tmpbuild/compress-fb30.js");

function parseArgs(argv) {
  const options = {
    slot: 28,
    backup: true,
  };

  for (let index = 2; index < argv.length; index++) {
    const arg = argv[index];
    const next = argv[index + 1];
    if (arg === "--blob" && next) {
      options.blob = next;
      index += 1;
    } else if (arg === "--frame" && next) {
      options.frame = next;
      index += 1;
    } else if (arg === "--out" && next) {
      options.out = next;
      index += 1;
    } else if (arg === "--slot" && next) {
      options.slot = parseInt(next, 10);
      index += 1;
    } else if (arg === "--no-backup") {
      options.backup = false;
    } else {
      throw new Error(`Unknown or incomplete argument: ${arg}`);
    }
  }

  if (!options.blob || !options.frame || !options.out) {
    throw new Error("Usage: node TileViewer/replace_setup_logo_slot.mjs --blob <setup_logo.fb30.bin> --frame <frame.bin> --out <output.fb30.bin> [--slot 28] [--no-backup]");
  }

  return options;
}

function readPointer(blob, index) {
  const offset = index * 4;
  return blob[offset] | (blob[offset + 1] << 8) | (blob[offset + 2] << 16) | (blob[offset + 3] << 24);
}

function writePointer(blob, index, value) {
  const offset = index * 4;
  blob[offset] = value & 0xff;
  blob[offset + 1] = (value >> 8) & 0xff;
  blob[offset + 2] = (value >> 16) & 0xff;
  blob[offset + 3] = (value >> 24) & 0xff;
}

function getFrameCount(blob) {
  return Math.floor(readPointer(blob, 0) / 4);
}

function buildFrameSlices(blob, frameCount) {
  const pointers = Array.from({ length: frameCount }, (_, index) => readPointer(blob, index));
  const uniquePointers = [...new Set(pointers)].sort((left, right) => left - right);
  const nextPointerByPointer = new Map();
  for (let index = 0; index < uniquePointers.length; index++) {
    const pointer = uniquePointers[index];
    const nextPointer = index + 1 < uniquePointers.length ? uniquePointers[index + 1] : blob.length;
    nextPointerByPointer.set(pointer, nextPointer);
  }

  return pointers.map((pointer) => {
    const end = nextPointerByPointer.get(pointer);
    if (end === undefined || end < pointer) {
      throw new Error(`Invalid frame pointer range for $${pointer.toString(16)}`);
    }
    return blob.slice(pointer, end);
  });
}

function rebuildBlob(originalBlob, replacementFrame, slot) {
  const frameCount = getFrameCount(originalBlob);
  if (slot < 0 || slot >= frameCount) {
    throw new Error(`Replacement slot ${slot} is out of range for ${frameCount} setup-logo frames`);
  }

  const originalPointers = Array.from({ length: frameCount }, (_, index) => readPointer(originalBlob, index));
  const originalFrames = buildFrameSlices(originalBlob, frameCount);
  const frameKeyOrder = originalPointers.map((pointer, index) => index === slot ? `replace:${slot}` : `orig:${pointer}`);
  const frameDataByKey = new Map();

  for (let index = 0; index < frameCount; index++) {
    const key = frameKeyOrder[index];
    if (key === `replace:${slot}`) {
      frameDataByKey.set(key, replacementFrame);
    } else if (!frameDataByKey.has(key)) {
      frameDataByKey.set(key, originalFrames[index]);
    }
  }

  const rebuiltLength = frameCount * 4 + Array.from(new Set(frameKeyOrder)).reduce((sum, key) => {
    const frame = frameDataByKey.get(key);
    if (!frame) throw new Error(`Missing frame data for ${key}`);
    return sum + frame.length;
  }, 0);
  const rebuiltBlob = new Uint8Array(rebuiltLength);
  let nextOffset = frameCount * 4;
  const assignedOffsets = new Map();

  for (let index = 0; index < frameCount; index++) {
    const key = frameKeyOrder[index];
    let pointer = assignedOffsets.get(key);
    if (pointer === undefined) {
      const frame = frameDataByKey.get(key);
      if (!frame) throw new Error(`Missing frame data for ${key}`);
      pointer = nextOffset;
      rebuiltBlob.set(frame, nextOffset);
      assignedOffsets.set(key, pointer);
      nextOffset += frame.length;
    }
    writePointer(rebuiltBlob, index, pointer);
  }

  return rebuiltBlob;
}

function main() {
  const options = parseArgs(process.argv);
  const blobPath = options.blob;
  const framePath = options.frame;
  const outPath = options.out;

  const originalCompressed = new Uint8Array(readFileSync(blobPath));
  const replacementFrame = new Uint8Array(readFileSync(framePath));
  const decompressed = decompressFB30(originalCompressed).data;
  const rebuiltBlob = rebuildBlob(decompressed, replacementFrame, options.slot);

  const flags = originalCompressed[2];
  const meta0 = (rebuiltBlob.length >> 8) & 0xff;
  const meta1 = rebuiltBlob.length & 0xff;
  const endMarker = chooseEndMarker(rebuiltBlob);

  const fromScratch = compressFB30(rebuiltBlob, endMarker, { flags, meta0, meta1 });
  const referenceTable = extractFB30Codes(originalCompressed);
  const withReference = compressFB30(rebuiltBlob, endMarker, { flags, meta0, meta1 }, referenceTable);
  const chosen = withReference.data.length <= fromScratch.data.length ? withReference : fromScratch;

  const verify = decompressFB30(chosen.data);
  if (verify.data.length !== rebuiltBlob.length) {
    throw new Error(`Round-trip length mismatch: expected ${rebuiltBlob.length}, got ${verify.data.length}`);
  }
  for (let index = 0; index < rebuiltBlob.length; index++) {
    if (verify.data[index] !== rebuiltBlob[index]) {
      throw new Error(`Round-trip data mismatch at byte ${index}`);
    }
  }

  if (options.backup && existsSync(outPath)) {
    copyFileSync(outPath, `${outPath}.bak`);
  }
  writeFileSync(outPath, chosen.data);

  console.log(`Original compressed size: ${originalCompressed.length} bytes`);
  console.log(`Rebuilt decompressed size: ${rebuiltBlob.length} bytes`);
  console.log(`Replacement frame size: ${replacementFrame.length} bytes`);
  console.log(`Selected slot: ${options.slot}`);
  console.log(`Chosen compression: ${chosen === withReference ? "reference-table" : "from-scratch"}`);
  console.log(`Output compressed size: ${chosen.data.length} bytes`);
  console.log(`Wrote: ${outPath}`);
}

try {
  main();
} catch (error) {
  console.error(error instanceof Error ? error.message : String(error));
  process.exit(1);
}