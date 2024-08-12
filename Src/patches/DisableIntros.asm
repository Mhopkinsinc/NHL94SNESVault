;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Skip Intros Patch
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !EA_Intro  == 0
        
            org $9f8289     ;EA Intro Replace JSL with NOPs
            NOP
            NOP
            NOP
            NOP

            print "EA Intro Disabled"
    endif

    if  !FlyingPucks_Intro  == 0
        
            org $9F82C0     ;Flying Pucks Intro Replace JSL with NOPs
            NOP
            NOP
            NOP
            NOP

            print "Flying Pucks Intro Disabled"
    endif