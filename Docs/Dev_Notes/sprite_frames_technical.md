# NHL '94 SNES Sprite Frame System - Technical Reference

This document describes how the SNES hardware and game assembly build composed
sprite frames from ROM data, and how the TileViewer replicates that process
offline.

---

## 1. Overview

Every on-screen character (skaters, goalies, refs, puck) is drawn as a
**composed sprite frame**: a collection of SNES OAM sprite entries that are
positioned relative to each other so they appear as a single image. The system
has three layers:

```
Frame Pointer Table  -->  Frame Data (header + sprite entries + tiles)
    976 x 4 bytes             variable size per frame
    ROM $10000                ROM $10F40 - $75880 (approx.)
```

Frame IDs are **1-based** (1 through 976). Animation scripts in Bank 9E
reference these IDs and supply timing/duration values.

---

## 2. Frame Pointer Table

### Location
- **SNES address:** $82:8000
- **ROM file offset:** $010000
- **Size:** 976 entries x 4 bytes = 3,904 bytes ($0F40)
- **Defined in:** `Src/bank_82.asm` as `DATA8_828000`

### Entry Format

Each 4-byte entry is a **relative offset** from the table's own SNES base
address ($82:$8000). The two words are stored little-endian:

```
Byte 0-1: Low word   (16-bit, little-endian)
Byte 2-3: High word  (16-bit, little-endian)
```

### Converting a Table Entry to a ROM File Offset

The game's assembly (CODE_9BC002 in `bank_9B.asm`, CODE_80B08D in
`bank_80.asm`) reconstructs the full 24-bit SNES address like this:

```asm
LDA.L DATA8_828000,X    ; load low word from table
CLC
ADC.W #$8000            ; add $8000 to get SNES address within bank
STA.B $0C               ; -> address low byte ($0C) and high byte ($0D)

LDA.L DATA8_828002,X    ; load high word from table
ADC.W #$0082            ; add bank $82 (with carry from previous add)
STA.B $0E               ; -> bank byte ($0E)
```

The result in ```$0C/$0D/$0E``` is a 24-bit LoROM pointer used with indirect-long
addressing (`LDA [$0C],Y`).

**To convert to a ROM file offset, apply the LoROM formula:**

```
SNES bank = (highWord + $82 + carry) & $FF
SNES addr = (lowWord + $8000) & $FFFF
carry     = 1 if (lowWord + $8000) > $FFFF, else 0

ROM offset = (bank & $7F) * $8000 + (addr & $7FFF)
```

**Simplified** (lowWord is always < $8000 in practice, so no carry):

```
ROM offset = (highWord + 2) * $8000 + lowWord
```

### Worked Examples

| Frame | Table Bytes     | Low   | High  | SNES Address | ROM Offset |
|-------|-----------------|-------|-------|--------------|------------|
| 1     | `40 0F 00 00`  | $0F40 | $0000 | $82:8F40     | $10F40     |
| 78    | `37 7D 00 00`  | $7D37 | $0000 | $82:FD37     | $17D37     |
| 79    | `00 00 01 00`  | $0000 | $0001 | $83:8000     | $18000     |
| 80    | `C0 01 01 00`  | $01C0 | $0001 | $83:81C0     | $181C0     |

Note the bank boundary between frames 78 and 79: the data crosses from SNES
bank $82 into bank $83. In LoROM each bank contributes only $8000 bytes to the
ROM file, so the ROM offset jumps from $17xxx to $18000 (not $20000).

### Why LoROM Matters

A naive flat-offset calculation (`$10000 + (highWord << 16) + lowWord`) would
place frame 79 at ROM $20000 instead of $18000 - an error of $8000 per bank
boundary crossed. This causes the parser to read garbage data from a completely
different part of the ROM.

The `snesLoROMToFileOffset()` helper in the TileViewer's `main.ts` implements
the standard conversion:

```typescript
function snesLoROMToFileOffset(bank: number, addr: number): number {
  return ((bank & 0x7f) * 0x8000) + (addr & 0x7fff);
}
```

---

## 3. Frame Data Structure

Each frame's data is stored contiguously in ROM and consists of three parts:

```
[22-byte Header] [N x 7-byte Sprite Entries] [Tile Data]
```

### 3.1 Frame Header (22 bytes / $16)

| Offset | Size  | Name       | Read By        | Description                              |
|--------|-------|------------|----------------|------------------------------------------|
| $00    | 1     | NumSprites | CODE_80B08D    | Number of OAM sprite entries             |
| $01    | 1     | Flag       | CODE_80B3E1    | Bit 7: inline tile data ($80 = yes)      |
| $02    | 1     | NumTiles   | CODE_80B3E1    | Total 8x8 tiles (VRAM slot calculation)  |
| $03    | 1     | Padding    | (with $02)     | Usually $00, read as word with NumTiles  |
| $04-0B | 8     | (Unused)   | **None found** | Not read by any identified ASM routine   |
| $0C-0D | 2     | TopBytes   | CODE_80B3E1    | Top section size in bytes (tiles × 32)   |
| $0E-0F | 2     | BotBytes   | CODE_80B3E1    | Bottom section size in bytes (tiles × 32) |
| $10-11 | 2     | DataLength | CODE_80B3E1    | Header + entries size (tile data offset)  |
| $12    | 1     | BBoxLeft   | CODE_9BC002/74 | Signed 8-bit bounding box left / hotspot X |
| $13    | 1     | BBoxTop    | CODE_9BC002/74 | Signed 8-bit bounding box top / hotspot Y  |
| $14    | 1     | BBoxRight  | CODE_9BC074    | Signed 8-bit bounding box right edge     |
| $15    | 1     | BBoxBottom | CODE_9BC074    | Signed 8-bit bounding box bottom edge    |

**Header size is hardcoded.** The assembly at CODE_80B0C8 sets `Y = #$0016`
(decimal 22) before reading the first sprite entry. Byte 0 (NumSprites) is read
at Y=0, then Y jumps to 22 to begin sprite iteration. All 22 bytes are always
present regardless of frame content.

**DataLength validation:** For well-formed frames, `DataLength` should equal
`$16 + (NumSprites * 7)`. A mismatch is a strong signal that the pointer
resolved to the wrong address.

### 3.2 Flag Byte ($01)

- **Bit 7 set ($80):** Tile data is stored inline immediately after the sprite
  entries. The TileViewer can read and render the tiles directly.
- **Bit 7 clear:** Tiles are pre-loaded into VRAM by a separate decompression
  routine. The sprite entries reference VRAM tile indices rather than inline
  data. The TileViewer cannot display these frames without the VRAM state.

### 3.3 Unused Bytes ($04-$0B)

Bytes $04 through $0B are present in every frame header but are **not read by
any identified assembly routine**. The frame data pointer [$0C] is accessed at
offsets $00, $02, $0C, $0E, $10, $12-$15, and $16+ (sprite entries), but
nothing reads from offsets $04-$0B.

Earlier documentation labeled byte $0A as "Stride" (row stride for 16x16 tile
layout). Testing showed this value does NOT reliably equal `topSectionSize - 1`
and substituting it into the tile layout calculation broke rendering on many
frames. These bytes may be vestigial data from the frame generation toolchain
or serve a purpose in an unidentified routine.

### 3.4 Bounding Box (Offsets $12-$15)

CODE_9BC002 reads offsets $12-$13 as a simple hotspot (anchor point).
CODE_9BC074 reads all four bytes $12-$15 as a bounding box and computes
width/height:

```
$12 = BBoxLeft   (signed 8-bit, sign-extended to 16-bit)
$13 = BBoxTop    (signed 8-bit, sign-extended to 16-bit)
$14 = BBoxRight  (signed 8-bit, sign-extended to 16-bit)
$15 = BBoxBottom (signed 8-bit, sign-extended to 16-bit)

Width  ($A5) = BBoxRight - BBoxLeft
Height ($A9) = BBoxTop - BBoxBottom
```

The sign-extension logic used for each byte:

```asm
LDA.B [$0C],Y           ; read byte at offset
AND.W #$00FF            ; mask to 8-bit
CMP.W #$0080            ; negative?
BCC positive            ;   no -> use as-is
ORA.W #$FF00            ;   yes -> sign-extend to 16-bit
```

These values are used for collision detection and sprite-to-world positioning.
The width/height may be negated based on the player's facing direction (bits
$0800/$1000 in $0E03,X).

---

## 4. Sprite Entry Format (7 bytes each)

Sprite entries begin at frame data offset $16 (immediately after the header).
Each entry defines one SNES OAM hardware sprite:

| Byte | Size | Name      | Description                                    |
|------|------|-----------|------------------------------------------------|
| 0-1  | 2    | X Offset  | Signed 16-bit, little-endian, relative to frame origin |
| 2-3  | 2    | Y Offset  | Signed 16-bit, little-endian, relative to frame origin |
| 4    | 1    | FirstTile | VRAM tile index (see Section 5.3 for ROM mapping) |
| 5    | 1    | Flags     | OAM attribute flags (see below)                |
| 6    | 1    | Size      | $FF = 16x16 pixel sprite (2x2 tiles), else 8x8 |

### 4.1 Flags Byte

| Bit(s) | Mask | Meaning                                          |
|--------|------|--------------------------------------------------|
| 0-3    | $0F  | Palette / priority (passed to SNES OAM)          |
| 3      | $08  | Common value; exact OAM mapping TBD              |
| 6      | $40  | Horizontal flip                                  |
| 7      | $80  | Vertical flip                                    |

### 4.2 Assembly Sprite Entry Read Loop

The main OAM rendering routine (CODE_80B0DD in `bank_80.asm`) reads entries
sequentially with Y as a running offset:

```asm
; Read one 7-byte sprite entry (Y starts at $0016, advances by 7 per entry)
LDA [$0C],Y     ; bytes 0-1: X offset  -> $07C8
INY : INY
LDA [$0C],Y     ; bytes 2-3: Y offset  -> $07CA
INY : INY
LDA [$0C],Y     ; bytes 4-5: tile + flags -> $07CC
INY : INY
LDA [$0C],Y     ; byte 6: size (masked to $00FF) -> $07CE
INY
STY $07D0       ; save Y for next entry
; ... position calculations, OAM write, loop via DEC $00 ...
```

The loop counter at `$00` (initialized from byte 0 of the frame header)
decrements after each entry until all sprites are processed.

### 4.3 Three Rendering Paths

The parameter in `$14` controls which rendering path the assembly takes:

| $14 Test       | Path            | Code            | Behavior                     |
|----------------|-----------------|-----------------|------------------------------|
| Bit 15 ($8000) | V-flip path     | CODE_80B286     | Y = screenY - spriteY - size |
| Bit 14 ($4000) | H-flip path     | CODE_80B1A7     | X = screenX - spriteX - size |
| Neither        | Normal path     | CODE_80B0DD     | X/Y = screen + sprite offset |

When both bits are set, the V-flip path handles both axes. Each path reads the
same 7-byte sprite entry format but mirrors the coordinate calculations.

The flip paths compute mirrored positions for the sprite's screen coordinates.
For example, the H-flip path at CODE_80B1A7:

```asm
; If size=$FF (16x16): X = screenX - spriteX - 15
; If size=$00 (8x8):   X = screenX - spriteX - 7
LDA $1C              ; screenX
SEC
SBC $07C8            ; subtract sprite X offset
SEC
SBC #$000F           ; subtract 15 (for 16x16) or 7 (for 8x8)
```

---

## 5. Tile Data

### 5.1 Format

Tiles use the SNES 4bpp bitplane format: **32 bytes per 8x8 tile**. Each pixel
has a 4-bit color index (0-15), where index 0 is transparent.

The 32 bytes are organized as 4 interleaved bitplanes:

```
Bytes  0-15: Bitplanes 0 and 1 (interleaved, 2 bytes per row, 8 rows)
Bytes 16-31: Bitplanes 2 and 3 (interleaved, 2 bytes per row, 8 rows)
```

### 5.2 Tile Data Location

When the flag byte has bit 7 set ($80), raw or compressed tile data follows
immediately after the last sprite entry:

```
Tile data offset = frame offset + $16 + (NumSprites * 7)
```

The tile data may be:
- **Raw:** Uncompressed 4bpp bitplane data.
- **Compressed:** Identified by a 2-byte magic number at the start of the data.
  Known compression formats include LZ77 ($FB10), Huffman ($FB46), Canonical
  Huffman ($FB30), and RLE ($FB7A).

### 5.3 VRAM Tile Grid and ROM-to-VRAM Mapping

The SNES OBJ hardware arranges tiles in a **16-wide grid** in VRAM. For a
16x16 sprite with OAM tile number N, the hardware automatically uses four
tiles:

```
Top-left:     VRAM tile N       (VRAM address: base + N*32 bytes)
Top-right:    VRAM tile N+1     (VRAM address: base + (N+1)*32)
Bottom-left:  VRAM tile N+16    (VRAM address: base + (N+16)*32)
Bottom-right: VRAM tile N+17    (VRAM address: base + (N+17)*32)
```

The **+16 offset** for the bottom row is a fixed SNES hardware behavior: the
256 OBJ tiles (4bpp) form a 16×16 conceptual grid (16 tiles wide × 16 tiles
tall = 128×128 pixels).

However, the inline tile data in ROM is **packed linearly** — no gaps. The game
DMA's tiles to VRAM in two passes using the header fields:

```
Header $0C-$0D (TopBytes): size of top section in bytes
Header $0E-$0F (BotBytes): size of bottom section in bytes
topSectionSize = TopBytes / 32
```

The DMA writes `topSectionSize` tiles to VRAM row 0 (tiles 0..N-1), then skips
to VRAM row 1 (tile 16) and writes the bottom section. The VRAM layout ends up:

```
VRAM row 0:  [tile 0] [tile 1] ... [tile topSec-1]  [empty to tile 15]
VRAM row 1:  [tile 16] [tile 17] ... [tile 16+botSec-1]  [empty to tile 31]
```

To convert a VRAM tile index to a ROM linear index:

```
romIndex = floor(vramTile / 16) * topSectionSize + (vramTile % 16)
```

### Worked Example: Frame 91

Frame 91 has 5 sprites with 11 inline tiles (topSectionSize=6, bottom=5):

```
sprite[0]: ( -9, -11) tile=0   16x16   (body upper-left)
sprite[1]: (  7, -11) tile=2   16x16   (body upper-right)
sprite[2]: ( 23,  -3) tile=4   8x8     (stick)
sprite[3]: ( -3, -19) tile=5   8x8     (head-left)
sprite[4]: (  5, -19) tile=20  8x8     (head-right)
```

Total tile need: 4 + 4 + 1 + 1 + 1 = **11 tiles** (matches header exactly).

The DMA params confirm: TopBytes=$00C0 (192 = 6×32), BotBytes=$00A0 (160 = 5×32).

**VRAM layout** (16-wide grid):

```
VRAM row 0 (tiles 0-5):   [S0-TL][S0-TR] [S1-TL][S1-TR] [S2] [S3]
                            ← 6 tiles, then 10 empty slots →
VRAM row 1 (tiles 16-20): [S0-BL][S0-BR] [S1-BL][S1-BR] [S4]
                            ← 5 tiles, then 11 empty slots →
```

**ROM linear layout** (packed, no gaps):

```
ROM index:  0     1     2     3     4   5   6     7     8     9    10
          S0-TL S0-TR S1-TL S1-TR  S2  S3  S0-BL S0-BR S1-BL S1-BR S4
```

**VRAM → ROM conversion** (topSectionSize = 6):

| Sprite | VRAM tile | floor(v/16) | v%16 | ROM index | Tile content |
|--------|-----------|-------------|------|-----------|--------------|
| S0 TL  | 0         | 0           | 0    | 0         | body top-L   |
| S0 TR  | 1         | 0           | 1    | 1         | body top-R   |
| S0 BL  | 16        | 1           | 0    | 6         | body bot-L   |
| S0 BR  | 17        | 1           | 1    | 7         | body bot-R   |
| S1 TL  | 2         | 0           | 2    | 2         | body top-L   |
| S1 TR  | 3         | 0           | 3    | 3         | body top-R   |
| S1 BL  | 18        | 1           | 2    | 8         | body bot-L   |
| S1 BR  | 19        | 1           | 3    | 9         | body bot-R   |
| S2     | 4         | 0           | 4    | 4         | stick        |
| S3     | 5         | 0           | 5    | 5         | head-left    |
| **S4** | **20**    | **1**       | **4**| **10**    | **head-right** |

Sprite 4's VRAM tile 20 maps to ROM tile 10 — the 11th and final inline tile.
All tiles are present in the inline data; none are "VRAM-resident from a
previous frame."

### Note on Offset $0A ("Stride")

Earlier documentation labeled byte $0A as "Stride" and suggested it encoded the
tile row offset for 16x16 sprites. Assembly analysis shows **no game routine
reads byte $0A** from the frame header. The actual tile row mapping is
determined by the SNES hardware's fixed 16-wide OBJ grid, with `topSectionSize`
derived from the header's TopBytes field ($0C-$0D). Byte $0A is part of the
unused $04-$0B region (see Section 3.3).

---

## 6. VRAM Tile Management and OAM Composition

### 6.1 Tile DMA Setup (CODE_80B3E1)

Before the OAM sprite loop, CODE_80B08D calls CODE_80B01E which dispatches to
CODE_80B3E1 for tile data transfer to VRAM. This routine reads from the frame
header:

```
Offset $00-$01 (word): NumSprites + Flag
  - If zero: exit (no frame data)
  - Bit 15 (= flag bit 7): selects compressed vs non-compressed path

Offset $0C-$0D (word): TopBytes — top section size in bytes → $07C8
Offset $0E-$0F (word): BotBytes — bottom section size in bytes → $07CA
Offset $10-$11 (word): DataLength → added to $0C to compute tile data address

Offset $02-$03 (word): NumTiles → VRAM slot size calculation
  Compressed path:  slots = (numTiles + 3) & ~3 / 4  (round up to 4-tile groups)
  Non-compressed:   slots = numTiles (direct)
```

The routine manages VRAM allocation through tables at ```$2F40``` (compressed) and
```$3032``` (non-compressed), finding free slots and marking them as occupied.

### 6.2 Tile Name Base ($16)

CODE_80B01E resolves a **VRAM tile name base** stored in `$16`. This value is
added to each sprite entry's tile+flags word before writing to OAM:

```asm
LDA $07CC            ; tile + flags from sprite entry
CLC
ADC $16              ; add VRAM tile name base
EOR $14              ; apply flip bits from rendering path
STA $0000,X          ; write to OAM buffer
```

This base offset accounts for where the tile data was DMA'd into VRAM. The
TileViewer does not need this because it reads tiles directly from ROM.

### 6.3 OAM Buffer Layout

The assembly writes each sprite to a 4-byte OAM entry at an incrementing buffer
position ($07BC):

```
OAM+0: X position (from $07C8 + screenX)
OAM+1: Y position (from $07CA + screenY)
OAM+2: Tile name + attributes (from $07CC + base + flip)
OAM+3: (high table: size bit + X MSB, written separately)
```

The sprite count limit per frame is tracked at `$07AE`. If this reaches zero
mid-frame, remaining sprites are skipped.

---

## 7. TileViewer Implementation

The TileViewer (`TileViewer/src/sprite-frame.ts`) replicates the above process
for offline rendering:

### 7.1 Pointer Resolution (`parseFrame`)

1. Read the 4-byte table entry at `$10000 + (frameId - 1) * 4`
2. Add SNES base $82:$8000 (replicating the assembly's ADC operations)
3. Convert the resulting SNES address to a ROM file offset via LoROM mapping
4. Read the 22-byte header at that offset
5. Read N sprite entries starting at offset + $16
6. Read tile data starting after the last sprite entry

### 7.2 Frame Rendering (`renderFrame`)

1. Calculate the bounding box from all sprite X/Y offsets and sizes
2. Derive `topSectionSize` from header bytes $0C-$0D: `TopBytes / 32`
3. For each sprite entry:
   - Compute VRAM tile index: `vramTile = firstTile + ty * 16 + tx`
   - Convert to ROM index: `floor(vramTile / 16) * topSectionSize + vramTile % 16`
   - Decode each 8x8 tile from 4bpp bitplane format
   - Apply H-flip and V-flip by mirroring pixel and tile-grid coordinates
   - Composite onto the frame image (color index 0 = transparent)
4. Scale up the final image to the requested display size

### 7.3 Limitations

- **No VRAM state:** Frames without inline tiles (flag bit 7 clear) cannot be
  rendered since the TileViewer has no VRAM state.
- **Palette:** Must be supplied externally; the default is a greyscale ramp.
- **Unknown header bytes:** Offsets ```$04-$0B``` are not read by any identified
  assembly routine and their purpose remains unknown.

---

## 8. Key Assembly Routines Reference

| Routine        | Bank | Address  | Purpose                                      |
|----------------|------|----------|----------------------------------------------|
| CODE_80B08D    | $80  | $80B08D  | Main sprite frame renderer (OAM composition) |
| CODE_80B0DD    | $80  | $80B0DD  | Normal (no-flip) sprite entry loop           |
| CODE_80B1A7    | $80  | $80B1A7  | H-flip sprite entry loop                     |
| CODE_80B286    | $80  | $80B286  | V-flip / HV-flip sprite entry loop           |
| CODE_80B01E    | $80  | $80B01E  | VRAM tile base resolution                    |
| CODE_9BC002    | $9B  | $9BC002  | Hotspot reader (simple)                      |
| CODE_9BC074    | $9B  | $9BC074  | Hotspot reader (with bounding box)           |
| CODE_9EA425    | $9E  | $9EA425  | Animation script interpreter                 |
| DATA8_828000   | $82  | $828000  | Frame pointer table (976 x 4 bytes)          |

---

## 9. ROM Layout Summary

```
$010000 - $010F3F  Frame Pointer Table (976 x 4 bytes)
$010F40            Frame 1 data begins
   ...             Frame data continues across LoROM bank boundaries:
                     Bank $82: $010000 - $017FFF  (ROM)
                     Bank $83: $018000 - $01FFFF  (ROM)
                     Bank $84: $020000 - $027FFF  (ROM)
                     ...
~$075880           Approximate end of frame/tile data

$0E03B7            Team logo table (for reference, separate system)
$0EE0FC - $0EFF6E  Animation script data (Bank 9E)
```
