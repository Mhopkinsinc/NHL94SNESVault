; Standalone team-count patch surface for confirmed in-game team limit checks.
; Keep this file limited to ROM-only org patches so the disassembly sources stay
; unchanged while the active team-count sites remain easy to audit.

!TeamSelectionCount = $001D ; 29 teams

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Confirmed Team-Count Sites
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Game setup menu array sizes.
org $9DACD3
    dw !TeamSelectionCount ; Home Team
    dw !TeamSelectionCount ; Away Team

; Game setup team-index bound checks.
 ;org $9DAB37
 ;    CMP.W #!TeamSelectionCount

 ;org $9DAB55
 ;    CMP.W #!TeamSelectionCount

 ;org $9DABE2
 ;    CMP.W #!TeamSelectionCount

 ;org $9DABF8
 ;    CMP.W #!TeamSelectionCount

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Deferred Audit Candidates
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Nearby constants around $9D8433/$9D843C and $9D9D41 still need a second pass.
; They may represent All-Star identity or boundary behavior rather than raw team
; count, so they are intentionally left unchanged in this first implementation.