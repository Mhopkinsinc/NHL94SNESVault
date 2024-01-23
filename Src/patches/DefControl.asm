;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Def. Control Patch
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !Defense_Control == 1
        
            org $9FFB29     ;Def. Control
            padword $0001
            pad $9FFB2B
            
            print "Def. Control Enabled"
    endif