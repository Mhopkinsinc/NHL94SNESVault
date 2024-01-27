;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Def. Control Patch
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !Defense_Control == 1
        
            org $9FFB29     ;Def. Control
            padword $0001
            pad $9FFB2B
            
            print "Def. Control Enabled"

        else ;Def. Control is Disabled Restore Original Code

            if !DizImport != 1          ;If DizImport is not enabled then restore original code

                org $9F837C             ;Remove Hijack to new function
                db $22,$B2,$C6,$9F      ;Restore Original Code                                

            endif

    endif