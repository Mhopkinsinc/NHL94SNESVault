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

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; When Patching existing ROM We Need to add associated code to the new function
    ; As ASAR is only applying these changes to the ROM and not the source code
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if !PatchROM == 1 && !Manual_Pull_Goalie == 1
    
    org $9EFB6E
    ManualPullGoalie:
                       LDX.W #$0000                         ;9EFB6E|A20000  |;
                       LDY.W CurntTeamLoopVal               ;9EFB71|AC9100  |; Loop Runs for 00 Home 02 Away

            CheckGoalie:
                       LDA.W GoalieInNetHmAw,Y              ;9EFB74|B9AA17  |; 17AA is Home 17AC is Away
                       CMP.W #$FF00                         ;9EFB77|C900FF  |; FF00 indicates the goalie is out of the net due to penalty
                       BNE CheckJoypad                      ;9EFB7A|D001    |; Goalie Check is good, check joypad
                       RTS                                  ;9EFB7C|60      |; Goalie is out of the net due to penalty RTS
 

            CheckJoypad:    
                       LDA.W JyPadHmAwyLookupTable,Y        ;9EFB7D|B9C1FB  |;
                       CMP.W JyPadHmAwy,X                   ;9EFB80|DD841C  |;
                       BEQ CheckIfLRPressed                 ;9EFB83|F009    |; Joypad match
                       INX                                  ;9EFB85|E8      |;
                       INX                                  ;9EFB86|E8      |;
                       CPX.W #$0004                         ;9EFB87|E00400  |;
                       BNE CheckJoypad                      ;9EFB8A|D0F1    |; Loop and check other joypad
                       BRA Done                             ;9EFB8C|802D    |; No Matched joypads were done
            
 
     CheckIfLRPressed:
                       LDA.W JoyPad,X                       ;9EFB8E|BD7607  |;
                       AND.W #$00FF                         ;9EFB91|29FF00  |;
                       CMP.W #$0030                         ;9EFB94|C93000  |; L+R Trigger Pressed
                       BNE Done                             ;9EFB97|D022    |; L+R Not Pressed, were done

            PullOrInsertGoalie:
                       LDA.W GoalieInNetHmAw,Y              ;9EFB99|B9AA17  |;
                       BEQ .setFFor00                       ;9EFB9C|F007    |;
                       CMP.W #$FFFF                         ;9EFB9E|C9FFFF  |;
                       BEQ .setFFor00                       ;9EFBA1|F002    |;
                       BRA Done                             ;9EFBA3|8016    |; If the value is neither FFFF or 0000, we're done
           .setFFor00:
                       EOR.W #$FFFF                         ;9EFBA5|49FFFF  |; If FFFF set to 0000 If 0000 set to FFFF
                       STA.W GoalieInNetHmAw,Y              ;9EFBA8|99AA17  |; Store the value back to GoalieInNetHmAw
                       JSL.L $9FD407                        ;9EFBAB|2207D49F|; Call the subroutine at $9FD407 To start the goalie animation                                                                      
                       LDA.W #$7000                         ;9EFBAF|A90070  |; Setup for SFX fnc
                       STA.B $64                            ;9EFBB2|8564    |;
                       LDA.W #$0005                         ;9EFBB4|A90500  |; #05 Sets Beep SFX
                       JSL.L $80A17D                        ;9EFBB7|227DA180|; Call To SFX Routine - Play Beep When L+R Pressed

            Done:
                       LDY.B zpCurntTeamLoopVal             ;9EFBBB|A491    |; Run Original Hijacked code & RTS
                       LDA.W GoalieInNetHmAw,Y              ;9EFBBD|B9AA17  |;
                       RTS                                  ;9EFBC0|60      |;
 

    JyPadHmAwyLookupTable:
                       dw $0001                             ;9EFBC1|        |;
                       dw $0002                             ;9EFBC3|        |;
    endif