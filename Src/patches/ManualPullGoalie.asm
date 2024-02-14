;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Manula Pull Goalie L+R Trigger Patch
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !Manual_Pull_Goalie == 1        
            
            print "Manual Pull Goalie L+R Trigger Enabled"

        else ;Manual Pull Goalie is Disabled Restore Original Code

            if !DizImport != 1          ;If DizImport is not enabled then restore original code

                org $9ED0BF             ;Remove Hijack to new function, Restore Original Code
                LDY.B $91                            
                LDA.W GoalieInNetHmAw,Y               

            endif

    endif