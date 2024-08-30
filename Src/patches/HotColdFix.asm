;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Hot/Cold Divison Bug Patch
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !HotCold_Bugfix == 1
            
            print "Hot/Cold Divison Bug Fix Enabled"

        else ; HotCold Bug Fix is Disabled Restore Original Code

            if !DizImport != 1          ;If DizImport is not enabled then restore original code

                org $9FD234             ;Remove Hijack to new function
                db $B9,$12,$1A,$4A,$4A  ;Restore Original Code

            endif

    endif

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; When Patching existing ROM We Need to add associated code to the new function
    ; As ASAR is only applying these changes to the ROM and not the source code
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if !PatchROM == 1 && !HotCold_Bugfix == 1  ;If PatchROM is enabled and HotCold_Bugfix is enabled then add new code 
            
            org $9FD234
                    JSR.W $9FFB32                      ;9FD234|2032FB  |; Hijack for Hot/Cold Divide by 2 error fix                           ;9EA251|4CC5FB  |; Hijack to New Code
            
            org $9FFB32            
                    DivideBy2:
                       LDA.W PStructRNG,Y                   ;9FFB32|B9121A  |; Run hijacked instruction
                       BPL .positive                        ;9FFB35|1009    |; Branch on Plus (N clear)
                       EOR.B #$FF                           ;9FFB37|49FF    |; Exclusive OR with $FF (all 1's). Flips all bits, $FA becomes $05. Part of two's complement conversion
                       INC A                                ;9FFB39|1A      |; Increment accumulator. $05 becomes $06, completing two's complement. Now we have +6
                       LSR A                                ;9FFB3A|4A      |; Logical Shift Right (divide by 2). $06 (0000 0110) becomes $03 (0000 0011)
                       LSR A                                ;9FFB3B|4A      |; Logical Shift Right again (divide by 2 again). $03 (0000 0011) becomes $01 (0000 0001)
                       EOR.B #$FF                           ;9FFB3C|49FF    |; Flip all bits again. $01 becomes $FE, starting conversion back to negative
                       INC A                                ;9FFB3E|1A      |; Increment accumulator. $FE becomes $FF, completing conversion to -1
                       RTS                                  ;9FFB3F|60      |; Return
                .positive:
                       LSR A                                ;9FFB40|4A      |; For positive numbers, simply shift right (divide by 2)
                       LSR A                                ;9FFB41|4A      |; For positive numbers, simply shift right (divide by 2)
                       RTS                                  ;9FFB42|60      |; Return
    endif