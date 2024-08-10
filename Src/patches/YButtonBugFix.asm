;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Y Button Bug Patch
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !Y_Button_Bugfix == 1
            
            print "Y Button Bug Fix Enabled"

        else ; Y Button Bug Fix is Disabled Restore Original Code

            if !DizImport != 1          ;If DizImport is not enabled then restore original code

                org $9EA251             ;Remove Hijack to new function
                db $BD,$E3,$14          ;Restore Original Code

            endif

    endif

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; When Patching existing ROM We Need to add associated code to the new function
    ; As ASAR is only applying these changes to the ROM and not the source code
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if !PatchROM == 1 && !Y_Button_Bugfix == 1  ;If PatchROM is enabled and Y_Button_Bugfix is enabled then add new code 
            
            org $9EA251
                            JMP.W $9FFB24                  ;9EA251|BDE314  |; Hijack to New Code
            
            org $9FFB24
            
                       Y_But_Bug_Fix:
                            LDA.W $14E3,X                        ;9EFBC5|BDE314  |; Loads Selected Player Action [0-?] 0-None 1-Knocked Down/pass 08-Slapshot F342-Speed boost
                            CMP.W #$0001                         ;9EFBC8|C90100  |; Compare
                            BEQ .rtl                             ;9EFBCB|D004    |;
                            JMP.W $9EA256                        ;9EFBCD|4CDBFB  |;
                            .rtl:
                            RTL                                  ;9EFBD0|6B      |;
    endif