;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Enable / Disable Penalty Shots
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !PenaltyShot  == 0
        
            org $9EC063         ;Penalty Shot Logic
            BNE CODE_9EC06D     ;BNE to skip the Penalty Shot Logic

            print "Penalty Shots Disabled"
    endif