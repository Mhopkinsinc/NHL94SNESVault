# NHL '94 SNES Animation System Documentation

## 1. Animation System Overview

The NHL '94 SNES animation system consists of three distinct layers:

| Layer | Purpose | ROM Location |
|------|--------|-------------|
| Animation Scripts | Sequence of frame IDs + timing | $0EE0FC - $0EFF6E (Bank 9E) |
| Frame Header Table | 4-byte pointers to Frame Data | $010000 - $010F40 (976 × 4 bytes) |
| Frame + Tile Data | Sprite composition + 4bpp tiles | $010F4C - $075880 |

---

## 1.1 ROM Layout Details

```
$010000 - $010F3F : Frame Header Table (976 entries × 4 bytes = 3904 bytes)
Each entry: [Low Word] [High Word] → Relative offset from $010000

$010F40 : First Frame Data begins (Frame 1)
$010F6B : First Frame Tile Data begins
...
$075880 : End of Tile Data (approximate)

$0EE0FC - $0EFF6E : Animation Script Data (relative to code segment $0E0000)
```

---

## 1.2 Key Differences: Genesis vs SNES

| Aspect | Genesis (NHLPA 93) | SNES (NHL 94) |
|--------|------------------|--------------|
| Animation Header Offsets | Relative to header start | Relative to code segment ($0E0000) |
| Puck Frame IDs | 0x18B (395), 0x18F (399) | 0x18D (397), 0x191 (401) |
| Data Alignment | Must be even | Unaligned OK (CPU handles) |
| Tile Format | 4bpp linear | 4bpp planar composite |

---

## 2. RAM Address Map (Per-Player, Indexed by X)

| Address | Name | Purpose |
|--------|------|--------|
| $11A3,X | Script Base | Pointer to animation script start within Bank 9D |
| $11C3,X | Script Offset | Current position within script (advances by 4) |
| $11E3,X | Animation Timer | Counts down; triggers frame advance when negative |
| $0D97,X | Current Sprite ID | Frame/Sprite index (1-976) for rendering |
| $14E3,X | Action State | High-level action (0=None, 1=KO/Pass, 8=Slapshot, etc.) |
| $0ADB | Global Speed | Timer decrement rate (affects all players) |
| $1163,X | Player Speed Factor | Per-player speed modifier |

---

## 3. Core Animation Routine: CODE_9EA425

Location:
- Lines 4305–4408  
- Address: $9EA425

---

## 4. Animation Script Format

### 4.1 Script Entry Structure (4 Bytes)

| Byte Offset | Size | Description |
|------------|------|-------------|
| 0–1 | Word | Sprite/Frame ID (1–976) → stored to $0D97,X |
| 2–3 | Word | Duration/Timer Value → loaded to $11E3,X |

---

### 4.2 Special Opcodes

| Value | Meaning | Action |
|------|--------|--------|
| Negative Duration | End of Script | Reset $11C3,X to 0, clear $14E3,X |
| $FDFE - $FEC2 | Special Actions | Triggers alternate behavior |

---

### 4.3 Evidence from ASM

```asm
LDA.B [$89],Y
STA.B $AD

LDY.B $A5
INY
INY
LDA.B [$89],Y
STA.W $11E3,X
```

---

## 5. Frame Data Structure

### 5.1 Frame Header Table

- Location: $010000  
- Size: 976 × 4 bytes  
- Format: 24-bit pointer

---

### 5.2 Sprite Header Layout (22 Bytes)

| Offset | Size | Name | Description |
|--------|------|------|-------------|
| $00 | 1 | NumSprites | Count |
| $01 | 1 | Flag | $80 |
| $02 | 1 | NumTiles | Total tiles |
| $03 | 1 | Padding | $00 |
| $0A | 1 | Stride | Row stride |
| $10–11 | 2 | DataLength | Frame size |
| $12 | 1 | HotspotX | Signed |
| $13 | 1 | HotspotY | Signed |

---

### 5.3 Sprite Entry Format

| Bytes | Name | Description |
|------|------|-------------|
| 0–1 | X Offset | Signed |
| 2–3 | Y Offset | Signed |
| 4 | First Tile | Tile index |
| 5 | Flags | Usually $08 |
| 6 | Size | $FF = 2×2 |

---

### 5.4 Tile Selection

```
Tile[0] = First Tile
Tile[1] = First Tile + 1
Tile[2] = First Tile + 1 + Stride
Tile[3] = First Tile + 1 + Stride + 1
```

---

## 6. Animation Header Table

### Location
- $EE0FC (Bank 9E)

### Format

```
[Direction 0 Offset] ... [Direction 7 Offset]
```

---

## 7. Key Differences from Previous Implementation

| Aspect | Previous | Correct |
|--------|--------|--------|
| SpriteID | 8-bit | 16-bit |
| Byte Order | Mixed | Little-endian |
| Loop | 0xFC | Negative duration |