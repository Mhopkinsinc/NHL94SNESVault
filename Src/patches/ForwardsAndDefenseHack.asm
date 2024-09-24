;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Allow Forwards & Defensemen to play any position Hack
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !ForwardsAndDefense_Hack == 1
            
            print "Edit Lines Forwards & Defense Hack Enabled"

        else ; Hack is Disabled Restore Original Code

            if !DizImport != 1              ;If DizImport is not enabled then restore original code

                org $9B8E1A                 ;Remove Hijack to new function
                db $10,$21,$22,$00,$93,$9B  ;Restore Original Code

            endif

    endif

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; When Patching existing ROM We Need to add associated code to the new function
    ; As ASAR is only applying these changes to the ROM and not the source code
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if !PatchROM == 1 && !ForwardsAndDefense_Hack == 1  ;If PatchROM is enabled and ForwardsAndDefense_Hack is enabled then add new code 
            
            org $9B8E1A
                       NOP                                  ;9B8E1A|  |; All Positions Hijack
                       NOP                                  ;9B8E1A|  |; All Positions Hijack
                       NOP                                  ;9B8E1A|  |; All Positions Hijack
                       JSR.W $9BCEBA                        ;9B8E1D|  |; All Positions Hijack

            org $9BCEBA
            FwdAndDefHack:
                       JSL.L fn_rtnRosterDefCount           ;9BCEBA|2200939B|; Return # of Defenders
                       STA.W $1DA3                          ;9BCEBE|8DA31D  |; Save the number of Defenders to $1DA3
                       JSL.L fn_RtnTeamGoalieCount          ;9BCEC1|2200D39E|; Return The total number of Goalies to $A5
                       LDA.B $A5                            ;9BCEC5|A5A5    |; Load the total number of Goalkeeprs
                       STA.W $1DAB                          ;9BCEC7|8DAB1D  |; Save the total number of Goalies to $1DAB
                       JSL.L fn_rtnRosterFwdsCount          ;9BCECA|22DC929B|; Return num of Forwards
                       CLC                                  ;9BCECE|18      |; Clear the Carry
                       ADC.W $1DA3                          ;9BCECF|6DA31D  |; Add Defense and Forwards
                       STA.W $1DA3                          ;9BCED2|8DA31D  |; Save Total Forw+Def to $1DA3
                       LDA.W $1DAB                          ;9BCED5|ADAB1D  |; Load Total Number Of Goalies Before Jumping Back to Hijacked Code
                       JMP.W $9B8E3B                        ;9BCED8|4C3B8E  |; Jump Back To bottom of hijacked function                      
    endif