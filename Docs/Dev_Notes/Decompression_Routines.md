# NHL 94 SNES — Decompression Routines

## `CODE_80C373` — Master Decompression Dispatcher

This is the **top-level entry point** for decompressing data into SNES WRAM. It reads a compressed data stream, identifies which compression algorithm was used via a 2-byte **magic number** header, and dispatches to the correct decompressor.

### Prologue (Setup)

```asm
PHP / PHB / REP #$30       ; Save processor state, set 16-bit A and X/Y
JSL CODE_80859A             ; Wait for VBlank sync (busy-loop until $3A == $3C)
```

Then it configures the **WRAM DMA destination address** using SNES registers:

| Register | Purpose |
|----------|---------|
| `$2181` | WRAM address low byte (from direct page `$10`) |
| `$2182` | WRAM address high byte (from direct page `$11`) |

So `$10`–`$11` hold the **destination WRAM address** where decompressed data will be written.

Next it sets up the **data bank register** from `$0D` (source bank) and loads `Y` from `$0C` (source pointer offset). It then reads a 16-bit value at `[source+0]` — this is the **compression type magic number**.

### Calling Convention

Before calling `CODE_80C373` via `JSL`, the caller sets up direct page registers:

| Register | Purpose |
|----------|---------|
| `$0C` | Source address (low 16 bits) |
| `$0E` | Source address (bank byte, stored in bits 0–7; upper byte often mirrors or is part of the 24-bit pointer) |
| `$10` | Destination WRAM address (low 16 bits) |
| `$12` | Destination WRAM bank |

### The Dispatch Switch

The magic number is compared in a chain of CMP/BNE:

| # | Magic | Subroutine | Compression Type |
|---|-------|------------|------------------|
| **1** | `$FB10` | `CODE_80B8DB` | LZ-style with sliding window (short/medium/long match variants) |
| **2** | `$FB46` | `CODE_80BA63` | Huffman tree decoding |
| **3** | `$FB30` | `LoadGameSetupScreen` (`CODE_80BBB3`) | Huffman + canonical coding (used for logos, complex graphics) |
| **4** | `$FB7A` | `CODE_80C2F3` | RLE (Run-Length Encoding) — both 1-byte and 2-byte variants |
| **5** | (none match) | `UNREACH_80C3BE` | Fallback / uncompressed (`PLX / LDX #1 / PLB / PLP / RTL`) |

### Epilogue (`CODE_80C3C5`)

All subroutines `BRA` here after finishing:

```asm
REP #$30    ; Restore 16-bit mode
PLX         ; Pull the stacked byte (from the XBA/PHA earlier — the 4th header byte)
PLB         ; Restore data bank
PLP         ; Restore processor flags
RTL         ; Return long
```

---

## Subroutine Details

### 1. `CODE_80B8DB` — LZ77 / Sliding Window Decompressor (magic `$FB10`)

This is the most complex decompressor. It writes bytes into WRAM via `$2180` (the WRAM data port). Key structure:

- **Direct page vars**: `$6F` = write position tracker, `$6D` = auxiliary, `$71`/`$73`/`$75`/`$77` = working registers
- **Main loop** at `CODE_80B8F0`: reads a control byte from the source stream into `$71`
  - **Bit 7 clear** → literal + match sequence:
    - Bits 0–1 = number of literal bytes to copy verbatim
    - Bits 2–4 = match length (+ 3 base)
    - Bits 5–6 + next byte = match distance (back-reference into already-decompressed data at `$6B`)
    - Copies match bytes from `[$6B],Y` → `$2180`
  - **Bit 7 set, bit 6 clear** → extended match (3 control bytes):
    - Longer literal count, larger distance field (up to ~16KB back), match length up to 67
  - **Bit 7 set, bit 6 set, bit 5 clear** → far match with even longer distances:
    - Uses 2-byte distance + 1-byte extra length
  - **Bit 7+6+5 all set** → bulk literal copy:
    - Length encoded in lower bits, copies raw bytes from source to WRAM
  - **Termination** at `CODE_80BA46`: when length field >= `$71`, flushes remaining literals and returns

This is a classic **LZSS/LZ77 variant** — literals interspersed with (distance, length) back-references.

### 2. `CODE_80BA63` — Huffman Tree Decoder (magic `$FB46`)

- Skips 2 header bytes, then **clears tables** at `$0100`–`$01FF` (frequency/node table), `$0500`/`$0600` (left/right child pointers)
- Reads a **symbol count** and builds a Huffman tree:
  - For each pair, stores left child in `$0500,X` and right child in `$0600,X`
  - Marks nodes in `$0100,X` as internal (non-zero)
- **Decoding loop** (`CODE_80BAE3`+): walks the tree by checking `$0100,X`:
  - If zero → leaf node, output byte via `$2180`
  - If positive → navigate to left child `$0500,X`, right child `$0600,X`
  - If negative (bit 7 set) → deeper tree traversal with recursive-like `CODE_80BB97`
- `CODE_80BB97` is a **recursive tree walker** — it pushes X, follows left child, outputs, then follows right child

### 3. `LoadGameSetupScreen` / `CODE_80BBB3` — Canonical Huffman Decoder (magic `$FB30`)

The comment in the source says "Logo Decompression function." This is the most sophisticated algorithm:

- Reads a **symbol count** (`$73`), then builds a full **canonical Huffman code table**:
  - `$0700,X` = code lengths (number of symbols per bit-length)
  - `$0720,X` = code start values
  - `$0740,X` = shifted comparison thresholds
  - Uses `CODE_80C1B0` to read variable-width bit fields from the source stream
- Builds a **symbol assignment table** at `$0500`/`$0600` mapping codes to symbols
- Uses a **fast dispatch** via jump table at `$BCF9` — one entry per code length (up to 9+ bits)
- Each dispatch entry shifts the bitstream by the appropriate amount, looks up the symbol, and writes it to WRAM
- The `$0760` indirect jump (`JMP ($0760)`) provides a computed-goto back into the bit-width-specific handler

This is essentially a **canonical Huffman decoder** with computed jump tables for speed — very efficient for SNES hardware.

#### Helper: `CODE_80C1B0` — Variable-Width Bit Reader

Used by the canonical Huffman decoder to read N bits from the bitstream:

- `$6C` = current bit buffer (16-bit shift register)
- `Y` = number of bits remaining in the buffer (counts down from 8)
- `$0C` = source byte pointer (advances as bytes are consumed)
- `$6F` = output accumulator for multi-bit reads

Reads bits by shifting `$6C` left (ASL), rotating carry into `$6F` (ROL). When the buffer is exhausted (`Y` = 0), loads the next byte from `($0C)` and resets `Y` to 8.

#### Helper: `CODE_80C232` — Another Bit Reader Variant

Similar to `CODE_80C1B0` but uses X as the bit count (decrements by 2 instead of 1) and handles unary-coded lengths for the Huffman symbol output phase.

### 4. `CODE_80C2F3` — RLE Decoder (magic `$FB7A`)

The simplest decompressor. Two sub-modes based on header check:

- **If header word = `$0101`** → **byte-granularity RLE** (`CODE_80C313`):
  - Read control byte: if **negative** (bit 7 set), EOR #$FF to get run length, then copy that many literal bytes from the stream
  - If **positive**, it's a repeat count — read value byte, write it N times to `$2180`
  - If **zero**, done (RTS)

- **If header word ≠ `$0101`** → **word-granularity RLE** (`CODE_80C32F`):
  - Same structure but reads/writes **two bytes at a time** (using XBA to alternate high/low)
  - Negative control = literal word run, positive = repeated word pair

### 5. `UNREACH_80C3BE` — Fallback / No Compression

If none of the magic numbers match, execution falls into raw bytes at `$C3BE` which decode as:

```asm
PLX / LDX #$01 / PLB / PLP / RTL
```

This appears to be a simple fallback, or possibly truly unreachable dead code (the disassembler flagged it as `UNREACH`).

---

## `CODE_80859A` — VBlank Sync Wait

```asm
CODE_80859A:
    PHA                 ; Save accumulator
CODE_80859B:
    LDA.B $3A           ; Load current VBlank counter
    CMP.B $3C           ; Compare to target VBlank counter
    BNE CODE_80859B     ; Busy-wait loop until they match
    PLA                 ; Restore accumulator
    RTL                 ; Return long
```

This is a simple **busy-wait synchronization** routine. It spins until the VBlank counter at direct page `$3A` matches the value at `$3C`. Called at the top of `CODE_80C373` to ensure decompression begins on a clean frame boundary, preventing visual corruption during VRAM/WRAM DMA operations.

---

## Data Flow Summary

```
Compressed ROM data              CODE_80C373 (dispatcher)
[$0C-$0E = src ptr/bank]  --->   Read magic number from stream header
[$10-$12 = dest WRAM addr] -->   Set $2181/$2182 WRAM write port
                                      |
                    +--------+--------+--------+--------+
                    |        |        |        |        |
                 $FB10    $FB46    $FB30    $FB7A    (other)
                  LZ77   Huffman  Canonical   RLE    fallback
                         Tree     Huffman
                    |        |        |        |        |
                    +--------+--------+--------+--------+
                                      |
                               All write to $2180
                              (SNES WRAM data port)
                                      |
                               BRA CODE_80C3C5
                              (restore & RTL)
```

---

## Example Call Site: `$9D87D7`

This call decompresses what appears to be tile graphics (likely a team/league logo) using the canonical Huffman decoder (`$FB30`):

```asm
CODE_9D87D7:
    JSL CODE_9F96F7             ; Pre-setup (likely screen/register init)

    ; --- Set source pointer: $81:ABDE ---
    LDA #$0081
    STA $0E                     ; Source bank = $81
    LDA #$ABDE
    STA $0C                     ; Source offset = $ABDE

    ; --- Set destination: $7F:7800 ---
    LDA #$007F
    STA $12                     ; Dest bank = $7F (WRAM upper)
    LDA #$7800
    STA $10                     ; Dest address = $7800

    JSL CODE_80C373             ; >>> DECOMPRESS <<<
```

**ROM data at `$81:ABDE`** (file offset `$0xABDE`):

```
30 FB 00 7C 00 B2 96 5C 44 80 88 7A 12 42 0B A0 ...
```

- Bytes 0–1: `$FB30` (magic — canonical Huffman)
- Byte 2: `$00`
- Bytes 3–4: `$7C, $00` → symbol count = `$7C` (124 unique symbols)
- Byte 5+: compressed bitstream

The decompressed data is written to WRAM at `$7F:7800`. After decompression, the calling code sets up SNES PPU registers (`$2107`, `$2108`, `$210B`, `$2101`, `$212C`) to display the graphics as background tile data.
