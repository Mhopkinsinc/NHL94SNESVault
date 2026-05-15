; Set ROM map to LoROM
lorom

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Game Setup Logo Verification
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Standalone setup-logo patch for the added Seattle and Vegas teams.
; This keeps the existing patch.asm untouched and relocates the setup-logo
; blob and palette table into bank $A2. Seattle's setup-logo slot (28) is
; populated by duplicating Anaheim's existing setup-logo assets, and Vegas
; temporarily reuses Seattle's setup-logo palette.
;
; The game still feeds shifted away-side IDs through this path, so Seattle
; and Vegas away slots are normalized back to their real setup-logo slots.

!SeattleTeamId      = $001C
!SeattleAwayTeamId  = $003D
!VegasTeamId        = $001D
!VegasAwayTeamId    = $003E

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Setup Logo Hook Sites
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Repoint setup-logo decompression to the relocated FB30 blob in bank $A2.
org $9D87DB
    LDA.W #(SetupLogo_CompressedBlob>>16)

org $9D87E0
    LDA.W #SetupLogo_CompressedBlob

org $9DC69B
    LDA.W #(SetupLogo_CompressedBlob>>16)

org $9DC6A0
    LDA.W #SetupLogo_CompressedBlob

org $9DD9B7
    LDA.W #(SetupLogo_CompressedBlob>>16)

org $9DD9BC
    LDA.W #SetupLogo_CompressedBlob

; Normalize the away-team setup-logo index before it is cached in $00.
org $9DDDB6
    JSL.L SetupLogo_LoadNormalizedAwayIndex
    NOP #2

; The palette lookup can then use the normalized value already stored in $00.
org $9DDDFF
    LDA.B $00
    NOP #2

org $9DDE06
    LDA.L SetupLogo_PaletteTable+2,X

org $9DDE0C
    LDA.L SetupLogo_PaletteTable,X

; Normalize the home-team setup-logo index before it is cached in $00.
org $9DDE63
    JSL.L SetupLogo_LoadNormalizedHomeIndex
    NOP #2

; The home palette lookup also uses the normalized value in $00.
org $9DDEA9
    LDA.B $00
    NOP #2

org $9DDEB0
    LDA.L SetupLogo_PaletteTable+2,X

org $9DDEB6
    LDA.L SetupLogo_PaletteTable,X

org $9DDFCA
    LDA.L SetupLogo_PaletteTable+2,X

org $9DDFD0
    LDA.L SetupLogo_PaletteTable,X

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Setup Logo Data + Helper Code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

org $A28000
SetupLogo_CompressedBlob:
    incbin "setup_logo_seattle_fb30.bin"

SetupLogo_PaletteTable:
    incbin "setup_logo_palette_table.bin"

; Override Seattle/Vegas palette pointers to custom palette data stored
; immediately after the relocated table in bank $A2.
org SetupLogo_PaletteTable+(!SeattleTeamId*4)
    dw Seattle_SetupLogo_Palette, $00A2

org SetupLogo_PaletteTable+(!VegasTeamId*4)
    dw Vegas_SetupLogo_Palette, $00A2

org SetupLogo_PaletteTable+$0078
Vegas_SetupLogo_Palette:
Seattle_SetupLogo_Palette:
    incbin "Seattle-gamesetup.pal"

SetupLogo_LoadNormalizedAwayIndex:
    LDA.L $7E3454
    JSR.W SetupLogo_NormalizeIndex
    STA.B $00
    ORA.W #$0000
    RTL

SetupLogo_LoadNormalizedHomeIndex:
    LDA.L $7E3452
    JSR.W SetupLogo_NormalizeIndex
    STA.B $00
    ORA.W #$0000
    RTL

SetupLogo_NormalizeIndex:
    CMP.W #!SeattleAwayTeamId
    BEQ SetupLogo_UseSeattleSlot
    CMP.W #!VegasAwayTeamId
    BEQ SetupLogo_UseVegasSlot
    RTS

SetupLogo_UseSeattleSlot:
    LDA.W #!SeattleTeamId
    RTS

SetupLogo_UseVegasSlot:
    LDA.W #!VegasTeamId
    RTS