;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;One Minute Penalties Patch
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !One_Minute_Penalties == 1
        
            org $80D4C7     ;Charging
            padbyte $01
            pad $80D4C8
            
            org $80D4E9     ;Slashing
            padbyte $01
            pad $80D4EA

            org $80D50B     ;Tripping
            padbyte $01
            pad $80D50C

            org $80D52B     ;Roughing
            padbyte $01
            pad $80D52C

            org $80D54B     ;Roughing2
            padbyte $01
            pad $80D54C
            
            org $80D56B     ;Hooking
            padbyte $01
            pad $80D56C

            org $80D58C     ;Cross Checking
            padbyte $01
            pad $80D58D

            org $80D5B1     ;Interference
            padbyte $01
            pad $80D5B2

            org $80D5C9     ;Holding
            padbyte $01
            pad $80D5CA

            print "One Minute Penalties Enabled"

        else ; One Minute Penalties are Disabled Restore Original Code
            
            if !DizImport != 1      ;Restore Original if DizImport is not enabled
                org $9EB417         ;Remove Hijack to new function
                AND.W #$00FF
            endif

    endif

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; When Patching existing ROM We Need to add associated code to the new function
    ; As ASAR is only applying these changes to the ROM and not the source code
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if !PatchROM == 1 && !One_Minute_Penalties == 1
    
    org $9EFB5B
    
    One_Min_Pen:                       
                       CMP.W #$0401                         ;9EFB5B|C90104  |; Compare to #0401 Value for 1 min penalties
                       BEQ .hit                             ;9EFB5E|F005    |; 1 min pen jump to hit
                       CMP.W #$0A01                         ;9EFB60|C9010A  |; Cmp to #0A01 Roughing Pen is different
                       BNE .done                            ;9EFB63|D003    |; Not a penalty so were done
                       .hit:
                       JMP.W $9EB421                    ;9EFB65|4C21B4  |; 1 min Penalty so JMP to B421
 
            .done:                       
                       AND.W #$00FF                         ;9EFB68|29FF00  |; Run hijacked code
 
                       JMP.W $9EB41A                    ;9EFB6B|4C1AB4  |; Jmp to next instruction B41A
    endif