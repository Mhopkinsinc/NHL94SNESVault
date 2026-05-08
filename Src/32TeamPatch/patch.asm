; Master include root for standalone 32-team patch modules.
lorom

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Foundational Data Relocation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 ;incsrc "move_team_data_patch.asm"
 ;incsrc "banner_text_patch.asm"
 ;incsrc "banner_palette_patch.asm"
 ;incsrc "team_count_patch.asm"

 ; Set ROM map to LoROM
;lorom

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Banner Text Changes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Change old pointer values to new pointer values for the team names in the banner
org $9c9452
LDA.W Banner_Team_Text_PTR,Y

org $9D8F52
LDA.L Banner_Team_Text_PTR,X

org $9DAF2D
LDA.L Banner_Team_Text_PTR,X

; Writes the provided byte block to SNES address $9CF945 Free Space in Existing Bannk 9C
org $9CF945
Banner_Team_Text_PTR:
                       dw Anh_Banner_Text,Bos_Banner_Text,Buf_Banner_Text,Cal_Banner_Text   ; PTR Table For Banner Text Per Team
                       dw Chi_Banner_Text,Dal_Banner_Text,Det_Banner_Text,Edm_Banner_Text   
                       dw Fla_Banner_Text,Hfd_Banner_Text,LA_Banner_Text,Mtl_Banner_Text    
                       dw NJD_Banner_Text,NYI_Banner_Text,NYR_Banner_Text,Ott_Banner_Text   
                       dw Phi_Banner_Text,Pit_Banner_Text,Que_Banner_Text,SJ_Banner_Text    
                       dw STL_Banner_Text,TB_Banner_Text,Tor_Banner_Text,Van_Banner_Text    
                       dw Wsh_Banner_Text,Wpg_Banner_Text,ASE_Banner_Text,ASW_Banner_Text   
                       dw Sea_Banner_Text                                                   
Anh_Banner_Text:       db "Anaheim"                         ; Banner Text ANH
                       db $00                               
Bos_Banner_Text:       db "Boston"                          ; Banner Text BOS
                       db $00                               
Buf_Banner_Text:       db "Buffalo"                         ; Banner Text BUF
                       db $00                               
Cal_Banner_Text:       db "Calgary"                         ; Banner Text CAL
                       db $00                               
Chi_Banner_Text:       db "Chicago"                         ; Banner Text CHI
                       db $00                               
Dal_Banner_Text:       db "Dallas"                          ; Banner Text DAL
                       db $00                               
Det_Banner_Text:       db "Detroit"                         ; Banner Text DET
                       db $00                               
Edm_Banner_Text:       db "Edmonton"                        ; Banner Text EDM
                       db $00                               
Fla_Banner_Text:       db "Florida"                         ; Banner Text FLA
                       db $00                               
Hfd_Banner_Text:       db "Hartford"                        ; Banner Text HFD
                       db $00                               
LA_Banner_Text:        db "Los Angeles"                     ; Banner Text LA
                       db $00                               
Mtl_Banner_Text:       db "Montreal"                        ; Banner Text MTL
                       db $00                               
NJD_Banner_Text:       db "New Jersey"                      ; Banner Text NJD
                       db $00                               
NYI_Banner_Text:       db "New York"                        ; Banner Text NYI
                       db $00                               
NYR_Banner_Text:       db "New York"                        ; Banner Text NYR
                       db $00                               
Ott_Banner_Text:       db "Ottawa"                          ; Banner Text OTT
                       db $00                               
Phi_Banner_Text:       db "Philadelphia"                    ; Banner Text PHI
                       db $00                               
Pit_Banner_Text:       db "Pittsburgh"                      ; Banner Text PIT
                       db $00                               
Que_Banner_Text:       db "Quebec"                          ; Banner Text QUE
                       db $00                               
SJ_Banner_Text:        db "San Jose"                        ; Banner Text SJ
                       db $00                               
STL_Banner_Text:       db "St. Louis"                       ; Banner Text STL
                       db $00                               
TB_Banner_Text:        db "Tampa Bay"                       ; Banner Text TB
                       db $00                               
Tor_Banner_Text:       db "Toronto"                         ; Banner Text TOR
                       db $00                               
Van_Banner_Text:       db "Vancouver"                       ; Banner Text VAN
                       db $00                               
Wsh_Banner_Text:       db "Washington"                      ; Banner Text WSH
                       db $00                               
Wpg_Banner_Text:       db "Winnipeg"                        ; Banner Text WPG
                       db $00                               
ASE_Banner_Text:       db "All Stars E."                    ; Banner Text ASE
                       db $00                               
ASW_Banner_Text:       db "All Stars W."                    ; Banner Text ASW
                       db $00                               
Sea_Banner_Text:       db "Seattle"                         ; Banner Text SEA
                       db $00                               

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Center Ice Logo Loaders
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Center-ice logo data cannot use the exact banner/portrait pattern because
; the logo graphics and tilemap banks vary by team. Compact the 8-byte records
; into 16-bit address tables plus 8-bit bank tables instead.
; Gameplay paths use JSL helpers. The startup fly-by path uses JML trampolines
; so the original PHX/PLX stack behavior is preserved exactly.

Center_Ice_Gameplay_LoadGfxPtr_FromCurrentTeam:
                       LDA.W $1C98
                       ASL A
                       TAX
                       LDA.L Center_Ice_LogoGfxAddrTable,X
                       STA.B $0C
                       TXA
                       LSR A
                       TAX
                       SEP #$20
                       LDA.L Center_Ice_LogoGfxBankTable,X
                       REP #$20
                       AND.W #$00FF
                       STA.B $0E
                       RTL

Center_Ice_Gameplay_LoadTilemapPtr_FromCurrentTeam:
                       LDA.W $1C98
                       ASL A
                       TAX
                       LDA.L Center_Ice_LogoTilemapAddrTable,X
                       STA.B $0C
                       TXA
                       LSR A
                       TAX
                       SEP #$20
                       LDA.L Center_Ice_LogoTilemapBankTable,X
                       REP #$20
                       AND.W #$00FF
                       STA.B $0E
                       RTL

Center_Ice_Gameplay_LoadTilemapPtr_FromTeamInA:
                       ASL A
                       ASL A
                       ASL A
                       TAX
                       PHX
                       TXA
                       LSR A
                       LSR A
                       TAX
                       LDA.L Center_Ice_LogoTilemapAddrTable,X
                       STA.B $0C
                       TXA
                       LSR A
                       TAX
                       SEP #$20
                       LDA.L Center_Ice_LogoTilemapBankTable,X
                       REP #$20
                       AND.W #$00FF
                       STA.B $0E
                       TXA
                       ASL A
                       ASL A
                       ASL A
                       TAX
                       RTL

Center_Ice_Gameplay_LoadGfxPtr_FromTeamX8:
                       TXA
                       LSR A
                       LSR A
                       TAX
                       LDA.L Center_Ice_LogoGfxAddrTable,X
                       STA.B $0C
                       TXA
                       LSR A
                       TAX
                       SEP #$20
                       LDA.L Center_Ice_LogoGfxBankTable,X
                       REP #$20
                       AND.W #$00FF
                       STA.B $0E
                       TXA
                       ASL A
                       ASL A
                       ASL A
                       TAX
                       RTL

Center_Ice_Intro_LoadTilemapPtr_Trampoline:
                       ASL A
                       ASL A
                       ASL A
                       TAX
                       PHX
                       TXA
                       LSR A
                       LSR A
                       TAX
                       LDA.L Center_Ice_LogoTilemapAddrTable,X
                       STA.B $0C
                       TXA
                       LSR A
                       TAX
                       SEP #$20
                       LDA.L Center_Ice_LogoTilemapBankTable,X
                       REP #$20
                       AND.W #$00FF
                       STA.B $0E
                       JML.L $9DBB41

Center_Ice_Intro_LoadGfxPtr_Trampoline:
                       TXA
                       LSR A
                       LSR A
                       TAX
                       LDA.L Center_Ice_LogoGfxAddrTable,X
                       STA.B $0C
                       TXA
                       LSR A
                       TAX
                       SEP #$20
                       LDA.L Center_Ice_LogoGfxBankTable,X
                       REP #$20
                       AND.W #$00FF
                       STA.B $0E
                       TXA
                       ASL A
                       ASL A
                       ASL A
                       TAX
                       JML.L $9DBB7B

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
                       dw Sea_Banner_Palette

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
    ;
Bos_Portrait_Palette:    
    dw $7C1F,$4EFE,$C6BD,$BE7B,$3239,$29F8,$9DB6,$9575
    dw $0D33,$0911,$04EF,$808A,$8027,$037C,$0000,$77BD

;;;;;;;;;;;;;;;;
; Portraits
;;;;;;;;;;;;;;;;
org $9DC9D0
LDX.W #$0006                         ;Reduced player portraits per team from 26 to 10 to free up space for new portraits and other features

org $9DCC58
LDX.W #$0006                         ;Reduced player portraits per team from 26 to 10 to free up space for new portraits and other features

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Player Portrait Palette Pointers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Convert both portrait palette pointer lookups to a 16-bit table and hardcode
; bank $9A, matching the banner palette pointer approach.

org $9D9D41
    LDA.W #$001E                        ;Portrait flow team count = 30

org $9DAAD4
    LDA.W #$001E                        ;Portrait flow team count = 30

org $9DCA87
    LDA.W $1C98,Y
    ASL A
    TAX
    LDA.L Player_Portrait_Palette_PTR,X
    STA.B $0C
    LDA.W #$009A
    STA.B $0E
    NOP #12

org $9DCC06
    LDA.W $1C98,Y
    ASL A
    TAX
    LDA.L Player_Portrait_Palette_PTR,X
    STA.B $0C
    LDA.W #$009A
    STA.B $0E
    NOP #12

; Overwrite the original 4-byte portrait palette pointer table at $9DD8B3 with
; a compact 16-bit table. This frees the remaining bytes in the original region to add more team pointers
; The new table points to the first palette for each team, and the palettes are stored in bank $9A. Had to move Bostons palette data to 9A
org $9DD8B3
Player_Portrait_Palette_PTR:
    dw $F47C,Bos_Portrait_Palette,$EA5C,$EA7C,$EA9C,$EABC,$EADC,$EAFC
    dw $EB1C,$EB5C,$EB7C,$EB9C,$EBBC,$EBDC,$EBFC,$EC1C
    dw $EC3C,$EC5C,$EC7C,$EC9C,$ECBC,$ECDC,$ECFC,$ED1C
    dw $ED3C,$ED5C,$EB3C,$EB3C,$F47C

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Center Ice Logo Pointer Tables
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Compact the original 8-byte records at $9C83B7 into split tables:
;   logo gfx address   : 16-bit per team
;   logo gfx bank      : 8-bit per team
;   logo tilemap addr  : 16-bit per team
;   logo tilemap bank  : 8-bit per team
; This keeps the table in its original footprint while leaving room to append
; more teams later. The last entry is a temporary test slot that reuses team 0.

org $9C83B7
Center_Ice_LogoGfxAddrTable:
                       dw $B47B,$BFA1,$CA96,$FF3D,$AC2E,$FF38,$C880,$C315
                       dw $C557,$FEA9,$D79C,$DA4A,$BBF5,$FECB,$CBA0,$FEC0
                       dw $C436,$FF47,$D5AF,$C667,$C774,$FE85,$D972,$FE78
                       dw $DD33,$BE73,$D4B6,$D4B6,$8000

Center_Ice_LogoGfxBankTable:
                       db $9A,$9A,$9A,$8D,$9A,$84,$9A,$9A
                       db $9A,$82,$9A,$9A,$9A,$98,$9A,$99
                       db $9A,$83,$9A,$9A,$9A,$97,$9A,$86
                       db $9A,$9A,$9A,$9A,$A1

Center_Ice_LogoTilemapAddrTable:
                       dw $E53C,$E7F8,$E76C,$E6E0,$E4F6,$E398,$E1F4,$E726
                       dw $E654,$E4B0,$E2C6,$E83E,$E69A,$E582,$E5C8,$E60E
                       dw $E7B2,$E168,$E1AE,$E23A,$E280,$E30C,$E352,$E3DE
                       dw $E424,$E46A,$FFC6,$FFC6,$9200

Center_Ice_LogoTilemapBankTable:
                       db $9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A
                       db $9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A
                       db $9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A
                       db $9A,$9A,$88,$88,$A1

; Hook gameplay and intro logo loaders to the compact split tables.

org $9BC17C
                       JSL.L Center_Ice_Gameplay_LoadGfxPtr_FromCurrentTeam
                       NOP #15

org $9BC1ED
                       JSL.L Center_Ice_Gameplay_LoadTilemapPtr_FromCurrentTeam
                       NOP #15

org $9DBB30
                       JML.L Center_Ice_Intro_LoadTilemapPtr_Trampoline
                       NOP #13

org $9DBB6F
                       JML.L Center_Ice_Intro_LoadGfxPtr_Trampoline
                       NOP #8

org $9FE82B
                       JSL.L Center_Ice_Gameplay_LoadGfxPtr_FromCurrentTeam
                       NOP #15

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Matchup Team Palette Relocation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Keep the loader patches and relocated tables together in one bottom section.
; Each team entry is 32 bytes, indexed by team_id << 5.

!MatchupPaletteBank = $00A0
!MatchupHomePaletteBase = $8000
!MatchupAwayPaletteBase = $8800

org $9FB925
                       ADC.W #!MatchupAwayPaletteBase

org $9FB92A
                       LDA.W #!MatchupPaletteBank

org $9FB95A
                       ADC.W #!MatchupHomePaletteBase

org $9FB95F
                       LDA.W #!MatchupPaletteBank

org $A08000
Matchup_Home_Team_Palettes:
                       db $F2,$7F,$7B,$6F,$00,$00,$4A,$29
                       db $84,$10,$A0,$31,$4A,$29,$58,$42
                       db $52,$46,$A0,$31,$7B,$6F,$00,$00
                       db $4A,$29,$4A,$29,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$4A,$29
                       db $00,$00,$1B,$03,$4A,$29,$58,$42
                       db $BD,$77,$1B,$03,$4A,$29,$84,$10
                       db $4A,$29,$4A,$29,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$84,$7C
                       db $00,$34,$84,$7C,$84,$7C,$58,$42
                       db $5D,$03,$5D,$03,$84,$7C,$00,$3C
                       db $84,$7C,$84,$7C,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$3B,$01
                       db $10,$00,$3B,$01,$3B,$01,$58,$42
                       db $FC,$02,$FC,$02,$BD,$77,$93,$00
                       db $3B,$01,$3B,$01,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$1A,$00
                       db $00,$00,$1A,$00,$1A,$00,$58,$42
                       db $BD,$77,$BD,$77,$00,$00,$0A,$00
                       db $1A,$00,$1A,$00,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$4A,$29
                       db $00,$00,$4A,$29,$4A,$29,$58,$42
                       db $40,$02,$40,$02,$BD,$77,$84,$10
                       db $4A,$29,$4A,$29,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$1B,$00
                       db $0C,$00,$1B,$00,$1B,$00,$58,$42
                       db $BD,$77,$1B,$00,$7B,$6F,$0F,$00
                       db $1B,$00,$1B,$00,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$00,$75
                       db $00,$28,$00,$75,$5D,$01,$58,$42
                       db $BD,$77,$5D,$01,$00,$75,$00,$30
                       db $00,$75,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BA,$00
                       db $00,$1C,$BA,$00,$00,$38,$58,$42
                       db $7B,$6F,$B8,$02,$00,$38,$6E,$00
                       db $BA,$00,$B8,$02,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$49,$60
                       db $00,$2C,$49,$60,$49,$60,$58,$42
                       db $9C,$73,$73,$4E,$A0,$02,$00,$24
                       db $49,$60,$49,$60,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$4A,$29
                       db $00,$00,$4A,$29,$4A,$29,$58,$42
                       db $73,$4E,$73,$4E,$BD,$77,$84,$10
                       db $4A,$29,$4A,$29,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$1C,$00
                       db $00,$24,$1C,$00,$1C,$00,$58,$42
                       db $BD,$77,$BD,$77,$00,$6C,$0D,$00
                       db $1C,$00,$1C,$00,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$1B,$00
                       db $00,$00,$1B,$00,$84,$10,$58,$42
                       db $BD,$77,$BD,$77,$84,$10,$0C,$00
                       db $1B,$00,$9C,$73,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$80,$70
                       db $00,$24,$80,$70,$80,$70,$58,$42
                       db $BD,$77,$D7,$00,$3B,$01,$00,$28
                       db $80,$70,$80,$70,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$00,$74
                       db $0E,$00,$00,$74,$00,$74,$58,$42
                       db $BD,$77,$BD,$77,$18,$00,$00,$28
                       db $00,$74,$00,$74,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$4A,$29
                       db $00,$00,$4A,$29,$4A,$29,$58,$42
                       db $A5,$14,$16,$00,$1C,$00,$84,$10
                       db $4A,$29,$4A,$29,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$78,$01
                       db $00,$00,$78,$01,$BD,$77,$58,$42
                       db $4A,$29,$A5,$14,$BD,$77,$CE,$00
                       db $78,$01,$A5,$14,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$4A,$29
                       db $00,$00,$4A,$29,$4A,$29,$58,$42
                       db $9C,$73,$BD,$77,$FF,$1E,$84,$10
                       db $4A,$29,$4A,$29,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$A3,$59
                       db $60,$24,$A3,$59,$A3,$59,$58,$42
                       db $A3,$59,$BD,$77,$DD,$7B,$00,$31
                       db $A3,$59,$A3,$59,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$44,$56
                       db $00,$00,$44,$56,$44,$56,$58,$42
                       db $BD,$77,$A5,$14,$52,$4A,$20,$31
                       db $44,$56,$44,$56,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$00,$70
                       db $00,$24,$00,$70,$00,$70,$58,$42
                       db $9C,$73,$BD,$77,$BD,$02,$60,$24
                       db $00,$70,$00,$70,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$4A,$29
                       db $00,$00,$4A,$29,$BD,$77,$58,$42
                       db $9C,$73,$00,$6C,$BD,$77,$84,$10
                       db $4A,$29,$4A,$29,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$00,$70
                       db $00,$24,$00,$70,$00,$70,$58,$42
                       db $BD,$77,$BD,$77,$00,$70,$00,$28
                       db $00,$70,$00,$70,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$4A,$29
                       db $00,$00,$4A,$29,$4A,$29,$58,$42
                       db $1A,$00,$A5,$14,$3C,$03,$84,$10
                       db $4A,$29,$4A,$29,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$1A,$00
                       db $00,$20,$1A,$00,$BD,$77,$58,$42
                       db $00,$5C,$1A,$00,$BD,$77,$0C,$00
                       db $1A,$00,$1A,$00,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$09,$74
                       db $0D,$00,$09,$74,$09,$74,$58,$42
                       db $BD,$77,$09,$74,$19,$00,$00,$28
                       db $09,$74,$09,$74,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$4A,$29
                       db $00,$00,$4A,$29,$BD,$77,$58,$42
                       db $1B,$01,$1B,$01,$BD,$77,$84,$10
                       db $4A,$29,$1B,$01,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$4A,$29
                       db $00,$00,$4A,$29,$BD,$77,$58,$42
                       db $1B,$01,$1B,$01,$BD,$77,$84,$10
                       db $4A,$29,$1B,$01,$D3,$15,$49,$5A
                       ;
                       db $F2,$7F,$7B,$6F,$00,$00,$4A,$29 ;Team 29 Seattle
                       db $84,$10,$A0,$31,$4A,$29,$58,$42
                       db $52,$46,$A0,$31,$7B,$6F,$00,$00
                       db $4A,$29,$4A,$29,$D3,$15,$49,$5A

org $A08800
Matchup_Away_Team_Palettes:
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$00,$80,$29,$BD,$77,$58,$42
                       db $00,$00,$80,$29,$7B,$6F,$B5,$56
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$39,$67,$00,$00,$BD,$77
                       db $00,$00,$BD,$77,$BD,$77,$58,$42
                       db $99,$02,$99,$02,$08,$21,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$2C,$BD,$77,$80,$60,$58,$42
                       db $80,$60,$80,$60,$1B,$03,$94,$52
                       db $BD,$77,$1F,$03,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $10,$00,$BD,$77,$39,$01,$58,$42
                       db $DA,$02,$DA,$02,$39,$01,$94,$52
                       db $BD,$77,$39,$01,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$00,$BD,$77,$BD,$77,$58,$42
                       db $00,$00,$1B,$00,$BD,$77,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$00,$BD,$77,$BD,$77,$58,$42
                       db $00,$02,$E0,$01,$84,$10,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$1B,$00
                       db $10,$00,$BD,$77,$BD,$77,$58,$42
                       db $1B,$00,$BD,$77,$1B,$00,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$30,$BD,$77,$00,$51,$58,$42
                       db $00,$51,$39,$01,$BD,$77,$94,$52
                       db $BD,$77,$39,$01,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $60,$30,$BD,$77,$B9,$00,$58,$42
                       db $54,$02,$54,$02,$B9,$00,$B5,$56
                       db $BD,$77,$54,$02,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$24,$BD,$77,$BD,$77,$58,$42
                       db $05,$50,$A4,$02,$52,$4A,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$00,$BD,$77,$BD,$77,$58,$42
                       db $EF,$3D,$52,$4A,$08,$21,$B5,$56
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$30,$BD,$77,$1A,$00,$58,$42
                       db $00,$40,$BD,$77,$1A,$00,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$00,$BD,$77,$1C,$00,$58,$42
                       db $63,$0C,$63,$0C,$1C,$00,$94,$52
                       db $BD,$77,$63,$0C,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$2C,$BD,$77,$BD,$77,$58,$42
                       db $00,$44,$37,$01,$BD,$77,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $0D,$00,$BD,$77,$00,$50,$58,$42
                       db $00,$50,$00,$50,$18,$00,$94,$52
                       db $BD,$77,$18,$00,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$00,$BD,$77,$BD,$77,$58,$42
                       db $17,$00,$17,$00,$A5,$14,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$00,$BD,$77,$7B,$01,$58,$42
                       db $7B,$01,$7B,$01,$E7,$1C,$94,$52
                       db $BD,$77,$E7,$1C,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$00,$BD,$77,$FF,$1E,$58,$42
                       db $E7,$1C,$E7,$1C,$FF,$1E,$94,$52
                       db $BD,$77,$E7,$1C,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $C2,$38,$BD,$77,$BD,$77,$58,$42
                       db $85,$51,$BD,$77,$85,$51,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$00,$BD,$77,$BD,$77,$58,$42
                       db $E7,$1C,$43,$5A,$73,$4E,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$2C,$BD,$77,$BD,$77,$58,$42
                       db $FB,$02,$DA,$02,$63,$7C,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$00,$BD,$77,$E7,$1C,$58,$42
                       db $E7,$1C,$BD,$77,$00,$5C,$94,$52
                       db $BD,$77,$E7,$1C,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$2C,$BD,$77,$BD,$77,$58,$42
                       db $00,$58,$00,$58,$BD,$77,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$00,$BD,$77,$BD,$77,$58,$42
                       db $1A,$00,$29,$21,$5A,$03,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$30,$BD,$77,$1A,$00,$58,$42
                       db $1A,$00,$BD,$77,$17,$00,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $0F,$00,$BD,$77,$BD,$77,$58,$42
                       db $09,$54,$BD,$77,$00,$54,$94,$52
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$00,$BD,$77,$A5,$14,$58,$42
                       db $1B,$01,$1B,$01,$A5,$14,$94,$52
                       db $BD,$77,$1B,$01,$D3,$15,$49,$5A
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77
                       db $00,$00,$BD,$77,$A5,$14,$58,$42
                       db $1B,$01,$1B,$01,$A5,$14,$94,$52
                       db $BD,$77,$1B,$01,$D3,$15,$49,$5A
                       ;
                       db $F2,$7F,$7B,$6F,$00,$00,$BD,$77; Team 29 Seattle
                       db $00,$00,$80,$29,$BD,$77,$58,$42
                       db $00,$00,$80,$29,$7B,$6F,$B5,$56
                       db $BD,$77,$BD,$77,$D3,$15,$49,$5A

;Testing Anaheim's center ice logo recompressed using custom compressor
org $A18000                      
    incbin "Anaheim_nibble_packed_fb30.bin"

org $A19200
db $08,$00,$04,$00,$08,$03,$00,$00   ;9AE53C|        |;
                       db $01,$00,$02,$00,$03,$00,$04,$00   ;9AE544|        |;
                       db $05,$00,$06,$00,$07,$00,$08,$00   ;9AE54C|        |;
                       db $09,$00,$0A,$00,$0B,$00,$0C,$00   ;9AE554|        |;
                       db $0D,$00,$0E,$00,$0F,$00,$10,$00   ;9AE55C|        |;
                       db $11,$00,$12,$00,$13,$00,$14,$00   ;9AE564|        |;
                       db $15,$00,$16,$00,$17,$00,$18,$00   ;9AE56C|        |;
                       db $19,$00,$1A,$00,$1B,$00,$1C,$00   ;9AE574|        |;
                       db $1D,$00,$1E,$00,$1F,$00
;db $08,$00,$04,$00,$08,$03
;incbin "Anaheim.map"