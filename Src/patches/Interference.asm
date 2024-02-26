;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Enable / Disable Interference Penalty
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !Interference_Penalty  == 0
        
            org $9EBAA8     ;Interference Penalty Logic
            BRA $9EBA67     ;BRA to skip the Interference Penalty Logic

            print "Interference Penalty Disabled"
    endif