;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;This Sets Defense Control On or Off by Default
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!Defense_Control = 0        ; Off = 0 On = 1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Define Penalty Lengths
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!Penalty_Length = 02           ; No Penalty = 00, 1 minute = 01, 2 minutes = 02, 4 minutes = 04, 5 minutes = 05

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Enable Hidden "30 Seconds" Periods Selection in Menu
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!Thirty_Second_Period = 0     ; Enable = 04,  Disable = 03

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Enable Pull Goalie Wit L+R Trigger
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!Manual_Pull_Goalie = #01       ; Enable = 01,  Disable = 00

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Enable Real Time Clock
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!Real_Time_Clock = 0       ; Enable = 01,  Disable = 00

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Patches
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;Def. Control Patch
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !Defense_Control == 1
        
            org $9FFB29     ;Def. Control
            padword $0001
            pad $9FFB2B
            
            print "Def. Control Enabled"
    endif
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;Real Time Clock Patch
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !Real_Time_Clock == 1
        
            org $9F85B6     ;Real Time Clock
            padword $0444
            pad $9F85B8
            
            org $9EBF66     ;Real Time Penalty Clock
            padword $003C
            pad $9EBF68
            
            org $9F8668     ;Real Time Penalty Clock 2nd spot
            padword $003C
            pad $9F866A

            print "Real Time Clock Enabled"
    endif
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;30 Seconds Period Patch
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !Thirty_Second_Period  == 1
        
            org $9DACD7     ;30 Second Periods
            padword $0004
            pad $9DACD9

            print "30 Second Periods Enabled"
    endif