# NHL '94 SNES Game Setup Logo System - Technical Reference

This document describes how the game setup screen (team selection / matchup screen)
loads and displays per-team logos, and how the TileViewer's **Game Setup Logo
Browser** replicates that process offline.

---

## 1. Overview

The game setup screen displays two team logos (home/left and away/right) as
composed OAM sprites. Unlike the Team Logo Browser (which uses per-team
compressed tile graphics + tilemaps), the game setup logos are stored inside a
single **compressed blob** at SNES `$81:ABDE`. This blob decompresses into a
self-contained structure: a pointer table followed by multiple sprite frame
structures with inline tile data.

```
ROM $81:ABDE (FB30 compressed)
        |
        v  CODE_80C373 decompresses to WRAM
        |
  WRAM $7F:7800  =  Decompressed Blob
  +--------------------------------------------------+
  | Pointer Table (N x 4 bytes)                      |
  |   entry[0] -> frame for team 0                   |
  |   entry[1] -> frame for team 1                   |
  |   ...                                            |
  |   entry[27] -> frame for team 27                 |
  |   entry[28+] -> special / league logos (if any)  |
  +--------------------------------------------------+
  | Frame 0: [22-byte header][sprite entries][tiles]  |
  | Frame 1: ...                                      |
  | ...                                               |
  +--------------------------------------------------+
```

The pointer table entry count is derived from the first pointer value divided
by 4 (since the first frame begins immediately after the table).

---

## 2. Assembly Flow

### 2.1 `CODE_9DD9AD` - Game Setup Screen Loader

**Location:** `Src/bank_9D.asm` at `$9D:D9AD`

This is the top-level setup routine. It performs several decompression and
VRAM configuration steps:

```
Step 1: Decompress $81:ABDE -> WRAM $7F:7800
        Source: $0C/$0E = $81:ABDE
        Dest:   $10/$12 = $7F:7800
        Call:   JSL CODE_80C373 (master decompression dispatcher)
        Magic:  $FB30 (canonical Huffman)

Step 2: Configure PPU registers
        $2107 = #$00  (BG1 tilemap base)
        $2108 = #$04  (BG2 tilemap base)
        $210B = #$12  (BG1/BG2 tile data: BG1=$2000, BG2=$1000)
        $2101 = #$03  (OBJ tile data base + size)
        $212C = #$13  (main screen: BG1 + BG2 + OBJ enabled)

Step 3: Decompress $96:A103 -> WRAM $7F:0000
        Additional sprite tile graphics.
        Output size >> 5 = tile count -> $A5

Step 4: CODE_9B854B converts tiles and DMAs to VRAM
        Source: [$89/$8B] = $7F:0000 (decompressed tiles)
        Lookup: [$8D/$8F] = $80:D3D7 (palette remap table)
        Count:  $A5 tiles
        Dest:   $2118 (VRAM data port)

Step 5: Additional tile load from $9C:8000
        4 tiles via CODE_9B854B with lookup table $80:D3E7

Step 6: Decompress $9A:C1F3 -> WRAM $7F:0000
        More sprite/overlay data for the setup screen.
```

After these steps, the background layers and base sprite tiles are loaded into
VRAM. Individual team logos are then rendered by `CODE_9DDDB3`.

### 2.2 `CODE_9DDDB3` - Per-Team Logo Renderer

**Location:** `Src/bank_9D.asm` at `$9D:DDB3`

Called after `CODE_9DD9AD` to render each team's logo. It handles two teams:
one from `$7E:3454` (displayed in the "home" position) and one from
`$7E:3452` (displayed in the "away" position).

```
Inputs:
  $7E:3454 = team A index (or $FFFF if not set)
  $7E:3452 = team B index (or $FFFF if not set)
  zpCurntTeamLoopVal = which side to render (0 = home, 2 = away)
```

**Flow for team A** (when `$7E:3454` >= 0):

1. Compute table index: `$7E:3454 * 4 -> X`
2. Read per-team data pointer from `UNREACH_9C8497,X` (address) and
   `UNREACH_9C8499,X` (bank)
3. Call `CODE_9DE0BD` to copy 32 bytes of BG tilemap overlay data from the
   per-team pointer to `$7F:7640`
4. Set frame data base: `$10/$12 = $7F:7800` (the decompressed blob)
5. Call `CODE_80B08D` with:
   - A = `$2400` (VRAM tile name base)
   - X = `$000C` (screen X position)
   - Y = `$000C` (screen Y position)

**Team index encoding at call sites:**

| Call Site | `$7E:3454` | `$7E:3452` | Notes |
|-----------|-----------|-----------|-------|
| `$9D:9D48` | `$1C98,X` (team A) | `#$001D` | Initial load |
| `$9D:A62D` | `$1C9A + $0021` (team B + 33) | `$1C98` (team A) | Swapped sides |
| `$9D:8631` | `$1C9A` (team B) | `$1C98` (team A) | Normal matchup |

The `+$0021` (33) offset applies to the **BG overlay table** at `$9C:8497`
(which has 59 entries with home/away positioning variants) but NOT to the
blob's frame pointer table. Both home and away teams use the same frame data
from blob indices 0-27. The visual difference between home and away is
controlled by screen position (X/Y passed to CODE_80B08D) and the overlay
table entries, not different frame graphics.

### 2.3 `CODE_9DDDFF` - Frame Pointer Resolution

**Location:** `Src/bank_9D.asm` at `$9D:DDFF`

This is the branch within `CODE_9DDDB3` that handles the case where the team
index is valid (>= 0). It reads the per-team overlay data and calls the
sprite frame renderer.

```asm
; Read per-team overlay pointer from ROM table
LDA.L $7E3454            ; team index
ASL A : ASL A : TAX      ; X = team * 4
LDA.L UNREACH_9C8499,X   ; bank byte
STA.B $0E
LDA.L UNREACH_9C8497,X   ; address
STA.B $0C

; Copy 32 bytes of overlay data to WRAM buffer
LDY.W #$00A0             ; dest offset ($A0 * 2 = $140 from $7F:7500)
LDX.W #$0010             ; count (16 words = 32 bytes)
JSL.L CODE_9DE0BD

; Render the team's frame from the decompressed blob
LDA.W #$007F : STA.B $12 ; blob bank = $7F
LDA.W #$7800 : STA.B $10 ; blob base = $7800
LDA.W #$2400             ; VRAM tile name base
LDX.W #$000C             ; screen X
LDY.W #$000C             ; screen Y
JSL.L CODE_80B08D        ; sprite frame renderer
```

### 2.4 `CODE_80B08D` - Sprite Frame Renderer Entry

**Location:** `Src/bank_80.asm` at `$80:B08D`

This is the same sprite frame renderer documented in `sprite_frames_technical.md`,
but here it is called with `$10/$12` pointing to the **decompressed blob** rather
than the ROM frame pointer table.

```asm
CODE_80B08D:
    STA.B $14            ; store A (flip flags / tile name base)
    STX.B $1C            ; store X (screen X)
    STY.B $1E            ; store Y (screen Y)
    PHB
    PEA $7E7E : PLB : PLB  ; data bank = $7E

    LDA.B $00            ; frame index (team index, set by caller)
    STA.W $07C4
    ASL A : ASL A : TAY  ; Y = index * 4

    ; Read 4-byte relative pointer from blob's pointer table
    LDA.B [$10],Y        ; low word of offset
    CLC
    ADC.B $10            ; add blob base ($7800)
    STA.B $0C            ; -> frame address low

    INY : INY
    LDA.B [$10],Y        ; high word of offset
    ADC.B $12            ; add blob bank ($7F) + carry
    STA.B $0E            ; -> frame address high (bank)

    ; $0C/$0E now points to the frame data within the blob
    JSR CODE_80B01E      ; resolve VRAM tile base
    ...                  ; read frame header at [$0C]+0, sprite entries at +$16
```

The key difference from the standard sprite frame flow (where `$10/$12` points
to the frame pointer table at `$82:8000`) is that here `$10/$12` points to the
decompressed blob at `$7F:7800`. The pointer table entries are **relative
offsets** within the blob, not absolute SNES addresses.

### 2.5 `CODE_9DE0BD` - Overlay Data Copy

**Location:** `Src/bank_9D.asm` at `$9D:E0BD`

Copies per-team BG tilemap data from a ROM pointer to the WRAM buffer at
`$7F:7500`. This customizes the background layer for the selected team.

```asm
CODE_9DE0BD:
    STX.B $16            ; loop count (e.g. $10 = 16 words)
    TYA                  ; dest offset parameter
    ASL A                ; * 2 (word addressing)
    TAX                  ; X = dest offset in $7F:7500

    LDY.W #$0000         ; source offset = 0
CODE_9DE0C5:
    LDA.B [$0C],Y        ; read 2 bytes from per-team ROM data
    STA.L $7F7500,X      ; write to WRAM buffer
    INY : INY
    INX : INX
    DEC.B $16
    BNE CODE_9DE0C5
    RTL
```

### 2.6 `CODE_9B854B` - Tile Format Converter + VRAM DMA

**Location:** `Src/bank_9B.asm` at `$9B:854B`

Reads tiles from WRAM in 4bpp bitplane format, applies a palette remapping
lookup table, and writes the result directly to VRAM via `$2118`.

```
Inputs:
  [$89/$8B] = source tile data in WRAM (4bpp bitplane, 32 bytes/tile)
  [$8D/$8F] = palette remap lookup table (16 bytes: index -> remapped index)
  $A5       = number of tiles to process

Processing per tile:
  - Read 32 bytes (4 bitplanes, 8 rows)
  - Extract each pixel's 4-bit index from the bitplanes
  - Look up remapped index via [$8D],Y
  - Re-encode into 4bpp bitplane format
  - Write 32 bytes to $2118 (VRAM data port)
  - Advance source pointer by 32
  - Decrement $A5, loop until zero
```

---

## 3. ROM Data Tables

### 3.1 Per-Team Overlay Pointer Table

**SNES:** `$9C:8497` (`UNREACH_9C8497`)
**File offset:** `$0E0497`
**Entry size:** 4 bytes `[addr:16LE] [bank:16LE]`
**Entry count:** 59 entries (from `$9C:8497` to `$9C:8583`)

Each entry points to 32 bytes of BG tilemap overlay data in ROM (bank `$9A`).
This data is copied to `$7F:7640` by `CODE_9DE0BD` to customize the
background layer tiles for the selected team.

| Index Range | Purpose |
|-------------|---------|
| 0 - 27 | Home/left team overlay positioning (28 teams) |
| 28 - 32 | Special entries (league logos, etc.) |
| 33 - 60 | Away/right team overlay positioning (28 teams) |

The `+33` offset used at call site `$9D:A62D` indexes into THIS table for
away-side BG positioning, but both sides reference the **same** blob frame
(indices 0-27) for the actual logo sprite graphics.

**Note:** Entries 30-57 of this table overlap in ROM address space with the
palette pointer table at `$9C:850F` used by the Team Logo Browser. The same
4-byte values serve as overlay data pointers for this system and as palette
data pointers for the team logo system.

### 3.2 Palette Pointer Table

**SNES:** `$9C:850F` (`UNREACH_9C850F`)
**File offset:** `$0E050F`
**Entry size:** 4 bytes `[addr:16LE] [bank:16LE]`
**Entry count:** 28 (one per team)

Each entry points to 32 bytes of raw SNES 15-bit RGB palette data (16 colors).
This is the same table used by the Team Logo Browser for per-team palettes.

### 3.3 Compressed Setup Blob

**SNES:** `$81:ABDE`
**File offset:** `$ABDE`
**Compression:** FB30 (canonical Huffman)

Decompresses to WRAM at `$7F:7800`. The decompressed blob contains:

1. **Pointer table** at offset 0: `N * 4` bytes, where N = first pointer / 4.
   Each 4-byte entry is a relative offset (little-endian) from the blob's
   base address to the corresponding frame structure.

2. **Frame structures**: standard sprite frame format (same as documented in
   `sprite_frames_technical.md`):
   - 22-byte header (numSprites, flag, numTiles, topBytes, botBytes, etc.)
   - N x 7-byte sprite entries (X/Y offset, tile index, flags, size)
   - Inline tile data in 4bpp bitplane format (if flag bit 7 is set)

---

## 4. TileViewer Implementation

The Game Setup Logo Browser is implemented in `TileViewer/src/game-setup-logos.ts`
with UI integration in `TileViewer/src/main.ts`.

### 4.1 Decompression (`decompressSetupBlob`)

1. Read compressed data from ROM at file offset `$ABDE`
2. Call the FB30 decompressor (via `decompress()`)
3. Return the decompressed blob (cached after first call)

```typescript
const SETUP_COMPRESSED_OFFSET = 0x00ABDE;
// decompress() auto-detects FB30 magic and dispatches
const result = decompress(romData.slice(offset, offset + maxRead));
```

### 4.2 Frame Count (`getFrameCount`)

The number of frame entries is derived from the first pointer in the blob:

```typescript
function getFrameCount(blob: Uint8Array): number {
  const firstPtr = blob[0] | (blob[1] << 8) | (blob[2] << 16) | (blob[3] << 24);
  return Math.floor(firstPtr / 4);
}
```

This works because the first frame's data begins immediately after the pointer
table, so `pointer[0]` equals the total size of the pointer table.

### 4.3 Frame Parsing (`parseSetupLogo`)

For a given team index and side (home/away):

1. Compute blob index: `teamIndex` (0-27, same for both home and away)
2. Read 4-byte pointer from `blob[teamIndex * 4]`
3. Seek to `blob[pointerValue]` — this is the frame data
4. Read 22-byte header (same format as `sprite_frames_technical.md` Section 3.1)
5. Read N sprite entries (7 bytes each, same format as Section 4)
6. If flag bit 7 is set: read inline tile data (4bpp bitplane, 32 bytes/tile)
7. Read per-team palette from ROM palette table at `$0E050F`

### 4.4 Frame Rendering (`renderSetupLogo`)

Replicates the sprite frame composition logic from `sprite-frame.ts`:

1. Calculate bounding box from all sprite X/Y offsets and sizes
2. Derive `topSectionSize` from header bytes `$0C-$0D` (topBytes / 32)
3. For each sprite entry:
   - Compute VRAM tile index using the SNES 16-wide OBJ grid:
     `vramTile = firstTile + ty * 16 + tx`
   - Convert to linear ROM index using top/bottom section mapping:
     `romIndex = floor(vramTile / 16) * topSectionSize + vramTile % 16`
   - Decode each 8x8 tile from 4bpp bitplane format
   - Apply H-flip / V-flip from the flags byte
   - Composite onto the output image (color index 0 = transparent)
4. Scale up to the requested display size

### 4.5 UI Integration (`main.ts`)

The browser mode is activated via the mode dropdown ("Game Setup Logo Browser").
On first team selection, `ensureSetupBlob()` decompresses the blob and caches
it in the `setupBlob` variable. Subsequent team selections reuse the cached blob.

Controls:
- **Team dropdown**: selects team index 0-27
- **Side toggle**: home (blob indices 0-27) or away (blob indices 33-60)
- **Prev/Next buttons**: navigate through teams
- **Scale**: pixel scale factor for rendering
- **Palette input**: override auto-detected palette with SNES address or hex bytes

### 4.6 Limitations

- **VRAM-resident tiles**: Frames without inline tiles (flag bit 7 clear) cannot
  be rendered. These frames reference tiles loaded by the additional decompression
  steps in `CODE_9DD9AD` (from `$96:A103`, `$9A:C1F3`, etc.) which are not yet
  replicated in the TileViewer.
- **Palette accuracy**: The palette table at `$9C:850F` may not exactly match
  the CGRAM state during the game setup screen, since `CODE_9DCCBA` loads
  palette data from a different WRAM location (`$7E:37F4`).
- **BG overlay**: The per-team BG tilemap overlay data (32 bytes from the
  `$9C:8497` table) is not rendered. This data customizes the background layer
  behind the sprite logo.

---

## 5. Key Assembly Routines Reference

| Routine | Bank | Address | File | Purpose |
|---------|------|---------|------|---------|
| CODE_9DD9AD | $9D | $9DD9AD | bank_9D.asm | Game setup screen loader (decompress + VRAM setup) |
| CODE_9DDDB3 | $9D | $9DDDB3 | bank_9D.asm | Per-team logo renderer (dispatches to frame renderer) |
| CODE_9DDDFF | $9D | $9DDDFF | bank_9D.asm | Positive-index branch: reads table, calls CODE_80B08D |
| CODE_9DE0BD | $9D | $9DE0BD | bank_9D.asm | Copy per-team overlay data to WRAM $7F:7500 buffer |
| CODE_80B08D | $80 | $80B08D | bank_80.asm | Sprite frame renderer (OAM composition + tile DMA) |
| CODE_80B01E | $80 | $80B01E | bank_80.asm | VRAM tile base resolution (called by CODE_80B08D) |
| CODE_80B3E1 | $80 | $80B3E1 | bank_80.asm | Tile DMA setup (top/bottom section transfer to VRAM) |
| CODE_80C373 | $80 | $80C373 | bank_80.asm | Master decompression dispatcher |
| CODE_9B854B | $9B | $9B854B | bank_9B.asm | Tile format converter with palette remap + VRAM DMA |
| CODE_9DCCBA | $9D | $9DCCBA | bank_9D.asm | Palette/CGRAM loader from WRAM $7E:37F4 |

---

## 6. Data Flow Summary

```
ROM $81:ABDE                            WRAM $7F:7800
(FB30 compressed)  --- CODE_80C373 --->  [Pointer Table]
                                         [Frame 0: hdr + sprites + tiles]
                                         [Frame 1: ...]
                                         [...]

ROM $9C:8497                            WRAM $7F:7640
(per-team overlay   --- CODE_9DE0BD -->  [32 bytes BG tilemap overlay]
 pointer table)

ROM $9C:850F                            Per-team palette
(palette pointers)  --- readPalette -->  [16 x RGB colors]

                        CODE_80B08D
  WRAM blob  -------->  reads [$7F7800 + teamIndex*4]
  (pointer table)       resolves to frame within blob
                        reads header, sprites, inline tiles
                        DMAs tiles to VRAM
                        writes OAM entries for screen display

                        TileViewer (offline)
  Decompressed blob --> parseSetupLogo(): reads pointer, header, sprites, tiles
                    --> renderSetupLogo(): composes sprites into canvas image
```
