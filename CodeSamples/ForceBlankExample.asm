;Bank 9E
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Loads New Tiles and overwrites existing Tiles
; lda #$3B was the Team Logo on the ICE
; lda #$36 was the EA Logo on TimeBOX
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	SEP #$20                       
	; Load character data into VRAM                        
	LDA #$80			; Enable forced blanking
	STA $2100                        
	lda #$60			;60
	sta $2116			;VMADDL
	lda #$3B			;36
	sta $2117			;VMADDL
	ldx #$0000			;Start at the beginning of the tile data
	.loadtiles_loop:
		lda BostonMini_tiles,x
		sta $2118
		inx
		lda BostonMini_tiles,x
		sta $2119
		inx
		cpx #(BostonMini_tiles_End-BostonMini_tiles)	;Check if we've reached the end of the tile data
	bne .loadtiles_loop
	rep #$20

;Bank 9F
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Imports Tile Data into the current Bank
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	BostonMini_tiles:
		incbin "BostonLogo.tiles"
	BostonMini_tiles_End: