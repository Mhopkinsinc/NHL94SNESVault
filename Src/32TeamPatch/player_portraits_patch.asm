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
    LDA.W #!TeamSelectionCount          ; Portrait flow team count

org $9DAAD4
    LDA.W #!TeamSelectionCount          ; Portrait flow team count

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

org $9AF5BB ; Free Space in Bank $9A for new Banner Palettes (Currently Used for SEA Team Banner Palette)
    db $00,$00,$7B,$6F,$C0,$34,$E0,$BC
    db $20,$C9,$40,$55,$80,$61,$A0,$ED
    db $D6,$DA,$94,$D2,$73,$CE,$31,$46
    db $10,$42,$CE,$39,$AD,$B5,$1A,$83
    ;
Bos_Portrait_Palette:    
    dw $7C1F,$4EFE,$C6BD,$BE7B,$3239,$29F8,$9DB6,$9575
    dw $0D33,$0911,$04EF,$808A,$8027,$037C,$0000,$77BD