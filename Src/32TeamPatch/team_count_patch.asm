; Standalone team-count patch surface for confirmed in-game team limit checks.
; Keep this file limited to ROM-only org patches so the disassembly sources stay
; unchanged while the active team-count sites remain easy to audit.

!TeamSelectionCount = $001D ; 29 teams
!IntroCenterIceBufferSize = !TeamSelectionCount*2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Confirmed Team-Count Sites
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Game setup menu array sizes.
org $9DACD3
    dw !TeamSelectionCount ; Home Team
    dw !TeamSelectionCount ; Away Team
    
;Game setup team-index bound checks.
 org $9DAB37
     CMP.W #!TeamSelectionCount

 org $9DAB55
     CMP.W #!TeamSelectionCount

 org $9DABE2
     CMP.W #!TeamSelectionCount

 org $9DABF8
     CMP.W #!TeamSelectionCount

; Startup fly-by center-ice logo shuffle and iteration.
org $9DBD08
    CMP.W #!TeamSelectionCount

org $9DBD2D
    CPX.W #!IntroCenterIceBufferSize

org $9DBD3A
    CMP.W #!TeamSelectionCount

; ; Edit-lines / roster flow selection boundary seed.
; org $9D9D41
;     LDA.W #!TeamSelectionCount

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Deferred Audit Candidates
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; $9D8433/$9D843C are part of CODE_9D842F's explicit game-setup team tail list,
; not raw team-count comparisons. Patch them only after the expanded menu-order
; literals are confirmed alongside adjacent special-team IDs.