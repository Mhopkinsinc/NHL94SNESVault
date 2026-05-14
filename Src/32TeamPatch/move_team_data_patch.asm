; Set ROM map to LoROM
lorom

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Standalone Team Data Relocation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Relocates the Team_PTR-backed team data blob from bank $9C into free
; space at $A3:8000. Team_PTR stays in place and its entries are rewritten
; to the relocated data. The original bank $9C source span is then
; overwritten with $FF so missed readers are easy to detect.
;
; This patch intentionally does not modify any files under Src.


!OriginalTeamDataStart = $9CA65B; this needs to increase each time you add a new team to the end of the original data table. TODO: Make this dynamic.
!OriginalTeamDataEnd   = $9CED58
!RelocatedTeamDataBank = $00A3

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Confirmed Team Data Consumers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Matchups screen team-header reader.
org $9F9945
    LDA.W #!RelocatedTeamDataBank

; Game setup / edit lines team-header reader.
org $9FC732
    LDA.W #!RelocatedTeamDataBank

; Setup flow reader that walks to the last skater entry for the selected team.
org $9FC94A
    LDA.W #!RelocatedTeamDataBank

; Setup strengths / advantage reader.
org $9FCF68
    LDA.W #!RelocatedTeamDataBank

; Setup roster / player-count reader.
org $9FA238
    LDA.W #!RelocatedTeamDataBank

; Summary/setup name reader that walks a selected player entry. Use a helper
; rather than an inline 16-bit immediate so the bank byte is set safely even
; if a caller arrives with unexpected width state.
org $9FEB63
    JML SummaryNameBank_9FEB63
    NOP

; Binary-surviving team-data reader found in patched-ROM scan.
org $9FD3E9
    LDA.W #!RelocatedTeamDataBank

; Shared Team_PTR-backed player reader used by adjacent setup flows.
org $9FBD6F
    LDA.W #!RelocatedTeamDataBank

; Edit-lines roster forward-count reader.
org $9B92DE
    LDA.W #!RelocatedTeamDataBank

; Edit-lines roster defense-count reader.
org $9B9302
    LDA.W #!RelocatedTeamDataBank

; Edit-lines line-data reader.
org $9B934A
    LDA.W #!RelocatedTeamDataBank

; Edit-lines extra-attacker reader.
org $9B9383
    LDA.W #!RelocatedTeamDataBank

; Penalties summary team-data reader.
org $9B9B3E
    LDA.W #!RelocatedTeamDataBank

; Setup/adjective text reader derived from Team_PTR.
org $9ECC2A
    LDA.W #!RelocatedTeamDataBank

; Setup comparison text reader derived from Team_PTR.
org $9ECC50
    LDA.W #!RelocatedTeamDataBank

; Setup descriptive text reader derived from Team_PTR.
org $9ECD0A
    LDA.W #!RelocatedTeamDataBank

; Team-data reader used when copying lineup text into WRAM.
org $80CDE2
    LDA.W #!RelocatedTeamDataBank

; Team roster / lineup count reader.
org $9D87BC
    LDA.W #!RelocatedTeamDataBank

; Edit-lines selected-line reader.
org $9D9FC6
    LDA.W #!RelocatedTeamDataBank

; Team roster scrolling reader.
org $9DBE1F
    LDA.W #!RelocatedTeamDataBank

; Binary-surviving roster-path reader adjacent to the scrolling routine.
org $9DBDC6
    LDA.W #!RelocatedTeamDataBank

; Team roster detail reader.
org $9DBEBC
    LDA.W #!RelocatedTeamDataBank

; Team card / strengths reader.
org $9DC12D
    LDA.W #!RelocatedTeamDataBank

; Team line lookup reader.
org $9DC986
    LDA.W #!RelocatedTeamDataBank

; Team goalie-count comparison reader.
org $9DCB74
    LDA.W #!RelocatedTeamDataBank

; Team-data reader used by bank 9E setup flow.
org $9EB80A
    LDA.W #!RelocatedTeamDataBank

; Shared team goalie-count reader.
org $9ED303
    LDA.W #!RelocatedTeamDataBank

; Live in-game score display: clamp score loads to the low byte so a 16-bit
; caller state cannot display garbage from adjacent WRAM bytes.
org $9FA568
    JSL LoadLiveScoreHome_9FA568

org $9FA57A
    JSL LoadLiveScoreAway_9FA57A

; Other Scores screen uses the same WRAM score buffers.
org $9BC548
    JSL LoadOtherScoreHome_9BC548

org $9BC558
    JSL LoadOtherScoreAway_9BC558

; Shared score-simulation lookup. Rebuild it end-to-end in free space rather
; than jumping back into the middle of the original routine after partial
; pointer setup.
org $9F9F91
    JML ScoreLookup_9F9F91

; Team_PTR walker used by matchup/strength calculations. It must read the
; Team_PTR entry from bank $9C, then switch to relocated bank $A3 before
; dereferencing team data.
org $9F9F95
    JML TeamPtrWalker_9F9F95

; Second Team_PTR walker in the same routine for the opposing team.
org $9F9FDD
    JML TeamPtrWalker_9F9FDD

; Shared Team_PTR walker that returns a team-data pointer in $8D/$8F.
org $9BC5B8
    JML TeamPtrWalker_9BC5B8

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Team Pointer Table Rewrite
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

org $9CA5E7
    dw TeamData_Anaheim, !RelocatedTeamDataBank ; Anaheim
    dw TeamData_Boston, !RelocatedTeamDataBank ; Boston
    dw TeamData_Buffalo, !RelocatedTeamDataBank ; Buffalo
    dw TeamData_Calgary, !RelocatedTeamDataBank ; Calgary
    dw TeamData_Chicago, !RelocatedTeamDataBank ; Chicago
    dw TeamData_Dallas, !RelocatedTeamDataBank ; Dallas
    dw TeamData_Detroit, !RelocatedTeamDataBank ; Detroit
    dw TeamData_Edmonton, !RelocatedTeamDataBank ; Edmonton
    dw TeamData_Florida, !RelocatedTeamDataBank ; Florida
    dw TeamData_Hartford, !RelocatedTeamDataBank ; Hartford
    dw TeamData_LAKings, !RelocatedTeamDataBank ; LA Kings
    dw TeamData_Montreal, !RelocatedTeamDataBank ; Montreal
    dw TeamData_NewJersey, !RelocatedTeamDataBank ; New Jersey
    dw TeamData_NewYorkIslanders, !RelocatedTeamDataBank ; New York Islanders
    dw TeamData_NewYorkRangers, !RelocatedTeamDataBank ; New York Rangers
    dw TeamData_Ottawa, !RelocatedTeamDataBank ; Ottawa
    dw TeamData_Philly, !RelocatedTeamDataBank ; Philly
    dw TeamData_Pittsburgh, !RelocatedTeamDataBank ; Pittsburgh
    dw TeamData_Quebec, !RelocatedTeamDataBank ; Quebec
    dw TeamData_SanJose, !RelocatedTeamDataBank ; San Jose
    dw TeamData_StLouis, !RelocatedTeamDataBank ; St Louis
    dw TeamData_TampaBay, !RelocatedTeamDataBank ; Tampa Bay
    dw TeamData_Toronto, !RelocatedTeamDataBank ; Toronto
    dw TeamData_Vancouver, !RelocatedTeamDataBank ; Vancouver
    dw TeamData_Washington, !RelocatedTeamDataBank ; Washington
    dw TeamData_Winnipeg, !RelocatedTeamDataBank ; Winnipeg
    dw TeamData_AllStarsEast, !RelocatedTeamDataBank ; All Stars East
    dw TeamData_AllStarsWest, !RelocatedTeamDataBank ; All Stars West
    dw TeamData_Seattle, !RelocatedTeamDataBank ; Seattle

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Relocated Team Data Blob
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

org $A38000
TeamData_Relocated:
; Keep these incbins in the original blob order so the assembled layout stays
; byte-for-byte identical to the source combined file.
TeamData_AllStarsEast:
    incbin "TeamData/all_stars_east.bin"
TeamData_AllStarsWest:
    incbin "TeamData/all_stars_west.bin"
TeamData_Boston:
    incbin "TeamData/boston.bin"
TeamData_Buffalo:
    incbin "TeamData/buffalo.bin"
TeamData_Calgary:
    incbin "TeamData/calgary.bin"
TeamData_Chicago:
    incbin "TeamData/chicago.bin"
TeamData_Detroit:
    incbin "TeamData/detroit.bin"
TeamData_Edmonton:
    incbin "TeamData/edmonton.bin"
TeamData_Hartford:
    incbin "TeamData/hartford.bin"
TeamData_LAKings:
    incbin "TeamData/la_kings.bin"
TeamData_Dallas:
    incbin "TeamData/dallas.bin"
TeamData_Montreal:
    incbin "TeamData/montreal.bin"
TeamData_NewJersey:
    incbin "TeamData/new_jersey.bin"
TeamData_NewYorkIslanders:
    incbin "TeamData/new_york_islanders.bin"
TeamData_NewYorkRangers:
    incbin "TeamData/new_york_rangers.bin"
TeamData_Ottawa:
    incbin "TeamData/ottawa.bin"
TeamData_Philly:
    incbin "TeamData/philly.bin"
TeamData_Pittsburgh:
    incbin "TeamData/pittsburgh.bin"
TeamData_Quebec:
    incbin "TeamData/quebec.bin"
TeamData_SanJose:
    incbin "TeamData/san_jose.bin"
TeamData_StLouis:
    incbin "TeamData/st_louis.bin"
TeamData_TampaBay:
    incbin "TeamData/tampa_bay.bin"
TeamData_Toronto:
    incbin "TeamData/toronto.bin"
TeamData_Vancouver:
    incbin "TeamData/vancouver.bin"
TeamData_Winnipeg:
    incbin "TeamData/winnipeg.bin"
TeamData_Washington:
    incbin "TeamData/washington.bin"
TeamData_Florida:
    incbin "TeamData/florida.bin"
TeamData_Anaheim:
    incbin "TeamData/anaheim.bin"
TeamData_Seattle:
    incbin "TeamData/seattle.bin"

;org $A3C800
ScoreLookup_9F9F91:
    PHP
    REP #$30
    LDA.B $A5
    ASL A
    ASL A
    TAY
    LDA.W #$009C
    STA.B $8F
    LDA.W #$A5E7
    STA.B $8D
    LDA.B [$8D],Y
    STA.B $8D
    LDA.W #!RelocatedTeamDataBank
    STA.B $8F
    LDY.W #$0008
    CLC
    ADC.B [$8D],Y
    STA.B $8D
    LDA.B [$8D]
    AND.W #$0070
    LSR A
    CLC
    ADC.W #$A038
    STA.B $8D
    LDA.W #$009F
    STA.B $8F
    LDA.B [$8D]
    STA.W $0CF9
    LDY.W #$0002
    LDA.B [$8D],Y
    STA.W $0CFB
    LDY.W #$0004
    LDA.B [$8D],Y
    STA.W $0CFD
    LDY.W #$0006
    LDA.B [$8D],Y
    STA.W $0CFF

    LDA.B $A9
    ASL A
    ASL A
    TAY
    LDA.W #$009C
    STA.B $8F
    LDA.W #$A5E7
    STA.B $8D
    LDA.B [$8D],Y
    STA.B $8D
    LDA.W #!RelocatedTeamDataBank
    STA.B $8F
    LDY.W #$0008
    CLC
    ADC.B [$8D],Y
    STA.B $8D
    LDA.B [$8D]
    AND.W #$0007
    ASL A
    ASL A
    ASL A
    CLC
    ADC.W #$A038
    STA.B $8D
    LDA.W #$009F
    STA.B $8F
    LDA.B [$8D]
    CLC
    ADC.W $0CF9
    STA.W $0CF9
    LDY.W #$0002
    LDA.B [$8D],Y
    CLC
    ADC.W $0CFB
    STA.W $0CFB
    LDY.W #$0004
    LDA.B [$8D],Y
    CLC
    ADC.W $0CFD
    STA.W $0CFD
    LDY.W #$0006
    LDA.B [$8D],Y
    CLC
    ADC.W $0CFF
    STA.W $0CFF

    LDA.W #$0004
    STA.B $A5
    JSL.L $009D9CD2
    PLP
    RTL

TeamPtrWalker_9F9F95:
    REP #$30
    LDA.W #$009C
    STA.B $8F
    LDA.W #$A5E7
    STA.B $8D
    LDY.B $A5
    LDA.B [$8D],Y
    STA.B $8D
    PHA
    LDA.W #!RelocatedTeamDataBank
    STA.B $8F
    PLA
    LDY.W #$0008
    CLC
    ADC.B [$8D],Y
    STA.B $8D
    JML.L $009F9FAC

TeamPtrWalker_9F9FDD:
    REP #$30
    LDA.W #$009C
    STA.B $8F
    LDA.W #$A5E7
    STA.B $8D
    LDY.B $A9
    LDA.B [$8D],Y
    STA.B $8D
    PHA
    LDA.W #!RelocatedTeamDataBank
    STA.B $8F
    PLA
    LDY.W #$0008
    CLC
    ADC.B [$8D],Y
    STA.B $8D
    JML.L $009FA006

TeamPtrWalker_9BC5B8:
    REP #$30
    LDA.W #$009C
    STA.B $8F
    LDA.W #$A5E7
    STA.B $8D
    LDA.B [$8D],Y
    STA.B $8D
    PHA
    LDA.W #!RelocatedTeamDataBank
    STA.B $8F
    PLA
    LDY.W #$0004
    CLC
    ADC.B [$8D],Y
    STA.B $8D
    JML.L $009BC5E6

LoadLiveScoreHome_9FA568:
    PHP
    REP #$20
    LDA.L $7E3578,X
    AND.W #$00FF
    PLP
    RTL

LoadLiveScoreAway_9FA57A:
    PHP
    REP #$20
    LDA.L $7E3588,X
    AND.W #$00FF
    PLP
    RTL

LoadOtherScoreHome_9BC548:
    PHP
    REP #$20
    LDA.L $7E3578,X
    AND.W #$00FF
    PLP
    RTL

LoadOtherScoreAway_9BC558:
    PHP
    REP #$20
    LDA.L $7E3588,X
    AND.W #$00FF
    PLP
    RTL

SummaryNameBank_9FEB63:
    REP #$20
    LDA.W #!RelocatedTeamDataBank
    STA.B $9B
    JML.L $009FEB68

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Reclaim Original Bank $9C Range
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

org !OriginalTeamDataStart
    padbyte $FF
    pad !OriginalTeamDataEnd+1