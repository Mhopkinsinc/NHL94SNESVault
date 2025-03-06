;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Show Max Boost in Edit Lines & Team Roster
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !ShowMaxBoost == 1
            
            print "Showing 100 Max Boost in Edit Lines & Team Roster"

        else ; Disabled Restore Original Code

            if !DizImport != 1          ;If DizImport is not enabled then restore original code

                org $9F9A30             ;Remove Hijack to new function
                db $4C,$BD,$9A          ;Restore Original Code

            endif

    endif

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; When Patching existing ROM We Need to add associated code to the new function
    ; As ASAR is only applying these changes to the ROM and not the source code
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if !PatchROM == 1 && !ShowMaxBoost == 1 && !HotCold_Bugfix == 0  ;If PatchROM is enabled and ShowMaxBoost is enabled and HotCold_Bugfix is disabled then add new code 
            
            org $9F9A30
                    JMP.W $9FFB43                          ;9E9BCB|B9B617  |; HIJACK for MaxBoost

            org $9FFB43            
                ShowMaxBoost:
                       BIT.B $14                            ; Check if $14 (RNG) is negative
                       BMI .negative                        ; Branch if negative
                       JMP.W $9F9ABD                        ; JMP to original code
                .negative:
                       LDA.W #$0064                         ; Load 100 decimal (MAX) into A
                       STA.W $A5                            ; Store 100 decimal into $A5 and return
                       RTL
    endif