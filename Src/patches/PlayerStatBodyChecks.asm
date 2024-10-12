;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Record Player Body Checks For/Against Patch
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !PlayerStat_BodyChecks == 1
            
            print "Adding Checks For/Against to save state"

        else ; Disabled Restore Original Code

            if !DizImport != 1          ;If DizImport is not enabled then restore original code

                org $9E9BCB             ;Remove Hijack to new function
                db $B9,$B6,$17          ;Restore Original Code

            endif

    endif

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; When Patching existing ROM We Need to add associated code to the new function
    ; As ASAR is only applying these changes to the ROM and not the source code
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if !PatchROM == 1 && !PlayerStat_BodyChecks == 1  ;If PatchROM is enabled and PlayerStat_BodyChecks is enabled then add new code 
            
            org $9E9BCB
                    JSR.W $9EFBD1                          ;9E9BCB|B9B617  |; HIJACK for bodycheck

            org $9EFBD1            
                    RecBdyChkF_ChkA: 
                       PHA                                  ;9EFBD1|48      |; Save  Current Value of A
                       PHX                                  ;9EFBD2|DA      |; Save  Current Value of X
                       
                       LDX.B $95                            ;9EFBD3|A695    |; $95 is Player Making the Check
                       LDA.W $12A3,X                        ;9EFBD5|BDA312  |; $12A3 + $95 gets roster index of player
                       LDX.B $89                            ;9EFBD8|A689    |; $89 is the team making the check 00=Home 02=Away
                       CPX.W #$0002                         ;9EFBDA|E00200  |; Compare the value in the X register with 2
                       BNE .recordChkF                      ;9EFBDD|D004    |; If X register is Home, then branch and Skip Addition
                       CLC                                  ;9EFBDF|18      |; Clear Carry Flag
                       ADC.W #$001A                         ;9EFBE0|691A00  |; Add #$001A (26) to the accumulator to skip to the Away Team Starting Values
 
         .recordChkF:                       
                       TAX                                  ;9EFBE3|AA      |;
                       SEP #$20                             ;9EFBE4|E220    |;
                       INC.W $168D,X                        ;9EFBE6|FE5016  |; Add 1 to the existing checks For value
                       REP #$20                             ;9EFBE9|C220    |;
         
                       LDX.B zpCurntTeamLoopVal             ;9EFBEB|A691    |; $91 is Player being chekced
                       LDA.W $12A3,X                        ;9EFBED|BDA312  |; $12A3 + $91 gets roster index of player
                       LDX.B $89                            ;9EFBF0|A689    |; $89 is the team making the check 00=Home 02=Away
                       CPX.W #$0000                         ;9EFBF2|E00000  |; Compare the value in the X register with 0 to reverse Team
                       BNE .recordChkA                      ;9EFBF5|D004    |; If X register is Home, then branch and Skip Addition
                       CLC                                  ;9EFBF7|18      |; Clear Carry Flag
                       ADC.W #$001A                         ;9EFBF8|691A00  |; Add #$001A (26) to the accumulator to skip to the Away Team Starting Values

         .recordChkA:                       
                       TAX                                  ;9EFBFB|AA      |;
                       SEP #$20                             ;9EFBFC|E220    |;
                       INC.W $16C1,X                        ;9EFBFE|FE8416  |; Add 1 to the existing checks Against value
                       REP #$20                             ;9EFC01|C220    |;
                       PLX                                  ;9EFC03|FA      |; Pull original X value off the stack
                       PLA                                  ;9EFC04|68      |; Pull Original A Value off the stack
                       LDA.W $17B6,Y                        ;9EFC05|B9B617  |; Run original hijacked instruction to reterieve team body check count
                       RTS                                  ;9EFC08|60      |; Return to Original Code      

    endif

      if !PlayerStat_BodyChecks_Display == 1          ;Display Body Checks For in Player Stats UI

                        print "Adding Checks For/Against to Player Stats Page (UI)"

                        org $9C8A60             ;Point PM to Checks For Ram Map
                        LDA.W $168D,X           ;9C8A60|BD8A19  |; Load Checks For per player

                        org $9CF323             ;Change Pm to Cf
                        db " Pt Sh Cf#"         ;9CF323|        |;

                        org $9C8C18             ;Change Penalties to Checks
                        db " Checks  "          ;9C8C18|        |;                        
        endif