;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;CPU Pull Goalie Values
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    
    if !DizImport != 1      ;Set to Values from config.asm if DizImport is disabled

            org $9ED148                             ;Goal Differential to Pull Goalie
            padByte !CPU_Pull_Goalie_Goal_Diff+1    ;Original Value was 03 so 1 or 2 goals would pull the goalie 
            pad $9ED149

            org $9ED150                            ;Seconds Remaining to Pull Goalie
            padWord !CPU_Pull_Goalie_Time_Left     ;Original Value was 3D (Hex) 61 seconds
            pad $9ED152            
        
        else                ;Restore Original Values if DizImport is enabled

            org $9ED148     ;Goal Differential to Pull Goalie
            padByte $03     ;Original Value was 03 so 1 or 2 goals would pull the goalie 
            pad $9ED149

            org $9ED150     ;Seconds Remaining to Pull Goalie
            padByte $3D     ;Original Value was 3D (Hex) 61 seconds
            pad $9ED151            

    endif