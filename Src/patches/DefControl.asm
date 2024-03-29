;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Def. Control Patch
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !Defense_Control == 1
            
            print "Def. Control Enabled"

        else ;Def. Control is Disabled Restore Original Code

            if !DizImport != 1          ;If DizImport is not enabled then restore original code

                org $9F837C             ;Remove Hijack to new function
                db $22,$B2,$C6,$9F      ;Restore Original Code                                

            endif

    endif

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; When Patching existing ROM We Need to add associated code to the new function
    ; As ASAR is only applying these changes to the ROM and not the source code
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if !PatchROM == 1 && !Defense_Control == 1  ;If PatchROM is enabled and Def. Control is enabled then add new code from 
            
            org $9F837C
            JSR.W $9FFB24                        ;9F837C|2024FB  |; hijack to call our def control code
            NOP                                  ;9F837F|EA      |;
            
            org $9FFB24
            
                       JSL.L Set_Default_Goalie             ;9FFB24|22B2C69F|; Run Original Code we Hijacked
                       LDA.W #$0001                         ;9FFB28|A90100  |; Enable Def Control On (0001)
                       STA.W Def_Ctrl                       ;9FFB2B|8D941C  |; Enable Home Defense Control (1C94)
                       STA.W Def_Ctrl_Awy                   ;9FFB2E|8D961C  |; Enable Away Defense Control (1C96)
                       RTS                                  ;9FFB31|60      |; Return from this Subroutine
    endif