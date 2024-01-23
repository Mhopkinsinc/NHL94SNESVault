;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;30 Seconds Period Patch
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !Thirty_Second_Period  == 1
        
            org $9DACD7     ;30 Second Periods
            padword $0004
            pad $9DACD9

            print "30 Second Periods Enabled"
    endif