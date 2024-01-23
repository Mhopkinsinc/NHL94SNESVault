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