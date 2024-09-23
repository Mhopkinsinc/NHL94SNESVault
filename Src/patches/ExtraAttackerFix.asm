;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Extra Attacker Missing Bug Patch
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !ExtraAttacker_Bugfix == 1
            
            print "Extra Attacker Bug Fix Enabled"

        else ; Extra Attacker Bug Fix is Disabled Restore Original Code

            if !DizImport != 1          ;If DizImport is not enabled then restore original code

                org $9B8C96             ;Remove Hijack to new function
                db $C9,$01,$00          ;Restore Original Code

            endif

    endif

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; When Patching existing ROM We Need to add associated code to the new function
    ; As ASAR is only applying these changes to the ROM and not the source code
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if !PatchROM == 1 && !ExtraAttacker_Bugfix == 1  ;If PatchROM is enabled and ExtraAttacker_Bugfix is enabled then add new code 
            
            org $9B8C96
                       JSR.W $9BCE78                        ;9B8C96|  |; ExtAttackerFix Hijack

            org $9BCE78
            ExtAttackerFix:
                       PHA                                  ;9BCE78|48      |; Save A before hijack
                       LDA.B $A5                            ;9BCE79|A5A5    |; Load Current Line Starting address from $A5 into A
                       CLC                                  ;9BCE7B|18      |;
                       ADC.W EdLnAvlPlayersCount            ;9BCE7C|6D9F1D  |; Add the number of ava players to the current line starting address
                       STA.B $95                            ;9BCE7F|8595    |; Store the new address in $95
                       LDX.W EdLnAvlPlayersCount            ;9BCE81|AE9F1D  |; Add the number of ava players into x as the counter
                       INX                                  ;9BCE84|E8      |; Increment X (increase loop count for Extra Attacker)

            .Loop:
                       LDA.B $95                            ;9BCE85|A595    |;  Load Current Line Ending Address from $95 into A
                       JSR.W CODE_9B8D72                    ;9BCE87|20728D  |; Load The Player at Address $A5 into A
                       CMP.L EdLnSelPlyIndx                 ;9BCE8A|CF8F1D9F|; Compare with the selected player index
                       BEQ .Found                           ;9BCE8E|F007    |; Branch if Equal (Player Found)
                       DEC.B $95                            ;9BCE90|C695    |; Decrement the Current Line Ending Address
                       DEX                                  ;9BCE92|CA      |; Decrement X (decrease loop count)
                       BNE .Loop                            ;9BCE93|D0F0    |; Loop if Not Equal (X != 0)
                       BRA .End                             ;9BCE95|801E    |; Not Found, Branch to the end
                       
            .Found:                       
                       DEX                                  ;9BCE97|CA      |; Decrement X (decrease loop count)
                       LDA.B $A5                            ;9BCE98|A5A5    |; Load Current Line Starting address from $A5 into A
                       CLC                                  ;9BCE9A|18      |; Clear the Carry Flag
                       ADC.W EdLnAvlPlayersCount            ;9BCE9B|6D9F1D  |; Add the number of available players to the current line starting addres
                       SBC.W EdLnCurPositionIndex           ;9BCE9E|ED8B1D  |; Subtract the current position index from the new address
                       STA.B $95                            ;9BCEA1|8595    |; Store the new address in $95
                       JSR.W CODE_9B8D72                    ;9BCEA3|20728D  |; Load The Player at Address $A5 into A
                       PHA                                  ;9BCEA6|48      |; Save A to the stack for reterival later
                       LDA.B $A5                            ;9BCEA7|A5A5    |; Load Current Line Starting address from $A5 into A
                       STX.B $AF                            ;9BCEA9|86AF    |; Store X in $AF
                       CLC                                  ;9BCEAB|18      |; Clear the Carry Flag
                       ADC.W $00AF                          ;9BCEAC|6DAF00  |; Add X to Accumulator (so we know the new address of the player)
                       STA.B $95                            ;9BCEAF|8595    |; Store the new address in $95
                       PLA                                  ;9BCEB1|68      |; Restore A from the stack this contained the orignal player to be moved
                       JSR.W CODE_9B8D7C                    ;9BCEB2|207C8D  |; Move Player from selected postion into the found position
            .End:
                       PLA                                  ;9BCEB5|68      |; Restore pre hijacked A value
                       CMP.W #$0001                         ;9BCEB6|C90100  |; Restore hijacked instruction
                       RTS                                 ;9FFB42|60      |; Return
    endif