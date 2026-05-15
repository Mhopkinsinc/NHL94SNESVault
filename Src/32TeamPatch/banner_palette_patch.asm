;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Banner Palette Locations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; CODE_9FBE6D Loads the Banner Text Palette Pointer Table.
; All banner palettes live in bank $9A, so this can be a simple 16-bit pointer table.

org $9DAB37
    CMP.W #$001E                        ;9DAB37| Check if the team index is greater than 30 (Prevents out of bounds access)
org $9DAB55    
    CMP.W #$001E                        ;9DAB55| Check if the team index is greater than 30 (Prevents out of bounds access)
org $9DABE2
    CMP.W #$001E                        ;9DABE2| Check if the team index is greater than 30 (Prevents out of bounds access)
org $9DABF8
    CMP.W #$001E                        ;9DABF8| Check if the team index is greater than 30 (Prevents out of bounds access)

org $9FBE6D
                       ASL A
                       TAX
                       LDA.L Banner_Team_Palette_PTR,X
                       STA.B $0C
                       LDA.W #$009A
                       STA.B $0E
                       NOP #2

org $9D8DA4
                       ASL A
                       TAX
                       LDA.L Banner_Team_Palette_PTR,X
                       STA.B $0C
                       LDA.W #$009A
                       STA.B $0E
                       NOP #2

org $9DAE98
                       ASL A
                       TAX
                       LDA.L Banner_Team_Palette_PTR,X
                       STA.B $0C
                       LDA.W #$009A
                       STA.B $0E
                       NOP #2

org $9C850F
Banner_Team_Palette_PTR:
                       dw Anh_Banner_Palette,Bos_Banner_Palette,Buf_Banner_Palette,Cal_Banner_Palette ; PTR Table For Banner Palette Per Team
                       dw Chi_Banner_Palette,Dal_Banner_Palette,Det_Banner_Palette,Edm_Banner_Palette
                       dw Fla_Banner_Palette,Hfd_Banner_Palette,LA_Banner_Palette,Mtl_Banner_Palette
                       dw NJD_Banner_Palette,NYI_Banner_Palette,NYR_Banner_Palette,Ott_Banner_Palette
                       dw Phi_Banner_Palette,Pit_Banner_Palette,Que_Banner_Palette,SJ_Banner_Palette
                       dw STL_Banner_Palette,TB_Banner_Palette,Tor_Banner_Palette,Van_Banner_Palette
                       dw Wsh_Banner_Palette,Wpg_Banner_Palette,ASE_Banner_Palette,ASW_Banner_Palette
                       dw Sea_Banner_Palette,Vgk_Banner_Palette

org $9AF17C
Anh_Banner_Palette:

org $9AEF5C
Bos_Banner_Palette:

org $9AF19C
Buf_Banner_Palette:

org $9AF57C
Cal_Banner_Palette:

org $9AF53C
Chi_Banner_Palette:

org $9AF4FC
Dal_Banner_Palette:

org $9AF55C
Det_Banner_Palette:

org $9AF4DC
Edm_Banner_Palette:

org $9AF4BC
Fla_Banner_Palette:

org $9AF49C
Hfd_Banner_Palette:

org $9AF45C
LA_Banner_Palette:

org $9AF43C
Mtl_Banner_Palette:

org $9AF41C
NJD_Banner_Palette:

org $9AF3FC
NYI_Banner_Palette:

org $9AF3DC
NYR_Banner_Palette:

org $9AF3BC
Ott_Banner_Palette:

org $9AF39C
Phi_Banner_Palette:

org $9AF37C
Pit_Banner_Palette:

org $9AF35C
Que_Banner_Palette:

org $9AF31C
SJ_Banner_Palette:

org $9AF2DC
STL_Banner_Palette:

org $9AF2BC
TB_Banner_Palette:

org $9AF29C
Tor_Banner_Palette:

org $9AF25C
Van_Banner_Palette:

org $9AF21C
Wsh_Banner_Palette:

org $9AF1FC
Wpg_Banner_Palette:

org $9AF23C
ASE_Banner_Palette:

org $9AF51C
ASW_Banner_Palette:

org $9AF5BB
Sea_Banner_Palette:

org $9AF5BB ; Free Space in Bank $9A for new Banner Palettes (Currently Used for SEA Team Banner Palette)
    db $00,$00,$7B,$6F,$C0,$34,$E0,$BC
    db $20,$C9,$40,$55,$80,$61,$A0,$ED
    db $D6,$DA,$94,$D2,$73,$CE,$31,$46
    db $10,$42,$CE,$39,$AD,$B5,$1A,$83

org $9AF57B
Vgk_Banner_Palette:
    db $00,$00,$7B,$6F,$C0,$34,$E0,$BC
    db $20,$C9,$40,$55,$80,$61,$A0,$ED
    db $D6,$DA,$94,$D2,$73,$CE,$31,$46
    db $10,$42,$CE,$39,$AD,$B5,$1A,$83