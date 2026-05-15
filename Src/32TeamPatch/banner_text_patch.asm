;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Banner Text Changes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Change old pointer values to new pointer values for the team names in the banner
org $9C9452
LDA.W Banner_Team_Text_PTR,Y

org $9D8F52
LDA.L Banner_Team_Text_PTR,X

org $9DAF2D
LDA.L Banner_Team_Text_PTR,X

; Writes the provided byte block to SNES address $9CF945 Free Space in Existing Bannk 9C
org $9CF945
Banner_Team_Text_PTR:
                       dw Anh_Banner_Text,Bos_Banner_Text,Buf_Banner_Text,Cal_Banner_Text   ; PTR Table For Banner Text Per Team
                       dw Chi_Banner_Text,Dal_Banner_Text,Det_Banner_Text,Edm_Banner_Text   
                       dw Fla_Banner_Text,Hfd_Banner_Text,LA_Banner_Text,Mtl_Banner_Text    
                       dw NJD_Banner_Text,NYI_Banner_Text,NYR_Banner_Text,Ott_Banner_Text   
                       dw Phi_Banner_Text,Pit_Banner_Text,Que_Banner_Text,SJ_Banner_Text    
                       dw STL_Banner_Text,TB_Banner_Text,Tor_Banner_Text,Van_Banner_Text    
                       dw Wsh_Banner_Text,Wpg_Banner_Text,ASE_Banner_Text,ASW_Banner_Text   
                       dw Sea_Banner_Text,Vgk_Banner_Text                                                   
Anh_Banner_Text:       db "Anaheim"                         ; Banner Text ANH
                       db $00                               
Bos_Banner_Text:       db "Boston"                          ; Banner Text BOS
                       db $00                               
Buf_Banner_Text:       db "Buffalo"                         ; Banner Text BUF
                       db $00                               
Cal_Banner_Text:       db "Calgary"                         ; Banner Text CAL
                       db $00                               
Chi_Banner_Text:       db "Chicago"                         ; Banner Text CHI
                       db $00                               
Dal_Banner_Text:       db "Dallas"                          ; Banner Text DAL
                       db $00                               
Det_Banner_Text:       db "Detroit"                         ; Banner Text DET
                       db $00                               
Edm_Banner_Text:       db "Edmonton"                        ; Banner Text EDM
                       db $00                               
Fla_Banner_Text:       db "Florida"                         ; Banner Text FLA
                       db $00                               
Hfd_Banner_Text:       db "Hartford"                        ; Banner Text HFD
                       db $00                               
LA_Banner_Text:        db "Los Angeles"                     ; Banner Text LA
                       db $00                               
Mtl_Banner_Text:       db "Montreal"                        ; Banner Text MTL
                       db $00                               
NJD_Banner_Text:       db "New Jersey"                      ; Banner Text NJD
                       db $00                               
NYI_Banner_Text:       db "New York"                        ; Banner Text NYI
                       db $00                               
NYR_Banner_Text:       db "New York"                        ; Banner Text NYR
                       db $00                               
Ott_Banner_Text:       db "Ottawa"                          ; Banner Text OTT
                       db $00                               
Phi_Banner_Text:       db "Philadelphia"                    ; Banner Text PHI
                       db $00                               
Pit_Banner_Text:       db "Pittsburgh"                      ; Banner Text PIT
                       db $00                               
Que_Banner_Text:       db "Quebec"                          ; Banner Text QUE
                       db $00                               
SJ_Banner_Text:        db "San Jose"                        ; Banner Text SJ
                       db $00                               
STL_Banner_Text:       db "St. Louis"                       ; Banner Text STL
                       db $00                               
TB_Banner_Text:        db "Tampa Bay"                       ; Banner Text TB
                       db $00                               
Tor_Banner_Text:       db "Toronto"                         ; Banner Text TOR
                       db $00                               
Van_Banner_Text:       db "Vancouver"                       ; Banner Text VAN
                       db $00                               
Wsh_Banner_Text:       db "Washington"                      ; Banner Text WSH
                       db $00                               
Wpg_Banner_Text:       db "Winnipeg"                        ; Banner Text WPG
                       db $00                               
ASE_Banner_Text:       db "All Stars E."                    ; Banner Text ASE
                       db $00                               
ASW_Banner_Text:       db "All Stars W."                    ; Banner Text ASW
                       db $00                               
Sea_Banner_Text:       db "Seattle"                         ; Banner Text SEA
                       db $00                               
Vgk_Banner_Text:       db "Vegas"                           ; Banner Text VGS
                       db $00

; Need to capture the address space here so we can continue to use this free space in the center ice logo patch.
Banner_Text_End:
