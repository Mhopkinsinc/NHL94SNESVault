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