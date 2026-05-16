;Continue Using Free Space After Banner Text Patchorg Banner_Text_End
org Banner_Text_End
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Center Ice Logo Pointer Tables
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Compact the original 8-byte records at $9C83B7 into split tables:
;   logo gfx address   : 16-bit per team
;   logo gfx bank      : 8-bit per team
;   logo tilemap addr  : 16-bit per team
;   logo tilemap bank  : 8-bit per team
; This keeps the table in its original footprint while leaving room to append
; more teams later. Seattle and Vegas both reuse the custom A1 center-ice
; assets so Vegas mirrors Seattle for now.

org $9C83B7
Center_Ice_LogoGfxAddrTable:
                       dw $B47B,$BFA1,$CA96,$FF3D,$AC2E,$FF38,$C880,$C315
                       dw $C557,$FEA9,$D79C,$DA4A,$BBF5,$FECB,$CBA0,$FEC0
                       dw $C436,$FF47,$D5AF,$C667,$C774,$FE85,$D972,$FE78
                       dw $DD33,$BE73,$D4B6,$D4B6,$8000,$8000

Center_Ice_LogoGfxBankTable:
                       db $9A,$9A,$9A,$8D,$9A,$84,$9A,$9A
                       db $9A,$82,$9A,$9A,$9A,$98,$9A,$99
                       db $9A,$83,$9A,$9A,$9A,$97,$9A,$86
                       db $9A,$9A,$9A,$9A,$A1,$A1

Center_Ice_LogoTilemapAddrTable:
                       dw $E53C,$E7F8,$E76C,$E6E0,$E4F6,$E398,$E1F4,$E726
                       dw $E654,$E4B0,$E2C6,$E83E,$E69A,$E582,$E5C8,$E60E
                       dw $E7B2,$E168,$E1AE,$E23A,$E280,$E30C,$E352,$E3DE
                       dw $E424,$E46A,$FFC6,$FFC6,$9200,$9200

Center_Ice_LogoTilemapBankTable:
                       db $9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A
                       db $9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A
                       db $9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A
                       db $9A,$9A,$88,$88,$A1,$A1

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
    db $08,$00,$04,$00,$08,$03

incbin "Anaheim.map"