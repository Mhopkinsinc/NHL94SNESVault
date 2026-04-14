import { RGB } from "./snes-tiles";

export interface IndexedSpriteExport {
  width: number;
  height: number;
  pixels: Uint8Array;
  palette: RGB[];
  paletteNames?: string[];
  layerName?: string;
  transparentIndex?: number;
}

class BinaryWriter {
  private readonly bytes: number[] = [];

  writeByte(value: number) {
    this.bytes.push(value & 0xff);
  }

  writeBytes(values: ArrayLike<number>) {
    for (let index = 0; index < values.length; index++) {
      this.writeByte(values[index]);
    }
  }

  writeWord(value: number) {
    this.writeByte(value);
    this.writeByte(value >> 8);
  }

  writeShort(value: number) {
    const encoded = value < 0 ? 0x10000 + value : value;
    this.writeWord(encoded);
  }

  writeDword(value: number) {
    this.writeByte(value);
    this.writeByte(value >> 8);
    this.writeByte(value >> 16);
    this.writeByte(value >> 24);
  }

  writeString(value: string) {
    const encoded = new TextEncoder().encode(value);
    this.writeWord(encoded.length);
    this.writeBytes(encoded);
  }

  writeZeros(count: number) {
    for (let index = 0; index < count; index++) {
      this.writeByte(0);
    }
  }

  toUint8Array(): Uint8Array {
    return Uint8Array.from(this.bytes);
  }
}

function buildChunk(type: number, writeData: (writer: BinaryWriter) => void): Uint8Array {
  const writer = new BinaryWriter();
  writeData(writer);
  const data = writer.toUint8Array();

  const chunk = new BinaryWriter();
  chunk.writeDword(data.length + 6);
  chunk.writeWord(type);
  chunk.writeBytes(data);
  return chunk.toUint8Array();
}

function buildLayerChunk(layerName: string): Uint8Array {
  return buildChunk(0x2004, (writer) => {
    writer.writeWord(0x0003);
    writer.writeWord(0);
    writer.writeWord(0);
    writer.writeWord(0);
    writer.writeWord(0);
    writer.writeWord(0);
    writer.writeByte(255);
    writer.writeZeros(3);
    writer.writeString(layerName);
  });
}

function buildPaletteChunk(palette: RGB[], paletteNames: string[]): Uint8Array {
  return buildChunk(0x2019, (writer) => {
    writer.writeDword(palette.length);
    writer.writeDword(0);
    writer.writeDword(Math.max(0, palette.length - 1));
    writer.writeZeros(8);

    for (let index = 0; index < palette.length; index++) {
      const [red, green, blue] = palette[index] ?? [0, 0, 0];
      const name = paletteNames[index] ?? "";
      writer.writeWord(name ? 1 : 0);
      writer.writeByte(red);
      writer.writeByte(green);
      writer.writeByte(blue);
      writer.writeByte(index === 0 ? 0 : 255);
      if (name) {
        writer.writeString(name);
      }
    }
  });
}

function buildRawCelChunk(sprite: IndexedSpriteExport): Uint8Array {
  return buildChunk(0x2005, (writer) => {
    writer.writeWord(0);
    writer.writeShort(0);
    writer.writeShort(0);
    writer.writeByte(255);
    writer.writeWord(0);
    writer.writeShort(0);
    writer.writeZeros(5);
    writer.writeWord(sprite.width);
    writer.writeWord(sprite.height);
    writer.writeBytes(sprite.pixels);
  });
}

export function createAsepriteFile(sprite: IndexedSpriteExport): Uint8Array {
  const transparentIndex = sprite.transparentIndex ?? 0;
  const paletteNames = sprite.paletteNames ?? [];
  const layerName = sprite.layerName ?? "Logo";

  if (sprite.pixels.length !== sprite.width * sprite.height) {
    throw new Error(`Indexed pixel buffer length ${sprite.pixels.length} does not match ${sprite.width}x${sprite.height}`);
  }
  if (sprite.palette.length === 0 || sprite.palette.length > 256) {
    throw new Error(`Indexed palette must contain 1-256 colors, got ${sprite.palette.length}`);
  }
  if (transparentIndex < 0 || transparentIndex > 255) {
    throw new Error(`Transparent palette index must be 0-255, got ${transparentIndex}`);
  }

  const layerChunk = buildLayerChunk(layerName);
  const paletteChunk = buildPaletteChunk(sprite.palette, paletteNames);
  const celChunk = buildRawCelChunk(sprite);
  const frameChunkCount = 3;
  const frameSize = 16 + layerChunk.length + paletteChunk.length + celChunk.length;
  const fileSize = 128 + frameSize;

  const file = new BinaryWriter();
  file.writeDword(fileSize);
  file.writeWord(0xA5E0);
  file.writeWord(1);
  file.writeWord(sprite.width);
  file.writeWord(sprite.height);
  file.writeWord(8);
  file.writeDword(1);
  file.writeWord(100);
  file.writeDword(0);
  file.writeDword(0);
  file.writeByte(transparentIndex);
  file.writeZeros(3);
  file.writeWord(sprite.palette.length);
  file.writeByte(1);
  file.writeByte(1);
  file.writeShort(0);
  file.writeShort(0);
  file.writeWord(8);
  file.writeWord(8);
  file.writeZeros(84);

  file.writeDword(frameSize);
  file.writeWord(0xF1FA);
  file.writeWord(frameChunkCount);
  file.writeWord(100);
  file.writeZeros(2);
  file.writeDword(frameChunkCount);
  file.writeBytes(layerChunk);
  file.writeBytes(paletteChunk);
  file.writeBytes(celChunk);

  return file.toUint8Array();
}