 
                       ORG $9D8000
 
 
          CODE_9D8000:
                       PHX                                  ;9D8000|DA      |;
                       PHY                                  ;9D8001|5A      |;
                       LDA.L $7E35BC                        ;9D8002|AFBC357E|;
                       CLC                                  ;9D8006|18      |;
                       ADC.L $7E35A8                        ;9D8007|6FA8357E|;
                       ORA.W $0D0D                          ;9D800B|0D0D0D  |;
                       STA.B $C5                            ;9D800E|85C5    |;
                       LDA.W #$009C                         ;9D8010|A99C00  |;
                       STA.B $0E                            ;9D8013|850E    |;
                       LDA.W #$8086                         ;9D8015|A98680  |;
                       STA.B $0C                            ;9D8018|850C    |;
                       JSR.W CODE_9D804F                    ;9D801A|204F80  |;
                       LDA.B $C9                            ;9D801D|A5C9    |;
                       LSR A                                ;9D801F|4A      |;
                       CMP.W $0CD5                          ;9D8020|CDD50C  |;
                       BCS CODE_9D8028                      ;9D8023|B003    |;
                       STA.W $0CD5                          ;9D8025|8DD50C  |;
 
          CODE_9D8028:
                       DEC.B $A9                            ;9D8028|C6A9    |;
                       DEC.B $A9                            ;9D802A|C6A9    |;
 
          CODE_9D802C:
                       LDA.W #$808C                         ;9D802C|A98C80  |;
                       STA.B $0C                            ;9D802F|850C    |;
                       JSR.W CODE_9D804F                    ;9D8031|204F80  |;
                       DEC.B $A9                            ;9D8034|C6A9    |;
                       BNE CODE_9D802C                      ;9D8036|D0F4    |;
                       LDA.W #$8092                         ;9D8038|A99280  |;
                       STA.B $0C                            ;9D803B|850C    |;
                       JSR.W CODE_9D804F                    ;9D803D|204F80  |;
                       INX                                  ;9D8040|E8      |;
                       INX                                  ;9D8041|E8      |;
                       TXA                                  ;9D8042|8A      |;
                       LSR A                                ;9D8043|4A      |;
                       CMP.W $0CD7                          ;9D8044|CDD70C  |;
                       BCC CODE_9D804C                      ;9D8047|9003    |;
                       STA.W $0CD7                          ;9D8049|8DD70C  |;
 
          CODE_9D804C:
                       PLY                                  ;9D804C|7A      |;
                       PLX                                  ;9D804D|FA      |;
                       RTL                                  ;9D804E|6B      |;
 
          CODE_9D804F:
                       LDA.W $0D11                          ;9D804F|AD110D  |;
                       ASL A                                ;9D8052|0A      |;
                       ASL A                                ;9D8053|0A      |;
                       ASL A                                ;9D8054|0A      |;
                       ASL A                                ;9D8055|0A      |;
                       ASL A                                ;9D8056|0A      |;
                       ADC.W $0D0F                          ;9D8057|6D0F0D  |;
                       ASL A                                ;9D805A|0A      |;
                       ADC.W $0CD9                          ;9D805B|6DD90C  |;
                       STA.B $C9                            ;9D805E|85C9    |;
                       TAX                                  ;9D8060|AA      |;
                       LDA.B [$0C]                          ;9D8061|A70C    |;
                       CLC                                  ;9D8063|18      |;
                       ADC.B $C5                            ;9D8064|65C5    |;
                       STA.L $7E37F4,X                      ;9D8066|9FF4377E|;
                       INC.B $0C                            ;9D806A|E60C    |;
                       INC.B $0C                            ;9D806C|E60C    |;
                       LDA.B [$0C]                          ;9D806E|A70C    |;
                       CLC                                  ;9D8070|18      |;
                       ADC.B $C5                            ;9D8071|65C5    |;
                       LDY.B $A5                            ;9D8073|A4A5    |;
                       DEY                                  ;9D8075|88      |;
                       DEY                                  ;9D8076|88      |;
 
          CODE_9D8077:
                       INX                                  ;9D8077|E8      |;
                       INX                                  ;9D8078|E8      |;
                       STA.L $7E37F4,X                      ;9D8079|9FF4377E|;
                       DEY                                  ;9D807D|88      |;
                       BNE CODE_9D8077                      ;9D807E|D0F7    |;
                       INC.B $0C                            ;9D8080|E60C    |;
                       INC.B $0C                            ;9D8082|E60C    |;
                       LDA.B [$0C]                          ;9D8084|A70C    |;
                       CLC                                  ;9D8086|18      |;
                       ADC.B $C5                            ;9D8087|65C5    |;
                       STA.L $7E37F6,X                      ;9D8089|9FF6377E|;
                       INC.W $0D11                          ;9D808D|EE110D  |;
                       RTS                                  ;9D8090|60      |;
 
          CODE_9D8091:
                       PHX                                  ;9D8091|DA      |;
                       PHY                                  ;9D8092|5A      |;
                       LDA.L $7E35BE                        ;9D8093|AFBE357E|;
                       CLC                                  ;9D8097|18      |;
                       ADC.L $7E35A8                        ;9D8098|6FA8357E|;
                       STA.B $C5                            ;9D809C|85C5    |;
                       LDA.W #$009C                         ;9D809E|A99C00  |;
                       STA.B $0E                            ;9D80A1|850E    |;
                       LDA.W #$81DE                         ;9D80A3|A9DE81  |;
                       STA.B $0C                            ;9D80A6|850C    |;
                       JSR.W CODE_9D804F                    ;9D80A8|204F80  |;
                       LDA.B $C9                            ;9D80AB|A5C9    |;
                       LSR A                                ;9D80AD|4A      |;
                       CMP.W $0CD5                          ;9D80AE|CDD50C  |;
                       BCS CODE_9D80B6                      ;9D80B1|B003    |;
                       STA.W $0CD5                          ;9D80B3|8DD50C  |;
 
          CODE_9D80B6:
                       DEC.B $A9                            ;9D80B6|C6A9    |;
                       DEC.B $A9                            ;9D80B8|C6A9    |;
 
          CODE_9D80BA:
                       LDA.W #$81E4                         ;9D80BA|A9E481  |;
                       STA.B $0C                            ;9D80BD|850C    |;
                       JSR.W CODE_9D804F                    ;9D80BF|204F80  |;
                       DEC.B $A9                            ;9D80C2|C6A9    |;
                       BNE CODE_9D80BA                      ;9D80C4|D0F4    |;
                       LDA.W #$81EA                         ;9D80C6|A9EA81  |;
                       STA.B $0C                            ;9D80C9|850C    |;
                       JSR.W CODE_9D804F                    ;9D80CB|204F80  |;
                       INX                                  ;9D80CE|E8      |;
                       INX                                  ;9D80CF|E8      |;
                       TXA                                  ;9D80D0|8A      |;
                       LSR A                                ;9D80D1|4A      |;
                       CMP.W $0CD7                          ;9D80D2|CDD70C  |;
                       BCC CODE_9D80DA                      ;9D80D5|9003    |;
                       STA.W $0CD7                          ;9D80D7|8DD70C  |;
 
          CODE_9D80DA:
                       PLY                                  ;9D80DA|7A      |;
                       PLX                                  ;9D80DB|FA      |;
                       RTL                                  ;9D80DC|6B      |;
 
          CODE_9D80DD:
                       PHX                                  ;9D80DD|DA      |;
                       PHY                                  ;9D80DE|5A      |;
                       LDA.L $7E35C0                        ;9D80DF|AFC0357E|;
                       CLC                                  ;9D80E3|18      |;
                       ADC.L $7E35A8                        ;9D80E4|6FA8357E|;
                       STA.B $C5                            ;9D80E8|85C5    |;
                       LDA.W #$009C                         ;9D80EA|A99C00  |;
                       STA.B $0E                            ;9D80ED|850E    |;
                       LDA.W #$8316                         ;9D80EF|A91683  |;
                       STA.B $0C                            ;9D80F2|850C    |;
                       JSR.W CODE_9D804F                    ;9D80F4|204F80  |;
                       LDA.B $C9                            ;9D80F7|A5C9    |;
                       LSR A                                ;9D80F9|4A      |;
                       CMP.W $0CD5                          ;9D80FA|CDD50C  |;
                       BCS CODE_9D8102                      ;9D80FD|B003    |;
                       STA.W $0CD5                          ;9D80FF|8DD50C  |;
 
          CODE_9D8102:
                       DEC.B $A9                            ;9D8102|C6A9    |;
                       DEC.B $A9                            ;9D8104|C6A9    |;
 
          CODE_9D8106:
                       LDA.W #$831C                         ;9D8106|A91C83  |;
                       STA.B $0C                            ;9D8109|850C    |;
                       JSR.W CODE_9D804F                    ;9D810B|204F80  |;
                       DEC.B $A9                            ;9D810E|C6A9    |;
                       BNE CODE_9D8106                      ;9D8110|D0F4    |;
                       LDA.W #$8322                         ;9D8112|A92283  |;
                       STA.B $0C                            ;9D8115|850C    |;
                       JSR.W CODE_9D804F                    ;9D8117|204F80  |;
                       INX                                  ;9D811A|E8      |;
                       INX                                  ;9D811B|E8      |;
                       TXA                                  ;9D811C|8A      |;
                       LSR A                                ;9D811D|4A      |;
                       CMP.W $0CD7                          ;9D811E|CDD70C  |;
                       BCC CODE_9D8126                      ;9D8121|9003    |;
                       STA.W $0CD7                          ;9D8123|8DD70C  |;
 
          CODE_9D8126:
                       PLY                                  ;9D8126|7A      |;
                       PLX                                  ;9D8127|FA      |;
                       RTL                                  ;9D8128|6B      |;
 
          CODE_9D8129:
                       LDA.W #$0001                         ;9D8129|A90100  |;
                       STA.L $7E3474                        ;9D812C|8F74347E|;
                       STZ.W $1E3F                          ;9D8130|9C3F1E  |;
                       JSL.L Set_Default_Goalie             ;9D8133|22B2C69F|;
                       JSL.L CODE_9D87D7                    ;9D8137|22D7879D|;
                       LDX.W #$0000                         ;9D813B|A20000  |;
                       JSL.L CODE_9DCC36                    ;9D813E|2236CC9D|;
                       LDX.W #$0002                         ;9D8142|A20200  |;
                       JSL.L CODE_9DCC36                    ;9D8145|2236CC9D|;
                       LDA.W #$0008                         ;9D8149|A90800  |;
                       LDX.W #$003E                         ;9D814C|A23E00  |;
                       JSL.L CODE_9DCCF5                    ;9D814F|22F5CC9D|;
                       STZ.W $1DB9                          ;9D8153|9CB91D  |;
                       STZ.W $1E3D                          ;9D8156|9C3D1E  |;
                       JSL.L CODE_9D8292                    ;9D8159|2292829D|;
                       JSL.L CODE_9D842F                    ;9D815D|222F849D|;
                       LDA.B $8F                            ;9D8161|A58F    |;
                       PHA                                  ;9D8163|48      |;
                       LDA.B $8D                            ;9D8164|A58D    |;
                       PHA                                  ;9D8166|48      |;
                       LDA.W #$009C                         ;9D8167|A99C00  |;
                       STA.B $8F                            ;9D816A|858F    |;
                       LDA.W #$F390                         ;9D816C|A990F3  |;
                       STA.B $8D                            ;9D816F|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D8171|22BEC79E|;
                       PLA                                  ;9D8175|68      |;
                       STA.B $8D                            ;9D8176|858D    |;
                       PLA                                  ;9D8178|68      |;
                       STA.B $8F                            ;9D8179|858F    |;
                       LDA.W #$0016                         ;9D817B|A91600  |;
                       STA.B $A5                            ;9D817E|85A5    |;
                       LDA.W #$000B                         ;9D8180|A90B00  |;
                       STA.B $A9                            ;9D8183|85A9    |;
                       JSL.L CODE_9D80DD                    ;9D8185|22DD809D|;
                       JSL.L CODE_9D8489                    ;9D8189|2289849D|;
                       JSL.L CODE_9D8B49                    ;9D818D|22498B9D|;
                       JSL.L CODE_8086BD                    ;9D8191|22BD8680|;
 
          CODE_9D8195:
                       JSL.L CODE_9DD923                    ;9D8195|2223D99D|;
                       JSL.L CODE_808583                    ;9D8199|22838580|;
                       JSL.L CODE_9B8017                    ;9D819D|2217809B|;
                       LDX.W #$0002                         ;9D81A1|A20200  |;
                       LDA.W $0AB8                          ;9D81A4|ADB80A  |;
                       STA.B $14                            ;9D81A7|8514    |;
 
          CODE_9D81A9:
                       LDA.W $1C84,X                        ;9D81A9|BD841C  |;
                       BEQ CODE_9D81B5                      ;9D81AC|F007    |;
                       db $BD,$B8,$0A,$05,$14,$85,$14       ;9D81AE|        |;
 
          CODE_9D81B5:
                       INX                                  ;9D81B5|E8      |;
                       INX                                  ;9D81B6|E8      |;
                       CPX.W #$000A                         ;9D81B7|E00A00  |;
                       BCC CODE_9D81A9                      ;9D81BA|90ED    |;
                       LDA.B $14                            ;9D81BC|A514    |;
                       BIT.W #$1000                         ;9D81BE|890010  |;
                       BNE CODE_9D821A                      ;9D81C1|D057    |;
                       BIT.W #$0800                         ;9D81C3|890008  |;
                       BEQ CODE_9D81CC                      ;9D81C6|F004    |;
                       db $22,$6C,$86,$9B                   ;9D81C8|        |;
 
          CODE_9D81CC:
                       BIT.W #$4000                         ;9D81CC|890040  |;
                       BNE UNREACH_9D8222                   ;9D81CF|D051    |;
                       BIT.W #$8080                         ;9D81D1|898080  |;
                       BNE CODE_9D8240                      ;9D81D4|D06A    |;
                       BIT.W #$0040                         ;9D81D6|894000  |;
                       BEQ CODE_9D81DE                      ;9D81D9|F003    |;
                       db $4C,$5E,$82                       ;9D81DB|        |;
 
          CODE_9D81DE:
                       LDA.W $1E3F                          ;9D81DE|AD3F1E  |;
                       BNE CODE_9D81EF                      ;9D81E1|D00C    |;
                       LDA.W $1E3D                          ;9D81E3|AD3D1E  |;
                       INC A                                ;9D81E6|1A      |;
                       CMP.W #$012C                         ;9D81E7|C92C01  |;
                       BCS CODE_9D8246                      ;9D81EA|B05A    |;
                       STA.W $1E3D                          ;9D81EC|8D3D1E  |;
 
          CODE_9D81EF:
                       STZ.W $1D5E                          ;9D81EF|9C5E1D  |;
                       LDA.W $0776                          ;9D81F2|AD7607  |;
                       ORA.W $0778                          ;9D81F5|0D7807  |;
                       BIT.W #$0400                         ;9D81F8|890004  |;
                       BEQ CODE_9D8203                      ;9D81FB|F006    |;
                       LDA.W #$FFFF                         ;9D81FD|A9FFFF  |;
                       STA.W $1D5E                          ;9D8200|8D5E1D  |;
 
          CODE_9D8203:
                       JSL.L CODE_9EC95C                    ;9D8203|225CC99E|;
                       LDA.W $1E3F                          ;9D8207|AD3F1E  |;
                       BNE CODE_9D8217                      ;9D820A|D00B    |;
                       LDA.L $7E34CC                        ;9D820C|AFCC347E|;
                       BNE CODE_9D8217                      ;9D8210|D005    |;
                       DEC.W $0D41                          ;9D8212|CE410D  |;
                       BMI CODE_9D821A                      ;9D8215|3003    |;
 
          CODE_9D8217:
                       JMP.W CODE_9D8195                    ;9D8217|4C9581  |;
 
          CODE_9D821A:
                       LDA.W #$0000                         ;9D821A|A90000  |;
                       STA.L $7E3474                        ;9D821D|8F74347E|;
                       RTL                                  ;9D8221|6B      |;
 
       UNREACH_9D8222:
                       db $A9,$FF,$FF,$8D,$3F,$1E,$AD,$B9   ;9D8222|        |;
                       db $1D,$3A,$10,$06,$A9,$06,$00,$8D   ;9D822A|        |;
                       db $B9,$1D,$8D,$B9,$1D,$22,$89,$84   ;9D8232|        |;
                       db $9D,$9C,$3D,$1E,$80,$D7           ;9D823A|        |;
 
          CODE_9D8240:
                       LDA.W #$FFFF                         ;9D8240|A9FFFF  |;
                       STA.W $1E3F                          ;9D8243|8D3F1E  |;
 
          CODE_9D8246:
                       LDA.W $1DB9                          ;9D8246|ADB91D  |;
                       INC A                                ;9D8249|1A      |;
                       CMP.W #$0007                         ;9D824A|C90700  |;
                       BCC CODE_9D8252                      ;9D824D|9003    |;
                       LDA.W #$0000                         ;9D824F|A90000  |;
 
          CODE_9D8252:
                       STA.W $1DB9                          ;9D8252|8DB91D  |;
                       JSL.L CODE_9D8489                    ;9D8255|2289849D|;
                       STZ.W $1E3D                          ;9D8259|9C3D1E  |;
                       BRA CODE_9D8217                      ;9D825C|80B9    |;
                       db $A5,$8F,$48,$A5,$8D,$48,$A9,$9C   ;9D825E|        |;
                       db $00,$85,$8F,$A9,$95,$F3,$85,$8D   ;9D8266|        |;
                       db $22,$BE,$C7,$9E,$68,$85,$8D,$68   ;9D826E|        |;
                       db $85,$8F,$A9,$14,$00,$85,$A5,$A9   ;9D8276|        |;
                       db $09,$00,$85,$A9,$AF,$D0,$35,$7E   ;9D827E|        |;
                       db $85,$AD,$22,$9C,$BD,$9F,$22,$2F   ;9D8286|        |;
                       db $84,$9D,$80,$85                   ;9D828E|        |;
 
          CODE_9D8292:
                       LDA.W #$FFFF                         ;9D8292|A9FFFF  |;
                       STA.W $1E49                          ;9D8295|8D491E  |;
                       STA.W $1E4B                          ;9D8298|8D4B1E  |;
                       STA.W $1E4D                          ;9D829B|8D4D1E  |;
                       STA.W $1E4F                          ;9D829E|8D4F1E  |;
                       STA.W $1E51                          ;9D82A1|8D511E  |;
                       STA.W $1E53                          ;9D82A4|8D531E  |;
                       STA.W $1E55                          ;9D82A7|8D551E  |;
                       STA.W $1E57                          ;9D82AA|8D571E  |;
                       STA.W $1E59                          ;9D82AD|8D591E  |;
                       STA.W $1E5B                          ;9D82B0|8D5B1E  |;
                       STA.W $1E5D                          ;9D82B3|8D5D1E  |;
                       STA.W $1E5F                          ;9D82B6|8D5F1E  |;
                       LDA.W #$FF06                         ;9D82B9|A906FF  |;
                       STA.W $1E61                          ;9D82BC|8D611E  |;
                       STA.W $1E65                          ;9D82BF|8D651E  |;
                       STA.W $1E69                          ;9D82C2|8D691E  |;
                       STA.W $1E63                          ;9D82C5|8D631E  |;
                       STA.W $1E67                          ;9D82C8|8D671E  |;
                       STA.W $1E6B                          ;9D82CB|8D6B1E  |;
                       LDA.W #$00FA                         ;9D82CE|A9FA00  |;
                       STA.W $1E6D                          ;9D82D1|8D6D1E  |;
                       STA.W $1E71                          ;9D82D4|8D711E  |;
                       STA.W $1E75                          ;9D82D7|8D751E  |;
                       STA.W $1E6F                          ;9D82DA|8D6F1E  |;
                       STA.W $1E73                          ;9D82DD|8D731E  |;
                       STA.W $1E77                          ;9D82E0|8D771E  |;
                       STZ.W $1E45                          ;9D82E3|9C451E  |;
                       STZ.W $1E47                          ;9D82E6|9C471E  |;
                       STZ.B zpCurntTeamLoopVal             ;9D82E9|6491    |;
                       JSL.L CODE_9D8330                    ;9D82EB|2230839D|;
                       LDA.W #$0002                         ;9D82EF|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9D82F2|8591    |;
                       JSL.L CODE_9D8330                    ;9D82F4|2230839D|;
                       LDA.W $1C98                          ;9D82F8|AD981C  |;
                       STA.W $1E41                          ;9D82FB|8D411E  |;
                       LDA.W #$0001                         ;9D82FE|A90100  |;
                       STA.W $1E43                          ;9D8301|8D431E  |;
                       LDA.W $1E45                          ;9D8304|AD451E  |;
                       SEC                                  ;9D8307|38      |;
                       SBC.W $1E47                          ;9D8308|ED471E  |;
                       BMI CODE_9D830F                      ;9D830B|3002    |;
                       BRA CODE_9D831C                      ;9D830D|800D    |;
 
          CODE_9D830F:
                       LDA.W $1C9A                          ;9D830F|AD9A1C  |;
                       STA.W $1E41                          ;9D8312|8D411E  |;
                       LDA.W $1E47                          ;9D8315|AD471E  |;
                       SEC                                  ;9D8318|38      |;
                       SBC.W $1E45                          ;9D8319|ED451E  |;
 
          CODE_9D831C:
                       CMP.W #$0008                         ;9D831C|C90800  |;
                       BCS CODE_9D832F                      ;9D831F|B00E    |;
                       STZ.W $1E43                          ;9D8321|9C431E  |;
                       CMP.W #$0004                         ;9D8324|C90400  |;
                       BCS CODE_9D832F                      ;9D8327|B006    |;
                       LDA.W #$FFFF                         ;9D8329|A9FFFF  |;
                       STA.W $1E41                          ;9D832C|8D411E  |;
 
          CODE_9D832F:
                       RTL                                  ;9D832F|6B      |;
 
          CODE_9D8330:
                       JSL.L CODE_9FC93D                    ;9D8330|223DC99F|;
                       LDA.B $A5                            ;9D8334|A5A5    |;
                       STA.B $B5                            ;9D8336|85B5    |;
                       LDX.W #$0000                         ;9D8338|A20000  |;
 
          CODE_9D833B:
                       STX.W $1D9B                          ;9D833B|8E9B1D  |;
                       LDA.W #$0001                         ;9D833E|A90100  |;
                       STA.B $A9                            ;9D8341|85A9    |;
                       JSL.L CODE_9DC5FC                    ;9D8343|22FCC59D|;
                       LDA.B $A5                            ;9D8347|A5A5    |;
                       STA.B $AD                            ;9D8349|85AD    |;
                       LDA.W #$0001                         ;9D834B|A90100  |;
                       STA.B $A9                            ;9D834E|85A9    |;
                       JSL.L CODE_9DC561                    ;9D8350|2261C59D|;
                       LDA.B $A5                            ;9D8354|A5A5    |;
                       SEC                                  ;9D8356|38      |;
                       SBC.B $AD                            ;9D8357|E5AD    |;
                       STA.B $A5                            ;9D8359|85A5    |;
                       LDY.B zpCurntTeamLoopVal             ;9D835B|A491    |;
                       LDA.W $1E45,Y                        ;9D835D|B9451E  |;
                       CLC                                  ;9D8360|18      |;
                       ADC.B $A5                            ;9D8361|65A5    |;
                       STA.W $1E45,Y                        ;9D8363|99451E  |;
                       STX.B $B1                            ;9D8366|86B1    |;
                       JSL.L CODE_9D8372                    ;9D8368|2272839D|;
                       INX                                  ;9D836C|E8      |;
                       CPX.B $B5                            ;9D836D|E4B5    |;
                       BMI CODE_9D833B                      ;9D836F|30CA    |;
                       RTL                                  ;9D8371|6B      |;
 
          CODE_9D8372:
                       LDA.B $B1                            ;9D8372|A5B1    |;
                       STA.B $A9                            ;9D8374|85A9    |;
                       LDA.B $A5                            ;9D8376|A5A5    |;
                       STA.B $08                            ;9D8378|8508    |;
                       CMP.W $1E61,Y                        ;9D837A|D9611E  |;
                       BEQ CODE_9D8381                      ;9D837D|F002    |;
                       BPL CODE_9D8391                      ;9D837F|1010    |;
 
          CODE_9D8381:
                       CMP.W $1E65,Y                        ;9D8381|D9651E  |;
                       BEQ CODE_9D8388                      ;9D8384|F002    |;
                       BPL CODE_9D83AD                      ;9D8386|1025    |;
 
          CODE_9D8388:
                       CMP.W $1E69,Y                        ;9D8388|D9691E  |;
                       BEQ CODE_9D83D3                      ;9D838B|F046    |;
                       BPL CODE_9D83C9                      ;9D838D|103A    |;
                       BRA CODE_9D83D3                      ;9D838F|8042    |;
 
          CODE_9D8391:
                       LDA.W $1E61,Y                        ;9D8391|B9611E  |;
                       STA.B $00                            ;9D8394|8500    |;
                       LDA.W $1E49,Y                        ;9D8396|B9491E  |;
                       STA.B $04                            ;9D8399|8504    |;
                       LDA.B $A5                            ;9D839B|A5A5    |;
                       STA.W $1E61,Y                        ;9D839D|99611E  |;
                       LDA.B $A9                            ;9D83A0|A5A9    |;
                       STA.W $1E49,Y                        ;9D83A2|99491E  |;
                       LDA.B $00                            ;9D83A5|A500    |;
                       STA.B $A5                            ;9D83A7|85A5    |;
                       LDA.B $04                            ;9D83A9|A504    |;
                       STA.B $A9                            ;9D83AB|85A9    |;
 
          CODE_9D83AD:
                       LDA.W $1E65,Y                        ;9D83AD|B9651E  |;
                       STA.B $00                            ;9D83B0|8500    |;
                       LDA.W $1E4D,Y                        ;9D83B2|B94D1E  |;
                       STA.B $04                            ;9D83B5|8504    |;
                       LDA.B $A5                            ;9D83B7|A5A5    |;
                       STA.W $1E65,Y                        ;9D83B9|99651E  |;
                       LDA.B $A9                            ;9D83BC|A5A9    |;
                       STA.W $1E4D,Y                        ;9D83BE|994D1E  |;
                       LDA.B $00                            ;9D83C1|A500    |;
                       STA.B $A5                            ;9D83C3|85A5    |;
                       LDA.B $04                            ;9D83C5|A504    |;
                       STA.B $A9                            ;9D83C7|85A9    |;
 
          CODE_9D83C9:
                       LDA.B $A5                            ;9D83C9|A5A5    |;
                       STA.W $1E69,Y                        ;9D83CB|99691E  |;
                       LDA.B $A9                            ;9D83CE|A5A9    |;
                       STA.W $1E51,Y                        ;9D83D0|99511E  |;
 
          CODE_9D83D3:
                       LDA.B $B1                            ;9D83D3|A5B1    |;
                       STA.B $A9                            ;9D83D5|85A9    |;
                       LDA.B $08                            ;9D83D7|A508    |;
                       STA.B $A5                            ;9D83D9|85A5    |;
                       CMP.W $1E6D,Y                        ;9D83DB|D96D1E  |;
                       BMI CODE_9D83EC                      ;9D83DE|300C    |;
                       CMP.W $1E71,Y                        ;9D83E0|D9711E  |;
                       BMI CODE_9D8408                      ;9D83E3|3023    |;
                       CMP.W $1E75,Y                        ;9D83E5|D9751E  |;
                       BMI CODE_9D8424                      ;9D83E8|303A    |;
                       BRA CODE_9D842E                      ;9D83EA|8042    |;
 
          CODE_9D83EC:
                       LDA.W $1E6D,Y                        ;9D83EC|B96D1E  |;
                       STA.B $00                            ;9D83EF|8500    |;
                       LDA.W $1E55,Y                        ;9D83F1|B9551E  |;
                       STA.B $04                            ;9D83F4|8504    |;
                       LDA.B $A5                            ;9D83F6|A5A5    |;
                       STA.W $1E6D,Y                        ;9D83F8|996D1E  |;
                       LDA.B $A9                            ;9D83FB|A5A9    |;
                       STA.W $1E55,Y                        ;9D83FD|99551E  |;
                       LDA.B $00                            ;9D8400|A500    |;
                       STA.B $A5                            ;9D8402|85A5    |;
                       LDA.B $04                            ;9D8404|A504    |;
                       STA.B $A9                            ;9D8406|85A9    |;
 
          CODE_9D8408:
                       LDA.W $1E71,Y                        ;9D8408|B9711E  |;
                       STA.B $00                            ;9D840B|8500    |;
                       LDA.W $1E59,Y                        ;9D840D|B9591E  |;
                       STA.B $04                            ;9D8410|8504    |;
                       LDA.B $A5                            ;9D8412|A5A5    |;
                       STA.W $1E71,Y                        ;9D8414|99711E  |;
                       LDA.B $A9                            ;9D8417|A5A9    |;
                       STA.W $1E59,Y                        ;9D8419|99591E  |;
                       LDA.B $00                            ;9D841C|A500    |;
                       STA.B $A5                            ;9D841E|85A5    |;
                       LDA.B $04                            ;9D8420|A504    |;
                       STA.B $A9                            ;9D8422|85A9    |;
 
          CODE_9D8424:
                       LDA.B $A5                            ;9D8424|A5A5    |;
                       STA.W $1E75,Y                        ;9D8426|99751E  |;
                       LDA.B $A9                            ;9D8429|A5A9    |;
                       STA.W $1E5D,Y                        ;9D842B|995D1E  |;
 
          CODE_9D842E:
                       RTL                                  ;9D842E|6B      |;
 
          CODE_9D842F:
                       JSL.L CODE_9FC87C                    ;9D842F|227CC89F|;
                       LDA.W #$001D                         ;9D8433|A91D00  |;
                       STA.B [$89]                          ;9D8436|8789    |;
                       INC.B $89                            ;9D8438|E689    |;
                       INC.B $89                            ;9D843A|E689    |;
                       LDA.W #$001C                         ;9D843C|A91C00  |;
                       STA.B [$89]                          ;9D843F|8789    |;
                       INC.B $89                            ;9D8441|E689    |;
                       INC.B $89                            ;9D8443|E689    |;
                       LDA.W $1E41                          ;9D8445|AD411E  |;
                       BMI CODE_9D8453                      ;9D8448|3009    |;
                       LDA.W #$001E                         ;9D844A|A91E00  |;
                       STA.B [$89]                          ;9D844D|8789    |;
                       INC.B $89                            ;9D844F|E689    |;
                       INC.B $89                            ;9D8451|E689    |;
 
          CODE_9D8453:
                       LDA.W $1C98                          ;9D8453|AD981C  |;
                       STA.B $A5                            ;9D8456|85A5    |;
                       LDA.W #$001F                         ;9D8458|A91F00  |;
                       STA.B [$89]                          ;9D845B|8789    |;
                       INC.B $89                            ;9D845D|E689    |;
                       INC.B $89                            ;9D845F|E689    |;
                       LDA.W $1C9A                          ;9D8461|AD9A1C  |;
                       CMP.B $A5                            ;9D8464|C5A5    |;
                       BEQ CODE_9D8471                      ;9D8466|F009    |;
                       LDA.W #$0020                         ;9D8468|A92000  |;
                       STA.B [$89]                          ;9D846B|8789    |;
                       INC.B $89                            ;9D846D|E689    |;
                       INC.B $89                            ;9D846F|E689    |;
 
          CODE_9D8471:
                       LDA.W #$0021                         ;9D8471|A92100  |;
                       STA.B [$89]                          ;9D8474|8789    |;
                       INC.B $89                            ;9D8476|E689    |;
                       INC.B $89                            ;9D8478|E689    |;
                       LDA.W #$FFFF                         ;9D847A|A9FFFF  |;
                       STA.B [$89]                          ;9D847D|8789    |;
                       STZ.W $1D5E                          ;9D847F|9C5E1D  |;
                       LDA.W #$7FFF                         ;9D8482|A9FF7F  |;
                       STA.W $0D41                          ;9D8485|8D410D  |;
                       RTL                                  ;9D8488|6B      |;
 
          CODE_9D8489:
                       LDA.B $8F                            ;9D8489|A58F    |;
                       PHA                                  ;9D848B|48      |;
                       LDA.B $8D                            ;9D848C|A58D    |;
                       PHA                                  ;9D848E|48      |;
                       LDA.W #$009C                         ;9D848F|A99C00  |;
                       STA.B $8F                            ;9D8492|858F    |;
                       LDA.W #$F39A                         ;9D8494|A99AF3  |;
                       STA.B $8D                            ;9D8497|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D8499|22BEC79E|;
                       PLA                                  ;9D849D|68      |;
                       STA.B $8D                            ;9D849E|858D    |;
                       PLA                                  ;9D84A0|68      |;
                       STA.B $8F                            ;9D84A1|858F    |;
                       LDA.W #$0020                         ;9D84A3|A92000  |;
                       STA.B $A5                            ;9D84A6|85A5    |;
                       LDA.W #$000B                         ;9D84A8|A90B00  |;
                       STA.B $A9                            ;9D84AB|85A9    |;
                       LDA.L $7E35D0                        ;9D84AD|AFD0357E|;
                       STA.B $AD                            ;9D84B1|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9D84B3|229CBD9F|;
                       JSL.L CODE_80AF7B                    ;9D84B7|227BAF80|;
                       LDX.W #$0056                         ;9D84BB|A25600  |;
                       LDY.W #$0010                         ;9D84BE|A01000  |;
                       LDA.W #$009C                         ;9D84C1|A99C00  |;
                       STA.B $8F                            ;9D84C4|858F    |;
                       LDA.W #$F39F                         ;9D84C6|A99FF3  |;
                       STA.B $8D                            ;9D84C9|858D    |;
                       JSL.L CODE_9C936C                    ;9D84CB|226C939C|;
                       LDA.B $8F                            ;9D84CF|A58F    |;
                       PHA                                  ;9D84D1|48      |;
                       LDA.B $8D                            ;9D84D2|A58D    |;
                       PHA                                  ;9D84D4|48      |;
                       LDA.W #$009C                         ;9D84D5|A99C00  |;
                       STA.B $8F                            ;9D84D8|858F    |;
                       LDA.W #$F3A9                         ;9D84DA|A9A9F3  |;
                       STA.B $8D                            ;9D84DD|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D84DF|22BEC79E|;
                       PLA                                  ;9D84E3|68      |;
                       STA.B $8D                            ;9D84E4|858D    |;
                       PLA                                  ;9D84E6|68      |;
                       STA.B $8F                            ;9D84E7|858F    |;
                       LDA.W $1C9A                          ;9D84E9|AD9A1C  |;
                       STA.B $A9                            ;9D84EC|85A9    |;
                       JSL.L CODE_9FBE08                    ;9D84EE|2208BE9F|;
                       LDA.B $8F                            ;9D84F2|A58F    |;
                       PHA                                  ;9D84F4|48      |;
                       LDA.B $8D                            ;9D84F5|A58D    |;
                       PHA                                  ;9D84F7|48      |;
                       LDA.W #$009C                         ;9D84F8|A99C00  |;
                       STA.B $8F                            ;9D84FB|858F    |;
                       LDA.W #$F3AE                         ;9D84FD|A9AEF3  |;
                       STA.B $8D                            ;9D8500|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D8502|22BEC79E|;
                       PLA                                  ;9D8506|68      |;
                       STA.B $8D                            ;9D8507|858D    |;
                       PLA                                  ;9D8509|68      |;
                       STA.B $8F                            ;9D850A|858F    |;
                       LDA.W $1C98                          ;9D850C|AD981C  |;
                       STA.B $A9                            ;9D850F|85A9    |;
                       JSL.L CODE_9FBE08                    ;9D8511|2208BE9F|;
                       LDA.W $1DB9                          ;9D8515|ADB91D  |;
                       BNE CODE_9D851D                      ;9D8518|D003    |;
                       JMP.W CODE_9D8631                    ;9D851A|4C3186  |;
 
          CODE_9D851D:
                       DEC.W $1DB9                          ;9D851D|CEB91D  |;
                       LDA.W #$FFFF                         ;9D8520|A9FFFF  |;
                       STA.L $7E3454                        ;9D8523|8F54347E|;
                       STA.L $7E3452                        ;9D8527|8F52347E|;
                       STZ.B zpCurntTeamLoopVal             ;9D852B|6491    |;
                       LDA.W $1DB9                          ;9D852D|ADB91D  |;
                       STA.L $7E345A                        ;9D8530|8F5A347E|;
                       LDA.W #$0002                         ;9D8534|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9D8537|8591    |;
                       LDA.W $1DB9                          ;9D8539|ADB91D  |;
                       STA.L $7E345C                        ;9D853C|8F5C347E|;
                       JSL.L CODE_9DDDB3                    ;9D8540|22B3DD9D|;
                       LDA.W #$3568                         ;9D8544|A96835  |;
                       STA.L $7F7500                        ;9D8547|8F00757F|;
                       JSL.L CODE_9DE0D4                    ;9D854B|22D4E09D|;
                       LDA.W #$0002                         ;9D854F|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9D8552|8591    |;
                       LDA.B $8F                            ;9D8554|A58F    |;
                       PHA                                  ;9D8556|48      |;
                       LDA.B $8D                            ;9D8557|A58D    |;
                       PHA                                  ;9D8559|48      |;
                       LDA.W #$009C                         ;9D855A|A99C00  |;
                       STA.B $8F                            ;9D855D|858F    |;
                       LDA.W #$F3B3                         ;9D855F|A9B3F3  |;
                       STA.B $8D                            ;9D8562|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D8564|22BEC79E|;
                       PLA                                  ;9D8568|68      |;
                       STA.B $8D                            ;9D8569|858D    |;
                       PLA                                  ;9D856B|68      |;
                       STA.B $8F                            ;9D856C|858F    |;
                       LDA.W $1DB9                          ;9D856E|ADB91D  |;
                       JSL.L CODE_9DC973                    ;9D8571|2273C99D|;
                       LDA.B $A5                            ;9D8575|A5A5    |;
                       STA.W $1D9B                          ;9D8577|8D9B1D  |;
                       LDA.W #$0001                         ;9D857A|A90100  |;
                       STA.B $A9                            ;9D857D|85A9    |;
                       JSL.L CODE_9DC561                    ;9D857F|2261C59D|;
                       LDA.B $A5                            ;9D8583|A5A5    |;
                       PHA                                  ;9D8585|48      |;
                       LDA.W #$0003                         ;9D8586|A90300  |;
                       STA.B $A9                            ;9D8589|85A9    |;
                       JSL.L CODE_9FC623                    ;9D858B|2223C69F|;
                       JSL.L CODE_9EC7BE                    ;9D858F|22BEC79E|;
                       LDA.B $8F                            ;9D8593|A58F    |;
                       PHA                                  ;9D8595|48      |;
                       LDA.B $8D                            ;9D8596|A58D    |;
                       PHA                                  ;9D8598|48      |;
                       LDA.W #$009C                         ;9D8599|A99C00  |;
                       STA.B $8F                            ;9D859C|858F    |;
                       LDA.W #$F3B8                         ;9D859E|A9B8F3  |;
                       STA.B $8D                            ;9D85A1|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D85A3|22BEC79E|;
                       PLA                                  ;9D85A7|68      |;
                       STA.B $8D                            ;9D85A8|858D    |;
                       PLA                                  ;9D85AA|68      |;
                       STA.B $8F                            ;9D85AB|858F    |;
                       LDA.W $1D9B                          ;9D85AD|AD9B1D  |;
                       STA.B $A5                            ;9D85B0|85A5    |;
                       JSL.L CODE_9FC427                    ;9D85B2|2227C49F|;
                       JSL.L CODE_9EC7BE                    ;9D85B6|22BEC79E|;
                       STZ.B zpCurntTeamLoopVal             ;9D85BA|6491    |;
                       LDA.B $8F                            ;9D85BC|A58F    |;
                       PHA                                  ;9D85BE|48      |;
                       LDA.B $8D                            ;9D85BF|A58D    |;
                       PHA                                  ;9D85C1|48      |;
                       LDA.W #$009C                         ;9D85C2|A99C00  |;
                       STA.B $8F                            ;9D85C5|858F    |;
                       LDA.W #$F3BD                         ;9D85C7|A9BDF3  |;
                       STA.B $8D                            ;9D85CA|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D85CC|22BEC79E|;
                       PLA                                  ;9D85D0|68      |;
                       STA.B $8D                            ;9D85D1|858D    |;
                       PLA                                  ;9D85D3|68      |;
                       STA.B $8F                            ;9D85D4|858F    |;
                       LDA.W $1DB9                          ;9D85D6|ADB91D  |;
                       JSL.L CODE_9DC973                    ;9D85D9|2273C99D|;
                       LDA.B $A5                            ;9D85DD|A5A5    |;
                       STA.W $1D9B                          ;9D85DF|8D9B1D  |;
                       LDA.W #$0001                         ;9D85E2|A90100  |;
                       STA.B $A9                            ;9D85E5|85A9    |;
                       JSL.L CODE_9DC561                    ;9D85E7|2261C59D|;
                       LDA.B $A5                            ;9D85EB|A5A5    |;
                       PHA                                  ;9D85ED|48      |;
                       LDA.W #$0003                         ;9D85EE|A90300  |;
                       STA.B $A9                            ;9D85F1|85A9    |;
                       JSL.L CODE_9FC623                    ;9D85F3|2223C69F|;
                       JSL.L CODE_9EC7BE                    ;9D85F7|22BEC79E|;
                       LDA.B $8F                            ;9D85FB|A58F    |;
                       PHA                                  ;9D85FD|48      |;
                       LDA.B $8D                            ;9D85FE|A58D    |;
                       PHA                                  ;9D8600|48      |;
                       LDA.W #$009C                         ;9D8601|A99C00  |;
                       STA.B $8F                            ;9D8604|858F    |;
                       LDA.W #$F3C2                         ;9D8606|A9C2F3  |;
                       STA.B $8D                            ;9D8609|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D860B|22BEC79E|;
                       PLA                                  ;9D860F|68      |;
                       STA.B $8D                            ;9D8610|858D    |;
                       PLA                                  ;9D8612|68      |;
                       STA.B $8F                            ;9D8613|858F    |;
                       LDA.W $1D9B                          ;9D8615|AD9B1D  |;
                       STA.B $A5                            ;9D8618|85A5    |;
                       JSL.L CODE_9FC427                    ;9D861A|2227C49F|;
                       LDA.W #$0021                         ;9D861E|A92100  |;
                       SEC                                  ;9D8621|38      |;
                       SBC.B [$8D]                          ;9D8622|E78D    |;
                       STA.W $0D0F                          ;9D8624|8D0F0D  |;
                       JSL.L CODE_9EC7BE                    ;9D8627|22BEC79E|;
                       INC.W $1DB9                          ;9D862B|EEB91D  |;
                       JMP.W CODE_9D86AA                    ;9D862E|4CAA86  |;
 
          CODE_9D8631:
                       LDA.W $1C98                          ;9D8631|AD981C  |;
                       STA.L $7E3452                        ;9D8634|8F52347E|;
                       LDA.W $1C9A                          ;9D8638|AD9A1C  |;
                       STA.L $7E3454                        ;9D863B|8F54347E|;
                       JSL.L CODE_9DDDB3                    ;9D863F|22B3DD9D|;
                       JSL.L CODE_9DE0D4                    ;9D8643|22D4E09D|;
                       LDA.W #$0002                         ;9D8647|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9D864A|8591    |;
                       LDA.B $8F                            ;9D864C|A58F    |;
                       PHA                                  ;9D864E|48      |;
                       LDA.B $8D                            ;9D864F|A58D    |;
                       PHA                                  ;9D8651|48      |;
                       LDA.W #$009C                         ;9D8652|A99C00  |;
                       STA.B $8F                            ;9D8655|858F    |;
                       LDA.W #$F3C7                         ;9D8657|A9C7F3  |;
                       STA.B $8D                            ;9D865A|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D865C|22BEC79E|;
                       PLA                                  ;9D8660|68      |;
                       STA.B $8D                            ;9D8661|858D    |;
                       PLA                                  ;9D8663|68      |;
                       STA.B $8F                            ;9D8664|858F    |;
                       JSL.L CODE_9D87B5                    ;9D8666|22B5879D|;
                       LDA.B $A5                            ;9D866A|A5A5    |;
                       PHA                                  ;9D866C|48      |;
                       LDA.W #$0003                         ;9D866D|A90300  |;
                       STA.B $A9                            ;9D8670|85A9    |;
                       JSL.L CODE_9FC623                    ;9D8672|2223C69F|;
                       JSL.L CODE_9EC7BE                    ;9D8676|22BEC79E|;
                       STZ.B zpCurntTeamLoopVal             ;9D867A|6491    |;
                       LDA.B $8F                            ;9D867C|A58F    |;
                       PHA                                  ;9D867E|48      |;
                       LDA.B $8D                            ;9D867F|A58D    |;
                       PHA                                  ;9D8681|48      |;
                       LDA.W #$009C                         ;9D8682|A99C00  |;
                       STA.B $8F                            ;9D8685|858F    |;
                       LDA.W #$F3D6                         ;9D8687|A9D6F3  |;
                       STA.B $8D                            ;9D868A|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D868C|22BEC79E|;
                       PLA                                  ;9D8690|68      |;
                       STA.B $8D                            ;9D8691|858D    |;
                       PLA                                  ;9D8693|68      |;
                       STA.B $8F                            ;9D8694|858F    |;
                       JSL.L CODE_9D87B5                    ;9D8696|22B5879D|;
                       LDA.B $A5                            ;9D869A|A5A5    |;
                       PHA                                  ;9D869C|48      |;
                       LDA.W #$0003                         ;9D869D|A90300  |;
                       STA.B $A9                            ;9D86A0|85A9    |;
                       JSL.L CODE_9FC623                    ;9D86A2|2223C69F|;
                       JSL.L CODE_9EC7BE                    ;9D86A6|22BEC79E|;
 
          CODE_9D86AA:
                       LDA.B $8F                            ;9D86AA|A58F    |;
                       PHA                                  ;9D86AC|48      |;
                       LDA.B $8D                            ;9D86AD|A58D    |;
                       PHA                                  ;9D86AF|48      |;
                       LDA.W #$009C                         ;9D86B0|A99C00  |;
                       STA.B $8F                            ;9D86B3|858F    |;
                       LDA.W #$F3E5                         ;9D86B5|A9E5F3  |;
                       STA.B $8D                            ;9D86B8|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D86BA|22BEC79E|;
                       PLA                                  ;9D86BE|68      |;
                       STA.B $8D                            ;9D86BF|858D    |;
                       PLA                                  ;9D86C1|68      |;
                       STA.B $8F                            ;9D86C2|858F    |;
                       LDA.W $1DB9                          ;9D86C4|ADB91D  |;
                       STA.B $A5                            ;9D86C7|85A5    |;
                       LDA.W #$009D                         ;9D86C9|A99D00  |;
                       STA.B $8F                            ;9D86CC|858F    |;
                       LDA.W #$875A                         ;9D86CE|A95A87  |;
                       STA.B $8D                            ;9D86D1|858D    |;
                       JSL.L CODE_9ED323                    ;9D86D3|2223D39E|;
                       JSL.L CODE_9EC7BE                    ;9D86D7|22BEC79E|;
                       LDA.B $8F                            ;9D86DB|A58F    |;
                       PHA                                  ;9D86DD|48      |;
                       LDA.B $8D                            ;9D86DE|A58D    |;
                       PHA                                  ;9D86E0|48      |;
                       LDA.W #$009C                         ;9D86E1|A99C00  |;
                       STA.B $8F                            ;9D86E4|858F    |;
                       LDA.W #$F3EA                         ;9D86E6|A9EAF3  |;
                       STA.B $8D                            ;9D86E9|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D86EB|22BEC79E|;
                       PLA                                  ;9D86EF|68      |;
                       STA.B $8D                            ;9D86F0|858D    |;
                       PLA                                  ;9D86F2|68      |;
                       STA.B $8F                            ;9D86F3|858F    |;
                       PLA                                  ;9D86F5|68      |;
                       STA.B $A5                            ;9D86F6|85A5    |;
                       PLA                                  ;9D86F8|68      |;
                       CMP.B $A5                            ;9D86F9|C5A5    |;
                       BEQ CODE_9D8737                      ;9D86FB|F03A    |;
                       BMI CODE_9D871B                      ;9D86FD|301C    |;
                       LDA.B $8F                            ;9D86FF|A58F    |;
                       PHA                                  ;9D8701|48      |;
                       LDA.B $8D                            ;9D8702|A58D    |;
                       PHA                                  ;9D8704|48      |;
                       LDA.W #$009C                         ;9D8705|A99C00  |;
                       STA.B $8F                            ;9D8708|858F    |;
                       LDA.W #$F3F8                         ;9D870A|A9F8F3  |;
                       STA.B $8D                            ;9D870D|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D870F|22BEC79E|;
                       PLA                                  ;9D8713|68      |;
                       STA.B $8D                            ;9D8714|858D    |;
                       PLA                                  ;9D8716|68      |;
                       STA.B $8F                            ;9D8717|858F    |;
                       BRA CODE_9D8751                      ;9D8719|8036    |;
 
          CODE_9D871B:
                       LDA.B $8F                            ;9D871B|A58F    |;
                       PHA                                  ;9D871D|48      |;
                       LDA.B $8D                            ;9D871E|A58D    |;
                       PHA                                  ;9D8720|48      |;
                       LDA.W #$009C                         ;9D8721|A99C00  |;
                       STA.B $8F                            ;9D8724|858F    |;
                       LDA.W #$F402                         ;9D8726|A902F4  |;
                       STA.B $8D                            ;9D8729|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D872B|22BEC79E|;
                       PLA                                  ;9D872F|68      |;
                       STA.B $8D                            ;9D8730|858D    |;
                       PLA                                  ;9D8732|68      |;
                       STA.B $8F                            ;9D8733|858F    |;
                       BRA CODE_9D8751                      ;9D8735|801A    |;
 
          CODE_9D8737:
                       LDA.B $8F                            ;9D8737|A58F    |;
                       PHA                                  ;9D8739|48      |;
                       LDA.B $8D                            ;9D873A|A58D    |;
                       PHA                                  ;9D873C|48      |;
                       LDA.W #$009C                         ;9D873D|A99C00  |;
                       STA.B $8F                            ;9D8740|858F    |;
                       LDA.W #$F40C                         ;9D8742|A90CF4  |;
                       STA.B $8D                            ;9D8745|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D8747|22BEC79E|;
                       PLA                                  ;9D874B|68      |;
                       STA.B $8D                            ;9D874C|858D    |;
                       PLA                                  ;9D874E|68      |;
                       STA.B $8F                            ;9D874F|858F    |;
 
          CODE_9D8751:
                       JSL.L CODE_808583                    ;9D8751|22838580|;
                       JSL.L CODE_80AFDE                    ;9D8755|22DEAF80|;
                       RTL                                  ;9D8759|6B      |;
                       db $0D,$00,$20,$20,$20,$54,$65,$61   ;9D875A|        |;
                       db $6D,$20,$20,$20,$20,$0D           ;9D8762|        |;
                       db $00,$20,$20,$43,$65,$6E,$74,$65   ;9D8768|        |;
                       db $72,$20,$20,$20,$0D,$00,$20,$4C   ;9D8770|        |;
                       db $65,$66,$74,$20,$57,$69,$6E,$67   ;9D8778|        |;
                       db $20,$0D,$00,$52,$69,$67,$68,$74   ;9D8780|        |;
                       db $20,$57,$69,$6E,$67,$20,$0D,$00   ;9D8788|        |;
                       db $20,$4C,$65,$66,$74,$20,$44,$65   ;9D8790|        |;
                       db $66,$2E,$20,$0D,$00,$20,$52,$69   ;9D8798|        |;
                       db $67,$68,$74,$20,$44,$65,$66,$2E   ;9D87A0|        |;
                       db $0D,$00,$20,$20,$47,$6F,$61,$6C   ;9D87A8|        |;
                       db $69,$65,$20,$20,$20               ;9D87B0|        |;
 
          CODE_9D87B5:
                       LDY.B zpCurntTeamLoopVal             ;9D87B5|A491    |;
                       LDA.W $1CDC,Y                        ;9D87B7|B9DC1C  |;
                       STA.B $89                            ;9D87BA|8589    |;
                       LDA.W #$009C                         ;9D87BC|A99C00  |;
                       STA.B $8B                            ;9D87BF|858B    |;
                       LDY.W #$0008                         ;9D87C1|A00800  |;
                       LDA.B [$89],Y                        ;9D87C4|B789    |;
                       CLC                                  ;9D87C6|18      |;
                       ADC.B $89                            ;9D87C7|6589    |;
                       CLC                                  ;9D87C9|18      |;
                       ADC.W #$0004                         ;9D87CA|690400  |;
                       STA.B $89                            ;9D87CD|8589    |;
                       LDA.B [$89]                          ;9D87CF|A789    |;
                       AND.W #$00FF                         ;9D87D1|29FF00  |;
                       STA.B $A5                            ;9D87D4|85A5    |;
                       RTL                                  ;9D87D6|6B      |;
 
          CODE_9D87D7:
                       JSL.L CODE_9F96F7                    ;9D87D7|22F7969F|;
                       LDA.W #$0081                         ;9D87DB|A98100  |;
                       STA.B $0E                            ;9D87DE|850E    |;
                       LDA.W #$ABDE                         ;9D87E0|A9DEAB  |;
                       STA.B $0C                            ;9D87E3|850C    |;
                       LDA.W #$007F                         ;9D87E5|A97F00  |;
                       STA.B $12                            ;9D87E8|8512    |;
                       LDA.W #$7800                         ;9D87EA|A90078  |;
                       STA.B $10                            ;9D87ED|8510    |;
                       JSL.L CODE_80C373                    ;9D87EF|2273C380|;
                       JSL.L CODE_9F9708                    ;9D87F3|2208979F|;
                       JSL.L CODE_8086A9                    ;9D87F7|22A98680|;
                       SEP #$20                             ;9D87FB|E220    |;
                       LDA.B #$00                           ;9D87FD|A900    |;
                       STA.W $2107                          ;9D87FF|8D0721  |;
                       LDA.B #$04                           ;9D8802|A904    |;
                       STA.W $2108                          ;9D8804|8D0821  |;
                       LDA.B #$12                           ;9D8807|A912    |;
                       STA.W $210B                          ;9D8809|8D0B21  |;
                       LDA.B #$03                           ;9D880C|A903    |;
                       STA.W $2101                          ;9D880E|8D0121  |;
                       LDA.B #$13                           ;9D8811|A913    |;
                       STA.W $212C                          ;9D8813|8D2C21  |;
                       REP #$30                             ;9D8816|C230    |;
                       LDA.W #$FF00                         ;9D8818|A900FF  |;
                       STA.L $7E35AA                        ;9D881B|8FAA357E|;
                       STA.L $7E35A8                        ;9D881F|8FA8357E|;
                       LDA.W #$0000                         ;9D8823|A90000  |;
                       STA.L $7E35AC                        ;9D8826|8FAC357E|;
                       LDA.L $7E35D0                        ;9D882A|AFD0357E|;
                       ASL A                                ;9D882E|0A      |;
                       ASL A                                ;9D882F|0A      |;
                       ASL A                                ;9D8830|0A      |;
                       ASL A                                ;9D8831|0A      |;
                       ADC.W #$1000                         ;9D8832|690010  |;
                       STA.W $2116                          ;9D8835|8D1621  |;
                       LDA.L $7E35D0                        ;9D8838|AFD0357E|;
                       INC A                                ;9D883C|1A      |;
                       STA.L $7E35B6                        ;9D883D|8FB6357E|;
                       STA.L $7E35C0                        ;9D8841|8FC0357E|;
                       LDA.W #$0000                         ;9D8845|A90000  |;
                       LDY.W #$FFFF                         ;9D8848|A0FFFF  |;
                       LDX.W #$0020                         ;9D884B|A22000  |;
                       JSL.L CODE_8087EA                    ;9D884E|22EA8780|;
                       LDA.W #$0096                         ;9D8852|A99600  |;
                       STA.B $0E                            ;9D8855|850E    |;
                       LDA.W #$A103                         ;9D8857|A903A1  |;
                       STA.B $0C                            ;9D885A|850C    |;
                       LDA.W #$007F                         ;9D885C|A97F00  |;
                       STA.B $12                            ;9D885F|8512    |;
                       LDA.W #$0000                         ;9D8861|A90000  |;
                       STA.B $10                            ;9D8864|8510    |;
                       JSL.L CODE_80C373                    ;9D8866|2273C380|;
                       TXA                                  ;9D886A|8A      |;
                       LSR A                                ;9D886B|4A      |;
                       LSR A                                ;9D886C|4A      |;
                       LSR A                                ;9D886D|4A      |;
                       LSR A                                ;9D886E|4A      |;
                       LSR A                                ;9D886F|4A      |;
                       STA.B $A5                            ;9D8870|85A5    |;
                       CLC                                  ;9D8872|18      |;
                       ADC.L $7E35C0                        ;9D8873|6FC0357E|;
                       STA.L $7E35C0                        ;9D8877|8FC0357E|;
                       LDA.B $A5                            ;9D887B|A5A5    |;
                       CLC                                  ;9D887D|18      |;
                       ADC.L $7E35B6                        ;9D887E|6FB6357E|;
                       STA.L $7E35BC                        ;9D8882|8FBC357E|;
                       LDA.W #$007F                         ;9D8886|A97F00  |;
                       STA.B $8B                            ;9D8889|858B    |;
                       LDA.W #$0000                         ;9D888B|A90000  |;
                       STA.B $89                            ;9D888E|8589    |;
                       LDA.W #$0080                         ;9D8890|A98000  |;
                       STA.B $8F                            ;9D8893|858F    |;
                       LDA.W #$D3D7                         ;9D8895|A9D7D3  |;
                       STA.B $8D                            ;9D8898|858D    |;
                       JSL.L CODE_9B854B                    ;9D889A|224B859B|;
                       LDA.W #$009C                         ;9D889E|A99C00  |;
                       STA.B $8B                            ;9D88A1|858B    |;
                       LDA.W #$8000                         ;9D88A3|A90080  |;
                       STA.B $89                            ;9D88A6|8589    |;
                       LDA.W #$0080                         ;9D88A8|A98000  |;
                       STA.B $8F                            ;9D88AB|858F    |;
                       LDA.W #$D3E7                         ;9D88AD|A9E7D3  |;
                       STA.B $8D                            ;9D88B0|858D    |;
                       LDA.W #$0004                         ;9D88B2|A90400  |;
                       STA.B $A5                            ;9D88B5|85A5    |;
                       CLC                                  ;9D88B7|18      |;
                       ADC.L $7E35C0                        ;9D88B8|6FC0357E|;
                       STA.L $7E35C0                        ;9D88BC|8FC0357E|;
                       LDA.B $A5                            ;9D88C0|A5A5    |;
                       CLC                                  ;9D88C2|18      |;
                       ADC.L $7E35BC                        ;9D88C3|6FBC357E|;
                       STA.L $7E35CE                        ;9D88C7|8FCE357E|;
                       JSL.L CODE_9B854B                    ;9D88CB|224B859B|;
                       LDA.W #$009A                         ;9D88CF|A99A00  |;
                       STA.B $0E                            ;9D88D2|850E    |;
                       LDA.W #$C1F3                         ;9D88D4|A9F3C1  |;
                       STA.B $0C                            ;9D88D7|850C    |;
                       LDA.W #$007F                         ;9D88D9|A97F00  |;
                       STA.B $12                            ;9D88DC|8512    |;
                       LDA.W #$0000                         ;9D88DE|A90000  |;
                       STA.B $10                            ;9D88E1|8510    |;
                       JSL.L CODE_80C373                    ;9D88E3|2273C380|;
                       TXA                                  ;9D88E7|8A      |;
                       LSR A                                ;9D88E8|4A      |;
                       LSR A                                ;9D88E9|4A      |;
                       LSR A                                ;9D88EA|4A      |;
                       LSR A                                ;9D88EB|4A      |;
                       LSR A                                ;9D88EC|4A      |;
                       CLC                                  ;9D88ED|18      |;
                       ADC.L $7E35C0                        ;9D88EE|6FC0357E|;
                       STA.L $7E35C0                        ;9D88F2|8FC0357E|;
                       LDA.W #$007F                         ;9D88F6|A97F00  |;
                       STA.B $0E                            ;9D88F9|850E    |;
                       LDA.W #$0000                         ;9D88FB|A90000  |;
                       STA.B $0C                            ;9D88FE|850C    |;
                       LDA.L $7E35CE                        ;9D8900|AFCE357E|;
                       ASL A                                ;9D8904|0A      |;
                       ASL A                                ;9D8905|0A      |;
                       ASL A                                ;9D8906|0A      |;
                       ASL A                                ;9D8907|0A      |;
                       ADC.W #$1000                         ;9D8908|690010  |;
                       TAY                                  ;9D890B|A8      |;
                       JSL.L CODE_80891F                    ;9D890C|221F8980|;
                       LDA.W #$009C                         ;9D8910|A99C00  |;
                       STA.B $0E                            ;9D8913|850E    |;
                       LDA.W #$81F0                         ;9D8915|A9F081  |;
                       STA.B $0C                            ;9D8918|850C    |;
                       LDX.W #$0120                         ;9D891A|A22001  |;
                       LDY.W #$FFFF                         ;9D891D|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9D8920|221F8980|;
                       LDA.W #$0095                         ;9D8924|A99500  |;
                       STA.B $0E                            ;9D8927|850E    |;
                       LDA.W #$F1AE                         ;9D8929|A9AEF1  |;
                       STA.B $0C                            ;9D892C|850C    |;
                       LDA.W #$007F                         ;9D892E|A97F00  |;
                       STA.B $12                            ;9D8931|8512    |;
                       LDA.W #$0000                         ;9D8933|A90000  |;
                       STA.B $10                            ;9D8936|8510    |;
                       JSL.L CODE_80C373                    ;9D8938|2273C380|;
                       TXA                                  ;9D893C|8A      |;
                       LSR A                                ;9D893D|4A      |;
                       LSR A                                ;9D893E|4A      |;
                       LSR A                                ;9D893F|4A      |;
                       LSR A                                ;9D8940|4A      |;
                       LSR A                                ;9D8941|4A      |;
                       STA.L $7E35B4                        ;9D8942|8FB4357E|;
                       LDA.W #$007F                         ;9D8946|A97F00  |;
                       STA.B $0E                            ;9D8949|850E    |;
                       LDA.W #$0000                         ;9D894B|A90000  |;
                       STA.B $0C                            ;9D894E|850C    |;
                       LDY.W #$1000                         ;9D8950|A00010  |;
                       JSL.L CODE_80891F                    ;9D8953|221F8980|;
                       LDA.W #$009A                         ;9D8957|A99A00  |;
                       STA.B $0E                            ;9D895A|850E    |;
                       LDA.W #$BA95                         ;9D895C|A995BA  |;
                       STA.B $0C                            ;9D895F|850C    |;
                       LDA.W #$007F                         ;9D8961|A97F00  |;
                       STA.B $12                            ;9D8964|8512    |;
                       LDA.W #$0000                         ;9D8966|A90000  |;
                       STA.B $10                            ;9D8969|8510    |;
                       JSL.L CODE_80C373                    ;9D896B|2273C380|;
                       LDA.W #$007F                         ;9D896F|A97F00  |;
                       STA.B $0E                            ;9D8972|850E    |;
                       LDA.W #$0000                         ;9D8974|A90000  |;
                       STA.B $0C                            ;9D8977|850C    |;
                       LDA.W #$007E                         ;9D8979|A97E00  |;
                       STA.B $12                            ;9D897C|8512    |;
                       LDA.W #$3FF4                         ;9D897E|A9F43F  |;
                       STA.B $10                            ;9D8981|8510    |;
                       LDA.W #$0020                         ;9D8983|A92000  |;
                       STA.B $24                            ;9D8986|8524    |;
                       LDA.W #$001C                         ;9D8988|A91C00  |;
                       STA.B $26                            ;9D898B|8526    |;
                       LDX.W #$0000                         ;9D898D|A20000  |;
                       LDY.W #$0000                         ;9D8990|A00000  |;
                       LDA.L $7E35AC                        ;9D8993|AFAC357E|;
                       CLC                                  ;9D8997|18      |;
                       ADC.W #$0C00                         ;9D8998|69000C  |;
                       JSL.L CODE_808E2D                    ;9D899B|222D8E80|;
                       LDA.W #$009A                         ;9D899F|A99A00  |;
                       STA.B $0E                            ;9D89A2|850E    |;
                       LDA.W #$DE57                         ;9D89A4|A957DE  |;
                       STA.B $0C                            ;9D89A7|850C    |;
                       LDA.W #$007F                         ;9D89A9|A97F00  |;
                       STA.B $12                            ;9D89AC|8512    |;
                       LDA.W #$0000                         ;9D89AE|A90000  |;
                       STA.B $10                            ;9D89B1|8510    |;
                       JSL.L CODE_80C373                    ;9D89B3|2273C380|;
                       LDA.W #$007F                         ;9D89B7|A97F00  |;
                       STA.B $0E                            ;9D89BA|850E    |;
                       LDA.W #$0000                         ;9D89BC|A90000  |;
                       STA.B $0C                            ;9D89BF|850C    |;
                       LDY.W #$0000                         ;9D89C1|A00000  |;
                       LDX.W #$0030                         ;9D89C4|A23000  |;
                       JSL.L CODE_9DE0BD                    ;9D89C7|22BDE09D|;
                       LDA.W #$0094                         ;9D89CB|A99400  |;
                       STA.B $0E                            ;9D89CE|850E    |;
                       LDA.W #$D6A5                         ;9D89D0|A9A5D6  |;
                       STA.B $0C                            ;9D89D3|850C    |;
                       LDA.W #$007F                         ;9D89D5|A97F00  |;
                       STA.B $12                            ;9D89D8|8512    |;
                       LDA.W #$0000                         ;9D89DA|A90000  |;
                       STA.B $10                            ;9D89DD|8510    |;
                       JSL.L CODE_80C373                    ;9D89DF|2273C380|;
                       LDA.W #$007F                         ;9D89E3|A97F00  |;
                       STA.B $0E                            ;9D89E6|850E    |;
                       LDA.W #$0000                         ;9D89E8|A90000  |;
                       STA.B $0C                            ;9D89EB|850C    |;
                       LDY.W #$FFFF                         ;9D89ED|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9D89F0|221F8980|;
                       LDA.W $1C98                          ;9D89F4|AD981C  |;
                       CMP.W #$0018                         ;9D89F7|C91800  |;
                       BCS CODE_9D89FE                      ;9D89FA|B002    |;
                       STZ.B zpCurntTeamLoopVal             ;9D89FC|6491    |;
 
          CODE_9D89FE:
                       LDA.W $1C9A                          ;9D89FE|AD9A1C  |;
                       CMP.W #$0018                         ;9D8A01|C91800  |;
                       BCS CODE_9D8A0B                      ;9D8A04|B005    |;
                       LDA.W #$0002                         ;9D8A06|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9D8A09|8591    |;
 
          CODE_9D8A0B:
                       LDA.W #$009A                         ;9D8A0B|A99A00  |;
                       STA.B $0E                            ;9D8A0E|850E    |;
                       LDA.W #$C0CC                         ;9D8A10|A9CCC0  |;
                       STA.B $0C                            ;9D8A13|850C    |;
                       LDA.W #$007F                         ;9D8A15|A97F00  |;
                       STA.B $12                            ;9D8A18|8512    |;
                       LDA.W #$0000                         ;9D8A1A|A90000  |;
                       STA.B $10                            ;9D8A1D|8510    |;
                       JSL.L CODE_80C373                    ;9D8A1F|2273C380|;
                       TXA                                  ;9D8A23|8A      |;
                       SEC                                  ;9D8A24|38      |;
                       SBC.W #$0008                         ;9D8A25|E90800  |;
                       TAY                                  ;9D8A28|A8      |;
                       LDA.B $10                            ;9D8A29|A510    |;
                       CLC                                  ;9D8A2B|18      |;
                       ADC.W #$0006                         ;9D8A2C|690600  |;
                       STA.B $10                            ;9D8A2F|8510    |;
 
          CODE_9D8A31:
                       LDA.B [$10],Y                        ;9D8A31|B710    |;
                       BEQ CODE_9D8A48                      ;9D8A33|F013    |;
                       CLC                                  ;9D8A35|18      |;
                       ADC.L $7E35B4                        ;9D8A36|6FB4357E|;
                       CLC                                  ;9D8A3A|18      |;
                       ADC.L $7E35AC                        ;9D8A3B|6FAC357E|;
                       CLC                                  ;9D8A3F|18      |;
                       ADC.W #$0800                         ;9D8A40|690008  |;
                       TYX                                  ;9D8A43|BB      |;
                       STA.L $7E3FF4,X                      ;9D8A44|9FF43F7E|;
 
          CODE_9D8A48:
                       DEY                                  ;9D8A48|88      |;
                       DEY                                  ;9D8A49|88      |;
                       BPL CODE_9D8A31                      ;9D8A4A|10E5    |;
                       LDA.W #$009A                         ;9D8A4C|A99A00  |;
                       STA.B $0E                            ;9D8A4F|850E    |;
                       LDA.W #$DE57                         ;9D8A51|A957DE  |;
                       STA.B $0C                            ;9D8A54|850C    |;
                       LDA.W #$007F                         ;9D8A56|A97F00  |;
                       STA.B $12                            ;9D8A59|8512    |;
                       LDA.W #$0000                         ;9D8A5B|A90000  |;
                       STA.B $10                            ;9D8A5E|8510    |;
                       JSL.L CODE_80C373                    ;9D8A60|2273C380|;
                       LDA.W #$007F                         ;9D8A64|A97F00  |;
                       STA.B $0E                            ;9D8A67|850E    |;
                       LDA.W #$0000                         ;9D8A69|A90000  |;
                       STA.B $0C                            ;9D8A6C|850C    |;
                       LDY.W #$0000                         ;9D8A6E|A00000  |;
                       LDX.W #$0010                         ;9D8A71|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9D8A74|22BDE09D|;
                       LDA.B $0C                            ;9D8A78|A50C    |;
                       CLC                                  ;9D8A7A|18      |;
                       ADC.W #$0020                         ;9D8A7B|692000  |;
                       STA.B $0C                            ;9D8A7E|850C    |;
                       LDY.W #$0010                         ;9D8A80|A01000  |;
                       LDX.W #$0010                         ;9D8A83|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9D8A86|22BDE09D|;
                       LDA.W #$009A                         ;9D8A8A|A99A00  |;
                       STA.B $0E                            ;9D8A8D|850E    |;
                       LDA.W #$E946                         ;9D8A8F|A946E9  |;
                       STA.B $0C                            ;9D8A92|850C    |;
                       LDA.W #$007F                         ;9D8A94|A97F00  |;
                       STA.B $12                            ;9D8A97|8512    |;
                       LDA.W #$0000                         ;9D8A99|A90000  |;
                       STA.B $10                            ;9D8A9C|8510    |;
                       JSL.L CODE_80C373                    ;9D8A9E|2273C380|;
                       LDA.W #$007F                         ;9D8AA2|A97F00  |;
                       STA.B $0E                            ;9D8AA5|850E    |;
                       LDA.W #$0000                         ;9D8AA7|A90000  |;
                       STA.B $0C                            ;9D8AAA|850C    |;
                       LDY.W #$0020                         ;9D8AAC|A02000  |;
                       LDX.W #$0010                         ;9D8AAF|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9D8AB2|22BDE09D|;
                       SEP #$20                             ;9D8AB6|E220    |;
                       STZ.W $2121                          ;9D8AB8|9C2121  |;
                       STZ.W $2122                          ;9D8ABB|9C2221  |;
                       STZ.W $2122                          ;9D8ABE|9C2221  |;
                       REP #$20                             ;9D8AC1|C220    |;
                       LDA.W #$009A                         ;9D8AC3|A99A00  |;
                       STA.B $0E                            ;9D8AC6|850E    |;
                       LDA.W #$E121                         ;9D8AC8|A921E1  |;
                       STA.B $0C                            ;9D8ACB|850C    |;
                       LDA.W #$007F                         ;9D8ACD|A97F00  |;
                       STA.B $12                            ;9D8AD0|8512    |;
                       LDA.W #$0000                         ;9D8AD2|A90000  |;
                       STA.B $10                            ;9D8AD5|8510    |;
                       JSL.L CODE_80C373                    ;9D8AD7|2273C380|;
                       LDA.W #$007F                         ;9D8ADB|A97F00  |;
                       STA.B $0E                            ;9D8ADE|850E    |;
                       LDA.W #$0000                         ;9D8AE0|A90000  |;
                       STA.B $0C                            ;9D8AE3|850C    |;
                       LDY.W #$0030                         ;9D8AE5|A03000  |;
                       LDX.W #$0020                         ;9D8AE8|A22000  |;
                       JSL.L CODE_9DE0BD                    ;9D8AEB|22BDE09D|;
                       LDA.L $7E35C0                        ;9D8AEF|AFC0357E|;
                       CLC                                  ;9D8AF3|18      |;
                       ADC.W #$1000                         ;9D8AF4|690010  |;
                       STA.L $7E35C0                        ;9D8AF7|8FC0357E|;
                       LDA.W #$009A                         ;9D8AFB|A99A00  |;
                       STA.B $0E                            ;9D8AFE|850E    |;
                       LDA.W #$D3B6                         ;9D8B00|A9B6D3  |;
                       STA.B $0C                            ;9D8B03|850C    |;
                       LDY.W #$0080                         ;9D8B05|A08000  |;
                       LDX.W #$0010                         ;9D8B08|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9D8B0B|22BDE09D|;
                       LDA.W #$009A                         ;9D8B0F|A99A00  |;
                       STA.B $0E                            ;9D8B12|850E    |;
                       LDA.W #$F15C                         ;9D8B14|A95CF1  |;
                       STA.B $0C                            ;9D8B17|850C    |;
                       LDY.W #$00C0                         ;9D8B19|A0C000  |;
                       LDX.W #$0010                         ;9D8B1C|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9D8B1F|22BDE09D|;
                       JSL.L CODE_9DE0D4                    ;9D8B23|22D4E09D|;
                       JSL.L CODE_9DD977                    ;9D8B27|2277D99D|;
                       JSL.L CODE_9DD94D                    ;9D8B2B|224DD99D|;
                       JSL.L CODE_808583                    ;9D8B2F|22838580|;
                       LDX.W #$0000                         ;9D8B33|A20000  |;
                       LDY.W #$0180                         ;9D8B36|A08001  |;
                       LDA.W #$6000                         ;9D8B39|A90060  |;
                       JSL.L CODE_80AEE1                    ;9D8B3C|22E1AE80|;
                       JSL.L CODE_80AF7B                    ;9D8B40|227BAF80|;
                       JSL.L CODE_9DDF73                    ;9D8B44|2273DF9D|;
                       RTL                                  ;9D8B48|6B      |;
 
          CODE_9D8B49:
                       SEP #$20                             ;9D8B49|E220    |;
                       LDA.B #$A0                           ;9D8B4B|A9A0    |;
                       STA.W $2125                          ;9D8B4D|8D2521  |;
                       LDA.B #$0C                           ;9D8B50|A90C    |;
                       STA.W $2126                          ;9D8B52|8D2621  |;
                       LDA.B #$B3                           ;9D8B55|A9B3    |;
                       STA.W $2127                          ;9D8B57|8D2721  |;
                       LDA.B #$10                           ;9D8B5A|A910    |;
                       STA.W $2130                          ;9D8B5C|8D3021  |;
                       LDA.B #$02                           ;9D8B5F|A902    |;
                       STA.W $2131                          ;9D8B61|8D3121  |;
                       LDA.B #$E5                           ;9D8B64|A9E5    |;
                       STA.W $2132                          ;9D8B66|8D3221  |;
                       LDA.B #$44                           ;9D8B69|A944    |;
                       STA.W $4320                          ;9D8B6B|8D2043  |;
                       LDA.B #$9D                           ;9D8B6E|A99D    |;
                       STA.W $4324                          ;9D8B70|8D2443  |;
                       STA.W $4327                          ;9D8B73|8D2743  |;
                       LDX.W #$8BA9                         ;9D8B76|A2A98B  |;
                       STX.W $4322                          ;9D8B79|8E2243  |;
                       LDA.B #$26                           ;9D8B7C|A926    |;
                       STA.W $4321                          ;9D8B7E|8D2143  |;
                       LDA.B #$40                           ;9D8B81|A940    |;
                       STA.W $4330                          ;9D8B83|8D3043  |;
                       LDA.B #$9D                           ;9D8B86|A99D    |;
                       STA.W $4334                          ;9D8B88|8D3443  |;
                       STA.W $4337                          ;9D8B8B|8D3743  |;
                       LDX.W #$8BB5                         ;9D8B8E|A2B58B  |;
                       STX.W $4332                          ;9D8B91|8E3243  |;
                       LDA.B #$32                           ;9D8B94|A932    |;
                       STA.W $4331                          ;9D8B96|8D3143  |;
                       LDA.B #$0C                           ;9D8B99|A90C    |;
                       STA.W $420C                          ;9D8B9B|8D0C42  |;
                       REP #$20                             ;9D8B9E|C220    |;
                       RTL                                  ;9D8BA0|6B      |;
                       db $FF,$00,$FF,$00,$0C,$B3,$FF,$00   ;9D8BA1|        |;
                       db $68,$A1,$8B,$58,$A5,$8B,$14,$A1   ;9D8BA9|        |;
                       db $8B,$00,$E7,$E0,$6E,$B4,$8B,$4C   ;9D8BB1|        |;
                       db $B3,$8B,$14,$B4,$8B,$00           ;9D8BB9|        |;
 
          CODE_9D8BBF:
                       LDA.W #$FFFF                         ;9D8BBF|A9FFFF  |;
                       STA.L $7E346C                        ;9D8BC2|8F6C347E|;
                       STA.L $7E346E                        ;9D8BC6|8F6E347E|;
                       LDA.W #$0000                         ;9D8BCA|A90000  |;
                       STA.L $7E35AA                        ;9D8BCD|8FAA357E|;
                       STA.L $7E35AC                        ;9D8BD1|8FAC357E|;
                       LDA.L $7E34BC                        ;9D8BD5|AFBC347E|;
                       BNE CODE_9D8BDE                      ;9D8BD9|D003    |;
                       JMP.W CODE_9D9064                    ;9D8BDB|4C6490  |;
 
          CODE_9D8BDE:
                       CMP.W #$0004                         ;9D8BDE|C90400  |;
                       BNE CODE_9D8BE6                      ;9D8BE1|D003    |;
                       db $4C,$64,$90                       ;9D8BE3|        |;
 
          CODE_9D8BE6:
                       LDA.L $7E35D4                        ;9D8BE6|AFD4357E|;
                       CMP.W #$0002                         ;9D8BEA|C90200  |;
                       BCC CODE_9D8C15                      ;9D8BED|9026    |;
                       db $AD,$ED,$07,$C9,$31,$ED,$F0,$1E   ;9D8BEF|        |;
                       db $22,$86,$97,$9C,$22,$A9,$86,$80   ;9D8BF7|        |;
                       db $AD,$F3,$07,$D0,$FB,$A9,$93,$00   ;9D8BFF|        |;
                       db $85,$0E,$A9,$31,$ED,$85,$0C,$22   ;9D8C07|        |;
                       db $E0,$A2,$80,$4C,$19,$8C           ;9D8C0F|        |;
 
          CODE_9D8C15:
                       JSL.L CODE_8086A9                    ;9D8C15|22A98680|;
                       SEP #$20                             ;9D8C19|E220    |;
                       LDA.B #$09                           ;9D8C1B|A909    |;
                       STA.W $2105                          ;9D8C1D|8D0521  |;
                       LDA.B #$01                           ;9D8C20|A901    |;
                       STA.W $2107                          ;9D8C22|8D0721  |;
                       LDA.B #$08                           ;9D8C25|A908    |;
                       STA.W $2108                          ;9D8C27|8D0821  |;
                       LDA.B #$39                           ;9D8C2A|A939    |;
                       STA.W $2109                          ;9D8C2C|8D0921  |;
                       LDA.B #$31                           ;9D8C2F|A931    |;
                       STA.W $210B                          ;9D8C31|8D0B21  |;
                       LDA.B #$04                           ;9D8C34|A904    |;
                       STA.W $210C                          ;9D8C36|8D0C21  |;
                       LDA.B #$03                           ;9D8C39|A903    |;
                       STA.W $2101                          ;9D8C3B|8D0121  |;
                       LDA.B #$07                           ;9D8C3E|A907    |;
                       STA.W $212C                          ;9D8C40|8D2C21  |;
                       REP #$30                             ;9D8C43|C230    |;
                       LDA.W #$0095                         ;9D8C45|A99500  |;
                       STA.B $0E                            ;9D8C48|850E    |;
                       LDA.W #$F1AE                         ;9D8C4A|A9AEF1  |;
                       STA.B $0C                            ;9D8C4D|850C    |;
                       LDA.W #$007F                         ;9D8C4F|A97F00  |;
                       STA.B $12                            ;9D8C52|8512    |;
                       LDA.W #$0000                         ;9D8C54|A90000  |;
                       STA.B $10                            ;9D8C57|8510    |;
                       JSL.L CODE_80C373                    ;9D8C59|2273C380|;
                       LDA.W #$007F                         ;9D8C5D|A97F00  |;
                       STA.B $0E                            ;9D8C60|850E    |;
                       LDA.W #$0000                         ;9D8C62|A90000  |;
                       STA.B $0C                            ;9D8C65|850C    |;
                       LDY.W #$3000                         ;9D8C67|A00030  |;
                       JSL.L CODE_80891F                    ;9D8C6A|221F8980|;
                       LDA.W #$009A                         ;9D8C6E|A99A00  |;
                       STA.B $0E                            ;9D8C71|850E    |;
                       LDA.W #$BA95                         ;9D8C73|A995BA  |;
                       STA.B $0C                            ;9D8C76|850C    |;
                       JSL.L CODE_80C373                    ;9D8C78|2273C380|;
                       LDA.W #$007F                         ;9D8C7C|A97F00  |;
                       STA.B $0E                            ;9D8C7F|850E    |;
                       LDA.W #$0246                         ;9D8C81|A94602  |;
                       STA.B $0C                            ;9D8C84|850C    |;
                       PHX                                  ;9D8C86|DA      |;
                       LDX.W #$0240                         ;9D8C87|A24002  |;
                       LDY.W #$0800                         ;9D8C8A|A00008  |;
                       JSL.L CODE_80891F                    ;9D8C8D|221F8980|;
                       PLA                                  ;9D8C91|68      |;
                       SEC                                  ;9D8C92|38      |;
                       SBC.W #$0240                         ;9D8C93|E94002  |;
                       TAX                                  ;9D8C96|AA      |;
                       LDY.W #$0920                         ;9D8C97|A02009  |;
                       JSL.L CODE_80891F                    ;9D8C9A|221F8980|;
                       LDA.W #$009A                         ;9D8C9E|A99A00  |;
                       STA.B $0E                            ;9D8CA1|850E    |;
                       LDA.W #$E121                         ;9D8CA3|A921E1  |;
                       STA.B $0C                            ;9D8CA6|850C    |;
                       JSL.L CODE_80C373                    ;9D8CA8|2273C380|;
                       LDA.W #$007F                         ;9D8CAC|A97F00  |;
                       STA.B $0E                            ;9D8CAF|850E    |;
                       LDA.W #$0000                         ;9D8CB1|A90000  |;
                       STA.B $0C                            ;9D8CB4|850C    |;
                       LDY.W #$0000                         ;9D8CB6|A00000  |;
                       LDX.W #$0010                         ;9D8CB9|A21000  |;
                       JSL.L CODE_808723                    ;9D8CBC|22238780|;
                       LDA.W #$009A                         ;9D8CC0|A99A00  |;
                       STA.B $0E                            ;9D8CC3|850E    |;
                       LDA.W #$E8BF                         ;9D8CC5|A9BFE8  |;
                       STA.B $0C                            ;9D8CC8|850C    |;
                       LDA.W #$007F                         ;9D8CCA|A97F00  |;
                       STA.B $12                            ;9D8CCD|8512    |;
                       LDA.W #$0000                         ;9D8CCF|A90000  |;
                       STA.B $10                            ;9D8CD2|8510    |;
                       JSL.L CODE_80C373                    ;9D8CD4|2273C380|;
                       TXA                                  ;9D8CD8|8A      |;
                       LSR A                                ;9D8CD9|4A      |;
                       LSR A                                ;9D8CDA|4A      |;
                       LSR A                                ;9D8CDB|4A      |;
                       LSR A                                ;9D8CDC|4A      |;
                       LSR A                                ;9D8CDD|4A      |;
                       STA.L $7E35B6                        ;9D8CDE|8FB6357E|;
                       LDA.W #$007F                         ;9D8CE2|A97F00  |;
                       STA.B $0E                            ;9D8CE5|850E    |;
                       LDA.W #$0000                         ;9D8CE7|A90000  |;
                       STA.B $0C                            ;9D8CEA|850C    |;
                       LDY.W #$1000                         ;9D8CEC|A00010  |;
                       JSL.L CODE_80891F                    ;9D8CEF|221F8980|;
                       LDA.W #$009A                         ;9D8CF3|A99A00  |;
                       STA.B $0E                            ;9D8CF6|850E    |;
                       LDA.W #$E027                         ;9D8CF8|A927E0  |;
                       STA.B $0C                            ;9D8CFB|850C    |;
                       LDA.W #$007E                         ;9D8CFD|A97E00  |;
                       STA.B $12                            ;9D8D00|8512    |;
                       LDA.W #$35F4                         ;9D8D02|A9F435  |;
                       STA.B $10                            ;9D8D05|8510    |;
                       JSL.L CODE_80C373                    ;9D8D07|2273C380|;
                       LDA.W #$0096                         ;9D8D0B|A99600  |;
                       STA.B $0E                            ;9D8D0E|850E    |;
                       LDA.W #$A103                         ;9D8D10|A903A1  |;
                       STA.B $0C                            ;9D8D13|850C    |;
                       LDA.W #$007F                         ;9D8D15|A97F00  |;
                       STA.B $12                            ;9D8D18|8512    |;
                       LDA.W #$0000                         ;9D8D1A|A90000  |;
                       STA.B $10                            ;9D8D1D|8510    |;
                       JSL.L CODE_80C373                    ;9D8D1F|2273C380|;
                       TXA                                  ;9D8D23|8A      |;
                       LSR A                                ;9D8D24|4A      |;
                       LSR A                                ;9D8D25|4A      |;
                       LSR A                                ;9D8D26|4A      |;
                       LSR A                                ;9D8D27|4A      |;
                       LSR A                                ;9D8D28|4A      |;
                       STA.B $A5                            ;9D8D29|85A5    |;
                       ADC.L $7E35B6                        ;9D8D2B|6FB6357E|;
                       STA.L $7E35AE                        ;9D8D2F|8FAE357E|;
                       LDA.W #$007F                         ;9D8D33|A97F00  |;
                       STA.B $8B                            ;9D8D36|858B    |;
                       LDA.W #$0000                         ;9D8D38|A90000  |;
                       STA.B $89                            ;9D8D3B|8589    |;
                       LDA.W #$0080                         ;9D8D3D|A98000  |;
                       STA.B $8F                            ;9D8D40|858F    |;
                       LDA.W #$D3D7                         ;9D8D42|A9D7D3  |;
                       STA.B $8D                            ;9D8D45|858D    |;
                       JSL.L CODE_9B854B                    ;9D8D47|224B859B|;
                       LDA.W #$0096                         ;9D8D4B|A99600  |;
                       STA.B $0E                            ;9D8D4E|850E    |;
                       LDA.W #$A103                         ;9D8D50|A903A1  |;
                       STA.B $0C                            ;9D8D53|850C    |;
                       LDA.W #$007F                         ;9D8D55|A97F00  |;
                       STA.B $12                            ;9D8D58|8512    |;
                       LDA.W #$0000                         ;9D8D5A|A90000  |;
                       STA.B $10                            ;9D8D5D|8510    |;
                       JSL.L CODE_80C373                    ;9D8D5F|2273C380|;
                       TXA                                  ;9D8D63|8A      |;
                       LSR A                                ;9D8D64|4A      |;
                       LSR A                                ;9D8D65|4A      |;
                       LSR A                                ;9D8D66|4A      |;
                       LSR A                                ;9D8D67|4A      |;
                       LSR A                                ;9D8D68|4A      |;
                       ADC.L $7E35AE                        ;9D8D69|6FAE357E|;
                       STA.L $7E35CE                        ;9D8D6D|8FCE357E|;
                       LDA.W #$007F                         ;9D8D71|A97F00  |;
                       STA.B $0E                            ;9D8D74|850E    |;
                       LDA.W #$0000                         ;9D8D76|A90000  |;
                       STA.B $0C                            ;9D8D79|850C    |;
                       LDY.W #$FFFF                         ;9D8D7B|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9D8D7E|221F8980|;
                       LDA.W #$031A                         ;9D8D82|A91A03  |;
                       STA.L $7E3676                        ;9D8D85|8F76367E|;
                       STA.L $7E3696                        ;9D8D89|8F96367E|;
                       STA.L $7E36B6                        ;9D8D8D|8FB6367E|;
                       STA.L $7E36D6                        ;9D8D91|8FD6367E|;
                       LDA.W #$007E                         ;9D8D95|A97E00  |;
                       STA.B $12                            ;9D8D98|8512    |;
                       LDA.W #$3674                         ;9D8D9A|A97436  |;
                       STA.B $10                            ;9D8D9D|8510    |;
                       LDX.W #$001B                         ;9D8D9F|A21B00  |;
 
          CODE_9D8DA2:
                       PHX                                  ;9D8DA2|DA      |;
                       TXA                                  ;9D8DA3|8A      |;
                       ASL A                                ;9D8DA4|0A      |;
                       ASL A                                ;9D8DA5|0A      |;
                       TAX                                  ;9D8DA6|AA      |;
                       LDA.L UNREACH_9C8511,X               ;9D8DA7|BF11859C|;
                       STA.B $0E                            ;9D8DAB|850E    |;
                       LDA.L UNREACH_9C850F,X               ;9D8DAD|BF0F859C|;
                       STA.B $0C                            ;9D8DB1|850C    |;
                       LDY.W #$0008                         ;9D8DB3|A00800  |;
                       LDA.B [$0C],Y                        ;9D8DB6|B70C    |;
                       PHA                                  ;9D8DB8|48      |;
                       LDA.B $03,S                          ;9D8DB9|A303    |;
                       ASL A                                ;9D8DBB|0A      |;
                       TAX                                  ;9D8DBC|AA      |;
                       LDA.L UNREACH_9D93AD,X               ;9D8DBD|BFAD939D|;
                       AND.W #$00FF                         ;9D8DC1|29FF00  |;
                       TAY                                  ;9D8DC4|A8      |;
                       PLA                                  ;9D8DC5|68      |;
                       STA.B [$10],Y                        ;9D8DC6|9710    |;
                       LDA.B $01,S                          ;9D8DC8|A301    |;
                       ASL A                                ;9D8DCA|0A      |;
                       ASL A                                ;9D8DCB|0A      |;
                       ASL A                                ;9D8DCC|0A      |;
                       TAX                                  ;9D8DCD|AA      |;
                       JSR.W CODE_9D93E3                    ;9D8DCE|20E393  |;
                       LDY.W #$0012                         ;9D8DD1|A01200  |;
                       LDA.B [$0C],Y                        ;9D8DD4|B70C    |;
                       PHA                                  ;9D8DD6|48      |;
                       LDA.B $03,S                          ;9D8DD7|A303    |;
                       ASL A                                ;9D8DD9|0A      |;
                       TAX                                  ;9D8DDA|AA      |;
                       INX                                  ;9D8DDB|E8      |;
                       LDA.L UNREACH_9D93AD,X               ;9D8DDC|BFAD939D|;
                       AND.W #$00FF                         ;9D8DE0|29FF00  |;
                       TAY                                  ;9D8DE3|A8      |;
                       PLA                                  ;9D8DE4|68      |;
                       STA.B [$10],Y                        ;9D8DE5|9710    |;
                       LDA.B $01,S                          ;9D8DE7|A301    |;
                       ASL A                                ;9D8DE9|0A      |;
                       INC A                                ;9D8DEA|1A      |;
                       ASL A                                ;9D8DEB|0A      |;
                       ASL A                                ;9D8DEC|0A      |;
                       TAX                                  ;9D8DED|AA      |;
                       JSR.W CODE_9D93E3                    ;9D8DEE|20E393  |;
                       PLX                                  ;9D8DF1|FA      |;
                       DEX                                  ;9D8DF2|CA      |;
                       BPL CODE_9D8DA2                      ;9D8DF3|10AD    |;
                       LDA.L $7E35CE                        ;9D8DF5|AFCE357E|;
                       CLC                                  ;9D8DF9|18      |;
                       ADC.W #$0070                         ;9D8DFA|697000  |;
                       STA.L $7E35C6                        ;9D8DFD|8FC6357E|;
                       LDA.W #$007F                         ;9D8E01|A97F00  |;
                       STA.B $0E                            ;9D8E04|850E    |;
                       LDA.W #$6700                         ;9D8E06|A90067  |;
                       STA.B $0C                            ;9D8E09|850C    |;
                       LDX.W #$0E00                         ;9D8E0B|A2000E  |;
                       LDY.W #$FFFF                         ;9D8E0E|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9D8E11|221F8980|;
                       LDA.W #$009A                         ;9D8E15|A99A00  |;
                       STA.B $0E                            ;9D8E18|850E    |;
                       LDA.W #$E884                         ;9D8E1A|A984E8  |;
                       STA.B $0C                            ;9D8E1D|850C    |;
                       LDA.W #$007F                         ;9D8E1F|A97F00  |;
                       STA.B $12                            ;9D8E22|8512    |;
                       LDA.W #$0000                         ;9D8E24|A90000  |;
                       STA.B $10                            ;9D8E27|8510    |;
                       JSL.L CODE_80C373                    ;9D8E29|2273C380|;
                       LDA.W #$007F                         ;9D8E2D|A97F00  |;
                       STA.B $0E                            ;9D8E30|850E    |;
                       LDA.W #$0000                         ;9D8E32|A90000  |;
                       STA.B $0C                            ;9D8E35|850C    |;
                       LDA.W #$007E                         ;9D8E37|A97E00  |;
                       STA.B $12                            ;9D8E3A|8512    |;
                       LDA.W #$3654                         ;9D8E3C|A95436  |;
                       STA.B $10                            ;9D8E3F|8510    |;
                       LDX.W #$0020                         ;9D8E41|A22000  |;
                       JSL.L CODE_808F2F                    ;9D8E44|222F8F80|;
                       LDA.W #$0096                         ;9D8E48|A99600  |;
                       STA.B $0E                            ;9D8E4B|850E    |;
                       LDA.W #$8C02                         ;9D8E4D|A9028C  |;
                       STA.B $0C                            ;9D8E50|850C    |;
                       LDA.W #$007F                         ;9D8E52|A97F00  |;
                       STA.B $12                            ;9D8E55|8512    |;
                       LDA.W #$0000                         ;9D8E57|A90000  |;
                       STA.B $10                            ;9D8E5A|8510    |;
                       JSL.L CODE_80C373                    ;9D8E5C|2273C380|;
                       LDA.W #$007F                         ;9D8E60|A97F00  |;
                       STA.B $0E                            ;9D8E63|850E    |;
                       LDA.W #$0000                         ;9D8E65|A90000  |;
                       STA.B $0C                            ;9D8E68|850C    |;
                       LDY.W #$FFFF                         ;9D8E6A|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9D8E6D|221F8980|;
                       LDA.W #$009A                         ;9D8E71|A99A00  |;
                       STA.B $0E                            ;9D8E74|850E    |;
                       LDA.W #$B610                         ;9D8E76|A910B6  |;
                       STA.B $0C                            ;9D8E79|850C    |;
                       LDA.W #$007E                         ;9D8E7B|A97E00  |;
                       STA.B $12                            ;9D8E7E|8512    |;
                       LDA.W #$4EF4                         ;9D8E80|A9F44E  |;
                       STA.B $10                            ;9D8E83|8510    |;
                       JSL.L CODE_80C373                    ;9D8E85|2273C380|;
                       LDA.W #$007E                         ;9D8E89|A97E00  |;
                       STA.B $0E                            ;9D8E8C|850E    |;
                       LDA.W #$4EF4                         ;9D8E8E|A9F44E  |;
                       STA.B $0C                            ;9D8E91|850C    |;
                       LDA.W #$007E                         ;9D8E93|A97E00  |;
                       STA.B $12                            ;9D8E96|8512    |;
                       LDA.W #$47F4                         ;9D8E98|A9F447  |;
                       STA.B $10                            ;9D8E9B|8510    |;
                       STX.B $00                            ;9D8E9D|8600    |;
                       JSL.L CODE_9B85C2                    ;9D8E9F|22C2859B|;
                       LDA.W #$007E                         ;9D8EA3|A97E00  |;
                       STA.B $12                            ;9D8EA6|8512    |;
                       LDA.W #$4EF4                         ;9D8EA8|A9F44E  |;
                       STA.B $10                            ;9D8EAB|8510    |;
                       LDA.W #$0000                         ;9D8EAD|A90000  |;
                       LDX.W #$8000                         ;9D8EB0|A20080  |;
                       JSL.L CODE_808EDF                    ;9D8EB3|22DF8E80|;
                       LDA.W #$007E                         ;9D8EB7|A97E00  |;
                       STA.B $12                            ;9D8EBA|8512    |;
                       LDA.W #$A676                         ;9D8EBC|A976A6  |;
                       STA.B $10                            ;9D8EBF|8510    |;
                       LDA.W #$0000                         ;9D8EC1|A90000  |;
                       LDX.W #$4002                         ;9D8EC4|A20240  |;
                       JSL.L CODE_808EDF                    ;9D8EC7|22DF8E80|;
                       LDA.W #$007E                         ;9D8ECB|A97E00  |;
                       STA.B $8F                            ;9D8ECE|858F    |;
                       LDA.W #$34D2                         ;9D8ED0|A9D234  |;
                       STA.B $8D                            ;9D8ED3|858D    |;
                       LDA.W #$009D                         ;9D8ED5|A99D00  |;
                       STA.B $8B                            ;9D8ED8|858B    |;
                       LDA.W #$94FE                         ;9D8EDA|A9FE94  |;
                       STA.B $89                            ;9D8EDD|8589    |;
                       LDA.L $7E35D4                        ;9D8EDF|AFD4357E|;
                       ASL A                                ;9D8EE3|0A      |;
                       TAY                                  ;9D8EE4|A8      |;
                       LDA.B [$89],Y                        ;9D8EE5|B789    |;
                       ADC.B $89                            ;9D8EE7|6589    |;
                       STA.B $89                            ;9D8EE9|8589    |;
                       LDA.B [$89]                          ;9D8EEB|A789    |;
                       INC.B $89                            ;9D8EED|E689    |;
                       AND.W #$00FF                         ;9D8EEF|29FF00  |;
                       STA.B $B5                            ;9D8EF2|85B5    |;
                       LDA.B $8F                            ;9D8EF4|A58F    |;
                       PHA                                  ;9D8EF6|48      |;
                       LDA.B $8D                            ;9D8EF7|A58D    |;
                       PHA                                  ;9D8EF9|48      |;
                       LDA.W #$009C                         ;9D8EFA|A99C00  |;
                       STA.B $8F                            ;9D8EFD|858F    |;
                       LDA.W #$F415                         ;9D8EFF|A915F4  |;
                       STA.B $8D                            ;9D8F02|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D8F04|22BEC79E|;
                       PLA                                  ;9D8F08|68      |;
                       STA.B $8D                            ;9D8F09|858D    |;
                       PLA                                  ;9D8F0B|68      |;
                       STA.B $8F                            ;9D8F0C|858F    |;
                       LDA.W #$0001                         ;9D8F0E|A90100  |;
                       STA.L $7E3466                        ;9D8F11|8F66347E|;
 
          CODE_9D8F15:
                       LDA.B [$89]                          ;9D8F15|A789    |;
                       INC.B $89                            ;9D8F17|E689    |;
                       AND.W #$00FF                         ;9D8F19|29FF00  |;
                       STA.W $0D0F                          ;9D8F1C|8D0F0D  |;
                       LDA.W #$3000                         ;9D8F1F|A90030  |;
                       STA.W $0D0D                          ;9D8F22|8D0D0D  |;
                       LDA.B [$89]                          ;9D8F25|A789    |;
                       INC.B $89                            ;9D8F27|E689    |;
                       AND.W #$00FF                         ;9D8F29|29FF00  |;
                       STA.W $0D11                          ;9D8F2C|8D110D  |;
                       LDA.B [$8D]                          ;9D8F2F|A78D    |;
                       INC.B $8D                            ;9D8F31|E68D    |;
                       AND.W #$00FF                         ;9D8F33|29FF00  |;
                       STA.B $CD                            ;9D8F36|85CD    |;
                       TAY                                  ;9D8F38|A8      |;
                       LDA.L $7E34F2                        ;9D8F39|AFF2347E|;
                       TAX                                  ;9D8F3D|AA      |;
                       TYA                                  ;9D8F3E|98      |;
                       EOR.L $7E34D2,X                      ;9D8F3F|5FD2347E|;
                       AND.W #$00FF                         ;9D8F43|29FF00  |;
                       BNE CODE_9D8F4E                      ;9D8F46|D006    |;
                       LDA.W #$3400                         ;9D8F48|A90034  |;
                       STA.W $0D0D                          ;9D8F4B|8D0D0D  |;
 
          CODE_9D8F4E:
                       LDA.B $CD                            ;9D8F4E|A5CD    |;
                       ASL A                                ;9D8F50|0A      |;
                       TAX                                  ;9D8F51|AA      |;
                       LDA.L Banner_Team_Text_PTR,X         ;9D8F52|BF49969C|;
                       STA.B $0C                            ;9D8F56|850C    |;
                       LDA.W #$009C                         ;9D8F58|A99C00  |;
                       STA.B $0E                            ;9D8F5B|850E    |;
                       LDA.W $0D0F                          ;9D8F5D|AD0F0D  |;
                       PHA                                  ;9D8F60|48      |;
                       LDA.W #$005C                         ;9D8F61|A95C00  |;
                       STA.W $1D59                          ;9D8F64|8D591D  |;
                       LDA.W #$9C53                         ;9D8F67|A9539C  |;
                       STA.W $1D5A                          ;9D8F6A|8D5A1D  |;
                       LDA.W #$009D                         ;9D8F6D|A99D00  |;
                       STA.W $1D5C                          ;9D8F70|8D5C1D  |;
                       JSL.L CODE_9D9A5C                    ;9D8F73|225C9A9D|;
                       PLA                                  ;9D8F77|68      |;
                       STA.W $0D0F                          ;9D8F78|8D0F0D  |;
                       LDA.B $CD                            ;9D8F7B|A5CD    |;
                       ASL A                                ;9D8F7D|0A      |;
                       ASL A                                ;9D8F7E|0A      |;
                       ASL A                                ;9D8F7F|0A      |;
                       CLC                                  ;9D8F80|18      |;
                       ADC.W #$7500                         ;9D8F81|690075  |;
                       STA.B zpCurntTeamLoopVal             ;9D8F84|8591    |;
                       LDA.W #$0000                         ;9D8F86|A90000  |;
                       ADC.W #$007F                         ;9D8F89|697F00  |;
                       STA.B $93                            ;9D8F8C|8593    |;
                       LDA.W $0D11                          ;9D8F8E|AD110D  |;
                       ASL A                                ;9D8F91|0A      |;
                       ASL A                                ;9D8F92|0A      |;
                       ASL A                                ;9D8F93|0A      |;
                       ASL A                                ;9D8F94|0A      |;
                       ASL A                                ;9D8F95|0A      |;
                       ASL A                                ;9D8F96|0A      |;
                       ASL A                                ;9D8F97|0A      |;
                       ADC.W $0D0F                          ;9D8F98|6D0F0D  |;
                       ASL A                                ;9D8F9B|0A      |;
                       TAX                                  ;9D8F9C|AA      |;
                       LDA.W #$0007                         ;9D8F9D|A90700  |;
                       STA.B $C5                            ;9D8FA0|85C5    |;
                       STA.B $C7                            ;9D8FA2|85C7    |;
                       LDA.B [zpCurntTeamLoopVal]           ;9D8FA4|A791    |;
                       CLC                                  ;9D8FA6|18      |;
                       ADC.L $7E35CE                        ;9D8FA7|6FCE357E|;
                       STA.L $7EA676,X                      ;9D8FAB|9F76A67E|;
                       ORA.W #$4000                         ;9D8FAF|090040  |;
                       STA.L $7EA686,X                      ;9D8FB2|9F86A67E|;
                       INX                                  ;9D8FB6|E8      |;
                       INX                                  ;9D8FB7|E8      |;
                       INC.B zpCurntTeamLoopVal             ;9D8FB8|E691    |;
                       INC.B zpCurntTeamLoopVal             ;9D8FBA|E691    |;
                       LDA.B [zpCurntTeamLoopVal]           ;9D8FBC|A791    |;
                       CLC                                  ;9D8FBE|18      |;
                       ADC.L $7E35CE                        ;9D8FBF|6FCE357E|;
 
          CODE_9D8FC3:
                       STA.L $7EA676,X                      ;9D8FC3|9F76A67E|;
                       INX                                  ;9D8FC7|E8      |;
                       INX                                  ;9D8FC8|E8      |;
                       DEC.B $C5                            ;9D8FC9|C6C5    |;
                       BNE CODE_9D8FC3                      ;9D8FCB|D0F6    |;
                       INC.B zpCurntTeamLoopVal             ;9D8FCD|E691    |;
                       INC.B zpCurntTeamLoopVal             ;9D8FCF|E691    |;
                       LDA.B [zpCurntTeamLoopVal]           ;9D8FD1|A791    |;
                       CLC                                  ;9D8FD3|18      |;
                       ADC.L $7E35CE                        ;9D8FD4|6FCE357E|;
                       ORA.W #$8000                         ;9D8FD8|090080  |;
                       STA.L $7EA766,X                      ;9D8FDB|9F66A77E|;
                       ORA.W #$C000                         ;9D8FDF|0900C0  |;
                       STA.L $7EA776,X                      ;9D8FE2|9F76A77E|;
                       INX                                  ;9D8FE6|E8      |;
                       INX                                  ;9D8FE7|E8      |;
                       INC.B zpCurntTeamLoopVal             ;9D8FE8|E691    |;
                       INC.B zpCurntTeamLoopVal             ;9D8FEA|E691    |;
                       LDA.B [zpCurntTeamLoopVal]           ;9D8FEC|A791    |;
                       CLC                                  ;9D8FEE|18      |;
                       ADC.L $7E35CE                        ;9D8FEF|6FCE357E|;
                       ORA.W #$8000                         ;9D8FF3|090080  |;
 
          CODE_9D8FF6:
                       STA.L $7EA766,X                      ;9D8FF6|9F66A77E|;
                       INX                                  ;9D8FFA|E8      |;
                       INX                                  ;9D8FFB|E8      |;
                       DEC.B $C7                            ;9D8FFC|C6C7    |;
                       BNE CODE_9D8FF6                      ;9D8FFE|D0F6    |;
                       DEC.B $B5                            ;9D9000|C6B5    |;
                       BEQ CODE_9D9007                      ;9D9002|F003    |;
                       JMP.W CODE_9D8F15                    ;9D9004|4C158F  |;
 
          CODE_9D9007:
                       LDA.W #$007E                         ;9D9007|A97E00  |;
                       STA.B $0E                            ;9D900A|850E    |;
                       LDA.W #$4EF4                         ;9D900C|A9F44E  |;
                       STA.B $0C                            ;9D900F|850C    |;
                       LDY.W #$4000                         ;9D9011|A00040  |;
                       LDA.L $7E3466                        ;9D9014|AF66347E|;
                       INC A                                ;9D9018|1A      |;
                       ASL A                                ;9D9019|0A      |;
                       ASL A                                ;9D901A|0A      |;
                       ASL A                                ;9D901B|0A      |;
                       ASL A                                ;9D901C|0A      |;
                       TAX                                  ;9D901D|AA      |;
                       JSL.L CODE_80891F                    ;9D901E|221F8980|;
 
          CODE_9D9022:
                       LDA.B [$89]                          ;9D9022|A789    |;
                       INC.B $89                            ;9D9024|E689    |;
                       AND.W #$00FF                         ;9D9026|29FF00  |;
                       CMP.W #$00FF                         ;9D9029|C9FF00  |;
                       BEQ CODE_9D906E                      ;9D902C|F040    |;
                       ASL A                                ;9D902E|0A      |;
                       ADC.W #$B72C                         ;9D902F|692CB7  |;
                       STA.B $C5                            ;9D9032|85C5    |;
                       LDA.W #$0099                         ;9D9034|A99900  |;
                       STA.B $C7                            ;9D9037|85C7    |;
                       LDA.B [$89]                          ;9D9039|A789    |;
                       INC.B $89                            ;9D903B|E689    |;
                       AND.W #$00FF                         ;9D903D|29FF00  |;
                       ASL A                                ;9D9040|0A      |;
                       TAX                                  ;9D9041|AA      |;
                       LDA.L UNREACH_99B728                 ;9D9042|AF28B799|;
                       TAY                                  ;9D9046|A8      |;
 
          CODE_9D9047:
                       LDA.B [$C5]                          ;9D9047|A7C5    |;
                       STA.L $7EA876,X                      ;9D9049|9F76A87E|;
                       LDA.B $C5                            ;9D904D|A5C5    |;
                       CLC                                  ;9D904F|18      |;
                       ADC.L UNREACH_99B726                 ;9D9050|6F26B799|;
                       ADC.L UNREACH_99B726                 ;9D9054|6F26B799|;
                       STA.B $C5                            ;9D9058|85C5    |;
                       TXA                                  ;9D905A|8A      |;
                       ADC.W #$0100                         ;9D905B|690001  |;
                       TAX                                  ;9D905E|AA      |;
                       DEY                                  ;9D905F|88      |;
                       BNE CODE_9D9047                      ;9D9060|D0E5    |;
                       BRA CODE_9D9022                      ;9D9062|80BE    |;
 
          CODE_9D9064:
                       STZ.W $0CD7                          ;9D9064|9CD70C  |;
                       LDA.W #$FFFF                         ;9D9067|A9FFFF  |;
                       STA.W $0CD5                          ;9D906A|8DD50C  |;
                       RTL                                  ;9D906D|6B      |;
 
          CODE_9D906E:
                       LDA.B [$89]                          ;9D906E|A789    |;
                       INC.B $89                            ;9D9070|E689    |;
                       AND.W #$00FF                         ;9D9072|29FF00  |;
                       ASL A                                ;9D9075|0A      |;
                       ASL A                                ;9D9076|0A      |;
                       ASL A                                ;9D9077|0A      |;
                       STA.B $AF                            ;9D9078|85AF    |;
                       LDA.B [$89]                          ;9D907A|A789    |;
                       INC.B $89                            ;9D907C|E689    |;
                       AND.W #$00FF                         ;9D907E|29FF00  |;
                       ASL A                                ;9D9081|0A      |;
                       ASL A                                ;9D9082|0A      |;
                       ASL A                                ;9D9083|0A      |;
                       STA.B $A7                            ;9D9084|85A7    |;
                       STZ.B $B3                            ;9D9086|64B3    |;
                       LDA.B $8F                            ;9D9088|A58F    |;
                       PHA                                  ;9D908A|48      |;
                       LDA.B $8D                            ;9D908B|A58D    |;
                       PHA                                  ;9D908D|48      |;
                       LDA.W #$009C                         ;9D908E|A99C00  |;
                       STA.B $8F                            ;9D9091|858F    |;
                       LDA.W #$F41A                         ;9D9093|A91AF4  |;
                       STA.B $8D                            ;9D9096|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D9098|22BEC79E|;
                       PLA                                  ;9D909C|68      |;
                       STA.B $8D                            ;9D909D|858D    |;
                       PLA                                  ;9D909F|68      |;
                       STA.B $8F                            ;9D90A0|858F    |;
                       LDA.W $0ACF                          ;9D90A2|ADCF0A  |;
                       CMP.W #$0007                         ;9D90A5|C90700  |;
                       BEQ CODE_9D910B                      ;9D90A8|F061    |;
                       LDA.B [$89]                          ;9D90AA|A789    |;
                       INC.B $89                            ;9D90AC|E689    |;
                       AND.W #$00FF                         ;9D90AE|29FF00  |;
                       STA.B $B5                            ;9D90B1|85B5    |;
                       BEQ CODE_9D910B                      ;9D90B3|F056    |;
                       STZ.B zpCurntTeamLoopVal             ;9D90B5|6491    |;
 
          CODE_9D90B7:
                       LDA.B [$89]                          ;9D90B7|A789    |;
                       INC.B $89                            ;9D90B9|E689    |;
                       AND.W #$00FF                         ;9D90BB|29FF00  |;
                       STA.W $0D0F                          ;9D90BE|8D0F0D  |;
                       LDA.B [$89]                          ;9D90C1|A789    |;
                       INC.B $89                            ;9D90C3|E689    |;
                       AND.W #$00FF                         ;9D90C5|29FF00  |;
                       ASL A                                ;9D90C8|0A      |;
                       ASL A                                ;9D90C9|0A      |;
                       STA.W $0D11                          ;9D90CA|8D110D  |;
                       LDA.W #$0000                         ;9D90CD|A90000  |;
                       STA.B $8F                            ;9D90D0|858F    |;
                       LDA.W #$0A2A                         ;9D90D2|A92A0A  |;
                       STA.B $8D                            ;9D90D5|858D    |;
                       LDA.W #$0005                         ;9D90D7|A90500  |;
                       STA.W $0A2A                          ;9D90DA|8D2A0A  |;
                       LDX.B zpCurntTeamLoopVal             ;9D90DD|A691    |;
                       LDA.L $7E3548,X                      ;9D90DF|BF48357E|;
                       ADC.W #$0030                         ;9D90E3|693000  |;
                       STA.W $0A2C                          ;9D90E6|8D2C0A  |;
                       LDA.W #$002D                         ;9D90E9|A92D00  |;
                       STA.W $0A2D                          ;9D90EC|8D2D0A  |;
                       LDA.L $7E3558,X                      ;9D90EF|BF58357E|;
                       ADC.W #$0030                         ;9D90F3|693000  |;
                       STA.W $0A2E                          ;9D90F6|8D2E0A  |;
                       LDA.W #$6E82                         ;9D90F9|A9826E  |;
                       STA.W $0CD9                          ;9D90FC|8DD90C  |;
                       JSL.L CODE_9EC7BE                    ;9D90FF|22BEC79E|;
                       INC.B zpCurntTeamLoopVal             ;9D9103|E691    |;
                       INC.B zpCurntTeamLoopVal             ;9D9105|E691    |;
                       DEC.B $B5                            ;9D9107|C6B5    |;
                       BNE CODE_9D90B7                      ;9D9109|D0AC    |;
 
          CODE_9D910B:
                       LDA.W #$0095                         ;9D910B|A99500  |;
                       STA.B $0E                            ;9D910E|850E    |;
                       LDA.W #$FF9B                         ;9D9110|A99BFF  |;
                       STA.B $0C                            ;9D9113|850C    |;
                       LDA.W #$007F                         ;9D9115|A97F00  |;
                       STA.B $12                            ;9D9118|8512    |;
                       LDA.W #$0000                         ;9D911A|A90000  |;
                       STA.B $10                            ;9D911D|8510    |;
                       JSL.L CODE_80C373                    ;9D911F|2273C380|;
                       LDA.W #$007F                         ;9D9123|A97F00  |;
                       STA.B $0E                            ;9D9126|850E    |;
                       LDA.W #$0000                         ;9D9128|A90000  |;
                       STA.B $0C                            ;9D912B|850C    |;
                       LDA.W #$007E                         ;9D912D|A97E00  |;
                       STA.B $12                            ;9D9130|8512    |;
                       LDA.W #$A676                         ;9D9132|A976A6  |;
                       STA.B $10                            ;9D9135|8510    |;
                       LDA.W #$0080                         ;9D9137|A98000  |;
                       STA.B $24                            ;9D913A|8524    |;
                       LDX.W #$003D                         ;9D913C|A23D00  |;
                       LDY.W #$0008                         ;9D913F|A00800  |;
                       LDA.L $7E35C6                        ;9D9142|AFC6357E|;
                       ORA.W #$0C00                         ;9D9146|09000C  |;
                       JSL.L CODE_808E2D                    ;9D9149|222D8E80|;
                       LDA.B $8F                            ;9D914D|A58F    |;
                       PHA                                  ;9D914F|48      |;
                       LDA.B $8D                            ;9D9150|A58D    |;
                       PHA                                  ;9D9152|48      |;
                       LDA.W #$009C                         ;9D9153|A99C00  |;
                       STA.B $8F                            ;9D9156|858F    |;
                       LDA.W #$F41F                         ;9D9158|A91FF4  |;
                       STA.B $8D                            ;9D915B|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D915D|22BEC79E|;
                       PLA                                  ;9D9161|68      |;
                       STA.B $8D                            ;9D9162|858D    |;
                       PLA                                  ;9D9164|68      |;
                       STA.B $8F                            ;9D9165|858F    |;
                       LDA.W #$6E82                         ;9D9167|A9826E  |;
                       STA.W $0CD9                          ;9D916A|8DD90C  |;
                       JSL.L CODE_9BC6C9                    ;9D916D|22C9C69B|;
                       LDA.W #$0080                         ;9D9171|A98000  |;
                       STA.L $7EA670                        ;9D9174|8F70A67E|;
                       STA.L $7EC676                        ;9D9178|8F76C67E|;
                       LDA.W #$0020                         ;9D917C|A92000  |;
                       STA.L $7EA672                        ;9D917F|8F72A67E|;
                       STA.L $7EC678                        ;9D9183|8F78C67E|;
                       LDA.W #$007E                         ;9D9187|A97E00  |;
                       STA.B $0E                            ;9D918A|850E    |;
                       LDA.W #$C676                         ;9D918C|A976C6  |;
                       STA.B $0C                            ;9D918F|850C    |;
                       LDA.W #$3800                         ;9D9191|A90038  |;
                       STA.W $079C                          ;9D9194|8D9C07  |;
                       LDA.W #$0020                         ;9D9197|A92000  |;
                       STA.B $24                            ;9D919A|8524    |;
                       STZ.B $26                            ;9D919C|6426    |;
                       LDA.W #$0040                         ;9D919E|A94000  |;
                       STA.B $18                            ;9D91A1|8518    |;
                       LDA.W #$0020                         ;9D91A3|A92000  |;
                       STA.B $1A                            ;9D91A6|851A    |;
                       LDX.W #$0000                         ;9D91A8|A20000  |;
                       LDY.W #$0000                         ;9D91AB|A00000  |;
                       JSL.L CODE_808BED                    ;9D91AE|22ED8B80|;
                       LDA.W #$007E                         ;9D91B2|A97E00  |;
                       STA.B $0E                            ;9D91B5|850E    |;
                       LDA.W #$A670                         ;9D91B7|A970A6  |;
                       STA.B $0C                            ;9D91BA|850C    |;
                       STZ.W $079C                          ;9D91BC|9C9C07  |;
                       LDA.W #$0020                         ;9D91BF|A92000  |;
                       STA.B $24                            ;9D91C2|8524    |;
                       STZ.B $26                            ;9D91C4|6426    |;
                       LDA.W #$0040                         ;9D91C6|A94000  |;
                       STA.B $18                            ;9D91C9|8518    |;
                       LDA.W #$001C                         ;9D91CB|A91C00  |;
                       STA.B $1A                            ;9D91CE|851A    |;
                       LDX.W #$0000                         ;9D91D0|A20000  |;
                       LDY.W #$0000                         ;9D91D3|A00000  |;
                       JSL.L CODE_808BED                    ;9D91D6|22ED8B80|;
                       LDA.W #$0180                         ;9D91DA|A98001  |;
                       STA.W $0CED                          ;9D91DD|8DED0C  |;
                       SEC                                  ;9D91E0|38      |;
                       SBC.W #$0100                         ;9D91E1|E90001  |;
                       STA.W $07D6                          ;9D91E4|8DD607  |;
                       STA.W $07DE                          ;9D91E7|8DDE07  |;
                       SEC                                  ;9D91EA|38      |;
                       SBC.W #$0080                         ;9D91EB|E98000  |;
                       STA.W $07DA                          ;9D91EE|8DDA07  |;
                       LDA.W #$FFFC                         ;9D91F1|A9FCFF  |;
                       STA.W $07E0                          ;9D91F4|8DE007  |;
                       LDA.W #$1D47                         ;9D91F7|A9471D  |;
                       STA.L $7E3616                        ;9D91FA|8F16367E|;
                       STA.L $7E361E                        ;9D91FE|8F1E367E|;
                       LDA.W #$FFFF                         ;9D9202|A9FFFF  |;
                       STA.L $7E361A                        ;9D9205|8F1A367E|;
                       LDA.W #$007E                         ;9D9209|A97E00  |;
                       STA.B $0E                            ;9D920C|850E    |;
                       LDA.W #$3614                         ;9D920E|A91436  |;
                       STA.B $0C                            ;9D9211|850C    |;
                       LDY.W #$0010                         ;9D9213|A01000  |;
                       LDX.W #$0070                         ;9D9216|A27000  |;
                       JSL.L CODE_808723                    ;9D9219|22238780|;
                       JSL.L CODE_8086BD                    ;9D921D|22BD8680|;
 
          CODE_9D9221:
                       JSL.L CODE_808583                    ;9D9221|22838580|;
                       JSL.L CODE_9B8017                    ;9D9225|2217809B|;
                       LDA.W $0AB8                          ;9D9229|ADB80A  |;
                       ORA.W $0ABA                          ;9D922C|0DBA0A  |;
                       CMP.W #$1000                         ;9D922F|C90010  |;
                       BNE CODE_9D9237                      ;9D9232|D003    |;
                       JMP.W CODE_9D9064                    ;9D9234|4C6490  |;
 
          CODE_9D9237:
                       LDA.B $83                            ;9D9237|A583    |;
                       CMP.B $C1                            ;9D9239|C5C1    |;
                       BEQ CODE_9D9221                      ;9D923B|F0E4    |;
                       STA.B $C1                            ;9D923D|85C1    |;
                       LDX.W #$3622                         ;9D923F|A22236  |;
                       LDY.W #$007E                         ;9D9242|A07E00  |;
                       JSL.L CODE_9D96A9                    ;9D9245|22A9969D|;
                       LDA.W #$007E                         ;9D9249|A97E00  |;
                       STA.B $0E                            ;9D924C|850E    |;
                       LDA.W #$3614                         ;9D924E|A91436  |;
                       STA.B $0C                            ;9D9251|850C    |;
                       LDY.W #$0010                         ;9D9253|A01000  |;
                       LDX.W #$0010                         ;9D9256|A21000  |;
                       JSL.L CODE_808723                    ;9D9259|22238780|;
                       LDA.W $0776                          ;9D925D|AD7607  |;
                       ORA.W $0778                          ;9D9260|0D7807  |;
                       BIT.W #$0200                         ;9D9263|890002  |;
                       BNE UNREACH_9D9274                   ;9D9266|D00C    |;
                       BIT.W #$0100                         ;9D9268|890001  |;
                       BNE UNREACH_9D927C                   ;9D926B|D00F    |;
                       LDA.B $B3                            ;9D926D|A5B3    |;
                       BNE UNREACH_9D9281                   ;9D926F|D010    |;
                       JMP.W CODE_9D9221                    ;9D9271|4C2192  |;
 
       UNREACH_9D9274:
                       db $A9,$FE,$FF,$85,$B3,$4C,$81,$92   ;9D9274|        |;
 
       UNREACH_9D927C:
                       db $A9,$02,$00,$85,$B3               ;9D927C|        |;
 
       UNREACH_9D9281:
                       db $AD,$ED,$0C,$18,$65,$B3,$C5,$AF   ;9D9281|        |;
                       db $B0,$03,$4C,$94,$93,$C5,$A7,$90   ;9D9289|        |;
                       db $03,$4C,$94,$93,$8D,$ED,$0C,$29   ;9D9291|        |;
                       db $07,$00,$F0,$03,$4C,$6E,$93,$A5   ;9D9299|        |;
                       db $B3,$30,$69,$AD,$ED,$0C,$4A,$4A   ;9D92A1|        |;
                       db $4A,$18,$69,$2F,$00,$C9,$80,$00   ;9D92A9|        |;
                       db $90,$03,$4C,$6E,$93,$85,$24,$48   ;9D92B1|        |;
                       db $A9,$7E,$00,$85,$0E,$A9,$70,$A6   ;9D92B9|        |;
                       db $85,$0C,$9C,$9C,$07,$64,$26,$A9   ;9D92C1|        |;
                       db $01,$00,$85,$18,$A9,$1C,$00,$85   ;9D92C9|        |;
                       db $1A,$A5,$24,$38,$E9,$20,$00,$29   ;9D92D1|        |;
                       db $3F,$00,$AA,$DA,$A0,$00,$00,$22   ;9D92D9|        |;
                       db $ED,$8B,$80,$A9,$7E,$00,$85,$0E   ;9D92E1|        |;
                       db $A9,$76,$C6,$85,$0C,$A9,$00,$38   ;9D92E9|        |;
                       db $8D,$9C,$07,$FA,$68,$85,$24,$64   ;9D92F1|        |;
                       db $26,$A9,$01,$00,$85,$18,$A9,$20   ;9D92F9|        |;
                       db $00,$85,$1A,$A0,$00,$00,$22,$ED   ;9D9301|        |;
                       db $8B,$80,$80,$61,$AD,$ED,$0C,$4A   ;9D9309|        |;
                       db $4A,$4A,$38,$E9,$10,$00,$90,$55   ;9D9311|        |;
                       db $85,$24,$48,$A9,$7E,$00,$85,$0E   ;9D9319|        |;
                       db $A9,$70,$A6,$85,$0C,$9C,$9C,$07   ;9D9321|        |;
                       db $64,$26,$A9,$01,$00,$85,$18,$A9   ;9D9329|        |;
                       db $1C,$00,$85,$1A,$A5,$24,$38,$E9   ;9D9331|        |;
                       db $20,$00,$29,$3F,$00,$AA,$DA,$A0   ;9D9339|        |;
                       db $00,$00,$22,$ED,$8B,$80,$A9,$7E   ;9D9341|        |;
                       db $00,$85,$0E,$A9,$76,$C6,$85,$0C   ;9D9349|        |;
                       db $A9,$00,$38,$8D,$9C,$07,$FA,$68   ;9D9351|        |;
                       db $85,$24,$64,$26,$A9,$01,$00,$85   ;9D9359|        |;
                       db $18,$A9,$20,$00,$85,$1A,$A0,$00   ;9D9361|        |;
                       db $00,$22,$ED,$8B,$80,$AD,$ED,$0C   ;9D9369|        |;
                       db $C9,$58,$00,$F0,$1E,$C9,$B0,$00   ;9D9371|        |;
                       db $F0,$19,$C9,$08,$01,$F0,$14,$C9   ;9D9379|        |;
                       db $80,$01,$F0,$0F,$C9,$F8,$01,$F0   ;9D9381|        |;
                       db $0A,$C9,$50,$02,$F0,$05,$C9,$A8   ;9D9389|        |;
                       db $02,$D0,$02,$64,$B3,$AD,$ED,$0C   ;9D9391|        |;
                       db $38,$E9,$00,$01,$8D,$D6,$07,$8D   ;9D9399|        |;
                       db $DE,$07,$38,$E9,$80,$00,$8D,$DA   ;9D93A1|        |;
                       db $07,$4C,$21,$92                   ;9D93A9|        |;
 
       UNREACH_9D93AD:
                       db $04,$06,$08,$0A,$0C,$0E,$10,$12   ;9D93AD|        |;
                       db $14,$16,$18,$1A,$1C,$1E,$24,$26   ;9D93B5|        |;
                       db $28,$2A,$2C,$2E,$30,$32,$34,$36   ;9D93BD|        |;
                       db $38,$3A,$3C,$3E,$44,$46,$48,$4A   ;9D93C5|        |;
                       db $4C,$4E,$50,$52,$54,$56,$58,$5A   ;9D93CD|        |;
                       db $5C,$5E,$64,$66,$68,$6A,$6C,$6E   ;9D93D5|        |;
                       db $70,$72,$74,$76,$78,$7A           ;9D93DD|        |;
 
          CODE_9D93E3:
                       TXA                                  ;9D93E3|8A      |;
                       ASL A                                ;9D93E4|0A      |;
                       ASL A                                ;9D93E5|0A      |;
                       ASL A                                ;9D93E6|0A      |;
                       ASL A                                ;9D93E7|0A      |;
                       PHA                                  ;9D93E8|48      |;
                       SEP #$20                             ;9D93E9|E220    |;
                       TXA                                  ;9D93EB|8A      |;
                       LSR A                                ;9D93EC|4A      |;
                       STA.L $7F7500,X                      ;9D93ED|9F00757F|;
                       INC A                                ;9D93F1|1A      |;
                       STA.L $7F7502,X                      ;9D93F2|9F02757F|;
                       TYA                                  ;9D93F6|98      |;
                       LSR A                                ;9D93F7|4A      |;
                       LSR A                                ;9D93F8|4A      |;
                       LSR A                                ;9D93F9|4A      |;
                       AND.B #$1C                           ;9D93FA|291C    |;
                       CLC                                  ;9D93FC|18      |;
                       ADC.B #$30                           ;9D93FD|6930    |;
                       CPX.W #$0200                         ;9D93FF|E00002  |;
                       BCC CODE_9D9406                      ;9D9402|9002    |;
                       db $09,$01                           ;9D9404|        |;
 
          CODE_9D9406:
                       STA.L $7F7501,X                      ;9D9406|9F01757F|;
                       STA.L $7F7503,X                      ;9D940A|9F03757F|;
                       LDA.B $01,S                          ;9D940E|A301    |;
                       TAX                                  ;9D9410|AA      |;
                       TYA                                  ;9D9411|98      |;
                       LSR A                                ;9D9412|4A      |;
                       AND.B #$0F                           ;9D9413|290F    |;
                       STA.B $00                            ;9D9415|8500    |;
                       JSR.W CODE_9D942A                    ;9D9417|202A94  |;
                       REP #$20                             ;9D941A|C220    |;
                       PLA                                  ;9D941C|68      |;
                       CLC                                  ;9D941D|18      |;
                       ADC.W #$0020                         ;9D941E|692000  |;
                       TAX                                  ;9D9421|AA      |;
                       SEP #$20                             ;9D9422|E220    |;
                       JSR.W CODE_9D9494                    ;9D9424|209494  |;
                       REP #$20                             ;9D9427|C220    |;
                       RTS                                  ;9D9429|60      |;
 
          CODE_9D942A:
                       LDA.B #$01                           ;9D942A|A901    |;
                       PHA                                  ;9D942C|48      |;
                       LDY.W #$0007                         ;9D942D|A00700  |;
 
          CODE_9D9430:
                       PHX                                  ;9D9430|DA      |;
                       LDA.B $03,S                          ;9D9431|A303    |;
                       AND.B #$01                           ;9D9433|2901    |;
                       BEQ CODE_9D943F                      ;9D9435|F008    |;
                       LDA.B #$FF                           ;9D9437|A9FF    |;
                       STA.L $7F6700,X                      ;9D9439|9F00677F|;
                       BRA CODE_9D9445                      ;9D943D|8006    |;
 
          CODE_9D943F:
                       LDA.B #$80                           ;9D943F|A980    |;
                       STA.L $7F6700,X                      ;9D9441|9F00677F|;
 
          CODE_9D9445:
                       INX                                  ;9D9445|E8      |;
                       LDA.B $03,S                          ;9D9446|A303    |;
                       AND.B #$02                           ;9D9448|2902    |;
                       BEQ CODE_9D9454                      ;9D944A|F008    |;
                       LDA.B #$7F                           ;9D944C|A97F    |;
                       STA.L $7F6700,X                      ;9D944E|9F00677F|;
                       BRA CODE_9D945A                      ;9D9452|8006    |;
 
          CODE_9D9454:
                       LDA.B #$00                           ;9D9454|A900    |;
                       STA.L $7F6700,X                      ;9D9456|9F00677F|;
 
          CODE_9D945A:
                       TXA                                  ;9D945A|8A      |;
                       CLC                                  ;9D945B|18      |;
                       ADC.B #$0F                           ;9D945C|690F    |;
                       TAX                                  ;9D945E|AA      |;
                       LDA.B $03,S                          ;9D945F|A303    |;
                       AND.B #$04                           ;9D9461|2904    |;
                       BEQ CODE_9D946D                      ;9D9463|F008    |;
                       LDA.B #$7F                           ;9D9465|A97F    |;
                       STA.L $7F6700,X                      ;9D9467|9F00677F|;
                       BRA CODE_9D9473                      ;9D946B|8006    |;
 
          CODE_9D946D:
                       LDA.B #$00                           ;9D946D|A900    |;
                       STA.L $7F6700,X                      ;9D946F|9F00677F|;
 
          CODE_9D9473:
                       INX                                  ;9D9473|E8      |;
                       LDA.B $03,S                          ;9D9474|A303    |;
                       AND.B #$08                           ;9D9476|2908    |;
                       BEQ CODE_9D9482                      ;9D9478|F008    |;
                       LDA.B #$7F                           ;9D947A|A97F    |;
                       STA.L $7F6700,X                      ;9D947C|9F00677F|;
                       BRA CODE_9D9488                      ;9D9480|8006    |;
 
          CODE_9D9482:
                       LDA.B #$00                           ;9D9482|A900    |;
                       STA.L $7F6700,X                      ;9D9484|9F00677F|;
 
          CODE_9D9488:
                       LDA.B $00                            ;9D9488|A500    |;
                       STA.B $03,S                          ;9D948A|8303    |;
                       PLX                                  ;9D948C|FA      |;
                       INX                                  ;9D948D|E8      |;
                       INX                                  ;9D948E|E8      |;
                       DEY                                  ;9D948F|88      |;
                       BPL CODE_9D9430                      ;9D9490|109E    |;
                       PLA                                  ;9D9492|68      |;
                       RTS                                  ;9D9493|60      |;
 
          CODE_9D9494:
                       LDA.B #$01                           ;9D9494|A901    |;
                       PHA                                  ;9D9496|48      |;
                       LDY.W #$0007                         ;9D9497|A00700  |;
 
          CODE_9D949A:
                       PHX                                  ;9D949A|DA      |;
                       LDA.B $03,S                          ;9D949B|A303    |;
                       AND.B #$01                           ;9D949D|2901    |;
                       BEQ CODE_9D94A9                      ;9D949F|F008    |;
                       LDA.B #$FF                           ;9D94A1|A9FF    |;
                       STA.L $7F6700,X                      ;9D94A3|9F00677F|;
                       BRA CODE_9D94AF                      ;9D94A7|8006    |;
 
          CODE_9D94A9:
                       LDA.B #$00                           ;9D94A9|A900    |;
                       STA.L $7F6700,X                      ;9D94AB|9F00677F|;
 
          CODE_9D94AF:
                       INX                                  ;9D94AF|E8      |;
                       LDA.B $03,S                          ;9D94B0|A303    |;
                       AND.B #$02                           ;9D94B2|2902    |;
                       BEQ CODE_9D94BE                      ;9D94B4|F008    |;
                       LDA.B #$FF                           ;9D94B6|A9FF    |;
                       STA.L $7F6700,X                      ;9D94B8|9F00677F|;
                       BRA CODE_9D94C4                      ;9D94BC|8006    |;
 
          CODE_9D94BE:
                       LDA.B #$00                           ;9D94BE|A900    |;
                       STA.L $7F6700,X                      ;9D94C0|9F00677F|;
 
          CODE_9D94C4:
                       TXA                                  ;9D94C4|8A      |;
                       CLC                                  ;9D94C5|18      |;
                       ADC.B #$0F                           ;9D94C6|690F    |;
                       TAX                                  ;9D94C8|AA      |;
                       LDA.B $03,S                          ;9D94C9|A303    |;
                       AND.B #$04                           ;9D94CB|2904    |;
                       BEQ CODE_9D94D7                      ;9D94CD|F008    |;
                       LDA.B #$FF                           ;9D94CF|A9FF    |;
                       STA.L $7F6700,X                      ;9D94D1|9F00677F|;
                       BRA CODE_9D94DD                      ;9D94D5|8006    |;
 
          CODE_9D94D7:
                       LDA.B #$00                           ;9D94D7|A900    |;
                       STA.L $7F6700,X                      ;9D94D9|9F00677F|;
 
          CODE_9D94DD:
                       INX                                  ;9D94DD|E8      |;
                       LDA.B $03,S                          ;9D94DE|A303    |;
                       AND.B #$08                           ;9D94E0|2908    |;
                       BEQ CODE_9D94EC                      ;9D94E2|F008    |;
                       LDA.B #$FF                           ;9D94E4|A9FF    |;
                       STA.L $7F6700,X                      ;9D94E6|9F00677F|;
                       BRA CODE_9D94F2                      ;9D94EA|8006    |;
 
          CODE_9D94EC:
                       LDA.B #$00                           ;9D94EC|A900    |;
                       STA.L $7F6700,X                      ;9D94EE|9F00677F|;
 
          CODE_9D94F2:
                       LDA.B $00                            ;9D94F2|A500    |;
                       STA.B $03,S                          ;9D94F4|8303    |;
                       PLX                                  ;9D94F6|FA      |;
                       INX                                  ;9D94F7|E8      |;
                       INX                                  ;9D94F8|E8      |;
                       DEY                                  ;9D94F9|88      |;
                       BPL CODE_9D949A                      ;9D94FA|109E    |;
                       PLA                                  ;9D94FC|68      |;
                       RTS                                  ;9D94FD|60      |;
                       db $0A,$00,$47,$00,$94,$00,$ED,$00   ;9D94FE|        |;
                       db $4C,$01,$10,$31,$02,$31,$05,$31   ;9D9506|        |;
                       db $08,$31,$0B,$31,$0E,$31,$11,$31   ;9D950E|        |;
                       db $14,$31,$17,$46,$02,$46,$05,$46   ;9D9516|        |;
                       db $08,$46,$0B,$46,$0E,$46,$11,$46   ;9D951E|        |;
                       db $14,$46,$17,$00,$3A,$01,$3B,$0A   ;9D9526|        |;
                       db $44,$0B,$45,$FF,$30,$30,$08,$34   ;9D952E|        |;
                       db $04,$34,$0A,$34,$10,$34,$16,$49   ;9D9536|        |;
                       db $04,$49,$0A,$49,$10,$49,$16,$18   ;9D953E|        |;
                       db $26,$02,$26,$05,$26,$08,$26,$0B   ;9D9546|        |;
                       db $26,$0E,$26,$11,$26,$14,$26,$17   ;9D954E|        |;
                       db $51,$02,$51,$05,$51,$08,$51,$0B   ;9D9556|        |;
                       db $51,$0E,$51,$11,$51,$14,$51,$17   ;9D955E|        |;
                       db $31,$04,$31,$0A,$31,$0F,$31,$15   ;9D9566|        |;
                       db $46,$04,$46,$0A,$46,$0F,$46,$15   ;9D956E|        |;
                       db $00,$2F,$01,$30,$02,$3A,$03,$3B   ;9D9576|        |;
                       db $08,$44,$09,$45,$0A,$4F,$0B,$50   ;9D957E|        |;
                       db $FF,$21,$3F,$04,$34,$08,$34,$12   ;9D9586|        |;
                       db $49,$08,$49,$12,$1C,$1B,$02,$1B   ;9D958E|        |;
                       db $05,$1B,$08,$1B,$0B,$1B,$0E,$1B   ;9D9596|        |;
                       db $11,$1B,$14,$1B,$17,$5C,$02,$5C   ;9D959E|        |;
                       db $05,$5C,$08,$5C,$0B,$5C,$0E,$5C   ;9D95A6|        |;
                       db $11,$5C,$14,$5C,$17,$26,$04,$26   ;9D95AE|        |;
                       db $0A,$26,$0F,$26,$15,$51,$04,$51   ;9D95B6|        |;
                       db $0A,$51,$0F,$51,$15,$31,$07,$31   ;9D95BE|        |;
                       db $12,$46,$07,$46,$12,$00,$24,$01   ;9D95C6|        |;
                       db $25,$02,$2F,$03,$30,$04,$3A,$05   ;9D95CE|        |;
                       db $3B,$06,$44,$07,$45,$08,$4F,$09   ;9D95D6|        |;
                       db $50,$0A,$5A,$0B,$5B,$FF,$16,$4A   ;9D95DE|        |;
                       db $02,$34,$0D,$49,$0D,$1E,$10,$02   ;9D95E6|        |;
                       db $10,$05,$10,$08,$10,$0B,$10,$0E   ;9D95EE|        |;
                       db $10,$11,$10,$14,$10,$17,$67,$02   ;9D95F6|        |;
                       db $67,$05,$67,$08,$67,$0B,$67,$0E   ;9D95FE|        |;
                       db $67,$11,$67,$14,$67,$17,$1B,$04   ;9D9606|        |;
                       db $1B,$0A,$1B,$0F,$1B,$15,$5C,$04   ;9D960E|        |;
                       db $5C,$0A,$5C,$0F,$5C,$15,$26,$07   ;9D9616|        |;
                       db $26,$12,$51,$07,$51,$12,$31,$0C   ;9D961E|        |;
                       db $46,$0C,$00,$19,$01,$1A,$02,$24   ;9D9626|        |;
                       db $03,$25,$04,$2F,$05,$30,$05,$3A   ;9D962E|        |;
                       db $06,$45,$06,$4F,$07,$50,$08,$5A   ;9D9636|        |;
                       db $09,$5B,$0A,$65,$0B,$66,$FF,$0B   ;9D963E|        |;
                       db $55,$01,$3E,$17,$1F,$10,$02,$10   ;9D9646|        |;
                       db $05,$10,$08,$10,$0B,$10,$0E,$10   ;9D964E|        |;
                       db $11,$10,$14,$10,$17,$67,$02,$67   ;9D9656|        |;
                       db $05,$67,$08,$67,$0B,$67,$0E,$67   ;9D965E|        |;
                       db $11,$67,$14,$67,$17,$1B,$04,$1B   ;9D9666|        |;
                       db $0A,$1B,$0F,$1B,$15,$5C,$04,$5C   ;9D966E|        |;
                       db $0A,$5C,$0F,$5C,$15,$26,$07,$26   ;9D9676|        |;
                       db $12,$51,$07,$51,$12,$31,$0C,$46   ;9D967E|        |;
                       db $0C,$3B,$17,$00,$19,$01,$1A,$02   ;9D9686|        |;
                       db $24,$03,$25,$04,$2F,$05,$30,$05   ;9D968E|        |;
                       db $3A,$06,$45,$06,$4F,$07,$50,$08   ;9D9696|        |;
                       db $5A,$09,$5B,$0A,$65,$0B,$66,$FF   ;9D969E|        |;
                       db $0B,$55,$00                       ;9D96A6|        |;
 
          CODE_9D96A9:
                       PHX                                  ;9D96A9|DA      |;
                       PHY                                  ;9D96AA|5A      |;
                       LDA.B $83                            ;9D96AB|A583    |;
                       STA.B $08                            ;9D96AD|8508    |;
                       LDA.W #$001E                         ;9D96AF|A91E00  |;
                       STA.B $04                            ;9D96B2|8504    |;
                       JSL.L CODE_8092FD                    ;9D96B4|22FD9280|;
                       LDA.W $4216                          ;9D96B8|AD1642  |;
                       STA.B $C5                            ;9D96BB|85C5    |;
                       LDA.B $00                            ;9D96BD|A500    |;
                       STA.B $08                            ;9D96BF|8508    |;
                       LDA.W #$0002                         ;9D96C1|A90200  |;
                       STA.B $04                            ;9D96C4|8504    |;
                       JSL.L CODE_8092FD                    ;9D96C6|22FD9280|;
                       LDA.W $4216                          ;9D96CA|AD1642  |;
                       ASL A                                ;9D96CD|0A      |;
                       TAX                                  ;9D96CE|AA      |;
                       LDA.L DATA8_9D977D,X                 ;9D96CF|BF7D979D|;
                       XBA                                  ;9D96D3|EB      |;
                       AND.W #$00FF                         ;9D96D4|29FF00  |;
                       LSR A                                ;9D96D7|4A      |;
                       LSR A                                ;9D96D8|4A      |;
                       STA.B $C7                            ;9D96D9|85C7    |;
                       LDA.L DATA8_9D977F,X                 ;9D96DB|BF7F979D|;
                       XBA                                  ;9D96DF|EB      |;
                       AND.W #$00FF                         ;9D96E0|29FF00  |;
                       LSR A                                ;9D96E3|4A      |;
                       LSR A                                ;9D96E4|4A      |;
                       SEC                                  ;9D96E5|38      |;
                       SBC.B $C7                            ;9D96E6|E5C7    |;
                       PHX                                  ;9D96E8|DA      |;
                       LDX.B $C5                            ;9D96E9|A6C5    |;
                       JSL.L CODE_809062                    ;9D96EB|22629080|;
                       LDA.W #$001E                         ;9D96EF|A91E00  |;
                       STA.B $04                            ;9D96F2|8504    |;
                       JSL.L CODE_8091FC                    ;9D96F4|22FC9180|;
                       PLX                                  ;9D96F8|FA      |;
                       LDA.B $00                            ;9D96F9|A500    |;
                       CLC                                  ;9D96FB|18      |;
                       ADC.B $C7                            ;9D96FC|65C7    |;
                       AND.W #$001F                         ;9D96FE|291F00  |;
                       XBA                                  ;9D9701|EB      |;
                       AND.W #$FF00                         ;9D9702|2900FF  |;
                       ASL A                                ;9D9705|0A      |;
                       ASL A                                ;9D9706|0A      |;
                       STA.B $C9                            ;9D9707|85C9    |;
                       LDA.L DATA8_9D977D,X                 ;9D9709|BF7D979D|;
                       LSR A                                ;9D970D|4A      |;
                       LSR A                                ;9D970E|4A      |;
                       LSR A                                ;9D970F|4A      |;
                       LSR A                                ;9D9710|4A      |;
                       LSR A                                ;9D9711|4A      |;
                       AND.W #$001F                         ;9D9712|291F00  |;
                       STA.B $C7                            ;9D9715|85C7    |;
                       LDA.L DATA8_9D977F,X                 ;9D9717|BF7F979D|;
                       LSR A                                ;9D971B|4A      |;
                       LSR A                                ;9D971C|4A      |;
                       LSR A                                ;9D971D|4A      |;
                       LSR A                                ;9D971E|4A      |;
                       LSR A                                ;9D971F|4A      |;
                       AND.W #$001F                         ;9D9720|291F00  |;
                       SEC                                  ;9D9723|38      |;
                       SBC.B $C7                            ;9D9724|E5C7    |;
                       PHX                                  ;9D9726|DA      |;
                       LDX.B $C5                            ;9D9727|A6C5    |;
                       JSL.L CODE_809062                    ;9D9729|22629080|;
                       LDA.W #$001E                         ;9D972D|A91E00  |;
                       STA.B $04                            ;9D9730|8504    |;
                       JSL.L CODE_8091FC                    ;9D9732|22FC9180|;
                       PLX                                  ;9D9736|FA      |;
                       LDA.B $00                            ;9D9737|A500    |;
                       CLC                                  ;9D9739|18      |;
                       ADC.B $C7                            ;9D973A|65C7    |;
                       AND.W #$001F                         ;9D973C|291F00  |;
                       ASL A                                ;9D973F|0A      |;
                       ASL A                                ;9D9740|0A      |;
                       ASL A                                ;9D9741|0A      |;
                       ASL A                                ;9D9742|0A      |;
                       ASL A                                ;9D9743|0A      |;
                       TSB.B $C9                            ;9D9744|04C9    |;
                       LDA.L DATA8_9D977D,X                 ;9D9746|BF7D979D|;
                       AND.W #$001F                         ;9D974A|291F00  |;
                       STA.B $C7                            ;9D974D|85C7    |;
                       LDA.L DATA8_9D977F,X                 ;9D974F|BF7F979D|;
                       AND.W #$001F                         ;9D9753|291F00  |;
                       SEC                                  ;9D9756|38      |;
                       SBC.B $C7                            ;9D9757|E5C7    |;
                       PHX                                  ;9D9759|DA      |;
                       LDX.B $C5                            ;9D975A|A6C5    |;
                       JSL.L CODE_809062                    ;9D975C|22629080|;
                       LDA.W #$001E                         ;9D9760|A91E00  |;
                       STA.B $04                            ;9D9763|8504    |;
                       JSL.L CODE_8091FC                    ;9D9765|22FC9180|;
                       PLX                                  ;9D9769|FA      |;
                       LDA.B $00                            ;9D976A|A500    |;
                       CLC                                  ;9D976C|18      |;
                       ADC.B $C7                            ;9D976D|65C7    |;
                       AND.W #$001F                         ;9D976F|291F00  |;
                       ORA.B $C9                            ;9D9772|05C9    |;
                       PLY                                  ;9D9774|7A      |;
                       PLX                                  ;9D9775|FA      |;
                       STX.B $10                            ;9D9776|8610    |;
                       STY.B $12                            ;9D9778|8412    |;
                       STA.B [$10]                          ;9D977A|8710    |;
                       RTL                                  ;9D977C|6B      |;
 
         DATA8_9D977D:
                       db $FF,$7F                           ;9D977D|        |;
 
         DATA8_9D977F:
                       db $10,$7E,$FF,$7F                   ;9D977F|        |;
 
          CODE_9D9783:
                       STX.B $87                            ;9D9783|8687    |;
                       LDX.W #$0000                         ;9D9785|A20000  |;
 
          CODE_9D9788:
                       LDA.B $A5,X                          ;9D9788|B5A5    |;
                       PHA                                  ;9D978A|48      |;
                       INX                                  ;9D978B|E8      |;
                       INX                                  ;9D978C|E8      |;
                       CPX.W #$0014                         ;9D978D|E01400  |;
                       BNE CODE_9D9788                      ;9D9790|D0F6    |;
                       LDX.B $87                            ;9D9792|A687    |;
                       STX.B $87                            ;9D9794|8687    |;
                       LDX.W #$0000                         ;9D9796|A20000  |;
 
          CODE_9D9799:
                       LDA.B $89,X                          ;9D9799|B589    |;
                       PHA                                  ;9D979B|48      |;
                       INX                                  ;9D979C|E8      |;
                       INX                                  ;9D979D|E8      |;
                       CPX.W #$0010                         ;9D979E|E01000  |;
                       BNE CODE_9D9799                      ;9D97A1|D0F6    |;
                       LDX.B $87                            ;9D97A3|A687    |;
                       LDA.L $7E34D0                        ;9D97A5|AFD0347E|;
                       ASL A                                ;9D97A9|0A      |;
                       ASL A                                ;9D97AA|0A      |;
                       ASL A                                ;9D97AB|0A      |;
                       ASL A                                ;9D97AC|0A      |;
                       STA.B $A9                            ;9D97AD|85A9    |;
                       LDA.W #$007E                         ;9D97AF|A97E00  |;
                       STA.B $8B                            ;9D97B2|858B    |;
                       LDA.W #$34D2                         ;9D97B4|A9D234  |;
                       STA.B $89                            ;9D97B7|8589    |;
                       LDA.W #$ED59                         ;9D97B9|A959ED  |;
                       CLC                                  ;9D97BC|18      |;
                       ADC.B $A9                            ;9D97BD|65A9    |;
                       STA.B $8D                            ;9D97BF|858D    |;
                       LDA.W #$009C                         ;9D97C1|A99C00  |;
                       STA.B $8F                            ;9D97C4|858F    |;
                       LDY.W #$000E                         ;9D97C6|A00E00  |;
                       STY.B $AD                            ;9D97C9|84AD    |;
 
          CODE_9D97CB:
                       LDA.B [$8D],Y                        ;9D97CB|B78D    |;
                       STA.B [$89],Y                        ;9D97CD|9789    |;
                       DEY                                  ;9D97CF|88      |;
                       DEY                                  ;9D97D0|88      |;
                       BPL CODE_9D97CB                      ;9D97D1|10F8    |;
                       LDA.W #$34E2                         ;9D97D3|A9E234  |;
                       STA.B $8D                            ;9D97D6|858D    |;
                       LDA.B $8B                            ;9D97D8|A58B    |;
                       STA.B $8F                            ;9D97DA|858F    |;
                       LDA.W $0AD5                          ;9D97DC|ADD50A  |;
                       STA.B $A5                            ;9D97DF|85A5    |;
 
          CODE_9D97E1:
                       LDA.B $A5                            ;9D97E1|A5A5    |;
                       AND.W #$0001                         ;9D97E3|290100  |;
                       STA.B $A9                            ;9D97E6|85A9    |;
                       TAY                                  ;9D97E8|A8      |;
                       SEP #$20                             ;9D97E9|E220    |;
                       LDA.B [$89],Y                        ;9D97EB|B789    |;
                       STA.B [$8D]                          ;9D97ED|878D    |;
                       REP #$20                             ;9D97EF|C220    |;
                       INC.B $8D                            ;9D97F1|E68D    |;
                       INC.B $89                            ;9D97F3|E689    |;
                       INC.B $89                            ;9D97F5|E689    |;
                       LSR.B $A5                            ;9D97F7|46A5    |;
                       DEC.B $AD                            ;9D97F9|C6AD    |;
                       BPL CODE_9D97E1                      ;9D97FB|10E4    |;
                       JSL.L CODE_9D98B5                    ;9D97FD|22B5989D|;
                       LDA.B $A9                            ;9D9801|A5A9    |;
                       BMI CODE_9D9840                      ;9D9803|303B    |;
                       LDA.B $AD                            ;9D9805|A5AD    |;
                       ASL A                                ;9D9807|0A      |;
                       ADC.W #$34D2                         ;9D9808|69D234  |;
                       STA.B $89                            ;9D980B|8589    |;
                       LDA.W #$007E                         ;9D980D|A97E00  |;
                       STA.B $8B                            ;9D9810|858B    |;
                       STZ.B $8D                            ;9D9812|648D    |;
 
          CODE_9D9814:
                       LDX.B $8D                            ;9D9814|A68D    |;
                       LDA.W #$0000                         ;9D9816|A90000  |;
                       STA.L $7E3578,X                      ;9D9819|9F78357E|;
                       STA.L $7E3588,X                      ;9D981D|9F88357E|;
                       STA.L $7E3568,X                      ;9D9821|9F68357E|;
                       LDA.L $7E3598,X                      ;9D9825|BF98357E|;
                       AND.W #$FFFD                         ;9D9829|29FDFF  |;
                       STA.L $7E3598,X                      ;9D982C|9F98357E|;
                       JSL.L CODE_9D985F                    ;9D9830|225F989D|;
                       INC.B $8D                            ;9D9834|E68D    |;
                       INC.B $8D                            ;9D9836|E68D    |;
                       DEC.B $A9                            ;9D9838|C6A9    |;
                       BPL CODE_9D9814                      ;9D983A|10D8    |;
                       JSL.L CODE_9D995D                    ;9D983C|225D999D|;
 
          CODE_9D9840:
                       STX.B $87                            ;9D9840|8687    |;
                       LDX.W #$000E                         ;9D9842|A20E00  |;
 
          CODE_9D9845:
                       PLA                                  ;9D9845|68      |;
                       STA.B $89,X                          ;9D9846|9589    |;
                       DEX                                  ;9D9848|CA      |;
                       DEX                                  ;9D9849|CA      |;
                       BPL CODE_9D9845                      ;9D984A|10F9    |;
                       LDX.B $87                            ;9D984C|A687    |;
                       STX.B $87                            ;9D984E|8687    |;
                       LDX.W #$0012                         ;9D9850|A21200  |;
 
          CODE_9D9853:
                       PLA                                  ;9D9853|68      |;
                       STA.B $A5,X                          ;9D9854|95A5    |;
                       DEX                                  ;9D9856|CA      |;
                       DEX                                  ;9D9857|CA      |;
                       BPL CODE_9D9853                      ;9D9858|10F9    |;
                       LDX.B $87                            ;9D985A|A687    |;
                       LDX.B $95                            ;9D985C|A695    |;
                       RTL                                  ;9D985E|6B      |;
 
          CODE_9D985F:
                       LDA.W $0ACF                          ;9D985F|ADCF0A  |;
                       CMP.W #$0002                         ;9D9862|C90200  |;
                       BEQ UNREACH_9D9893                   ;9D9865|F02C    |;
                       CMP.W #$0003                         ;9D9867|C90300  |;
                       BEQ UNREACH_9D9893                   ;9D986A|F027    |;
                       CMP.W #$0005                         ;9D986C|C90500  |;
                       BEQ UNREACH_9D9893                   ;9D986F|F022    |;
                       LDA.L $7E3598,X                      ;9D9871|BF98357E|;
                       ORA.W #$0001                         ;9D9875|090100  |;
                       STA.L $7E3598,X                      ;9D9878|9F98357E|;
                       LDA.B [$89]                          ;9D987C|A789    |;
                       INC.B $89                            ;9D987E|E689    |;
                       AND.W #$00FF                         ;9D9880|29FF00  |;
                       STA.L $7E3538,X                      ;9D9883|9F38357E|;
                       LDA.B [$89]                          ;9D9887|A789    |;
                       INC.B $89                            ;9D9889|E689    |;
                       AND.W #$00FF                         ;9D988B|29FF00  |;
                       STA.L $7E3528,X                      ;9D988E|9F28357E|;
                       RTL                                  ;9D9892|6B      |;
 
       UNREACH_9D9893:
                       db $BF,$98,$35,$7E,$29,$FE,$FF,$9F   ;9D9893|        |;
                       db $98,$35,$7E,$A7,$89,$E6,$89,$29   ;9D989B|        |;
                       db $FF,$00,$9F,$28,$35,$7E,$A7,$89   ;9D98A3|        |;
                       db $E6,$89,$29,$FF,$00,$9F,$38,$35   ;9D98AB|        |;
                       db $7E,$6B                           ;9D98B3|        |;
 
          CODE_9D98B5:
                       LDA.W #$FFF0                         ;9D98B5|A9F0FF  |;
                       STA.B $AD                            ;9D98B8|85AD    |;
                       LDA.W #$0010                         ;9D98BA|A91000  |;
                       STA.B $A9                            ;9D98BD|85A9    |;
                       LDA.L $7E35D4                        ;9D98BF|AFD4357E|;
                       TAY                                  ;9D98C3|A8      |;
 
          CODE_9D98C4:
                       LDA.B $AD                            ;9D98C4|A5AD    |;
                       CLC                                  ;9D98C6|18      |;
                       ADC.B $A9                            ;9D98C7|65A9    |;
                       STA.B $AD                            ;9D98C9|85AD    |;
                       LSR.B $A9                            ;9D98CB|46A9    |;
                       DEY                                  ;9D98CD|88      |;
                       BPL CODE_9D98C4                      ;9D98CE|10F4    |;
                       DEC.B $A9                            ;9D98D0|C6A9    |;
                       RTL                                  ;9D98D2|6B      |;
 
          CODE_9D98D3:
                       JSL.L CODE_808658                    ;9D98D3|22588680|;
                       AND.W #$001F                         ;9D98D7|291F00  |;
                       STA.B $A5                            ;9D98DA|85A5    |;
 
          CODE_9D98DC:
                       LDA.B $A5                            ;9D98DC|A5A5    |;
                       INC A                                ;9D98DE|1A      |;
                       AND.W #$001F                         ;9D98DF|291F00  |;
                       STA.B $A5                            ;9D98E2|85A5    |;
                       ASL A                                ;9D98E4|0A      |;
                       ASL A                                ;9D98E5|0A      |;
                       ASL A                                ;9D98E6|0A      |;
                       ASL A                                ;9D98E7|0A      |;
                       ADC.W #$ED59                         ;9D98E8|6959ED  |;
                       STA.B $89                            ;9D98EB|8589    |;
                       LDA.W #$009C                         ;9D98ED|A99C00  |;
                       STA.B $8B                            ;9D98F0|858B    |;
                       LDA.W #$000F                         ;9D98F2|A90F00  |;
                       STA.B $A9                            ;9D98F5|85A9    |;
                       LDA.L $7E34BE                        ;9D98F7|AFBE347E|;
                       STA.B $AD                            ;9D98FB|85AD    |;
                       CMP.W #$001A                         ;9D98FD|C91A00  |;
                       BCC CODE_9D9907                      ;9D9900|9005    |;
                       db $A9,$19,$00,$85,$AD               ;9D9902|        |;
 
          CODE_9D9907:
                       LDA.B [$89]                          ;9D9907|A789    |;
                       INC.B $89                            ;9D9909|E689    |;
                       AND.W #$00FF                         ;9D990B|29FF00  |;
                       CMP.B $AD                            ;9D990E|C5AD    |;
                       BEQ CODE_9D9918                      ;9D9910|F006    |;
                       DEC.B $A9                            ;9D9912|C6A9    |;
                       BPL CODE_9D9907                      ;9D9914|10F1    |;
                       BRA CODE_9D98DC                      ;9D9916|80C4    |;
 
          CODE_9D9918:
                       LDA.B $A9                            ;9D9918|A5A9    |;
                       EOR.W #$000F                         ;9D991A|490F00  |;
                       STA.B $A9                            ;9D991D|85A9    |;
                       STA.L $7E34F2                        ;9D991F|8FF2347E|;
                       LDA.B $A5                            ;9D9923|A5A5    |;
                       STA.L $7E34D0                        ;9D9925|8FD0347E|;
                       LDA.W #$0000                         ;9D9929|A90000  |;
                       STA.L $7E35D4                        ;9D992C|8FD4357E|;
                       LDA.W #$0007                         ;9D9930|A90700  |;
                       STA.W $0ACF                          ;9D9933|8DCF0A  |;
                       LDA.L $7E34BC                        ;9D9936|AFBC347E|;
                       CMP.W #$0002                         ;9D993A|C90200  |;
                       BEQ CODE_9D9959                      ;9D993D|F01A    |;
                       STZ.W $0ACF                          ;9D993F|9CCF0A  |;
                       LDA.W #$0007                         ;9D9942|A90700  |;
                       STA.B $A5                            ;9D9945|85A5    |;
                       LDX.W #$0000                         ;9D9947|A20000  |;
                       TXA                                  ;9D994A|8A      |;
 
          CODE_9D994B:
                       STA.L $7E3548,X                      ;9D994B|9F48357E|;
                       STA.L $7E3558,X                      ;9D994F|9F58357E|;
                       INX                                  ;9D9953|E8      |;
                       INX                                  ;9D9954|E8      |;
                       DEC.B $A5                            ;9D9955|C6A5    |;
                       BPL CODE_9D994B                      ;9D9957|10F2    |;
 
          CODE_9D9959:
                       JML.L CODE_9D9783                    ;9D9959|5C83979D|;
 
          CODE_9D995D:
                       LDA.L $7E34CC                        ;9D995D|AFCC347E|;
                       BNE CODE_9D9966                      ;9D9961|D003    |;
                       JMP.W CODE_9D9A23                    ;9D9963|4C239A  |;
 
          CODE_9D9966:
                       LDA.L $7E34BC                        ;9D9966|AFBC347E|;
                       BNE CODE_9D996F                      ;9D996A|D003    |;
                       JMP.W CODE_9D9A0E                    ;9D996C|4C0E9A  |;
 
          CODE_9D996F:
                       CMP.W #$0004                         ;9D996F|C90400  |;
                       BNE CODE_9D9977                      ;9D9972|D003    |;
                       JMP.W CODE_9D9A0E                    ;9D9974|4C0E9A  |;
 
          CODE_9D9977:
                       JSL.L CODE_9D98B5                    ;9D9977|22B5989D|;
                       LDA.W #$007E                         ;9D997B|A97E00  |;
                       STA.B $8B                            ;9D997E|858B    |;
                       LDA.W #$34D2                         ;9D9980|A9D234  |;
                       STA.B $89                            ;9D9983|8589    |;
                       LDA.L $7E34F2                        ;9D9985|AFF2347E|;
                       TAY                                  ;9D9989|A8      |;
                       LDA.B [$89],Y                        ;9D998A|B789    |;
                       AND.W #$00FF                         ;9D998C|29FF00  |;
                       STA.B $AD                            ;9D998F|85AD    |;
                       LDA.B $A9                            ;9D9991|A5A9    |;
                       ASL A                                ;9D9993|0A      |;
                       STA.B $8D                            ;9D9994|858D    |;
                       LDA.W #$FFFF                         ;9D9996|A9FFFF  |;
                       STA.L $7E35D6                        ;9D9999|8FD6357E|;
                       STZ.B $A5                            ;9D999D|64A5    |;
 
          CODE_9D999F:
                       LDA.B $AD                            ;9D999F|A5AD    |;
                       LDX.B $8D                            ;9D99A1|A68D    |;
                       CMP.L $7E3528,X                      ;9D99A3|DF28357E|;
                       BEQ CODE_9D99C7                      ;9D99A7|F01E    |;
                       CMP.L $7E3538,X                      ;9D99A9|DF38357E|;
                       BEQ CODE_9D99B8                      ;9D99AD|F009    |;
                       DEC.B $8D                            ;9D99AF|C68D    |;
                       DEC.B $8D                            ;9D99B1|C68D    |;
                       DEC.B $A9                            ;9D99B3|C6A9    |;
                       BPL CODE_9D999F                      ;9D99B5|10E8    |;
                       db $6B                               ;9D99B7|        |;
 
          CODE_9D99B8:
                       LDA.W #$0004                         ;9D99B8|A90400  |;
                       STA.B $A5                            ;9D99BB|85A5    |;
                       LDA.L $7E3528,X                      ;9D99BD|BF28357E|;
                       STA.L $7E34C0                        ;9D99C1|8FC0347E|;
                       BRA CODE_9D99D1                      ;9D99C5|800A    |;
 
          CODE_9D99C7:
                       STZ.B $A5                            ;9D99C7|64A5    |;
                       LDA.L $7E3538,X                      ;9D99C9|BF38357E|;
                       STA.L $7E34C0                        ;9D99CD|8FC0347E|;
 
          CODE_9D99D1:
                       LDA.B $A5                            ;9D99D1|A5A5    |;
                       CLC                                  ;9D99D3|18      |;
                       ADC.L $7E34CE                        ;9D99D4|6FCE347E|;
                       STA.B $A5                            ;9D99D8|85A5    |;
                       LDA.B $A9                            ;9D99DA|A5A9    |;
                       STA.L $7E35D6                        ;9D99DC|8FD6357E|;
                       LDA.L $7E3528,X                      ;9D99E0|BF28357E|;
                       STA.W $1C98                          ;9D99E4|8D981C  |;
                       LDA.L $7E3538,X                      ;9D99E7|BF38357E|;
                       STA.W $1C9A                          ;9D99EB|8D9A1C  |;
                       ASL.B $A5                            ;9D99EE|06A5    |;
                       ASL.B $A5                            ;9D99F0|06A5    |;
                       PHB                                  ;9D99F2|8B      |;
                       PHK                                  ;9D99F3|4B      |;
                       PLB                                  ;9D99F4|AB      |;
                       LDY.B $A5                            ;9D99F5|A4A5    |;
                       LDX.W #$0000                         ;9D99F7|A20000  |;
 
          CODE_9D99FA:
                       LDA.W $1C84,X                        ;9D99FA|BD841C  |;
                       BEQ CODE_9D9A05                      ;9D99FD|F006    |;
                       LDA.W UNREACH_9D9A28,Y               ;9D99FF|B9289A  |;
                       STA.W $1C84,X                        ;9D9A02|9D841C  |;
 
          CODE_9D9A05:
                       INX                                  ;9D9A05|E8      |;
                       INX                                  ;9D9A06|E8      |;
                       CPX.W #$000A                         ;9D9A07|E00A00  |;
                       BCC CODE_9D99FA                      ;9D9A0A|90EE    |;
                       PLB                                  ;9D9A0C|AB      |;
                       RTL                                  ;9D9A0D|6B      |;
 
          CODE_9D9A0E:
                       LDA.L $7E34CA                        ;9D9A0E|AFCA347E|;
                       ASL A                                ;9D9A12|0A      |;
                       ASL A                                ;9D9A13|0A      |;
                       STA.B $A5                            ;9D9A14|85A5    |;
                       TAY                                  ;9D9A16|A8      |;
                       LDA.W #$009D                         ;9D9A17|A99D00  |;
                       STA.B $8B                            ;9D9A1A|858B    |;
                       LDA.W #$9A48                         ;9D9A1C|A9489A  |;
                       STA.B $89                            ;9D9A1F|8589    |;
                       INY                                  ;9D9A21|C8      |;
                       INY                                  ;9D9A22|C8      |;
 
          CODE_9D9A23:
                       JSL.L CODE_9FC79F                    ;9D9A23|229FC79F|;
                       RTL                                  ;9D9A27|6B      |;
 
       UNREACH_9D9A28:
                       db $01,$00,$00,$00,$01,$00,$01,$00   ;9D9A28|        |;
                       db $01,$00,$02,$00,$02,$00,$01,$00   ;9D9A30|        |;
                       db $02,$00,$00,$00,$02,$00,$02,$00   ;9D9A38|        |;
                       db $02,$00,$01,$00,$01,$00,$02,$00   ;9D9A40|        |;
                       db $00,$00,$00,$00,$01,$00,$00,$00   ;9D9A48|        |;
                       db $02,$00,$00,$00,$01,$00,$01,$00   ;9D9A50|        |;
                       db $01,$00,$02,$00                   ;9D9A58|        |;
 
          CODE_9D9A5C:
                       PHB                                  ;9D9A5C|8B      |;
                       PHK                                  ;9D9A5D|4B      |;
                       PLB                                  ;9D9A5E|AB      |;
                       LDA.W #$007E                         ;9D9A5F|A97E00  |;
                       STA.B $12                            ;9D9A62|8512    |;
                       LDA.W #$47F4                         ;9D9A64|A9F447  |;
                       STA.B $10                            ;9D9A67|8510    |;
                       JSR.W CODE_9D9B9B                    ;9D9A69|209B9B  |;
                       LSR A                                ;9D9A6C|4A      |;
                       EOR.W #$FFFF                         ;9D9A6D|49FFFF  |;
                       INC A                                ;9D9A70|1A      |;
                       CLC                                  ;9D9A71|18      |;
                       ADC.W #$0024                         ;9D9A72|692400  |;
                       STA.B $14                            ;9D9A75|8514    |;
                       LSR A                                ;9D9A77|4A      |;
                       LSR A                                ;9D9A78|4A      |;
                       LSR A                                ;9D9A79|4A      |;
                       STA.B $16                            ;9D9A7A|8516    |;
                       CLC                                  ;9D9A7C|18      |;
                       ADC.W $0D0F                          ;9D9A7D|6D0F0D  |;
                       STA.W $0D0F                          ;9D9A80|8D0F0D  |;
                       LDA.B $16                            ;9D9A83|A516    |;
                       ASL A                                ;9D9A85|0A      |;
                       ASL A                                ;9D9A86|0A      |;
                       ASL A                                ;9D9A87|0A      |;
                       EOR.W #$FFFF                         ;9D9A88|49FFFF  |;
                       INC A                                ;9D9A8B|1A      |;
                       CLC                                  ;9D9A8C|18      |;
                       ADC.B $14                            ;9D9A8D|6514    |;
                       STA.B $14                            ;9D9A8F|8514    |;
                       LDY.W #$0000                         ;9D9A91|A00000  |;
 
          CODE_9D9A94:
                       LDA.B $14                            ;9D9A94|A514    |;
                       ASL A                                ;9D9A96|0A      |;
                       STA.B $02                            ;9D9A97|8502    |;
                       LDA.B [$0C],Y                        ;9D9A99|B70C    |;
                       AND.W #$00FF                         ;9D9A9B|29FF00  |;
                       BNE CODE_9D9AA8                      ;9D9A9E|D008    |;
                       LDA.W #$FFFF                         ;9D9AA0|A9FFFF  |;
                       STA.B $08                            ;9D9AA3|8508    |;
                       JMP.W CODE_9D9B0F                    ;9D9AA5|4C0F9B  |;
 
          CODE_9D9AA8:
                       CMP.W #$0020                         ;9D9AA8|C92000  |;
                       BEQ CODE_9D9ABE                      ;9D9AAB|F011    |;
                       CMP.W #$002E                         ;9D9AAD|C92E00  |;
                       BNE CODE_9D9AB7                      ;9D9AB0|D005    |;
                       LDA.W #$001A                         ;9D9AB2|A91A00  |;
                       BRA CODE_9D9ABE                      ;9D9AB5|8007    |;
 
          CODE_9D9AB7:
                       AND.W #$00DF                         ;9D9AB7|29DF00  |;
                       SEC                                  ;9D9ABA|38      |;
                       SBC.W #$0041                         ;9D9ABB|E94100  |;
 
          CODE_9D9ABE:
                       PHY                                  ;9D9ABE|5A      |;
                       STA.B $08                            ;9D9ABF|8508    |;
                       CMP.W #$0020                         ;9D9AC1|C92000  |;
                       BNE CODE_9D9ACB                      ;9D9AC4|D005    |;
                       LDA.W #$0005                         ;9D9AC6|A90500  |;
                       BRA CODE_9D9B07                      ;9D9AC9|803C    |;
 
          CODE_9D9ACB:
                       LDA.B $08                            ;9D9ACB|A508    |;
                       ASL A                                ;9D9ACD|0A      |;
                       TAX                                  ;9D9ACE|AA      |;
                       LDA.L DATA8_9ADF5F,X                 ;9D9ACF|BF5FDF9A|;
                       ASL A                                ;9D9AD3|0A      |;
                       ASL A                                ;9D9AD4|0A      |;
                       ASL A                                ;9D9AD5|0A      |;
                       ASL A                                ;9D9AD6|0A      |;
                       ASL A                                ;9D9AD7|0A      |;
                       STA.B $04                            ;9D9AD8|8504    |;
                       STA.B $06                            ;9D9ADA|8506    |;
                       LDA.L $7E3466                        ;9D9ADC|AF66347E|;
                       JSR.W CODE_9D9BFC                    ;9D9AE0|20FC9B  |;
                       LDA.B $08                            ;9D9AE3|A508    |;
                       ASL A                                ;9D9AE5|0A      |;
                       CLC                                  ;9D9AE6|18      |;
                       ADC.W #$0036                         ;9D9AE7|693600  |;
                       TAX                                  ;9D9AEA|AA      |;
                       LDA.L DATA8_9ADF5F,X                 ;9D9AEB|BF5FDF9A|;
                       ASL A                                ;9D9AEF|0A      |;
                       ASL A                                ;9D9AF0|0A      |;
                       ASL A                                ;9D9AF1|0A      |;
                       ASL A                                ;9D9AF2|0A      |;
                       ASL A                                ;9D9AF3|0A      |;
                       STA.B $04                            ;9D9AF4|8504    |;
                       LDA.L $7E3466                        ;9D9AF6|AF66347E|;
                       INC A                                ;9D9AFA|1A      |;
                       JSR.W CODE_9D9BFC                    ;9D9AFB|20FC9B  |;
                       LDX.B $08                            ;9D9AFE|A608    |;
                       LDA.L DATA8_9C9623,X                 ;9D9B00|BF23969C|;
                       AND.W #$00FF                         ;9D9B04|29FF00  |;
 
          CODE_9D9B07:
                       CLC                                  ;9D9B07|18      |;
                       ADC.B $14                            ;9D9B08|6514    |;
                       CMP.W #$0008                         ;9D9B0A|C90800  |;
                       BCC CODE_9D9B59                      ;9D9B0D|904A    |;
 
          CODE_9D9B0F:
                       JSL.L $001D59                        ;9D9B0F|22591D00|;
                       INC.W $0D0F                          ;9D9B13|EE0F0D  |;
                       LDA.B $06                            ;9D9B16|A506    |;
                       STA.B $04                            ;9D9B18|8504    |;
                       LDA.L $7E3466                        ;9D9B1A|AF66347E|;
                       INC A                                ;9D9B1E|1A      |;
                       INC A                                ;9D9B1F|1A      |;
                       STA.L $7E3466                        ;9D9B20|8F66347E|;
                       LDA.B $08                            ;9D9B24|A508    |;
                       BMI CODE_9D9B79                      ;9D9B26|3051    |;
                       CMP.W #$0020                         ;9D9B28|C92000  |;
                       BEQ CODE_9D9B59                      ;9D9B2B|F02C    |;
                       LDA.B $14                            ;9D9B2D|A514    |;
                       EOR.W #$0007                         ;9D9B2F|490700  |;
                       STA.B $16                            ;9D9B32|8516    |;
                       ASL A                                ;9D9B34|0A      |;
                       STA.B $0A                            ;9D9B35|850A    |;
                       LDA.L $7E3466                        ;9D9B37|AF66347E|;
                       JSR.W CODE_9D9C2A                    ;9D9B3B|202A9C  |;
                       LDA.B $08                            ;9D9B3E|A508    |;
                       ASL A                                ;9D9B40|0A      |;
                       CLC                                  ;9D9B41|18      |;
                       ADC.W #$0036                         ;9D9B42|693600  |;
                       TAX                                  ;9D9B45|AA      |;
                       LDA.L DATA8_9ADF5F,X                 ;9D9B46|BF5FDF9A|;
                       ASL A                                ;9D9B4A|0A      |;
                       ASL A                                ;9D9B4B|0A      |;
                       ASL A                                ;9D9B4C|0A      |;
                       ASL A                                ;9D9B4D|0A      |;
                       ASL A                                ;9D9B4E|0A      |;
                       STA.B $04                            ;9D9B4F|8504    |;
                       LDA.L $7E3466                        ;9D9B51|AF66347E|;
                       INC A                                ;9D9B55|1A      |;
                       JSR.W CODE_9D9C2A                    ;9D9B56|202A9C  |;
 
          CODE_9D9B59:
                       LDX.B $08                            ;9D9B59|A608    |;
                       CMP.W #$0020                         ;9D9B5B|C92000  |;
                       BNE CODE_9D9B65                      ;9D9B5E|D005    |;
                       LDA.W #$0005                         ;9D9B60|A90500  |;
                       BRA CODE_9D9B6C                      ;9D9B63|8007    |;
 
          CODE_9D9B65:
                       LDA.L DATA8_9C9623,X                 ;9D9B65|BF23969C|;
                       AND.W #$00FF                         ;9D9B69|29FF00  |;
 
          CODE_9D9B6C:
                       CLC                                  ;9D9B6C|18      |;
                       ADC.B $14                            ;9D9B6D|6514    |;
                       AND.W #$0007                         ;9D9B6F|290700  |;
                       STA.B $14                            ;9D9B72|8514    |;
                       PLY                                  ;9D9B74|7A      |;
                       INY                                  ;9D9B75|C8      |;
                       JMP.W CODE_9D9A94                    ;9D9B76|4C949A  |;
 
          CODE_9D9B79:
                       PLB                                  ;9D9B79|AB      |;
                       RTL                                  ;9D9B7A|6B      |;
 
         DATA8_9D9B7B:
                       db $FE,$FE,$FC,$FC,$F8,$F8           ;9D9B7B|        |;
                       db $F0,$F0                           ;9D9B81|        |;
                       db $E0,$E0,$C0,$C0,$80,$80,$00,$00   ;9D9B83|        |;
 
         DATA8_9D9B8B:
                       db $FF,$FF,$7F,$7F,$3F,$3F,$1F,$1F   ;9D9B8B|        |;
                       db $0F,$0F                           ;9D9B93|        |;
                       db $07,$07,$03,$03,$01,$01           ;9D9B95|        |;
 
          CODE_9D9B9B:
                       STZ.B $14                            ;9D9B9B|6414    |;
                       LDY.W #$0000                         ;9D9B9D|A00000  |;
 
          CODE_9D9BA0:
                       LDA.B [$0C],Y                        ;9D9BA0|B70C    |;
                       AND.W #$00FF                         ;9D9BA2|29FF00  |;
                       BEQ CODE_9D9BF9                      ;9D9BA5|F052    |;
                       CMP.W #$0020                         ;9D9BA7|C92000  |;
                       BNE CODE_9D9BB6                      ;9D9BAA|D00A    |;
                       CPY.W #$0000                         ;9D9BAC|C00000  |;
                       BEQ CODE_9D9BF6                      ;9D9BAF|F045    |;
                       LDA.W #$0005                         ;9D9BB1|A90500  |;
                       BRA CODE_9D9BF1                      ;9D9BB4|803B    |;
 
          CODE_9D9BB6:
                       CMP.W #$002E                         ;9D9BB6|C92E00  |;
                       BNE CODE_9D9BC0                      ;9D9BB9|D005    |;
                       LDA.W #$0003                         ;9D9BBB|A90300  |;
                       BRA CODE_9D9BF1                      ;9D9BBE|8031    |;
 
          CODE_9D9BC0:
                       CMP.W #$0040                         ;9D9BC0|C94000  |;
                       BNE CODE_9D9BCE                      ;9D9BC3|D009    |;
                       db $AF,$3E,$96,$9C,$29,$FF,$00,$80   ;9D9BC5|        |;
                       db $23                               ;9D9BCD|        |;
 
          CODE_9D9BCE:
                       CMP.W #$0030                         ;9D9BCE|C93000  |;
                       BCC CODE_9D9BE2                      ;9D9BD1|900F    |;
                       CMP.W #$003A                         ;9D9BD3|C93A00  |;
                       BCS CODE_9D9BE2                      ;9D9BD6|B00A    |;
                       db $38,$E9,$30,$00,$18,$69,$1C,$00   ;9D9BD8|        |;
                       db $80,$07                           ;9D9BE0|        |;
 
          CODE_9D9BE2:
                       AND.W #$00DF                         ;9D9BE2|29DF00  |;
                       SEC                                  ;9D9BE5|38      |;
                       SBC.W #$0041                         ;9D9BE6|E94100  |;
                       TAX                                  ;9D9BE9|AA      |;
                       LDA.L DATA8_9C9623,X                 ;9D9BEA|BF23969C|;
                       AND.W #$00FF                         ;9D9BEE|29FF00  |;
 
          CODE_9D9BF1:
                       CLC                                  ;9D9BF1|18      |;
                       ADC.B $14                            ;9D9BF2|6514    |;
                       STA.B $14                            ;9D9BF4|8514    |;
 
          CODE_9D9BF6:
                       INY                                  ;9D9BF6|C8      |;
                       BRA CODE_9D9BA0                      ;9D9BF7|80A7    |;
 
          CODE_9D9BF9:
                       LDA.B $14                            ;9D9BF9|A514    |;
                       RTS                                  ;9D9BFB|60      |;
 
          CODE_9D9BFC:
                       ASL A                                ;9D9BFC|0A      |;
                       ASL A                                ;9D9BFD|0A      |;
                       ASL A                                ;9D9BFE|0A      |;
                       ASL A                                ;9D9BFF|0A      |;
                       TAX                                  ;9D9C00|AA      |;
                       LDA.W #$0008                         ;9D9C01|A90800  |;
                       STA.B $00                            ;9D9C04|8500    |;
 
          CODE_9D9C06:
                       LDY.B $04                            ;9D9C06|A404    |;
                       LDA.B [$10],Y                        ;9D9C08|B710    |;
                       LDY.B $14                            ;9D9C0A|A414    |;
                       BEQ CODE_9D9C12                      ;9D9C0C|F004    |;
 
          CODE_9D9C0E:
                       LSR A                                ;9D9C0E|4A      |;
                       DEY                                  ;9D9C0F|88      |;
                       BNE CODE_9D9C0E                      ;9D9C10|D0FC    |;
 
          CODE_9D9C12:
                       LDY.B $02                            ;9D9C12|A402    |;
                       AND.W DATA8_9D9B8B,Y                 ;9D9C14|398B9B  |;
                       ORA.L $7E4EF4,X                      ;9D9C17|1FF44E7E|;
                       STA.L $7E4EF4,X                      ;9D9C1B|9FF44E7E|;
                       INX                                  ;9D9C1F|E8      |;
                       INX                                  ;9D9C20|E8      |;
                       INC.B $04                            ;9D9C21|E604    |;
                       INC.B $04                            ;9D9C23|E604    |;
                       DEC.B $00                            ;9D9C25|C600    |;
                       BNE CODE_9D9C06                      ;9D9C27|D0DD    |;
                       RTS                                  ;9D9C29|60      |;
 
          CODE_9D9C2A:
                       ASL A                                ;9D9C2A|0A      |;
                       ASL A                                ;9D9C2B|0A      |;
                       ASL A                                ;9D9C2C|0A      |;
                       ASL A                                ;9D9C2D|0A      |;
                       TAX                                  ;9D9C2E|AA      |;
                       LDA.W #$0008                         ;9D9C2F|A90800  |;
                       STA.B $00                            ;9D9C32|8500    |;
 
          CODE_9D9C34:
                       LDY.B $04                            ;9D9C34|A404    |;
                       LDA.B [$10],Y                        ;9D9C36|B710    |;
                       LDY.B $16                            ;9D9C38|A416    |;
                       INY                                  ;9D9C3A|C8      |;
 
          CODE_9D9C3B:
                       ASL A                                ;9D9C3B|0A      |;
                       DEY                                  ;9D9C3C|88      |;
                       BNE CODE_9D9C3B                      ;9D9C3D|D0FC    |;
                       LDY.B $0A                            ;9D9C3F|A40A    |;
                       AND.W DATA8_9D9B7B,Y                 ;9D9C41|397B9B  |;
                       STA.L $7E4EF4,X                      ;9D9C44|9FF44E7E|;
                       INX                                  ;9D9C48|E8      |;
                       INX                                  ;9D9C49|E8      |;
                       INC.B $04                            ;9D9C4A|E604    |;
                       INC.B $04                            ;9D9C4C|E604    |;
                       DEC.B $00                            ;9D9C4E|C600    |;
                       BNE CODE_9D9C34                      ;9D9C50|D0E2    |;
                       RTS                                  ;9D9C52|60      |;
                       LDA.W $0D11                          ;9D9C53|AD110D  |;
                       ASL A                                ;9D9C56|0A      |;
                       ASL A                                ;9D9C57|0A      |;
                       ASL A                                ;9D9C58|0A      |;
                       ASL A                                ;9D9C59|0A      |;
                       ASL A                                ;9D9C5A|0A      |;
                       ASL A                                ;9D9C5B|0A      |;
                       ASL A                                ;9D9C5C|0A      |;
                       ADC.W $0D0F                          ;9D9C5D|6D0F0D  |;
                       ASL A                                ;9D9C60|0A      |;
                       TAX                                  ;9D9C61|AA      |;
                       LDA.L $7E3466                        ;9D9C62|AF66347E|;
                       ORA.W #$2000                         ;9D9C66|090020  |;
                       ORA.W $0D0D                          ;9D9C69|0D0D0D  |;
                       STA.L $7EC67C,X                      ;9D9C6C|9F7CC67E|;
                       INC A                                ;9D9C70|1A      |;
                       STA.L $7EC77C,X                      ;9D9C71|9F7CC77E|;
                       RTL                                  ;9D9C75|6B      |;
                       LDA.W $0D11                          ;9D9C76|AD110D  |;
                       ASL A                                ;9D9C79|0A      |;
                       ASL A                                ;9D9C7A|0A      |;
                       ASL A                                ;9D9C7B|0A      |;
                       ASL A                                ;9D9C7C|0A      |;
                       ASL A                                ;9D9C7D|0A      |;
                       ADC.W $0D0F                          ;9D9C7E|6D0F0D  |;
                       ASL A                                ;9D9C81|0A      |;
                       TAX                                  ;9D9C82|AA      |;
                       LDA.L $7E3466                        ;9D9C83|AF66347E|;
                       ORA.W #$2000                         ;9D9C87|090020  |;
                       ORA.W #$0400                         ;9D9C8A|090004  |;
                       STA.L $7EA67C,X                      ;9D9C8D|9F7CA67E|;
                       INC A                                ;9D9C91|1A      |;
                       STA.L $7EA6BC,X                      ;9D9C92|9FBCA67E|;
                       RTL                                  ;9D9C96|6B      |;
 
          CODE_9D9C97:
                       LDA.W #$FFFF                         ;9D9C97|A9FFFF  |;
                       STA.L $7E34CC                        ;9D9C9A|8FCC347E|;
                       LDA.W #$007E                         ;9D9C9E|A97E00  |;
                       STA.B $8B                            ;9D9CA1|858B    |;
                       LDA.W #$34BC                         ;9D9CA3|A9BC34  |;
                       STA.B $89                            ;9D9CA6|8589    |;
                       LDA.W #$009D                         ;9D9CA8|A99D00  |;
                       STA.B $8F                            ;9D9CAB|858F    |;
                       LDA.W #$9CC2                         ;9D9CAD|A9C29C  |;
                       STA.B $8D                            ;9D9CB0|858D    |;
                       LDY.W #$0000                         ;9D9CB2|A00000  |;
                       LDX.W #$0007                         ;9D9CB5|A20700  |;
 
          CODE_9D9CB8:
                       LDA.B [$8D],Y                        ;9D9CB8|B78D    |;
                       STA.B [$89],Y                        ;9D9CBA|9789    |;
                       INY                                  ;9D9CBC|C8      |;
                       INY                                  ;9D9CBD|C8      |;
                       DEX                                  ;9D9CBE|CA      |;
                       BPL CODE_9D9CB8                      ;9D9CBF|10F7    |;
                       RTL                                  ;9D9CC1|6B      |;
 
DefaultGameSetupValues:
                       db $00,$00,$0B,$00,$0A,$00,$01,$00   ;9D9CC2|        |; Default Play Mode 0000 for Regular season, 0100 for Continue Playoffs, 0200 for New Playoffs etc
                       db $00,$00,$00,$00,$00,$00,$01,$00   ;9D9CCA|        |; Penalties
 
          CODE_9D9CD2:
                       LDA.B $AB                            ;9D9CD2|A5AB    |;
                       PHA                                  ;9D9CD4|48      |;
                       LDA.B $A9                            ;9D9CD5|A5A9    |;
                       PHA                                  ;9D9CD7|48      |;
                       LDA.B $8F                            ;9D9CD8|A58F    |;
                       PHA                                  ;9D9CDA|48      |;
                       LDA.B $8D                            ;9D9CDB|A58D    |;
                       PHA                                  ;9D9CDD|48      |;
                       LDA.W #$0000                         ;9D9CDE|A90000  |;
                       STA.B $8F                            ;9D9CE1|858F    |;
                       LDA.W #$0CF9                         ;9D9CE3|A9F90C  |;
                       STA.B $8D                            ;9D9CE6|858D    |;
                       STZ.B $A9                            ;9D9CE8|64A9    |;
                       BRA CODE_9D9CF7                      ;9D9CEA|800B    |;
 
          CODE_9D9CEC:
                       LDA.B $A9                            ;9D9CEC|A5A9    |;
                       CLC                                  ;9D9CEE|18      |;
                       ADC.B [$8D]                          ;9D9CEF|678D    |;
                       STA.B $A9                            ;9D9CF1|85A9    |;
                       INC.B $8D                            ;9D9CF3|E68D    |;
                       INC.B $8D                            ;9D9CF5|E68D    |;
 
          CODE_9D9CF7:
                       DEC.B $A5                            ;9D9CF7|C6A5    |;
                       BPL CODE_9D9CEC                      ;9D9CF9|10F1    |;
                       LDA.B $A9                            ;9D9CFB|A5A9    |;
                       STA.B $A5                            ;9D9CFD|85A5    |;
                       JSL.L CODE_9BB39B                    ;9D9CFF|229BB39B|;
 
          CODE_9D9D03:
                       DEC.B $8D                            ;9D9D03|C68D    |;
                       DEC.B $8D                            ;9D9D05|C68D    |;
                       LDA.B $A5                            ;9D9D07|A5A5    |;
                       SEC                                  ;9D9D09|38      |;
                       SBC.B [$8D]                          ;9D9D0A|E78D    |;
                       STA.B $A5                            ;9D9D0C|85A5    |;
                       BPL CODE_9D9D03                      ;9D9D0E|10F3    |;
                       LDA.B $8D                            ;9D9D10|A58D    |;
                       SEC                                  ;9D9D12|38      |;
                       SBC.W #$0CF9                         ;9D9D13|E9F90C  |;
                       LSR A                                ;9D9D16|4A      |;
                       STA.B $A5                            ;9D9D17|85A5    |;
                       PLA                                  ;9D9D19|68      |;
                       STA.B $8D                            ;9D9D1A|858D    |;
                       PLA                                  ;9D9D1C|68      |;
                       STA.B $8F                            ;9D9D1D|858F    |;
                       PLA                                  ;9D9D1F|68      |;
                       STA.B $A9                            ;9D9D20|85A9    |;
                       PLA                                  ;9D9D22|68      |;
                       STA.B $AB                            ;9D9D23|85AB    |;
                       RTL                                  ;9D9D25|6B      |;
 
          CODE_9D9D26:
                       JSL.L CODE_9DE0E9                    ;9D9D26|22E9E09D|;
                       LDY.B zpCurntTeamLoopVal             ;9D9D2A|A491    |;
                       LDA.W $1796,Y                        ;9D9D2C|B99617  |;
                       INC A                                ;9D9D2F|1A      |;
                       STA.B $A5                            ;9D9D30|85A5    |;
                       STA.W $0D43                          ;9D9D32|8D430D  |;
                       STZ.W $0D47                          ;9D9D35|9C470D  |;
                       LDX.B zpCurntTeamLoopVal             ;9D9D38|A691    |;
                       LDA.W $1C98,X                        ;9D9D3A|BD981C  |;
                       STA.L $7E3454                        ;9D9D3D|8F54347E|;
                       LDA.W #$001D                         ;9D9D41|A91D00  |;
                       STA.L $7E3452                        ;9D9D44|8F52347E|;
                       JSL.L CODE_9DD9AD                    ;9D9D48|22ADD99D|;
                       LDX.W #$004C                         ;9D9D4C|A24C00  |;
                       LDY.W #$0018                         ;9D9D4F|A01800  |;
                       LDA.W #$009C                         ;9D9D52|A99C00  |;
                       STA.B $8F                            ;9D9D55|858F    |;
                       LDA.W #$F424                         ;9D9D57|A924F4  |;
                       STA.B $8D                            ;9D9D5A|858D    |;
                       JSL.L CODE_9C936C                    ;9D9D5C|226C939C|;
                       JSL.L CODE_9F96E6                    ;9D9D60|22E6969F|;
                       JSL.L CODE_9DDFF6                    ;9D9D64|22F6DF9D|;
                       JSL.L CODE_8086BD                    ;9D9D68|22BD8680|;
                       LDA.W #$007E                         ;9D9D6C|A97E00  |;
                       STA.B $12                            ;9D9D6F|8512    |;
                       LDA.W #$37F4                         ;9D9D71|A9F437  |;
                       STA.B $10                            ;9D9D74|8510    |;
                       LDA.L $7E35D0                        ;9D9D76|AFD0357E|;
                       CLC                                  ;9D9D7A|18      |;
                       ADC.L $7E35AA                        ;9D9D7B|6FAA357E|;
                       LDX.W #$0800                         ;9D9D7F|A20008  |;
                       JSL.L CODE_808EDF                    ;9D9D82|22DF8E80|;
                       LDA.B $8F                            ;9D9D86|A58F    |;
                       PHA                                  ;9D9D88|48      |;
                       LDA.B $8D                            ;9D9D89|A58D    |;
                       PHA                                  ;9D9D8B|48      |;
                       LDA.W #$009C                         ;9D9D8C|A99C00  |;
                       STA.B $8F                            ;9D9D8F|858F    |;
                       LDA.W #$F431                         ;9D9D91|A931F4  |;
                       STA.B $8D                            ;9D9D94|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D9D96|22BEC79E|;
                       PLA                                  ;9D9D9A|68      |;
                       STA.B $8D                            ;9D9D9B|858D    |;
                       PLA                                  ;9D9D9D|68      |;
                       STA.B $8F                            ;9D9D9E|858F    |;
                       LDA.W #$0800                         ;9D9DA0|A90008  |;
                       STA.W $0D0D                          ;9D9DA3|8D0D0D  |;
                       LDA.W #$000F                         ;9D9DA6|A90F00  |;
                       STA.B $A5                            ;9D9DA9|85A5    |;
                       LDA.W #$0003                         ;9D9DAB|A90300  |;
                       STA.B $A9                            ;9D9DAE|85A9    |;
                       JSL.L CODE_9D80DD                    ;9D9DB0|22DD809D|;
                       LDA.B $8F                            ;9D9DB4|A58F    |;
                       PHA                                  ;9D9DB6|48      |;
                       LDA.B $8D                            ;9D9DB7|A58D    |;
                       PHA                                  ;9D9DB9|48      |;
                       LDA.W #$009C                         ;9D9DBA|A99C00  |;
                       STA.B $8F                            ;9D9DBD|858F    |;
                       LDA.W #$F448                         ;9D9DBF|A948F4  |;
                       STA.B $8D                            ;9D9DC2|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D9DC4|22BEC79E|;
                       PLA                                  ;9D9DC8|68      |;
                       STA.B $8D                            ;9D9DC9|858D    |;
                       PLA                                  ;9D9DCB|68      |;
                       STA.B $8F                            ;9D9DCC|858F    |;
                       LDA.W #$0800                         ;9D9DCE|A90008  |;
                       STA.W $0D0D                          ;9D9DD1|8D0D0D  |;
                       LDA.W #$000F                         ;9D9DD4|A90F00  |;
                       STA.B $A5                            ;9D9DD7|85A5    |;
                       LDA.W #$0003                         ;9D9DD9|A90300  |;
                       STA.B $A9                            ;9D9DDC|85A9    |;
                       JSL.L CODE_9D80DD                    ;9D9DDE|22DD809D|;
 
          CODE_9D9DE2:
                       LDA.B $8F                            ;9D9DE2|A58F    |;
                       PHA                                  ;9D9DE4|48      |;
                       LDA.B $8D                            ;9D9DE5|A58D    |;
                       PHA                                  ;9D9DE7|48      |;
                       LDA.W #$009C                         ;9D9DE8|A99C00  |;
                       STA.B $8F                            ;9D9DEB|858F    |;
                       LDA.W #$F44D                         ;9D9DED|A94DF4  |;
                       STA.B $8D                            ;9D9DF0|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D9DF2|22BEC79E|;
                       PLA                                  ;9D9DF6|68      |;
                       STA.B $8D                            ;9D9DF7|858D    |;
                       PLA                                  ;9D9DF9|68      |;
                       STA.B $8F                            ;9D9DFA|858F    |;
                       LDA.W $1C98                          ;9D9DFC|AD981C  |;
                       STA.B $A9                            ;9D9DFF|85A9    |;
                       LDA.B zpCurntTeamLoopVal             ;9D9E01|A591    |;
                       BEQ CODE_9D9E0D                      ;9D9E03|F008    |;
                       LDA.W $1C9A                          ;9D9E05|AD9A1C  |;
                       STA.B $A9                            ;9D9E08|85A9    |;
                       LDA.W #$0030                         ;9D9E0A|A93000  |;
 
          CODE_9D9E0D:
                       STA.B $A5                            ;9D9E0D|85A5    |;
                       JSL.L CODE_9FBE08                    ;9D9E0F|2208BE9F|;
                       JSL.L CODE_80AFDE                    ;9D9E13|22DEAF80|;
                       LDA.W #$7F97                         ;9D9E17|A9977F  |;
                       STA.L $7F7502                        ;9D9E1A|8F02757F|;
                       LDA.W #$FFFF                         ;9D9E1E|A9FFFF  |;
                       STA.L $7F7542                        ;9D9E21|8F42757F|;
                       JSL.L CODE_9DE0D4                    ;9D9E25|22D4E09D|;
                       JSL.L CODE_9D9ECB                    ;9D9E29|22CB9E9D|;
 
          CODE_9D9E2D:
                       JSL.L CODE_9DD923                    ;9D9E2D|2223D99D|;
                       JSL.L CODE_808583                    ;9D9E31|22838580|;
                       JSL.L CODE_9B8017                    ;9D9E35|2217809B|;
                       JSL.L CODE_9B851F                    ;9D9E39|221F859B|;
                       JSL.L CODE_9B852C                    ;9D9E3D|222C859B|;
                       LDA.B $A9                            ;9D9E41|A5A9    |;
                       BIT.W #$1000                         ;9D9E43|890010  |;
                       BEQ CODE_9D9E4B                      ;9D9E46|F003    |;
                       JMP.W CODE_9DA04C                    ;9D9E48|4C4CA0  |;
 
          CODE_9D9E4B:
                       BIT.W #$4000                         ;9D9E4B|890040  |;
                       BNE CODE_9D9E9C                      ;9D9E4E|D04C    |;
                       STZ.B $A5                            ;9D9E50|64A5    |;
                       INC.B $A5                            ;9D9E52|E6A5    |;
                       BIT.W #$0100                         ;9D9E54|890001  |;
                       BNE CODE_9D9E89                      ;9D9E57|D030    |;
                       DEC.B $A5                            ;9D9E59|C6A5    |;
                       DEC.B $A5                            ;9D9E5B|C6A5    |;
                       BIT.W #$0200                         ;9D9E5D|890002  |;
                       BNE CODE_9D9E89                      ;9D9E60|D027    |;
                       BIT.W #$0800                         ;9D9E62|890008  |;
                       BNE CODE_9D9E70                      ;9D9E65|D009    |;
                       INC.B $A5                            ;9D9E67|E6A5    |;
                       INC.B $A5                            ;9D9E69|E6A5    |;
                       BIT.W #$0400                         ;9D9E6B|890004  |;
                       BEQ CODE_9D9E86                      ;9D9E6E|F016    |;
 
          CODE_9D9E70:
                       LDA.B $A5                            ;9D9E70|A5A5    |;
                       CLC                                  ;9D9E72|18      |;
                       ADC.W $0D43                          ;9D9E73|6D430D  |;
                       STA.B $A5                            ;9D9E76|85A5    |;
                       BMI CODE_9D9E86                      ;9D9E78|300C    |;
                       CMP.W #$0008                         ;9D9E7A|C90800  |;
                       BCS CODE_9D9E86                      ;9D9E7D|B007    |;
                       STA.W $0D43                          ;9D9E7F|8D430D  |;
                       JSL.L CODE_9D9ECB                    ;9D9E82|22CB9E9D|;
 
          CODE_9D9E86:
                       JMP.W CODE_9D9E2D                    ;9D9E86|4C2D9E  |;
 
          CODE_9D9E89:
                       LDA.B $A5                            ;9D9E89|A5A5    |;
                       CLC                                  ;9D9E8B|18      |;
                       ADC.W $0D47                          ;9D9E8C|6D470D  |;
                       STA.B $A5                            ;9D9E8F|85A5    |;
                       BMI CODE_9D9E86                      ;9D9E91|30F3    |;
                       STA.W $0D47                          ;9D9E93|8D470D  |;
                       JSL.L CODE_9D9ECB                    ;9D9E96|22CB9E9D|;
                       BRA CODE_9D9E86                      ;9D9E9A|80EA    |;
 
          CODE_9D9E9C:
                       LDA.B zpCurntTeamLoopVal             ;9D9E9C|A591    |;
                       EOR.W #$0002                         ;9D9E9E|490200  |;
                       STA.B zpCurntTeamLoopVal             ;9D9EA1|8591    |;
                       JSL.L CODE_80AF7B                    ;9D9EA3|227BAF80|;
                       LDX.B zpCurntTeamLoopVal             ;9D9EA7|A691    |;
                       LDA.W $1C98,X                        ;9D9EA9|BD981C  |;
                       STA.L $7E3454                        ;9D9EAC|8F54347E|;
                       LDX.W #$004C                         ;9D9EB0|A24C00  |;
                       LDY.W #$0018                         ;9D9EB3|A01800  |;
                       LDA.W #$009C                         ;9D9EB6|A99C00  |;
                       STA.B $8F                            ;9D9EB9|858F    |;
                       LDA.W #$F452                         ;9D9EBB|A952F4  |;
                       STA.B $8D                            ;9D9EBE|858D    |;
                       JSL.L CODE_9C936C                    ;9D9EC0|226C939C|;
                       JSL.L CODE_9DDDB3                    ;9D9EC4|22B3DD9D|;
                       JMP.W CODE_9D9DE2                    ;9D9EC8|4CE29D  |;
 
          CODE_9D9ECB:
                       LDA.B $8F                            ;9D9ECB|A58F    |;
                       PHA                                  ;9D9ECD|48      |;
                       LDA.B $8D                            ;9D9ECE|A58D    |;
                       PHA                                  ;9D9ED0|48      |;
                       LDA.W #$009C                         ;9D9ED1|A99C00  |;
                       STA.B $8F                            ;9D9ED4|858F    |;
                       LDA.W #$F45F                         ;9D9ED6|A95FF4  |;
                       STA.B $8D                            ;9D9ED9|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D9EDB|22BEC79E|;
                       PLA                                  ;9D9EDF|68      |;
                       STA.B $8D                            ;9D9EE0|858D    |;
                       PLA                                  ;9D9EE2|68      |;
                       STA.B $8F                            ;9D9EE3|858F    |;
                       LDA.W $0D43                          ;9D9EE5|AD430D  |;
                       STA.B $A5                            ;9D9EE8|85A5    |;
                       LDA.W #$009D                         ;9D9EEA|A99D00  |;
                       STA.B $8F                            ;9D9EED|858F    |;
                       LDA.W #$A05D                         ;9D9EEF|A95DA0  |;
                       STA.B $8D                            ;9D9EF2|858D    |;
                       JSL.L CODE_9ED323                    ;9D9EF4|2223D39E|;
                       JSL.L CODE_9EC7BE                    ;9D9EF8|22BEC79E|;
                       LDA.W #$0011                         ;9D9EFC|A91100  |;
                       STA.W $0D0F                          ;9D9EFF|8D0F0D  |;
                       LDA.W #$0009                         ;9D9F02|A90900  |;
                       STA.W $0D11                          ;9D9F05|8D110D  |;
 
          CODE_9D9F08:
                       LDA.W #$0080                         ;9D9F08|A98000  |;
                       STA.B $8F                            ;9D9F0B|858F    |;
                       LDA.W #$D79B                         ;9D9F0D|A99BD7  |;
                       STA.B $8D                            ;9D9F10|858D    |;
                       LDA.W $0D47                          ;9D9F12|AD470D  |;
                       STA.B $A5                            ;9D9F15|85A5    |;
                       LDA.W $0D43                          ;9D9F17|AD430D  |;
                       BNE CODE_9D9F32                      ;9D9F1A|D016    |;
                       LDA.W #$0080                         ;9D9F1C|A98000  |;
                       STA.B $8F                            ;9D9F1F|858F    |;
                       LDA.W #$D8CD                         ;9D9F21|A9CDD8  |;
                       STA.B $8D                            ;9D9F24|858D    |;
                       BRA CODE_9D9F32                      ;9D9F26|800A    |;
 
          CODE_9D9F28:
                       LDA.B $8D                            ;9D9F28|A58D    |;
                       CLC                                  ;9D9F2A|18      |;
                       ADC.B [$8D]                          ;9D9F2B|678D    |;
                       ADC.W #$0004                         ;9D9F2D|690400  |;
                       STA.B $8D                            ;9D9F30|858D    |;
 
          CODE_9D9F32:
                       LDA.B [$8D]                          ;9D9F32|A78D    |;
                       BMI CODE_9D9F3A                      ;9D9F34|3004    |;
                       DEC.B $A5                            ;9D9F36|C6A5    |;
                       BPL CODE_9D9F28                      ;9D9F38|10EE    |;
 
          CODE_9D9F3A:
                       LDA.B [$8D]                          ;9D9F3A|A78D    |;
                       BPL CODE_9D9F43                      ;9D9F3C|1005    |;
                       DEC.W $0D47                          ;9D9F3E|CE470D  |;
                       BRA CODE_9D9F08                      ;9D9F41|80C5    |;
 
          CODE_9D9F43:
                       JSL.L CODE_9EC7BE                    ;9D9F43|22BEC79E|;
                       LDA.B [$8D]                          ;9D9F47|A78D    |;
                       STA.B $B7                            ;9D9F49|85B7    |;
                       LDY.W #$0002                         ;9D9F4B|A00200  |;
                       LDA.B [$8D],Y                        ;9D9F4E|B78D    |;
                       STA.B $B5                            ;9D9F50|85B5    |;
                       LDA.B $8F                            ;9D9F52|A58F    |;
                       PHA                                  ;9D9F54|48      |;
                       LDA.B $8D                            ;9D9F55|A58D    |;
                       PHA                                  ;9D9F57|48      |;
                       LDA.W #$009C                         ;9D9F58|A99C00  |;
                       STA.B $8F                            ;9D9F5B|858F    |;
                       LDA.W #$F464                         ;9D9F5D|A964F4  |;
                       STA.B $8D                            ;9D9F60|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D9F62|22BEC79E|;
                       PLA                                  ;9D9F66|68      |;
                       STA.B $8D                            ;9D9F67|858D    |;
                       PLA                                  ;9D9F69|68      |;
                       STA.B $8F                            ;9D9F6A|858F    |;
                       LDA.W #$0020                         ;9D9F6C|A92000  |;
                       STA.B $A5                            ;9D9F6F|85A5    |;
                       LDA.W #$0013                         ;9D9F71|A91300  |;
                       STA.B $A9                            ;9D9F74|85A9    |;
                       LDA.L $7E35D0                        ;9D9F76|AFD0357E|;
                       STA.B $AD                            ;9D9F7A|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9D9F7C|229CBD9F|;
                       LDA.B $8F                            ;9D9F80|A58F    |;
                       PHA                                  ;9D9F82|48      |;
                       LDA.B $8D                            ;9D9F83|A58D    |;
                       PHA                                  ;9D9F85|48      |;
                       LDA.W #$009C                         ;9D9F86|A99C00  |;
                       STA.B $8F                            ;9D9F89|858F    |;
                       LDA.W #$F469                         ;9D9F8B|A969F4  |;
                       STA.B $8D                            ;9D9F8E|858D    |;
                       JSL.L CODE_9EC7BE                    ;9D9F90|22BEC79E|;
                       PLA                                  ;9D9F94|68      |;
                       STA.B $8D                            ;9D9F95|858D    |;
                       PLA                                  ;9D9F97|68      |;
                       STA.B $8F                            ;9D9F98|858F    |;
                       JSL.L CODE_9ED300                    ;9D9F9A|2200D39E|;
                       LDA.B $A5                            ;9D9F9E|A5A5    |;
                       DEC A                                ;9D9FA0|3A      |;
                       STA.B $A9                            ;9D9FA1|85A9    |;
                       LDA.W #$009D                         ;9D9FA3|A99D00  |;
                       STA.B $9F                            ;9D9FA6|859F    |;
                       LDA.W #$A051                         ;9D9FA8|A951A0  |;
                       STA.B $9D                            ;9D9FAB|859D    |;
                       LDA.W #$009D                         ;9D9FAD|A99D00  |;
                       STA.B $97                            ;9D9FB0|8597    |;
                       LDA.W #$A04D                         ;9D9FB2|A94DA0  |;
                       STA.B $95                            ;9D9FB5|8595    |;
                       LDA.W $0D43                          ;9D9FB7|AD430D  |;
                       DEC A                                ;9D9FBA|3A      |;
                       STA.B $A5                            ;9D9FBB|85A5    |;
                       BMI CODE_9D9FFD                      ;9D9FBD|303E    |;
                       ASL A                                ;9D9FBF|0A      |;
                       ASL A                                ;9D9FC0|0A      |;
                       ASL A                                ;9D9FC1|0A      |;
                       STA.B $A5                            ;9D9FC2|85A5    |;
                       LDY.B zpCurntTeamLoopVal             ;9D9FC4|A491    |;
                       LDA.W #$009C                         ;9D9FC6|A99C00  |;
                       STA.B $97                            ;9D9FC9|8597    |;
                       LDA.W $1CDC,Y                        ;9D9FCB|B9DC1C  |;
                       STA.B $95                            ;9D9FCE|8595    |;
                       LDY.W #$0006                         ;9D9FD0|A00600  |;
                       CLC                                  ;9D9FD3|18      |;
                       ADC.B [$95],Y                        ;9D9FD4|7795    |;
                       SEC                                  ;9D9FD6|38      |;
                       ADC.B $A5                            ;9D9FD7|65A5    |;
                       STA.B $95                            ;9D9FD9|8595    |;
                       LDA.W #$0080                         ;9D9FDB|A98000  |;
                       STA.B $9F                            ;9D9FDE|859F    |;
                       LDA.W #$D9B3                         ;9D9FE0|A9B3D9  |;
                       STA.B $9D                            ;9D9FE3|859D    |;
                       LDA.W #$0004                         ;9D9FE5|A90400  |;
                       STA.B $A9                            ;9D9FE8|85A9    |;
                       LDA.W $0D43                          ;9D9FEA|AD430D  |;
                       SEC                                  ;9D9FED|38      |;
                       SBC.W #$0005                         ;9D9FEE|E90500  |;
                       BEQ CODE_9D9FFD                      ;9D9FF1|F00A    |;
                       BMI CODE_9D9FF9                      ;9D9FF3|3004    |;
                       BVC CODE_9D9FFB                      ;9D9FF5|5004    |;
                       db $80,$04                           ;9D9FF7|        |;
 
          CODE_9D9FF9:
                       BVC CODE_9D9FFD                      ;9D9FF9|5002    |;
 
          CODE_9D9FFB:
                       DEC.B $A9                            ;9D9FFB|C6A9    |;
 
          CODE_9D9FFD:
                       LDA.W #$0001                         ;9D9FFD|A90100  |;
                       STA.W $0D0F                          ;9DA000|8D0F0D  |;
                       LDA.B $9F                            ;9DA003|A59F    |;
                       STA.B $8F                            ;9DA005|858F    |;
                       LDA.B $9D                            ;9DA007|A59D    |;
                       STA.B $8D                            ;9DA009|858D    |;
                       JSL.L CODE_9EC7BE                    ;9DA00B|22BEC79E|;
                       LDA.B $8F                            ;9DA00F|A58F    |;
                       STA.B $9F                            ;9DA011|859F    |;
                       LDA.B $8D                            ;9DA013|A58D    |;
                       STA.B $9D                            ;9DA015|859D    |;
                       LDA.W #$0004                         ;9DA017|A90400  |;
                       STA.W $0D0F                          ;9DA01A|8D0F0D  |;
                       LDA.B [$95]                          ;9DA01D|A795    |;
                       INC.B $95                            ;9DA01F|E695    |;
                       AND.W #$00FF                         ;9DA021|29FF00  |;
                       DEC A                                ;9DA024|3A      |;
                       STA.B $A5                            ;9DA025|85A5    |;
                       STA.B $04                            ;9DA027|8504    |;
                       STZ.B $08                            ;9DA029|6408    |;
                       JSL.L CODE_9ED300                    ;9DA02B|2200D39E|;
                       LDA.B $04                            ;9DA02F|A504    |;
                       CMP.B $A5                            ;9DA031|C5A5    |;
                       BPL CODE_9DA03A                      ;9DA033|1005    |;
                       LDA.W #$0010                         ;9DA035|A91000  |;
                       STA.B $08                            ;9DA038|8508    |;
 
          CODE_9DA03A:
                       LDA.B $04                            ;9DA03A|A504    |;
                       STA.B $A5                            ;9DA03C|85A5    |;
                       JSL.L CODE_9F9745                    ;9DA03E|2245979F|;
                       INC.W $0D11                          ;9DA042|EE110D  |;
                       INC.W $0D11                          ;9DA045|EE110D  |;
                       DEC.B $A9                            ;9DA048|C6A9    |;
                       BPL CODE_9D9FFD                      ;9DA04A|10B1    |;
 
          CODE_9DA04C:
                       RTL                                  ;9DA04C|6B      |;
                       db $01,$02,$03,$04,$03,$00,$47,$03   ;9DA04D|        |;
                       db $00,$47,$03,$00,$47,$03,$00,$47   ;9DA055|        |;
                       db $0F,$00                           ;9DA05D|        |;
                       db $20,$20,$47,$6F,$61,$6C,$69,$65   ;9DA05F|        |;
                       db $73,$20,$20,$20,$7D               ;9DA067|        |;
                       db $0F,$00,$7B,$53,$63,$6F,$72,$69   ;9DA06C|        |;
                       db $6E,$67,$20,$20,$31,$20,$7D,$0F   ;9DA074|        |;
                       db $00,$7B,$53,$63,$6F,$72,$69,$6E   ;9DA07C|        |;
                       db $67,$20,$20,$32,$20,$7D,$0F,$00   ;9DA084|        |;
                       db $7B,$20,$43,$68,$65,$63,$6B,$69   ;9DA08C|        |;
                       db $6E,$67,$20,$20,$7D,$0F,$00,$7B   ;9DA094|        |;
                       db $50,$77,$72,$2E,$20,$50,$6C,$61   ;9DA09C|        |;
                       db $79,$20,$31,$7D,$0F,$00,$7B,$50   ;9DA0A4|        |;
                       db $77,$72,$2E,$20,$50,$6C,$61,$79   ;9DA0AC|        |;
                       db $20,$32,$7D,$0F,$00,$7B,$50,$65   ;9DA0B4|        |;
                       db $6E,$2E,$20,$4B,$69,$6C,$6C,$20   ;9DA0BC|        |;
                       db $31,$7D,$0F,$00,$7B,$50,$65,$6E   ;9DA0C4|        |;
                       db $2E,$20,$4B,$69,$6C,$6C,$20,$32   ;9DA0CC|        |;
                       db $20                               ;9DA0D4|        |;
 
          CODE_9DA0D5:
                       STZ.W $1C84                          ;9DA0D5|9C841C  |;
                       STZ.W $1C86                          ;9DA0D8|9C861C  |;
                       STZ.W $1C88                          ;9DA0DB|9C881C  |;
                       STZ.W $1C8A                          ;9DA0DE|9C8A1C  |;
                       STZ.W $1C8C                          ;9DA0E1|9C8C1C  |;
                       LDA.L $7E34CC                        ;9DA0E4|AFCC347E|;
                       BNE CODE_9DA0EB                      ;9DA0E8|D001    |;
                       RTL                                  ;9DA0EA|6B      |;
 
          CODE_9DA0EB:
                       LDA.W #$FFFF                         ;9DA0EB|A9FFFF  |;
                       STA.W $0AD7                          ;9DA0EE|8DD70A  |;
                       JSL.L CODE_9F96F7                    ;9DA0F1|22F7969F|;
                       JSL.L CODE_9F9708                    ;9DA0F5|2208979F|;
                       JSL.L CODE_8086A9                    ;9DA0F9|22A98680|;
                       SEP #$20                             ;9DA0FD|E220    |;
                       LDA.B #$09                           ;9DA0FF|A909    |;
                       STA.W $2105                          ;9DA101|8D0521  |;
                       LDA.B #$08                           ;9DA104|A908    |;
                       STA.W $2109                          ;9DA106|8D0921  |;
                       LDA.B #$04                           ;9DA109|A904    |;
                       STA.W $210C                          ;9DA10B|8D0C21  |;
                       LDA.B #$17                           ;9DA10E|A917    |;
                       STA.W $212C                          ;9DA110|8D2C21  |;
                       REP #$20                             ;9DA113|C220    |;
                       LDA.W #$FFFC                         ;9DA115|A9FCFF  |;
                       STA.W $07E0                          ;9DA118|8DE007  |;
                       LDA.W #$007E                         ;9DA11B|A97E00  |;
                       STA.B $12                            ;9DA11E|8512    |;
                       LDA.W #$A676                         ;9DA120|A976A6  |;
                       STA.B $10                            ;9DA123|8510    |;
                       LDA.W #$0000                         ;9DA125|A90000  |;
                       LDX.W #$0800                         ;9DA128|A20008  |;
                       JSL.L CODE_808EDF                    ;9DA12B|22DF8E80|;
                       LDA.W #$007E                         ;9DA12F|A97E00  |;
                       STA.B $0E                            ;9DA132|850E    |;
                       LDA.W #$A676                         ;9DA134|A976A6  |;
                       STA.B $0C                            ;9DA137|850C    |;
                       LDA.W #$0000                         ;9DA139|A90000  |;
                       LDX.W #$0800                         ;9DA13C|A20008  |;
                       LDY.W #$0800                         ;9DA13F|A00008  |;
                       JSL.L CODE_80891F                    ;9DA142|221F8980|;
                       JSL.L CODE_9DDFF6                    ;9DA146|22F6DF9D|;
                       JSL.L CODE_8086BD                    ;9DA14A|22BD8680|;
                       JSL.L CODE_9F96E6                    ;9DA14E|22E6969F|;
                       LDA.W #$000A                         ;9DA152|A90A00  |;
                       STA.W $0AD1                          ;9DA155|8DD10A  |;
                       STZ.B $A9                            ;9DA158|64A9    |;
                       STZ.B $AB                            ;9DA15A|64AB    |;
                       LDA.L $7E34BC                        ;9DA15C|AFBC347E|;
                       CMP.W #$0001                         ;9DA160|C90100  |;
                       BCC CODE_9DA184                      ;9DA163|901F    |;
                       CMP.W #$0004                         ;9DA165|C90400  |;
                       BCS CODE_9DA184                      ;9DA168|B01A    |;
                       LDA.W #$0001                         ;9DA16A|A90100  |;
                       STA.W $1C84                          ;9DA16D|8D841C  |;
                       JSL.L CODE_9D995D                    ;9DA170|225D999D|;
                       LDA.W $1C84                          ;9DA174|AD841C  |;
                       DEC A                                ;9DA177|3A      |;
                       BEQ CODE_9DA180                      ;9DA178|F006    |;
                       LDA.W $1C9A                          ;9DA17A|AD9A1C  |;
                       STA.W $1C98                          ;9DA17D|8D981C  |;
 
          CODE_9DA180:
                       DEC.B $A9                            ;9DA180|C6A9    |;
                       INC.B $AB                            ;9DA182|E6AB    |;
 
          CODE_9DA184:
                       LDA.W #$0001                         ;9DA184|A90100  |;
                       STA.W $1C84                          ;9DA187|8D841C  |;
 
          CODE_9DA18A:
                       LDA.B $A9                            ;9DA18A|A5A9    |;
                       PHA                                  ;9DA18C|48      |;
                       JSL.L CODE_9DB0FD                    ;9DA18D|22FDB09D|;
                       JSR.W CODE_9DAF5B                    ;9DA191|205BAF  |;
                       LDX.W #$0000                         ;9DA194|A20000  |;
                       LDA.W #$0000                         ;9DA197|A90000  |;
 
          CODE_9DA19A:
                       STA.L $7E4EF4,X                      ;9DA19A|9FF44E7E|;
                       INX                                  ;9DA19E|E8      |;
                       INX                                  ;9DA19F|E8      |;
                       CPX.W #$0290                         ;9DA1A0|E09002  |;
                       BCC CODE_9DA19A                      ;9DA1A3|90F5    |;
                       LDA.W #$FFFF                         ;9DA1A5|A9FFFF  |;
                       STA.L $7E3460                        ;9DA1A8|8F60347E|;
                       LDA.W #$0001                         ;9DA1AC|A90100  |;
                       STA.W $0D0F                          ;9DA1AF|8D0F0D  |;
                       LDA.W #$000A                         ;9DA1B2|A90A00  |;
                       STA.W $0D11                          ;9DA1B5|8D110D  |;
                       LDA.W $1C9A                          ;9DA1B8|AD9A1C  |;
                       STA.B $A9                            ;9DA1BB|85A9    |;
                       LDA.B $AB                            ;9DA1BD|A5AB    |;
                       PHA                                  ;9DA1BF|48      |;
                       BNE CODE_9DA1C5                      ;9DA1C0|D003    |;
                       JSR.W CODE_9DAE6D                    ;9DA1C2|206DAE  |;
 
          CODE_9DA1C5:
                       PLA                                  ;9DA1C5|68      |;
                       STA.B $AB                            ;9DA1C6|85AB    |;
                       LDA.W #$0016                         ;9DA1C8|A91600  |;
                       STA.W $0D0F                          ;9DA1CB|8D0F0D  |;
                       LDA.W $1C98                          ;9DA1CE|AD981C  |;
                       STA.B $A9                            ;9DA1D1|85A9    |;
                       JSR.W CODE_9DAE6D                    ;9DA1D3|206DAE  |;
                       JSR.W CODE_9DB0AB                    ;9DA1D6|20ABB0  |;
                       JSL.L CODE_9DD923                    ;9DA1D9|2223D99D|;
                       PLA                                  ;9DA1DD|68      |;
                       STA.B $A9                            ;9DA1DE|85A9    |;
                       LDA.W #$009A                         ;9DA1E0|A99A00  |;
                       STA.B $0E                            ;9DA1E3|850E    |;
                       LDA.W #$CEB6                         ;9DA1E5|A9B6CE  |;
                       STA.B $0C                            ;9DA1E8|850C    |;
                       LDY.W #$0090                         ;9DA1EA|A09000  |;
                       LDX.W #$0010                         ;9DA1ED|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9DA1F0|22BDE09D|;
                       LDA.B $AB                            ;9DA1F4|A5AB    |;
                       BEQ CODE_9DA22E                      ;9DA1F6|F036    |;
                       LDA.B $8F                            ;9DA1F8|A58F    |;
                       PHA                                  ;9DA1FA|48      |;
                       LDA.B $8D                            ;9DA1FB|A58D    |;
                       PHA                                  ;9DA1FD|48      |;
                       LDA.W #$009C                         ;9DA1FE|A99C00  |;
                       STA.B $8F                            ;9DA201|858F    |;
                       LDA.W #$F481                         ;9DA203|A981F4  |;
                       STA.B $8D                            ;9DA206|858D    |;
                       JSL.L CODE_9EC7BE                    ;9DA208|22BEC79E|;
                       PLA                                  ;9DA20C|68      |;
                       STA.B $8D                            ;9DA20D|858D    |;
                       PLA                                  ;9DA20F|68      |;
                       STA.B $8F                            ;9DA210|858F    |;
                       LDA.B $8F                            ;9DA212|A58F    |;
                       PHA                                  ;9DA214|48      |;
                       LDA.B $8D                            ;9DA215|A58D    |;
                       PHA                                  ;9DA217|48      |;
                       LDA.W #$009C                         ;9DA218|A99C00  |;
                       STA.B $8F                            ;9DA21B|858F    |;
                       LDA.W #$F489                         ;9DA21D|A989F4  |;
                       STA.B $8D                            ;9DA220|858D    |;
                       JSL.L CODE_9EC7BE                    ;9DA222|22BEC79E|;
                       PLA                                  ;9DA226|68      |;
                       STA.B $8D                            ;9DA227|858D    |;
                       PLA                                  ;9DA229|68      |;
                       STA.B $8F                            ;9DA22A|858F    |;
                       BRA CODE_9DA264                      ;9DA22C|8036    |;
 
          CODE_9DA22E:
                       LDA.B $8F                            ;9DA22E|A58F    |;
                       PHA                                  ;9DA230|48      |;
                       LDA.B $8D                            ;9DA231|A58D    |;
                       PHA                                  ;9DA233|48      |;
                       LDA.W #$009C                         ;9DA234|A99C00  |;
                       STA.B $8F                            ;9DA237|858F    |;
                       LDA.W #$F495                         ;9DA239|A995F4  |;
                       STA.B $8D                            ;9DA23C|858D    |;
                       JSL.L CODE_9EC7BE                    ;9DA23E|22BEC79E|;
                       PLA                                  ;9DA242|68      |;
                       STA.B $8D                            ;9DA243|858D    |;
                       PLA                                  ;9DA245|68      |;
                       STA.B $8F                            ;9DA246|858F    |;
                       LDA.B $8F                            ;9DA248|A58F    |;
                       PHA                                  ;9DA24A|48      |;
                       LDA.B $8D                            ;9DA24B|A58D    |;
                       PHA                                  ;9DA24D|48      |;
                       LDA.W #$009C                         ;9DA24E|A99C00  |;
                       STA.B $8F                            ;9DA251|858F    |;
                       LDA.W #$F49D                         ;9DA253|A99DF4  |;
                       STA.B $8D                            ;9DA256|858D    |;
                       JSL.L CODE_9EC7BE                    ;9DA258|22BEC79E|;
                       PLA                                  ;9DA25C|68      |;
                       STA.B $8D                            ;9DA25D|858D    |;
                       PLA                                  ;9DA25F|68      |;
                       STA.B $8F                            ;9DA260|858F    |;
                       BRA CODE_9DA264                      ;9DA262|8000    |;
 
          CODE_9DA264:
                       LDA.B $8F                            ;9DA264|A58F    |;
                       PHA                                  ;9DA266|48      |;
                       LDA.B $8D                            ;9DA267|A58D    |;
                       PHA                                  ;9DA269|48      |;
                       LDA.W #$009C                         ;9DA26A|A99C00  |;
                       STA.B $8F                            ;9DA26D|858F    |;
                       LDA.W #$F4A9                         ;9DA26F|A9A9F4  |;
                       STA.B $8D                            ;9DA272|858D    |;
                       JSL.L CODE_9EC7BE                    ;9DA274|22BEC79E|;
                       PLA                                  ;9DA278|68      |;
                       STA.B $8D                            ;9DA279|858D    |;
                       PLA                                  ;9DA27B|68      |;
                       STA.B $8F                            ;9DA27C|858F    |;
                       LDA.B $8F                            ;9DA27E|A58F    |;
                       PHA                                  ;9DA280|48      |;
                       LDA.B $8D                            ;9DA281|A58D    |;
                       PHA                                  ;9DA283|48      |;
                       LDA.W #$009C                         ;9DA284|A99C00  |;
                       STA.B $8F                            ;9DA287|858F    |;
                       LDA.W #$F4C3                         ;9DA289|A9C3F4  |;
                       STA.B $8D                            ;9DA28C|858D    |;
                       JSL.L CODE_9EC7BE                    ;9DA28E|22BEC79E|;
                       PLA                                  ;9DA292|68      |;
                       STA.B $8D                            ;9DA293|858D    |;
                       PLA                                  ;9DA295|68      |;
                       STA.B $8F                            ;9DA296|858F    |;
                       JSL.L CODE_9FBF75                    ;9DA298|2275BF9F|;
 
          CODE_9DA29C:
                       JSL.L CODE_808583                    ;9DA29C|22838580|;
                       LDX.W $1A0E                          ;9DA2A0|AE0E1A  |;
                       TXA                                  ;9DA2A3|8A      |;
                       EOR.B $AD                            ;9DA2A4|45AD    |;
                       BNE CODE_9DA2AB                      ;9DA2A6|D003    |;
                       JMP.W CODE_9DA2E6                    ;9DA2A8|4CE6A2  |;
 
          CODE_9DA2AB:
                       STX.B $AD                            ;9DA2AB|86AD    |;
                       TXA                                  ;9DA2AD|8A      |;
                       BEQ CODE_9DA2DF                      ;9DA2AE|F02F    |;
                       db $89,$01,$00,$D0,$0C,$89,$02,$00   ;9DA2B0|        |;
                       db $D0,$11,$89,$04,$00,$D0,$16,$80   ;9DA2B8|        |;
                       db $25,$22,$84,$AF,$9D,$22,$B2,$AF   ;9DA2C0|        |;
                       db $9D,$80,$1B,$22,$84,$AF,$9D,$22   ;9DA2C8|        |;
                       db $05,$B0,$9D,$80,$11,$22,$84,$AF   ;9DA2D0|        |;
                       db $9D,$22,$58,$B0,$9D,$80,$07       ;9DA2D8|        |;
 
          CODE_9DA2DF:
                       JSL.L CODE_9B8358                    ;9DA2DF|2258839B|;
                       JMP.W CODE_9DA18A                    ;9DA2E3|4C8AA1  |;
 
          CODE_9DA2E6:
                       LDA.W $1A0E                          ;9DA2E6|AD0E1A  |;
                       BEQ CODE_9DA2EE                      ;9DA2E9|F003    |;
                       db $4C,$9C,$A2                       ;9DA2EB|        |;
 
          CODE_9DA2EE:
                       JSL.L CODE_9B8017                    ;9DA2EE|2217809B|;
                       LDX.W #$0000                         ;9DA2F2|A20000  |;
 
          CODE_9DA2F5:
                       LDA.W $1A0E                          ;9DA2F5|AD0E1A  |;
                       BNE CODE_9DA302                      ;9DA2F8|D008    |;
                       LDA.W $0776,X                        ;9DA2FA|BD7607  |;
                       AND.W #$000F                         ;9DA2FD|290F00  |;
                       BEQ CODE_9DA30B                      ;9DA300|F009    |;
 
          CODE_9DA302:
                       LDA.W #$0000                         ;9DA302|A90000  |;
                       STA.W $1C84,X                        ;9DA305|9D841C  |;
                       JMP.W CODE_9DA486                    ;9DA308|4C86A4  |;
 
          CODE_9DA30B:
                       LDA.W $0AB8,X                        ;9DA30B|BDB80A  |;
                       BIT.W #$1000                         ;9DA30E|890010  |;
                       BNE CODE_9DA316                      ;9DA311|D003    |;
                       JMP.W CODE_9DA44B                    ;9DA313|4C4BA4  |;
 
          CODE_9DA316:
                       LDA.B $AB                            ;9DA316|A5AB    |;
                       BEQ CODE_9DA333                      ;9DA318|F019    |;
                       LDX.W #$0000                         ;9DA31A|A20000  |;
                       LDA.W #$0000                         ;9DA31D|A90000  |;
 
          CODE_9DA320:
                       ORA.W $1C84,X                        ;9DA320|1D841C  |;
                       INX                                  ;9DA323|E8      |;
                       INX                                  ;9DA324|E8      |;
                       CPX.W #$000A                         ;9DA325|E00A00  |;
                       BCC CODE_9DA320                      ;9DA328|90F6    |;
                       BIT.W #$0001                         ;9DA32A|890100  |;
                       BEQ UNREACH_9DA363                   ;9DA32D|F034    |;
                       JSL.L CODE_9D995D                    ;9DA32F|225D999D|;
 
          CODE_9DA333:
                       LDA.L $7E34BC                        ;9DA333|AFBC347E|;
                       CMP.W #$0004                         ;9DA337|C90400  |;
                       BNE CODE_9DA35F                      ;9DA33A|D023    |;
                       LDX.W #$0005                         ;9DA33C|A20500  |;
 
          CODE_9DA33F:
                       TXA                                  ;9DA33F|8A      |;
                       ASL A                                ;9DA340|0A      |;
                       TAY                                  ;9DA341|A8      |;
                       LDA.W $1C84,Y                        ;9DA342|B9841C  |;
                       BEQ CODE_9DA35C                      ;9DA345|F015    |;
                       db $85,$14,$8A,$3A,$85,$16,$A5,$16   ;9DA347|        |;
                       db $0A,$A8,$B9,$84,$1C,$C5,$14,$F0   ;9DA34F|        |;
                       db $49,$C6,$16,$10,$F1               ;9DA357|        |;
 
          CODE_9DA35C:
                       DEX                                  ;9DA35C|CA      |;
                       BNE CODE_9DA33F                      ;9DA35D|D0E0    |;
 
          CODE_9DA35F:
                       STZ.W $0AD7                          ;9DA35F|9CD70A  |;
                       RTL                                  ;9DA362|6B      |;
 
       UNREACH_9DA363:
                       db $A5,$8F,$48,$A5,$8D,$48,$A9,$9C   ;9DA363|        |;
                       db $00,$85,$8F,$A9,$DD,$F4,$85,$8D   ;9DA36B|        |;
                       db $22,$BE,$C7,$9E,$68,$85,$8D,$68   ;9DA373|        |;
                       db $85,$8F,$A5,$8F,$48,$A5,$8D,$48   ;9DA37B|        |;
                       db $A9,$9C,$00,$85,$8F,$A9,$FA,$F4   ;9DA383|        |;
                       db $85,$8D,$22,$BE,$C7,$9E,$68,$85   ;9DA38B|        |;
                       db $8D,$68,$85,$8F,$22,$75,$BF,$9F   ;9DA393|        |;
                       db $22,$82,$86,$9B,$80,$3C,$A5,$8F   ;9DA39B|        |;
                       db $48,$A5,$8D,$48,$A9,$9C,$00,$85   ;9DA3A3|        |;
                       db $8F,$A9,$15,$F5,$85,$8D,$22,$BE   ;9DA3AB|        |;
                       db $C7,$9E,$68,$85,$8D,$68,$85,$8F   ;9DA3B3|        |;
                       db $A5,$8F,$48,$A5,$8D,$48,$A9,$9C   ;9DA3BB|        |;
                       db $00,$85,$8F,$A9,$32,$F5,$85,$8D   ;9DA3C3|        |;
                       db $22,$BE,$C7,$9E,$68,$85,$8D,$68   ;9DA3CB|        |;
                       db $85,$8F,$22,$75,$BF,$9F,$22,$82   ;9DA3D3|        |;
                       db $86,$9B,$22,$17,$80,$9B,$A2,$08   ;9DA3DB|        |;
                       db $00,$AD,$0E,$1A,$D0,$0D,$BD,$76   ;9DA3E3|        |;
                       db $07,$89,$0F,$00,$D0,$05,$29,$F0   ;9DA3EB|        |;
                       db $FF,$D0,$06,$CA,$CA,$10,$EA,$80   ;9DA3F3|        |;
                       db $E1,$A5,$8F,$48,$A5,$8D,$48,$A9   ;9DA3FB|        |;
                       db $9C,$00,$85,$8F,$A9,$4E,$F5,$85   ;9DA403|        |;
                       db $8D,$22,$BE,$C7,$9E,$68,$85,$8D   ;9DA40B|        |;
                       db $68,$85,$8F,$A5,$8F,$48,$A5,$8D   ;9DA413|        |;
                       db $48,$A9,$9C,$00,$85,$8F,$A9,$6B   ;9DA41B|        |;
                       db $F5,$85,$8D,$22,$BE,$C7,$9E,$68   ;9DA423|        |;
                       db $85,$8D,$68,$85,$8F,$22,$75,$BF   ;9DA42B|        |;
                       db $9F,$A2,$08,$00,$BD,$76,$07,$89   ;9DA433|        |;
                       db $0F,$00,$D0,$05,$89,$00,$10,$D0   ;9DA43B|        |;
                       db $F0,$CA,$CA,$10,$EF,$4C,$9C,$A2   ;9DA443|        |;
 
          CODE_9DA44B:
                       BIT.W #$0200                         ;9DA44B|890002  |;
                       BEQ CODE_9DA46E                      ;9DA44E|F01E    |;
                       LDA.W $1C84,X                        ;9DA450|BD841C  |;
                       BEQ CODE_9DA462                      ;9DA453|F00D    |;
                       CMP.W #$0001                         ;9DA455|C90100  |;
                       BNE CODE_9DA486                      ;9DA458|D02C    |;
                       LDA.W #$0000                         ;9DA45A|A90000  |;
                       STA.W $1C84,X                        ;9DA45D|9D841C  |;
                       BRA CODE_9DA486                      ;9DA460|8024    |;
 
          CODE_9DA462:
                       LDA.B $AB                            ;9DA462|A5AB    |;
                       BNE CODE_9DA486                      ;9DA464|D020    |;
                       LDA.W #$0002                         ;9DA466|A90200  |;
                       STA.W $1C84,X                        ;9DA469|9D841C  |;
                       BRA CODE_9DA486                      ;9DA46C|8018    |;
 
          CODE_9DA46E:
                       BIT.W #$0100                         ;9DA46E|890001  |;
                       BEQ CODE_9DA486                      ;9DA471|F013    |;
                       LDA.W $1C84,X                        ;9DA473|BD841C  |;
                       CMP.W #$0001                         ;9DA476|C90100  |;
                       BEQ CODE_9DA486                      ;9DA479|F00B    |;
                       db $C9,$02,$00,$F0,$DA,$A9,$01,$00   ;9DA47B|        |;
                       db $9D,$84,$1C                       ;9DA483|        |;
 
          CODE_9DA486:
                       INX                                  ;9DA486|E8      |;
                       INX                                  ;9DA487|E8      |;
                       LDA.L $7E34BC                        ;9DA488|AFBC347E|;
                       CMP.W #$0004                         ;9DA48C|C90400  |;
                       BNE CODE_9DA496                      ;9DA48F|D005    |;
                       CPX.W #$0004                         ;9DA491|E00400  |;
                       BCS CODE_9DA49E                      ;9DA494|B008    |;
 
          CODE_9DA496:
                       CPX.W #$000A                         ;9DA496|E00A00  |;
                       BCS CODE_9DA49E                      ;9DA499|B003    |;
                       JMP.W CODE_9DA2F5                    ;9DA49B|4CF5A2  |;
 
          CODE_9DA49E:
                       JSL.L CODE_80AF7B                    ;9DA49E|227BAF80|;
                       LDA.W $1C9A                          ;9DA4A2|AD9A1C  |;
                       STA.L $7E3454                        ;9DA4A5|8F54347E|;
                       LDA.W $1C98                          ;9DA4A9|AD981C  |;
                       STA.L $7E3452                        ;9DA4AC|8F52347E|;
                       LDA.B $AB                            ;9DA4B0|A5AB    |;
                       BEQ CODE_9DA4BB                      ;9DA4B2|F007    |;
                       LDA.W #$001C                         ;9DA4B4|A91C00  |;
                       STA.L $7E3454                        ;9DA4B7|8F54347E|;
 
          CODE_9DA4BB:
                       LDX.W #$0047                         ;9DA4BB|A24700  |;
                       LDY.W #$0018                         ;9DA4BE|A01800  |;
                       LDA.W #$009C                         ;9DA4C1|A99C00  |;
                       STA.B $8F                            ;9DA4C4|858F    |;
                       LDA.W #$F588                         ;9DA4C6|A988F5  |;
                       STA.B $8D                            ;9DA4C9|858D    |;
                       JSL.L CODE_9C936C                    ;9DA4CB|226C939C|;
                       JSL.L CODE_9DDDB3                    ;9DA4CF|22B3DD9D|;
                       JSL.L CODE_9DE0D4                    ;9DA4D3|22D4E09D|;
                       LDA.B $10                            ;9DA4D7|A510    |;
                       PHA                                  ;9DA4D9|48      |;
                       LDA.B $12                            ;9DA4DA|A512    |;
                       PHA                                  ;9DA4DC|48      |;
                       LDA.W #$0082                         ;9DA4DD|A98200  |;
                       STA.B $12                            ;9DA4E0|8512    |;
                       LDA.W #$8000                         ;9DA4E2|A90080  |;
                       STA.B $10                            ;9DA4E5|8510    |;
                       LDY.W #$0000                         ;9DA4E7|A00000  |;
 
          CODE_9DA4EA:
                       PHY                                  ;9DA4EA|5A      |;
                       LDA.W $1A0E                          ;9DA4EB|AD0E1A  |;
                       BNE CODE_9DA549                      ;9DA4EE|D059    |;
                       LDA.W $0776,Y                        ;9DA4F0|B97607  |;
                       AND.W #$000F                         ;9DA4F3|290F00  |;
                       BNE CODE_9DA549                      ;9DA4F6|D051    |;
                       TYA                                  ;9DA4F8|98      |;
                       LSR A                                ;9DA4F9|4A      |;
                       CLC                                  ;9DA4FA|18      |;
                       ADC.W #$0185                         ;9DA4FB|698501  |;
                       STA.B $00                            ;9DA4FE|8500    |;
                       LDA.B $AB                            ;9DA500|A5AB    |;
                       ASL A                                ;9DA502|0A      |;
                       ASL A                                ;9DA503|0A      |;
                       CLC                                  ;9DA504|18      |;
                       ADC.W $1C84,Y                        ;9DA505|79841C  |;
                       ASL A                                ;9DA508|0A      |;
                       TAX                                  ;9DA509|AA      |;
                       LDA.L DATA8_9DA570,X                 ;9DA50A|BF70A59D|;
                       PHA                                  ;9DA50E|48      |;
                       TYX                                  ;9DA50F|BB      |;
                       LDA.L DATA8_9DA580,X                 ;9DA510|BF80A59D|;
                       TAY                                  ;9DA514|A8      |;
                       PLX                                  ;9DA515|FA      |;
                       LDA.W #$2600                         ;9DA516|A90026  |;
                       JSL.L CODE_80B08D                    ;9DA519|228DB080|;
                       PLY                                  ;9DA51D|7A      |;
                       PHY                                  ;9DA51E|5A      |;
                       TYA                                  ;9DA51F|98      |;
                       LSR A                                ;9DA520|4A      |;
                       CLC                                  ;9DA521|18      |;
                       ADC.W #$01B1                         ;9DA522|69B101  |;
                       STA.B $00                            ;9DA525|8500    |;
                       LDA.B $AB                            ;9DA527|A5AB    |;
                       ASL A                                ;9DA529|0A      |;
                       ASL A                                ;9DA52A|0A      |;
                       CLC                                  ;9DA52B|18      |;
                       ADC.W $1C84,Y                        ;9DA52C|79841C  |;
                       ASL A                                ;9DA52F|0A      |;
                       TAX                                  ;9DA530|AA      |;
                       LDA.L DATA8_9DA570,X                 ;9DA531|BF70A59D|;
                       PHA                                  ;9DA535|48      |;
                       TYX                                  ;9DA536|BB      |;
                       LDA.L DATA8_9DA580,X                 ;9DA537|BF80A59D|;
                       TAY                                  ;9DA53B|A8      |;
                       PLX                                  ;9DA53C|FA      |;
                       DEY                                  ;9DA53D|88      |;
                       DEY                                  ;9DA53E|88      |;
                       DEX                                  ;9DA53F|CA      |;
                       DEX                                  ;9DA540|CA      |;
                       DEX                                  ;9DA541|CA      |;
                       LDA.W #$2000                         ;9DA542|A90020  |;
                       JSL.L CODE_80B08D                    ;9DA545|228DB080|;
 
          CODE_9DA549:
                       PLY                                  ;9DA549|7A      |;
                       INY                                  ;9DA54A|C8      |;
                       INY                                  ;9DA54B|C8      |;
                       LDA.L $7E34BC                        ;9DA54C|AFBC347E|;
                       CMP.W #$0004                         ;9DA550|C90400  |;
                       BNE CODE_9DA55A                      ;9DA553|D005    |;
                       CPY.W #$0004                         ;9DA555|C00400  |;
                       BCS CODE_9DA55F                      ;9DA558|B005    |;
 
          CODE_9DA55A:
                       CPY.W #$000A                         ;9DA55A|C00A00  |;
                       BCC CODE_9DA4EA                      ;9DA55D|908B    |;
 
          CODE_9DA55F:
                       PLA                                  ;9DA55F|68      |;
                       STA.B $12                            ;9DA560|8512    |;
                       PLA                                  ;9DA562|68      |;
                       STA.B $10                            ;9DA563|8510    |;
                       JSL.L CODE_808583                    ;9DA565|22838580|;
                       JSL.L CODE_80AFDE                    ;9DA569|22DEAF80|;
                       JMP.W CODE_9DA29C                    ;9DA56D|4C9CA2  |;
 
         DATA8_9DA570:
                       db $80,$00,$D0,$00                   ;9DA570|        |;
                       db $30,$00,$00,$00,$30,$00,$D0,$00   ;9DA574|        |;
                       db $9C,$00,$00,$00                   ;9DA57C|        |;
 
         DATA8_9DA580:
                       db $68,$00,$7C,$00                   ;9DA580|        |;
                       db $90,$00,$A4,$00,$B8,$00,$00,$01   ;9DA584|        |;
                       db $00,$01,$00,$01,$00,$01,$00,$01   ;9DA58C|        |;
                       db $00,$01,$00,$01,$00,$01,$00,$01   ;9DA594|        |;
                       db $00,$01,$00,$01,$00,$01,$00,$01   ;9DA59C|        |;
                       db $00,$01,$00,$01,$00,$01,$00,$01   ;9DA5A4|        |;
                       db $00,$01,$00,$01,$00,$01,$00,$01   ;9DA5AC|        |;
                       db $00,$01,$00,$01,$00,$01,$00,$01   ;9DA5B4|        |;
                       db $00,$01,$00,$01,$00,$01,$00,$01   ;9DA5BC|        |;
                       db $00,$01,$00,$01,$00,$01           ;9DA5C4|        |;
 
          CODE_9DA5CA:
                       JSL.L CODE_9F96F7                    ;9DA5CA|22F7969F|;
                       LDA.W #$0001                         ;9DA5CE|A90100  |;
                       STA.L $7E3474                        ;9DA5D1|8F74347E|;
                       LDA.W #$0000                         ;9DA5D5|A90000  |;
                       STA.L $7E3478                        ;9DA5D8|8F78347E|;
                       LDA.W #$FFFF                         ;9DA5DC|A9FFFF  |;
                       STA.L $7E346C                        ;9DA5DF|8F6C347E|;
                       STA.L $7E346E                        ;9DA5E3|8F6E347E|;
                       LDA.W #$0001                         ;9DA5E7|A90100  |;
                       STA.L $7E3460                        ;9DA5EA|8F60347E|;
                       STA.L $7E3458                        ;9DA5EE|8F58347E|;
                       STA.L $7E3456                        ;9DA5F2|8F56347E|;
                       LDA.W #$0005                         ;9DA5F6|A90500  |;
                       STA.L $7E345E                        ;9DA5F9|8F5E347E|;
                       JSL.L CODE_8086A9                    ;9DA5FD|22A98680|;
                       JSL.L CODE_9DD977                    ;9DA601|2277D99D|;
                       JSL.L CODE_9DE074                    ;9DA605|2274E09D|;
                       LDA.L $7E34BE                        ;9DA609|AFBE347E|;
                       STA.W $1C98                          ;9DA60D|8D981C  |;
                       LDA.L $7E34C0                        ;9DA610|AFC0347E|;
                       STA.W $1C9A                          ;9DA614|8D9A1C  |;
                       JSL.L CODE_9FC6D8                    ;9DA617|22D8C69F|;
                       LDA.W $1C9A                          ;9DA61B|AD9A1C  |;
                       CLC                                  ;9DA61E|18      |;
                       ADC.W #$0021                         ;9DA61F|692100  |;
                       STA.L $7E3454                        ;9DA622|8F54347E|;
                       LDA.W $1C98                          ;9DA626|AD981C  |;
                       STA.L $7E3452                        ;9DA629|8F52347E|;
                       JSL.L CODE_9DD9AD                    ;9DA62D|22ADD99D|;
                       SEP #$20                             ;9DA631|E220    |;
                       LDA.B #$01                           ;9DA633|A901    |;
                       STA.W $2105                          ;9DA635|8D0521  |;
                       REP #$20                             ;9DA638|C220    |;
                       LDX.W #$004F                         ;9DA63A|A24F00  |;
                       LDY.W #$0018                         ;9DA63D|A01800  |;
                       LDA.W #$009C                         ;9DA640|A99C00  |;
                       STA.B $8F                            ;9DA643|858F    |;
                       LDA.W #$F597                         ;9DA645|A997F5  |;
                       STA.B $8D                            ;9DA648|858D    |;
                       JSL.L CODE_9C936C                    ;9DA64A|226C939C|;
                       LDA.W #$1D47                         ;9DA64E|A9471D  |;
                       STA.L $7F750A                        ;9DA651|8F0A757F|;
                       LDA.W #$FFFF                         ;9DA655|A9FFFF  |;
                       STA.L $7F750E                        ;9DA658|8F0E757F|;
                       LDA.W #$14A5                         ;9DA65C|A9A514  |;
                       STA.L $7F7682                        ;9DA65F|8F82767F|;
                       LDA.W #$6F7B                         ;9DA663|A97B6F  |;
                       STA.L $7F75C2                        ;9DA666|8FC2757F|;
                       JSL.L CODE_9DE0D4                    ;9DA66A|22D4E09D|;
                       JSL.L CODE_80AFDE                    ;9DA66E|22DEAF80|;
                       JSL.L CODE_9DD923                    ;9DA672|2223D99D|;
                       JSL.L CODE_9B8017                    ;9DA676|2217809B|;
                       JSL.L CODE_9B8526                    ;9DA67A|2226859B|;
                       LDA.W #$0000                         ;9DA67E|A90000  |;
                       STA.W $0CCB                          ;9DA681|8DCB0C  |;
                       LDA.B $8F                            ;9DA684|A58F    |;
                       PHA                                  ;9DA686|48      |;
                       LDA.B $8D                            ;9DA687|A58D    |;
                       PHA                                  ;9DA689|48      |;
                       LDA.W #$009C                         ;9DA68A|A99C00  |;
                       STA.B $8F                            ;9DA68D|858F    |;
                       LDA.W #$F5A3                         ;9DA68F|A9A3F5  |;
                       STA.B $8D                            ;9DA692|858D    |;
                       JSL.L CODE_9EC7BE                    ;9DA694|22BEC79E|;
                       PLA                                  ;9DA698|68      |;
                       STA.B $8D                            ;9DA699|858D    |;
                       PLA                                  ;9DA69B|68      |;
                       STA.B $8F                            ;9DA69C|858F    |;
                       JSL.L CODE_9CA227                    ;9DA69E|2227A29C|;
                       LDA.W #$0028                         ;9DA6A2|A92800  |;
                       STA.W $0E43                          ;9DA6A5|8D430E  |;
                       STA.W $0E4F                          ;9DA6A8|8D4F0E  |;
                       LDA.W #$FFFF                         ;9DA6AB|A9FFFF  |;
                       STA.L $7E34CC                        ;9DA6AE|8FCC347E|;
                       LDA.B zpCurntTeamLoopVal             ;9DA6B2|A591    |;
                       PHA                                  ;9DA6B4|48      |;
                       LDA.W #$0000                         ;9DA6B5|A90000  |;
                       STA.B zpCurntTeamLoopVal             ;9DA6B8|8591    |;
                       JSL.L CODE_9B9334                    ;9DA6BA|2234939B|;
                       LDA.W #$0002                         ;9DA6BE|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9DA6C1|8591    |;
                       JSL.L CODE_9B9334                    ;9DA6C3|2234939B|;
                       PLA                                  ;9DA6C7|68      |;
                       STA.B zpCurntTeamLoopVal             ;9DA6C8|8591    |;
                       STZ.B $C1                            ;9DA6CA|64C1    |;
                       STZ.B $A5                            ;9DA6CC|64A5    |;
                       JSR.W CODE_9DAC4F                    ;9DA6CE|204FAC  |;
                       JSR.W CODE_9DA973                    ;9DA6D1|2073A9  |;
                       JSR.W CODE_9DAA83                    ;9DA6D4|2083AA  |;
                       JSL.L CODE_9B8017                    ;9DA6D7|2217809B|;
                       JSL.L CODE_9DDFF6                    ;9DA6DB|22F6DF9D|;
                       JSL.L CODE_8086BD                    ;9DA6DF|22BD8680|;
                       LDA.W #$0008                         ;9DA6E3|A90800  |;
                       LDX.W #$0040                         ;9DA6E6|A24000  |;
                       JSL.L CODE_9DCCF5                    ;9DA6E9|22F5CC9D|;
                       JSL.L CODE_9DD923                    ;9DA6ED|2223D99D|;
                       LDX.W #$0000                         ;9DA6F1|A20000  |;
                       JSL.L CODE_9DCC36                    ;9DA6F4|2236CC9D|;
                       LDX.W #$0002                         ;9DA6F8|A20200  |;
                       JSL.L CODE_9DCC36                    ;9DA6FB|2236CC9D|;
 
          CODE_9DA6FF:
                       LDA.W #$12C0                         ;9DA6FF|A9C012  |;
                       STA.B $BD                            ;9DA702|85BD    |;
 
          CODE_9DA704:
                       JSL.L CODE_808583                    ;9DA704|22838580|;
                       LDA.W $0766                          ;9DA708|AD6607  |;
                       BNE CODE_9DA704                      ;9DA70B|D0F7    |;
                       INC.W $0792                          ;9DA70D|EE9207  |;
                       BNE CODE_9DA715                      ;9DA710|D003    |;
                       db $EE,$94,$07                       ;9DA712|        |;
 
          CODE_9DA715:
                       JSL.L CODE_808583                    ;9DA715|22838580|;
                       LDX.W $1A0E                          ;9DA719|AE0E1A  |;
                       TXA                                  ;9DA71C|8A      |;
                       EOR.B $AF                            ;9DA71D|45AF    |;
                       BNE CODE_9DA724                      ;9DA71F|D003    |;
                       JMP.W CODE_9DA768                    ;9DA721|4C68A7  |;
 
          CODE_9DA724:
                       STX.B $AF                            ;9DA724|86AF    |;
                       TXA                                  ;9DA726|8A      |;
                       BEQ CODE_9DA758                      ;9DA727|F02F    |;
                       db $89,$01,$00,$D0,$0C,$89,$02,$00   ;9DA729|        |;
                       db $D0,$11,$89,$04,$00,$D0,$16,$80   ;9DA731|        |;
                       db $2E,$22,$AD,$AF,$9D,$22,$B2,$AF   ;9DA739|        |;
                       db $9D,$80,$24,$22,$AD,$AF,$9D,$22   ;9DA741|        |;
                       db $05,$B0,$9D,$80,$1A,$22,$AD,$AF   ;9DA749|        |;
                       db $9D,$22,$58,$B0,$9D,$80,$10       ;9DA751|        |;
 
          CODE_9DA758:
                       JSL.L CODE_9B8358                    ;9DA758|2258839B|;
                       JSL.L CODE_9DB0FD                    ;9DA75C|22FDB09D|;
                       JSR.W CODE_9DA973                    ;9DA760|2073A9  |;
                       STZ.B $A9                            ;9DA763|64A9    |;
                       JMP.W CODE_9DA869                    ;9DA765|4C69A8  |;
 
          CODE_9DA768:
                       LDA.W $1A0E                          ;9DA768|AD0E1A  |;
                       BEQ CODE_9DA770                      ;9DA76B|F003    |;
                       db $4C,$04,$A7                       ;9DA76D|        |;
 
          CODE_9DA770:
                       JSL.L CODE_9B8017                    ;9DA770|2217809B|;
                       LDA.B $83                            ;9DA774|A583    |;
                       STA.W $0D35                          ;9DA776|8D350D  |;
                       STA.W $0D01                          ;9DA779|8D010D  |;
                       JSL.L CODE_9B84F5                    ;9DA77C|22F5849B|;
                       DEC.W $0AC4                          ;9DA780|CEC40A  |;
                       JSL.L CODE_9B852C                    ;9DA783|222C859B|;
                       LDA.B $A9                            ;9DA787|A5A9    |;
                       AND.W #$FFF0                         ;9DA789|29F0FF  |;
                       STA.B $A9                            ;9DA78C|85A9    |;
                       BEQ CODE_9DA793                      ;9DA78E|F003    |;
                       JMP.W CODE_9DA869                    ;9DA790|4C69A8  |;
 
          CODE_9DA793:
                       JSR.W CODE_9DAA83                    ;9DA793|2083AA  |;
                       JSL.L CODE_9FBF75                    ;9DA796|2275BF9F|;
                       DEC.B $BD                            ;9DA79A|C6BD    |;
                       DEC.B $BD                            ;9DA79C|C6BD    |;
                       BMI CODE_9DA7A3                      ;9DA79E|3003    |;
                       JMP.W CODE_9DA704                    ;9DA7A0|4C04A7  |;
 
          CODE_9DA7A3:
                       LDA.W #$001C                         ;9DA7A3|A91C00  |;
                       JSL.L CODE_9BB385                    ;9DA7A6|2285B39B|;
                       STA.L $7E34BE                        ;9DA7AA|8FBE347E|;
                       STA.W $1C98                          ;9DA7AE|8D981C  |;
 
          CODE_9DA7B1:
                       LDA.W #$001C                         ;9DA7B1|A91C00  |;
                       JSL.L CODE_9BB385                    ;9DA7B4|2285B39B|;
                       CMP.L $7E34BE                        ;9DA7B8|CFBE347E|;
                       BEQ CODE_9DA7B1                      ;9DA7BC|F0F3    |;
                       STA.L $7E34C0                        ;9DA7BE|8FC0347E|;
                       STA.W $1C9A                          ;9DA7C2|8D9A1C  |;
                       LDA.W #$0000                         ;9DA7C5|A90000  |;
                       STA.L $7E34CC                        ;9DA7C8|8FCC347E|;
                       LDA.W #$0000                         ;9DA7CC|A90000  |;
                       STA.L $7E34BC                        ;9DA7CF|8FBC347E|;
                       STA.L $7E34CA                        ;9DA7D3|8FCA347E|;
 
          CODE_9DA7D7:
                       LDA.W #$009A                         ;9DA7D7|A99A00  |;
                       STA.B $0E                            ;9DA7DA|850E    |;
                       LDA.W #$B610                         ;9DA7DC|A910B6  |;
                       STA.B $0C                            ;9DA7DF|850C    |;
                       LDA.W #$007E                         ;9DA7E1|A97E00  |;
                       STA.B $12                            ;9DA7E4|8512    |;
                       LDA.W #$4EF4                         ;9DA7E6|A9F44E  |;
                       STA.B $10                            ;9DA7E9|8510    |;
                       JSL.L CODE_80C373                    ;9DA7EB|2273C380|;
                       LDA.W #$007E                         ;9DA7EF|A97E00  |;
                       STA.B $0E                            ;9DA7F2|850E    |;
                       LDA.W #$4EF4                         ;9DA7F4|A9F44E  |;
                       STA.B $0C                            ;9DA7F7|850C    |;
                       LDA.W #$007E                         ;9DA7F9|A97E00  |;
                       STA.B $12                            ;9DA7FC|8512    |;
                       LDA.W #$47F4                         ;9DA7FE|A9F447  |;
                       STA.B $10                            ;9DA801|8510    |;
                       STX.B $00                            ;9DA803|8600    |;
                       JSL.L CODE_9B85C2                    ;9DA805|22C2859B|;
                       LDA.W #$0000                         ;9DA809|A90000  |;
                       STA.L $7E3474                        ;9DA80C|8F74347E|;
                       LDA.L $7E34BC                        ;9DA810|AFBC347E|;
                       CMP.W #$0002                         ;9DA814|C90200  |;
                       BEQ CODE_9DA81E                      ;9DA817|F005    |;
                       CMP.W #$0003                         ;9DA819|C90300  |;
                       BNE CODE_9DA822                      ;9DA81C|D004    |;
 
          CODE_9DA81E:
                       JSL.L CODE_9D98D3                    ;9DA81E|22D3989D|;
 
          CODE_9DA822:
                       LDA.W #$0001                         ;9DA822|A90100  |;
                       STA.L $7E34CA                        ;9DA825|8FCA347E|;
                       LDA.L $7E34BC                        ;9DA829|AFBC347E|;
                       CMP.W #$0001                         ;9DA82D|C90100  |;
                       BCC CODE_9DA83E                      ;9DA830|900C    |;
                       CMP.W #$0004                         ;9DA832|C90400  |;
                       BCS CODE_9DA83E                      ;9DA835|B007    |;
                       LDA.W #$0005                         ;9DA837|A90500  |;
                       STA.L $7E34CA                        ;9DA83A|8FCA347E|;
 
          CODE_9DA83E:
                       LDA.L $7E34CA                        ;9DA83E|AFCA347E|;
                       SEC                                  ;9DA842|38      |;
                       SBC.W #$0005                         ;9DA843|E90500  |;
                       STA.L $7E34CE                        ;9DA846|8FCE347E|;
                       LDA.L $7E34BC                        ;9DA84A|AFBC347E|;
                       CMP.W #$0001                         ;9DA84E|C90100  |;
                       BNE CODE_9DA857                      ;9DA851|D004    |;
                       JSL.L CODE_9BC7FB                    ;9DA853|22FBC79B|;
 
          CODE_9DA857:
                       LDA.W #$0080                         ;9DA857|A98000  |;
                       ORA.L $7E34F4                        ;9DA85A|0FF4347E|;
                       STA.L $7E34F4                        ;9DA85E|8FF4347E|;
                       JSL.L CODE_9D9783                    ;9DA862|2283979D|;
                       JMP.W CODE_9DA0D5                    ;9DA866|4CD5A0  |;
 
          CODE_9DA869:
                       LDA.B $A9                            ;9DA869|A5A9    |;
                       BIT.W #$1000                         ;9DA86B|890010  |;
                       BEQ CODE_9DA873                      ;9DA86E|F003    |;
                       JMP.W CODE_9DA7D7                    ;9DA870|4CD7A7  |;
 
          CODE_9DA873:
                       BIT.W #$0400                         ;9DA873|890004  |;
                       BEQ CODE_9DA886                      ;9DA876|F00E    |;
                       LDA.W #$0002                         ;9DA878|A90200  |;
                       STA.B $A5                            ;9DA87B|85A5    |;
                       JSR.W CODE_9DAC4F                    ;9DA87D|204FAC  |;
                       JSR.W CODE_9DA973                    ;9DA880|2073A9  |;
                       JMP.W CODE_9DA6FF                    ;9DA883|4CFFA6  |;
 
          CODE_9DA886:
                       BIT.W #$0800                         ;9DA886|890008  |;
                       BEQ CODE_9DA899                      ;9DA889|F00E    |;
                       LDA.W #$FFFE                         ;9DA88B|A9FEFF  |;
                       STA.B $A5                            ;9DA88E|85A5    |;
                       JSR.W CODE_9DAC4F                    ;9DA890|204FAC  |;
                       JSR.W CODE_9DA973                    ;9DA893|2073A9  |;
 
          CODE_9DA896:
                       JMP.W CODE_9DA6FF                    ;9DA896|4CFFA6  |;
 
          CODE_9DA899:
                       LDA.W #$0001                         ;9DA899|A90100  |;
                       STA.B $AD                            ;9DA89C|85AD    |;
                       LDA.B $A9                            ;9DA89E|A5A9    |;
                       BIT.W #$0100                         ;9DA8A0|890001  |;
                       BNE CODE_9DA8AF                      ;9DA8A3|D00A    |;
                       BIT.W #$0200                         ;9DA8A5|890002  |;
                       BEQ CODE_9DA896                      ;9DA8A8|F0EC    |;
                       LDA.W #$FFFF                         ;9DA8AA|A9FFFF  |;
                       STA.B $AD                            ;9DA8AD|85AD    |;
 
          CODE_9DA8AF:
                       JSR.W CODE_9DA8B8                    ;9DA8AF|20B8A8  |;
                       JSR.W CODE_9DA973                    ;9DA8B2|2073A9  |;
                       JMP.W CODE_9DA6FF                    ;9DA8B5|4CFFA6  |;
 
          CODE_9DA8B8:
                       LDA.B $C1                            ;9DA8B8|A5C1    |;
                       CMP.W #$0000                         ;9DA8BA|C90000  |;
                       BEQ CODE_9DA8C9                      ;9DA8BD|F00A    |;
                       CMP.W #$0002                         ;9DA8BF|C90200  |;
                       BEQ CODE_9DA8C9                      ;9DA8C2|F005    |;
                       CMP.W #$0004                         ;9DA8C4|C90400  |;
                       BNE CODE_9DA8DF                      ;9DA8C7|D016    |;
 
          CODE_9DA8C9:
                       LDA.B $AD                            ;9DA8C9|A5AD    |;
                       BEQ CODE_9DA8DF                      ;9DA8CB|F012    |;
                       LDA.W #$0005                         ;9DA8CD|A90500  |;
                       STA.L $7E345E                        ;9DA8D0|8F5E347E|;
                       LDA.W #$0001                         ;9DA8D4|A90100  |;
                       STA.L $7E3456                        ;9DA8D7|8F56347E|;
                       STA.L $7E3458                        ;9DA8DB|8F58347E|;
 
          CODE_9DA8DF:
                       LDA.W #$007E                         ;9DA8DF|A97E00  |;
                       STA.B $93                            ;9DA8E2|8593    |;
                       LDA.W #$34BC                         ;9DA8E4|A9BC34  |;
                       STA.B zpCurntTeamLoopVal             ;9DA8E7|8591    |;
                       LDA.W #$009D                         ;9DA8E9|A99D00  |;
                       STA.B $97                            ;9DA8EC|8597    |;
                       LDA.W #$ACD1                         ;9DA8EE|A9D1AC  |;
                       STA.B $95                            ;9DA8F1|8595    |;
                       STZ.B $B9                            ;9DA8F3|64B9    |;
                       LDY.B $C1                            ;9DA8F5|A4C1    |;
                       LDA.B [$95],Y                        ;9DA8F7|B795    |;
                       STA.B $B5                            ;9DA8F9|85B5    |;
                       LDA.B [zpCurntTeamLoopVal],Y         ;9DA8FB|B791    |;
                       STA.B $B1                            ;9DA8FD|85B1    |;
                       LDA.L $7E34BC                        ;9DA8FF|AFBC347E|;
                       CMP.W #$0002                         ;9DA903|C90200  |;
                       BCC CODE_9DA917                      ;9DA906|900F    |;
                       CMP.W #$0004                         ;9DA908|C90400  |;
                       BEQ CODE_9DA917                      ;9DA90B|F00A    |;
                       CPY.W #$0002                         ;9DA90D|C00200  |;
                       BNE CODE_9DA917                      ;9DA910|D005    |;
                       LDA.W #$001A                         ;9DA912|A91A00  |;
                       STA.B $B5                            ;9DA915|85B5    |;
 
          CODE_9DA917:
                       JSR.W CODE_9DA921                    ;9DA917|2021A9  |;
                       LDA.B $B1                            ;9DA91A|A5B1    |;
                       STA.B [zpCurntTeamLoopVal],Y         ;9DA91C|9791    |;
                       LDA.B $AD                            ;9DA91E|A5AD    |;
 
          CODE_9DA920:
                       RTS                                  ;9DA920|60      |;
 
          CODE_9DA921:
                       LDA.B $B1                            ;9DA921|A5B1    |;
                       CLC                                  ;9DA923|18      |;
                       ADC.B $AD                            ;9DA924|65AD    |;
                       STA.B $B1                            ;9DA926|85B1    |;
                       SEC                                  ;9DA928|38      |;
                       SBC.B $B9                            ;9DA929|E5B9    |;
                       BMI CODE_9DA931                      ;9DA92B|3004    |;
                       BVS CODE_9DA933                      ;9DA92D|7004    |;
                       BRA CODE_9DA938                      ;9DA92F|8007    |;
 
          CODE_9DA931:
                       BVS CODE_9DA938                      ;9DA931|7005    |;
 
          CODE_9DA933:
                       LDA.B $B5                            ;9DA933|A5B5    |;
                       DEC A                                ;9DA935|3A      |;
                       STA.B $B1                            ;9DA936|85B1    |;
 
          CODE_9DA938:
                       LDA.B $B1                            ;9DA938|A5B1    |;
                       SEC                                  ;9DA93A|38      |;
                       SBC.B $B5                            ;9DA93B|E5B5    |;
                       BMI CODE_9DA943                      ;9DA93D|3004    |;
                       BVC CODE_9DA945                      ;9DA93F|5004    |;
                       db $80,$DD                           ;9DA941|        |;
 
          CODE_9DA943:
                       BVC CODE_9DA920                      ;9DA943|50DB    |;
 
          CODE_9DA945:
                       LDA.B $B9                            ;9DA945|A5B9    |;
                       STA.B $B1                            ;9DA947|85B1    |;
                       RTS                                  ;9DA949|60      |;
                       db $A5,$B1,$18,$65,$AD,$C9,$00,$00   ;9DA94A|        |;
                       db $F0,$12,$C9,$03,$00,$F0,$0D,$C9   ;9DA952|        |;
                       db $05,$00,$F0,$08,$85,$B1,$A5,$B1   ;9DA95A|        |;
                       db $97,$91,$80,$BA,$1A,$C9,$05,$00   ;9DA962|        |;
                       db $90,$F2,$A9,$01,$00,$85,$B1,$80   ;9DA96A|        |;
                       db $EB                               ;9DA972|        |;
 
          CODE_9DA973:
                       LDA.L $7E3456                        ;9DA973|AF56347E|;
                       BEQ CODE_9DA992                      ;9DA977|F019    |;
                       LDA.L $7E34BE                        ;9DA979|AFBE347E|;
                       STA.W $1C98                          ;9DA97D|8D981C  |;
                       LDA.L $7E34C0                        ;9DA980|AFC0347E|;
                       STA.W $1C9A                          ;9DA984|8D9A1C  |;
                       JSL.L CODE_9FC6D8                    ;9DA987|22D8C69F|;
                       LDA.W #$0000                         ;9DA98B|A90000  |;
                       STA.L $7E3456                        ;9DA98E|8F56347E|;
 
          CODE_9DA992:
                       LDA.L $7E35D0                        ;9DA992|AFD0357E|;
                       STA.B $AD                            ;9DA996|85AD    |;
                       LDA.W #$0020                         ;9DA998|A92000  |;
                       STA.B $A5                            ;9DA99B|85A5    |;
                       LDA.W #$000E                         ;9DA99D|A90E00  |;
                       STA.B $A9                            ;9DA9A0|85A9    |;
                       LDA.W #$000E                         ;9DA9A2|A90E00  |;
                       STA.W $0D11                          ;9DA9A5|8D110D  |;
                       STZ.W $0D0F                          ;9DA9A8|9C0F0D  |;
                       JSL.L CODE_9FBD9C                    ;9DA9AB|229CBD9F|;
                       LDA.B $C1                            ;9DA9AF|A5C1    |;
                       STA.B $BD                            ;9DA9B1|85BD    |;
                       LDA.W #$000E                         ;9DA9B3|A90E00  |;
                       STA.W $0D11                          ;9DA9B6|8D110D  |;
                       STZ.B $AD                            ;9DA9B9|64AD    |;
                       LDX.W #$0000                         ;9DA9BB|A20000  |;
 
          CODE_9DA9BE:
                       LDA.W #$3800                         ;9DA9BE|A90038  |;
                       STA.W $0D0D                          ;9DA9C1|8D0D0D  |;
                       LDA.W #$009D                         ;9DA9C4|A99D00  |;
                       STA.B $8F                            ;9DA9C7|858F    |;
                       LDA.W #$ADFD                         ;9DA9C9|A9FDAD  |;
                       STA.B $8D                            ;9DA9CC|858D    |;
                       STX.B $A5                            ;9DA9CE|86A5    |;
                       LDA.L $7E34BC                        ;9DA9D0|AFBC347E|;
                       ASL A                                ;9DA9D4|0A      |;
                       ASL A                                ;9DA9D5|0A      |;
                       ASL A                                ;9DA9D6|0A      |;
                       ASL A                                ;9DA9D7|0A      |;
                       ADC.B $A5                            ;9DA9D8|65A5    |;
                       TAX                                  ;9DA9DA|AA      |;
                       LDA.L DATA8_9DAC7F,X                 ;9DA9DB|BF7FAC9D|;
                       LDX.B $A5                            ;9DA9DF|A6A5    |;
                       CMP.W #$0000                         ;9DA9E1|C90000  |;
                       BEQ CODE_9DAA5A                      ;9DA9E4|F074    |;
                       BPL CODE_9DA9F2                      ;9DA9E6|100A    |;
                       LDA.W #$009D                         ;9DA9E8|A99D00  |;
                       STA.B $8F                            ;9DA9EB|858F    |;
                       LDA.W #$AE40                         ;9DA9ED|A940AE  |;
                       STA.B $8D                            ;9DA9F0|858D    |;
 
          CODE_9DA9F2:
                       LDA.W #$0003                         ;9DA9F2|A90300  |;
                       STA.W $0D0F                          ;9DA9F5|8D0F0D  |;
                       TXA                                  ;9DA9F8|8A      |;
                       LSR A                                ;9DA9F9|4A      |;
                       STA.B $A5                            ;9DA9FA|85A5    |;
                       JSL.L CODE_9ECFC6                    ;9DA9FC|22C6CF9E|;
                       LDA.W #$0011                         ;9DAA00|A91100  |;
                       STA.W $0D0F                          ;9DAA03|8D0F0D  |;
                       STX.B $C1                            ;9DAA06|86C1    |;
                       JSR.W CODE_9DA8B8                    ;9DAA08|20B8A8  |;
                       TXY                                  ;9DAA0B|9B      |;
                       LDA.W #$007E                         ;9DAA0C|A97E00  |;
                       STA.B $8B                            ;9DAA0F|858B    |;
                       LDA.W #$34BC                         ;9DAA11|A9BC34  |;
                       STA.B $89                            ;9DAA14|8589    |;
                       LDA.B [$89],Y                        ;9DAA16|B789    |;
                       STA.B $B1                            ;9DAA18|85B1    |;
                       LDA.W #$009D                         ;9DAA1A|A99D00  |;
                       STA.B $8B                            ;9DAA1D|858B    |;
                       LDA.W #$ACDF                         ;9DAA1F|A9DFAC  |;
                       STA.B $89                            ;9DAA22|8589    |;
                       CLC                                  ;9DAA24|18      |;
                       ADC.B [$89],Y                        ;9DAA25|7789    |;
                       STA.B $89                            ;9DAA27|8589    |;
 
          CODE_9DAA29:
                       LDA.B $8B                            ;9DAA29|A58B    |;
                       STA.B $8F                            ;9DAA2B|858F    |;
                       LDA.B $89                            ;9DAA2D|A589    |;
                       STA.B $8D                            ;9DAA2F|858D    |;
                       CLC                                  ;9DAA31|18      |;
                       ADC.B [$89]                          ;9DAA32|6789    |;
                       STA.B $89                            ;9DAA34|8589    |;
                       DEC.B $B1                            ;9DAA36|C6B1    |;
                       BPL CODE_9DAA29                      ;9DAA38|10EF    |;
                       CPX.B $BD                            ;9DAA3A|E4BD    |;
                       BNE CODE_9DAA44                      ;9DAA3C|D006    |;
                       LDA.W #$2000                         ;9DAA3E|A90020  |;
                       STA.W $0D0D                          ;9DAA41|8D0D0D  |;
 
          CODE_9DAA44:
                       STX.B $C1                            ;9DAA44|86C1    |;
                       CPX.W #$0002                         ;9DAA46|E00200  |;
                       BEQ CODE_9DAA69                      ;9DAA49|F01E    |;
                       CPX.W #$0004                         ;9DAA4B|E00400  |;
                       BEQ CODE_9DAA69                      ;9DAA4E|F019    |;
                       JSL.L CODE_9EC7BE                    ;9DAA50|22BEC79E|;
 
          CODE_9DAA54:
                       INC.W $0D11                          ;9DAA54|EE110D  |;
                       INC.W $0D11                          ;9DAA57|EE110D  |;
 
          CODE_9DAA5A:
                       INX                                  ;9DAA5A|E8      |;
                       INX                                  ;9DAA5B|E8      |;
                       CPX.W #$000E                         ;9DAA5C|E00E00  |;
                       BCS CODE_9DAA64                      ;9DAA5F|B003    |;
                       JMP.W CODE_9DA9BE                    ;9DAA61|4CBEA9  |;
 
          CODE_9DAA64:
                       LDA.B $BD                            ;9DAA64|A5BD    |;
                       STA.B $C1                            ;9DAA66|85C1    |;
                       RTS                                  ;9DAA68|60      |;
 
          CODE_9DAA69:
                       LDY.B $C1                            ;9DAA69|A4C1    |;
                       LDA.W #$007E                         ;9DAA6B|A97E00  |;
                       STA.B $8F                            ;9DAA6E|858F    |;
                       LDA.W #$34BC                         ;9DAA70|A9BC34  |;
                       STA.B $8D                            ;9DAA73|858D    |;
                       LDA.B [$8D],Y                        ;9DAA75|B78D    |;
                       STA.B $B1                            ;9DAA77|85B1    |;
                       JSL.L CODE_9BC5AB                    ;9DAA79|22ABC59B|;
                       JSL.L CODE_9EC7BE                    ;9DAA7D|22BEC79E|;
                       BRA CODE_9DAA54                      ;9DAA81|80D1    |;
 
          CODE_9DAA83:
                       LDA.L $7E34BC                        ;9DAA83|AFBC347E|;
                       ASL A                                ;9DAA87|0A      |;
                       ASL A                                ;9DAA88|0A      |;
                       ASL A                                ;9DAA89|0A      |;
                       ASL A                                ;9DAA8A|0A      |;
                       ADC.W #$0004                         ;9DAA8B|690400  |;
                       TAX                                  ;9DAA8E|AA      |;
                       LDA.L DATA8_9DAC7F,X                 ;9DAA8F|BF7FAC9D|;
                       BNE CODE_9DAAC5                      ;9DAA93|D030    |;
                       LDA.W #$001C                         ;9DAA95|A91C00  |;
                       STA.L $7E3454                        ;9DAA98|8F54347E|;
                       LDA.W #$0001                         ;9DAA9C|A90100  |;
                       STA.W $0D0F                          ;9DAA9F|8D0F0D  |;
                       LDA.W #$000A                         ;9DAAA2|A90A00  |;
                       STA.W $0D11                          ;9DAAA5|8D110D  |;
                       LDA.W #$000A                         ;9DAAA8|A90A00  |;
                       STA.B $A5                            ;9DAAAB|85A5    |;
                       LDA.W #$0002                         ;9DAAAD|A90200  |;
                       STA.B $A9                            ;9DAAB0|85A9    |;
                       LDA.L $7E35D0                        ;9DAAB2|AFD0357E|;
                       STA.B $AD                            ;9DAAB6|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9DAAB8|229CBD9F|;
                       LDA.W #$0001                         ;9DAABC|A90100  |;
                       STA.L $7E3460                        ;9DAABF|8F60347E|;
                       BRA CODE_9DAACC                      ;9DAAC3|8007    |;
 
          CODE_9DAAC5:
                       LDA.W $1C9A                          ;9DAAC5|AD9A1C  |;
                       STA.L $7E3454                        ;9DAAC8|8F54347E|;
 
          CODE_9DAACC:
                       DEX                                  ;9DAACC|CA      |;
                       DEX                                  ;9DAACD|CA      |;
                       LDA.L DATA8_9DAC7F,X                 ;9DAACE|BF7FAC9D|;
                       BNE CODE_9DAB04                      ;9DAAD2|D030    |;
                       LDA.W #$001D                         ;9DAAD4|A91D00  |;
                       STA.L $7E3452                        ;9DAAD7|8F52347E|;
                       LDA.W #$0016                         ;9DAADB|A91600  |;
                       STA.W $0D0F                          ;9DAADE|8D0F0D  |;
                       LDA.W #$000A                         ;9DAAE1|A90A00  |;
                       STA.W $0D11                          ;9DAAE4|8D110D  |;
                       LDA.W #$000A                         ;9DAAE7|A90A00  |;
                       STA.B $A5                            ;9DAAEA|85A5    |;
                       LDA.W #$0002                         ;9DAAEC|A90200  |;
                       STA.B $A9                            ;9DAAEF|85A9    |;
                       LDA.L $7E35D0                        ;9DAAF1|AFD0357E|;
                       STA.B $AD                            ;9DAAF5|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9DAAF7|229CBD9F|;
                       LDA.W #$0001                         ;9DAAFB|A90100  |;
                       STA.L $7E3460                        ;9DAAFE|8F60347E|;
                       BRA CODE_9DAB0B                      ;9DAB02|8007    |;
 
          CODE_9DAB04:
                       LDA.W $1C98                          ;9DAB04|AD981C  |;
                       STA.L $7E3452                        ;9DAB07|8F52347E|;
 
          CODE_9DAB0B:
                       LDA.L $7E3458                        ;9DAB0B|AF58347E|;
                       DEC A                                ;9DAB0F|3A      |;
                       DEC A                                ;9DAB10|3A      |;
                       STA.L $7E3458                        ;9DAB11|8F58347E|;
                       BMI CODE_9DAB18                      ;9DAB15|3001    |;
                       RTS                                  ;9DAB17|60      |;
 
          CODE_9DAB18:
                       JSL.L CODE_80AF7B                    ;9DAB18|227BAF80|;
                       JSR.W CODE_9DABC1                    ;9DAB1C|20C1AB  |;
                       LDX.W #$004F                         ;9DAB1F|A24F00  |;
                       LDY.W #$0018                         ;9DAB22|A01800  |;
                       LDA.W #$009C                         ;9DAB25|A99C00  |;
                       STA.B $8F                            ;9DAB28|858F    |;
                       LDA.W #$F5A8                         ;9DAB2A|A9A8F5  |;
                       STA.B $8D                            ;9DAB2D|858D    |;
                       JSL.L CODE_9C936C                    ;9DAB2F|226C939C|;
                       LDA.L $7E3454                        ;9DAB33|AF54347E|;
                       CMP.W #$001C                         ;9DAB37|C91C00  |;
                       BPL CODE_9DAB51                      ;9DAB3A|1015    |;
                       LDA.W #$0001                         ;9DAB3C|A90100  |;
                       STA.W $0D0F                          ;9DAB3F|8D0F0D  |;
                       LDA.W #$000A                         ;9DAB42|A90A00  |;
                       STA.W $0D11                          ;9DAB45|8D110D  |;
                       LDA.W $1C9A                          ;9DAB48|AD9A1C  |;
                       STA.B $A9                            ;9DAB4B|85A9    |;
                       JSL.L CODE_9FBE08                    ;9DAB4D|2208BE9F|;
 
          CODE_9DAB51:
                       LDA.L $7E3452                        ;9DAB51|AF52347E|;
                       CMP.W #$001C                         ;9DAB55|C91C00  |;
                       BPL CODE_9DAB6F                      ;9DAB58|1015    |;
                       LDA.W #$0016                         ;9DAB5A|A91600  |;
                       STA.W $0D0F                          ;9DAB5D|8D0F0D  |;
                       LDA.W #$000A                         ;9DAB60|A90A00  |;
                       STA.W $0D11                          ;9DAB63|8D110D  |;
                       LDA.W $1C98                          ;9DAB66|AD981C  |;
                       STA.B $A9                            ;9DAB69|85A9    |;
                       JSL.L CODE_9FBE08                    ;9DAB6B|2208BE9F|;
 
          CODE_9DAB6F:
                       LDA.L $7E3452                        ;9DAB6F|AF52347E|;
                       BPL CODE_9DAB90                      ;9DAB73|101B    |;
                       LDA.W #$0000                         ;9DAB75|A90000  |;
                       STA.B $8F                            ;9DAB78|858F    |;
                       LDA.W #$0A5C                         ;9DAB7A|A95C0A  |;
                       STA.B $8D                            ;9DAB7D|858D    |;
                       STZ.B zpCurntTeamLoopVal             ;9DAB7F|6491    |;
                       LDA.W #$FFFF                         ;9DAB81|A9FFFF  |;
                       STA.B $A9                            ;9DAB84|85A9    |;
                       LDX.W #$0008                         ;9DAB86|A20800  |;
                       LDY.W #$0043                         ;9DAB89|A04300  |;
                       JSL.L CODE_9C943E                    ;9DAB8C|223E949C|;
 
          CODE_9DAB90:
                       LDA.L $7E3454                        ;9DAB90|AF54347E|;
                       BPL CODE_9DABB4                      ;9DAB94|101E    |;
                       LDA.W #$0000                         ;9DAB96|A90000  |;
                       STA.B $8F                            ;9DAB99|858F    |;
                       LDA.W #$0A2A                         ;9DAB9B|A92A0A  |;
                       STA.B $8D                            ;9DAB9E|858D    |;
                       LDA.W #$0002                         ;9DABA0|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9DABA3|8591    |;
                       LDA.W #$FFFF                         ;9DABA5|A9FFFF  |;
                       STA.B $A9                            ;9DABA8|85A9    |;
                       LDX.W #$0008                         ;9DABAA|A20800  |;
                       LDY.W #$0043                         ;9DABAD|A04300  |;
                       JSL.L CODE_9C943E                    ;9DABB0|223E949C|;
 
          CODE_9DABB4:
                       JSL.L CODE_9DDDB3                    ;9DABB4|22B3DD9D|;
                       JSL.L CODE_80AFDE                    ;9DABB8|22DEAF80|;
                       JSL.L CODE_9DE0D4                    ;9DABBC|22D4E09D|;
                       RTS                                  ;9DABC0|60      |;
 
          CODE_9DABC1:
                       LDA.W #$0078                         ;9DABC1|A97800  |;
                       STA.L $7E3458                        ;9DABC4|8F58347E|;
                       LDA.L $7E345E                        ;9DABC8|AF5E347E|;
                       INC A                                ;9DABCC|1A      |;
                       CMP.W #$0007                         ;9DABCD|C90700  |;
                       BCC CODE_9DABD5                      ;9DABD0|9003    |;
                       LDA.W #$0000                         ;9DABD2|A90000  |;
 
          CODE_9DABD5:
                       STA.L $7E345E                        ;9DABD5|8F5E347E|;
                       CMP.W #$0006                         ;9DABD9|C90600  |;
                       BEQ CODE_9DAC21                      ;9DABDC|F043    |;
                       LDA.L $7E3452                        ;9DABDE|AF52347E|;
                       CMP.W #$001C                         ;9DABE2|C91C00  |;
                       BPL CODE_9DABF4                      ;9DABE5|100D    |;
                       LDA.W #$FFFF                         ;9DABE7|A9FFFF  |;
                       STA.L $7E3452                        ;9DABEA|8F52347E|;
                       LDX.W #$0000                         ;9DABEE|A20000  |;
                       JSR.W CODE_9DAC22                    ;9DABF1|2022AC  |;
 
          CODE_9DABF4:
                       LDA.L $7E3454                        ;9DABF4|AF54347E|;
                       CMP.W #$001C                         ;9DABF8|C91C00  |;
                       BPL CODE_9DAC0A                      ;9DABFB|100D    |;
                       LDA.W #$FFFF                         ;9DABFD|A9FFFF  |;
                       STA.L $7E3454                        ;9DAC00|8F54347E|;
                       LDX.W #$0002                         ;9DAC04|A20200  |;
                       JSR.W CODE_9DAC22                    ;9DAC07|2022AC  |;
 
          CODE_9DAC0A:
                       STZ.B zpCurntTeamLoopVal             ;9DAC0A|6491    |;
                       LDA.L $7E345E                        ;9DAC0C|AF5E347E|;
                       STA.L $7E345A                        ;9DAC10|8F5A347E|;
                       LDA.W #$0002                         ;9DAC14|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9DAC17|8591    |;
                       LDA.L $7E345E                        ;9DAC19|AF5E347E|;
                       STA.L $7E345C                        ;9DAC1D|8F5C347E|;
 
          CODE_9DAC21:
                       RTS                                  ;9DAC21|60      |;
 
          CODE_9DAC22:
                       STX.B zpCurntTeamLoopVal             ;9DAC22|8691    |;
                       LDA.L $7E345E                        ;9DAC24|AF5E347E|;
                       JSL.L CODE_9DC973                    ;9DAC28|2273C99D|;
                       JSL.L CODE_9FC4D0                    ;9DAC2C|22D0C49F|;
                       CPX.W #$0000                         ;9DAC30|E00000  |;
                       BNE CODE_9DAC4E                      ;9DAC33|D019    |;
                       LDA.B $8F                            ;9DAC35|A58F    |;
                       STA.B $0E                            ;9DAC37|850E    |;
                       LDA.B $8D                            ;9DAC39|A58D    |;
                       STA.B $0C                            ;9DAC3B|850C    |;
                       LDA.W #$0000                         ;9DAC3D|A90000  |;
                       STA.B $12                            ;9DAC40|8512    |;
                       LDA.W #$0A5C                         ;9DAC42|A95C0A  |;
                       STA.B $10                            ;9DAC45|8510    |;
                       LDX.W #$0031                         ;9DAC47|A23100  |;
                       JSL.L CODE_808F2F                    ;9DAC4A|222F8F80|;
 
          CODE_9DAC4E:
                       RTS                                  ;9DAC4E|60      |;
 
          CODE_9DAC4F:
                       PHX                                  ;9DAC4F|DA      |;
                       LDA.B $C1                            ;9DAC50|A5C1    |;
                       STA.B $B1                            ;9DAC52|85B1    |;
 
          CODE_9DAC54:
                       LDA.B $C1                            ;9DAC54|A5C1    |;
                       CLC                                  ;9DAC56|18      |;
                       ADC.B $A5                            ;9DAC57|65A5    |;
                       STA.B $C1                            ;9DAC59|85C1    |;
                       BPL CODE_9DAC5F                      ;9DAC5B|1002    |;
                       db $64,$C1                           ;9DAC5D|        |;
 
          CODE_9DAC5F:
                       LDA.B $C1                            ;9DAC5F|A5C1    |;
                       CMP.W #$000E                         ;9DAC61|C90E00  |;
                       BCC CODE_9DAC6C                      ;9DAC64|9006    |;
                       db $A5,$B1,$85,$C1,$80,$11           ;9DAC66|        |;
 
          CODE_9DAC6C:
                       LDA.L $7E34BC                        ;9DAC6C|AFBC347E|;
                       ASL A                                ;9DAC70|0A      |;
                       ASL A                                ;9DAC71|0A      |;
                       ASL A                                ;9DAC72|0A      |;
                       ASL A                                ;9DAC73|0A      |;
                       ADC.B $C1                            ;9DAC74|65C1    |;
                       TAX                                  ;9DAC76|AA      |;
                       LDA.L DATA8_9DAC7F,X                 ;9DAC77|BF7FAC9D|;
                       BEQ CODE_9DAC54                      ;9DAC7B|F0D7    |;
                       PLX                                  ;9DAC7D|FA      |;
                       RTS                                  ;9DAC7E|60      |;
 
         DATA8_9DAC7F:
                       db $01,$00,$01,$00,$01,$00,$01,$00   ;9DAC7F|        |;
                       db $01,$00,$01,$00,$01,$00           ;9DAC87|        |;
                       db $00,$00,$01,$00,$00,$00,$00,$00   ;9DAC8D|        |;
                       db $01,$00,$01,$00,$01,$00,$01,$00   ;9DAC95|        |;
                       db $00,$00,$01,$00,$FF,$FF,$00,$00   ;9DAC9D|        |;
                       db $01,$00,$01,$00,$01,$00,$01,$00   ;9DACA5|        |;
                       db $00,$00,$01,$00,$FF,$FF,$00,$00   ;9DACAD|        |;
                       db $01,$00,$01,$00,$01,$00,$01,$00   ;9DACB5|        |;
                       db $00,$00,$01,$00,$01,$00,$01,$00   ;9DACBD|        |;
                       db $00,$00,$00,$00,$00,$00,$01,$00   ;9DACC5|        |;
                       db $00,$00,$00,$00                   ;9DACCD|        |;
Game_Setup_Menus_Arry_Sizes:                                                ;|; Array of words[0-5] that control the number of options for each menu entry on game setup screen
                       dw $0005                             ;9DACD1|        |; Play Mode (Regular Season, Playoffs, etc)
                       dw $001C                             ;9DACD3|        |; Home Team (28)
                       dw $001C                             ;9DACD5|        |; Away Team (28)
                       dw $0003                             ;9DACD7|        |; Period Length (4)
                       dw $0003                             ;9DACD9|        |; Penalities   (3)
                       dw $0003                             ;9DACDB|        |; Line Changes (3)
                       dw $0002                             ;9DACDD|        |; Goalie Control (2)
                       db $0E,$00,$5E,$00,$5E,$00           ;9DACDE|        |; Goalie Control (2)   
                       db $5E,$00,$9E,$00,$CE,$00,$FE,$00   ;9DACE5|        |;
                       db $10,$00                           ;9DACED|        |;
                       db "Regular Season"                  ;9DACEF|        |;
                       db $10,$00                           ;9DACFD|        |;
                       db "Cont. Playoffs"                  ;9DACFF|        |;
                       db $10,$00                           ;9DAD0D|        |;
                       db "New Playoffs  "                  ;9DAD0F|        |;
                       db $10,$00                           ;9DAD1D|        |;
                       db "Best of 7     "                  ;9DAD1F|        |;
                       db $10,$00                           ;9DAD2D|        |;
                       db "Shootout      "                  ;9DAD2F|        |;
                       db $10,$00                           ;9DAD3D|        |;
                       db "5 Minutes     "                  ;9DAD3F|        |;
                       db $10,$00                           ;9DAD4D|        |;
                       db "10 Minutes    "                  ;9DAD4F|        |;
                       db $10,$00                           ;9DAD5D|        |;
                       db "20 Minutes    "                  ;9DAD5F|        |;
                       db $10,$00                           ;9DAD6D|        |;
                       db "30 Seconds    "                  ;9DAD6F|        |;
                       db $10,$00                           ;9DAD7D|        |;
                       db "Off           "                  ;9DAD7F|        |;
                       db $10,$00                           ;9DAD8D|        |;
                       db "On            "                  ;9DAD8F|        |;
                       db $10,$00                           ;9DAD9D|        |;
                       db "On, No Offside"                  ;9DAD9F|        |;
                       db $10,$00                           ;9DADAD|        |;
                       db "Off           "                  ;9DADAF|        |;
                       db $10,$00                           ;9DADBD|        |;
                       db "On            "                  ;9DADBF|        |;
                       db $10,$00                           ;9DADCD|        |;
                       db "Automatic     "                  ;9DADCF|        |;
                       db $10,$00                           ;9DADDD|        |;
                       db "Automatic     "                  ;9DADDF|        |;
                       db $10,$00                           ;9DADED|        |;
                       db "Manual        "                  ;9DADEF|        |;
                       db $0B,$00                           ;9DADFD|        |;
                       db "Play Mode"                       ;9DADFF|        |;
                       db $06,$00                           ;9DAE08|        |;
                       db "Home"                            ;9DAE0A|        |;
                       db $09,$00                           ;9DAE0E|        |;
                       db "Visitor"                         ;9DAE10|        |;
                       db $08,$00                           ;9DAE17|        |;
                       db "Period"                          ;9DAE19|        |;
                       db $0B,$00                           ;9DAE1F|        |;
                       db "Penalties"                       ;9DAE21|        |;
                       db $0E,$00                           ;9DAE2A|        |;
                       db "Line Changes"                    ;9DAE2C|        |;
                       db $08,$00                           ;9DAE38|        |;
                       db "Goalie"                          ;9DAE3A|        |;
                       db $0B,$00                           ;9DAE40|        |;
                       db "Play Mode"                       ;9DAE42|        |;
                       db $06,$00                           ;9DAE4B|        |;
                       db "Team"                            ;9DAE4D|        |;
                       db $05,$00                           ;9DAE51|        |;
                       db "N/A"                             ;9DAE53|        |;
                       db $05,$00                           ;9DAE56|        |;
                       db "N/A"                             ;9DAE58|        |;
                       db $05,$00                           ;9DAE5B|        |;
                       db "N/A"                             ;9DAE5D|        |;
                       db $05,$00                           ;9DAE60|        |;
                       db "N/A"                             ;9DAE62|        |;
                       db $08,$00                           ;9DAE65|        |;
                       db "Goalie"                          ;9DAE67|        |;
 
          CODE_9DAE6D:
                       LDA.B zpCurntTeamLoopVal             ;9DAE6D|A591    |;
                       PHA                                  ;9DAE6F|48      |;
                       PHX                                  ;9DAE70|DA      |;
                       LDA.W #$0001                         ;9DAE71|A90100  |;
                       STA.L $7E3466                        ;9DAE74|8F66347E|;
                       LDA.W #$1800                         ;9DAE78|A90018  |;
                       STA.B $14                            ;9DAE7B|8514    |;
                       LDY.W #$0060                         ;9DAE7D|A06000  |;
                       LDA.B $A9                            ;9DAE80|A5A9    |;
                       CMP.W $1C98                          ;9DAE82|CD981C  |;
                       BNE CODE_9DAE96                      ;9DAE85|D00F    |;
                       LDX.W #$1C00                         ;9DAE87|A2001C  |;
                       STX.B $14                            ;9DAE8A|8614    |;
                       LDY.W #$0070                         ;9DAE8C|A07000  |;
                       LDA.W #$0018                         ;9DAE8F|A91800  |;
                       STA.L $7E3466                        ;9DAE92|8F66347E|;
 
          CODE_9DAE96:
                       LDA.B $A9                            ;9DAE96|A5A9    |;
                       ASL A                                ;9DAE98|0A      |;
                       ASL A                                ;9DAE99|0A      |;
                       TAX                                  ;9DAE9A|AA      |;
                       LDA.L UNREACH_9C8511,X               ;9DAE9B|BF11859C|;
                       STA.B $0E                            ;9DAE9F|850E    |;
                       LDA.L UNREACH_9C850F,X               ;9DAEA1|BF0F859C|;
                       STA.B $0C                            ;9DAEA5|850C    |;
                       LDX.W #$0010                         ;9DAEA7|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9DAEAA|22BDE09D|;
                       LDA.W $1C98                          ;9DAEAE|AD981C  |;
                       CMP.W $1C9A                          ;9DAEB1|CD9A1C  |;
                       BNE CODE_9DAEC9                      ;9DAEB4|D013    |;
                       LDA.B $14                            ;9DAEB6|A514    |;
                       CMP.W #$1800                         ;9DAEB8|C90018  |;
                       BEQ CODE_9DAEC9                      ;9DAEBB|F00C    |;
                       LDA.W #$1800                         ;9DAEBD|A90018  |;
                       STA.B $14                            ;9DAEC0|8514    |;
                       LDY.W #$0060                         ;9DAEC2|A06000  |;
                       LDA.B $A9                            ;9DAEC5|A5A9    |;
                       BRA CODE_9DAE96                      ;9DAEC7|80CD    |;
 
          CODE_9DAEC9:
                       LDA.L $7E3460                        ;9DAEC9|AF60347E|;
                       BEQ CODE_9DAF29                      ;9DAECD|F05A    |;
                       LDY.W #$0000                         ;9DAECF|A00000  |;
                       LDA.W #$009A                         ;9DAED2|A99A00  |;
                       STA.B $93                            ;9DAED5|8593    |;
                       LDA.W #$E9A3                         ;9DAED7|A9A3E9  |;
                       STA.B zpCurntTeamLoopVal             ;9DAEDA|8591    |;
                       LDA.W $0D11                          ;9DAEDC|AD110D  |;
                       ASL A                                ;9DAEDF|0A      |;
                       ASL A                                ;9DAEE0|0A      |;
                       ASL A                                ;9DAEE1|0A      |;
                       ASL A                                ;9DAEE2|0A      |;
                       ASL A                                ;9DAEE3|0A      |;
                       ADC.W $0D0F                          ;9DAEE4|6D0F0D  |;
                       ASL A                                ;9DAEE7|0A      |;
                       ADC.W $0CD9                          ;9DAEE8|6DD90C  |;
                       TAX                                  ;9DAEEB|AA      |;
                       LDA.W #$0009                         ;9DAEEC|A90900  |;
                       STA.B $C5                            ;9DAEEF|85C5    |;
                       STA.B $C7                            ;9DAEF1|85C7    |;
 
          CODE_9DAEF3:
                       LDA.B [zpCurntTeamLoopVal],Y         ;9DAEF3|B791    |;
                       CLC                                  ;9DAEF5|18      |;
                       ADC.L $7E35CE                        ;9DAEF6|6FCE357E|;
                       CLC                                  ;9DAEFA|18      |;
                       ADC.L $7E35A8                        ;9DAEFB|6FA8357E|;
                       CLC                                  ;9DAEFF|18      |;
                       ADC.B $14                            ;9DAF00|6514    |;
                       STA.L $7E37F4,X                      ;9DAF02|9FF4377E|;
                       INY                                  ;9DAF06|C8      |;
                       INY                                  ;9DAF07|C8      |;
                       INX                                  ;9DAF08|E8      |;
                       INX                                  ;9DAF09|E8      |;
                       DEC.B $C5                            ;9DAF0A|C6C5    |;
                       BNE CODE_9DAEF3                      ;9DAF0C|D0E5    |;
 
          CODE_9DAF0E:
                       LDA.B [zpCurntTeamLoopVal],Y         ;9DAF0E|B791    |;
                       CLC                                  ;9DAF10|18      |;
                       ADC.L $7E35CE                        ;9DAF11|6FCE357E|;
                       CLC                                  ;9DAF15|18      |;
                       ADC.L $7E35A8                        ;9DAF16|6FA8357E|;
                       CLC                                  ;9DAF1A|18      |;
                       ADC.B $14                            ;9DAF1B|6514    |;
                       STA.L $7E3822,X                      ;9DAF1D|9F22387E|;
                       INY                                  ;9DAF21|C8      |;
                       INY                                  ;9DAF22|C8      |;
                       INX                                  ;9DAF23|E8      |;
                       INX                                  ;9DAF24|E8      |;
                       DEC.B $C7                            ;9DAF25|C6C7    |;
                       BNE CODE_9DAF0E                      ;9DAF27|D0E5    |;
 
          CODE_9DAF29:
                       LDA.B $A9                            ;9DAF29|A5A9    |;
                       ASL A                                ;9DAF2B|0A      |;
                       TAX                                  ;9DAF2C|AA      |;
                       LDA.L Banner_Team_Text_PTR,X         ;9DAF2D|BF49969C|;
                       STA.B $0C                            ;9DAF31|850C    |;
                       LDA.W #$009C                         ;9DAF33|A99C00  |;
                       STA.B $0E                            ;9DAF36|850E    |;
                       LDA.W $0D0F                          ;9DAF38|AD0F0D  |;
                       PHA                                  ;9DAF3B|48      |;
                       LDA.W #$005C                         ;9DAF3C|A95C00  |;
                       STA.W $1D59                          ;9DAF3F|8D591D  |;
                       LDA.W #$9C76                         ;9DAF42|A9769C  |;
                       STA.W $1D5A                          ;9DAF45|8D5A1D  |;
                       LDA.W #$009D                         ;9DAF48|A99D00  |;
                       STA.W $1D5C                          ;9DAF4B|8D5C1D  |;
                       JSL.L CODE_9D9A5C                    ;9DAF4E|225C9A9D|;
                       PLA                                  ;9DAF52|68      |;
                       STA.W $0D0F                          ;9DAF53|8D0F0D  |;
                       PLX                                  ;9DAF56|FA      |;
                       PLA                                  ;9DAF57|68      |;
                       STA.B zpCurntTeamLoopVal             ;9DAF58|8591    |;
                       RTS                                  ;9DAF5A|60      |;
 
          CODE_9DAF5B:
                       LDA.W #$007E                         ;9DAF5B|A97E00  |;
                       STA.B $12                            ;9DAF5E|8512    |;
                       LDA.W #$4EF5                         ;9DAF60|A9F54E  |;
                       STA.B $10                            ;9DAF63|8510    |;
                       LDA.W #$0000                         ;9DAF65|A90000  |;
                       LDX.W #$0300                         ;9DAF68|A20003  |;
                       JSL.L CODE_808EDF                    ;9DAF6B|22DF8E80|;
                       LDA.W #$007E                         ;9DAF6F|A97E00  |;
                       STA.B $12                            ;9DAF72|8512    |;
                       LDA.W #$A8FC                         ;9DAF74|A9FCA8  |;
                       STA.B $10                            ;9DAF77|8510    |;
                       LDX.W #$0080                         ;9DAF79|A28000  |;
                       LDA.W #$0000                         ;9DAF7C|A90000  |;
                       JSL.L CODE_808EDF                    ;9DAF7F|22DF8E80|;
                       RTS                                  ;9DAF83|60      |;
                       db $22,$FD,$B0,$9D,$22,$7B,$AF,$80   ;9DAF84|        |;
                       db $A2,$47,$00,$A0,$18,$00,$A9,$9C   ;9DAF8C|        |;
                       db $00,$85,$8F,$A9,$B4,$F5,$85,$8D   ;9DAF94|        |;
                       db $22,$6C,$93,$9C,$22,$B3,$DD,$9D   ;9DAF9C|        |;
                       db $22,$83,$85,$80,$22,$DE,$AF,$80   ;9DAFA4|        |;
                       db $6B,$22,$FD,$B0,$9D,$6B,$A5,$8F   ;9DAFAC|        |;
                       db $48,$A5,$8D,$48,$A9,$9C,$00,$85   ;9DAFB4|        |;
                       db $8F,$A9,$C3,$F5,$85,$8D,$22,$BE   ;9DAFBC|        |;
                       db $C7,$9E,$68,$85,$8D,$68,$85,$8F   ;9DAFC4|        |;
                       db $A5,$8F,$48,$A5,$8D,$48,$A9,$9C   ;9DAFCC|        |;
                       db $00,$85,$8F,$A9,$E1,$F5,$85,$8D   ;9DAFD4|        |;
                       db $22,$BE,$C7,$9E,$68,$85,$8D,$68   ;9DAFDC|        |;
                       db $85,$8F,$A5,$8F,$48,$A5,$8D,$48   ;9DAFE4|        |;
                       db $A9,$9C,$00,$85,$8F,$A9,$FD,$F5   ;9DAFEC|        |;
                       db $85,$8D,$22,$BE,$C7,$9E,$68,$85   ;9DAFF4|        |;
                       db $8D,$68,$85,$8F,$22,$23,$D9,$9D   ;9DAFFC|        |;
                       db $6B,$A5,$8F,$48,$A5,$8D,$48,$A9   ;9DB004|        |;
                       db $9C,$00,$85,$8F,$A9,$0C,$F6,$85   ;9DB00C|        |;
                       db $8D,$22,$BE,$C7,$9E,$68,$85,$8D   ;9DB014|        |;
                       db $68,$85,$8F,$A5,$8F,$48,$A5,$8D   ;9DB01C|        |;
                       db $48,$A9,$9C,$00,$85,$8F,$A9,$2A   ;9DB024|        |;
                       db $F6,$85,$8D,$22,$BE,$C7,$9E,$68   ;9DB02C|        |;
                       db $85,$8D,$68,$85,$8F,$A5,$8F,$48   ;9DB034|        |;
                       db $A5,$8D,$48,$A9,$9C,$00,$85,$8F   ;9DB03C|        |;
                       db $A9,$48,$F6,$85,$8D,$22,$BE,$C7   ;9DB044|        |;
                       db $9E,$68,$85,$8D,$68,$85,$8F,$22   ;9DB04C|        |;
                       db $23,$D9,$9D,$6B,$A5,$8F,$48,$A5   ;9DB054|        |;
                       db $8D,$48,$A9,$9C,$00,$85,$8F,$A9   ;9DB05C|        |;
                       db $63,$F6,$85,$8D,$22,$BE,$C7,$9E   ;9DB064|        |;
                       db $68,$85,$8D,$68,$85,$8F,$A5,$8F   ;9DB06C|        |;
                       db $48,$A5,$8D,$48,$A9,$9C,$00,$85   ;9DB074|        |;
                       db $8F,$A9,$80,$F6,$85,$8D,$22,$BE   ;9DB07C|        |;
                       db $C7,$9E,$68,$85,$8D,$68,$85,$8F   ;9DB084|        |;
                       db $A5,$8F,$48,$A5,$8D,$48,$A9,$9C   ;9DB08C|        |;
                       db $00,$85,$8F,$A9,$9E,$F6,$85,$8D   ;9DB094|        |;
                       db $22,$BE,$C7,$9E,$68,$85,$8D,$68   ;9DB09C|        |;
                       db $85,$8F,$22,$23,$D9,$9D,$6B       ;9DB0A4|        |;
 
          CODE_9DB0AB:
                       LDA.W #$0020                         ;9DB0AB|A92000  |;
                       STA.L $7EA676                        ;9DB0AE|8F76A67E|;
                       STA.L $7EA678                        ;9DB0B2|8F78A67E|;
                       LDA.W #$007E                         ;9DB0B6|A97E00  |;
                       STA.B $0E                            ;9DB0B9|850E    |;
                       LDA.W #$A676                         ;9DB0BB|A976A6  |;
                       STA.B $0C                            ;9DB0BE|850C    |;
                       LDA.W #$0800                         ;9DB0C0|A90008  |;
                       STA.W $079C                          ;9DB0C3|8D9C07  |;
                       LDA.W #$0000                         ;9DB0C6|A90000  |;
                       STA.B $24                            ;9DB0C9|8524    |;
                       LDA.W #$0020                         ;9DB0CB|A92000  |;
                       STA.B $18                            ;9DB0CE|8518    |;
                       LDA.W #$0002                         ;9DB0D0|A90200  |;
                       STA.B $1A                            ;9DB0D3|851A    |;
                       LDY.W $0D11                          ;9DB0D5|AC110D  |;
                       STY.B $26                            ;9DB0D8|8426    |;
                       LDX.W #$0000                         ;9DB0DA|A20000  |;
                       JSL.L CODE_808BED                    ;9DB0DD|22ED8B80|;
                       LDA.W #$007E                         ;9DB0E1|A97E00  |;
                       STA.B $0E                            ;9DB0E4|850E    |;
                       LDA.W #$4EF4                         ;9DB0E6|A9F44E  |;
                       STA.B $0C                            ;9DB0E9|850C    |;
                       LDY.W #$4000                         ;9DB0EB|A00040  |;
                       LDA.L $7E3466                        ;9DB0EE|AF66347E|;
                       INC A                                ;9DB0F2|1A      |;
                       ASL A                                ;9DB0F3|0A      |;
                       ASL A                                ;9DB0F4|0A      |;
                       ASL A                                ;9DB0F5|0A      |;
                       ASL A                                ;9DB0F6|0A      |;
                       TAX                                  ;9DB0F7|AA      |;
                       JSL.L CODE_80891F                    ;9DB0F8|221F8980|;
                       RTS                                  ;9DB0FC|60      |;
 
          CODE_9DB0FD:
                       LDA.W #$007E                         ;9DB0FD|A97E00  |;
                       STA.B $12                            ;9DB100|8512    |;
                       LDA.W #$3AF4                         ;9DB102|A9F43A  |;
                       STA.B $10                            ;9DB105|8510    |;
                       LDA.L $7E35D0                        ;9DB107|AFD0357E|;
                       CLC                                  ;9DB10B|18      |;
                       ADC.L $7E35AA                        ;9DB10C|6FAA357E|;
                       LDX.W #$0500                         ;9DB110|A20005  |;
                       JSL.L CODE_808EDF                    ;9DB113|22DF8E80|;
                       RTL                                  ;9DB117|6B      |;
 
        Intro_Fly_Pck:
                       JSL.L CODE_8086A9                    ;9DB118|22A98680|; Flying Pucks Intro Screen
                       JSL.L CODE_9C983D                    ;9DB11C|223D989C|;
                       LDA.W #$6000                         ;9DB120|A90060  |;
                       LDX.W #$0000                         ;9DB123|A20000  |;
                       LDY.W #$01A0                         ;9DB126|A0A001  |;
                       JSL.L CODE_80AEE1                    ;9DB129|22E1AE80|;
                       SEP #$20                             ;9DB12D|E220    |;
                       LDA.B #$58                           ;9DB12F|A958    |;
                       STA.W $2108                          ;9DB131|8D0821  |;
                       LDA.B #$5C                           ;9DB134|A95C    |;
                       STA.W $2109                          ;9DB136|8D0921  |;
                       LDA.B #$05                           ;9DB139|A905    |;
                       STA.W $210C                          ;9DB13B|8D0C21  |;
                       LDA.B #$FF                           ;9DB13E|A9FF    |;
                       STA.W $07E2                          ;9DB140|8DE207  |;
                       STZ.W $2124                          ;9DB143|9C2421  |;
                       STZ.W $2125                          ;9DB146|9C2521  |;
                       STZ.W $2126                          ;9DB149|9C2621  |;
                       STZ.W $2128                          ;9DB14C|9C2821  |;
                       LDA.B #$03                           ;9DB14F|A903    |;
                       STA.W $212E                          ;9DB151|8D2E21  |;
                       LDA.B #$80                           ;9DB154|A980    |;
                       STA.W $211A                          ;9DB156|8D1A21  |;
                       STZ.W $211C                          ;9DB159|9C1C21  |;
                       STZ.W $211C                          ;9DB15C|9C1C21  |;
                       STZ.W $211D                          ;9DB15F|9C1D21  |;
                       STZ.W $211D                          ;9DB162|9C1D21  |;
                       REP #$20                             ;9DB165|C220    |;
                       STZ.W $07D6                          ;9DB167|9CD607  |;
                       LDA.W #$FFFF                         ;9DB16A|A9FFFF  |;
                       STA.W $07D8                          ;9DB16D|8DD807  |;
                       STZ.W $07DA                          ;9DB170|9CDA07  |;
                       STZ.W $07DC                          ;9DB173|9CDC07  |;
                       STZ.W $07DE                          ;9DB176|9CDE07  |;
                       STZ.W $07E0                          ;9DB179|9CE007  |;
                       LDA.W #$0050                         ;9DB17C|A95000  |;
                       STA.W $07E0                          ;9DB17F|8DE007  |;
                       LDA.W #$0100                         ;9DB182|A90001  |;
                       STA.W $07D6                          ;9DB185|8DD607  |;
                       STZ.W $0BCB                          ;9DB188|9CCB0B  |;
                       STZ.W $0BCD                          ;9DB18B|9CCD0B  |;
                       STZ.W $0BCF                          ;9DB18E|9CCF0B  |;
                       LDA.W #$0009                         ;9DB191|A90900  |;
                       STA.W $0BD1                          ;9DB194|8DD10B  |;
                       LDA.W #$0200                         ;9DB197|A90002  |;
                       STA.W $0BF3                          ;9DB19A|8DF30B  |;
                       STA.W $0BF5                          ;9DB19D|8DF50B  |;
                       LDA.W #$0200                         ;9DB1A0|A90002  |;
                       STA.W $0BF5                          ;9DB1A3|8DF50B  |;
                       STA.W $0BF7                          ;9DB1A6|8DF70B  |;
                       LDA.W #$0190                         ;9DB1A9|A99001  |;
                       STA.W $0BF7                          ;9DB1AC|8DF70B  |;
                       STA.W $0BF9                          ;9DB1AF|8DF90B  |;
                       LDA.W #$0180                         ;9DB1B2|A98001  |;
                       STA.W $0BF9                          ;9DB1B5|8DF90B  |;
                       STA.W $0BFB                          ;9DB1B8|8DFB0B  |;
                       LDA.W #$1800                         ;9DB1BB|A90018  |;
                       STA.W $0BFB                          ;9DB1BE|8DFB0B  |;
                       STA.W $0BFD                          ;9DB1C1|8DFD0B  |;
                       LDA.W #$0011                         ;9DB1C4|A91100  |;
                       STA.W $0BD3                          ;9DB1C7|8DD30B  |;
                       STZ.W $0BFF                          ;9DB1CA|9CFF0B  |;
                       JSR.W CODE_9DB5B6                    ;9DB1CD|20B6B5  |;
                       JSR.W CODE_9DBC8B                    ;9DB1D0|208BBC  |;
                       STZ.W $0BEB                          ;9DB1D3|9CEB0B  |;
                       STZ.W $0BE9                          ;9DB1D6|9CE90B  |;
                       JSL.L CODE_9F96E6                    ;9DB1D9|22E6969F|;
 
          CODE_9DB1DD:
                       LDA.W $0AD3                          ;9DB1DD|ADD30A  |;
                       CMP.W #$000F                         ;9DB1E0|C90F00  |;
                       BCC CODE_9DB1DD                      ;9DB1E3|90F8    |;
                       LDA.W #$B50C                         ;9DB1E5|A90CB5  |;
                       LDX.W #$009D                         ;9DB1E8|A29D00  |;
                       LDY.W #$0000                         ;9DB1EB|A00000  |;
                       STY.W $07D4                          ;9DB1EE|8CD407  |;
                       LDY.W #$0046                         ;9DB1F1|A04600  |;
                       JSL.L CODE_808520                    ;9DB1F4|22208580|;
                       LDA.W #$B4B2                         ;9DB1F8|A9B2B4  |;
                       LDX.W #$009D                         ;9DB1FB|A29D00  |;
                       JSL.L CODE_80855E                    ;9DB1FE|225E8580|;
                       JSL.L CODE_808583                    ;9DB202|22838580|;
                       JSL.L CODE_808583                    ;9DB206|22838580|;
                       LDA.W #$000F                         ;9DB20A|A90F00  |;
                       STA.W $0AD3                          ;9DB20D|8DD30A  |;
                       STA.W $0762                          ;9DB210|8D6207  |;
                       JSR.W CODE_9DB7A0                    ;9DB213|20A0B7  |;
                       LDA.W #$7000                         ;9DB216|A90070  |;
                       STA.B $64                            ;9DB219|8564    |;
                       LDA.W #$0037                         ;9DB21B|A93700  |;
                       JSL.L CODE_80A200                    ;9DB21E|2200A280|;
                       LDX.W #$001E                         ;9DB222|A21E00  |;
                       JSL.L CODE_9DBCEB                    ;9DB225|22EBBC9D|;
                       LDA.W #$0000                         ;9DB229|A90000  |;
                       JSR.W CODE_9DB73F                    ;9DB22C|203FB7  |;
                       LDA.W #$0001                         ;9DB22F|A90100  |;
                       JSR.W CODE_9DB73F                    ;9DB232|203FB7  |;
                       LDA.W #$0002                         ;9DB235|A90200  |;
                       JSR.W CODE_9DB73F                    ;9DB238|203FB7  |;
                       LDA.W #$0034                         ;9DB23B|A93400  |;
                       JSL.L CODE_80A200                    ;9DB23E|2200A280|;
                       LDA.W #$0042                         ;9DB242|A94200  |;
                       STA.W $0BCD                          ;9DB245|8DCD0B  |;
                       JSR.W CODE_9DB891                    ;9DB248|2091B8  |;
                       LDA.W #$0003                         ;9DB24B|A90300  |;
                       JSR.W CODE_9DB73F                    ;9DB24E|203FB7  |;
                       LDA.W #$0004                         ;9DB251|A90400  |;
                       JSR.W CODE_9DB73F                    ;9DB254|203FB7  |;
                       LDA.W #$0005                         ;9DB257|A90500  |;
                       JSR.W CODE_9DB73F                    ;9DB25A|203FB7  |;
                       LDA.W #$0034                         ;9DB25D|A93400  |;
                       JSL.L CODE_80A200                    ;9DB260|2200A280|;
                       LDA.W #$007D                         ;9DB264|A97D00  |;
                       STA.W $0BCD                          ;9DB267|8DCD0B  |;
                       JSR.W CODE_9DB891                    ;9DB26A|2091B8  |;
                       LDA.W #$0006                         ;9DB26D|A90600  |;
                       JSR.W CODE_9DB73F                    ;9DB270|203FB7  |;
                       LDA.W #$0007                         ;9DB273|A90700  |;
                       JSR.W CODE_9DB73F                    ;9DB276|203FB7  |;
                       LDA.W #$0008                         ;9DB279|A90800  |;
                       JSR.W CODE_9DB73F                    ;9DB27C|203FB7  |;
                       LDA.W #$0034                         ;9DB27F|A93400  |;
                       JSL.L CODE_80A200                    ;9DB282|2200A280|;
                       LDA.W #$00FF                         ;9DB286|A9FF00  |;
                       STA.W $0BCD                          ;9DB289|8DCD0B  |;
                       JSR.W CODE_9DB891                    ;9DB28C|2091B8  |;
                       JSR.W CODE_9DBCB2                    ;9DB28F|20B2BC  |;
                       LDA.W #$0001                         ;9DB292|A90100  |;
                       STA.W $0BD1                          ;9DB295|8DD10B  |;
                       LDA.W #$0036                         ;9DB298|A93600  |;
                       JSL.L CODE_80A200                    ;9DB29B|2200A280|;
                       LDX.W #$0007                         ;9DB29F|A20700  |;
                       JSL.L CODE_9DBCEB                    ;9DB2A2|22EBBC9D|;
                       JSR.W CODE_9DBCB3                    ;9DB2A6|20B3BC  |;
                       JSL.L CODE_9C9891                    ;9DB2A9|2291989C|;
                       LDA.W #$008F                         ;9DB2AD|A98F00  |;
                       STA.B $0E                            ;9DB2B0|850E    |;
                       LDA.W #$DD32                         ;9DB2B2|A932DD  |;
                       STA.B $0C                            ;9DB2B5|850C    |;
                       JSL.L CODE_80A2E0                    ;9DB2B7|22E0A280|;
                       JSL.L CODE_80AF7B                    ;9DB2BB|227BAF80|;
                       JSR.W CODE_9DB954                    ;9DB2BF|2054B9  |;
                       JSL.L CODE_80AFDE                    ;9DB2C2|22DEAF80|;
                       JSL.L CODE_808583                    ;9DB2C6|22838580|;
                       JSL.L CODE_808583                    ;9DB2CA|22838580|;
                       JSR.W CODE_9DB7D6                    ;9DB2CE|20D6B7  |;
                       JSL.L CODE_80AF7B                    ;9DB2D1|227BAF80|;
                       JSR.W CODE_9DB954                    ;9DB2D5|2054B9  |;
                       LDA.W #$007F                         ;9DB2D8|A97F00  |;
                       STA.B $12                            ;9DB2DB|8512    |;
                       LDA.W #$5000                         ;9DB2DD|A90050  |;
                       STA.B $10                            ;9DB2E0|8510    |;
                       LDA.W #$0009                         ;9DB2E2|A90900  |;
                       JSR.W CODE_9DB754                    ;9DB2E5|2054B7  |;
                       LDA.W #$0010                         ;9DB2E8|A91000  |;
                       STA.W $0BD3                          ;9DB2EB|8DD30B  |;
                       LDA.W #$1800                         ;9DB2EE|A90018  |;
                       STA.W $0BFB                          ;9DB2F1|8DFB0B  |;
                       LDA.W #$0190                         ;9DB2F4|A99001  |;
                       STA.W $0BF7                          ;9DB2F7|8DF70B  |;
                       LDA.W #$0180                         ;9DB2FA|A98001  |;
                       STA.W $0BF9                          ;9DB2FD|8DF90B  |;
                       JSL.L CODE_80AFDE                    ;9DB300|22DEAF80|;
                       JSL.L CODE_808583                    ;9DB304|22838580|;
                       LDA.W #$007F                         ;9DB308|A97F00  |;
                       STA.B $0E                            ;9DB30B|850E    |;
                       LDA.W #$0000                         ;9DB30D|A90000  |;
                       STA.B $0C                            ;9DB310|850C    |;
                       LDA.W #$0000                         ;9DB312|A90000  |;
                       STA.W $079C                          ;9DB315|8D9C07  |;
                       LDX.W #$003C                         ;9DB318|A23C00  |;
                       LDY.W #$003C                         ;9DB31B|A03C00  |;
                       JSL.L CODE_808D43                    ;9DB31E|22438D80|;
                       JSL.L CODE_808583                    ;9DB322|22838580|;
                       LDA.W #$0011                         ;9DB326|A91100  |;
                       STA.W $0BD3                          ;9DB329|8DD30B  |;
                       JSL.L CODE_808583                    ;9DB32C|22838580|;
                       JSR.W CODE_9DB7A0                    ;9DB330|20A0B7  |;
                       LDX.W #$002D                         ;9DB333|A22D00  |;
                       JSL.L CODE_9DBCEB                    ;9DB336|22EBBC9D|;
                       JSR.W CODE_9DB82B                    ;9DB33A|202BB8  |;
                       JSL.L CODE_80AF7B                    ;9DB33D|227BAF80|;
                       JSR.W CODE_9DB954                    ;9DB341|2054B9  |;
                       LDA.W #$007F                         ;9DB344|A97F00  |;
                       STA.B $12                            ;9DB347|8512    |;
                       LDA.W #$5000                         ;9DB349|A90050  |;
                       STA.B $10                            ;9DB34C|8510    |;
                       LDA.W #$0009                         ;9DB34E|A90900  |;
                       JSR.W CODE_9DB754                    ;9DB351|2054B7  |;
                       LDA.W #$000A                         ;9DB354|A90A00  |;
                       JSR.W CODE_9DB754                    ;9DB357|2054B7  |;
                       JSL.L CODE_80AFDE                    ;9DB35A|22DEAF80|;
                       JSL.L CODE_808583                    ;9DB35E|22838580|;
                       JSL.L CODE_808583                    ;9DB362|22838580|;
                       LDA.W #$0010                         ;9DB366|A91000  |;
                       STA.W $0BD3                          ;9DB369|8DD30B  |;
                       LDA.W #$0F00                         ;9DB36C|A9000F  |;
                       STA.W $0BFB                          ;9DB36F|8DFB0B  |;
                       LDA.W #$0190                         ;9DB372|A99001  |;
                       STA.W $0BF7                          ;9DB375|8DF70B  |;
                       LDA.W #$01B0                         ;9DB378|A9B001  |;
                       STA.W $0BF9                          ;9DB37B|8DF90B  |;
                       LDA.W #$0210                         ;9DB37E|A91002  |;
                       STA.W $0BF3                          ;9DB381|8DF30B  |;
                       LDA.W #$F0C0                         ;9DB384|A9C0F0  |;
                       STA.W $0BEB                          ;9DB387|8DEB0B  |;
                       LDA.W #$0096                         ;9DB38A|A99600  |;
                       STA.B $0E                            ;9DB38D|850E    |;
                       LDA.W #$A5E5                         ;9DB38F|A9E5A5  |;
                       STA.B $0C                            ;9DB392|850C    |;
                       LDA.W #$007F                         ;9DB394|A97F00  |;
                       STA.B $12                            ;9DB397|8512    |;
                       LDA.W #$0000                         ;9DB399|A90000  |;
                       STA.B $10                            ;9DB39C|8510    |;
                       JSL.L CODE_80C373                    ;9DB39E|2273C380|;
                       LDA.W #$007F                         ;9DB3A2|A97F00  |;
                       STA.B $0E                            ;9DB3A5|850E    |;
                       LDA.W #$0000                         ;9DB3A7|A90000  |;
                       STA.B $0C                            ;9DB3AA|850C    |;
                       LDY.W #$2000                         ;9DB3AC|A00020  |;
                       JSL.L CODE_80899B                    ;9DB3AF|229B8980|;
                       JSR.W CODE_9DBCF8                    ;9DB3B3|20F8BC  |;
                       STZ.W $0BFD                          ;9DB3B6|9CFD0B  |;
                       LDA.W $0BD5                          ;9DB3B9|ADD50B  |;
                       ASL A                                ;9DB3BC|0A      |;
                       TAX                                  ;9DB3BD|AA      |;
                       LDA.L $7EF000,X                      ;9DB3BE|BF00F07E|;
                       JSR.W CODE_9DBB14                    ;9DB3C2|2014BB  |;
                       LDA.W #$0011                         ;9DB3C5|A91100  |;
                       STA.W $0BD3                          ;9DB3C8|8DD30B  |;
                       JSL.L CODE_808583                    ;9DB3CB|22838580|;
                       JSL.L CODE_808583                    ;9DB3CF|22838580|;
                       STZ.W $0764                          ;9DB3D3|9C6407  |;
                       STZ.W $0BEF                          ;9DB3D6|9CEF0B  |;
                       STZ.W $0BF1                          ;9DB3D9|9CF10B  |;
                       LDA.W #$0002                         ;9DB3DC|A90200  |;
                       STA.W $0BFF                          ;9DB3DF|8DFF0B  |;
 
          CODE_9DB3E2:
                       LDA.W $0764                          ;9DB3E2|AD6407  |;
                       CMP.W #$00F0                         ;9DB3E5|C9F000  |;
                       BCS CODE_9DB3FF                      ;9DB3E8|B015    |;
                       LDA.W $0764                          ;9DB3EA|AD6407  |;
                       CMP.W #$0078                         ;9DB3ED|C97800  |;
                       BCS CODE_9DB3F7                      ;9DB3F0|B005    |;
                       JSR.W CODE_9DB983                    ;9DB3F2|2083B9  |;
                       BRA CODE_9DB3FA                      ;9DB3F5|8003    |;
 
          CODE_9DB3F7:
                       JSR.W CODE_9DB9B4                    ;9DB3F7|20B4B9  |;
 
          CODE_9DB3FA:
                       JSR.W CODE_9DB430                    ;9DB3FA|2030B4  |;
                       BRA CODE_9DB3E2                      ;9DB3FD|80E3    |;
 
          CODE_9DB3FF:
                       STZ.W $0764                          ;9DB3FF|9C6407  |;
                       JSR.W CODE_9DB9F7                    ;9DB402|20F7B9  |;
                       JSL.L CODE_808583                    ;9DB405|22838580|;
 
          CODE_9DB409:
                       LDA.W $0764                          ;9DB409|AD6407  |;
                       CMP.W #$1284                         ;9DB40C|C98412  |;
                       BCS CODE_9DB41E                      ;9DB40F|B00D    |;
                       LDA.W $0BE9                          ;9DB411|ADE90B  |;
                       BNE CODE_9DB41E                      ;9DB414|D008    |;
                       JSR.W CODE_9DBA13                    ;9DB416|2013BA  |;
                       JSR.W CODE_9DB430                    ;9DB419|2030B4  |;
                       BRA CODE_9DB409                      ;9DB41C|80EB    |;
 
          CODE_9DB41E:
                       LDA.W $0AD3                          ;9DB41E|ADD30A  |;
                       BEQ CODE_9DB42C                      ;9DB421|F009    |;
                       DEC.W $0AD3                          ;9DB423|CED30A  |;
                       JSL.L CODE_808583                    ;9DB426|22838580|;
                       BRA CODE_9DB41E                      ;9DB42A|80F2    |;
 
          CODE_9DB42C:
                       JSR.W CODE_9DB72F                    ;9DB42C|202FB7  |;
                       RTL                                  ;9DB42F|6B      |;
 
          CODE_9DB430:
                       LDA.W $0BFF                          ;9DB430|ADFF0B  |;
                       BIT.W #$0001                         ;9DB433|890100  |;
                       BEQ CODE_9DB44A                      ;9DB436|F012    |;
                       STZ.W $0BEF                          ;9DB438|9CEF0B  |;
                       STZ.W $0BF1                          ;9DB43B|9CF10B  |;
                       JSR.W CODE_9DBD36                    ;9DB43E|2036BD  |;
                       JSR.W CODE_9DBB14                    ;9DB441|2014BB  |;
                       LDA.W #$0001                         ;9DB444|A90100  |;
                       TRB.W $0BFF                          ;9DB447|1CFF0B  |;
 
          CODE_9DB44A:
                       RTS                                  ;9DB44A|60      |;
 
          CODE_9DB44B:
                       PHP                                  ;9DB44B|08      |;
                       REP #$30                             ;9DB44C|C230    |;
                       LDA.W $0BFF                          ;9DB44E|ADFF0B  |;
                       BIT.W #$0002                         ;9DB451|890200  |;
                       BEQ CODE_9DB4B0                      ;9DB454|F05A    |;
                       BIT.W #$0001                         ;9DB456|890100  |;
                       BNE CODE_9DB46A                      ;9DB459|D00F    |;
                       LDA.W $0BF1                          ;9DB45B|ADF10B  |;
                       CLC                                  ;9DB45E|18      |;
                       ADC.W #$0C00                         ;9DB45F|69000C  |;
                       STA.W $0BF1                          ;9DB462|8DF10B  |;
                       BCC CODE_9DB46A                      ;9DB465|9003    |;
                       INC.W $0BEF                          ;9DB467|EEEF0B  |;
 
          CODE_9DB46A:
                       SEP #$20                             ;9DB46A|E220    |;
                       LDA.W $0BEF                          ;9DB46C|ADEF0B  |;
                       XBA                                  ;9DB46F|EB      |;
                       LDA.W $0BF2                          ;9DB470|ADF20B  |;
                       REP #$20                             ;9DB473|C220    |;
                       CMP.W #$0500                         ;9DB475|C90005  |;
                       BCC CODE_9DB48C                      ;9DB478|9012    |;
                       LDA.W #$0001                         ;9DB47A|A90100  |;
                       TSB.W $0BFF                          ;9DB47D|0CFF0B  |;
                       LDA.W $0BFD                          ;9DB480|ADFD0B  |;
                       EOR.W #$0001                         ;9DB483|490100  |;
                       STA.W $0BFD                          ;9DB486|8DFD0B  |;
                       LDA.W #$0000                         ;9DB489|A90000  |;
 
          CODE_9DB48C:
                       ASL A                                ;9DB48C|0A      |;
                       TAX                                  ;9DB48D|AA      |;
                       LDA.L $7F8000,X                      ;9DB48E|BF00807F|;
                       STA.W $0BFB                          ;9DB492|8DFB0B  |;
                       LDA.L $7F8A00,X                      ;9DB495|BF008A7F|;
                       LDY.W $0BFD                          ;9DB499|ACFD0B  |;
                       BEQ CODE_9DB4A2                      ;9DB49C|F004    |;
                       EOR.W #$FFFF                         ;9DB49E|49FFFF  |;
                       INC A                                ;9DB4A1|1A      |;
 
          CODE_9DB4A2:
                       CLC                                  ;9DB4A2|18      |;
                       ADC.W #$0190                         ;9DB4A3|699001  |;
                       STA.W $0BF7                          ;9DB4A6|8DF70B  |;
                       LDA.L $7F9400,X                      ;9DB4A9|BF00947F|;
                       STA.W $0BF9                          ;9DB4AD|8DF90B  |;
 
          CODE_9DB4B0:
                       PLP                                  ;9DB4B0|28      |;
                       RTS                                  ;9DB4B1|60      |;
                       LDA.W $0776                          ;9DB4B2|AD7607  |;
                       BIT.W $0BEB                          ;9DB4B5|2CEB0B  |;
                       BEQ CODE_9DB4C0                      ;9DB4B8|F006    |;
                       LDA.W #$0001                         ;9DB4BA|A90100  |;
                       STA.W $0BE9                          ;9DB4BD|8DE90B  |;
 
          CODE_9DB4C0:
                       SEP #$20                             ;9DB4C0|E220    |;
                       LDA.W $0AD3                          ;9DB4C2|ADD30A  |;
                       STA.W $2100                          ;9DB4C5|8D0021  |;
                       LDA.B #$17                           ;9DB4C8|A917    |;
                       STA.W $212C                          ;9DB4CA|8D2C21  |;
                       LDA.B #$54                           ;9DB4CD|A954    |;
                       STA.W $2107                          ;9DB4CF|8D0721  |;
                       LDA.B #$44                           ;9DB4D2|A944    |;
                       STA.W $210B                          ;9DB4D4|8D0B21  |;
                       LDA.B #$C3                           ;9DB4D7|A9C3    |;
                       STA.W $2123                          ;9DB4D9|8D2321  |;
                       LDA.W $0BD1                          ;9DB4DC|ADD10B  |;
                       STA.W $2105                          ;9DB4DF|8D0521  |;
                       LDA.W $0BCB                          ;9DB4E2|ADCB0B  |;
                       STA.W $2127                          ;9DB4E5|8D2721  |;
                       LDA.W $0BCD                          ;9DB4E8|ADCD0B  |;
                       STA.W $2129                          ;9DB4EB|8D2921  |;
                       REP #$20                             ;9DB4EE|C220    |;
                       LDA.W #$009D                         ;9DB4F0|A99D00  |;
                       STA.W $0791                          ;9DB4F3|8D9107  |;
                       LDA.W #$B50C                         ;9DB4F6|A90CB5  |;
                       STA.W $078F                          ;9DB4F9|8D8F07  |;
                       LDA.W #$0046                         ;9DB4FC|A94600  |;
                       STA.W $4209                          ;9DB4FF|8D0942  |;
                       LDA.W #$0000                         ;9DB502|A90000  |;
                       STA.W $4207                          ;9DB505|8D0742  |;
                       JSR.W CODE_9DB44B                    ;9DB508|204BB4  |;
                       RTL                                  ;9DB50B|6B      |;
                       SEP #$20                             ;9DB50C|E220    |;
                       LDA.W $0BCF                          ;9DB50E|ADCF0B  |;
                       STA.W $2129                          ;9DB511|8D2921  |;
                       REP #$20                             ;9DB514|C220    |;
                       LDA.W #$009D                         ;9DB516|A99D00  |;
                       STA.W $0791                          ;9DB519|8D9107  |;
                       LDA.W #$B52F                         ;9DB51C|A92FB5  |;
                       STA.W $078F                          ;9DB51F|8D8F07  |;
                       LDA.W #$0050                         ;9DB522|A95000  |;
                       STA.W $4209                          ;9DB525|8D0942  |;
                       LDA.W #$00A0                         ;9DB528|A9A000  |;
                       STA.W $4207                          ;9DB52B|8D0742  |;
                       RTL                                  ;9DB52E|6B      |;
                       SEP #$20                             ;9DB52F|E220    |;
                       LDA.B #$07                           ;9DB531|A907    |;
                       STA.W $2105                          ;9DB533|8D0521  |;
                       LDA.B #$00                           ;9DB536|A900    |;
                       STA.W $2107                          ;9DB538|8D0721  |;
                       LDA.B #$00                           ;9DB53B|A900    |;
                       STA.W $210B                          ;9DB53D|8D0B21  |;
                       STZ.W $2123                          ;9DB540|9C2321  |;
                       LDA.W $0BD3                          ;9DB543|ADD30B  |;
                       STA.W $212C                          ;9DB546|8D2C21  |;
                       LDA.W $0BF3                          ;9DB549|ADF30B  |;
                       STA.W $211F                          ;9DB54C|8D1F21  |;
                       LDA.W $0BF4                          ;9DB54F|ADF40B  |;
                       STA.W $211F                          ;9DB552|8D1F21  |;
                       LDA.W $0BF5                          ;9DB555|ADF50B  |;
                       STA.W $2120                          ;9DB558|8D2021  |;
                       LDA.W $0BF6                          ;9DB55B|ADF60B  |;
                       STA.W $2120                          ;9DB55E|8D2021  |;
                       LDA.W $0BF7                          ;9DB561|ADF70B  |;
                       STA.W $210D                          ;9DB564|8D0D21  |;
                       LDA.W $0BF8                          ;9DB567|ADF80B  |;
                       STA.W $210D                          ;9DB56A|8D0D21  |;
                       LDA.W $0BF9                          ;9DB56D|ADF90B  |;
                       STA.W $210E                          ;9DB570|8D0E21  |;
                       LDA.W $0BFA                          ;9DB573|ADFA0B  |;
                       STA.W $210E                          ;9DB576|8D0E21  |;
                       LDA.W $0BFB                          ;9DB579|ADFB0B  |;
                       STA.W $211B                          ;9DB57C|8D1B21  |;
                       LDA.W $0BFC                          ;9DB57F|ADFC0B  |;
                       STA.W $211B                          ;9DB582|8D1B21  |;
                       LDA.W $0BFB                          ;9DB585|ADFB0B  |;
                       STA.W $211E                          ;9DB588|8D1E21  |;
                       LDA.W $0BFC                          ;9DB58B|ADFC0B  |;
                       STA.W $211E                          ;9DB58E|8D1E21  |;
                       REP #$20                             ;9DB591|C220    |;
                       LDA.W #$009D                         ;9DB593|A99D00  |;
                       STA.W $0791                          ;9DB596|8D9107  |;
                       LDA.W #$B5AC                         ;9DB599|A9ACB5  |;
                       STA.W $078F                          ;9DB59C|8D8F07  |;
                       LDA.W #$00B0                         ;9DB59F|A9B000  |;
                       STA.W $4209                          ;9DB5A2|8D0942  |;
                       LDA.W #$0000                         ;9DB5A5|A90000  |;
                       STA.W $4207                          ;9DB5A8|8D0742  |;
                       RTL                                  ;9DB5AB|6B      |;
                       SEP #$20                             ;9DB5AC|E220    |;
                       LDA.B #$11                           ;9DB5AE|A911    |;
                       STA.W $212C                          ;9DB5B0|8D2C21  |;
                       REP #$20                             ;9DB5B3|C220    |;
                       RTL                                  ;9DB5B5|6B      |;
 
          CODE_9DB5B6:
                       LDA.W #$009A                         ;9DB5B6|A99A00  |;
                       STA.B $0E                            ;9DB5B9|850E    |;
                       LDA.W #$CCA9                         ;9DB5BB|A9A9CC  |;
                       STA.B $0C                            ;9DB5BE|850C    |;
                       LDA.W #$007F                         ;9DB5C0|A97F00  |;
                       STA.B $12                            ;9DB5C3|8512    |;
                       LDA.W #$0000                         ;9DB5C5|A90000  |;
                       STA.B $10                            ;9DB5C8|8510    |;
                       JSL.L CODE_80C373                    ;9DB5CA|2273C380|;
                       LDA.W #$009A                         ;9DB5CE|A99A00  |;
                       STA.B $0E                            ;9DB5D1|850E    |;
                       LDA.W #$E0D5                         ;9DB5D3|A9D5E0  |;
                       STA.B $0C                            ;9DB5D6|850C    |;
                       LDA.W #$007F                         ;9DB5D8|A97F00  |;
                       STA.B $12                            ;9DB5DB|8512    |;
                       LDA.W #$0100                         ;9DB5DD|A90001  |;
                       STA.B $10                            ;9DB5E0|8510    |;
                       JSL.L CODE_80C373                    ;9DB5E2|2273C380|;
                       LDA.W #$007F                         ;9DB5E6|A97F00  |;
                       STA.B $0E                            ;9DB5E9|850E    |;
                       LDA.W #$0000                         ;9DB5EB|A90000  |;
                       STA.B $0C                            ;9DB5EE|850C    |;
                       LDY.W #$0000                         ;9DB5F0|A00000  |;
                       LDX.W #$0100                         ;9DB5F3|A20001  |;
                       JSL.L CODE_808723                    ;9DB5F6|22238780|;
                       LDA.W #$0000                         ;9DB5FA|A90000  |;
                       LDX.W #$4000                         ;9DB5FD|A20040  |;
                       LDY.W #$0000                         ;9DB600|A00000  |;
                       JSL.L CODE_808862                    ;9DB603|22628880|;
                       LDA.W #$0095                         ;9DB607|A99500  |;
                       STA.B $0E                            ;9DB60A|850E    |;
                       LDA.W #$F8C6                         ;9DB60C|A9C6F8  |;
                       STA.B $0C                            ;9DB60F|850C    |;
                       LDA.W #$007F                         ;9DB611|A97F00  |;
                       STA.B $12                            ;9DB614|8512    |;
                       LDA.W #$0000                         ;9DB616|A90000  |;
                       STA.B $10                            ;9DB619|8510    |;
                       JSL.L CODE_80C373                    ;9DB61B|2273C380|;
                       LDA.W #$007F                         ;9DB61F|A97F00  |;
                       STA.B $0E                            ;9DB622|850E    |;
                       LDA.W #$0000                         ;9DB624|A90000  |;
                       STA.B $0C                            ;9DB627|850C    |;
                       LDY.W #$0000                         ;9DB629|A00000  |;
                       JSL.L CODE_80899B                    ;9DB62C|229B8980|;
                       LDA.W #$008A                         ;9DB630|A98A00  |;
                       STA.B $0E                            ;9DB633|850E    |;
                       LDA.W #$FF7A                         ;9DB635|A97AFF  |;
                       STA.B $0C                            ;9DB638|850C    |;
                       LDA.W #$0000                         ;9DB63A|A90000  |;
                       STA.W $079C                          ;9DB63D|8D9C07  |;
                       LDX.W #$003C                         ;9DB640|A23C00  |;
                       LDY.W #$003C                         ;9DB643|A03C00  |;
                       JSL.L CODE_808D43                    ;9DB646|22438D80|;
                       LDA.W #$0094                         ;9DB64A|A99400  |;
                       STA.B $0E                            ;9DB64D|850E    |;
                       LDA.W #$8000                         ;9DB64F|A90080  |;
                       STA.B $0C                            ;9DB652|850C    |;
                       LDA.W #$007F                         ;9DB654|A97F00  |;
                       STA.B $12                            ;9DB657|8512    |;
                       LDA.W #$0000                         ;9DB659|A90000  |;
                       STA.B $10                            ;9DB65C|8510    |;
                       JSL.L CODE_80C373                    ;9DB65E|2273C380|;
                       LDA.W #$007F                         ;9DB662|A97F00  |;
                       STA.B $0E                            ;9DB665|850E    |;
                       LDA.W #$0000                         ;9DB667|A90000  |;
                       STA.B $0C                            ;9DB66A|850C    |;
                       LDY.W #$4000                         ;9DB66C|A00040  |;
                       JSL.L CODE_80891F                    ;9DB66F|221F8980|;
                       LDA.W #$009A                         ;9DB673|A99A00  |;
                       STA.B $0E                            ;9DB676|850E    |;
                       LDA.W #$DDC6                         ;9DB678|A9C6DD  |;
                       STA.B $0C                            ;9DB67B|850C    |;
                       LDA.W #$007F                         ;9DB67D|A97F00  |;
                       STA.B $12                            ;9DB680|8512    |;
                       LDA.W #$0000                         ;9DB682|A90000  |;
                       STA.B $10                            ;9DB685|8510    |;
                       JSL.L CODE_80C373                    ;9DB687|2273C380|;
                       LDA.W #$007F                         ;9DB68B|A97F00  |;
                       STA.B $0E                            ;9DB68E|850E    |;
                       LDA.W #$0000                         ;9DB690|A90000  |;
                       STA.B $0C                            ;9DB693|850C    |;
                       LDA.W #$5400                         ;9DB695|A90054  |;
                       STA.W $079C                          ;9DB698|8D9C07  |;
                       LDX.W #$0000                         ;9DB69B|A20000  |;
                       LDY.W #$0000                         ;9DB69E|A00000  |;
                       JSL.L CODE_808ADF                    ;9DB6A1|22DF8A80|;
                       LDA.W #$009A                         ;9DB6A5|A99A00  |;
                       STA.B $0E                            ;9DB6A8|850E    |;
                       LDA.W #$D88C                         ;9DB6AA|A98CD8  |;
                       STA.B $0C                            ;9DB6AD|850C    |;
                       LDA.W #$007F                         ;9DB6AF|A97F00  |;
                       STA.B $12                            ;9DB6B2|8512    |;
                       LDA.W #$0000                         ;9DB6B4|A90000  |;
                       STA.B $10                            ;9DB6B7|8510    |;
                       JSL.L CODE_80C373                    ;9DB6B9|2273C380|;
                       LDA.W #$007F                         ;9DB6BD|A97F00  |;
                       STA.B $0E                            ;9DB6C0|850E    |;
                       LDA.W #$0000                         ;9DB6C2|A90000  |;
                       STA.B $0C                            ;9DB6C5|850C    |;
                       LDA.W #$5800                         ;9DB6C7|A90058  |;
                       STA.W $079C                          ;9DB6CA|8D9C07  |;
                       LDX.W #$0000                         ;9DB6CD|A20000  |;
                       LDY.W #$0000                         ;9DB6D0|A00000  |;
                       JSL.L CODE_808ADF                    ;9DB6D3|22DF8A80|;
                       LDA.W #$0087                         ;9DB6D7|A98700  |;
                       STA.B $0E                            ;9DB6DA|850E    |;
                       LDA.W #$FF91                         ;9DB6DC|A991FF  |;
                       STA.B $0C                            ;9DB6DF|850C    |;
                       LDA.W #$007F                         ;9DB6E1|A97F00  |;
                       STA.B $12                            ;9DB6E4|8512    |;
                       LDA.W #$0000                         ;9DB6E6|A90000  |;
                       STA.B $10                            ;9DB6E9|8510    |;
                       JSL.L CODE_80C373                    ;9DB6EB|2273C380|;
                       LDA.W #$009A                         ;9DB6EF|A99A00  |;
                       STA.B $0E                            ;9DB6F2|850E    |;
                       LDA.W #$DEE0                         ;9DB6F4|A9E0DE  |;
                       STA.B $0C                            ;9DB6F7|850C    |;
                       LDA.W #$007F                         ;9DB6F9|A97F00  |;
                       STA.B $12                            ;9DB6FC|8512    |;
                       LDA.W #$4000                         ;9DB6FE|A90040  |;
                       STA.B $10                            ;9DB701|8510    |;
                       JSL.L CODE_80C373                    ;9DB703|2273C380|;
                       LDA.B $10                            ;9DB707|A510    |;
                       CLC                                  ;9DB709|18      |;
                       ADC.W #$0006                         ;9DB70A|690600  |;
                       STA.B $10                            ;9DB70D|8510    |;
                       LDA.W #$8080                         ;9DB70F|A98080  |;
                       JSL.L CODE_808F03                    ;9DB712|22038F80|;
                       LDA.W #$0091                         ;9DB716|A99100  |;
                       STA.B $0E                            ;9DB719|850E    |;
                       LDA.W #$B188                         ;9DB71B|A988B1  |;
                       STA.B $0C                            ;9DB71E|850C    |;
                       LDA.W #$007F                         ;9DB720|A97F00  |;
                       STA.B $12                            ;9DB723|8512    |;
                       LDA.W #$5000                         ;9DB725|A90050  |;
                       STA.B $10                            ;9DB728|8510    |;
                       JSL.L CODE_80C373                    ;9DB72A|2273C380|;
                       RTS                                  ;9DB72E|60      |;
 
          CODE_9DB72F:
                       LDX.W #$0BCB                         ;9DB72F|A2CB0B  |;
                       LDA.W #$0000                         ;9DB732|A90000  |;
 
          CODE_9DB735:
                       STA.B $00,X                          ;9DB735|9500    |;
                       INX                                  ;9DB737|E8      |;
                       INX                                  ;9DB738|E8      |;
                       CPX.W #$0C01                         ;9DB739|E0010C  |;
                       BCC CODE_9DB735                      ;9DB73C|90F7    |;
                       RTS                                  ;9DB73E|60      |;
 
          CODE_9DB73F:
                       PHA                                  ;9DB73F|48      |;
                       JSL.L CODE_80AF7B                    ;9DB740|227BAF80|;
                       PLA                                  ;9DB744|68      |;
                       JSR.W CODE_9DB754                    ;9DB745|2054B7  |;
                       JSL.L CODE_80AFDE                    ;9DB748|22DEAF80|;
                       LDX.W #$0004                         ;9DB74C|A20400  |;
                       JSL.L CODE_9DBCEB                    ;9DB74F|22EBBC9D|;
                       RTS                                  ;9DB753|60      |;
 
          CODE_9DB754:
                       STA.B $00                            ;9DB754|8500    |;
                       ASL A                                ;9DB756|0A      |;
                       TAX                                  ;9DB757|AA      |;
                       LDA.W #$007F                         ;9DB758|A97F00  |;
                       STA.B $12                            ;9DB75B|8512    |;
                       LDA.W #$5000                         ;9DB75D|A90050  |;
                       STA.B $10                            ;9DB760|8510    |;
                       LDA.L DATA8_9DB78A,X                 ;9DB762|BF8AB79D|;
                       TAY                                  ;9DB766|A8      |;
                       LDA.L DATA8_9DB774,X                 ;9DB767|BF74B79D|;
                       TAX                                  ;9DB76B|AA      |;
                       LDA.W #$3000                         ;9DB76C|A90030  |;
                       JSL.L CODE_80B08D                    ;9DB76F|228DB080|;
                       RTS                                  ;9DB773|60      |;
 
         DATA8_9DB774:
                       db $58,$00,$40,$00,$28,$00,$70,$00   ;9DB774|        |;
                       db $60,$00,$50,$00,$80,$00,$80,$00   ;9DB77C|        |;
                       db $80,$00,$07,$00,$D0,$00           ;9DB784|        |;
 
         DATA8_9DB78A:
                       db $58,$00,$40,$00,$28,$00,$60,$00   ;9DB78A|        |;
                       db $48,$00,$28,$00,$60,$00,$48,$00   ;9DB792|        |;
                       db $28,$00,$B0,$00,$B0,$00           ;9DB79A|        |;
 
          CODE_9DB7A0:
                       LDA.W $0BFB                          ;9DB7A0|ADFB0B  |;
 
          CODE_9DB7A3:
                       DEC A                                ;9DB7A3|3A      |;
                       CMP.W #$0100                         ;9DB7A4|C90001  |;
                       BCC CODE_9DB7B4                      ;9DB7A7|900B    |;
                       STA.W $0BFB                          ;9DB7A9|8DFB0B  |;
                       LDX.W #$0064                         ;9DB7AC|A26400  |;
                       JSR.W CODE_9DB884                    ;9DB7AF|2084B8  |;
                       BRA CODE_9DB7A3                      ;9DB7B2|80EF    |;
 
          CODE_9DB7B4:
                       LDA.W #$0100                         ;9DB7B4|A90001  |;
                       STA.W $0BFB                          ;9DB7B7|8DFB0B  |;
                       RTS                                  ;9DB7BA|60      |;
                       db $AD,$FB,$0B,$1A,$C9,$00,$02,$B0   ;9DB7BB|        |;
                       db $0B,$8D,$FB,$0B,$A2,$00,$02,$20   ;9DB7C3|        |;
                       db $84,$B8,$80,$EF,$A9,$00,$02,$8D   ;9DB7CB|        |;
                       db $FB,$0B,$60                       ;9DB7D3|        |;
 
          CODE_9DB7D6:
                       LDA.W $0BFB                          ;9DB7D6|ADFB0B  |;
                       INC A                                ;9DB7D9|1A      |;
                       CMP.W #$0200                         ;9DB7DA|C90002  |;
                       BCS CODE_9DB818                      ;9DB7DD|B039    |;
                       STA.W $0BFB                          ;9DB7DF|8DFB0B  |;
                       SEC                                  ;9DB7E2|38      |;
                       SBC.W #$0100                         ;9DB7E3|E90001  |;
                       PHA                                  ;9DB7E6|48      |;
                       LDX.W #$0058                         ;9DB7E7|A25800  |;
                       JSL.L CODE_808F4C                    ;9DB7EA|224C8F80|;
                       XBA                                  ;9DB7EE|EB      |;
                       AND.W #$00FF                         ;9DB7EF|29FF00  |;
                       CLC                                  ;9DB7F2|18      |;
                       ADC.W #$0190                         ;9DB7F3|699001  |;
                       STA.W $0BF7                          ;9DB7F6|8DF70B  |;
                       PLA                                  ;9DB7F9|68      |;
                       LDX.W #$0040                         ;9DB7FA|A24000  |;
                       JSL.L CODE_808F4C                    ;9DB7FD|224C8F80|;
                       XBA                                  ;9DB801|EB      |;
                       AND.W #$00FF                         ;9DB802|29FF00  |;
                       EOR.W #$FFFF                         ;9DB805|49FFFF  |;
                       INC A                                ;9DB808|1A      |;
                       CLC                                  ;9DB809|18      |;
                       ADC.W #$0180                         ;9DB80A|698001  |;
                       STA.W $0BF9                          ;9DB80D|8DF90B  |;
                       LDX.W #$03E8                         ;9DB810|A2E803  |;
                       JSR.W CODE_9DB884                    ;9DB813|2084B8  |;
                       BRA CODE_9DB7D6                      ;9DB816|80BE    |;
 
          CODE_9DB818:
                       LDA.W #$0200                         ;9DB818|A90002  |;
                       STA.W $0BFB                          ;9DB81B|8DFB0B  |;
                       LDA.W #$01E8                         ;9DB81E|A9E801  |;
                       STA.W $0BF7                          ;9DB821|8DF70B  |;
                       LDA.W #$0140                         ;9DB824|A94001  |;
                       STA.W $0BF9                          ;9DB827|8DF90B  |;
                       RTS                                  ;9DB82A|60      |;
 
          CODE_9DB82B:
                       LDA.W $0BFB                          ;9DB82B|ADFB0B  |;
                       INC A                                ;9DB82E|1A      |;
                       CMP.W #$0200                         ;9DB82F|C90002  |;
                       BCS CODE_9DB871                      ;9DB832|B03D    |;
                       STA.W $0BFB                          ;9DB834|8DFB0B  |;
                       SEC                                  ;9DB837|38      |;
                       SBC.W #$0100                         ;9DB838|E90001  |;
                       PHA                                  ;9DB83B|48      |;
                       LDX.W #$0070                         ;9DB83C|A27000  |;
                       JSL.L CODE_808F4C                    ;9DB83F|224C8F80|;
                       XBA                                  ;9DB843|EB      |;
                       AND.W #$00FF                         ;9DB844|29FF00  |;
                       EOR.W #$FFFF                         ;9DB847|49FFFF  |;
                       INC A                                ;9DB84A|1A      |;
                       CLC                                  ;9DB84B|18      |;
                       ADC.W #$0190                         ;9DB84C|699001  |;
                       STA.W $0BF7                          ;9DB84F|8DF70B  |;
                       PLA                                  ;9DB852|68      |;
                       LDX.W #$0040                         ;9DB853|A24000  |;
                       JSL.L CODE_808F4C                    ;9DB856|224C8F80|;
                       XBA                                  ;9DB85A|EB      |;
                       AND.W #$00FF                         ;9DB85B|29FF00  |;
                       EOR.W #$FFFF                         ;9DB85E|49FFFF  |;
                       INC A                                ;9DB861|1A      |;
                       CLC                                  ;9DB862|18      |;
                       ADC.W #$0180                         ;9DB863|698001  |;
                       STA.W $0BF9                          ;9DB866|8DF90B  |;
                       LDX.W #$03E8                         ;9DB869|A2E803  |;
                       JSR.W CODE_9DB884                    ;9DB86C|2084B8  |;
                       BRA CODE_9DB82B                      ;9DB86F|80BA    |;
 
          CODE_9DB871:
                       LDA.W #$0200                         ;9DB871|A90002  |;
                       STA.W $0BFB                          ;9DB874|8DFB0B  |;
                       LDA.W #$0120                         ;9DB877|A92001  |;
                       STA.W $0BF7                          ;9DB87A|8DF70B  |;
                       LDA.W #$0140                         ;9DB87D|A94001  |;
                       STA.W $0BF9                          ;9DB880|8DF90B  |;
                       RTS                                  ;9DB883|60      |;
 
          CODE_9DB884:
                       PHX                                  ;9DB884|DA      |;
                       LDX.W $0BE9                          ;9DB885|AEE90B  |;
                       BNE CODE_9DB88F                      ;9DB888|D005    |;
                       PLX                                  ;9DB88A|FA      |;
 
          CODE_9DB88B:
                       DEX                                  ;9DB88B|CA      |;
                       BNE CODE_9DB88B                      ;9DB88C|D0FD    |;
                       PHX                                  ;9DB88E|DA      |;
 
          CODE_9DB88F:
                       PLX                                  ;9DB88F|FA      |;
                       RTS                                  ;9DB890|60      |;
 
          CODE_9DB891:
                       JSL.L CODE_80AF7B                    ;9DB891|227BAF80|;
                       JSL.L CODE_80AFDE                    ;9DB895|22DEAF80|;
                       LDX.W #$0023                         ;9DB899|A22300  |;
                       JSL.L CODE_9DBCEB                    ;9DB89C|22EBBC9D|;
                       RTS                                  ;9DB8A0|60      |;
 
          CODE_9DB8A1:
                       PHX                                  ;9DB8A1|DA      |;
                       PHY                                  ;9DB8A2|5A      |;
                       CMP.W #$0400                         ;9DB8A3|C90004  |;
                       BCS CODE_9DB8C3                      ;9DB8A6|B01B    |;
                       LDX.W #$0E00                         ;9DB8A8|A2000E  |;
                       JSL.L CODE_809099                    ;9DB8AB|22999080|;
                       LDA.B $09                            ;9DB8AF|A509    |;
                       STA.B $08                            ;9DB8B1|8508    |;
                       LDA.W #$0008                         ;9DB8B3|A90800  |;
                       STA.B $04                            ;9DB8B6|8504    |;
                       JSL.L CODE_809197                    ;9DB8B8|22979180|;
                       ASL.B $00                            ;9DB8BC|0600    |;
                       LDA.W #$0F00                         ;9DB8BE|A9000F  |;
                       BRA CODE_9DB8E0                      ;9DB8C1|801D    |;
 
          CODE_9DB8C3:
                       SEC                                  ;9DB8C3|38      |;
                       SBC.W #$0400                         ;9DB8C4|E90004  |;
                       LDX.W #$00C0                         ;9DB8C7|A2C000  |;
                       JSL.L CODE_809099                    ;9DB8CA|22999080|;
                       LDA.B $09                            ;9DB8CE|A509    |;
                       STA.B $08                            ;9DB8D0|8508    |;
                       LDA.W #$0002                         ;9DB8D2|A90200  |;
                       STA.B $04                            ;9DB8D5|8504    |;
                       JSL.L CODE_809197                    ;9DB8D7|22979180|;
                       ASL.B $00                            ;9DB8DB|0600    |;
                       LDA.W #$0100                         ;9DB8DD|A90001  |;
 
          CODE_9DB8E0:
                       SEC                                  ;9DB8E0|38      |;
                       SBC.B $00                            ;9DB8E1|E500    |;
                       PLY                                  ;9DB8E3|7A      |;
                       PLX                                  ;9DB8E4|FA      |;
                       RTS                                  ;9DB8E5|60      |;
 
          CODE_9DB8E6:
                       PHX                                  ;9DB8E6|DA      |;
                       PHY                                  ;9DB8E7|5A      |;
                       CMP.W #$0480                         ;9DB8E8|C98004  |;
                       BCC CODE_9DB90A                      ;9DB8EB|901D    |;
                       SEC                                  ;9DB8ED|38      |;
                       SBC.W #$0480                         ;9DB8EE|E98004  |;
                       TAX                                  ;9DB8F1|AA      |;
                       LDA.W #$00C6                         ;9DB8F2|A9C600  |;
                       JSL.L CODE_808F98                    ;9DB8F5|22988F80|;
                       LDA.W #$0080                         ;9DB8F9|A98000  |;
                       STA.B $04                            ;9DB8FC|8504    |;
                       JSL.L CODE_8092AA                    ;9DB8FE|22AA9280|;
                       LDA.B $00                            ;9DB902|A500    |;
                       CLC                                  ;9DB904|18      |;
                       ADC.W #$0066                         ;9DB905|696600  |;
                       BRA CODE_9DB931                      ;9DB908|8027    |;
 
          CODE_9DB90A:
                       PHA                                  ;9DB90A|48      |;
                       TAX                                  ;9DB90B|AA      |;
                       LDA.W #$000A                         ;9DB90C|A90A00  |;
                       JSL.L CODE_808F98                    ;9DB90F|22988F80|;
                       LDA.W #$0050                         ;9DB913|A95000  |;
                       STA.B $04                            ;9DB916|8504    |;
                       JSL.L CODE_8092AA                    ;9DB918|22AA9280|;
                       LDA.B $00                            ;9DB91C|A500    |;
                       CLC                                  ;9DB91E|18      |;
                       ADC.W #$0001                         ;9DB91F|690100  |;
                       TAX                                  ;9DB922|AA      |;
                       PLA                                  ;9DB923|68      |;
                       PHX                                  ;9DB924|DA      |;
                       JSL.L CODE_80954D                    ;9DB925|224D9580|;
                       TAX                                  ;9DB929|AA      |;
                       PLA                                  ;9DB92A|68      |;
                       JSL.L CODE_808FC9                    ;9DB92B|22C98F80|;
                       LDA.B $09                            ;9DB92F|A509    |;
 
          CODE_9DB931:
                       PLY                                  ;9DB931|7A      |;
                       PLX                                  ;9DB932|FA      |;
                       RTS                                  ;9DB933|60      |;
 
          CODE_9DB934:
                       PHX                                  ;9DB934|DA      |;
                       PHY                                  ;9DB935|5A      |;
                       TAX                                  ;9DB936|AA      |;
                       LDA.W #$0050                         ;9DB937|A95000  |;
                       JSL.L CODE_808FC9                    ;9DB93A|22C98F80|;
                       LDA.B $09                            ;9DB93E|A509    |;
                       STA.B $08                            ;9DB940|8508    |;
                       LDA.W #$0005                         ;9DB942|A90500  |;
                       STA.B $04                            ;9DB945|8504    |;
                       JSL.L CODE_809197                    ;9DB947|22979180|;
                       LDA.W #$01B0                         ;9DB94B|A9B001  |;
                       SEC                                  ;9DB94E|38      |;
                       SBC.B $00                            ;9DB94F|E500    |;
                       PLY                                  ;9DB951|7A      |;
                       PLX                                  ;9DB952|FA      |;
                       RTS                                  ;9DB953|60      |;
 
          CODE_9DB954:
                       LDA.W #$0080                         ;9DB954|A98000  |;
                       STA.B $8F                            ;9DB957|858F    |;
                       LDA.W #$E2E0                         ;9DB959|A9E0E2  |;
                       STA.B $8D                            ;9DB95C|858D    |;
                       LDA.W #$0000                         ;9DB95E|A90000  |;
                       LDX.W #$0080                         ;9DB961|A28000  |;
                       LDY.W #$00B8                         ;9DB964|A0B800  |;
                       JSL.L CODE_9C9415                    ;9DB967|2215949C|;
                       LDA.W #$0080                         ;9DB96B|A98000  |;
                       STA.B $8F                            ;9DB96E|858F    |;
                       LDA.W #$E2F7                         ;9DB970|A9F7E2  |;
                       STA.B $8D                            ;9DB973|858D    |;
                       LDA.W #$0000                         ;9DB975|A90000  |;
                       LDX.W #$0080                         ;9DB978|A28000  |;
                       LDY.W #$00C8                         ;9DB97B|A0C800  |;
                       JSL.L CODE_9C9415                    ;9DB97E|2215949C|;
                       RTS                                  ;9DB982|60      |;
 
          CODE_9DB983:
                       JSL.L CODE_80AF7B                    ;9DB983|227BAF80|;
                       LDA.W #$007F                         ;9DB987|A97F00  |;
                       STA.B $12                            ;9DB98A|8512    |;
                       LDA.W #$5000                         ;9DB98C|A90050  |;
                       STA.B $10                            ;9DB98F|8510    |;
                       LDA.W #$0009                         ;9DB991|A90900  |;
                       JSR.W CODE_9DB754                    ;9DB994|2054B7  |;
                       LDA.W #$000A                         ;9DB997|A90A00  |;
                       JSR.W CODE_9DB754                    ;9DB99A|2054B7  |;
                       LDA.W #$000B                         ;9DB99D|A90B00  |;
                       STA.B $00                            ;9DB9A0|8500    |;
                       LDX.W #$003C                         ;9DB9A2|A23C00  |;
                       LDY.W #$00B0                         ;9DB9A5|A0B000  |;
                       LDA.W #$2800                         ;9DB9A8|A90028  |;
                       JSL.L CODE_80B08D                    ;9DB9AB|228DB080|;
                       JSL.L CODE_80AFDE                    ;9DB9AF|22DEAF80|;
                       RTS                                  ;9DB9B3|60      |;
 
          CODE_9DB9B4:
                       JSL.L CODE_80AF7B                    ;9DB9B4|227BAF80|;
                       LDA.W #$007F                         ;9DB9B8|A97F00  |;
                       STA.B $12                            ;9DB9BB|8512    |;
                       LDA.W #$5000                         ;9DB9BD|A90050  |;
                       STA.B $10                            ;9DB9C0|8510    |;
                       LDA.W #$0009                         ;9DB9C2|A90900  |;
                       JSR.W CODE_9DB754                    ;9DB9C5|2054B7  |;
                       LDA.W #$000A                         ;9DB9C8|A90A00  |;
                       JSR.W CODE_9DB754                    ;9DB9CB|2054B7  |;
                       LDA.W #$000B                         ;9DB9CE|A90B00  |;
                       STA.B $00                            ;9DB9D1|8500    |;
                       LDX.W #$003C                         ;9DB9D3|A23C00  |;
                       LDY.W #$00A0                         ;9DB9D6|A0A000  |;
                       LDA.W #$2800                         ;9DB9D9|A90028  |;
                       JSL.L CODE_80B08D                    ;9DB9DC|228DB080|;
                       LDA.W #$000C                         ;9DB9E0|A90C00  |;
                       STA.B $00                            ;9DB9E3|8500    |;
                       LDX.W #$003C                         ;9DB9E5|A23C00  |;
                       LDY.W #$00D0                         ;9DB9E8|A0D000  |;
                       LDA.W #$2800                         ;9DB9EB|A90028  |;
                       JSL.L CODE_80B08D                    ;9DB9EE|228DB080|;
                       JSL.L CODE_80AFDE                    ;9DB9F2|22DEAF80|;
                       RTS                                  ;9DB9F6|60      |;
 
          CODE_9DB9F7:
                       STZ.W $0BDD                          ;9DB9F7|9CDD0B  |;
                       STZ.W $0BE1                          ;9DB9FA|9CE10B  |;
                       LDA.W #$0000                         ;9DB9FD|A90000  |;
                       STA.W $0BD9                          ;9DBA00|8DD90B  |;
                       LDA.W #$00E0                         ;9DBA03|A9E000  |;
                       STA.W $0BDF                          ;9DBA06|8DDF0B  |;
                       LDA.W #$00F0                         ;9DBA09|A9F000  |;
                       STA.W $0BE3                          ;9DBA0C|8DE30B  |;
                       STZ.W $0BDB                          ;9DBA0F|9CDB0B  |;
                       RTS                                  ;9DBA12|60      |;
 
          CODE_9DBA13:
                       LDA.W $0764                          ;9DBA13|AD6407  |;
                       CMP.W $0BDB                          ;9DBA16|CDDB0B  |;
                       BCC CODE_9DBA23                      ;9DBA19|9008    |;
                       LDA.W $0BD9                          ;9DBA1B|ADD90B  |;
                       CMP.W #$0003                         ;9DBA1E|C90300  |;
                       BNE CODE_9DBA24                      ;9DBA21|D001    |;
 
          CODE_9DBA23:
                       RTS                                  ;9DBA23|60      |;
 
          CODE_9DBA24:
                       CMP.W #$0000                         ;9DBA24|C90000  |;
                       BNE CODE_9DBA44                      ;9DBA27|D01B    |;
                       LDA.W $0BDF                          ;9DBA29|ADDF0B  |;
                       DEC A                                ;9DBA2C|3A      |;
                       DEC A                                ;9DBA2D|3A      |;
                       CMP.W #$00B9                         ;9DBA2E|C9B900  |;
                       BMI CODE_9DBA53                      ;9DBA31|3020    |;
                       DEC.W $0BDF                          ;9DBA33|CEDF0B  |;
                       DEC.W $0BDF                          ;9DBA36|CEDF0B  |;
 
          CODE_9DBA39:
                       DEC.W $0BE3                          ;9DBA39|CEE30B  |;
                       DEC.W $0BE3                          ;9DBA3C|CEE30B  |;
                       LDA.W #$0002                         ;9DBA3F|A90200  |;
                       BRA CODE_9DBABA                      ;9DBA42|8076    |;
 
          CODE_9DBA44:
                       CMP.W #$0001                         ;9DBA44|C90100  |;
                       BNE CODE_9DBA5E                      ;9DBA47|D015    |;
                       LDA.W $0BE3                          ;9DBA49|ADE30B  |;
                       DEC A                                ;9DBA4C|3A      |;
                       DEC A                                ;9DBA4D|3A      |;
                       CMP.W #$00C9                         ;9DBA4E|C9C900  |;
                       BPL CODE_9DBA39                      ;9DBA51|10E6    |;
 
          CODE_9DBA53:
                       LDA.W #$0002                         ;9DBA53|A90200  |;
                       STA.W $0BD9                          ;9DBA56|8DD90B  |;
                       LDA.W #$0046                         ;9DBA59|A94600  |;
                       BRA CODE_9DBABA                      ;9DBA5C|805C    |;
 
          CODE_9DBA5E:
                       INC.W $0BE1                          ;9DBA5E|EEE10B  |;
                       LDA.W $0BE1                          ;9DBA61|ADE10B  |;
                       ASL A                                ;9DBA64|0A      |;
                       TAX                                  ;9DBA65|AA      |;
                       LDA.L UNREACH_80E44D,X               ;9DBA66|BF4DE480|;
                       BNE CODE_9DBAAB                      ;9DBA6A|D03F    |;
                       INC.W $0BDD                          ;9DBA6C|EEDD0B  |;
                       LDA.W $0BDD                          ;9DBA6F|ADDD0B  |;
                       ASL A                                ;9DBA72|0A      |;
                       TAX                                  ;9DBA73|AA      |;
                       LDA.L DATA8_80E30C,X                 ;9DBA74|BF0CE380|;
                       BEQ UNREACH_9DBA94                   ;9DBA78|F01A    |;
                       INC.W $0BE1                          ;9DBA7A|EEE10B  |;
                       LDA.W #$00E0                         ;9DBA7D|A9E000  |;
                       STA.W $0BDF                          ;9DBA80|8DDF0B  |;
                       LDA.W #$00F0                         ;9DBA83|A9F000  |;
                       STA.W $0BE3                          ;9DBA86|8DE30B  |;
                       LDA.W #$0000                         ;9DBA89|A90000  |;
                       STA.W $0BD9                          ;9DBA8C|8DD90B  |;
                       LDA.W #$000F                         ;9DBA8F|A90F00  |;
                       BRA CODE_9DBABA                      ;9DBA92|8026    |;
 
       UNREACH_9DBA94:
                       db $A9,$03,$00,$8D,$D9,$0B,$A9,$E0   ;9DBA94|        |;
                       db $00,$8D,$DF,$0B,$A9,$F0,$00,$8D   ;9DBA9C|        |;
                       db $E3,$0B,$A9,$2D,$00,$80,$0F       ;9DBAA4|        |;
 
          CODE_9DBAAB:
                       LDA.W #$0001                         ;9DBAAB|A90100  |;
                       STA.W $0BD9                          ;9DBAAE|8DD90B  |;
                       LDA.W #$00E0                         ;9DBAB1|A9E000  |;
                       STA.W $0BE3                          ;9DBAB4|8DE30B  |;
                       LDA.W #$000F                         ;9DBAB7|A90F00  |;
 
          CODE_9DBABA:
                       CLC                                  ;9DBABA|18      |;
                       ADC.W $0764                          ;9DBABB|6D6407  |;
                       STA.W $0BDB                          ;9DBABE|8DDB0B  |;
                       JSL.L CODE_80AF7B                    ;9DBAC1|227BAF80|;
                       LDA.W #$007F                         ;9DBAC5|A97F00  |;
                       STA.B $12                            ;9DBAC8|8512    |;
                       LDA.W #$5000                         ;9DBACA|A90050  |;
                       STA.B $10                            ;9DBACD|8510    |;
                       LDA.W #$0009                         ;9DBACF|A90900  |;
                       JSR.W CODE_9DB754                    ;9DBAD2|2054B7  |;
                       LDA.W #$000A                         ;9DBAD5|A90A00  |;
                       JSR.W CODE_9DB754                    ;9DBAD8|2054B7  |;
                       LDA.W $0BDD                          ;9DBADB|ADDD0B  |;
                       ASL A                                ;9DBADE|0A      |;
                       TAX                                  ;9DBADF|AA      |;
                       LDA.L DATA8_80E30C,X                 ;9DBAE0|BF0CE380|;
                       STA.B $8D                            ;9DBAE4|858D    |;
                       LDA.W #$0080                         ;9DBAE6|A98000  |;
                       STA.B $8F                            ;9DBAE9|858F    |;
                       LDX.W #$0080                         ;9DBAEB|A28000  |;
                       LDY.W $0BDF                          ;9DBAEE|ACDF0B  |;
                       JSL.L CODE_9C9415                    ;9DBAF1|2215949C|;
                       LDA.W $0BE1                          ;9DBAF5|ADE10B  |;
                       ASL A                                ;9DBAF8|0A      |;
                       TAX                                  ;9DBAF9|AA      |;
                       LDA.L UNREACH_80E44D,X               ;9DBAFA|BF4DE480|;
                       STA.B $8D                            ;9DBAFE|858D    |;
                       LDA.W #$0080                         ;9DBB00|A98000  |;
                       STA.B $8F                            ;9DBB03|858F    |;
                       LDX.W #$0080                         ;9DBB05|A28000  |;
                       LDY.W $0BE3                          ;9DBB08|ACE30B  |;
                       JSL.L CODE_9C9415                    ;9DBB0B|2215949C|;
                       JSL.L CODE_80AFDE                    ;9DBB0F|22DEAF80|;
                       RTS                                  ;9DBB13|60      |;
 
          CODE_9DBB14:
                       PHA                                  ;9DBB14|48      |;
                       LDA.W #$007F                         ;9DBB15|A97F00  |;
                       STA.B $0E                            ;9DBB18|850E    |;
                       LDA.W #$4000                         ;9DBB1A|A90040  |;
                       STA.B $0C                            ;9DBB1D|850C    |;
                       LDA.W #$0000                         ;9DBB1F|A90000  |;
                       STA.W $079C                          ;9DBB22|8D9C07  |;
                       LDX.W #$003C                         ;9DBB25|A23C00  |;
                       LDY.W #$003C                         ;9DBB28|A03C00  |;
                       JSL.L CODE_808D43                    ;9DBB2B|22438D80|;
                       PLA                                  ;9DBB2F|68      |;
                       ASL A                                ;9DBB30|0A      |;
                       ASL A                                ;9DBB31|0A      |;
                       ASL A                                ;9DBB32|0A      |;
                       TAX                                  ;9DBB33|AA      |;
                       PHX                                  ;9DBB34|DA      |;
                       LDA.L UNREACH_9C83BB,X               ;9DBB35|BFBB839C|;
                       STA.B $0C                            ;9DBB39|850C    |;
                       LDA.L UNREACH_9C83BD,X               ;9DBB3B|BFBD839C|;
                       STA.B $0E                            ;9DBB3F|850E    |;
                       JSR.W CODE_9DBC25                    ;9DBB41|2025BC  |;
                       TXA                                  ;9DBB44|8A      |;
                       LSR A                                ;9DBB45|4A      |;
                       EOR.W #$FFFF                         ;9DBB46|49FFFF  |;
                       INC A                                ;9DBB49|1A      |;
                       CLC                                  ;9DBB4A|18      |;
                       ADC.W #$0042                         ;9DBB4B|694200  |;
                       TAX                                  ;9DBB4E|AA      |;
                       TYA                                  ;9DBB4F|98      |;
                       LSR A                                ;9DBB50|4A      |;
                       EOR.W #$FFFF                         ;9DBB51|49FFFF  |;
                       INC A                                ;9DBB54|1A      |;
                       CLC                                  ;9DBB55|18      |;
                       ADC.W #$0040                         ;9DBB56|694000  |;
                       TAY                                  ;9DBB59|A8      |;
                       LDA.W #$007F                         ;9DBB5A|A97F00  |;
                       STA.B $0E                            ;9DBB5D|850E    |;
                       LDA.W #$A000                         ;9DBB5F|A900A0  |;
                       STA.B $0C                            ;9DBB62|850C    |;
                       LDA.W #$0000                         ;9DBB64|A90000  |;
                       STA.W $079C                          ;9DBB67|8D9C07  |;
                       JSL.L CODE_808D43                    ;9DBB6A|22438D80|;
                       PLX                                  ;9DBB6E|FA      |;
                       LDA.L UNREACH_9C83B7,X               ;9DBB6F|BFB7839C|;
                       STA.B $0C                            ;9DBB73|850C    |;
                       LDA.L UNREACH_9C83B9,X               ;9DBB75|BFB9839C|;
                       STA.B $0E                            ;9DBB79|850E    |;
                       LDA.W #$007F                         ;9DBB7B|A97F00  |;
                       STA.B $12                            ;9DBB7E|8512    |;
                       LDA.W #$0000                         ;9DBB80|A90000  |;
                       STA.B $10                            ;9DBB83|8510    |;
                       JSL.L CODE_80C373                    ;9DBB85|2273C380|;
                       LDA.W #$007F                         ;9DBB89|A97F00  |;
                       STA.B $0E                            ;9DBB8C|850E    |;
                       LDA.W #$0000                         ;9DBB8E|A90000  |;
                       STA.B $0C                            ;9DBB91|850C    |;
                       JSR.W CODE_9DBBA8                    ;9DBB93|20A8BB  |;
                       LDA.W #$007F                         ;9DBB96|A97F00  |;
                       STA.B $0E                            ;9DBB99|850E    |;
                       LDA.W #$A000                         ;9DBB9B|A900A0  |;
                       STA.B $0C                            ;9DBB9E|850C    |;
                       LDY.W #$0000                         ;9DBBA0|A00000  |;
                       JSL.L CODE_80899B                    ;9DBBA3|229B8980|;
                       RTS                                  ;9DBBA7|60      |;
 
          CODE_9DBBA8:
                       PHX                                  ;9DBBA8|DA      |;
                       TXA                                  ;9DBBA9|8A      |;
                       LSR A                                ;9DBBAA|4A      |;
                       LSR A                                ;9DBBAB|4A      |;
                       LSR A                                ;9DBBAC|4A      |;
                       LSR A                                ;9DBBAD|4A      |;
                       LSR A                                ;9DBBAE|4A      |;
                       INC A                                ;9DBBAF|1A      |;
                       TAX                                  ;9DBBB0|AA      |;
                       PHX                                  ;9DBBB1|DA      |;
                       LDX.W #$0000                         ;9DBBB2|A20000  |;
                       LDA.W #$0000                         ;9DBBB5|A90000  |;
 
          CODE_9DBBB8:
                       STA.L $7FA000,X                      ;9DBBB8|9F00A07F|;
                       INX                                  ;9DBBBC|E8      |;
                       INX                                  ;9DBBBD|E8      |;
                       CPX.W #$0040                         ;9DBBBE|E04000  |;
                       BCC CODE_9DBBB8                      ;9DBBC1|90F5    |;
                       PLX                                  ;9DBBC3|FA      |;
                       STZ.W $0BE5                          ;9DBBC4|9CE50B  |;
                       LDA.W #$0040                         ;9DBBC7|A94000  |;
                       STA.W $0BE7                          ;9DBBCA|8DE70B  |;
 
          CODE_9DBBCD:
                       PHX                                  ;9DBBCD|DA      |;
                       JSR.W CODE_9DBBF1                    ;9DBBCE|20F1BB  |;
                       LDA.W $0BE5                          ;9DBBD1|ADE50B  |;
                       CLC                                  ;9DBBD4|18      |;
                       ADC.W #$0020                         ;9DBBD5|692000  |;
                       STA.W $0BE5                          ;9DBBD8|8DE50B  |;
                       LDA.W $0BE7                          ;9DBBDB|ADE70B  |;
                       CLC                                  ;9DBBDE|18      |;
                       ADC.W #$0040                         ;9DBBDF|694000  |;
                       STA.W $0BE7                          ;9DBBE2|8DE70B  |;
                       PLX                                  ;9DBBE5|FA      |;
                       DEX                                  ;9DBBE6|CA      |;
                       BNE CODE_9DBBCD                      ;9DBBE7|D0E4    |;
                       PLA                                  ;9DBBE9|68      |;
                       ASL A                                ;9DBBEA|0A      |;
                       CLC                                  ;9DBBEB|18      |;
                       ADC.W #$0040                         ;9DBBEC|694000  |;
                       TAX                                  ;9DBBEF|AA      |;
                       RTS                                  ;9DBBF0|60      |;
 
          CODE_9DBBF1:
                       STZ.B $A7                            ;9DBBF1|64A7    |;
                       LDX.W $0BE7                          ;9DBBF3|AEE70B  |;
                       LDY.W $0BE5                          ;9DBBF6|ACE50B  |;
                       SEP #$20                             ;9DBBF9|E220    |;
 
          CODE_9DBBFB:
                       LDA.B [$0C],Y                        ;9DBBFB|B70C    |;
                       STA.B $A5                            ;9DBBFD|85A5    |;
                       AND.B #$0F                           ;9DBBFF|290F    |;
                       ORA.W $0BED                          ;9DBC01|0DED0B  |;
                       STA.L $7FA001,X                      ;9DBC04|9F01A07F|;
                       LDA.B $A5                            ;9DBC08|A5A5    |;
                       LSR A                                ;9DBC0A|4A      |;
                       LSR A                                ;9DBC0B|4A      |;
                       LSR A                                ;9DBC0C|4A      |;
                       LSR A                                ;9DBC0D|4A      |;
                       AND.B #$0F                           ;9DBC0E|290F    |;
                       ORA.W $0BED                          ;9DBC10|0DED0B  |;
                       STA.L $7FA000,X                      ;9DBC13|9F00A07F|;
                       INX                                  ;9DBC17|E8      |;
                       INX                                  ;9DBC18|E8      |;
                       INY                                  ;9DBC19|C8      |;
                       INC.B $A7                            ;9DBC1A|E6A7    |;
                       LDA.B $A7                            ;9DBC1C|A5A7    |;
                       CMP.B #$20                           ;9DBC1E|C920    |;
                       BCC CODE_9DBBFB                      ;9DBC20|90D9    |;
                       REP #$20                             ;9DBC22|C220    |;
                       RTS                                  ;9DBC24|60      |;
 
          CODE_9DBC25:
                       LDA.W #$0060                         ;9DBC25|A96000  |;
                       STA.W $0BED                          ;9DBC28|8DED0B  |;
                       LDX.W #$0000                         ;9DBC2B|A20000  |;
                       LDY.W #$0000                         ;9DBC2E|A00000  |;
                       LDA.B [$0C],Y                        ;9DBC31|B70C    |;
                       STA.B $A5                            ;9DBC33|85A5    |;
                       STA.L $7FA000,X                      ;9DBC35|9F00A07F|;
                       LDX.W #$0002                         ;9DBC39|A20200  |;
                       LDY.W #$0002                         ;9DBC3C|A00200  |;
                       LDA.B [$0C],Y                        ;9DBC3F|B70C    |;
                       STA.B $A7                            ;9DBC41|85A7    |;
                       STA.L $7FA000,X                      ;9DBC43|9F00A07F|;
                       LDX.W #$0004                         ;9DBC47|A20400  |;
                       LDA.W #$0010                         ;9DBC4A|A91000  |;
                       STA.L $7FA000,X                      ;9DBC4D|9F00A07F|;
                       LDA.B $A5                            ;9DBC51|A5A5    |;
                       LDX.B $A7                            ;9DBC53|A6A7    |;
                       JSL.L CODE_808F4C                    ;9DBC55|224C8F80|;
                       CLC                                  ;9DBC59|18      |;
                       ADC.W #$0006                         ;9DBC5A|690600  |;
                       STA.B $A9                            ;9DBC5D|85A9    |;
                       LDX.W #$0006                         ;9DBC5F|A20600  |;
                       LDY.W #$0006                         ;9DBC62|A00600  |;
                       SEP #$20                             ;9DBC65|E220    |;
 
          CODE_9DBC67:
                       LDA.B [$0C],Y                        ;9DBC67|B70C    |;
                       INC A                                ;9DBC69|1A      |;
                       STA.L $7FA000,X                      ;9DBC6A|9F00A07F|;
                       INY                                  ;9DBC6E|C8      |;
                       CMP.B #$00                           ;9DBC6F|C900    |;
                       BEQ CODE_9DBC7E                      ;9DBC71|F00B    |;
                       LDA.B [$0C],Y                        ;9DBC73|B70C    |;
                       BIT.B #$1C                           ;9DBC75|891C    |;
                       BEQ CODE_9DBC7E                      ;9DBC77|F005    |;
                       LDA.B #$70                           ;9DBC79|A970    |;
                       STA.W $0BED                          ;9DBC7B|8DED0B  |;
 
          CODE_9DBC7E:
                       INY                                  ;9DBC7E|C8      |;
                       INX                                  ;9DBC7F|E8      |;
                       CPX.B $A9                            ;9DBC80|E4A9    |;
                       BCC CODE_9DBC67                      ;9DBC82|90E3    |;
                       REP #$20                             ;9DBC84|C220    |;
                       LDX.B $A5                            ;9DBC86|A6A5    |;
                       LDY.B $A7                            ;9DBC88|A4A7    |;
                       RTS                                  ;9DBC8A|60      |;
 
          CODE_9DBC8B:
                       LDX.W #$0000                         ;9DBC8B|A20000  |;
                       LDY.W #$0000                         ;9DBC8E|A00000  |;
 
          CODE_9DBC91:
                       TYA                                  ;9DBC91|98      |;
                       JSR.W CODE_9DB8A1                    ;9DBC92|20A1B8  |;
                       STA.L $7F8000,X                      ;9DBC95|9F00807F|;
                       TYA                                  ;9DBC99|98      |;
                       JSR.W CODE_9DB8E6                    ;9DBC9A|20E6B8  |;
                       STA.L $7F8A00,X                      ;9DBC9D|9F008A7F|;
                       TYA                                  ;9DBCA1|98      |;
                       JSR.W CODE_9DB934                    ;9DBCA2|2034B9  |;
                       STA.L $7F9400,X                      ;9DBCA5|9F00947F|;
                       INX                                  ;9DBCA9|E8      |;
                       INX                                  ;9DBCAA|E8      |;
                       INY                                  ;9DBCAB|C8      |;
                       CPY.W #$0500                         ;9DBCAC|C00005  |;
                       BCC CODE_9DBC91                      ;9DBCAF|90E0    |;
                       RTS                                  ;9DBCB1|60      |;
 
          CODE_9DBCB2:
                       RTS                                  ;9DBCB2|60      |;
 
          CODE_9DBCB3:
                       LDA.W $07D6                          ;9DBCB3|ADD607  |;
 
          CODE_9DBCB6:
                       DEC A                                ;9DBCB6|3A      |;
                       BMI CODE_9DBCDE                      ;9DBCB7|3025    |;
                       STA.W $07D6                          ;9DBCB9|8DD607  |;
                       TAY                                  ;9DBCBC|A8      |;
                       EOR.W #$FFFF                         ;9DBCBD|49FFFF  |;
                       INC A                                ;9DBCC0|1A      |;
                       AND.W #$00FF                         ;9DBCC1|29FF00  |;
                       BEQ CODE_9DBCD5                      ;9DBCC4|F00F    |;
                       STA.W $0BCB                          ;9DBCC6|8DCB0B  |;
                       SEC                                  ;9DBCC9|38      |;
                       SBC.W #$0020                         ;9DBCCA|E92000  |;
                       BMI CODE_9DBCD5                      ;9DBCCD|3006    |;
                       AND.W #$00FF                         ;9DBCCF|29FF00  |;
                       STA.W $0BCF                          ;9DBCD2|8DCF0B  |;
 
          CODE_9DBCD5:
                       TYA                                  ;9DBCD5|98      |;
                       LDX.W #$0200                         ;9DBCD6|A20002  |;
                       JSR.W CODE_9DB884                    ;9DBCD9|2084B8  |;
                       BRA CODE_9DBCB6                      ;9DBCDC|80D8    |;
 
          CODE_9DBCDE:
                       STZ.W $07D6                          ;9DBCDE|9CD607  |;
                       LDA.W #$00FF                         ;9DBCE1|A9FF00  |;
                       STA.W $0BCB                          ;9DBCE4|8DCB0B  |;
                       STA.W $0BCF                          ;9DBCE7|8DCF0B  |;
                       RTS                                  ;9DBCEA|60      |;
 
          CODE_9DBCEB:
                       LDY.W $0BE9                          ;9DBCEB|ACE90B  |;
                       BNE CODE_9DBCF7                      ;9DBCEE|D007    |;
                       LDY.W #$0000                         ;9DBCF0|A00000  |;
                       JSL.L CODE_80858E                    ;9DBCF3|228E8580|;
 
          CODE_9DBCF7:
                       RTL                                  ;9DBCF7|6B      |;
 
          CODE_9DBCF8:
                       STZ.W $0BD5                          ;9DBCF8|9CD50B  |;
                       LDX.W #$0000                         ;9DBCFB|A20000  |;
                       LDA.W #$0000                         ;9DBCFE|A90000  |;
 
          CODE_9DBD01:
                       JSL.L CODE_808658                    ;9DBD01|22588680|;
                       AND.W #$001F                         ;9DBD05|291F00  |;
                       CMP.W #$001A                         ;9DBD08|C91A00  |;
                       BCS CODE_9DBD01                      ;9DBD0B|B0F4    |;
                       PHX                                  ;9DBD0D|DA      |;
                       LDX.W #$0000                         ;9DBD0E|A20000  |;
 
          CODE_9DBD11:
                       CPX.W $0BD5                          ;9DBD11|ECD50B  |;
                       BCS CODE_9DBD23                      ;9DBD14|B00D    |;
                       CMP.L $7EF000,X                      ;9DBD16|DF00F07E|;
                       BEQ CODE_9DBD20                      ;9DBD1A|F004    |;
                       INX                                  ;9DBD1C|E8      |;
                       INX                                  ;9DBD1D|E8      |;
                       BRA CODE_9DBD11                      ;9DBD1E|80F1    |;
 
          CODE_9DBD20:
                       PLX                                  ;9DBD20|FA      |;
                       BRA CODE_9DBD01                      ;9DBD21|80DE    |;
 
          CODE_9DBD23:
                       PLX                                  ;9DBD23|FA      |;
                       STA.L $7EF000,X                      ;9DBD24|9F00F07E|;
                       INX                                  ;9DBD28|E8      |;
                       INX                                  ;9DBD29|E8      |;
                       STX.W $0BD5                          ;9DBD2A|8ED50B  |;
                       CPX.W #$0034                         ;9DBD2D|E03400  |;
                       BCC CODE_9DBD01                      ;9DBD30|90CF    |;
                       STZ.W $0BD5                          ;9DBD32|9CD50B  |;
                       RTS                                  ;9DBD35|60      |;
 
          CODE_9DBD36:
                       LDA.W $0BD5                          ;9DBD36|ADD50B  |;
                       INC A                                ;9DBD39|1A      |;
                       CMP.W #$001A                         ;9DBD3A|C91A00  |;
                       BCC CODE_9DBD45                      ;9DBD3D|9006    |;
                       JSR.W CODE_9DBCF8                    ;9DBD3F|20F8BC  |;
                       LDA.W #$0000                         ;9DBD42|A90000  |;
 
          CODE_9DBD45:
                       STA.W $0BD5                          ;9DBD45|8DD50B  |;
                       ASL A                                ;9DBD48|0A      |;
                       TAX                                  ;9DBD49|AA      |;
                       LDA.L $7EF000,X                      ;9DBD4A|BF00F07E|;
                       RTS                                  ;9DBD4E|60      |;
 
          CODE_9DBD4F:
                       JSL.L CODE_9DE0E9                    ;9DBD4F|22E9E09D|;
                       LDA.B zpCurntTeamLoopVal             ;9DBD53|A591    |;
                       PHA                                  ;9DBD55|48      |;
                       STZ.W $07C6                          ;9DBD56|9CC607  |;
                       JSL.L CODE_9DC697                    ;9DBD59|2297C69D|;
                       PLA                                  ;9DBD5D|68      |;
                       STA.B zpCurntTeamLoopVal             ;9DBD5E|8591    |;
                       LDA.B zpCurntTeamLoopVal             ;9DBD60|A591    |;
                       PHA                                  ;9DBD62|48      |;
                       STZ.W $1DB9                          ;9DBD63|9CB91D  |;
                       JSL.L CODE_9FC93D                    ;9DBD66|223DC99F|;
                       LDA.B $A5                            ;9DBD6A|A5A5    |;
                       CLC                                  ;9DBD6C|18      |;
                       ADC.W #$0006                         ;9DBD6D|690600  |;
                       STA.W $1DC1                          ;9DBD70|8DC11D  |;
                       JSL.L CODE_8086BD                    ;9DBD73|22BD8680|;
                       JSL.L CODE_9DBE79                    ;9DBD77|2279BE9D|;
 
          CODE_9DBD7B:
                       JSL.L CODE_9DD923                    ;9DBD7B|2223D99D|;
 
          CODE_9DBD7F:
                       JSL.L CODE_808583                    ;9DBD7F|22838580|;
                       JSL.L CODE_9B8017                    ;9DBD83|2217809B|;
                       JSL.L CODE_9B851F                    ;9DBD87|221F859B|;
                       JSL.L CODE_9B852C                    ;9DBD8B|222C859B|;
                       LDA.B $A9                            ;9DBD8F|A5A9    |;
                       BIT.W #$1000                         ;9DBD91|890010  |;
                       BNE CODE_9DBDAA                      ;9DBD94|D014    |;
                       BIT.W #$0100                         ;9DBD96|890001  |;
                       BNE CODE_9DBE06                      ;9DBD99|D06B    |;
                       BIT.W #$0200                         ;9DBD9B|890002  |;
                       BNE UNREACH_9DBDAE                   ;9DBD9E|D00E    |;
                       BIT.W #$4000                         ;9DBDA0|890040  |;
                       BEQ CODE_9DBDA8                      ;9DBDA3|F003    |;
                       JMP.W CODE_9DBE5B                    ;9DBDA5|4C5BBE  |;
 
          CODE_9DBDA8:
                       BRA CODE_9DBD7F                      ;9DBDA8|80D5    |;
 
          CODE_9DBDAA:
                       PLA                                  ;9DBDAA|68      |;
                       STA.B zpCurntTeamLoopVal             ;9DBDAB|8591    |;
                       RTL                                  ;9DBDAD|6B      |;
 
       UNREACH_9DBDAE:
                       db $AD,$B9,$1D,$F0,$F5,$CE,$B9,$1D   ;9DBDAE|        |;
                       db $AD,$B9,$1D,$38,$E9,$07,$00,$30   ;9DBDB6|        |;
                       db $40,$1A,$1A,$8D,$9B,$1D,$A4,$91   ;9DBDBE|        |;
                       db $A9,$9C,$00,$85,$97,$B9,$DC,$1C   ;9DBDC6|        |;
                       db $85,$95,$A0,$0C,$00,$18,$77,$95   ;9DBDCE|        |;
                       db $85,$95,$CE,$9B,$1D,$F0,$15,$30   ;9DBDD6|        |;
                       db $13,$A0,$00,$00,$B7,$95,$29,$FF   ;9DBDDE|        |;
                       db $00,$CD,$9B,$1D,$F0,$EC,$C8,$C0   ;9DBDE6|        |;
                       db $06,$00,$30,$F0,$CE,$9B,$1D,$AD   ;9DBDEE|        |;
                       db $9B,$1D,$18,$69,$07,$00,$8D,$B9   ;9DBDF6|        |;
                       db $1D,$22,$79,$BE,$9D,$4C,$7B,$BD   ;9DBDFE|        |;
 
          CODE_9DBE06:
                       LDA.W $1DB9                          ;9DBE06|ADB91D  |;
                       CMP.W $1DC1                          ;9DBE09|CDC11D  |;
                       BPL CODE_9DBDA8                      ;9DBE0C|109A    |;
                       INC.W $1DB9                          ;9DBE0E|EEB91D  |;
                       LDA.W $1DB9                          ;9DBE11|ADB91D  |;
                       SEC                                  ;9DBE14|38      |;
                       SBC.W #$0007                         ;9DBE15|E90700  |;
                       BMI CODE_9DBE54                      ;9DBE18|303A    |;
                       STA.W $1D9B                          ;9DBE1A|8D9B1D  |;
                       LDY.B zpCurntTeamLoopVal             ;9DBE1D|A491    |;
                       LDA.W #$009C                         ;9DBE1F|A99C00  |;
                       STA.B $97                            ;9DBE22|8597    |;
                       LDA.W $1CDC,Y                        ;9DBE24|B9DC1C  |;
                       STA.B $95                            ;9DBE27|8595    |;
                       LDY.W #$000C                         ;9DBE29|A00C00  |;
                       CLC                                  ;9DBE2C|18      |;
                       ADC.B [$95],Y                        ;9DBE2D|7795    |;
                       STA.B $95                            ;9DBE2F|8595    |;
 
          CODE_9DBE31:
                       INC.W $1D9B                          ;9DBE31|EE9B1D  |;
                       LDY.W #$0000                         ;9DBE34|A00000  |;
 
          CODE_9DBE37:
                       LDA.B [$95],Y                        ;9DBE37|B795    |;
                       AND.W #$00FF                         ;9DBE39|29FF00  |;
                       CMP.W $1D9B                          ;9DBE3C|CD9B1D  |;
                       BEQ CODE_9DBE31                      ;9DBE3F|F0F0    |;
                       INY                                  ;9DBE41|C8      |;
                       CPY.W #$0006                         ;9DBE42|C00600  |;
                       BMI CODE_9DBE37                      ;9DBE45|30F0    |;
                       DEC.W $1D9B                          ;9DBE47|CE9B1D  |;
                       LDA.W $1D9B                          ;9DBE4A|AD9B1D  |;
                       CLC                                  ;9DBE4D|18      |;
                       ADC.W #$0007                         ;9DBE4E|690700  |;
                       STA.W $1DB9                          ;9DBE51|8DB91D  |;
 
          CODE_9DBE54:
                       JSL.L CODE_9DBE79                    ;9DBE54|2279BE9D|;
                       JMP.W CODE_9DBD7B                    ;9DBE58|4C7BBD  |;
 
          CODE_9DBE5B:
                       LDA.B zpCurntTeamLoopVal             ;9DBE5B|A591    |;
                       EOR.W #$0002                         ;9DBE5D|490200  |;
                       STA.B zpCurntTeamLoopVal             ;9DBE60|8591    |;
                       STZ.W $1DB9                          ;9DBE62|9CB91D  |;
                       JSL.L CODE_9FC93D                    ;9DBE65|223DC99F|;
                       LDA.B $A5                            ;9DBE69|A5A5    |;
                       CLC                                  ;9DBE6B|18      |;
                       ADC.W #$0006                         ;9DBE6C|690600  |;
                       STA.W $1DC1                          ;9DBE6F|8DC11D  |;
                       JSL.L CODE_9DBE79                    ;9DBE72|2279BE9D|;
                       JMP.W CODE_9DBD7B                    ;9DBE76|4C7BBD  |;
 
          CODE_9DBE79:
                       JSL.L CODE_80AF7B                    ;9DBE79|227BAF80|;
                       LDA.B $8F                            ;9DBE7D|A58F    |;
                       PHA                                  ;9DBE7F|48      |;
                       LDA.B $8D                            ;9DBE80|A58D    |;
                       PHA                                  ;9DBE82|48      |;
                       LDA.W #$009C                         ;9DBE83|A99C00  |;
                       STA.B $8F                            ;9DBE86|858F    |;
                       LDA.W #$F6B3                         ;9DBE88|A9B3F6  |;
                       STA.B $8D                            ;9DBE8B|858D    |;
                       JSL.L CODE_9EC7BE                    ;9DBE8D|22BEC79E|;
                       PLA                                  ;9DBE91|68      |;
                       STA.B $8D                            ;9DBE92|858D    |;
                       PLA                                  ;9DBE94|68      |;
                       STA.B $8F                            ;9DBE95|858F    |;
                       LDA.W #$0020                         ;9DBE97|A92000  |;
                       STA.B $A5                            ;9DBE9A|85A5    |;
                       LDA.W #$0014                         ;9DBE9C|A91400  |;
                       STA.B $A9                            ;9DBE9F|85A9    |;
                       LDA.L $7E35D0                        ;9DBEA1|AFD0357E|;
                       STA.B $AD                            ;9DBEA5|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9DBEA7|229CBD9F|;
                       LDY.B zpCurntTeamLoopVal             ;9DBEAB|A491    |;
                       LDA.W $1C98,Y                        ;9DBEAD|B9981C  |;
                       LDX.W #$00C8                         ;9DBEB0|A2C800  |;
                       LDY.W #$0010                         ;9DBEB3|A01000  |;
                       JSL.L CODE_9DDFBF                    ;9DBEB6|22BFDF9D|;
                       LDY.B zpCurntTeamLoopVal             ;9DBEBA|A491    |;
                       LDA.W #$009C                         ;9DBEBC|A99C00  |;
                       STA.B $97                            ;9DBEBF|8597    |;
                       LDA.W $1CDC,Y                        ;9DBEC1|B9DC1C  |;
                       STA.B $95                            ;9DBEC4|8595    |;
                       LDY.W #$000C                         ;9DBEC6|A00C00  |;
                       CLC                                  ;9DBEC9|18      |;
                       ADC.B [$95],Y                        ;9DBECA|7795    |;
                       STA.B $95                            ;9DBECC|8595    |;
                       LDY.W $1DB9                          ;9DBECE|ACB91D  |;
                       BNE CODE_9DBED6                      ;9DBED1|D003    |;
                       JMP.W CODE_9DC0EE                    ;9DBED3|4CEEC0  |;
 
          CODE_9DBED6:
                       LDA.W $1DB9                          ;9DBED6|ADB91D  |;
                       SEC                                  ;9DBED9|38      |;
                       SBC.W #$0007                         ;9DBEDA|E90700  |;
                       BMI CODE_9DBEE4                      ;9DBEDD|3005    |;
                       STA.W $1D9B                          ;9DBEDF|8D9B1D  |;
                       BRA CODE_9DBF02                      ;9DBEE2|801E    |;
 
          CODE_9DBEE4:
                       CLC                                  ;9DBEE4|18      |;
                       ADC.W #$0006                         ;9DBEE5|690600  |;
                       TAY                                  ;9DBEE8|A8      |;
                       LDA.W #$009D                         ;9DBEE9|A99D00  |;
                       STA.B $8F                            ;9DBEEC|858F    |;
                       LDA.W #$C298                         ;9DBEEE|A998C2  |;
                       STA.B $8D                            ;9DBEF1|858D    |;
                       LDA.B [$8D],Y                        ;9DBEF3|B78D    |;
                       AND.W #$00FF                         ;9DBEF5|29FF00  |;
                       TAY                                  ;9DBEF8|A8      |;
                       LDA.B [$95],Y                        ;9DBEF9|B795    |;
                       AND.W #$00FF                         ;9DBEFB|29FF00  |;
                       DEC A                                ;9DBEFE|3A      |;
                       STA.W $1D9B                          ;9DBEFF|8D9B1D  |;
 
          CODE_9DBF02:
                       LDA.W $1D9B                          ;9DBF02|AD9B1D  |;
                       STA.B $A5                            ;9DBF05|85A5    |;
                       JSL.L CODE_9FC372                    ;9DBF07|2272C39F|;
                       LDA.B [$8D]                          ;9DBF0B|A78D    |;
                       DEC A                                ;9DBF0D|3A      |;
                       DEC A                                ;9DBF0E|3A      |;
                       LSR A                                ;9DBF0F|4A      |;
                       EOR.W #$FFFF                         ;9DBF10|49FFFF  |;
                       INC A                                ;9DBF13|1A      |;
                       CLC                                  ;9DBF14|18      |;
                       ADC.W #$0010                         ;9DBF15|691000  |;
                       STA.W $0D0F                          ;9DBF18|8D0F0D  |;
                       LDA.W #$000C                         ;9DBF1B|A90C00  |;
                       STA.W $0D11                          ;9DBF1E|8D110D  |;
                       JSL.L CODE_9EC7BE                    ;9DBF21|22BEC79E|;
                       JSL.L CODE_9ED300                    ;9DBF25|2200D39E|;
                       LDA.W $1D9B                          ;9DBF29|AD9B1D  |;
                       CMP.B $A5                            ;9DBF2C|C5A5    |;
                       BMI CODE_9DBF33                      ;9DBF2E|3003    |;
                       JMP.W CODE_9DBFEE                    ;9DBF30|4CEEBF  |;
 
          CODE_9DBF33:
                       LDA.W #$009D                         ;9DBF33|A99D00  |;
                       STA.B $8F                            ;9DBF36|858F    |;
                       LDA.W #$C2B0                         ;9DBF38|A9B0C2  |;
                       STA.B $8D                            ;9DBF3B|858D    |;
                       LDA.B [$8D]                          ;9DBF3D|A78D    |;
                       DEC A                                ;9DBF3F|3A      |;
                       DEC A                                ;9DBF40|3A      |;
                       LSR A                                ;9DBF41|4A      |;
                       EOR.W #$FFFF                         ;9DBF42|49FFFF  |;
                       INC A                                ;9DBF45|1A      |;
                       CLC                                  ;9DBF46|18      |;
                       ADC.W #$0010                         ;9DBF47|691000  |;
                       STA.W $0D0F                          ;9DBF4A|8D0F0D  |;
                       LDA.W #$000D                         ;9DBF4D|A90D00  |;
                       STA.W $0D11                          ;9DBF50|8D110D  |;
                       JSL.L CODE_9EC7BE                    ;9DBF53|22BEC79E|;
                       JSL.L CODE_9DC374                    ;9DBF57|2274C39D|;
                       LDX.W #$0038                         ;9DBF5B|A23800  |;
                       LDY.W #$007A                         ;9DBF5E|A07A00  |;
                       LDA.W #$009C                         ;9DBF61|A99C00  |;
                       STA.B $8F                            ;9DBF64|858F    |;
                       LDA.W #$F6B8                         ;9DBF66|A9B8F6  |;
                       STA.B $8D                            ;9DBF69|858D    |;
                       JSL.L CODE_9C9590                    ;9DBF6B|2290959C|;
                       LDA.W #$009D                         ;9DBF6F|A99D00  |;
                       STA.B $8F                            ;9DBF72|858F    |;
                       LDA.W #$C4E8                         ;9DBF74|A9E8C4  |;
                       STA.B $8D                            ;9DBF77|858D    |;
                       LDA.W $1E79                          ;9DBF79|AD791E  |;
                       STA.B $A5                            ;9DBF7C|85A5    |;
                       BPL CODE_9DBF83                      ;9DBF7E|1003    |;
                       db $4C,$BB,$C0                       ;9DBF80|        |;
 
          CODE_9DBF83:
                       JSL.L CODE_9ED323                    ;9DBF83|2223D39E|;
                       LDX.W #$0040                         ;9DBF87|A24000  |;
                       LDY.W #$0084                         ;9DBF8A|A08400  |;
                       JSL.L CODE_9C9590                    ;9DBF8D|2290959C|;
                       LDA.W #$009D                         ;9DBF91|A99D00  |;
                       STA.B $8F                            ;9DBF94|858F    |;
                       LDA.W #$C4E8                         ;9DBF96|A9E8C4  |;
                       STA.B $8D                            ;9DBF99|858D    |;
                       LDA.W $1E7D                          ;9DBF9B|AD7D1E  |;
                       STA.B $A5                            ;9DBF9E|85A5    |;
                       BPL CODE_9DBFA5                      ;9DBFA0|1003    |;
                       db $4C,$BB,$C0                       ;9DBFA2|        |;
 
          CODE_9DBFA5:
                       LDA.W $1E7F                          ;9DBFA5|AD7F1E  |;
                       CMP.W #$0050                         ;9DBFA8|C95000  |;
                       BPL CODE_9DBFB0                      ;9DBFAB|1003    |;
                       JMP.W CODE_9DC0BB                    ;9DBFAD|4CBBC0  |;
 
          CODE_9DBFB0:
                       JSL.L CODE_9ED323                    ;9DBFB0|2223D39E|;
                       LDX.W #$0040                         ;9DBFB4|A24000  |;
                       LDY.W #$008E                         ;9DBFB7|A08E00  |;
                       JSL.L CODE_9C9590                    ;9DBFBA|2290959C|;
                       LDA.W #$009D                         ;9DBFBE|A99D00  |;
                       STA.B $8F                            ;9DBFC1|858F    |;
                       LDA.W #$C4E8                         ;9DBFC3|A9E8C4  |;
                       STA.B $8D                            ;9DBFC6|858D    |;
                       LDA.W $1E81                          ;9DBFC8|AD811E  |;
                       STA.B $A5                            ;9DBFCB|85A5    |;
                       BPL CODE_9DBFD2                      ;9DBFCD|1003    |;
                       db $4C,$BB,$C0                       ;9DBFCF|        |;
 
          CODE_9DBFD2:
                       LDA.W $1E83                          ;9DBFD2|AD831E  |;
                       CMP.W #$0050                         ;9DBFD5|C95000  |;
                       BPL CODE_9DBFDD                      ;9DBFD8|1003    |;
                       db $4C,$BB,$C0                       ;9DBFDA|        |;
 
          CODE_9DBFDD:
                       JSL.L CODE_9ED323                    ;9DBFDD|2223D39E|;
                       LDX.W #$0040                         ;9DBFE1|A24000  |;
                       LDY.W #$0098                         ;9DBFE4|A09800  |;
                       JSL.L CODE_9C9590                    ;9DBFE7|2290959C|;
                       JMP.W CODE_9DC0BB                    ;9DBFEB|4CBBC0  |;
 
          CODE_9DBFEE:
                       JSL.L CODE_9ED300                    ;9DBFEE|2200D39E|;
                       LDA.B $A5                            ;9DBFF2|A5A5    |;
                       STA.B $A9                            ;9DBFF4|85A9    |;
                       JSL.L CODE_9B92DC                    ;9DBFF6|22DC929B|;
                       LDA.B $A5                            ;9DBFFA|A5A5    |;
                       CLC                                  ;9DBFFC|18      |;
                       ADC.B $A9                            ;9DBFFD|65A9    |;
                       CMP.W $1D9B                          ;9DBFFF|CD9B1D  |;
                       BEQ CODE_9DC012                      ;9DC002|F00E    |;
                       BMI CODE_9DC012                      ;9DC004|300C    |;
                       LDA.W #$009D                         ;9DC006|A99D00  |;
                       STA.B $8F                            ;9DC009|858F    |;
                       LDA.W #$C29E                         ;9DC00B|A99EC2  |;
                       STA.B $8D                            ;9DC00E|858D    |;
                       BRA CODE_9DC01C                      ;9DC010|800A    |;
 
          CODE_9DC012:
                       LDA.W #$009D                         ;9DC012|A99D00  |;
                       STA.B $8F                            ;9DC015|858F    |;
                       LDA.W #$C2A7                         ;9DC017|A9A7C2  |;
                       STA.B $8D                            ;9DC01A|858D    |;
 
          CODE_9DC01C:
                       LDA.B [$8D]                          ;9DC01C|A78D    |;
                       DEC A                                ;9DC01E|3A      |;
                       DEC A                                ;9DC01F|3A      |;
                       LSR A                                ;9DC020|4A      |;
                       EOR.W #$FFFF                         ;9DC021|49FFFF  |;
                       INC A                                ;9DC024|1A      |;
                       CLC                                  ;9DC025|18      |;
                       ADC.W #$0010                         ;9DC026|691000  |;
                       STA.W $0D0F                          ;9DC029|8D0F0D  |;
                       LDA.W #$000D                         ;9DC02C|A90D00  |;
                       STA.W $0D11                          ;9DC02F|8D110D  |;
                       JSL.L CODE_9EC7BE                    ;9DC032|22BEC79E|;
                       JSL.L CODE_9DC2FB                    ;9DC036|22FBC29D|;
                       LDX.W #$0038                         ;9DC03A|A23800  |;
                       LDY.W #$007A                         ;9DC03D|A07A00  |;
                       LDA.W #$009C                         ;9DC040|A99C00  |;
                       STA.B $8F                            ;9DC043|858F    |;
                       LDA.W #$F6C4                         ;9DC045|A9C4F6  |;
                       STA.B $8D                            ;9DC048|858D    |;
                       JSL.L CODE_9C9590                    ;9DC04A|2290959C|;
                       LDA.W #$009D                         ;9DC04E|A99D00  |;
                       STA.B $8F                            ;9DC051|858F    |;
                       LDA.W #$C436                         ;9DC053|A936C4  |;
                       STA.B $8D                            ;9DC056|858D    |;
                       LDA.W $1E79                          ;9DC058|AD791E  |;
                       STA.B $A5                            ;9DC05B|85A5    |;
                       BMI CODE_9DC0BB                      ;9DC05D|305C    |;
                       JSL.L CODE_9ED323                    ;9DC05F|2223D39E|;
                       LDX.W #$0040                         ;9DC063|A24000  |;
                       LDY.W #$0084                         ;9DC066|A08400  |;
                       JSL.L CODE_9C9590                    ;9DC069|2290959C|;
                       LDA.W #$009D                         ;9DC06D|A99D00  |;
                       STA.B $8F                            ;9DC070|858F    |;
                       LDA.W #$C436                         ;9DC072|A936C4  |;
                       STA.B $8D                            ;9DC075|858D    |;
                       LDA.W $1E7D                          ;9DC077|AD7D1E  |;
                       STA.B $A5                            ;9DC07A|85A5    |;
                       BMI CODE_9DC0BB                      ;9DC07C|303D    |;
                       LDA.W $1E7F                          ;9DC07E|AD7F1E  |;
                       CMP.W #$0050                         ;9DC081|C95000  |;
                       BMI CODE_9DC0BB                      ;9DC084|3035    |;
                       JSL.L CODE_9ED323                    ;9DC086|2223D39E|;
                       LDX.W #$0040                         ;9DC08A|A24000  |;
                       LDY.W #$008E                         ;9DC08D|A08E00  |;
                       JSL.L CODE_9C9590                    ;9DC090|2290959C|;
                       LDA.W #$009D                         ;9DC094|A99D00  |;
                       STA.B $8F                            ;9DC097|858F    |;
                       LDA.W #$C436                         ;9DC099|A936C4  |;
                       STA.B $8D                            ;9DC09C|858D    |;
                       LDA.W $1E81                          ;9DC09E|AD811E  |;
                       STA.B $A5                            ;9DC0A1|85A5    |;
                       BMI CODE_9DC0BB                      ;9DC0A3|3016    |;
                       LDA.W $1E83                          ;9DC0A5|AD831E  |;
                       CMP.W #$0050                         ;9DC0A8|C95000  |;
                       BMI CODE_9DC0BB                      ;9DC0AB|300E    |;
                       JSL.L CODE_9ED323                    ;9DC0AD|2223D39E|;
                       LDX.W #$0040                         ;9DC0B1|A24000  |;
                       LDY.W #$0098                         ;9DC0B4|A09800  |;
                       JSL.L CODE_9C9590                    ;9DC0B7|2290959C|;
 
          CODE_9DC0BB:
                       LDX.W #$0098                         ;9DC0BB|A29800  |;
                       LDY.W #$007A                         ;9DC0BE|A07A00  |;
                       LDA.W #$009C                         ;9DC0C1|A99C00  |;
                       STA.B $8F                            ;9DC0C4|858F    |;
                       LDA.W #$F6D0                         ;9DC0C6|A9D0F6  |;
                       STA.B $8D                            ;9DC0C9|858D    |;
                       JSL.L CODE_9C9590                    ;9DC0CB|2290959C|;
                       LDA.W #$0001                         ;9DC0CF|A90100  |;
                       STA.B $A9                            ;9DC0D2|85A9    |;
                       JSL.L CODE_9DC561                    ;9DC0D4|2261C59D|;
                       LDA.W #$0004                         ;9DC0D8|A90400  |;
                       STA.B $A9                            ;9DC0DB|85A9    |;
                       JSL.L CODE_9FC623                    ;9DC0DD|2223C69F|;
                       LDX.W #$00A0                         ;9DC0E1|A2A000  |;
                       LDY.W #$0084                         ;9DC0E4|A08400  |;
                       JSL.L CODE_9C9590                    ;9DC0E7|2290959C|;
                       JMP.W CODE_9DC208                    ;9DC0EB|4C08C2  |;
 
          CODE_9DC0EE:
                       LDX.W #$000D                         ;9DC0EE|A20D00  |;
                       LDY.W #$0004                         ;9DC0F1|A00400  |;
                       JSL.L CODE_9DCCBA                    ;9DC0F4|22BACC9D|;
                       LDA.W #$0001                         ;9DC0F8|A90100  |;
                       STA.L $7E3464                        ;9DC0FB|8F64347E|;
                       LDA.B $8F                            ;9DC0FF|A58F    |;
                       PHA                                  ;9DC101|48      |;
                       LDA.B $8D                            ;9DC102|A58D    |;
                       PHA                                  ;9DC104|48      |;
                       LDA.W #$009C                         ;9DC105|A99C00  |;
                       STA.B $8F                            ;9DC108|858F    |;
                       LDA.W #$F6E0                         ;9DC10A|A9E0F6  |;
                       STA.B $8D                            ;9DC10D|858D    |;
                       JSL.L CODE_9EC7BE                    ;9DC10F|22BEC79E|;
                       PLA                                  ;9DC113|68      |;
                       STA.B $8D                            ;9DC114|858D    |;
                       PLA                                  ;9DC116|68      |;
                       STA.B $8F                            ;9DC117|858F    |;
                       LDY.B zpCurntTeamLoopVal             ;9DC119|A491    |;
                       LDA.W $1C98,Y                        ;9DC11B|B9981C  |;
                       STA.B $A9                            ;9DC11E|85A9    |;
                       JSL.L CODE_9FBE08                    ;9DC120|2208BE9F|;
                       LDA.W #$0000                         ;9DC124|A90000  |;
                       STA.L $7E3464                        ;9DC127|8F64347E|;
                       LDY.B zpCurntTeamLoopVal             ;9DC12B|A491    |;
                       LDA.W #$009C                         ;9DC12D|A99C00  |;
                       STA.B $8F                            ;9DC130|858F    |;
                       LDA.W $1CDC,Y                        ;9DC132|B9DC1C  |;
                       STA.B $8D                            ;9DC135|858D    |;
                       LDY.W #$0004                         ;9DC137|A00400  |;
                       CLC                                  ;9DC13A|18      |;
                       ADC.B [$8D],Y                        ;9DC13B|778D    |;
                       STA.B $8D                            ;9DC13D|858D    |;
                       CLC                                  ;9DC13F|18      |;
                       ADC.B [$8D]                          ;9DC140|678D    |;
                       STA.B $8D                            ;9DC142|858D    |;
                       CLC                                  ;9DC144|18      |;
                       ADC.B [$8D]                          ;9DC145|678D    |;
                       STA.B $8D                            ;9DC147|858D    |;
                       LDA.B [$8D]                          ;9DC149|A78D    |;
                       DEC A                                ;9DC14B|3A      |;
                       DEC A                                ;9DC14C|3A      |;
                       LSR A                                ;9DC14D|4A      |;
                       EOR.W #$FFFF                         ;9DC14E|49FFFF  |;
                       INC A                                ;9DC151|1A      |;
                       CLC                                  ;9DC152|18      |;
                       ADC.W #$0010                         ;9DC153|691000  |;
                       STA.W $0D0F                          ;9DC156|8D0F0D  |;
                       LDA.W #$0007                         ;9DC159|A90700  |;
                       STA.W $0D11                          ;9DC15C|8D110D  |;
                       JSL.L CODE_9EC7BE                    ;9DC15F|22BEC79E|;
                       LDA.B [$8D]                          ;9DC163|A78D    |;
                       DEC A                                ;9DC165|3A      |;
                       DEC A                                ;9DC166|3A      |;
                       LSR A                                ;9DC167|4A      |;
                       EOR.W #$FFFF                         ;9DC168|49FFFF  |;
                       INC A                                ;9DC16B|1A      |;
                       CLC                                  ;9DC16C|18      |;
                       ADC.W #$0010                         ;9DC16D|691000  |;
                       STA.W $0D0F                          ;9DC170|8D0F0D  |;
                       LDA.W #$0009                         ;9DC173|A90900  |;
                       STA.W $0D11                          ;9DC176|8D110D  |;
                       JSL.L CODE_9EC7BE                    ;9DC179|22BEC79E|;
                       LDA.W #$0060                         ;9DC17D|A96000  |;
                       STA.W $0D11                          ;9DC180|8D110D  |;
                       LDX.W #$0080                         ;9DC183|A28000  |;
                       LDY.W #$0004                         ;9DC186|A00400  |;
                       JSL.L CODE_9DC2B8                    ;9DC189|22B8C29D|;
                       LDA.W $0D11                          ;9DC18D|AD110D  |;
                       CLC                                  ;9DC190|18      |;
                       ADC.W #$0008                         ;9DC191|690800  |;
                       STA.W $0D11                          ;9DC194|8D110D  |;
                       LDX.W #$0040                         ;9DC197|A24000  |;
                       LDY.W #$0003                         ;9DC19A|A00300  |;
                       JSL.L CODE_9DC2B8                    ;9DC19D|22B8C29D|;
                       LDX.W #$00C0                         ;9DC1A1|A2C000  |;
                       LDY.W #$0005                         ;9DC1A4|A00500  |;
                       JSL.L CODE_9DC2B8                    ;9DC1A7|22B8C29D|;
                       LDA.W $0D11                          ;9DC1AB|AD110D  |;
                       CLC                                  ;9DC1AE|18      |;
                       ADC.W #$000E                         ;9DC1AF|690E00  |;
                       STA.W $0D11                          ;9DC1B2|8D110D  |;
                       LDX.W #$0058                         ;9DC1B5|A25800  |;
                       LDY.W #$0001                         ;9DC1B8|A00100  |;
                       JSL.L CODE_9DC2B8                    ;9DC1BB|22B8C29D|;
                       LDX.W #$00A8                         ;9DC1BF|A2A800  |;
                       LDY.W #$0002                         ;9DC1C2|A00200  |;
                       JSL.L CODE_9DC2B8                    ;9DC1C5|22B8C29D|;
                       LDA.W $0D11                          ;9DC1C9|AD110D  |;
                       CLC                                  ;9DC1CC|18      |;
                       ADC.W #$000E                         ;9DC1CD|690E00  |;
                       STA.W $0D11                          ;9DC1D0|8D110D  |;
                       LDX.W #$0080                         ;9DC1D3|A28000  |;
                       LDY.W #$0000                         ;9DC1D6|A00000  |;
                       JSL.L CODE_9DC2B8                    ;9DC1D9|22B8C29D|;
                       LDX.W #$0066                         ;9DC1DD|A26600  |;
                       LDY.W #$0098                         ;9DC1E0|A09800  |;
                       LDA.W #$009C                         ;9DC1E3|A99C00  |;
                       STA.B $8F                            ;9DC1E6|858F    |;
                       LDA.W #$F6E5                         ;9DC1E8|A9E5F6  |;
                       STA.B $8D                            ;9DC1EB|858D    |;
                       JSL.L CODE_9C9590                    ;9DC1ED|2290959C|;
                       JSL.L CODE_9D87B5                    ;9DC1F1|22B5879D|;
                       LDA.W #$0004                         ;9DC1F5|A90400  |;
                       STA.B $A9                            ;9DC1F8|85A9    |;
                       JSL.L CODE_9FC623                    ;9DC1FA|2223C69F|;
                       LDX.W #$0070                         ;9DC1FE|A27000  |;
                       LDY.W #$00A2                         ;9DC201|A0A200  |;
                       JSL.L CODE_9C9590                    ;9DC204|2290959C|;
 
          CODE_9DC208:
                       LDA.W $1DB9                          ;9DC208|ADB91D  |;
                       BEQ CODE_9DC27C                      ;9DC20B|F06F    |;
                       LDA.W $1D9B                          ;9DC20D|AD9B1D  |;
                       LDX.W #$000D                         ;9DC210|A20D00  |;
                       LDY.W #$0004                         ;9DC213|A00400  |;
                       JSL.L CODE_9DC9A8                    ;9DC216|22A8C99D|;
                       LDA.W #$007F                         ;9DC21A|A97F00  |;
                       STA.B $0E                            ;9DC21D|850E    |;
                       LDA.L $7E3470                        ;9DC21F|AF70347E|;
                       STA.B $0C                            ;9DC223|850C    |;
                       LDA.L $7E35D2                        ;9DC225|AFD2357E|;
                       ASL A                                ;9DC229|0A      |;
                       ASL A                                ;9DC22A|0A      |;
                       ASL A                                ;9DC22B|0A      |;
                       ASL A                                ;9DC22C|0A      |;
                       CLC                                  ;9DC22D|18      |;
                       ADC.W #$2000                         ;9DC22E|690020  |;
                       TAY                                  ;9DC231|A8      |;
                       LDX.W #$0600                         ;9DC232|A20006  |;
                       JSL.L CODE_808583                    ;9DC235|22838580|;
                       JSL.L CODE_80891F                    ;9DC239|221F8980|;
                       LDA.W #$007F                         ;9DC23D|A97F00  |;
                       STA.B $0E                            ;9DC240|850E    |;
                       LDA.L $7E3472                        ;9DC242|AF72347E|;
                       STA.B $0C                            ;9DC246|850C    |;
                       LDA.L $7E35D2                        ;9DC248|AFD2357E|;
                       ASL A                                ;9DC24C|0A      |;
                       ASL A                                ;9DC24D|0A      |;
                       ASL A                                ;9DC24E|0A      |;
                       ASL A                                ;9DC24F|0A      |;
                       CLC                                  ;9DC250|18      |;
                       ADC.W #$2300                         ;9DC251|690023  |;
                       TAY                                  ;9DC254|A8      |;
                       LDX.W #$0600                         ;9DC255|A20006  |;
                       JSL.L CODE_80891F                    ;9DC258|221F8980|;
                       JSL.L CODE_9DD923                    ;9DC25C|2223D99D|;
                       LDA.W #$007F                         ;9DC260|A97F00  |;
                       STA.B $0E                            ;9DC263|850E    |;
                       LDA.W #$7780                         ;9DC265|A98077  |;
                       STA.B $0C                            ;9DC268|850C    |;
                       LDA.W #$0400                         ;9DC26A|A90004  |;
                       STA.W $079C                          ;9DC26D|8D9C07  |;
                       LDX.W #$000C                         ;9DC270|A20C00  |;
                       LDY.W #$0004                         ;9DC273|A00400  |;
                       JSL.L CODE_808ADF                    ;9DC276|22DF8A80|;
                       BRA CODE_9DC280                      ;9DC27A|8004    |;
 
          CODE_9DC27C:
                       JSL.L CODE_9DD94D                    ;9DC27C|224DD99D|;
 
          CODE_9DC280:
                       JSL.L CODE_9DC2DE                    ;9DC280|22DEC29D|;
                       JSL.L CODE_808583                    ;9DC284|22838580|;
                       JSL.L CODE_80AFDE                    ;9DC288|22DEAF80|;
                       LDA.W #$3568                         ;9DC28C|A96835  |;
                       STA.L $7F7500                        ;9DC28F|8F00757F|;
                       JSL.L CODE_9DE0D4                    ;9DC293|22D4E09D|;
                       RTL                                  ;9DC297|6B      |;
                       db $00,$04,$03,$05,$01,$02,$09,$00   ;9DC298|        |;
                       db $46,$6F,$72,$77,$61,$72,$64,$09   ;9DC2A0|        |;
                       db $00,$44,$65,$66,$65,$6E,$73,$65   ;9DC2A8|        |;
                       db $08,$00,$47,$6F,$61,$6C,$69,$65   ;9DC2B0|        |;
 
          CODE_9DC2B8:
                       LDA.B [$95],Y                        ;9DC2B8|B795    |;
                       AND.W #$00FF                         ;9DC2BA|29FF00  |;
                       DEC A                                ;9DC2BD|3A      |;
                       STA.B $A5                            ;9DC2BE|85A5    |;
                       JSL.L CODE_9FC4D0                    ;9DC2C0|22D0C49F|;
                       TXA                                  ;9DC2C4|8A      |;
                       STA.B $A9                            ;9DC2C5|85A9    |;
                       LDA.B [$8D]                          ;9DC2C7|A78D    |;
                       DEC A                                ;9DC2C9|3A      |;
                       DEC A                                ;9DC2CA|3A      |;
                       LSR A                                ;9DC2CB|4A      |;
                       ASL A                                ;9DC2CC|0A      |;
                       ASL A                                ;9DC2CD|0A      |;
                       EOR.W #$FFFF                         ;9DC2CE|49FFFF  |;
                       INC A                                ;9DC2D1|1A      |;
                       CLC                                  ;9DC2D2|18      |;
                       ADC.B $A9                            ;9DC2D3|65A9    |;
                       TAX                                  ;9DC2D5|AA      |;
                       LDY.W $0D11                          ;9DC2D6|AC110D  |;
                       JSL.L CODE_9C9590                    ;9DC2D9|2290959C|;
                       RTL                                  ;9DC2DD|6B      |;
 
          CODE_9DC2DE:
                       LDX.W #$00CE                         ;9DC2DE|A2CE00  |;
                       LDA.B zpCurntTeamLoopVal             ;9DC2E1|A591    |;
                       BNE CODE_9DC2E8                      ;9DC2E3|D003    |;
                       LDX.W #$00EE                         ;9DC2E5|A2EE00  |;
 
          CODE_9DC2E8:
                       LDA.L $7F7500,X                      ;9DC2E8|BF00757F|;
                       STA.L $7F759C                        ;9DC2EC|8F9C757F|;
                       INX                                  ;9DC2F0|E8      |;
                       INX                                  ;9DC2F1|E8      |;
                       LDA.L $7F7500,X                      ;9DC2F2|BF00757F|;
                       STA.L $7F759E                        ;9DC2F6|8F9E757F|;
                       RTL                                  ;9DC2FA|6B      |;
 
          CODE_9DC2FB:
                       LDA.W #$FFFF                         ;9DC2FB|A9FFFF  |;
                       STA.W $1E79                          ;9DC2FE|8D791E  |;
                       STA.W $1E7B                          ;9DC301|8D7B1E  |;
                       STA.W $1E7D                          ;9DC304|8D7D1E  |;
                       STA.W $1E7F                          ;9DC307|8D7F1E  |;
                       STA.W $1E81                          ;9DC30A|8D811E  |;
                       STA.W $1E83                          ;9DC30D|8D831E  |;
                       LDA.W #$0004                         ;9DC310|A90400  |;
                       STA.B $A9                            ;9DC313|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC315|22DBC39D|;
                       LDA.W #$0006                         ;9DC319|A90600  |;
                       STA.B $A9                            ;9DC31C|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC31E|22DBC39D|;
                       LDA.W #$0008                         ;9DC322|A90800  |;
                       STA.B $A9                            ;9DC325|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC327|22DBC39D|;
                       LDA.W #$000F                         ;9DC32B|A90F00  |;
                       STA.B $A9                            ;9DC32E|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC330|22DBC39D|;
                       LDA.W #$0007                         ;9DC334|A90700  |;
                       STA.B $A9                            ;9DC337|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC339|22DBC39D|;
                       LDA.W #$000B                         ;9DC33D|A90B00  |;
                       STA.B $A9                            ;9DC340|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC342|22DBC39D|;
                       LDA.W #$0009                         ;9DC346|A90900  |;
                       STA.B $A9                            ;9DC349|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC34B|22DBC39D|;
                       LDA.W #$0003                         ;9DC34F|A90300  |;
                       STA.B $A9                            ;9DC352|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC354|22DBC39D|;
                       LDA.W #$000A                         ;9DC358|A90A00  |;
                       STA.B $A9                            ;9DC35B|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC35D|22DBC39D|;
                       LDA.W #$000D                         ;9DC361|A90D00  |;
                       STA.B $A9                            ;9DC364|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC366|22DBC39D|;
                       LDA.W #$000E                         ;9DC36A|A90E00  |;
                       STA.B $A9                            ;9DC36D|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC36F|22DBC39D|;
                       RTL                                  ;9DC373|6B      |;
 
          CODE_9DC374:
                       LDA.W #$FFFF                         ;9DC374|A9FFFF  |;
                       STA.W $1E79                          ;9DC377|8D791E  |;
                       STA.W $1E7B                          ;9DC37A|8D7B1E  |;
                       STA.W $1E7D                          ;9DC37D|8D7D1E  |;
                       STA.W $1E7F                          ;9DC380|8D7F1E  |;
                       STA.W $1E81                          ;9DC383|8D811E  |;
                       STA.W $1E83                          ;9DC386|8D831E  |;
                       LDA.W #$0005                         ;9DC389|A90500  |;
                       STA.B $A9                            ;9DC38C|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC38E|22DBC39D|;
                       LDA.W #$0002                         ;9DC392|A90200  |;
                       STA.B $A9                            ;9DC395|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC397|22DBC39D|;
                       LDA.W #$0006                         ;9DC39B|A90600  |;
                       STA.B $A9                            ;9DC39E|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC3A0|22DBC39D|;
                       LDA.W #$0004                         ;9DC3A4|A90400  |;
                       STA.B $A9                            ;9DC3A7|85A9    |;
                       JSL.L CODE_9DC561                    ;9DC3A9|2261C59D|;
                       LDA.B $A5                            ;9DC3AD|A5A5    |;
                       CMP.W #$0032                         ;9DC3AF|C93200  |;
                       BCC CODE_9DC3C8                      ;9DC3B2|9014    |;
                       db $A9,$08,$00,$85,$A9,$22,$DB,$C3   ;9DC3B4|        |;
                       db $9D,$A9,$09,$00,$85,$A9,$22,$DB   ;9DC3BC|        |;
                       db $C3,$9D,$80,$12                   ;9DC3C4|        |;
 
          CODE_9DC3C8:
                       LDA.W #$0007                         ;9DC3C8|A90700  |;
                       STA.B $A9                            ;9DC3CB|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC3CD|22DBC39D|;
                       LDA.W #$000A                         ;9DC3D1|A90A00  |;
                       STA.B $A9                            ;9DC3D4|85A9    |;
                       JSL.L CODE_9DC3DB                    ;9DC3D6|22DBC39D|;
                       RTL                                  ;9DC3DA|6B      |;
 
          CODE_9DC3DB:
                       JSL.L CODE_9DC561                    ;9DC3DB|2261C59D|;
                       LDA.B $A5                            ;9DC3DF|A5A5    |;
                       DEC A                                ;9DC3E1|3A      |;
                       CMP.W $1E7B                          ;9DC3E2|CD7B1E  |;
                       BPL CODE_9DC3F3                      ;9DC3E5|100C    |;
                       CMP.W $1E7F                          ;9DC3E7|CD7F1E  |;
                       BPL CODE_9DC40F                      ;9DC3EA|1023    |;
                       CMP.W $1E83                          ;9DC3EC|CD831E  |;
                       BPL CODE_9DC42B                      ;9DC3EF|103A    |;
                       BRA CODE_9DC435                      ;9DC3F1|8042    |;
 
          CODE_9DC3F3:
                       LDA.W $1E7B                          ;9DC3F3|AD7B1E  |;
                       STA.B $00                            ;9DC3F6|8500    |;
                       LDA.W $1E79                          ;9DC3F8|AD791E  |;
                       STA.B $04                            ;9DC3FB|8504    |;
                       LDA.B $A5                            ;9DC3FD|A5A5    |;
                       STA.W $1E7B                          ;9DC3FF|8D7B1E  |;
                       LDA.B $A9                            ;9DC402|A5A9    |;
                       STA.W $1E79                          ;9DC404|8D791E  |;
                       LDA.B $00                            ;9DC407|A500    |;
                       STA.B $A5                            ;9DC409|85A5    |;
                       LDA.B $04                            ;9DC40B|A504    |;
                       STA.B $A9                            ;9DC40D|85A9    |;
 
          CODE_9DC40F:
                       LDA.W $1E7F                          ;9DC40F|AD7F1E  |;
                       STA.B $00                            ;9DC412|8500    |;
                       LDA.W $1E7D                          ;9DC414|AD7D1E  |;
                       STA.B $04                            ;9DC417|8504    |;
                       LDA.B $A5                            ;9DC419|A5A5    |;
                       STA.W $1E7F                          ;9DC41B|8D7F1E  |;
                       LDA.B $A9                            ;9DC41E|A5A9    |;
                       STA.W $1E7D                          ;9DC420|8D7D1E  |;
                       LDA.B $00                            ;9DC423|A500    |;
                       STA.B $A5                            ;9DC425|85A5    |;
                       LDA.B $04                            ;9DC427|A504    |;
                       STA.B $A9                            ;9DC429|85A9    |;
 
          CODE_9DC42B:
                       LDA.B $A5                            ;9DC42B|A5A5    |;
                       STA.W $1E83                          ;9DC42D|8D831E  |;
                       LDA.B $A9                            ;9DC430|A5A9    |;
                       STA.W $1E81                          ;9DC432|8D811E  |;
 
          CODE_9DC435:
                       RTL                                  ;9DC435|6B      |;
                       db $08,$00                           ;9DC436|        |;
                       db $53,$74,$61,$74,$75,$73           ;9DC438|        |;
                       db $09,$00                           ;9DC43E|        |;
                       db $4F,$76,$65,$72,$61,$6C,$6C       ;9DC440|        |;
                       db $08,$00                           ;9DC447|        |;
                       db $45,$6E,$65,$72,$67,$79           ;9DC449|        |;
                       db $09,$00,$41,$67,$69,$6C,$69,$74   ;9DC44F|        |;
                       db $79,$07,$00,$53,$70,$65,$65,$64   ;9DC457|        |;
                       db $0C,$00                           ;9DC45F|        |;
                       db $48,$61,$6E,$64,$65,$64,$6E,$65   ;9DC461|        |;
                       db $73,$73                           ;9DC469|        |;
                       db $0B,$00,$4F,$66,$66,$65,$6E,$73   ;9DC46B|        |;
                       db $69,$76,$65,$0B,$00               ;9DC473|        |;
                       db $44,$65,$66,$65,$6E,$73,$69,$76   ;9DC478|        |;
                       db $65                               ;9DC480|        |;
                       db $0C,$00,$53,$68,$6F,$74,$20,$50   ;9DC481|        |;
                       db $6F,$77,$65,$72,$0F,$00,$53,$68   ;9DC489|        |;
                       db $6F,$74,$20,$41,$63,$63,$75,$72   ;9DC491|        |;
                       db $61,$63,$79,$09,$00,$50,$61,$73   ;9DC499|        |;
                       db $73,$69,$6E,$67,$10,$00,$53,$74   ;9DC4A1|        |;
                       db $69,$63,$6B,$20,$48,$61,$6E,$64   ;9DC4A9|        |;
                       db $6C,$69,$6E,$67,$08,$00           ;9DC4B1|        |;
                       db $57,$65,$69,$67,$68,$74           ;9DC4B7|        |;
                       db $0B,$00,$45,$6E,$64,$75,$72,$61   ;9DC4BD|        |;
                       db $6E,$63,$65,$0C,$00,$41,$67,$67   ;9DC4C5|        |;
                       db $72,$65,$73,$73,$69,$6F,$6E,$0A   ;9DC4CD|        |;
                       db $00,$43,$68,$65,$63,$6B,$69,$6E   ;9DC4D5|        |;
                       db $67,$0A                           ;9DC4DD|        |;
                       db $00,$46,$69,$67,$68,$74,$69,$6E   ;9DC4DF|        |;
                       db $67                               ;9DC4E7|        |;
                       db $08,$00                           ;9DC4E8|        |;
                       db $53,$74,$61,$74,$75,$73           ;9DC4EA|        |;
                       db $09,$00                           ;9DC4F0|        |;
                       db $4F,$76,$65,$72,$61,$6C,$6C       ;9DC4F2|        |;
                       db $09,$00,$41,$67,$69,$6C,$69,$74   ;9DC4F9|        |;
                       db $79,$07,$00                       ;9DC501|        |;
                       db $53,$70,$65,$65,$64               ;9DC504|        |;
                       db $0C,$00                           ;9DC509|        |;
                       db $47,$6C,$6F,$76,$65,$20,$68,$61   ;9DC50B|        |;
                       db $6E,$64                           ;9DC513|        |;
                       db $10,$00,$44,$65,$66,$2E,$20,$41   ;9DC515|        |;
                       db $77,$61,$72,$65,$6E,$65,$73,$73   ;9DC51D|        |;
                       db $0E,$00,$50,$75,$63,$6B,$20,$43   ;9DC525|        |;
                       db $6F,$6E,$74,$72,$6F,$6C,$0C,$00   ;9DC52D|        |;
                       db $53,$74,$69,$63,$6B,$20,$53,$69   ;9DC535|        |;
                       db $64,$65                           ;9DC53D|        |;
                       db $0C,$00                           ;9DC53F|        |;
                       db $53,$74,$69,$63,$6B,$20,$53,$69   ;9DC541|        |;
                       db $64,$65                           ;9DC549|        |;
                       db $07,$00                           ;9DC54B|        |;
                       db $47,$6C,$6F,$76,$65               ;9DC54D|        |;
                       db $07,$00,$47,$6C,$6F,$76,$65,$08   ;9DC552|        |;
                       db $00,$57,$65,$69,$67,$68,$74       ;9DC55A|        |;
 
          CODE_9DC561:
                       STX.B $87                            ;9DC561|8687    |;
                       LDX.W #$0000                         ;9DC563|A20000  |;
 
          CODE_9DC566:
                       LDA.B $A5,X                          ;9DC566|B5A5    |;
                       PHA                                  ;9DC568|48      |;
                       INX                                  ;9DC569|E8      |;
                       INX                                  ;9DC56A|E8      |;
                       CPX.W #$0014                         ;9DC56B|E01400  |;
                       BNE CODE_9DC566                      ;9DC56E|D0F6    |;
                       LDX.B $87                            ;9DC570|A687    |;
                       LDA.B $89                            ;9DC572|A589    |;
                       PHA                                  ;9DC574|48      |;
                       LDA.B $8B                            ;9DC575|A58B    |;
                       PHA                                  ;9DC577|48      |;
                       LDA.B $8D                            ;9DC578|A58D    |;
                       PHA                                  ;9DC57A|48      |;
                       LDA.B $8F                            ;9DC57B|A58F    |;
                       PHA                                  ;9DC57D|48      |;
                       LDA.W #$0080                         ;9DC57E|A98000  |;
                       STA.B $8F                            ;9DC581|858F    |;
                       LDA.W #$D79B                         ;9DC583|A99BD7  |;
                       STA.B $8D                            ;9DC586|858D    |;
                       STZ.B $08                            ;9DC588|6408    |;
                       JSL.L CODE_9ED300                    ;9DC58A|2200D39E|;
                       LDA.W $1D9B                          ;9DC58E|AD9B1D  |;
                       CMP.B $A5                            ;9DC591|C5A5    |;
                       BPL CODE_9DC5A4                      ;9DC593|100F    |;
                       LDA.W #$0080                         ;9DC595|A98000  |;
                       STA.B $8F                            ;9DC598|858F    |;
                       LDA.W #$D8CD                         ;9DC59A|A9CDD8  |;
                       STA.B $8D                            ;9DC59D|858D    |;
                       LDA.W #$0010                         ;9DC59F|A91000  |;
                       STA.B $08                            ;9DC5A2|8508    |;
 
          CODE_9DC5A4:
                       PHX                                  ;9DC5A4|DA      |;
                       LDX.B $A9                            ;9DC5A5|A6A9    |;
 
          CODE_9DC5A7:
                       DEX                                  ;9DC5A7|CA      |;
                       BMI CODE_9DC5B6                      ;9DC5A8|300C    |;
                       LDA.B $8D                            ;9DC5AA|A58D    |;
                       CLC                                  ;9DC5AC|18      |;
                       ADC.B [$8D]                          ;9DC5AD|678D    |;
                       ADC.W #$0004                         ;9DC5AF|690400  |;
                       STA.B $8D                            ;9DC5B2|858D    |;
                       BRA CODE_9DC5A7                      ;9DC5B4|80F1    |;
 
          CODE_9DC5B6:
                       LDA.B $8D                            ;9DC5B6|A58D    |;
                       CLC                                  ;9DC5B8|18      |;
                       ADC.B [$8D]                          ;9DC5B9|678D    |;
                       STA.B $8D                            ;9DC5BB|858D    |;
                       LDA.B [$8D]                          ;9DC5BD|A78D    |;
                       STA.B $B7                            ;9DC5BF|85B7    |;
                       LDY.W #$0002                         ;9DC5C1|A00200  |;
                       LDA.B [$8D],Y                        ;9DC5C4|B78D    |;
                       STA.B $B5                            ;9DC5C6|85B5    |;
                       PLX                                  ;9DC5C8|FA      |;
                       LDA.W $1D9B                          ;9DC5C9|AD9B1D  |;
                       STA.B $A5                            ;9DC5CC|85A5    |;
                       LDA.W #$0001                         ;9DC5CE|A90100  |;
                       STA.L $7E35F2                        ;9DC5D1|8FF2357E|;
                       JSL.L CODE_9F992E                    ;9DC5D5|222E999F|;
                       LDA.B $A5                            ;9DC5D9|A5A5    |;
                       STA.B $00                            ;9DC5DB|8500    |;
                       PLA                                  ;9DC5DD|68      |;
                       STA.B $8F                            ;9DC5DE|858F    |;
                       PLA                                  ;9DC5E0|68      |;
                       STA.B $8D                            ;9DC5E1|858D    |;
                       PLA                                  ;9DC5E3|68      |;
                       STA.B $8B                            ;9DC5E4|858B    |;
                       PLA                                  ;9DC5E6|68      |;
                       STA.B $89                            ;9DC5E7|8589    |;
                       STX.B $87                            ;9DC5E9|8687    |;
                       LDX.W #$0012                         ;9DC5EB|A21200  |;
 
          CODE_9DC5EE:
                       PLA                                  ;9DC5EE|68      |;
                       STA.B $A5,X                          ;9DC5EF|95A5    |;
                       DEX                                  ;9DC5F1|CA      |;
                       DEX                                  ;9DC5F2|CA      |;
                       BPL CODE_9DC5EE                      ;9DC5F3|10F9    |;
                       LDX.B $87                            ;9DC5F5|A687    |;
                       LDA.B $00                            ;9DC5F7|A500    |;
                       STA.B $A5                            ;9DC5F9|85A5    |;
                       RTL                                  ;9DC5FB|6B      |;
 
          CODE_9DC5FC:
                       STX.B $87                            ;9DC5FC|8687    |;
                       LDX.W #$0000                         ;9DC5FE|A20000  |;
 
          CODE_9DC601:
                       LDA.B $A5,X                          ;9DC601|B5A5    |;
                       PHA                                  ;9DC603|48      |;
                       INX                                  ;9DC604|E8      |;
                       INX                                  ;9DC605|E8      |;
                       CPX.W #$0014                         ;9DC606|E01400  |;
                       BNE CODE_9DC601                      ;9DC609|D0F6    |;
                       LDX.B $87                            ;9DC60B|A687    |;
                       LDA.B $89                            ;9DC60D|A589    |;
                       PHA                                  ;9DC60F|48      |;
                       LDA.B $8B                            ;9DC610|A58B    |;
                       PHA                                  ;9DC612|48      |;
                       LDA.B $8D                            ;9DC613|A58D    |;
                       PHA                                  ;9DC615|48      |;
                       LDA.B $8F                            ;9DC616|A58F    |;
                       PHA                                  ;9DC618|48      |;
                       LDA.W #$0080                         ;9DC619|A98000  |;
                       STA.B $8F                            ;9DC61C|858F    |;
                       LDA.W #$D79B                         ;9DC61E|A99BD7  |;
                       STA.B $8D                            ;9DC621|858D    |;
                       STZ.B $08                            ;9DC623|6408    |;
                       JSL.L CODE_9ED300                    ;9DC625|2200D39E|;
                       LDA.W $1D9B                          ;9DC629|AD9B1D  |;
                       CMP.B $A5                            ;9DC62C|C5A5    |;
                       BPL CODE_9DC63F                      ;9DC62E|100F    |;
                       LDA.W #$0080                         ;9DC630|A98000  |;
                       STA.B $8F                            ;9DC633|858F    |;
                       LDA.W #$D8CD                         ;9DC635|A9CDD8  |;
                       STA.B $8D                            ;9DC638|858D    |;
                       LDA.W #$0010                         ;9DC63A|A91000  |;
                       STA.B $08                            ;9DC63D|8508    |;
 
          CODE_9DC63F:
                       PHX                                  ;9DC63F|DA      |;
                       LDX.B $A9                            ;9DC640|A6A9    |;
 
          CODE_9DC642:
                       DEX                                  ;9DC642|CA      |;
                       BMI CODE_9DC651                      ;9DC643|300C    |;
                       LDA.B $8D                            ;9DC645|A58D    |;
                       CLC                                  ;9DC647|18      |;
                       ADC.B [$8D]                          ;9DC648|678D    |;
                       ADC.W #$0004                         ;9DC64A|690400  |;
                       STA.B $8D                            ;9DC64D|858D    |;
                       BRA CODE_9DC642                      ;9DC64F|80F1    |;
 
          CODE_9DC651:
                       LDA.B $8D                            ;9DC651|A58D    |;
                       CLC                                  ;9DC653|18      |;
                       ADC.B [$8D]                          ;9DC654|678D    |;
                       STA.B $8D                            ;9DC656|858D    |;
                       LDA.B [$8D]                          ;9DC658|A78D    |;
                       STA.B $B7                            ;9DC65A|85B7    |;
                       LDY.W #$0002                         ;9DC65C|A00200  |;
                       LDA.B [$8D],Y                        ;9DC65F|B78D    |;
                       STA.B $B5                            ;9DC661|85B5    |;
                       PLX                                  ;9DC663|FA      |;
                       LDA.W $1D9B                          ;9DC664|AD9B1D  |;
                       STA.B $A5                            ;9DC667|85A5    |;
                       LDA.W #$0000                         ;9DC669|A90000  |;
                       STA.L $7E35F2                        ;9DC66C|8FF2357E|;
                       JSL.L CODE_9F992E                    ;9DC670|222E999F|;
                       LDA.B $A5                            ;9DC674|A5A5    |;
                       STA.B $00                            ;9DC676|8500    |;
                       PLA                                  ;9DC678|68      |;
                       STA.B $8F                            ;9DC679|858F    |;
                       PLA                                  ;9DC67B|68      |;
                       STA.B $8D                            ;9DC67C|858D    |;
                       PLA                                  ;9DC67E|68      |;
                       STA.B $8B                            ;9DC67F|858B    |;
                       PLA                                  ;9DC681|68      |;
                       STA.B $89                            ;9DC682|8589    |;
                       STX.B $87                            ;9DC684|8687    |;
                       LDX.W #$0012                         ;9DC686|A21200  |;
 
          CODE_9DC689:
                       PLA                                  ;9DC689|68      |;
                       STA.B $A5,X                          ;9DC68A|95A5    |;
                       DEX                                  ;9DC68C|CA      |;
                       DEX                                  ;9DC68D|CA      |;
                       BPL CODE_9DC689                      ;9DC68E|10F9    |;
                       LDX.B $87                            ;9DC690|A687    |;
                       LDA.B $00                            ;9DC692|A500    |;
                       STA.B $A5                            ;9DC694|85A5    |;
                       RTL                                  ;9DC696|6B      |;
 
          CODE_9DC697:
                       JSL.L CODE_9F96F7                    ;9DC697|22F7969F|;
                       LDA.W #$0081                         ;9DC69B|A98100  |;
                       STA.B $0E                            ;9DC69E|850E    |;
                       LDA.W #$ABDE                         ;9DC6A0|A9DEAB  |;
                       STA.B $0C                            ;9DC6A3|850C    |;
                       LDA.W #$007F                         ;9DC6A5|A97F00  |;
                       STA.B $12                            ;9DC6A8|8512    |;
                       LDA.W #$7800                         ;9DC6AA|A90078  |;
                       STA.B $10                            ;9DC6AD|8510    |;
                       JSL.L CODE_80C373                    ;9DC6AF|2273C380|;
                       JSL.L CODE_9F9708                    ;9DC6B3|2208979F|;
                       JSL.L CODE_8086A9                    ;9DC6B7|22A98680|;
                       SEP #$20                             ;9DC6BB|E220    |;
                       LDA.B #$00                           ;9DC6BD|A900    |;
                       STA.W $2107                          ;9DC6BF|8D0721  |;
                       LDA.B #$04                           ;9DC6C2|A904    |;
                       STA.W $2108                          ;9DC6C4|8D0821  |;
                       LDA.B #$12                           ;9DC6C7|A912    |;
                       STA.W $210B                          ;9DC6C9|8D0B21  |;
                       LDA.B #$03                           ;9DC6CC|A903    |;
                       STA.W $2101                          ;9DC6CE|8D0121  |;
                       LDA.B #$13                           ;9DC6D1|A913    |;
                       STA.W $212C                          ;9DC6D3|8D2C21  |;
                       REP #$30                             ;9DC6D6|C230    |;
                       LDA.W #$FF00                         ;9DC6D8|A900FF  |;
                       STA.L $7E35AA                        ;9DC6DB|8FAA357E|;
                       STA.L $7E35A8                        ;9DC6DF|8FA8357E|;
                       STZ.W $0CD9                          ;9DC6E3|9CD90C  |;
                       LDA.W #$0000                         ;9DC6E6|A90000  |;
                       STA.L $7E35AC                        ;9DC6E9|8FAC357E|;
                       JSL.L CODE_9DD977                    ;9DC6ED|2277D99D|;
                       JSL.L CODE_9DD992                    ;9DC6F1|2292D99D|;
                       LDA.W #$0096                         ;9DC6F5|A99600  |;
                       STA.B $0E                            ;9DC6F8|850E    |;
                       LDA.W #$A103                         ;9DC6FA|A903A1  |;
                       STA.B $0C                            ;9DC6FD|850C    |;
                       LDA.W #$007F                         ;9DC6FF|A97F00  |;
                       STA.B $12                            ;9DC702|8512    |;
                       LDA.W #$0000                         ;9DC704|A90000  |;
                       STA.B $10                            ;9DC707|8510    |;
                       LDA.L $7E35B6                        ;9DC709|AFB6357E|;
                       ASL A                                ;9DC70D|0A      |;
                       ASL A                                ;9DC70E|0A      |;
                       ASL A                                ;9DC70F|0A      |;
                       ASL A                                ;9DC710|0A      |;
                       ADC.W #$1000                         ;9DC711|690010  |;
                       STA.W $2116                          ;9DC714|8D1621  |;
                       JSL.L CODE_80C373                    ;9DC717|2273C380|;
                       TXA                                  ;9DC71B|8A      |;
                       LSR A                                ;9DC71C|4A      |;
                       LSR A                                ;9DC71D|4A      |;
                       LSR A                                ;9DC71E|4A      |;
                       LSR A                                ;9DC71F|4A      |;
                       LSR A                                ;9DC720|4A      |;
                       STA.B $A5                            ;9DC721|85A5    |;
                       LDA.W #$007F                         ;9DC723|A97F00  |;
                       STA.B $8B                            ;9DC726|858B    |;
                       LDA.W #$0000                         ;9DC728|A90000  |;
                       STA.B $89                            ;9DC72B|8589    |;
                       LDA.W #$0080                         ;9DC72D|A98000  |;
                       STA.B $8F                            ;9DC730|858F    |;
                       LDA.W #$D3D7                         ;9DC732|A9D7D3  |;
                       STA.B $8D                            ;9DC735|858D    |;
                       JSL.L CODE_9B854B                    ;9DC737|224B859B|;
                       LDA.W #$009C                         ;9DC73B|A99C00  |;
                       STA.B $8B                            ;9DC73E|858B    |;
                       LDA.W #$8000                         ;9DC740|A90080  |;
                       STA.B $89                            ;9DC743|8589    |;
                       LDA.W #$0080                         ;9DC745|A98000  |;
                       STA.B $8F                            ;9DC748|858F    |;
                       LDA.W #$D3E7                         ;9DC74A|A9E7D3  |;
                       STA.B $8D                            ;9DC74D|858D    |;
                       LDA.W #$0004                         ;9DC74F|A90400  |;
                       STA.B $A5                            ;9DC752|85A5    |;
                       JSL.L CODE_9B854B                    ;9DC754|224B859B|;
                       LDA.W #$009A                         ;9DC758|A99A00  |;
                       STA.B $0E                            ;9DC75B|850E    |;
                       LDA.W #$C1F3                         ;9DC75D|A9F3C1  |;
                       STA.B $0C                            ;9DC760|850C    |;
                       LDA.W #$007F                         ;9DC762|A97F00  |;
                       STA.B $12                            ;9DC765|8512    |;
                       LDA.W #$0000                         ;9DC767|A90000  |;
                       STA.B $10                            ;9DC76A|8510    |;
                       JSL.L CODE_80C373                    ;9DC76C|2273C380|;
                       TXA                                  ;9DC770|8A      |;
                       LSR A                                ;9DC771|4A      |;
                       LSR A                                ;9DC772|4A      |;
                       LSR A                                ;9DC773|4A      |;
                       LSR A                                ;9DC774|4A      |;
                       LSR A                                ;9DC775|4A      |;
                       ADC.L $7E35CE                        ;9DC776|6FCE357E|;
                       SEC                                  ;9DC77A|38      |;
                       SBC.W #$0100                         ;9DC77B|E90001  |;
                       STA.L $7E35D2                        ;9DC77E|8FD2357E|;
                       LDA.W #$007F                         ;9DC782|A97F00  |;
                       STA.B $0E                            ;9DC785|850E    |;
                       LDA.W #$0000                         ;9DC787|A90000  |;
                       STA.B $0C                            ;9DC78A|850C    |;
                       LDA.L $7E35CE                        ;9DC78C|AFCE357E|;
                       ASL A                                ;9DC790|0A      |;
                       ASL A                                ;9DC791|0A      |;
                       ASL A                                ;9DC792|0A      |;
                       ASL A                                ;9DC793|0A      |;
                       ADC.W #$1000                         ;9DC794|690010  |;
                       TAY                                  ;9DC797|A8      |;
                       JSL.L CODE_80891F                    ;9DC798|221F8980|;
                       LDA.W #$0000                         ;9DC79C|A90000  |;
                       STA.L $7E35B2                        ;9DC79F|8FB2357E|;
                       LDA.W #$0093                         ;9DC7A3|A99300  |;
                       STA.B $0E                            ;9DC7A6|850E    |;
                       LDA.W #$B217                         ;9DC7A8|A917B2  |;
                       STA.B $0C                            ;9DC7AB|850C    |;
                       LDA.W #$007F                         ;9DC7AD|A97F00  |;
                       STA.B $12                            ;9DC7B0|8512    |;
                       LDA.W #$0000                         ;9DC7B2|A90000  |;
                       STA.B $10                            ;9DC7B5|8510    |;
                       JSL.L CODE_80C373                    ;9DC7B7|2273C380|;
                       TXA                                  ;9DC7BB|8A      |;
                       LSR A                                ;9DC7BC|4A      |;
                       LSR A                                ;9DC7BD|4A      |;
                       LSR A                                ;9DC7BE|4A      |;
                       LSR A                                ;9DC7BF|4A      |;
                       LSR A                                ;9DC7C0|4A      |;
                       ADC.L $7E35B2                        ;9DC7C1|6FB2357E|;
                       STA.W $1E85                          ;9DC7C5|8D851E  |;
                       LDA.W #$007F                         ;9DC7C8|A97F00  |;
                       STA.B $0E                            ;9DC7CB|850E    |;
                       LDA.W #$0000                         ;9DC7CD|A90000  |;
                       STA.B $0C                            ;9DC7D0|850C    |;
                       STX.B $10                            ;9DC7D2|8610    |;
                       STX.B $00                            ;9DC7D4|8600    |;
                       JSL.L CODE_9B85C2                    ;9DC7D6|22C2859B|;
                       LDA.B $10                            ;9DC7DA|A510    |;
                       STA.B $0C                            ;9DC7DC|850C    |;
                       TAX                                  ;9DC7DE|AA      |;
                       LDY.W #$1000                         ;9DC7DF|A00010  |;
                       JSL.L CODE_80891F                    ;9DC7E2|221F8980|;
                       LDA.W #$0091                         ;9DC7E6|A99100  |;
                       STA.B $0E                            ;9DC7E9|850E    |;
                       LDA.W #$DDAD                         ;9DC7EB|A9ADDD  |;
                       STA.B $0C                            ;9DC7EE|850C    |;
                       LDA.W #$007F                         ;9DC7F0|A97F00  |;
                       STA.B $12                            ;9DC7F3|8512    |;
                       LDA.W #$0000                         ;9DC7F5|A90000  |;
                       STA.B $10                            ;9DC7F8|8510    |;
                       JSL.L CODE_80C373                    ;9DC7FA|2273C380|;
                       LDA.W #$007F                         ;9DC7FE|A97F00  |;
                       STA.B $0E                            ;9DC801|850E    |;
                       LDA.W #$0000                         ;9DC803|A90000  |;
                       STA.B $0C                            ;9DC806|850C    |;
                       LDY.W #$FFFF                         ;9DC808|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9DC80B|221F8980|;
                       LDA.W #$009A                         ;9DC80F|A99A00  |;
                       STA.B $0E                            ;9DC812|850E    |;
                       LDA.W #$EA15                         ;9DC814|A915EA  |;
                       STA.B $0C                            ;9DC817|850C    |;
                       LDA.W #$007F                         ;9DC819|A97F00  |;
                       STA.B $12                            ;9DC81C|8512    |;
                       LDA.W #$7780                         ;9DC81E|A98077  |;
                       STA.B $10                            ;9DC821|8510    |;
                       JSL.L CODE_80C373                    ;9DC823|2273C380|;
                       LDA.L $7F7780                        ;9DC827|AF80777F|;
                       ASL A                                ;9DC82B|0A      |;
                       STA.B $14                            ;9DC82C|8514    |;
                       LDA.L $7F7782                        ;9DC82E|AF82777F|;
                       TAX                                  ;9DC832|AA      |;
                       LDA.B $10                            ;9DC833|A510    |;
                       CLC                                  ;9DC835|18      |;
                       ADC.W #$0006                         ;9DC836|690600  |;
                       STA.B $10                            ;9DC839|8510    |;
 
          CODE_9DC83B:
                       LDY.B $14                            ;9DC83B|A414    |;
                       DEY                                  ;9DC83D|88      |;
                       DEY                                  ;9DC83E|88      |;
 
          CODE_9DC83F:
                       LDA.B [$10],Y                        ;9DC83F|B710    |;
                       CLC                                  ;9DC841|18      |;
                       ADC.W $1E85                          ;9DC842|6D851E  |;
                       CLC                                  ;9DC845|18      |;
                       ADC.L $7E35AC                        ;9DC846|6FAC357E|;
                       CLC                                  ;9DC84A|18      |;
                       ADC.W #$1000                         ;9DC84B|690010  |;
                       STA.B [$10],Y                        ;9DC84E|9710    |;
                       DEY                                  ;9DC850|88      |;
                       DEY                                  ;9DC851|88      |;
                       BPL CODE_9DC83F                      ;9DC852|10EB    |;
                       LDA.B $10                            ;9DC854|A510    |;
                       CLC                                  ;9DC856|18      |;
                       ADC.B $14                            ;9DC857|6514    |;
                       STA.B $10                            ;9DC859|8510    |;
                       DEX                                  ;9DC85B|CA      |;
                       BNE CODE_9DC83B                      ;9DC85C|D0DD    |;
                       LDA.W #$0096                         ;9DC85E|A99600  |;
                       STA.B $0E                            ;9DC861|850E    |;
                       LDA.W #$C61F                         ;9DC863|A91FC6  |;
                       STA.B $0C                            ;9DC866|850C    |;
                       LDA.W #$007F                         ;9DC868|A97F00  |;
                       STA.B $12                            ;9DC86B|8512    |;
                       LDA.W #$0000                         ;9DC86D|A90000  |;
                       STA.B $10                            ;9DC870|8510    |;
                       JSL.L CODE_80C373                    ;9DC872|2273C380|;
                       LDA.W #$007F                         ;9DC876|A97F00  |;
                       STA.B $0E                            ;9DC879|850E    |;
                       LDA.W #$0000                         ;9DC87B|A90000  |;
                       STA.B $0C                            ;9DC87E|850C    |;
                       LDA.W #$007E                         ;9DC880|A97E00  |;
                       STA.B $12                            ;9DC883|8512    |;
                       LDA.W #$3FF4                         ;9DC885|A9F43F  |;
                       STA.B $10                            ;9DC888|8510    |;
                       LDA.W #$0020                         ;9DC88A|A92000  |;
                       STA.B $24                            ;9DC88D|8524    |;
                       LDA.W #$001C                         ;9DC88F|A91C00  |;
                       STA.B $26                            ;9DC892|8526    |;
                       LDX.W #$0000                         ;9DC894|A20000  |;
                       LDY.W #$0000                         ;9DC897|A00000  |;
                       LDA.L $7E35B2                        ;9DC89A|AFB2357E|;
                       CLC                                  ;9DC89E|18      |;
                       ADC.L $7E35AC                        ;9DC89F|6FAC357E|;
                       CLC                                  ;9DC8A3|18      |;
                       ADC.W #$1000                         ;9DC8A4|690010  |;
                       JSL.L CODE_808E2D                    ;9DC8A7|222D8E80|;
                       LDA.W #$009A                         ;9DC8AB|A99A00  |;
                       STA.B $0E                            ;9DC8AE|850E    |;
                       LDA.W #$DE57                         ;9DC8B0|A957DE  |;
                       STA.B $0C                            ;9DC8B3|850C    |;
                       LDA.W #$007F                         ;9DC8B5|A97F00  |;
                       STA.B $12                            ;9DC8B8|8512    |;
                       LDA.W #$0000                         ;9DC8BA|A90000  |;
                       STA.B $10                            ;9DC8BD|8510    |;
                       JSL.L CODE_80C373                    ;9DC8BF|2273C380|;
                       LDA.W #$007F                         ;9DC8C3|A97F00  |;
                       STA.B $0E                            ;9DC8C6|850E    |;
                       LDA.W #$0000                         ;9DC8C8|A90000  |;
                       STA.B $0C                            ;9DC8CB|850C    |;
                       LDY.W #$0000                         ;9DC8CD|A00000  |;
                       LDX.W #$0040                         ;9DC8D0|A24000  |;
                       JSL.L CODE_9DE0BD                    ;9DC8D3|22BDE09D|;
                       SEP #$20                             ;9DC8D7|E220    |;
                       STZ.W $2121                          ;9DC8D9|9C2121  |;
                       STZ.W $2122                          ;9DC8DC|9C2221  |;
                       STZ.W $2122                          ;9DC8DF|9C2221  |;
                       REP #$20                             ;9DC8E2|C220    |;
                       LDA.W #$0089                         ;9DC8E4|A98900  |;
                       STA.B $0E                            ;9DC8E7|850E    |;
                       LDA.W #$FFC7                         ;9DC8E9|A9C7FF  |;
                       STA.B $0C                            ;9DC8EC|850C    |;
                       LDA.W #$007F                         ;9DC8EE|A97F00  |;
                       STA.B $12                            ;9DC8F1|8512    |;
                       LDA.W #$0000                         ;9DC8F3|A90000  |;
                       STA.B $10                            ;9DC8F6|8510    |;
                       JSL.L CODE_80C373                    ;9DC8F8|2273C380|;
                       LDA.W #$007F                         ;9DC8FC|A97F00  |;
                       STA.B $0E                            ;9DC8FF|850E    |;
                       LDA.W #$0000                         ;9DC901|A90000  |;
                       STA.B $0C                            ;9DC904|850C    |;
                       LDY.W #$0040                         ;9DC906|A04000  |;
                       LDX.W #$0010                         ;9DC909|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9DC90C|22BDE09D|;
                       LDA.W #$009A                         ;9DC910|A99A00  |;
                       STA.B $0E                            ;9DC913|850E    |;
                       LDA.W #$D1B6                         ;9DC915|A9B6D1  |;
                       STA.B $0C                            ;9DC918|850C    |;
                       LDY.W #$0080                         ;9DC91A|A08000  |;
                       LDX.W #$0010                         ;9DC91D|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9DC920|22BDE09D|;
                       LDA.W #$0000                         ;9DC924|A90000  |;
                       STA.L $7F7500                        ;9DC927|8F00757F|;
                       JSL.L CODE_9DE0D4                    ;9DC92B|22D4E09D|;
                       LDA.B $8F                            ;9DC92F|A58F    |;
                       PHA                                  ;9DC931|48      |;
                       LDA.B $8D                            ;9DC932|A58D    |;
                       PHA                                  ;9DC934|48      |;
                       LDA.W #$009C                         ;9DC935|A99C00  |;
                       STA.B $8F                            ;9DC938|858F    |;
                       LDA.W #$F6F2                         ;9DC93A|A9F2F6  |;
                       STA.B $8D                            ;9DC93D|858D    |;
                       JSL.L CODE_9EC7BE                    ;9DC93F|22BEC79E|;
                       PLA                                  ;9DC943|68      |;
                       STA.B $8D                            ;9DC944|858D    |;
                       PLA                                  ;9DC946|68      |;
                       STA.B $8F                            ;9DC947|858F    |;
                       JSL.L CODE_9DD94D                    ;9DC949|224DD99D|;
                       LDX.W #$0000                         ;9DC94D|A20000  |;
                       LDY.W #$0180                         ;9DC950|A08001  |;
                       LDA.W #$6000                         ;9DC953|A90060  |;
                       JSL.L CODE_80AEE1                    ;9DC956|22E1AE80|;
                       JSL.L CODE_80AF7B                    ;9DC95A|227BAF80|;
                       JSL.L CODE_808583                    ;9DC95E|22838580|;
                       JSL.L CODE_80AFDE                    ;9DC962|22DEAF80|;
                       LDA.W #$0004                         ;9DC966|A90400  |;
                       STA.W $07D6                          ;9DC969|8DD607  |;
                       LDA.W #$FFFB                         ;9DC96C|A9FBFF  |;
                       STA.W $07D8                          ;9DC96F|8DD807  |;
                       RTL                                  ;9DC972|6B      |;
 
          CODE_9DC973:
                       TAY                                  ;9DC973|A8      |;
                       LDA.W #$009D                         ;9DC974|A99D00  |;
                       STA.B $8F                            ;9DC977|858F    |;
                       LDA.W #$C9A2                         ;9DC979|A9A2C9  |;
                       STA.B $8D                            ;9DC97C|858D    |;
                       LDA.B [$8D],Y                        ;9DC97E|B78D    |;
                       AND.W #$00FF                         ;9DC980|29FF00  |;
                       PHA                                  ;9DC983|48      |;
                       LDY.B zpCurntTeamLoopVal             ;9DC984|A491    |;
                       LDA.W #$009C                         ;9DC986|A99C00  |;
                       STA.B $8F                            ;9DC989|858F    |;
                       LDA.W $1CDC,Y                        ;9DC98B|B9DC1C  |;
                       STA.B $8D                            ;9DC98E|858D    |;
                       LDY.W #$000C                         ;9DC990|A00C00  |;
                       CLC                                  ;9DC993|18      |;
                       ADC.B [$8D],Y                        ;9DC994|778D    |;
                       STA.B $8D                            ;9DC996|858D    |;
                       PLY                                  ;9DC998|7A      |;
                       LDA.B [$8D],Y                        ;9DC999|B78D    |;
                       AND.W #$00FF                         ;9DC99B|29FF00  |;
                       DEC A                                ;9DC99E|3A      |;
                       STA.B $A5                            ;9DC99F|85A5    |;
                       RTL                                  ;9DC9A1|6B      |;
                       db $04,$03,$05,$01,$02,$00           ;9DC9A2|        |;
 
          CODE_9DC9A8:
                       STA.B $A5                            ;9DC9A8|85A5    |;
                       LDA.L $7E3474                        ;9DC9AA|AF74347E|;
                       BEQ CODE_9DC9B3                      ;9DC9AE|F003    |;
                       JMP.W CODE_9DCB9F                    ;9DC9B0|4C9FCB  |;
 
          CODE_9DC9B3:
                       PHY                                  ;9DC9B3|5A      |;
                       PHX                                  ;9DC9B4|DA      |;
                       LDA.B zpCurntTeamLoopVal             ;9DC9B5|A591    |;
                       BEQ CODE_9DC9C1                      ;9DC9B7|F008    |;
                       LDA.W #$2400                         ;9DC9B9|A90024  |;
                       STA.W $1E87                          ;9DC9BC|8D871E  |;
                       BRA CODE_9DC9C7                      ;9DC9BF|8006    |;
 
          CODE_9DC9C1:
                       LDA.W #$3400                         ;9DC9C1|A90034  |;
                       STA.W $1E87                          ;9DC9C4|8D871E  |;
 
          CODE_9DC9C7:
                       LDA.B $A5                            ;9DC9C7|A5A5    |;
                       LDY.B zpCurntTeamLoopVal             ;9DC9C9|A491    |;
                       STA.B $A5                            ;9DC9CB|85A5    |;
                       LDA.W $1C98,Y                        ;9DC9CD|B9981C  |;
                       LDX.W #$001A                         ;9DC9D0|A21A00  |;
                       JSL.L CODE_808F4C                    ;9DC9D3|224C8F80|;
                       CLC                                  ;9DC9D7|18      |;
                       ADC.B $A5                            ;9DC9D8|65A5    |;
                       ASL A                                ;9DC9DA|0A      |;
                       ASL A                                ;9DC9DB|0A      |;
                       TAX                                  ;9DC9DC|AA      |;
                       LDA.L UNREACH_9DCD53,X               ;9DC9DD|BF53CD9D|;
                       STA.B $0C                            ;9DC9E1|850C    |;
                       LDA.L UNREACH_9DCD55,X               ;9DC9E3|BF55CD9D|;
                       STA.B $0E                            ;9DC9E7|850E    |;
                       LDA.W #$007F                         ;9DC9E9|A97F00  |;
                       STA.B $12                            ;9DC9EC|8512    |;
                       LDA.W #$0000                         ;9DC9EE|A90000  |;
                       STA.B $10                            ;9DC9F1|8510    |;
                       JSL.L CODE_80C373                    ;9DC9F3|2273C380|;
                       STX.B $00                            ;9DC9F7|8600    |;
                       LDA.B zpCurntTeamLoopVal             ;9DC9F9|A591    |;
                       BEQ CODE_9DCA08                      ;9DC9FB|F00B    |;
                       LDA.W #$6900                         ;9DC9FD|A90069  |;
                       STA.B $10                            ;9DCA00|8510    |;
                       STA.L $7E3472                        ;9DCA02|8F72347E|;
                       BRA CODE_9DCA11                      ;9DCA06|8009    |;
 
          CODE_9DCA08:
                       LDA.W #$6F00                         ;9DCA08|A9006F  |;
                       STA.B $10                            ;9DCA0B|8510    |;
                       STA.L $7E3470                        ;9DCA0D|8F70347E|;
 
          CODE_9DCA11:
                       LDA.W #$007F                         ;9DCA11|A97F00  |;
                       STA.B $0E                            ;9DCA14|850E    |;
                       LDA.W #$0000                         ;9DCA16|A90000  |;
                       STA.B $0C                            ;9DCA19|850C    |;
                       JSL.L CODE_9B85C2                    ;9DCA1B|22C2859B|;
                       JSL.L CODE_9DCB1C                    ;9DCA1F|221CCB9D|;
                       BNE CODE_9DCA56                      ;9DCA23|D031    |;
                       LDA.W #$0092                         ;9DCA25|A99200  |;
                       STA.B $0E                            ;9DCA28|850E    |;
                       LDA.W #$FFB0                         ;9DCA2A|A9B0FF  |;
                       STA.B $0C                            ;9DCA2D|850C    |;
                       LDA.W #$007E                         ;9DCA2F|A97E00  |;
                       STA.B $12                            ;9DCA32|8512    |;
                       LDA.W #$37F4                         ;9DCA34|A9F437  |;
                       STA.B $10                            ;9DCA37|8510    |;
                       LDA.W #$0020                         ;9DCA39|A92000  |;
                       STA.B $24                            ;9DCA3C|8524    |;
                       LDA.L $7E35D2                        ;9DCA3E|AFD2357E|;
                       CLC                                  ;9DCA42|18      |;
                       ADC.W $1E87                          ;9DCA43|6D871E  |;
                       LDY.B zpCurntTeamLoopVal             ;9DCA46|A491    |;
                       BEQ CODE_9DCA4E                      ;9DCA48|F004    |;
                       CLC                                  ;9DCA4A|18      |;
                       ADC.W #$0030                         ;9DCA4B|693000  |;
 
          CODE_9DCA4E:
                       PLX                                  ;9DCA4E|FA      |;
                       PLY                                  ;9DCA4F|7A      |;
                       JSL.L CODE_808E2D                    ;9DCA50|222D8E80|;
                       BRA CODE_9DCA85                      ;9DCA54|802F    |;
 
          CODE_9DCA56:
                       LDA.W #$0092                         ;9DCA56|A99200  |;
                       STA.B $0E                            ;9DCA59|850E    |;
                       LDA.W #$FFB0                         ;9DCA5B|A9B0FF  |;
                       STA.B $0C                            ;9DCA5E|850C    |;
                       LDA.W #$007E                         ;9DCA60|A97E00  |;
                       STA.B $12                            ;9DCA63|8512    |;
                       LDA.W #$37F4                         ;9DCA65|A9F437  |;
                       STA.B $10                            ;9DCA68|8510    |;
                       LDA.W #$0020                         ;9DCA6A|A92000  |;
                       STA.B $24                            ;9DCA6D|8524    |;
                       LDA.L $7E35D2                        ;9DCA6F|AFD2357E|;
                       CLC                                  ;9DCA73|18      |;
                       ADC.W $1E87                          ;9DCA74|6D871E  |;
                       LDY.B zpCurntTeamLoopVal             ;9DCA77|A491    |;
                       BEQ CODE_9DCA7F                      ;9DCA79|F004    |;
                       CLC                                  ;9DCA7B|18      |;
                       ADC.W #$0030                         ;9DCA7C|693000  |;
 
          CODE_9DCA7F:
                       PLX                                  ;9DCA7F|FA      |;
                       PLY                                  ;9DCA80|7A      |;
                       JSL.L CODE_9DCAB7                    ;9DCA81|22B7CA9D|;
 
          CODE_9DCA85:
                       LDY.B zpCurntTeamLoopVal             ;9DCA85|A491    |;
                       LDA.W $1C98,Y                        ;9DCA87|B9981C  |;
                       ASL A                                ;9DCA8A|0A      |;
                       ASL A                                ;9DCA8B|0A      |;
                       CLC                                  ;9DCA8C|18      |;
                       ADC.W #$D8B3                         ;9DCA8D|69B3D8  |;
                       STA.B $8D                            ;9DCA90|858D    |;
                       LDA.W #$009D                         ;9DCA92|A99D00  |;
                       STA.B $8F                            ;9DCA95|858F    |;
                       LDA.B [$8D]                          ;9DCA97|A78D    |;
                       STA.B $0C                            ;9DCA99|850C    |;
                       INC.B $8D                            ;9DCA9B|E68D    |;
                       INC.B $8D                            ;9DCA9D|E68D    |;
                       LDA.B [$8D]                          ;9DCA9F|A78D    |;
                       STA.B $0E                            ;9DCAA1|850E    |;
                       LDA.B zpCurntTeamLoopVal             ;9DCAA3|A591    |;
                       BEQ CODE_9DCAAC                      ;9DCAA5|F005    |;
                       LDY.W #$0010                         ;9DCAA7|A01000  |;
                       BRA CODE_9DCAAF                      ;9DCAAA|8003    |;
 
          CODE_9DCAAC:
                       LDY.W #$0050                         ;9DCAAC|A05000  |;
 
          CODE_9DCAAF:
                       LDX.W #$0010                         ;9DCAAF|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9DCAB2|22BDE09D|;
                       RTL                                  ;9DCAB6|6B      |;
 
          CODE_9DCAB7:
                       STA.B $26                            ;9DCAB7|8526    |;
                       LDA.B $12                            ;9DCAB9|A512    |;
                       STA.B $16                            ;9DCABB|8516    |;
                       STX.B $1C                            ;9DCABD|861C    |;
                       TYA                                  ;9DCABF|98      |;
                       ASL A                                ;9DCAC0|0A      |;
                       LDX.B $24                            ;9DCAC1|A624    |;
                       JSL.L CODE_809099                    ;9DCAC3|22999080|;
                       LDA.B $1C                            ;9DCAC7|A51C    |;
                       ASL A                                ;9DCAC9|0A      |;
                       CLC                                  ;9DCACA|18      |;
                       ADC.B $08                            ;9DCACB|6508    |;
                       ADC.B $10                            ;9DCACD|6510    |;
                       STA.B $10                            ;9DCACF|8510    |;
                       LDY.W #$0000                         ;9DCAD1|A00000  |;
                       LDA.B [$0C],Y                        ;9DCAD4|B70C    |;
                       STA.B $18                            ;9DCAD6|8518    |;
                       INY                                  ;9DCAD8|C8      |;
                       INY                                  ;9DCAD9|C8      |;
                       LDA.B [$0C],Y                        ;9DCADA|B70C    |;
                       STA.B $1A                            ;9DCADC|851A    |;
                       LDA.B $0C                            ;9DCADE|A50C    |;
                       CLC                                  ;9DCAE0|18      |;
                       ADC.W #$0006                         ;9DCAE1|690600  |;
                       STA.B $0C                            ;9DCAE4|850C    |;
 
          CODE_9DCAE6:
                       LDX.B $18                            ;9DCAE6|A618    |;
                       LDY.W #$0000                         ;9DCAE8|A00000  |;
 
          CODE_9DCAEB:
                       TYA                                  ;9DCAEB|98      |;
                       LSR A                                ;9DCAEC|4A      |;
                       EOR.W #$FFFF                         ;9DCAED|49FFFF  |;
                       INC A                                ;9DCAF0|1A      |;
                       CLC                                  ;9DCAF1|18      |;
                       ADC.B $18                            ;9DCAF2|6518    |;
                       DEC A                                ;9DCAF4|3A      |;
                       ASL A                                ;9DCAF5|0A      |;
                       ADC.B $10                            ;9DCAF6|6510    |;
                       STA.B $14                            ;9DCAF8|8514    |;
                       LDA.B [$0C],Y                        ;9DCAFA|B70C    |;
                       CLC                                  ;9DCAFC|18      |;
                       ADC.B $26                            ;9DCAFD|6526    |;
                       ORA.W #$4000                         ;9DCAFF|090040  |;
                       STA.B [$14]                          ;9DCB02|8714    |;
                       INY                                  ;9DCB04|C8      |;
                       INY                                  ;9DCB05|C8      |;
                       DEX                                  ;9DCB06|CA      |;
                       BNE CODE_9DCAEB                      ;9DCB07|D0E2    |;
                       LDA.B $24                            ;9DCB09|A524    |;
                       ASL A                                ;9DCB0B|0A      |;
                       ADC.B $10                            ;9DCB0C|6510    |;
                       STA.B $10                            ;9DCB0E|8510    |;
                       LDA.B $18                            ;9DCB10|A518    |;
                       ASL A                                ;9DCB12|0A      |;
                       ADC.B $0C                            ;9DCB13|650C    |;
                       STA.B $0C                            ;9DCB15|850C    |;
                       DEC.B $1A                            ;9DCB17|C61A    |;
                       BNE CODE_9DCAE6                      ;9DCB19|D0CB    |;
                       RTL                                  ;9DCB1B|6B      |;
 
          CODE_9DCB1C:
                       JSL.L CODE_9DCB72                    ;9DCB1C|2272CB9D|;
                       BEQ CODE_9DCB36                      ;9DCB20|F014    |;
                       JSL.L CODE_9DCB37                    ;9DCB22|2237CB9D|;
                       STA.B $14                            ;9DCB26|8514    |;
                       JSL.L CODE_9DCB53                    ;9DCB28|2253CB9D|;
                       BNE CODE_9DCB31                      ;9DCB2C|D003    |;
                       LDA.B $14                            ;9DCB2E|A514    |;
                       RTL                                  ;9DCB30|6B      |;
 
          CODE_9DCB31:
                       LDA.B $14                            ;9DCB31|A514    |;
                       EOR.W #$0001                         ;9DCB33|490100  |;
 
          CODE_9DCB36:
                       RTL                                  ;9DCB36|6B      |;
 
          CODE_9DCB37:
                       JSL.L CODE_9DCB53                    ;9DCB37|2253CB9D|;
                       BNE CODE_9DCB44                      ;9DCB3B|D007    |;
                       LDA.W #$0005                         ;9DCB3D|A90500  |;
                       STA.B $A9                            ;9DCB40|85A9    |;
                       BRA CODE_9DCB49                      ;9DCB42|8005    |;
 
          CODE_9DCB44:
                       LDA.W #$0004                         ;9DCB44|A90400  |;
                       STA.B $A9                            ;9DCB47|85A9    |;
 
          CODE_9DCB49:
                       JSL.L CODE_9DC561                    ;9DCB49|2261C59D|;
                       LDA.B $A5                            ;9DCB4D|A5A5    |;
                       AND.W #$0001                         ;9DCB4F|290100  |;
                       RTL                                  ;9DCB52|6B      |;
 
          CODE_9DCB53:
                       LDA.W #$0080                         ;9DCB53|A98000  |;
                       STA.B $8F                            ;9DCB56|858F    |;
                       LDA.W #$D79B                         ;9DCB58|A99BD7  |;
                       STA.B $8D                            ;9DCB5B|858D    |;
                       STZ.B $08                            ;9DCB5D|6408    |;
                       JSL.L CODE_9ED300                    ;9DCB5F|2200D39E|;
                       LDA.W $1D9B                          ;9DCB63|AD9B1D  |;
                       CMP.B $A5                            ;9DCB66|C5A5    |;
                       BPL CODE_9DCB6E                      ;9DCB68|1004    |;
                       LDA.W #$0001                         ;9DCB6A|A90100  |;
                       RTL                                  ;9DCB6D|6B      |;
 
          CODE_9DCB6E:
                       LDA.W #$0000                         ;9DCB6E|A90000  |;
                       RTL                                  ;9DCB71|6B      |;
 
          CODE_9DCB72:
                       LDY.B zpCurntTeamLoopVal             ;9DCB72|A491    |;
                       LDA.W #$009C                         ;9DCB74|A99C00  |;
                       STA.B $97                            ;9DCB77|8597    |;
                       LDA.W $1CDC,Y                        ;9DCB79|B9DC1C  |;
                       STA.B $95                            ;9DCB7C|8595    |;
                       LDY.W #$000C                         ;9DCB7E|A00C00  |;
                       CLC                                  ;9DCB81|18      |;
                       ADC.B [$95],Y                        ;9DCB82|7795    |;
                       STA.B $95                            ;9DCB84|8595    |;
                       LDY.W #$0005                         ;9DCB86|A00500  |;
 
          CODE_9DCB89:
                       LDA.B [$95],Y                        ;9DCB89|B795    |;
                       AND.W #$00FF                         ;9DCB8B|29FF00  |;
                       DEC A                                ;9DCB8E|3A      |;
                       CMP.W $1D9B                          ;9DCB8F|CD9B1D  |;
                       BEQ CODE_9DCB9B                      ;9DCB92|F007    |;
                       DEY                                  ;9DCB94|88      |;
                       BPL CODE_9DCB89                      ;9DCB95|10F2    |;
                       LDA.W #$0001                         ;9DCB97|A90100  |;
                       RTL                                  ;9DCB9A|6B      |;
 
          CODE_9DCB9B:
                       LDA.W #$0000                         ;9DCB9B|A90000  |;
                       RTL                                  ;9DCB9E|6B      |;
 
          CODE_9DCB9F:
                       PHY                                  ;9DCB9F|5A      |;
                       PHX                                  ;9DCBA0|DA      |;
                       LDX.B zpCurntTeamLoopVal             ;9DCBA1|A691    |;
                       JSL.L CODE_9DCC36                    ;9DCBA3|2236CC9D|;
                       LDA.B $A5                            ;9DCBA7|A5A5    |;
                       ASL A                                ;9DCBA9|0A      |;
                       TAX                                  ;9DCBAA|AA      |;
                       LDA.B zpCurntTeamLoopVal             ;9DCBAB|A591    |;
                       BEQ CODE_9DCBC3                      ;9DCBAD|F014    |;
                       LDA.W #$2400                         ;9DCBAF|A90024  |;
                       STA.W $1E87                          ;9DCBB2|8D871E  |;
                       LDA.W #$2D00                         ;9DCBB5|A9002D  |;
                       CLC                                  ;9DCBB8|18      |;
                       ADC.L DATA8_9DCCAE,X                 ;9DCBB9|7FAECC9D|;
                       STA.L $7E3472                        ;9DCBBD|8F72347E|;
                       BRA CODE_9DCBD5                      ;9DCBC1|8012    |;
 
          CODE_9DCBC3:
                       LDA.W #$3400                         ;9DCBC3|A90034  |;
                       STA.W $1E87                          ;9DCBC6|8D871E  |;
                       LDA.W #$5100                         ;9DCBC9|A90051  |;
                       CLC                                  ;9DCBCC|18      |;
                       ADC.L DATA8_9DCCAE,X                 ;9DCBCD|7FAECC9D|;
                       STA.L $7E3470                        ;9DCBD1|8F70347E|;
 
          CODE_9DCBD5:
                       LDA.W #$0092                         ;9DCBD5|A99200  |;
                       STA.B $0E                            ;9DCBD8|850E    |;
                       LDA.W #$FFB0                         ;9DCBDA|A9B0FF  |;
                       STA.B $0C                            ;9DCBDD|850C    |;
                       LDA.W #$007E                         ;9DCBDF|A97E00  |;
                       STA.B $12                            ;9DCBE2|8512    |;
                       LDA.W #$37F4                         ;9DCBE4|A9F437  |;
                       STA.B $10                            ;9DCBE7|8510    |;
                       LDA.W #$0020                         ;9DCBE9|A92000  |;
                       STA.B $24                            ;9DCBEC|8524    |;
                       LDA.L $7E35D2                        ;9DCBEE|AFD2357E|;
                       CLC                                  ;9DCBF2|18      |;
                       ADC.W $1E87                          ;9DCBF3|6D871E  |;
                       LDY.B zpCurntTeamLoopVal             ;9DCBF6|A491    |;
                       BEQ CODE_9DCBFE                      ;9DCBF8|F004    |;
                       CLC                                  ;9DCBFA|18      |;
                       ADC.W #$0030                         ;9DCBFB|693000  |;
 
          CODE_9DCBFE:
                       PLX                                  ;9DCBFE|FA      |;
                       PLY                                  ;9DCBFF|7A      |;
                       JSL.L CODE_808E2D                    ;9DCC00|222D8E80|;
                       LDY.B zpCurntTeamLoopVal             ;9DCC04|A491    |;
                       LDA.W $1C98,Y                        ;9DCC06|B9981C  |;
                       ASL A                                ;9DCC09|0A      |;
                       ASL A                                ;9DCC0A|0A      |;
                       CLC                                  ;9DCC0B|18      |;
                       ADC.W #$D8B3                         ;9DCC0C|69B3D8  |;
                       STA.B $8D                            ;9DCC0F|858D    |;
                       LDA.W #$009D                         ;9DCC11|A99D00  |;
                       STA.B $8F                            ;9DCC14|858F    |;
                       LDA.B [$8D]                          ;9DCC16|A78D    |;
                       STA.B $0C                            ;9DCC18|850C    |;
                       INC.B $8D                            ;9DCC1A|E68D    |;
                       INC.B $8D                            ;9DCC1C|E68D    |;
                       LDA.B [$8D]                          ;9DCC1E|A78D    |;
                       STA.B $0E                            ;9DCC20|850E    |;
                       LDA.B zpCurntTeamLoopVal             ;9DCC22|A591    |;
                       BEQ CODE_9DCC2B                      ;9DCC24|F005    |;
                       LDY.W #$0010                         ;9DCC26|A01000  |;
                       BRA CODE_9DCC2E                      ;9DCC29|8003    |;
 
          CODE_9DCC2B:
                       LDY.W #$0050                         ;9DCC2B|A05000  |;
 
          CODE_9DCC2E:
                       LDX.W #$0010                         ;9DCC2E|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9DCC31|22BDE09D|;
                       RTL                                  ;9DCC35|6B      |;
 
          CODE_9DCC36:
                       STX.B zpCurntTeamLoopVal             ;9DCC36|8691    |;
                       LDA.W $1C98,X                        ;9DCC38|BD981C  |;
                       CMP.L $7E346C,X                      ;9DCC3B|DF6C347E|;
                       BNE CODE_9DCC42                      ;9DCC3F|D001    |;
                       RTL                                  ;9DCC41|6B      |;
 
          CODE_9DCC42:
                       LDA.B $A5                            ;9DCC42|A5A5    |;
                       PHA                                  ;9DCC44|48      |;
                       LDX.W #$000A                         ;9DCC45|A20A00  |;
 
          CODE_9DCC48:
                       PHX                                  ;9DCC48|DA      |;
                       TXA                                  ;9DCC49|8A      |;
                       LSR A                                ;9DCC4A|4A      |;
                       JSL.L CODE_9DC973                    ;9DCC4B|2273C99D|;
                       LDX.B zpCurntTeamLoopVal             ;9DCC4F|A691    |;
                       LDA.W $1C98,X                        ;9DCC51|BD981C  |;
                       STA.L $7E346C,X                      ;9DCC54|9F6C347E|;
                       LDX.W #$001A                         ;9DCC58|A21A00  |;
                       JSL.L CODE_808F4C                    ;9DCC5B|224C8F80|;
                       CLC                                  ;9DCC5F|18      |;
                       ADC.B $A5                            ;9DCC60|65A5    |;
                       ASL A                                ;9DCC62|0A      |;
                       ASL A                                ;9DCC63|0A      |;
                       TAX                                  ;9DCC64|AA      |;
                       LDA.L UNREACH_9DCD53,X               ;9DCC65|BF53CD9D|;
                       STA.B $0C                            ;9DCC69|850C    |;
                       LDA.L UNREACH_9DCD55,X               ;9DCC6B|BF55CD9D|;
                       STA.B $0E                            ;9DCC6F|850E    |;
                       LDA.W #$007F                         ;9DCC71|A97F00  |;
                       STA.B $12                            ;9DCC74|8512    |;
                       LDA.W #$0000                         ;9DCC76|A90000  |;
                       STA.B $10                            ;9DCC79|8510    |;
                       JSL.L CODE_80C373                    ;9DCC7B|2273C380|;
                       STX.B $00                            ;9DCC7F|8600    |;
                       LDA.B $01,S                          ;9DCC81|A301    |;
                       TAX                                  ;9DCC83|AA      |;
                       LDA.B zpCurntTeamLoopVal             ;9DCC84|A591    |;
                       BEQ CODE_9DCC8D                      ;9DCC86|F005    |;
                       LDA.W #$2D00                         ;9DCC88|A9002D  |;
                       BRA CODE_9DCC90                      ;9DCC8B|8003    |;
 
          CODE_9DCC8D:
                       LDA.W #$5100                         ;9DCC8D|A90051  |;
 
          CODE_9DCC90:
                       CLC                                  ;9DCC90|18      |;
                       ADC.L DATA8_9DCCAE,X                 ;9DCC91|7FAECC9D|;
                       STA.B $10                            ;9DCC95|8510    |;
                       LDA.W #$007F                         ;9DCC97|A97F00  |;
                       STA.B $0E                            ;9DCC9A|850E    |;
                       LDA.W #$0000                         ;9DCC9C|A90000  |;
                       STA.B $0C                            ;9DCC9F|850C    |;
                       JSL.L CODE_9B85C2                    ;9DCCA1|22C2859B|;
                       PLX                                  ;9DCCA5|FA      |;
                       DEX                                  ;9DCCA6|CA      |;
                       DEX                                  ;9DCCA7|CA      |;
                       BPL CODE_9DCC48                      ;9DCCA8|109E    |;
                       PLA                                  ;9DCCAA|68      |;
                       STA.B $A5                            ;9DCCAB|85A5    |;
                       RTL                                  ;9DCCAD|6B      |;
 
         DATA8_9DCCAE:
                       db $00,$00,$00,$06,$00,$0C,$00,$12   ;9DCCAE|        |;
                       db $00,$18,$00,$1E                   ;9DCCB6|        |;
 
          CODE_9DCCBA:
                       LDA.W #$007E                         ;9DCCBA|A97E00  |;
                       STA.B $12                            ;9DCCBD|8512    |;
                       LDA.W #$37F4                         ;9DCCBF|A9F437  |;
                       STA.B $10                            ;9DCCC2|8510    |;
                       STX.B $14                            ;9DCCC4|8614    |;
                       TYA                                  ;9DCCC6|98      |;
                       ASL A                                ;9DCCC7|0A      |;
                       ASL A                                ;9DCCC8|0A      |;
                       ASL A                                ;9DCCC9|0A      |;
                       ASL A                                ;9DCCCA|0A      |;
                       ASL A                                ;9DCCCB|0A      |;
                       ADC.B $14                            ;9DCCCC|6514    |;
                       ASL A                                ;9DCCCE|0A      |;
                       ADC.B $10                            ;9DCCCF|6510    |;
                       STA.B $10                            ;9DCCD1|8510    |;
                       LDA.W #$0006                         ;9DCCD3|A90600  |;
                       STA.B $14                            ;9DCCD6|8514    |;
 
          CODE_9DCCD8:
                       LDA.L $7E35D0                        ;9DCCD8|AFD0357E|;
                       CLC                                  ;9DCCDC|18      |;
                       ADC.L $7E35AA                        ;9DCCDD|6FAA357E|;
                       LDX.W #$000C                         ;9DCCE1|A20C00  |;
                       JSL.L CODE_808EDF                    ;9DCCE4|22DF8E80|;
                       LDA.B $10                            ;9DCCE8|A510    |;
                       CLC                                  ;9DCCEA|18      |;
                       ADC.W #$0040                         ;9DCCEB|694000  |;
                       STA.B $10                            ;9DCCEE|8510    |;
                       DEC.B $14                            ;9DCCF0|C614    |;
                       BNE CODE_9DCCD8                      ;9DCCF2|D0E4    |;
                       RTL                                  ;9DCCF4|6B      |;
 
          CODE_9DCCF5:
                       STA.W $1DED                          ;9DCCF5|8DED1D  |;
                       STX.W $1DEF                          ;9DCCF8|8EEF1D  |;
                       LDA.W #$00C4                         ;9DCCFB|A9C400  |;
                       STA.W $07D4                          ;9DCCFE|8DD407  |;
                       LDA.W #$CD0F                         ;9DCD01|A90FCD  |;
                       LDX.W #$009D                         ;9DCD04|A29D00  |;
                       LDY.W $1DED                          ;9DCD07|ACED1D  |;
                       JSL.L CODE_808520                    ;9DCD0A|22208580|;
                       RTL                                  ;9DCD0E|6B      |;
                       SEP #$20                             ;9DCD0F|E220    |;
                       LDA.B #$FC                           ;9DCD11|A9FC    |;
                       STA.W $210D                          ;9DCD13|8D0D21  |;
                       LDA.B #$FF                           ;9DCD16|A9FF    |;
                       STA.W $210D                          ;9DCD18|8D0D21  |;
                       LDA.B #$FB                           ;9DCD1B|A9FB    |;
                       STA.W $210E                          ;9DCD1D|8D0E21  |;
                       LDA.B #$FF                           ;9DCD20|A9FF    |;
                       STA.W $210E                          ;9DCD22|8D0E21  |;
                       REP #$20                             ;9DCD25|C220    |;
                       LDA.W #$CD34                         ;9DCD27|A934CD  |;
                       STA.W $078F                          ;9DCD2A|8D8F07  |;
                       LDA.W $1DEF                          ;9DCD2D|ADEF1D  |;
                       STA.W $4209                          ;9DCD30|8D0942  |;
                       RTL                                  ;9DCD33|6B      |;
                       SEP #$20                             ;9DCD34|E220    |;
                       STZ.W $210D                          ;9DCD36|9C0D21  |;
                       STZ.W $210D                          ;9DCD39|9C0D21  |;
                       LDA.B #$FF                           ;9DCD3C|A9FF    |;
                       STA.W $210E                          ;9DCD3E|8D0E21  |;
                       STA.W $210E                          ;9DCD41|8D0E21  |;
                       REP #$20                             ;9DCD44|C220    |;
                       LDA.W #$CD0F                         ;9DCD46|A90FCD  |;
                       STA.W $078F                          ;9DCD49|8D8F07  |;
                       LDA.W $1DED                          ;9DCD4C|ADED1D  |;
                       STA.W $4209                          ;9DCD4F|8D0942  |;
                       RTL                                  ;9DCD52|6B      |;
 
       UNREACH_9DCD53:
                       db $36,$AC                           ;9DCD53|        |;
 
       UNREACH_9DCD55:
                       db $99,$00,$4E,$C6,$99,$00,$E8,$E1   ;9DCD55|        |;
                       db $99,$00,$31,$99,$97,$00,$3D,$B1   ;9DCD5D|        |;
                       db $9A,$00,$F3,$BC,$98,$00,$74,$FE   ;9DCD65|        |;
                       db $8F,$00,$9D,$D1,$98,$00,$E8,$E1   ;9DCD6D|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCD75|        |;
                       db $9A,$00,$0A,$CD,$98,$00,$74,$FE   ;9DCD7D|        |;
                       db $8F,$00,$D5,$BF,$99,$00,$E8,$E1   ;9DCD85|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCD8D|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCD95|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCD9D|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCDA5|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCDAD|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$8A,$F2   ;9DCDB5|        |;
                       db $97,$00,$4E,$C6,$99,$00,$14,$F8   ;9DCDBD|        |;
                       db $98,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCDC5|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$CD,$E3   ;9DCDCD|        |;
                       db $98,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCDD5|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCDDD|        |;
                       db $99,$00,$67,$98,$99,$00,$74,$FE   ;9DCDE5|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCDED|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCDF5|        |;
                       db $9A,$00,$00,$80,$99,$00,$02,$D1   ;9DCDFD|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCE05|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCE0D|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCE15|        |;
                       db $99,$00,$74,$FE,$8F,$00,$5D,$8D   ;9DCE1D|        |;
                       db $99,$00,$4E,$C6,$99,$00,$4E,$C6   ;9DCE25|        |;
                       db $99,$00,$C7,$B2,$99,$00,$18,$9A   ;9DCE2D|        |;
                       db $98,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCE35|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCE3D|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCE45|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$FE,$C1   ;9DCE4D|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCE55|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$CD,$A5   ;9DCE5D|        |;
                       db $98,$00,$6A,$B1,$98,$00,$74,$FE   ;9DCE65|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCE6D|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCE75|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCE7D|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$0D,$BA   ;9DCE85|        |;
                       db $97,$00,$4E,$C6,$99,$00,$BA,$CC   ;9DCE8D|        |;
                       db $99,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCE95|        |;
                       db $8F,$00,$05,$AA,$99,$00,$3D,$B1   ;9DCE9D|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCEA5|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$52,$EB   ;9DCEAD|        |;
                       db $97,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCEB5|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$95,$8E   ;9DCEBD|        |;
                       db $97,$00,$E8,$E8,$97,$00,$E8,$E1   ;9DCEC5|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCECD|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCED5|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCEDD|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCEE5|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$00,$A6   ;9DCEED|        |;
                       db $97,$00,$4E,$C6,$99,$00,$95,$EA   ;9DCEF5|        |;
                       db $98,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCEFD|        |;
                       db $99,$00,$74,$FE,$8F,$00,$21,$A8   ;9DCF05|        |;
                       db $98,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCF0D|        |;
                       db $99,$00,$74,$FE,$8F,$00,$F3,$CD   ;9DCF15|        |;
                       db $97,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCF1D|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCF25|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$F7,$B4   ;9DCF2D|        |;
                       db $99,$00,$25,$8B,$99,$00,$74,$FE   ;9DCF35|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCF3D|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCF45|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCF4D|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$81,$FD   ;9DCF55|        |;
                       db $96,$00,$4E,$C6,$99,$00,$8B,$AD   ;9DCF5D|        |;
                       db $97,$00,$2C,$8C,$9A,$00,$74,$FE   ;9DCF65|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCF6D|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCF75|        |;
                       db $9A,$00,$23,$F0,$97,$00,$E8,$E1   ;9DCF7D|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCF85|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCF8D|        |;
                       db $8F,$00,$D6,$EC,$98,$00,$20,$A1   ;9DCF95|        |;
                       db $98,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCF9D|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCFA5|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCFAD|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCFB5|        |;
                       db $99,$00,$74,$FE,$8F,$00,$D7,$F5   ;9DCFBD|        |;
                       db $98,$00,$4E,$C6,$99,$00,$26,$C4   ;9DCFC5|        |;
                       db $99,$00,$E2,$FD,$90,$00,$74,$FE   ;9DCFCD|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCFD5|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DCFDD|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCFE5|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$C5,$9B   ;9DCFED|        |;
                       db $97,$00,$E8,$E1,$99,$00,$74,$FE   ;9DCFF5|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DCFFD|        |;
                       db $99,$00,$0F,$94,$9A,$00,$B4,$FA   ;9DD005|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DD00D|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$74,$FE   ;9DD015|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DD01D|        |;
                       db $99,$00,$74,$FE,$8F,$00,$FD,$93   ;9DD025|        |;
                       db $99,$00,$76,$D8,$98,$00,$74,$FE   ;9DD02D|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DD035|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DD03D|        |;
                       db $9A,$00,$8C,$BC,$97,$00,$E8,$E1   ;9DD045|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DD04D|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$74,$FE   ;9DD055|        |;
                       db $8F,$00,$82,$C6,$97,$00,$3D,$B1   ;9DD05D|        |;
                       db $9A,$00,$8F,$89,$98,$00,$97,$B0   ;9DD065|        |;
                       db $99,$00,$E8,$E1,$99,$00,$3D,$B1   ;9DD06D|        |;
                       db $9A,$00,$E8,$E1,$99,$00,$74,$FE   ;9DD075|        |;
                       db $8F,$00,$3D,$B1,$9A,$00,$E8,$E1   ;9DD07D|        |;
                       db $99,$00,$74,$FE,$8F,$00,$3D,$B1   ;9DD085|        |;
                       db $9A,$00,$E8,$E1,$99,$00           ;9DD08D|        |;
                       db $88,$C1,$97,$00                   ;9DD093|        |;
                       db $4E,$C6,$99,$00,$E8,$E1,$99,$00   ;9DD097|        |;
                       db $79,$84,$99,$00,$C9,$9E,$98,$00   ;9DD09F|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD0A7|        |;
                       db $E8,$A0,$97,$00                   ;9DD0AF|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD0B3|        |;
                       db $3D,$B1,$9A,$00,$BC,$F9,$97,$00   ;9DD0BB|        |;
                       db $74,$FE,$8F,$00                   ;9DD0C3|        |;
                       db $6C,$D0,$97,$00                   ;9DD0C7|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD0CB|        |;
                       db $3D                               ;9DD0D3|        |;
                       db $B1                               ;9DD0D4|        |;
                       db $9A,$00                           ;9DD0D5|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD0D7|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD0DF|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD0E7|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD0EF|        |;
                       db $3D,$B1,$9A,$00,$01,$DD,$98,$00   ;9DD0F7|        |;
                       db $4E,$C6,$99,$00,$4E,$C6,$99,$00   ;9DD0FF|        |;
                       db $68,$EE,$99,$00,$E8,$E1,$99,$00   ;9DD107|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD10F|        |;
                       db $C7,$AC,$98,$00,$E8,$E1,$99,$00   ;9DD117|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD11F|        |;
                       db $E8,$E1,$99,$00,$08,$B6,$98,$00   ;9DD127|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD12F|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD137|        |;
                       db $04,$9F,$99,$00,$19,$AF,$98,$00   ;9DD13F|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD147|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD14F|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD157|        |;
                       db $E8,$E1,$99,$00                   ;9DD15F|        |;
                       db $0B,$E4,$97,$00,$4E,$C6,$99,$00   ;9DD163|        |;
                       db $4E,$C6,$99,$00,$28,$DF,$97,$00   ;9DD16B|        |;
                       db $74,$FE,$8F,$00                   ;9DD173|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD177|        |;
                       db $2E,$D6,$98,$00                   ;9DD17F|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD183|        |;
                       db $E8,$E1,$99,$00                   ;9DD18B|        |;
                       db $CC,$D7,$97,$00                   ;9DD18F|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD193|        |;
                       db $E8,$E1,$99,$00                   ;9DD19B|        |;
                       db $87,$A8,$97,$00,$FE,$C8,$97,$00   ;9DD19F|        |;
                       db $74,$FE,$8F,$00,$E8,$E1,$99,$00   ;9DD1A7|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD1AF|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD1B7|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD1BF|        |;
                       db $74,$FE,$8F,$00                   ;9DD1C7|        |;
                       db $2E,$86,$9A,$00                   ;9DD1CB|        |;
                       db $4E,$C6,$99,$00                   ;9DD1CF|        |;
                       db $AC,$F8,$99,$00,$E8,$E1,$99,$00   ;9DD1D3|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD1DB|        |;
                       db $57,$D5,$97,$00                   ;9DD1E3|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD1E7|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD1EF|        |;
                       db $C0,$CA,$98,$00                   ;9DD1F7|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD1FB|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD203|        |;
                       db $EC,$88,$99,$00,$CF,$DF,$99,$00   ;9DD20B|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD213|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD21B|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD223|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD22B|        |;
                       db $29,$A3,$9A,$00,$4E,$C6,$99,$00   ;9DD233|        |;
                       db $45,$D5,$99,$00,$3D,$B1,$9A,$00   ;9DD23B|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD243|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD24B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD253|        |;
                       db $E8,$E1,$99,$00,$D6,$A6,$9A,$00   ;9DD25B|        |;
                       db $0A,$AB,$97,$00,$74,$FE,$8F,$00   ;9DD263|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD26B|        |;
                       db $74,$FE,$8F,$00,$58,$F1,$98,$00   ;9DD273|        |;
                       db $64,$82,$98,$00,$3D,$B1,$9A,$00   ;9DD27B|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD283|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD28B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD293|        |;
                       db $B3,$86,$99,$00,$25,$82,$9A,$00   ;9DD29B|        |;
                       db $C8,$91,$99,$00,$E8,$E1,$99,$00   ;9DD2A3|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD2AB|        |;
                       db $E8,$E1,$99,$00,$77,$A3,$98,$00   ;9DD2B3|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD2BB|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD2C3|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD2CB|        |;
                       db $79,$F0,$99,$00,$05,$C4,$97,$00   ;9DD2D3|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD2DB|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD2E3|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD2EB|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD2F3|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD2FB|        |;
                       db $26,$8E,$9A,$00,$41,$BF,$98,$00   ;9DD303|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD30B|        |;
                       db $E8,$E1,$99,$00,$8D,$B2,$97,$00   ;9DD313|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD31B|        |;
                       db $E8,$E1,$99,$00,$54,$CF,$98,$00   ;9DD323|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD32B|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD333|        |;
                       db $3D,$B1,$9A,$00,$06,$94,$97,$00   ;9DD33B|        |;
                       db $C8,$84,$98,$00,$E8,$E1,$99,$00   ;9DD343|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD34B|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD353|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD35B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD363|        |;
                       db $EC,$FD,$8C,$00,$4E,$C6,$99,$00   ;9DD36B|        |;
                       db $19,$E6,$99,$00,$E8,$E1,$99,$00   ;9DD373|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD37B|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD383|        |;
                       db $3D,$B1,$9A,$00,$67,$AE,$99,$00   ;9DD38B|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD393|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD39B|        |;
                       db $98,$F4,$99,$00,$74,$FE,$8F,$00   ;9DD3A3|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD3AB|        |;
                       db $44,$EA,$99,$00,$9B,$DB,$99,$00   ;9DD3B3|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD3BB|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD3C3|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD3CB|        |;
                       db $50,$8E,$98,$00,$4E,$C6,$99,$00   ;9DD3D3|        |;
                       db $4E,$C6,$99,$00,$BC,$DA,$98,$00   ;9DD3DB|        |;
                       db $8E,$FC,$98,$00,$E8,$E1,$99,$00   ;9DD3E3|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD3EB|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD3F3|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD3FB|        |;
                       db $74,$FE,$8F,$00,$BF,$97,$98,$00   ;9DD403|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD40B|        |;
                       db $8E,$C1,$98,$00,$31,$E8,$99,$00   ;9DD413|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD41B|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD423|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD42B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD433|        |;
                       db $A3,$F6,$99,$00,$4E,$C6,$99,$00   ;9DD43B|        |;
                       db $00,$A5,$9A,$00,$E8,$E1,$99,$00   ;9DD443|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD44B|        |;
                       db $10,$E6,$98,$00,$E8,$E1,$99,$00   ;9DD453|        |;
                       db $74,$FE,$8F,$00,$70,$9F,$9A,$00   ;9DD45B|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD463|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD46B|        |;
                       db $E8,$E1,$99,$00,$31,$8A,$9A,$00   ;9DD473|        |;
                       db $66,$95,$98,$00,$74,$FE,$8F,$00   ;9DD47B|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD483|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD48B|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD493|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD49B|        |;
                       db $17,$EF,$98,$00,$4E,$C6,$99,$00   ;9DD4A3|        |;
                       db $A0,$A5,$99,$00,$74,$FE,$8F,$00   ;9DD4AB|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD4B3|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD4BB|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD4C3|        |;
                       db $3D,$B1,$9A,$00,$1F,$90,$9A,$00   ;9DD4CB|        |;
                       db $1F,$80,$9A,$00,$E8,$E1,$99,$00   ;9DD4D3|        |;
                       db $74,$FE,$8F,$00,$25,$D3,$99,$00   ;9DD4DB|        |;
                       db $74,$A3,$97,$00,$3D,$B1,$9A,$00   ;9DD4E3|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD4EB|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD4F3|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD4FB|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD503|        |;
                       db $74,$AA,$98,$00,$4E,$C6,$99,$00   ;9DD50B|        |;
                       db $4E,$C6,$99,$00,$B9,$B3,$98,$00   ;9DD513|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD51B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD523|        |;
                       db $51,$FA,$98,$00,$E8,$E1,$99,$00   ;9DD52B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD533|        |;
                       db $0C,$93,$98,$00,$E8,$E1,$99,$00   ;9DD53B|        |;
                       db $74,$FE,$8F,$00,$2C,$87,$98,$00   ;9DD543|        |;
                       db $57,$F7,$97,$00,$3D,$B1,$9A,$00   ;9DD54B|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD553|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD55B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD563|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD56B|        |;
                       db $18,$92,$9A,$00,$C9,$99,$9A,$00   ;9DD573|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD57B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD583|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD58B|        |;
                       db $3D,$B1,$9A,$00,$6C,$A3,$99,$00   ;9DD593|        |;
                       db $99,$F3,$98,$00,$E8,$E1,$99,$00   ;9DD59B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD5A3|        |;
                       db $8A,$E1,$98,$00,$01,$E4,$99,$00   ;9DD5AB|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD5B3|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD5BB|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD5C3|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD5CB|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD5D3|        |;
                       db $BC,$ED,$97,$00,$4E,$C6,$99,$00   ;9DD5DB|        |;
                       db $4E,$C6,$99,$00,$AC,$BD,$99,$00   ;9DD5E3|        |;
                       db $38,$A1,$99,$00,$3D,$B1,$9A,$00   ;9DD5EB|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD5F3|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD5FB|        |;
                       db $89,$F2,$99,$00,$74,$FE,$8F,$00   ;9DD603|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD60B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD613|        |;
                       db $E8,$E1,$99,$00,$00,$80,$98,$00   ;9DD61B|        |;
                       db $32,$88,$9A,$00,$74,$FE,$8F,$00   ;9DD623|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD62B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD633|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD63B|        |;
                       db $93,$8F,$99,$00,$4E,$C6,$99,$00   ;9DD643|        |;
                       db $AB,$A8,$9A,$00,$E8,$E1,$99,$00   ;9DD64B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD653|        |;
                       db $E8,$E1,$99,$00,$BA,$FC,$99,$00   ;9DD65B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD663|        |;
                       db $E8,$E1,$99,$00,$57,$9E,$97,$00   ;9DD66B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD673|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD67B|        |;
                       db $E6,$D3,$98,$00,$81,$D9,$99,$00   ;9DD683|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD68B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD693|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD69B|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD6A3|        |;
                       db $DB,$C3,$98,$00,$4E,$C6,$99,$00   ;9DD6AB|        |;
                       db $54,$B9,$99,$00,$74,$FE,$8F,$00   ;9DD6B3|        |;
                       db $E8,$E1,$99,$00,$A5,$BA,$98,$00   ;9DD6BB|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD6C3|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD6CB|        |;
                       db $E8,$E1,$99,$00,$57,$B8,$98,$00   ;9DD6D3|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD6DB|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD6E3|        |;
                       db $B5,$DD,$99,$00,$0A,$BF,$97,$00   ;9DD6EB|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD6F3|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD6FB|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD703|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD70B|        |;
                       db $B5,$DC,$97,$00,$4E,$C6,$99,$00   ;9DD713|        |;
                       db $0C,$B0,$97,$00,$F0,$8B,$98,$00   ;9DD71B|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD723|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD72B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD733|        |;
                       db $E8,$E1,$99,$00,$56,$EC,$99,$00   ;9DD73B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD743|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD74B|        |;
                       db $53,$E8,$98,$00,$28,$C6,$98,$00   ;9DD753|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD75B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD763|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD76B|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD773|        |;
                       db $32,$96,$99,$00,$4E,$C6,$99,$00   ;9DD77B|        |;
                       db $D3,$A7,$99,$00,$E2,$D2,$97,$00   ;9DD783|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD78B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD793|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD79B|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD7A3|        |;
                       db $2A,$84,$9A,$00,$74,$FE,$8F,$00   ;9DD7AB|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD7B3|        |;
                       db $74,$FE,$8F,$00,$91,$9D,$9A,$00   ;9DD7BB|        |;
                       db $3D,$82,$99,$00,$3D,$B1,$9A,$00   ;9DD7C3|        |;
                       db $E8,$E1,$99,$00,$74,$FE,$8F,$00   ;9DD7CB|        |;
                       db $3D,$B1,$9A,$00,$E8,$E1,$99,$00   ;9DD7D3|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD7DB|        |;
                       db $2E,$86,$9A,$00,$5D,$8D,$99,$00   ;9DD7E3|        |;
                       db $A3,$F6,$99,$00,$00,$A5,$9A,$00   ;9DD7EB|        |;
                       db $41,$BF,$98,$00,$AC,$F8,$99,$00   ;9DD7F3|        |;
                       db $14,$F8,$98,$00,$A0,$A5,$99,$00   ;9DD7FB|        |;
                       db $25,$82,$9A,$00,$C7,$B2,$99,$00   ;9DD803|        |;
                       db $10,$E6,$98,$00,$70,$9F,$9A,$00   ;9DD80B|        |;
                       db $56,$EC,$99,$00,$54,$CF,$98,$00   ;9DD813|        |;
                       db $E8,$E1,$99,$00,$FE,$C1,$99,$00   ;9DD81B|        |;
                       db $BF,$97,$98,$00,$31,$8A,$9A,$00   ;9DD823|        |;
                       db $00,$80,$99,$00,$06,$94,$97,$00   ;9DD82B|        |;
                       db $25,$D3,$99,$00,$28,$C6,$98,$00   ;9DD833|        |;
                       db $58,$F1,$98,$00,$04,$9F,$99,$00   ;9DD83B|        |;
                       db $74,$FE,$8F,$00,$3D,$B1,$9A,$00   ;9DD843|        |;
                       db $00,$A6,$97,$00,$D7,$F5,$98,$00   ;9DD84B|        |;
                       db $93,$8F,$99,$00,$26,$C4,$99,$00   ;9DD853|        |;
                       db $8B,$AD,$97,$00,$95,$EA,$98,$00   ;9DD85B|        |;
                       db $AC,$BD,$99,$00,$AB,$A8,$9A,$00   ;9DD863|        |;
                       db $28,$DF,$97,$00,$05,$AA,$99,$00   ;9DD86B|        |;
                       db $2E,$D6,$98,$00,$52,$EB,$97,$00   ;9DD873|        |;
                       db $99,$F3,$98,$00,$57,$B8,$98,$00   ;9DD87B|        |;
                       db $2A,$84,$9A,$00,$0C,$93,$98,$00   ;9DD883|        |;
                       db $E8,$E1,$99,$00,$95,$8E,$97,$00   ;9DD88B|        |;
                       db $8A,$E1,$98,$00,$0F,$94,$9A,$00   ;9DD893|        |;
                       db $F7,$B4,$99,$00,$91,$9D,$9A,$00   ;9DD89B|        |;
                       db $8F,$89,$98,$00,$25,$8B,$99,$00   ;9DD8A3|        |;
                       db $B4,$FA,$99,$00,$74,$FE,$8F,$00   ;9DD8AB|        |;
                       db $7C,$F4,$9A,$00,$DF,$FF,$85,$00   ;9DD8B3|        |;
                       db $5C,$EA,$9A,$00,$7C,$EA,$9A,$00   ;9DD8BB|        |;
                       db $9C,$EA,$9A,$00,$BC,$EA,$9A,$00   ;9DD8C3|        |;
                       db $DC,$EA,$9A,$00,$FC,$EA,$9A,$00   ;9DD8CB|        |;
                       db $1C,$EB,$9A,$00                   ;9DD8D3|        |;
                       db $5C,$EB,$9A,$00                   ;9DD8D7|        |;
                       db $7C,$EB,$9A,$00,$9C,$EB,$9A,$00   ;9DD8DB|        |;
                       db $BC,$EB,$9A,$00,$DC,$EB,$9A,$00   ;9DD8E3|        |;
                       db $FC,$EB,$9A,$00,$1C,$EC,$9A,$00   ;9DD8EB|        |;
                       db $3C,$EC,$9A,$00,$5C,$EC,$9A,$00   ;9DD8F3|        |;
                       db $7C,$EC,$9A,$00,$9C,$EC,$9A,$00   ;9DD8FB|        |;
                       db $BC,$EC,$9A,$00,$DC,$EC,$9A,$00   ;9DD903|        |;
                       db $FC,$EC,$9A,$00,$1C,$ED,$9A,$00   ;9DD90B|        |;
                       db $3C,$ED,$9A,$00,$5C,$ED,$9A,$00   ;9DD913|        |;
                       db $3C,$EB,$9A,$00,$3C,$EB,$9A,$00   ;9DD91B|        |;
 
          CODE_9DD923:
                       LDA.W #$007E                         ;9DD923|A97E00  |;
                       STA.B $0E                            ;9DD926|850E    |;
                       LDA.W #$37F4                         ;9DD928|A9F437  |;
                       STA.B $0C                            ;9DD92B|850C    |;
                       LDY.W #$0000                         ;9DD92D|A00000  |;
                       LDX.W #$0800                         ;9DD930|A20008  |;
                       JSL.L CODE_80891F                    ;9DD933|221F8980|;
                       RTL                                  ;9DD937|6B      |;
 
          CODE_9DD938:
                       LDA.W #$007E                         ;9DD938|A97E00  |;
                       STA.B $0E                            ;9DD93B|850E    |;
                       LDA.W #$3834                         ;9DD93D|A93438  |;
                       STA.B $0C                            ;9DD940|850C    |;
                       LDY.W #$0020                         ;9DD942|A02000  |;
                       LDX.W #$0300                         ;9DD945|A20003  |;
                       JSL.L CODE_80891F                    ;9DD948|221F8980|;
                       RTL                                  ;9DD94C|6B      |;
 
          CODE_9DD94D:
                       LDA.W #$007E                         ;9DD94D|A97E00  |;
                       STA.B $0E                            ;9DD950|850E    |;
                       LDA.W #$3FF4                         ;9DD952|A9F43F  |;
                       STA.B $0C                            ;9DD955|850C    |;
                       LDY.W #$0400                         ;9DD957|A00004  |;
                       LDX.W #$0800                         ;9DD95A|A20008  |;
                       JSL.L CODE_80891F                    ;9DD95D|221F8980|;
                       RTL                                  ;9DD961|6B      |;
 
          CODE_9DD962:
                       LDA.W #$007E                         ;9DD962|A97E00  |;
                       STA.B $0E                            ;9DD965|850E    |;
                       LDA.W #$4034                         ;9DD967|A93440  |;
                       STA.B $0C                            ;9DD96A|850C    |;
                       LDY.W #$0420                         ;9DD96C|A02004  |;
                       LDX.W #$0300                         ;9DD96F|A20003  |;
                       JSL.L CODE_80891F                    ;9DD972|221F8980|;
                       RTL                                  ;9DD976|6B      |;
 
          CODE_9DD977:
                       LDA.W #$007E                         ;9DD977|A97E00  |;
                       STA.B $12                            ;9DD97A|8512    |;
                       LDA.W #$37F4                         ;9DD97C|A9F437  |;
                       STA.B $10                            ;9DD97F|8510    |;
                       LDA.L $7E35D0                        ;9DD981|AFD0357E|;
                       CLC                                  ;9DD985|18      |;
                       ADC.L $7E35AA                        ;9DD986|6FAA357E|;
                       LDX.W #$0800                         ;9DD98A|A20008  |;
                       JSL.L CODE_808EDF                    ;9DD98D|22DF8E80|;
                       RTL                                  ;9DD991|6B      |;
 
          CODE_9DD992:
                       LDA.W #$007E                         ;9DD992|A97E00  |;
                       STA.B $12                            ;9DD995|8512    |;
                       LDA.W #$3FF4                         ;9DD997|A9F43F  |;
                       STA.B $10                            ;9DD99A|8510    |;
                       LDA.L $7E35D0                        ;9DD99C|AFD0357E|;
                       CLC                                  ;9DD9A0|18      |;
                       ADC.L $7E35AC                        ;9DD9A1|6FAC357E|;
                       LDX.W #$0800                         ;9DD9A5|A20008  |;
                       JSL.L CODE_808EDF                    ;9DD9A8|22DF8E80|;
                       RTL                                  ;9DD9AC|6B      |;
 
          CODE_9DD9AD:
                       STZ.W $07C6                          ;9DD9AD|9CC607  |;
                       LDA.B zpCurntTeamLoopVal             ;9DD9B0|A591    |;
                       PHA                                  ;9DD9B2|48      |;
                       JSL.L CODE_9F96F7                    ;9DD9B3|22F7969F|;
                       LDA.W #$0081                         ;9DD9B7|A98100  |;
                       STA.B $0E                            ;9DD9BA|850E    |;
                       LDA.W #$ABDE                         ;9DD9BC|A9DEAB  |;
                       STA.B $0C                            ;9DD9BF|850C    |;
                       LDA.W #$007F                         ;9DD9C1|A97F00  |;
                       STA.B $12                            ;9DD9C4|8512    |;
                       LDA.W #$7800                         ;9DD9C6|A90078  |;
                       STA.B $10                            ;9DD9C9|8510    |;
                       JSL.L CODE_80C373                    ;9DD9CB|2273C380|;
                       JSL.L CODE_9F9708                    ;9DD9CF|2208979F|;
                       JSL.L CODE_8086A9                    ;9DD9D3|22A98680|;
                       SEP #$20                             ;9DD9D7|E220    |;
                       LDA.B #$00                           ;9DD9D9|A900    |;
                       STA.W $2107                          ;9DD9DB|8D0721  |;
                       LDA.B #$04                           ;9DD9DE|A904    |;
                       STA.W $2108                          ;9DD9E0|8D0821  |;
                       LDA.B #$12                           ;9DD9E3|A912    |;
                       STA.W $210B                          ;9DD9E5|8D0B21  |;
                       LDA.B #$03                           ;9DD9E8|A903    |;
                       STA.W $2101                          ;9DD9EA|8D0121  |;
                       LDA.B #$13                           ;9DD9ED|A913    |;
                       STA.W $212C                          ;9DD9EF|8D2C21  |;
                       REP #$30                             ;9DD9F2|C230    |;
                       LDA.W #$FF00                         ;9DD9F4|A900FF  |;
                       STA.L $7E35AA                        ;9DD9F7|8FAA357E|;
                       STA.L $7E35A8                        ;9DD9FB|8FA8357E|;
                       LDA.W #$0000                         ;9DD9FF|A90000  |;
                       STA.L $7E35AC                        ;9DDA02|8FAC357E|;
                       LDA.L $7E35B6                        ;9DDA06|AFB6357E|;
                       STA.L $7E35C4                        ;9DDA0A|8FC4357E|;
                       ASL A                                ;9DDA0E|0A      |;
                       ASL A                                ;9DDA0F|0A      |;
                       ASL A                                ;9DDA10|0A      |;
                       ASL A                                ;9DDA11|0A      |;
                       ADC.W #$1000                         ;9DDA12|690010  |;
                       STA.W $2116                          ;9DDA15|8D1621  |;
                       LDA.W #$0096                         ;9DDA18|A99600  |;
                       STA.B $0E                            ;9DDA1B|850E    |;
                       LDA.W #$A103                         ;9DDA1D|A903A1  |;
                       STA.B $0C                            ;9DDA20|850C    |;
                       LDA.W #$007F                         ;9DDA22|A97F00  |;
                       STA.B $12                            ;9DDA25|8512    |;
                       LDA.W #$0000                         ;9DDA27|A90000  |;
                       STA.B $10                            ;9DDA2A|8510    |;
                       JSL.L CODE_80C373                    ;9DDA2C|2273C380|;
                       TXA                                  ;9DDA30|8A      |;
                       LSR A                                ;9DDA31|4A      |;
                       LSR A                                ;9DDA32|4A      |;
                       LSR A                                ;9DDA33|4A      |;
                       LSR A                                ;9DDA34|4A      |;
                       LSR A                                ;9DDA35|4A      |;
                       STA.B $A5                            ;9DDA36|85A5    |;
                       CLC                                  ;9DDA38|18      |;
                       ADC.L $7E35C4                        ;9DDA39|6FC4357E|;
                       STA.L $7E35C4                        ;9DDA3D|8FC4357E|;
                       STA.L $7E35BC                        ;9DDA41|8FBC357E|;
                       LDA.W #$007F                         ;9DDA45|A97F00  |;
                       STA.B $8B                            ;9DDA48|858B    |;
                       LDA.W #$0000                         ;9DDA4A|A90000  |;
                       STA.B $89                            ;9DDA4D|8589    |;
                       LDA.W #$0080                         ;9DDA4F|A98000  |;
                       STA.B $8F                            ;9DDA52|858F    |;
                       LDA.W #$D3D7                         ;9DDA54|A9D7D3  |;
                       STA.B $8D                            ;9DDA57|858D    |;
                       JSL.L CODE_9B854B                    ;9DDA59|224B859B|;
                       LDA.W #$009C                         ;9DDA5D|A99C00  |;
                       STA.B $8B                            ;9DDA60|858B    |;
                       LDA.W #$8000                         ;9DDA62|A90080  |;
                       STA.B $89                            ;9DDA65|8589    |;
                       LDA.W #$0080                         ;9DDA67|A98000  |;
                       STA.B $8F                            ;9DDA6A|858F    |;
                       LDA.W #$D3E7                         ;9DDA6C|A9E7D3  |;
                       STA.B $8D                            ;9DDA6F|858D    |;
                       LDA.W #$0004                         ;9DDA71|A90400  |;
                       STA.B $A5                            ;9DDA74|85A5    |;
                       CLC                                  ;9DDA76|18      |;
                       ADC.L $7E35C4                        ;9DDA77|6FC4357E|;
                       STA.L $7E35C4                        ;9DDA7B|8FC4357E|;
                       STA.L $7E35CE                        ;9DDA7F|8FCE357E|;
                       JSL.L CODE_9B854B                    ;9DDA83|224B859B|;
                       LDA.W #$009A                         ;9DDA87|A99A00  |;
                       STA.B $0E                            ;9DDA8A|850E    |;
                       LDA.W #$C1F3                         ;9DDA8C|A9F3C1  |;
                       STA.B $0C                            ;9DDA8F|850C    |;
                       LDA.W #$007F                         ;9DDA91|A97F00  |;
                       STA.B $12                            ;9DDA94|8512    |;
                       LDA.W #$0000                         ;9DDA96|A90000  |;
                       STA.B $10                            ;9DDA99|8510    |;
                       JSL.L CODE_80C373                    ;9DDA9B|2273C380|;
                       TXA                                  ;9DDA9F|8A      |;
                       LSR A                                ;9DDAA0|4A      |;
                       LSR A                                ;9DDAA1|4A      |;
                       LSR A                                ;9DDAA2|4A      |;
                       LSR A                                ;9DDAA3|4A      |;
                       LSR A                                ;9DDAA4|4A      |;
                       CLC                                  ;9DDAA5|18      |;
                       ADC.L $7E35C4                        ;9DDAA6|6FC4357E|;
                       STA.L $7E35C4                        ;9DDAAA|8FC4357E|;
                       STA.L $7E35BE                        ;9DDAAE|8FBE357E|;
                       LDA.W #$007F                         ;9DDAB2|A97F00  |;
                       STA.B $0E                            ;9DDAB5|850E    |;
                       LDA.W #$0000                         ;9DDAB7|A90000  |;
                       STA.B $0C                            ;9DDABA|850C    |;
                       LDY.W #$FFFF                         ;9DDABC|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9DDABF|221F8980|;
                       LDA.L $7E35C4                        ;9DDAC3|AFC4357E|;
                       STA.L $7E35BE                        ;9DDAC7|8FBE357E|;
                       LDA.W #$009C                         ;9DDACB|A99C00  |;
                       STA.B $0E                            ;9DDACE|850E    |;
                       LDA.W #$8098                         ;9DDAD0|A99880  |;
                       STA.B $0C                            ;9DDAD3|850C    |;
                       LDX.W #$0140                         ;9DDAD5|A24001  |;
                       TXA                                  ;9DDAD8|8A      |;
                       LSR A                                ;9DDAD9|4A      |;
                       LSR A                                ;9DDADA|4A      |;
                       LSR A                                ;9DDADB|4A      |;
                       LSR A                                ;9DDADC|4A      |;
                       LSR A                                ;9DDADD|4A      |;
                       CLC                                  ;9DDADE|18      |;
                       ADC.L $7E35C4                        ;9DDADF|6FC4357E|;
                       STA.L $7E35C4                        ;9DDAE3|8FC4357E|;
                       STA.L $7E35C0                        ;9DDAE7|8FC0357E|;
                       LDY.W #$FFFF                         ;9DDAEB|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9DDAEE|221F8980|;
                       LDA.L $7E35C4                        ;9DDAF2|AFC4357E|;
                       STA.L $7E35C0                        ;9DDAF6|8FC0357E|;
                       LDA.W #$009C                         ;9DDAFA|A99C00  |;
                       STA.B $0E                            ;9DDAFD|850E    |;
                       LDA.W #$81F0                         ;9DDAFF|A9F081  |;
                       STA.B $0C                            ;9DDB02|850C    |;
                       LDX.W #$0120                         ;9DDB04|A22001  |;
                       TXA                                  ;9DDB07|8A      |;
                       LSR A                                ;9DDB08|4A      |;
                       LSR A                                ;9DDB09|4A      |;
                       LSR A                                ;9DDB0A|4A      |;
                       LSR A                                ;9DDB0B|4A      |;
                       LSR A                                ;9DDB0C|4A      |;
                       CLC                                  ;9DDB0D|18      |;
                       ADC.L $7E35C4                        ;9DDB0E|6FC4357E|;
                       STA.L $7E35C4                        ;9DDB12|8FC4357E|;
                       LDY.W #$FFFF                         ;9DDB16|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9DDB19|221F8980|;
                       LDA.L $7E35C4                        ;9DDB1D|AFC4357E|;
                       SEC                                  ;9DDB21|38      |;
                       SBC.W #$0100                         ;9DDB22|E90001  |;
                       STA.L $7E35D2                        ;9DDB25|8FD2357E|;
                       LDA.W #$0095                         ;9DDB29|A99500  |;
                       STA.B $0E                            ;9DDB2C|850E    |;
                       LDA.W #$F1AE                         ;9DDB2E|A9AEF1  |;
                       STA.B $0C                            ;9DDB31|850C    |;
                       LDA.W #$007F                         ;9DDB33|A97F00  |;
                       STA.B $12                            ;9DDB36|8512    |;
                       LDA.W #$0000                         ;9DDB38|A90000  |;
                       STA.B $10                            ;9DDB3B|8510    |;
                       JSL.L CODE_80C373                    ;9DDB3D|2273C380|;
                       TXA                                  ;9DDB41|8A      |;
                       LSR A                                ;9DDB42|4A      |;
                       LSR A                                ;9DDB43|4A      |;
                       LSR A                                ;9DDB44|4A      |;
                       LSR A                                ;9DDB45|4A      |;
                       LSR A                                ;9DDB46|4A      |;
                       STA.L $7E35B4                        ;9DDB47|8FB4357E|;
                       LDA.W #$007F                         ;9DDB4B|A97F00  |;
                       STA.B $0E                            ;9DDB4E|850E    |;
                       LDA.W #$0000                         ;9DDB50|A90000  |;
                       STA.B $0C                            ;9DDB53|850C    |;
                       LDY.W #$1000                         ;9DDB55|A00010  |;
                       JSL.L CODE_80891F                    ;9DDB58|221F8980|;
                       LDA.W #$009A                         ;9DDB5C|A99A00  |;
                       STA.B $0E                            ;9DDB5F|850E    |;
                       LDA.W #$BA95                         ;9DDB61|A995BA  |;
                       STA.B $0C                            ;9DDB64|850C    |;
                       LDA.W #$007F                         ;9DDB66|A97F00  |;
                       STA.B $12                            ;9DDB69|8512    |;
                       LDA.W #$0000                         ;9DDB6B|A90000  |;
                       STA.B $10                            ;9DDB6E|8510    |;
                       JSL.L CODE_80C373                    ;9DDB70|2273C380|;
                       LDA.W #$007F                         ;9DDB74|A97F00  |;
                       STA.B $0E                            ;9DDB77|850E    |;
                       LDA.W #$0000                         ;9DDB79|A90000  |;
                       STA.B $0C                            ;9DDB7C|850C    |;
                       LDA.W #$007F                         ;9DDB7E|A97F00  |;
                       STA.B $12                            ;9DDB81|8512    |;
                       LDA.W #$7706                         ;9DDB83|A90677  |;
                       STA.B $10                            ;9DDB86|8510    |;
                       LDA.W #$0007                         ;9DDB88|A90700  |;
                       STA.B $24                            ;9DDB8B|8524    |;
                       STA.B $18                            ;9DDB8D|8518    |;
                       STA.B $1A                            ;9DDB8F|851A    |;
                       LDA.W #$0001                         ;9DDB91|A90100  |;
                       STA.B $20                            ;9DDB94|8520    |;
                       STA.B $22                            ;9DDB96|8522    |;
                       LDX.W #$0000                         ;9DDB98|A20000  |;
                       LDY.W #$0000                         ;9DDB9B|A00000  |;
                       LDA.W #$0C00                         ;9DDB9E|A9000C  |;
                       JSL.L CODE_808E7C                    ;9DDBA1|227C8E80|;
                       LDA.W #$0007                         ;9DDBA5|A90700  |;
                       STA.L $7F7700                        ;9DDBA8|8F00777F|;
                       STA.L $7F7702                        ;9DDBAC|8F02777F|;
                       LDA.W #$007F                         ;9DDBB0|A97F00  |;
                       STA.B $0E                            ;9DDBB3|850E    |;
                       LDA.W #$0000                         ;9DDBB5|A90000  |;
                       STA.B $0C                            ;9DDBB8|850C    |;
                       LDA.W #$007E                         ;9DDBBA|A97E00  |;
                       STA.B $12                            ;9DDBBD|8512    |;
                       LDA.W #$3FF4                         ;9DDBBF|A9F43F  |;
                       STA.B $10                            ;9DDBC2|8510    |;
                       LDA.W #$0020                         ;9DDBC4|A92000  |;
                       STA.B $24                            ;9DDBC7|8524    |;
                       LDA.W #$001C                         ;9DDBC9|A91C00  |;
                       STA.B $26                            ;9DDBCC|8526    |;
                       LDX.W #$0000                         ;9DDBCE|A20000  |;
                       LDY.W #$0000                         ;9DDBD1|A00000  |;
                       LDA.L $7E35AC                        ;9DDBD4|AFAC357E|;
                       CLC                                  ;9DDBD8|18      |;
                       ADC.W #$0C00                         ;9DDBD9|69000C  |;
                       JSL.L CODE_808E2D                    ;9DDBDC|222D8E80|;
                       LDA.W #$009A                         ;9DDBE0|A99A00  |;
                       STA.B $0E                            ;9DDBE3|850E    |;
                       LDA.W #$DE57                         ;9DDBE5|A957DE  |;
                       STA.B $0C                            ;9DDBE8|850C    |;
                       LDA.W #$007F                         ;9DDBEA|A97F00  |;
                       STA.B $12                            ;9DDBED|8512    |;
                       LDA.W #$0000                         ;9DDBEF|A90000  |;
                       STA.B $10                            ;9DDBF2|8510    |;
                       JSL.L CODE_80C373                    ;9DDBF4|2273C380|;
                       LDA.W #$007F                         ;9DDBF8|A97F00  |;
                       STA.B $0E                            ;9DDBFB|850E    |;
                       LDA.W #$0000                         ;9DDBFD|A90000  |;
                       STA.B $0C                            ;9DDC00|850C    |;
                       LDY.W #$0000                         ;9DDC02|A00000  |;
                       LDX.W #$0030                         ;9DDC05|A23000  |;
                       JSL.L CODE_9DE0BD                    ;9DDC08|22BDE09D|;
                       LDA.L $7E3454                        ;9DDC0C|AF54347E|;
                       CMP.W #$0021                         ;9DDC10|C92100  |;
                       BCS CODE_9DDC18                      ;9DDC13|B003    |;
                       JMP.W CODE_9DDCF3                    ;9DDC15|4CF3DC  |;
 
          CODE_9DDC18:
                       SBC.W #$0021                         ;9DDC18|E92100  |;
                       STA.L $7E3454                        ;9DDC1B|8F54347E|;
                       LDA.W #$0093                         ;9DDC1F|A99300  |;
                       STA.B $0E                            ;9DDC22|850E    |;
                       LDA.W #$8000                         ;9DDC24|A90080  |;
                       STA.B $0C                            ;9DDC27|850C    |;
                       LDA.W #$007F                         ;9DDC29|A97F00  |;
                       STA.B $12                            ;9DDC2C|8512    |;
                       LDA.W #$0000                         ;9DDC2E|A90000  |;
                       STA.B $10                            ;9DDC31|8510    |;
                       JSL.L CODE_80C373                    ;9DDC33|2273C380|;
                       LDA.W #$007F                         ;9DDC37|A97F00  |;
                       STA.B $0E                            ;9DDC3A|850E    |;
                       LDA.W #$0000                         ;9DDC3C|A90000  |;
                       STA.B $0C                            ;9DDC3F|850C    |;
                       LDY.W #$FFFF                         ;9DDC41|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9DDC44|221F8980|;
                       LDA.W #$009A                         ;9DDC48|A99A00  |;
                       STA.B $0E                            ;9DDC4B|850E    |;
                       LDA.W #$B7A1                         ;9DDC4D|A9A1B7  |;
                       STA.B $0C                            ;9DDC50|850C    |;
                       LDA.W #$007F                         ;9DDC52|A97F00  |;
                       STA.B $12                            ;9DDC55|8512    |;
                       LDA.W #$0000                         ;9DDC57|A90000  |;
                       STA.B $10                            ;9DDC5A|8510    |;
                       JSL.L CODE_80C373                    ;9DDC5C|2273C380|;
                       TXA                                  ;9DDC60|8A      |;
                       SEC                                  ;9DDC61|38      |;
                       SBC.W #$0008                         ;9DDC62|E90800  |;
                       TAY                                  ;9DDC65|A8      |;
                       LDA.B $10                            ;9DDC66|A510    |;
                       CLC                                  ;9DDC68|18      |;
                       ADC.W #$0006                         ;9DDC69|690600  |;
                       STA.B $10                            ;9DDC6C|8510    |;
 
          CODE_9DDC6E:
                       LDA.B [$10],Y                        ;9DDC6E|B710    |;
                       BEQ CODE_9DDC85                      ;9DDC70|F013    |;
                       CLC                                  ;9DDC72|18      |;
                       ADC.L $7E35B4                        ;9DDC73|6FB4357E|;
                       CLC                                  ;9DDC77|18      |;
                       ADC.L $7E35AC                        ;9DDC78|6FAC357E|;
                       CLC                                  ;9DDC7C|18      |;
                       ADC.W #$0800                         ;9DDC7D|690008  |;
                       TYX                                  ;9DDC80|BB      |;
                       STA.L $7E3FF4,X                      ;9DDC81|9FF43F7E|;
 
          CODE_9DDC85:
                       DEY                                  ;9DDC85|88      |;
                       DEY                                  ;9DDC86|88      |;
                       BPL CODE_9DDC6E                      ;9DDC87|10E5    |;
                       LDA.W #$009A                         ;9DDC89|A99A00  |;
                       STA.B $0E                            ;9DDC8C|850E    |;
                       LDA.W #$DE57                         ;9DDC8E|A957DE  |;
                       STA.B $0C                            ;9DDC91|850C    |;
                       LDA.W #$007F                         ;9DDC93|A97F00  |;
                       STA.B $12                            ;9DDC96|8512    |;
                       LDA.W #$0000                         ;9DDC98|A90000  |;
                       STA.B $10                            ;9DDC9B|8510    |;
                       JSL.L CODE_80C373                    ;9DDC9D|2273C380|;
                       LDA.W #$007F                         ;9DDCA1|A97F00  |;
                       STA.B $0E                            ;9DDCA4|850E    |;
                       LDA.W #$0000                         ;9DDCA6|A90000  |;
                       STA.B $0C                            ;9DDCA9|850C    |;
                       LDY.W #$0000                         ;9DDCAB|A00000  |;
                       LDX.W #$0010                         ;9DDCAE|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9DDCB1|22BDE09D|;
                       LDA.B $0C                            ;9DDCB5|A50C    |;
                       CLC                                  ;9DDCB7|18      |;
                       ADC.W #$0020                         ;9DDCB8|692000  |;
                       STA.B $0C                            ;9DDCBB|850C    |;
                       LDY.W #$0010                         ;9DDCBD|A01000  |;
                       LDX.W #$0010                         ;9DDCC0|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9DDCC3|22BDE09D|;
                       LDA.W #$009A                         ;9DDCC7|A99A00  |;
                       STA.B $0E                            ;9DDCCA|850E    |;
                       LDA.W #$E972                         ;9DDCCC|A972E9  |;
                       STA.B $0C                            ;9DDCCF|850C    |;
                       LDA.W #$007F                         ;9DDCD1|A97F00  |;
                       STA.B $12                            ;9DDCD4|8512    |;
                       LDA.W #$0000                         ;9DDCD6|A90000  |;
                       STA.B $10                            ;9DDCD9|8510    |;
                       JSL.L CODE_80C373                    ;9DDCDB|2273C380|;
                       LDA.W #$007F                         ;9DDCDF|A97F00  |;
                       STA.B $0E                            ;9DDCE2|850E    |;
                       LDA.W #$0000                         ;9DDCE4|A90000  |;
                       STA.B $0C                            ;9DDCE7|850C    |;
                       LDY.W #$0020                         ;9DDCE9|A02000  |;
                       LDX.W #$0010                         ;9DDCEC|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9DDCEF|22BDE09D|;
 
          CODE_9DDCF3:
                       SEP #$20                             ;9DDCF3|E220    |;
                       STZ.W $2121                          ;9DDCF5|9C2121  |;
                       STZ.W $2122                          ;9DDCF8|9C2221  |;
                       STZ.W $2122                          ;9DDCFB|9C2221  |;
                       REP #$20                             ;9DDCFE|C220    |;
                       LDA.W #$009A                         ;9DDD00|A99A00  |;
                       STA.B $0E                            ;9DDD03|850E    |;
                       LDA.W #$E121                         ;9DDD05|A921E1  |;
                       STA.B $0C                            ;9DDD08|850C    |;
                       LDA.W #$007F                         ;9DDD0A|A97F00  |;
                       STA.B $12                            ;9DDD0D|8512    |;
                       LDA.W #$0000                         ;9DDD0F|A90000  |;
                       STA.B $10                            ;9DDD12|8510    |;
                       JSL.L CODE_80C373                    ;9DDD14|2273C380|;
                       LDA.W #$007F                         ;9DDD18|A97F00  |;
                       STA.B $0E                            ;9DDD1B|850E    |;
                       LDA.W #$0000                         ;9DDD1D|A90000  |;
                       STA.B $0C                            ;9DDD20|850C    |;
                       LDY.W #$0030                         ;9DDD22|A03000  |;
                       LDX.W #$0020                         ;9DDD25|A22000  |;
                       JSL.L CODE_9DE0BD                    ;9DDD28|22BDE09D|;
                       LDA.L $7E35BE                        ;9DDD2C|AFBE357E|;
                       CLC                                  ;9DDD30|18      |;
                       ADC.W #$1400                         ;9DDD31|690014  |;
                       STA.L $7E35BE                        ;9DDD34|8FBE357E|;
                       LDA.L $7E35C0                        ;9DDD38|AFC0357E|;
                       CLC                                  ;9DDD3C|18      |;
                       ADC.W #$1000                         ;9DDD3D|690010  |;
                       STA.L $7E35C0                        ;9DDD40|8FC0357E|;
                       LDA.W $1C98                          ;9DDD44|AD981C  |;
                       CMP.W #$0018                         ;9DDD47|C91800  |;
                       BCS CODE_9DDD4E                      ;9DDD4A|B002    |;
                       STZ.B zpCurntTeamLoopVal             ;9DDD4C|6491    |;
 
          CODE_9DDD4E:
                       LDA.W $1C9A                          ;9DDD4E|AD9A1C  |;
                       CMP.W #$0018                         ;9DDD51|C91800  |;
                       BCS CODE_9DDD5B                      ;9DDD54|B005    |;
                       LDA.W #$0002                         ;9DDD56|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9DDD59|8591    |;
 
          CODE_9DDD5B:
                       LDA.W #$009A                         ;9DDD5B|A99A00  |;
                       STA.B $0E                            ;9DDD5E|850E    |;
                       LDA.W #$D3B6                         ;9DDD60|A9B6D3  |;
                       STA.B $0C                            ;9DDD63|850C    |;
                       LDY.W #$0080                         ;9DDD65|A08000  |;
                       LDX.W #$0010                         ;9DDD68|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9DDD6B|22BDE09D|;
                       LDA.W #$009A                         ;9DDD6F|A99A00  |;
                       STA.B $0E                            ;9DDD72|850E    |;
                       LDA.W #$F15C                         ;9DDD74|A95CF1  |;
                       STA.B $0C                            ;9DDD77|850C    |;
                       LDY.W #$00C0                         ;9DDD79|A0C000  |;
                       LDX.W #$0010                         ;9DDD7C|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9DDD7F|22BDE09D|;
                       JSL.L CODE_9DD977                    ;9DDD83|2277D99D|;
                       JSL.L CODE_9DD94D                    ;9DDD87|224DD99D|;
                       JSL.L CODE_808583                    ;9DDD8B|22838580|;
                       LDX.W #$0000                         ;9DDD8F|A20000  |;
                       LDY.W #$0180                         ;9DDD92|A08001  |;
                       LDA.W #$6000                         ;9DDD95|A90060  |;
                       JSL.L CODE_80AEE1                    ;9DDD98|22E1AE80|;
                       JSL.L CODE_80AF7B                    ;9DDD9C|227BAF80|;
                       JSL.L CODE_9DDF73                    ;9DDDA0|2273DF9D|;
                       LDA.W #$3568                         ;9DDDA4|A96835  |;
                       STA.L $7F7500                        ;9DDDA7|8F00757F|;
                       JSL.L CODE_9DDDB3                    ;9DDDAB|22B3DD9D|;
                       PLA                                  ;9DDDAF|68      |;
                       STA.B zpCurntTeamLoopVal             ;9DDDB0|8591    |;
                       RTL                                  ;9DDDB2|6B      |;
 
          CODE_9DDDB3:
                       LDA.B zpCurntTeamLoopVal             ;9DDDB3|A591    |;
                       PHA                                  ;9DDDB5|48      |;
                       LDA.L $7E3454                        ;9DDDB6|AF54347E|;
                       STA.B $00                            ;9DDDBA|8500    |;
                       BPL CODE_9DDDFF                      ;9DDDBC|1041    |;
                       LDA.L $7E3452                        ;9DDDBE|AF52347E|;
                       BPL CODE_9DDDC9                      ;9DDDC2|1005    |;
                       LDA.W #$0002                         ;9DDDC4|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9DDDC7|8591    |;
 
          CODE_9DDDC9:
                       LDA.L $7E345C                        ;9DDDC9|AF5C347E|;
                       LDX.W #$0001                         ;9DDDCD|A20100  |;
                       LDY.W #$0001                         ;9DDDD0|A00100  |;
                       JSL.L CODE_9DC9A8                    ;9DDDD3|22A8C99D|;
                       LDA.W #$007F                         ;9DDDD7|A97F00  |;
                       STA.B $0E                            ;9DDDDA|850E    |;
                       LDA.W #$7780                         ;9DDDDC|A98077  |;
                       STA.B $0C                            ;9DDDDF|850C    |;
                       LDA.W #$007E                         ;9DDDE1|A97E00  |;
                       STA.B $12                            ;9DDDE4|8512    |;
                       LDA.W #$3FF4                         ;9DDDE6|A9F43F  |;
                       STA.B $10                            ;9DDDE9|8510    |;
                       LDA.W #$0020                         ;9DDDEB|A92000  |;
                       STA.B $24                            ;9DDDEE|8524    |;
                       LDX.W #$0001                         ;9DDDF0|A20100  |;
                       LDY.W #$0001                         ;9DDDF3|A00100  |;
                       LDA.W #$0000                         ;9DDDF6|A90000  |;
                       JSL.L CODE_808E2D                    ;9DDDF9|222D8E80|;
                       BRA CODE_9DDE63                      ;9DDDFD|8064    |;
 
          CODE_9DDDFF:
                       LDA.L $7E3454                        ;9DDDFF|AF54347E|;
                       ASL A                                ;9DDE03|0A      |;
                       ASL A                                ;9DDE04|0A      |;
                       TAX                                  ;9DDE05|AA      |;
                       LDA.L UNREACH_9C8499,X               ;9DDE06|BF99849C|;
                       STA.B $0E                            ;9DDE0A|850E    |;
                       LDA.L UNREACH_9C8497,X               ;9DDE0C|BF97849C|;
                       STA.B $0C                            ;9DDE10|850C    |;
                       LDY.W #$00A0                         ;9DDE12|A0A000  |;
                       LDX.W #$0010                         ;9DDE15|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9DDE18|22BDE09D|;
                       LDA.W #$007F                         ;9DDE1C|A97F00  |;
                       STA.B $12                            ;9DDE1F|8512    |;
                       LDA.W #$7800                         ;9DDE21|A90078  |;
                       STA.B $10                            ;9DDE24|8510    |;
                       LDA.W #$2400                         ;9DDE26|A90024  |;
                       LDX.W #$000C                         ;9DDE29|A20C00  |;
                       LDY.W #$000C                         ;9DDE2C|A00C00  |;
                       JSL.L CODE_80B08D                    ;9DDE2F|228DB080|;
                       LDX.W #$0001                         ;9DDE33|A20100  |;
                       LDY.W #$0001                         ;9DDE36|A00100  |;
                       JSL.L CODE_9DCCBA                    ;9DDE39|22BACC9D|;
                       LDA.W #$007F                         ;9DDE3D|A97F00  |;
                       STA.B $0E                            ;9DDE40|850E    |;
                       LDA.W #$7700                         ;9DDE42|A90077  |;
                       STA.B $0C                            ;9DDE45|850C    |;
                       LDA.W #$007E                         ;9DDE47|A97E00  |;
                       STA.B $12                            ;9DDE4A|8512    |;
                       LDA.W #$3FF4                         ;9DDE4C|A9F43F  |;
                       STA.B $10                            ;9DDE4F|8510    |;
                       LDA.W #$0020                         ;9DDE51|A92000  |;
                       STA.B $24                            ;9DDE54|8524    |;
                       LDX.W #$0001                         ;9DDE56|A20100  |;
                       LDY.W #$0001                         ;9DDE59|A00100  |;
                       LDA.W #$0000                         ;9DDE5C|A90000  |;
                       JSL.L CODE_808E2D                    ;9DDE5F|222D8E80|;
 
          CODE_9DDE63:
                       LDA.L $7E3452                        ;9DDE63|AF52347E|;
                       STA.B $00                            ;9DDE67|8500    |;
                       BPL CODE_9DDEA9                      ;9DDE69|103E    |;
                       LDA.L $7E3454                        ;9DDE6B|AF54347E|;
                       BPL CODE_9DDE73                      ;9DDE6F|1002    |;
                       STZ.B zpCurntTeamLoopVal             ;9DDE71|6491    |;
 
          CODE_9DDE73:
                       LDA.L $7E345A                        ;9DDE73|AF5A347E|;
                       LDX.W #$0018                         ;9DDE77|A21800  |;
                       LDY.W #$0001                         ;9DDE7A|A00100  |;
                       JSL.L CODE_9DC9A8                    ;9DDE7D|22A8C99D|;
                       LDA.W #$007F                         ;9DDE81|A97F00  |;
                       STA.B $0E                            ;9DDE84|850E    |;
                       LDA.W #$7780                         ;9DDE86|A98077  |;
                       STA.B $0C                            ;9DDE89|850C    |;
                       LDA.W #$007E                         ;9DDE8B|A97E00  |;
                       STA.B $12                            ;9DDE8E|8512    |;
                       LDA.W #$3FF4                         ;9DDE90|A9F43F  |;
                       STA.B $10                            ;9DDE93|8510    |;
                       LDA.W #$0020                         ;9DDE95|A92000  |;
                       STA.B $24                            ;9DDE98|8524    |;
                       LDX.W #$0018                         ;9DDE9A|A21800  |;
                       LDY.W #$0001                         ;9DDE9D|A00100  |;
                       LDA.W #$0000                         ;9DDEA0|A90000  |;
                       JSL.L CODE_808E2D                    ;9DDEA3|222D8E80|;
                       BRA CODE_9DDF0D                      ;9DDEA7|8064    |;
 
          CODE_9DDEA9:
                       LDA.L $7E3452                        ;9DDEA9|AF52347E|;
                       ASL A                                ;9DDEAD|0A      |;
                       ASL A                                ;9DDEAE|0A      |;
                       TAX                                  ;9DDEAF|AA      |;
                       LDA.L UNREACH_9C8499,X               ;9DDEB0|BF99849C|;
                       STA.B $0E                            ;9DDEB4|850E    |;
                       LDA.L UNREACH_9C8497,X               ;9DDEB6|BF97849C|;
                       STA.B $0C                            ;9DDEBA|850C    |;
                       LDY.W #$00B0                         ;9DDEBC|A0B000  |;
                       LDX.W #$0010                         ;9DDEBF|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9DDEC2|22BDE09D|;
                       LDA.W #$007F                         ;9DDEC6|A97F00  |;
                       STA.B $12                            ;9DDEC9|8512    |;
                       LDA.W #$7800                         ;9DDECB|A90078  |;
                       STA.B $10                            ;9DDECE|8510    |;
                       LDA.W #$2600                         ;9DDED0|A90026  |;
                       LDX.W #$00C4                         ;9DDED3|A2C400  |;
                       LDY.W #$000C                         ;9DDED6|A00C00  |;
                       JSL.L CODE_80B08D                    ;9DDED9|228DB080|;
                       LDX.W #$0018                         ;9DDEDD|A21800  |;
                       LDY.W #$0001                         ;9DDEE0|A00100  |;
                       JSL.L CODE_9DCCBA                    ;9DDEE3|22BACC9D|;
                       LDA.W #$007F                         ;9DDEE7|A97F00  |;
                       STA.B $0E                            ;9DDEEA|850E    |;
                       LDA.W #$7700                         ;9DDEEC|A90077  |;
                       STA.B $0C                            ;9DDEEF|850C    |;
                       LDA.W #$007E                         ;9DDEF1|A97E00  |;
                       STA.B $12                            ;9DDEF4|8512    |;
                       LDA.W #$3FF4                         ;9DDEF6|A9F43F  |;
                       STA.B $10                            ;9DDEF9|8510    |;
                       LDA.W #$0020                         ;9DDEFB|A92000  |;
                       STA.B $24                            ;9DDEFE|8524    |;
                       LDX.W #$0018                         ;9DDF00|A21800  |;
                       LDY.W #$0001                         ;9DDF03|A00100  |;
                       LDA.W #$0000                         ;9DDF06|A90000  |;
                       JSL.L CODE_808E2D                    ;9DDF09|222D8E80|;
 
          CODE_9DDF0D:
                       LDA.L $7E3478                        ;9DDF0D|AF78347E|;
                       BNE CODE_9DDF6F                      ;9DDF11|D05C    |;
                       LDA.L $7E3454                        ;9DDF13|AF54347E|;
                       BMI CODE_9DDF1F                      ;9DDF17|3006    |;
                       LDA.L $7E3452                        ;9DDF19|AF52347E|;
                       BPL CODE_9DDF63                      ;9DDF1D|1044    |;
 
          CODE_9DDF1F:
                       LDA.W #$007F                         ;9DDF1F|A97F00  |;
                       STA.B $0E                            ;9DDF22|850E    |;
                       LDA.L $7E3470                        ;9DDF24|AF70347E|;
                       STA.B $0C                            ;9DDF28|850C    |;
                       LDA.L $7E35D2                        ;9DDF2A|AFD2357E|;
                       ASL A                                ;9DDF2E|0A      |;
                       ASL A                                ;9DDF2F|0A      |;
                       ASL A                                ;9DDF30|0A      |;
                       ASL A                                ;9DDF31|0A      |;
                       CLC                                  ;9DDF32|18      |;
                       ADC.W #$2000                         ;9DDF33|690020  |;
                       TAY                                  ;9DDF36|A8      |;
                       LDX.W #$0600                         ;9DDF37|A20006  |;
                       JSL.L CODE_808583                    ;9DDF3A|22838580|;
                       JSL.L CODE_80891F                    ;9DDF3E|221F8980|;
                       LDA.W #$007F                         ;9DDF42|A97F00  |;
                       STA.B $0E                            ;9DDF45|850E    |;
                       LDA.L $7E3472                        ;9DDF47|AF72347E|;
                       STA.B $0C                            ;9DDF4B|850C    |;
                       LDA.L $7E35D2                        ;9DDF4D|AFD2357E|;
                       ASL A                                ;9DDF51|0A      |;
                       ASL A                                ;9DDF52|0A      |;
                       ASL A                                ;9DDF53|0A      |;
                       ASL A                                ;9DDF54|0A      |;
                       CLC                                  ;9DDF55|18      |;
                       ADC.W #$2300                         ;9DDF56|690023  |;
                       TAY                                  ;9DDF59|A8      |;
                       LDX.W #$0600                         ;9DDF5A|A20006  |;
                       JSL.L CODE_80891F                    ;9DDF5D|221F8980|;
                       BRA CODE_9DDF67                      ;9DDF61|8004    |;
 
          CODE_9DDF63:
                       JSL.L CODE_808583                    ;9DDF63|22838580|;
 
          CODE_9DDF67:
                       JSL.L CODE_9DD938                    ;9DDF67|2238D99D|;
                       JSL.L CODE_9DD962                    ;9DDF6B|2262D99D|;
 
          CODE_9DDF6F:
                       PLA                                  ;9DDF6F|68      |;
                       STA.B zpCurntTeamLoopVal             ;9DDF70|8591    |;
                       RTL                                  ;9DDF72|6B      |;
 
          CODE_9DDF73:
                       LDA.W #$009A                         ;9DDF73|A99A00  |;
                       STA.B $0E                            ;9DDF76|850E    |;
                       LDA.W #$E9F0                         ;9DDF78|A9F0E9  |;
                       STA.B $0C                            ;9DDF7B|850C    |;
                       LDA.W #$007F                         ;9DDF7D|A97F00  |;
                       STA.B $12                            ;9DDF80|8512    |;
                       LDA.W #$7780                         ;9DDF82|A98077  |;
                       STA.B $10                            ;9DDF85|8510    |;
                       JSL.L CODE_80C373                    ;9DDF87|2273C380|;
                       LDA.L $7F7780                        ;9DDF8B|AF80777F|;
                       ASL A                                ;9DDF8F|0A      |;
                       STA.B $14                            ;9DDF90|8514    |;
                       LDA.L $7F7782                        ;9DDF92|AF82777F|;
                       TAX                                  ;9DDF96|AA      |;
                       LDA.B $10                            ;9DDF97|A510    |;
                       CLC                                  ;9DDF99|18      |;
                       ADC.W #$0006                         ;9DDF9A|690600  |;
                       STA.B $10                            ;9DDF9D|8510    |;
 
          CODE_9DDF9F:
                       LDY.B $14                            ;9DDF9F|A414    |;
                       DEY                                  ;9DDFA1|88      |;
                       DEY                                  ;9DDFA2|88      |;
 
          CODE_9DDFA3:
                       LDA.B [$10],Y                        ;9DDFA3|B710    |;
                       CLC                                  ;9DDFA5|18      |;
                       ADC.L $7E35AC                        ;9DDFA6|6FAC357E|;
                       CLC                                  ;9DDFAA|18      |;
                       ADC.W #$0C00                         ;9DDFAB|69000C  |;
                       STA.B [$10],Y                        ;9DDFAE|9710    |;
                       DEY                                  ;9DDFB0|88      |;
                       DEY                                  ;9DDFB1|88      |;
                       BPL CODE_9DDFA3                      ;9DDFB2|10EF    |;
                       LDA.B $10                            ;9DDFB4|A510    |;
                       CLC                                  ;9DDFB6|18      |;
                       ADC.B $14                            ;9DDFB7|6514    |;
                       STA.B $10                            ;9DDFB9|8510    |;
                       DEX                                  ;9DDFBB|CA      |;
                       BNE CODE_9DDF9F                      ;9DDFBC|D0E1    |;
                       RTL                                  ;9DDFBE|6B      |;
 
          CODE_9DDFBF:
                       STA.B $00                            ;9DDFBF|8500    |;
                       STX.B $04                            ;9DDFC1|8604    |;
                       STY.B $08                            ;9DDFC3|8408    |;
                       LDA.B $00                            ;9DDFC5|A500    |;
                       ASL A                                ;9DDFC7|0A      |;
                       ASL A                                ;9DDFC8|0A      |;
                       TAX                                  ;9DDFC9|AA      |;
                       LDA.L UNREACH_9C8499,X               ;9DDFCA|BF99849C|;
                       STA.B $0E                            ;9DDFCE|850E    |;
                       LDA.L UNREACH_9C8497,X               ;9DDFD0|BF97849C|;
                       STA.B $0C                            ;9DDFD4|850C    |;
                       LDY.W #$00A0                         ;9DDFD6|A0A000  |;
                       LDX.W #$0010                         ;9DDFD9|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9DDFDC|22BDE09D|;
                       LDA.W #$007F                         ;9DDFE0|A97F00  |;
                       STA.B $12                            ;9DDFE3|8512    |;
                       LDA.W #$7800                         ;9DDFE5|A90078  |;
                       STA.B $10                            ;9DDFE8|8510    |;
                       LDA.W #$2400                         ;9DDFEA|A90024  |;
                       LDX.B $04                            ;9DDFED|A604    |;
                       LDY.B $08                            ;9DDFEF|A408    |;
                       JSL.L CODE_80B08D                    ;9DDFF1|228DB080|;
                       RTL                                  ;9DDFF5|6B      |;
 
          CODE_9DDFF6:
                       SEP #$20                             ;9DDFF6|E220    |;
                       LDA.B #$A0                           ;9DDFF8|A9A0    |;
                       STA.W $2125                          ;9DDFFA|8D2521  |;
                       LDA.B #$40                           ;9DDFFD|A940    |;
                       STA.W $2126                          ;9DDFFF|8D2621  |;
                       LDA.B #$BF                           ;9DE002|A9BF    |;
                       STA.W $2127                          ;9DE004|8D2721  |;
                       LDA.B #$10                           ;9DE007|A910    |;
                       STA.W $2130                          ;9DE009|8D3021  |;
                       LDA.B #$02                           ;9DE00C|A902    |;
                       STA.W $2131                          ;9DE00E|8D3121  |;
                       LDA.B #$E5                           ;9DE011|A9E5    |;
                       STA.W $2132                          ;9DE013|8D3221  |;
                       LDA.B #$44                           ;9DE016|A944    |;
                       STA.W $4320                          ;9DE018|8D2043  |;
                       LDA.B #$9D                           ;9DE01B|A99D    |;
                       STA.W $4324                          ;9DE01D|8D2443  |;
                       STA.W $4327                          ;9DE020|8D2743  |;
                       LDX.W #$E056                         ;9DE023|A256E0  |;
                       STX.W $4322                          ;9DE026|8E2243  |;
                       LDA.B #$26                           ;9DE029|A926    |;
                       STA.W $4321                          ;9DE02B|8D2143  |;
                       LDA.B #$40                           ;9DE02E|A940    |;
                       STA.W $4330                          ;9DE030|8D3043  |;
                       LDA.B #$9D                           ;9DE033|A99D    |;
                       STA.W $4334                          ;9DE035|8D3443  |;
                       STA.W $4337                          ;9DE038|8D3743  |;
                       LDX.W #$E064                         ;9DE03B|A264E0  |;
                       STX.W $4332                          ;9DE03E|8E3243  |;
                       LDA.B #$32                           ;9DE041|A932    |;
                       STA.W $4331                          ;9DE043|8D3143  |;
                       LDA.B #$0C                           ;9DE046|A90C    |;
                       STA.W $420C                          ;9DE048|8D0C42  |;
                       REP #$20                             ;9DE04B|C220    |;
                       RTL                                  ;9DE04D|6B      |;
                       db $FF,$00,$FF,$00,$40,$BF,$FF,$00   ;9DE04E|        |;
                       db $10,$4E,$E0,$20,$52,$E0,$14,$4E   ;9DE056|        |;
                       db $E0,$00,$EF,$E7,$E3,$E0,$0C,$63   ;9DE05E|        |;
                       db $E0,$06,$62,$E0,$1C,$61,$E0,$08   ;9DE066|        |;
                       db $60,$E0,$14,$63,$E0,$00           ;9DE06E|        |;
 
          CODE_9DE074:
                       LDA.W #$0200                         ;9DE074|A90002  |;
                       STA.L $7E35D0                        ;9DE077|8FD0357E|;
                       INC A                                ;9DE07B|1A      |;
                       STA.L $7E35B6                        ;9DE07C|8FB6357E|;
                       LDA.W #$0000                         ;9DE080|A90000  |;
                       LDY.W #$3000                         ;9DE083|A00030  |;
                       LDX.W #$0020                         ;9DE086|A22000  |;
                       JSL.L CODE_8087EA                    ;9DE089|22EA8780|;
                       LDA.W #$0096                         ;9DE08D|A99600  |;
                       STA.B $0E                            ;9DE090|850E    |;
                       LDA.W #$A103                         ;9DE092|A903A1  |;
                       STA.B $0C                            ;9DE095|850C    |;
                       LDA.W #$007F                         ;9DE097|A97F00  |;
                       STA.B $12                            ;9DE09A|8512    |;
                       LDA.W #$0000                         ;9DE09C|A90000  |;
                       STA.B $10                            ;9DE09F|8510    |;
                       JSL.L CODE_80C373                    ;9DE0A1|2273C380|;
                       TXA                                  ;9DE0A5|8A      |;
                       LSR A                                ;9DE0A6|4A      |;
                       LSR A                                ;9DE0A7|4A      |;
                       LSR A                                ;9DE0A8|4A      |;
                       LSR A                                ;9DE0A9|4A      |;
                       LSR A                                ;9DE0AA|4A      |;
                       STA.B $A5                            ;9DE0AB|85A5    |;
                       ADC.L $7E35B6                        ;9DE0AD|6FB6357E|;
                       STA.L $7E35BC                        ;9DE0B1|8FBC357E|;
                       ADC.W #$0004                         ;9DE0B5|690400  |;
                       STA.L $7E35CE                        ;9DE0B8|8FCE357E|;
                       RTL                                  ;9DE0BC|6B      |;
 
          CODE_9DE0BD:
                       STX.B $16                            ;9DE0BD|8616    |;
                       TYA                                  ;9DE0BF|98      |;
                       ASL A                                ;9DE0C0|0A      |;
                       TAX                                  ;9DE0C1|AA      |;
                       LDY.W #$0000                         ;9DE0C2|A00000  |;
 
          CODE_9DE0C5:
                       LDA.B [$0C],Y                        ;9DE0C5|B70C    |;
                       STA.L $7F7500,X                      ;9DE0C7|9F00757F|;
                       INY                                  ;9DE0CB|C8      |;
                       INY                                  ;9DE0CC|C8      |;
                       INX                                  ;9DE0CD|E8      |;
                       INX                                  ;9DE0CE|E8      |;
                       DEC.B $16                            ;9DE0CF|C616    |;
                       BNE CODE_9DE0C5                      ;9DE0D1|D0F2    |;
                       RTL                                  ;9DE0D3|6B      |;
 
          CODE_9DE0D4:
                       LDA.W #$007F                         ;9DE0D4|A97F00  |;
                       STA.B $0E                            ;9DE0D7|850E    |;
                       LDA.W #$7500                         ;9DE0D9|A90075  |;
                       STA.B $0C                            ;9DE0DC|850C    |;
                       LDY.W #$0000                         ;9DE0DE|A00000  |;
                       LDX.W #$0100                         ;9DE0E1|A20001  |;
                       JSL.L CODE_808723                    ;9DE0E4|22238780|;
                       RTL                                  ;9DE0E8|6B      |;
 
          CODE_9DE0E9:
                       STZ.B zpCurntTeamLoopVal             ;9DE0E9|6491    |;
                       LDX.W $0AC6                          ;9DE0EB|AEC60A  |;
                       LDA.W $1C84,X                        ;9DE0EE|BD841C  |;
                       CMP.W #$0002                         ;9DE0F1|C90200  |;
                       BNE CODE_9DE0FB                      ;9DE0F4|D005    |;
                       LDA.W #$0002                         ;9DE0F6|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9DE0F9|8591    |;
 
          CODE_9DE0FB:
                       RTL                                  ;9DE0FB|6B      |;
                       db $00,$00                           ;9DE0FC|        |;
                       db $10,$E1,$24,$E1,$38,$E1,$4C,$E1   ;9DE0FE|        |;
                       db $60,$E1                           ;9DE106|        |;
                       db $74,$E1                           ;9DE108|        |;
                       db $88,$E1,$9C,$E1,$01,$00,$16,$02   ;9DE10A|        |;
                       db $B4,$00,$86,$02,$14,$00,$16,$02   ;9DE112|        |;
                       db $0A,$00,$87,$02,$14,$00,$16,$02   ;9DE11A|        |;
                       db $F6,$FF,$19,$02                   ;9DE122|        |;
                       db $82,$00,$88,$02,$0A,$00,$89,$02   ;9DE126|        |;
                       db $14,$00,$19,$02,$01,$00,$19,$02   ;9DE12E|        |;
                       db $F7,$FF                           ;9DE136|        |;
                       db $1C,$02                           ;9DE138|        |;
                       db $D2,$00,$8A,$02,$0A,$00,$8B,$02   ;9DE13A|        |;
                       db $14,$00,$1C,$02,$01,$00,$1C,$02   ;9DE142|        |;
                       db $F7,$FF                           ;9DE14A|        |;
                       db $1F,$02,$64,$00                   ;9DE14C|        |;
                       db $8C,$02,$14,$00,$8D,$02,$0A,$00   ;9DE150|        |;
                       db $1F,$02,$01,$00                   ;9DE158|        |;
                       db $1F,$02                           ;9DE15C|        |;
                       db $F7,$FF                           ;9DE15E|        |;
                       db $22,$02,$F0,$00,$8E,$02,$0A,$00   ;9DE160|        |;
                       db $8F,$02,$1E,$00,$8E,$02,$0A,$00   ;9DE168|        |;
                       db $22,$02,$F6,$FF                   ;9DE170|        |;
                       db $25,$02,$B4,$00,$90,$02,$14,$00   ;9DE174|        |;
                       db $91,$02,$14,$00,$25,$02,$01,$00   ;9DE17C|        |;
                       db $25,$02,$F7,$FF                   ;9DE184|        |;
                       db $28,$02,$78,$00,$92,$02,$14,$00   ;9DE188|        |;
                       db $93,$02,$14,$00                   ;9DE190|        |;
                       db $92,$02,$0A,$00,$28,$02,$F6,$FF   ;9DE194|        |;
                       db $2B,$02,$B4,$00                   ;9DE19C|        |;
                       db $94,$02,$14,$00                   ;9DE1A0|        |;
                       db $95,$02,$14,$00,$2B,$02,$01,$00   ;9DE1A4|        |;
                       db $2B,$02,$F7,$FF                   ;9DE1AC|        |;
                       db $C2,$E1,$C6,$E1,$CA,$E1,$CE,$E1   ;9DE1B0|        |;
                       db $D2,$E1,$D6,$E1,$DA,$E1,$DE,$E1   ;9DE1B8|        |;
                       db $00,$00,$16,$02,$E2,$FF,$19,$02   ;9DE1C0|        |;
                       db $E2,$FF,$1C,$02,$E2,$FF,$1F,$02   ;9DE1C8|        |;
                       db $E2,$FF,$22,$02,$E2,$FF,$25,$02   ;9DE1D0|        |;
                       db $E2,$FF,$28,$02,$E2,$FF,$2B,$02   ;9DE1D8|        |;
                       db $E2,$FF,$F4,$E1,$F8,$E1,$FC,$E1   ;9DE1E0|        |;
                       db $00,$E2,$04,$E2,$08,$E2,$0C,$E2   ;9DE1E8|        |;
                       db $10,$E2,$00,$00,$17,$02,$E0,$FF   ;9DE1F0|        |;
                       db $1A,$02,$E0,$FF,$1D,$02,$E0,$FF   ;9DE1F8|        |;
                       db $20,$02,$E0,$FF,$23,$02,$E0,$FF   ;9DE200|        |;
                       db $26,$02,$E0,$FF,$29,$02,$E0,$FF   ;9DE208|        |;
                       db $2C,$02,$E0,$FF,$26,$E2,$2A,$E2   ;9DE210|        |;
                       db $2E,$E2,$32,$E2                   ;9DE218|        |;
                       db $36,$E2                           ;9DE21C|        |;
                       db $3A,$E2,$3E,$E2,$42,$E2           ;9DE21E|        |;
                       db $00,$00                           ;9DE224|        |;
                       db $18,$02,$E0,$FF,$1B,$02,$E0,$FF   ;9DE226|        |;
                       db $1E,$02,$E0,$FF,$21,$02,$E0,$FF   ;9DE22E|        |;
                       db $24,$02,$E0,$FF                   ;9DE236|        |;
                       db $27,$02,$E0,$FF,$2A,$02,$E0,$FF   ;9DE23A|        |;
                       db $2D,$02,$E0,$FF,$58,$E2,$5C,$E2   ;9DE242|        |;
                       db $60,$E2,$64,$E2                   ;9DE24A|        |;
                       db $68,$E2                           ;9DE24E|        |;
                       db $6C,$E2                           ;9DE250|        |;
                       db $70,$E2                           ;9DE252|        |;
                       db $74,$E2                           ;9DE254|        |;
                       db $00,$00                           ;9DE256|        |;
                       db $56,$02,$E0,$FF,$58,$02,$E0,$FF   ;9DE258|        |;
                       db $5A,$02,$E0,$FF,$5C,$02,$E0,$FF   ;9DE260|        |;
                       db $5E,$02,$E0,$FF                   ;9DE268|        |;
                       db $60,$02,$E0,$FF                   ;9DE26C|        |;
                       db $62,$02,$E0,$FF                   ;9DE270|        |;
                       db $64,$02,$E0,$FF,$8A,$E2,$8E,$E2   ;9DE274|        |;
                       db $92,$E2,$96,$E2,$9A,$E2,$9E,$E2   ;9DE27C|        |;
                       db $A2,$E2,$A6,$E2,$00,$00,$57,$02   ;9DE284|        |;
                       db $E0,$FF,$59,$02,$E0,$FF,$5B,$02   ;9DE28C|        |;
                       db $E0,$FF,$5D,$02,$E0,$FF,$5F,$02   ;9DE294|        |;
                       db $E0,$FF,$61,$02,$E0,$FF,$63,$02   ;9DE29C|        |;
                       db $E0,$FF,$65,$02,$E0,$FF,$BC,$E2   ;9DE2A4|        |;
                       db $C4,$E2,$CC,$E2,$D4,$E2,$DC,$E2   ;9DE2AC|        |;
                       db $E4,$E2,$EC,$E2,$F4,$E2,$00,$00   ;9DE2B4|        |;
                       db $3E,$02,$08,$00,$3F,$02,$EC,$FF   ;9DE2BC|        |;
                       db $40,$02,$08,$00,$41,$02,$EC,$FF   ;9DE2C4|        |;
                       db $40,$02,$08,$00,$41,$02,$EC,$FF   ;9DE2CC|        |;
                       db $42,$02,$08,$00,$43,$02,$EC,$FF   ;9DE2D4|        |;
                       db $44,$02,$08,$00,$45,$02,$EC,$FF   ;9DE2DC|        |;
                       db $46,$02,$08,$00,$47,$02,$EC,$FF   ;9DE2E4|        |;
                       db $46,$02,$08,$00,$47,$02,$EC,$FF   ;9DE2EC|        |;
                       db $48,$02,$08,$00,$49,$02,$EC,$FF   ;9DE2F4|        |;
                       db $0E,$E3,$16,$E3,$1E,$E3,$26,$E3   ;9DE2FC|        |;
                       db $2E,$E3,$36,$E3,$3E,$E3,$46,$E3   ;9DE304|        |;
                       db $00,$00,$4A,$02,$08,$00,$4B,$02   ;9DE30C|        |;
                       db $EC,$FF,$4C,$02,$08,$00,$4D,$02   ;9DE314|        |;
                       db $EC,$FF,$4C,$02,$08,$00,$4D,$02   ;9DE31C|        |;
                       db $EC,$FF,$4E,$02,$08,$00,$4F,$02   ;9DE324|        |;
                       db $EC,$FF,$50,$02,$08,$00,$51,$02   ;9DE32C|        |;
                       db $EC,$FF,$52,$02,$08,$00,$53,$02   ;9DE334|        |;
                       db $EC,$FF,$52,$02,$08,$00,$53,$02   ;9DE33C|        |;
                       db $EC,$FF,$54,$02,$08,$00,$55,$02   ;9DE344|        |;
                       db $EC,$FF,$60,$E3,$6C,$E3,$78,$E3   ;9DE34C|        |;
                       db $84,$E3                           ;9DE354|        |;
                       db $90,$E3                           ;9DE356|        |;
                       db $9C,$E3,$A8,$E3,$B4,$E3           ;9DE358|        |;
                       db $00,$00                           ;9DE35E|        |;
                       db $2E,$02,$05,$00,$2F,$02,$08,$00   ;9DE360|        |;
                       db $2E,$02,$F0,$FF,$30,$02,$05,$00   ;9DE368|        |;
                       db $31,$02,$08,$00,$30,$02,$F0,$FF   ;9DE370|        |;
                       db $32,$02,$05,$00,$33,$02,$08,$00   ;9DE378|        |;
                       db $32,$02,$F0,$FF,$34,$02,$05,$00   ;9DE380|        |;
                       db $35,$02,$08,$00,$34,$02,$F0,$FF   ;9DE388|        |;
                       db $36,$02,$05,$00,$37,$02,$08,$00   ;9DE390|        |;
                       db $36,$02,$F0,$FF                   ;9DE398|        |;
                       db $38,$02,$05,$00,$39,$02,$08,$00   ;9DE39C|        |;
                       db $38,$02,$F0,$FF,$3A,$02,$05,$00   ;9DE3A4|        |;
                       db $3B,$02,$08,$00,$3A,$02,$F0,$FF   ;9DE3AC|        |;
                       db $3C,$02,$05,$00,$3D,$02,$08,$00   ;9DE3B4|        |;
                       db $3C,$02,$F0,$FF,$D2,$E3,$E2,$E3   ;9DE3BC|        |;
                       db $F2,$E3,$02,$E4,$12,$E4,$22,$E4   ;9DE3C4|        |;
                       db $32,$E4,$42,$E4,$01,$00,$66,$02   ;9DE3CC|        |;
                       db $0A,$00,$67,$02,$0A,$00,$68,$02   ;9DE3D4|        |;
                       db $0A,$00,$69,$02,$F1,$FF,$6A,$02   ;9DE3DC|        |;
                       db $0A,$00,$6B,$02,$0A,$00,$6C,$02   ;9DE3E4|        |;
                       db $0A,$00,$6D,$02,$F1,$FF,$6E,$02   ;9DE3EC|        |;
                       db $0A,$00,$6F,$02,$0A,$00,$70,$02   ;9DE3F4|        |;
                       db $0A,$00,$71,$02,$F1,$FF,$72,$02   ;9DE3FC|        |;
                       db $0A,$00,$73,$02,$0A,$00,$74,$02   ;9DE404|        |;
                       db $0A,$00,$75,$02,$F1,$FF,$76,$02   ;9DE40C|        |;
                       db $0A,$00,$77,$02,$0A,$00,$78,$02   ;9DE414|        |;
                       db $0A,$00,$79,$02,$F1,$FF,$7A,$02   ;9DE41C|        |;
                       db $0A,$00,$7B,$02,$0A,$00,$7C,$02   ;9DE424|        |;
                       db $0A,$00,$7D,$02,$F1,$FF,$7E,$02   ;9DE42C|        |;
                       db $0A,$00,$7F,$02,$0A,$00,$80,$02   ;9DE434|        |;
                       db $0A,$00,$81,$02,$F1,$FF,$82,$02   ;9DE43C|        |;
                       db $0A,$00,$83,$02,$0A,$00,$84,$02   ;9DE444|        |;
                       db $0A,$00,$85,$02,$F1,$FF,$64,$E4   ;9DE44C|        |;
                       db $64,$E4,$64,$E4,$74,$E4,$74,$E4   ;9DE454|        |;
                       db $74,$E4,$74,$E4,$84,$E4,$00,$00   ;9DE45C|        |;
                       db $72,$01,$08,$00,$73,$01,$08,$00   ;9DE464|        |;
                       db $74,$01,$08,$00,$75,$01,$F8,$FF   ;9DE46C|        |;
                       db $75,$01,$08,$00,$74,$01,$08,$00   ;9DE474|        |;
                       db $73,$01,$08,$00,$72,$01,$F8,$FF   ;9DE47C|        |;
                       db $96,$E4,$96,$E4,$96,$E4,$A6,$E4   ;9DE484|        |;
                       db $A6,$E4,$A6,$E4,$A6,$E4,$B6,$E4   ;9DE48C|        |;
                       db $00,$00,$75,$01,$08,$00,$74,$01   ;9DE494|        |;
                       db $08,$00,$73,$01,$08,$00,$72,$01   ;9DE49C|        |;
                       db $F8,$FF,$72,$01,$08,$00,$73,$01   ;9DE4A4|        |;
                       db $08,$00,$74,$01,$08,$00,$75,$01   ;9DE4AC|        |;
                       db $F8,$FF,$C8,$E4,$D4,$E4,$E0,$E4   ;9DE4B4|        |;
                       db $EC,$E4,$F8,$E4,$04,$E5,$10,$E5   ;9DE4BC|        |;
                       db $1C,$E5,$00,$00,$96,$02,$08,$00   ;9DE4C4|        |;
                       db $97,$02,$30,$00,$96,$02,$F8,$FF   ;9DE4CC|        |;
                       db $98,$02,$08,$00,$99,$02,$30,$00   ;9DE4D4|        |;
                       db $98,$02,$F8,$FF,$9A,$02,$08,$00   ;9DE4DC|        |;
                       db $9B,$02,$30,$00,$9A,$02,$F8,$FF   ;9DE4E4|        |;
                       db $9C,$02,$08,$00,$9D,$02,$30,$00   ;9DE4EC|        |;
                       db $9C,$02,$F8,$FF,$9E,$02,$08,$00   ;9DE4F4|        |;
                       db $9F,$02,$30,$00,$9E,$02,$F8,$FF   ;9DE4FC|        |;
                       db $A0,$02,$08,$00,$A1,$02,$30,$00   ;9DE504|        |;
                       db $A0,$02,$F8,$FF,$A2,$02,$08,$00   ;9DE50C|        |;
                       db $A3,$02,$30,$00,$A2,$02,$F8,$FF   ;9DE514|        |;
                       db $A4,$02,$08,$00,$A5,$02,$30,$00   ;9DE51C|        |;
                       db $A4,$02,$F8,$FF,$3A,$E5,$46,$E5   ;9DE524|        |;
                       db $52,$E5                           ;9DE52C|        |;
                       db $5E,$E5                           ;9DE52E|        |;
                       db $6A,$E5,$76,$E5,$82,$E5,$8E,$E5   ;9DE530|        |;
                       db $00,$00                           ;9DE538|        |;
                       db $A6,$02,$04,$00,$A7,$02,$0F,$00   ;9DE53A|        |;
                       db $A6,$02,$FA,$FF,$A8,$02,$04,$00   ;9DE542|        |;
                       db $A9,$02,$0F,$00,$A8,$02,$FA,$FF   ;9DE54A|        |;
                       db $AA,$02,$04,$00,$AB,$02,$0F,$00   ;9DE552|        |;
                       db $AA,$02,$FA,$FF                   ;9DE55A|        |;
                       db $AC,$02,$04,$00,$AD,$02,$0F,$00   ;9DE55E|        |;
                       db $AC,$02,$FA,$FF                   ;9DE566|        |;
                       db $AE,$02,$04,$00,$AF,$02,$0F,$00   ;9DE56A|        |;
                       db $AE,$02,$FA,$FF,$B0,$02,$04,$00   ;9DE572|        |;
                       db $B1,$02,$0F,$00,$B0,$02,$FA,$FF   ;9DE57A|        |;
                       db $B2,$02,$04,$00,$B3,$02,$0F,$00   ;9DE582|        |;
                       db $B2,$02,$FA,$FF,$B4,$02,$04,$00   ;9DE58A|        |;
                       db $B5,$02,$0F,$00,$B4,$02,$FA,$FF   ;9DE592|        |;
                       db $AC,$E5,$C4,$E5,$DC,$E5,$F4,$E5   ;9DE59A|        |;
                       db $0C,$E6,$24,$E6,$3C,$E6,$54,$E6   ;9DE5A2|        |;
                       db $00,$00,$B6,$02,$06,$00,$B7,$02   ;9DE5AA|        |;
                       db $06,$00,$B8,$02,$14,$00,$B7,$02   ;9DE5B2|        |;
                       db $06,$00,$B6,$02,$06,$00,$86,$02   ;9DE5BA|        |;
                       db $F8,$FF,$B9,$02,$06,$00,$BA,$02   ;9DE5C2|        |;
                       db $06,$00,$BB,$02,$14,$00,$BA,$02   ;9DE5CA|        |;
                       db $06,$00,$B9,$02,$06,$00,$88,$02   ;9DE5D2|        |;
                       db $F8,$FF,$BC,$02,$06,$00,$BD,$02   ;9DE5DA|        |;
                       db $06,$00,$BE,$02,$14,$00,$BD,$02   ;9DE5E2|        |;
                       db $06,$00,$BC,$02,$06,$00,$8A,$02   ;9DE5EA|        |;
                       db $F8,$FF,$BF,$02,$06,$00,$C0,$02   ;9DE5F2|        |;
                       db $06,$00,$C1,$02,$14,$00,$C0,$02   ;9DE5FA|        |;
                       db $06,$00,$BF,$02,$06,$00,$8C,$02   ;9DE602|        |;
                       db $F8,$FF,$C2,$02,$06,$00,$C3,$02   ;9DE60A|        |;
                       db $06,$00,$C4,$02,$14,$00,$C3,$02   ;9DE612|        |;
                       db $06,$00,$C2,$02,$06,$00,$8E,$02   ;9DE61A|        |;
                       db $F8,$FF,$C5,$02,$06,$00,$C6,$02   ;9DE622|        |;
                       db $06,$00,$C7,$02,$14,$00,$C6,$02   ;9DE62A|        |;
                       db $06,$00,$C5,$02,$06,$00,$90,$02   ;9DE632|        |;
                       db $F8,$FF,$C8,$02,$06,$00,$C9,$02   ;9DE63A|        |;
                       db $06,$00,$CA,$02,$14,$00,$C9,$02   ;9DE642|        |;
                       db $06,$00,$C8,$02,$06,$00,$92,$02   ;9DE64A|        |;
                       db $F8,$FF,$CB,$02,$06,$00,$CC,$02   ;9DE652|        |;
                       db $06,$00,$CD,$02,$14,$00,$CC,$02   ;9DE65A|        |;
                       db $06,$00,$CB,$02,$06,$00,$94,$02   ;9DE662|        |;
                       db $F8,$FF,$7E,$E6,$96,$E6,$AE,$E6   ;9DE66A|        |;
                       db $C6,$E6                           ;9DE672|        |;
                       db $DE,$E6                           ;9DE674|        |;
                       db $F6,$E6,$0E,$E7,$26,$E7           ;9DE676|        |;
                       db $00,$00                           ;9DE67C|        |;
                       db $B6,$02,$06,$00,$B7,$02,$06,$00   ;9DE67E|        |;
                       db $B8,$02,$5A,$00,$B7,$02,$06,$00   ;9DE686|        |;
                       db $B6,$02,$06,$00,$86,$02,$FC,$FF   ;9DE68E|        |;
                       db $B9,$02,$06,$00,$BA,$02,$06,$00   ;9DE696|        |;
                       db $BB,$02,$5A,$00,$BA,$02,$06,$00   ;9DE69E|        |;
                       db $B9,$02,$06,$00,$88,$02,$FC,$FF   ;9DE6A6|        |;
                       db $BC,$02,$06,$00,$BD,$02,$06,$00   ;9DE6AE|        |;
                       db $BE,$02,$5A,$00,$BD,$02,$06,$00   ;9DE6B6|        |;
                       db $BC,$02,$06,$00,$8A,$02,$FC,$FF   ;9DE6BE|        |;
                       db $BF,$02,$06,$00,$C0,$02,$06,$00   ;9DE6C6|        |;
                       db $C1,$02,$5A,$00,$C0,$02,$06,$00   ;9DE6CE|        |;
                       db $BF,$02,$06,$00,$8C,$02,$FC,$FF   ;9DE6D6|        |;
                       db $C2,$02,$06,$00,$C3,$02,$06,$00   ;9DE6DE|        |;
                       db $C4,$02,$5A,$00,$C3,$02,$06,$00   ;9DE6E6|        |;
                       db $C2,$02,$06,$00,$8E,$02,$FC,$FF   ;9DE6EE|        |;
                       db $C5,$02,$06,$00,$C6,$02,$06,$00   ;9DE6F6|        |;
                       db $C7,$02,$5A,$00,$C6,$02,$06,$00   ;9DE6FE|        |;
                       db $C5,$02,$06,$00,$90,$02,$FC,$FF   ;9DE706|        |;
                       db $C8,$02,$06,$00,$C9,$02,$06,$00   ;9DE70E|        |;
                       db $CA,$02,$5A,$00,$C9,$02,$06,$00   ;9DE716|        |;
                       db $C8,$02,$06,$00,$92,$02,$FC,$FF   ;9DE71E|        |;
                       db $CB,$02,$06,$00,$CC,$02,$06,$00   ;9DE726|        |;
                       db $CD,$02,$5A,$00,$CC,$02,$06,$00   ;9DE72E|        |;
                       db $CB,$02,$06,$00,$94,$02,$FC,$FF   ;9DE736|        |;
                       db $50,$E7,$60,$E7,$70,$E7,$80,$E7   ;9DE73E|        |;
                       db $90,$E7,$A0,$E7,$B0,$E7,$C0,$E7   ;9DE746|        |;
                       db $00,$00,$CE,$02,$06,$00,$CF,$02   ;9DE74E|        |;
                       db $06,$00,$D0,$02,$14,$00,$86,$02   ;9DE756|        |;
                       db $FC,$FF,$D1,$02,$06,$00,$D2,$02   ;9DE75E|        |;
                       db $06,$00,$D3,$02,$14,$00,$88,$02   ;9DE766|        |;
                       db $FC,$FF,$D4,$02,$06,$00,$D5,$02   ;9DE76E|        |;
                       db $06,$00,$D6,$02,$14,$00,$8A,$02   ;9DE776|        |;
                       db $FC,$FF,$D7,$02,$06,$00,$D8,$02   ;9DE77E|        |;
                       db $06,$00,$D9,$02,$14,$00,$8C,$02   ;9DE786|        |;
                       db $FC,$FF,$DA,$02,$06,$00,$DB,$02   ;9DE78E|        |;
                       db $06,$00,$DC,$02,$14,$00,$8E,$02   ;9DE796|        |;
                       db $FC,$FF,$DD,$02,$06,$00,$DE,$02   ;9DE79E|        |;
                       db $06,$00,$DF,$02,$14,$00,$90,$02   ;9DE7A6|        |;
                       db $FC,$FF,$E0,$02,$06,$00,$E1,$02   ;9DE7AE|        |;
                       db $06,$00,$E2,$02,$14,$00,$92,$02   ;9DE7B6|        |;
                       db $FC,$FF,$E3,$02,$06,$00,$E4,$02   ;9DE7BE|        |;
                       db $06,$00,$E5,$02,$14,$00,$94,$02   ;9DE7C6|        |;
                       db $FC,$FF,$E2,$E7,$F2,$E7,$02,$E8   ;9DE7CE|        |;
                       db $12,$E8,$22,$E8,$32,$E8,$42,$E8   ;9DE7D6|        |;
                       db $52,$E8,$00,$00,$E6,$02,$04,$00   ;9DE7DE|        |;
                       db $E7,$02,$04,$00,$E8,$02,$14,$00   ;9DE7E6|        |;
                       db $86                               ;9DE7EE|        |;
                       db $02,$FC,$FF,$E9,$02,$04,$00,$EA   ;9DE7EF|        |;
                       db $02,$04,$00,$EB,$02,$14,$00,$88   ;9DE7F7|        |;
                       db $02,$FC,$FF,$EC,$02,$04,$00,$ED   ;9DE7FF|        |;
                       db $02,$04,$00,$EE,$02,$14,$00,$8A   ;9DE807|        |;
                       db $02,$FC,$FF,$EF,$02,$04,$00,$F0   ;9DE80F|        |;
                       db $02,$04,$00,$F1,$02,$14,$00,$8C   ;9DE817|        |;
                       db $02,$FC,$FF,$F2,$02,$04,$00,$F3   ;9DE81F|        |;
                       db $02,$04,$00,$F4,$02,$14,$00,$8E   ;9DE827|        |;
                       db $02,$FC,$FF,$F5,$02,$04,$00,$F6   ;9DE82F|        |;
                       db $02,$04,$00,$F7,$02,$14,$00,$90   ;9DE837|        |;
                       db $02,$FC,$FF,$F8,$02,$04,$00,$F9   ;9DE83F|        |;
                       db $02,$04,$00,$FA,$02,$14,$00,$92   ;9DE847|        |;
                       db $02,$FC,$FF,$FB,$02,$04,$00,$FC   ;9DE84F|        |;
                       db $02,$04,$00,$FD,$02,$14,$00,$94   ;9DE857|        |;
                       db $02,$FC,$FF,$74,$E8,$84,$E8,$94   ;9DE85F|        |;
                       db $E8,$A4,$E8,$B4,$E8,$C4,$E8,$D4   ;9DE867|        |;
                       db $E8,$E4,$E8,$00,$00,$FE,$02,$04   ;9DE86F|        |;
                       db $00,$FF,$02,$04,$00,$00,$03,$14   ;9DE877|        |;
                       db $00,$86,$02,$FC,$FF,$01,$03,$04   ;9DE87F|        |;
                       db $00,$02,$03,$04,$00,$03,$03,$14   ;9DE887|        |;
                       db $00,$88,$02,$FC,$FF,$04,$03,$04   ;9DE88F|        |;
                       db $00,$05,$03,$04,$00,$06,$03,$14   ;9DE897|        |;
                       db $00,$8A,$02,$FC,$FF,$07,$03,$04   ;9DE89F|        |;
                       db $00,$08,$03,$04,$00,$09,$03,$14   ;9DE8A7|        |;
                       db $00,$8C,$02,$FC,$FF,$0A,$03,$04   ;9DE8AF|        |;
                       db $00,$0B,$03,$04,$00,$0C,$03,$14   ;9DE8B7|        |;
                       db $00,$8E,$02,$FC,$FF,$0D,$03,$04   ;9DE8BF|        |;
                       db $00,$0E,$03,$04,$00,$0F,$03,$14   ;9DE8C7|        |;
                       db $00,$90,$02,$FC,$FF,$10,$03,$04   ;9DE8CF|        |;
                       db $00,$11,$03,$04,$00,$12,$03,$14   ;9DE8D7|        |;
                       db $00,$92,$02,$FC,$FF,$13,$03,$04   ;9DE8DF|        |;
                       db $00,$14,$03,$04,$00,$15,$03,$14   ;9DE8E7|        |;
                       db $00,$94,$02,$FC,$FF,$06,$E9,$16   ;9DE8EF|        |;
                       db $E9,$16,$E9,$26,$E9,$26,$E9,$26   ;9DE8F7|        |;
                       db $E9,$26,$E9,$36,$E9,$00,$00,$6D   ;9DE8FF|        |;
                       db $01,$08,$00,$6E,$01,$08,$00,$6F   ;9DE907|        |;
                       db $01,$08,$00,$70,$01,$F1,$FF,$69   ;9DE90F|        |;
                       db $01,$08,$00,$6A,$01,$08,$00,$6B   ;9DE917|        |;
                       db $01,$08,$00,$6C,$01,$F8,$FF,$6C   ;9DE91F|        |;
                       db $01,$08,$00,$6B,$01,$08,$00,$6A   ;9DE927|        |;
                       db $01,$08,$00,$69,$01,$F8,$FF,$48   ;9DE92F|        |;
                       db $E9,$58,$E9,$58,$E9,$68,$E9,$68   ;9DE937|        |;
                       db $E9,$68,$E9,$68,$E9,$78,$E9,$00   ;9DE93F|        |;
                       db $00,$6F,$01,$08,$00,$6E,$01,$08   ;9DE947|        |;
                       db $00,$6D,$01,$08,$00,$70,$01,$F1   ;9DE94F|        |;
                       db $FF,$6C,$01,$08,$00,$6B,$01,$08   ;9DE957|        |;
                       db $00,$6A,$01,$08,$00,$69,$01,$F8   ;9DE95F|        |;
                       db $FF,$69,$01,$08,$00,$6A,$01,$08   ;9DE967|        |;
                       db $00,$6B,$01,$08,$00,$6C,$01,$F8   ;9DE96F|        |;
                       db $FF,$8A,$E9,$AA,$E9,$CA,$E9,$EA   ;9DE977|        |;
                       db $E9,$0A,$EA,$0E,$EA,$12,$EA,$16   ;9DE97F|        |;
                       db $EA,$01,$00,$8E,$01,$04,$00,$8F   ;9DE987|        |;
                       db $01,$04,$00,$90,$01,$04,$00,$91   ;9DE98F|        |;
                       db $01,$04,$00,$92,$01,$04,$00,$8F   ;9DE997|        |;
                       db $01,$04,$00,$93,$01,$04,$00,$8D   ;9DE99F|        |;
                       db $01,$FC,$FF,$95,$01,$02,$00,$8D   ;9DE9A7|        |;
                       db $01,$02,$00,$94,$01,$02,$00,$91   ;9DE9AF|        |;
                       db $01,$02,$00,$96,$01,$02,$00,$91   ;9DE9B7|        |;
                       db $01,$02,$00,$94,$01,$02,$00,$8D   ;9DE9BF|        |;
                       db $01,$FE,$FF,$90,$01,$02,$00,$8F   ;9DE9C7|        |;
                       db $01,$02,$00,$8E,$01,$02,$00,$8D   ;9DE9CF|        |;
                       db $01,$02,$00,$93,$01,$02,$00,$8F   ;9DE9D7|        |;
                       db $01,$02,$00,$92,$01,$02,$00,$91   ;9DE9DF|        |;
                       db $01,$FE,$FF,$94                   ;9DE9E7|        |;
                       db $01,$04,$00,$8D,$01,$04,$00,$95   ;9DE9EB|        |;
                       db $01,$04,$00,$8D,$01,$04,$00,$94   ;9DE9F3|        |;
                       db $01,$04,$00,$91,$01,$04,$00,$96   ;9DE9FB|        |;
                       db $01,$04,$00,$91,$01,$FC,$FF       ;9DEA03|        |;
                       db $8D,$01,$00,$F0,$8D,$01,$00,$F0   ;9DEA0A|        |;
                       db $91,$01,$00,$F0                   ;9DEA12|        |;
                       db $91,$01,$00,$F0                   ;9DEA16|        |;
                       db $2C,$EA,$30,$EA,$34,$EA,$38,$EA   ;9DEA1A|        |;
                       db $3C,$EA,$40,$EA,$44,$EA,$48,$EA   ;9DEA22|        |;
                       db $00,$00,$01,$00,$F8,$FF,$06,$00   ;9DEA2A|        |;
                       db $F8,$FF,$0B,$00,$F8,$FF,$10,$00   ;9DEA32|        |;
                       db $F8,$FF,$15,$00,$F8,$FF,$1A,$00   ;9DEA3A|        |;
                       db $F8,$FF,$1F,$00,$F8,$FF,$24,$00   ;9DEA42|        |;
                       db $F8,$FF,$5E,$EA,$72,$EA,$86,$EA   ;9DEA4A|        |;
                       db $9A,$EA,$AE,$EA,$C2,$EA           ;9DEA52|        |;
                       db $D6,$EA                           ;9DEA58|        |;
                       db $EA,$EA,$00,$00,$02,$00,$0A,$00   ;9DEA5A|        |;
                       db $03,$00,$0A,$00                   ;9DEA62|        |;
                       db $04,$00,$0A,$00,$05,$00,$0A,$00   ;9DEA66|        |;
                       db $01,$00,$F1,$FF                   ;9DEA6E|        |;
                       db $07,$00,$0A,$00,$08,$00,$0A,$00   ;9DEA72|        |;
                       db $09,$00,$0A,$00,$0A,$00,$0A,$00   ;9DEA7A|        |;
                       db $06,$00,$F1,$FF,$0C,$00,$0A,$00   ;9DEA82|        |;
                       db $0D,$00,$0A,$00,$0E,$00,$0A,$00   ;9DEA8A|        |;
                       db $0F,$00,$0A,$00,$0B,$00,$F1,$FF   ;9DEA92|        |;
                       db $11,$00,$0A,$00                   ;9DEA9A|        |;
                       db $12,$00,$0A,$00,$13,$00,$0A,$00   ;9DEA9E|        |;
                       db $14,$00,$0A,$00,$10,$00,$F1,$FF   ;9DEAA6|        |;
                       db $16,$00,$0A,$00,$17,$00,$0A,$00   ;9DEAAE|        |;
                       db $18,$00,$0A,$00,$19,$00,$0A,$00   ;9DEAB6|        |;
                       db $15,$00,$F1,$FF                   ;9DEABE|        |;
                       db $1B,$00,$0A,$00,$1C,$00,$0A,$00   ;9DEAC2|        |;
                       db $1D,$00,$0A,$00,$1E,$00,$0A,$00   ;9DEACA|        |;
                       db $1A,$00,$F1,$FF                   ;9DEAD2|        |;
                       db $20,$00,$0A,$00,$21,$00,$0A,$00   ;9DEAD6|        |;
                       db $22,$00,$0A,$00,$23,$00,$0A,$00   ;9DEADE|        |;
                       db $1F,$00,$F1,$FF                   ;9DEAE6|        |;
                       db $25,$00,$0A,$00                   ;9DEAEA|        |;
                       db $26,$00,$0A,$00,$27,$00,$0A,$00   ;9DEAEE|        |;
                       db $28,$00,$0A,$00,$24,$00,$F1,$FF   ;9DEAF6|        |;
                       db $10,$EB,$24,$EB,$38,$EB,$4C,$EB   ;9DEAFE|        |;
                       db $60,$EB,$74,$EB,$88,$EB,$9C,$EB   ;9DEB06|        |;
                       db $00,$00,$2A,$00,$0A,$00,$2B,$00   ;9DEB0E|        |;
                       db $0A,$00,$2C,$00,$0A,$00,$2D,$00   ;9DEB16|        |;
                       db $0A,$00,$29,$00,$F1,$FF,$2F,$00   ;9DEB1E|        |;
                       db $0A,$00,$30,$00,$0A,$00,$31,$00   ;9DEB26|        |;
                       db $0A,$00,$32,$00,$0A,$00,$2E,$00   ;9DEB2E|        |;
                       db $F1,$FF,$34,$00,$0A,$00,$35,$00   ;9DEB36|        |;
                       db $0A,$00,$36,$00,$0A,$00,$37,$00   ;9DEB3E|        |;
                       db $0A,$00                           ;9DEB46|        |;
                       db $33,$00,$F1,$FF                   ;9DEB48|        |;
                       db $39,$00,$0A,$00,$3A,$00,$0A,$00   ;9DEB4C|        |;
                       db $3B,$00,$0A,$00,$3C,$00,$0A,$00   ;9DEB54|        |;
                       db $38,$00,$F1,$FF,$3E,$00,$0A,$00   ;9DEB5C|        |;
                       db $3F,$00,$0A,$00,$40,$00,$0A,$00   ;9DEB64|        |;
                       db $41,$00,$0A,$00,$3D,$00,$F1,$FF   ;9DEB6C|        |;
                       db $43,$00,$0A,$00,$44,$00,$0A,$00   ;9DEB74|        |;
                       db $45,$00,$0A,$00,$46,$00,$0A,$00   ;9DEB7C|        |;
                       db $42,$00,$F1,$FF,$48,$00,$0A,$00   ;9DEB84|        |;
                       db $49,$00,$0A,$00,$4A,$00,$0A,$00   ;9DEB8C|        |;
                       db $4B,$00,$0A,$00,$47,$00,$F1,$FF   ;9DEB94|        |;
                       db $4D,$00,$0A,$00,$4E,$00,$0A,$00   ;9DEB9C|        |;
                       db $4F,$00,$0A,$00,$50,$00,$0A,$00   ;9DEBA4|        |;
                       db $4C,$00,$F1,$FF,$C2,$EB,$C6,$EB   ;9DEBAC|        |;
                       db $CA,$EB,$CE,$EB,$D2,$EB,$D6,$EB   ;9DEBB4|        |;
                       db $DA,$EB,$DE,$EB,$00,$00,$51,$00   ;9DEBBC|        |;
                       db $F4,$FF,$52,$00,$F4,$FF,$53,$00   ;9DEBC4|        |;
                       db $F4,$FF,$54,$00,$F4,$FF,$55,$00   ;9DEBCC|        |;
                       db $F4,$FF,$56,$00,$F4,$FF,$57,$00   ;9DEBD4|        |;
                       db $F4,$FF,$58,$00,$F4,$FF,$F4,$EB   ;9DEBDC|        |;
                       db $F8,$EB,$FC,$EB,$00,$EC,$04,$EC   ;9DEBE4|        |;
                       db $08,$EC,$0C,$EC,$10,$EC,$00,$00   ;9DEBEC|        |;
                       db $59,$00,$F4,$FF,$5A,$00,$F4,$FF   ;9DEBF4|        |;
                       db $5B,$00,$F4,$FF,$5C,$00,$F4,$FF   ;9DEBFC|        |;
                       db $5D,$00,$F4,$FF,$5E,$00,$F4,$FF   ;9DEC04|        |;
                       db $5F,$00,$F4,$FF,$60,$00,$F4,$FF   ;9DEC0C|        |;
                       db $26,$EC,$2E,$EC,$36,$EC,$3E,$EC   ;9DEC14|        |;
                       db $46,$EC,$4E,$EC,$56,$EC,$5E,$EC   ;9DEC1C|        |;
                       db $01,$00,$91,$00,$04,$00,$92,$00   ;9DEC24|        |;
                       db $FC,$FF,$93,$00,$04,$00,$94,$00   ;9DEC2C|        |;
                       db $FC,$FF,$95,$00,$04,$00,$96,$00   ;9DEC34|        |;
                       db $FC,$FF,$97,$00,$04,$00,$98,$00   ;9DEC3C|        |;
                       db $FC,$FF,$99,$00,$04,$00,$9A,$00   ;9DEC44|        |;
                       db $FC,$FF,$9B,$00,$04,$00,$9C,$00   ;9DEC4C|        |;
                       db $FC,$FF,$9D,$00,$04,$00,$9E,$00   ;9DEC54|        |;
                       db $FC,$FF,$9F,$00,$04,$00,$A0,$00   ;9DEC5C|        |;
                       db $FC,$FF,$78,$EC                   ;9DEC64|        |;
                       db $84,$EC,$90,$EC,$9C,$EC,$A8,$EC   ;9DEC68|        |;
                       db $B4,$EC,$C0,$EC,$CC,$EC           ;9DEC70|        |;
                       db $00,$00,$64,$00,$04,$00,$65,$00   ;9DEC76|        |;
                       db $04,$00,$66,$00,$EC,$FF           ;9DEC7E|        |;
                       db $6A,$00,$04,$00,$6B,$00,$04,$00   ;9DEC84|        |;
                       db $6C,$00,$EC,$FF,$70,$00,$04,$00   ;9DEC8C|        |;
                       db $71,$00,$04,$00,$72,$00,$EC,$FF   ;9DEC94|        |;
                       db $76,$00,$04,$00,$77,$00,$04,$00   ;9DEC9C|        |;
                       db $78,$00,$EC,$FF,$7C,$00,$04,$00   ;9DECA4|        |;
                       db $7D,$00,$04,$00,$7E,$00,$EC,$FF   ;9DECAC|        |;
                       db $82,$00,$04,$00,$83,$00,$04,$00   ;9DECB4|        |;
                       db $84,$00,$EC,$FF,$88,$00,$04,$00   ;9DECBC|        |;
                       db $89,$00,$04,$00,$8A,$00,$EC,$FF   ;9DECC4|        |;
                       db $8E,$00,$04,$00,$8F,$00,$04,$00   ;9DECCC|        |;
                       db $90,$00,$EC,$FF                   ;9DECD4|        |;
                       db $EA,$EC                           ;9DECD8|        |;
                       db $F6,$EC                           ;9DECDA|        |;
                       db $02,$ED                           ;9DECDC|        |;
                       db $0E,$ED,$1A,$ED,$26,$ED,$32,$ED   ;9DECDE|        |;
                       db $3E,$ED                           ;9DECE6|        |;
                       db $00,$00,$64,$00,$04,$00,$63,$00   ;9DECE8|        |;
                       db $04,$00,$62,$00,$EC,$FF           ;9DECF0|        |;
                       db $6A,$00,$04,$00,$69,$00,$04,$00   ;9DECF6|        |;
                       db $68,$00,$EC,$FF                   ;9DECFE|        |;
                       db $70,$00,$04,$00,$6F,$00,$04,$00   ;9DED02|        |;
                       db $6E,$00,$EC,$FF                   ;9DED0A|        |;
                       db $76,$00,$04,$00,$75,$00,$04,$00   ;9DED0E|        |;
                       db $74,$00,$EC,$FF,$7C,$00,$04,$00   ;9DED16|        |;
                       db $7B,$00,$04,$00,$7A,$00,$EC,$FF   ;9DED1E|        |;
                       db $82,$00,$04,$00,$81,$00,$04,$00   ;9DED26|        |;
                       db $80,$00,$EC,$FF,$88,$00,$04,$00   ;9DED2E|        |;
                       db $87,$00,$04,$00,$86,$00,$EC,$FF   ;9DED36|        |;
                       db $8E,$00,$04,$00,$8D,$00,$04,$00   ;9DED3E|        |;
                       db $8C,$00,$EC,$FF                   ;9DED46|        |;
                       db $5C,$ED                           ;9DED4A|        |;
                       db $7C,$ED                           ;9DED4C|        |;
                       db $9C,$ED                           ;9DED4E|        |;
                       db $BC,$ED,$DC,$ED,$FC,$ED           ;9DED50|        |;
                       db $1C,$EE,$3C,$EE,$00,$00,$64,$00   ;9DED56|        |;
                       db $04,$00                           ;9DED5E|        |;
                       db $63,$00                           ;9DED60|        |;
                       db $04,$00                           ;9DED62|        |;
                       db $62,$00,$04,$00,$61,$00,$04,$00   ;9DED64|        |;
                       db $63,$00,$00,$00,$64,$00,$00,$00   ;9DED6C|        |;
                       db $65,$00,$00,$00,$66,$00,$EC,$FF   ;9DED74|        |;
                       db $6A,$00,$04,$00,$69,$00,$04,$00   ;9DED7C|        |;
                       db $68,$00,$04,$00,$67,$00,$04,$00   ;9DED84|        |;
                       db $69,$00,$00,$00,$6A,$00,$00,$00   ;9DED8C|        |;
                       db $6B,$00,$00,$00,$6C,$00,$EC,$FF   ;9DED94|        |;
                       db $70,$00,$04,$00,$6F,$00,$04,$00   ;9DED9C|        |;
                       db $6E,$00,$04,$00,$6D,$00,$04,$00   ;9DEDA4|        |;
                       db $6F,$00,$00,$00,$70,$00,$00,$00   ;9DEDAC|        |;
                       db $71,$00,$00,$00,$72,$00,$EC,$FF   ;9DEDB4|        |;
                       db $76,$00,$04,$00,$75,$00,$04,$00   ;9DEDBC|        |;
                       db $74,$00,$04,$00,$73,$00,$04,$00   ;9DEDC4|        |;
                       db $75,$00,$00,$00,$76,$00,$00,$00   ;9DEDCC|        |;
                       db $77,$00,$00,$00,$78,$00,$EC,$FF   ;9DEDD4|        |;
                       db $7C,$00,$04,$00,$7B,$00,$04,$00   ;9DEDDC|        |;
                       db $7A,$00,$04,$00,$79,$00,$04,$00   ;9DEDE4|        |;
                       db $7B,$00,$00,$00,$7C,$00,$00,$00   ;9DEDEC|        |;
                       db $7D,$00,$00,$00,$7E,$00,$EC,$FF   ;9DEDF4|        |;
                       db $82,$00,$04,$00,$81,$00,$04,$00   ;9DEDFC|        |;
                       db $80,$00,$04,$00,$7F,$00,$04,$00   ;9DEE04|        |;
                       db $81,$00,$00,$00,$82,$00,$00,$00   ;9DEE0C|        |;
                       db $83,$00,$00,$00,$84,$00,$EC,$FF   ;9DEE14|        |;
                       db $88,$00,$04,$00,$87,$00,$04,$00   ;9DEE1C|        |;
                       db $86,$00,$04,$00,$85,$00,$04,$00   ;9DEE24|        |;
                       db $87,$00,$00,$00,$88,$00,$00,$00   ;9DEE2C|        |;
                       db $89,$00,$00,$00,$8A,$00,$EC,$FF   ;9DEE34|        |;
                       db $8E,$00,$04,$00,$8D,$00,$04,$00   ;9DEE3C|        |;
                       db $8C,$00,$04,$00,$8B,$00,$04,$00   ;9DEE44|        |;
                       db $8D,$00,$00,$00,$8E,$00,$00,$00   ;9DEE4C|        |;
                       db $8F,$00,$00,$00,$90,$00,$EC,$FF   ;9DEE54|        |;
                       db $6E,$EE,$8E,$EE,$AE,$EE,$CE,$EE   ;9DEE5C|        |;
                       db $EE,$EE                           ;9DEE64|        |;
                       db $0E,$EF                           ;9DEE66|        |;
                       db $2E,$EF                           ;9DEE68|        |;
                       db $4E,$EF,$00,$00                   ;9DEE6A|        |;
                       db $64,$00,$04,$00,$65,$00,$04,$00   ;9DEE6E|        |;
                       db $66,$00,$04,$00,$66,$00,$04,$00   ;9DEE76|        |;
                       db $65,$00,$00,$00,$64,$00,$00,$00   ;9DEE7E|        |;
                       db $63,$00,$00,$00,$62,$00,$EC,$FF   ;9DEE86|        |;
                       db $6A,$00,$04,$00,$6B,$00,$04,$00   ;9DEE8E|        |;
                       db $6C,$00,$04,$00,$6C,$00,$04,$00   ;9DEE96|        |;
                       db $6B,$00,$00,$00,$6A,$00,$00,$00   ;9DEE9E|        |;
                       db $69,$00,$00,$00,$68,$00,$EC,$FF   ;9DEEA6|        |;
                       db $70,$00,$04,$00,$71,$00,$04,$00   ;9DEEAE|        |;
                       db $72,$00,$04,$00,$72,$00,$04,$00   ;9DEEB6|        |;
                       db $71,$00,$00,$00,$70,$00,$00,$00   ;9DEEBE|        |;
                       db $6F,$00,$00,$00,$6E,$00,$EC,$FF   ;9DEEC6|        |;
                       db $76,$00,$04,$00,$77,$00,$04,$00   ;9DEECE|        |;
                       db $78,$00,$04,$00,$78,$00,$04,$00   ;9DEED6|        |;
                       db $77,$00,$00,$00,$76,$00,$00,$00   ;9DEEDE|        |;
                       db $75,$00,$00,$00,$74,$00,$EC,$FF   ;9DEEE6|        |;
                       db $7C,$00,$04,$00,$7D,$00,$04,$00   ;9DEEEE|        |;
                       db $7E,$00,$04,$00,$7E,$00,$04,$00   ;9DEEF6|        |;
                       db $7D,$00,$00,$00,$7C,$00,$00,$00   ;9DEEFE|        |;
                       db $7B,$00,$00,$00,$7A,$00,$EC,$FF   ;9DEF06|        |;
                       db $82,$00,$04,$00                   ;9DEF0E|        |;
                       db $83,$00,$04,$00,$84,$00,$04,$00   ;9DEF12|        |;
                       db $84,$00,$04,$00,$83,$00,$00,$00   ;9DEF1A|        |;
                       db $82,$00,$00,$00                   ;9DEF22|        |;
                       db $81,$00,$00,$00,$80,$00,$EC,$FF   ;9DEF26|        |;
                       db $88,$00,$04,$00,$89,$00,$04,$00   ;9DEF2E|        |;
                       db $8A,$00,$04,$00,$8A,$00,$04,$00   ;9DEF36|        |;
                       db $89,$00,$00,$00,$88,$00,$00,$00   ;9DEF3E|        |;
                       db $87,$00,$00,$00,$86,$00,$EC,$FF   ;9DEF46|        |;
                       db $8E,$00,$04,$00                   ;9DEF4E|        |;
                       db $8F,$00,$04,$00,$90,$00,$04,$00   ;9DEF52|        |;
                       db $90,$00,$04,$00,$8F,$00,$00,$00   ;9DEF5A|        |;
                       db $8E,$00,$00,$00                   ;9DEF62|        |;
                       db $8D,$00,$00,$00,$8C,$00,$EC,$FF   ;9DEF66|        |;
 
         DATA8_9DEF6E:
                       db $80,$EF                           ;9DEF6E|        |;
                       db $94,$EF                           ;9DEF70|        |;
                       db $A8,$EF,$BC,$EF                   ;9DEF72|        |;
                       db $D0,$EF                           ;9DEF76|        |;
                       db $E4,$EF                           ;9DEF78|        |;
                       db $F8,$EF,$0C,$F0,$00,$00           ;9DEF7A|        |;
                       db $62,$00                           ;9DEF80|        |;
                       db $37,$00,$63,$00,$02,$00,$64,$00   ;9DEF82|        |;
                       db $02,$00,$65,$00,$02,$00,$66,$00   ;9DEF8A|        |;
                       db $EC,$FF,$68,$00,$37,$00,$69,$00   ;9DEF92|        |;
                       db $02,$00,$6A,$00,$02,$00,$6B,$00   ;9DEF9A|        |;
                       db $02,$00,$6C,$00,$EC,$FF           ;9DEFA2|        |;
                       db $6E,$00                           ;9DEFA8|        |;
                       db $37,$00,$6F,$00,$02,$00,$70,$00   ;9DEFAA|        |;
                       db $02,$00,$71,$00,$02,$00,$72,$00   ;9DEFB2|        |;
                       db $EC,$FF                           ;9DEFBA|        |;
                       db $74,$00                           ;9DEFBC|        |;
                       db $37,$00,$75,$00,$02,$00,$76,$00   ;9DEFBE|        |;
                       db $02,$00,$77,$00,$02,$00,$78,$00   ;9DEFC6|        |;
                       db $EC,$FF,$7A,$00,$37,$00,$7B,$00   ;9DEFCE|        |;
                       db $02,$00,$7C,$00,$02,$00,$7D,$00   ;9DEFD6|        |;
                       db $02,$00,$7E,$00,$EC,$FF           ;9DEFDE|        |;
                       db $80,$00                           ;9DEFE4|        |;
                       db $37,$00,$81,$00,$02,$00,$82,$00   ;9DEFE6|        |;
                       db $02,$00,$83,$00,$02,$00,$84,$00   ;9DEFEE|        |;
                       db $EC,$FF,$86,$00,$37,$00,$87,$00   ;9DEFF6|        |;
                       db $02,$00,$88,$00,$02,$00,$89,$00   ;9DEFFE|        |;
                       db $02,$00,$8A,$00,$EC,$FF,$8C,$00   ;9DF006|        |;
                       db $37,$00,$8D,$00,$02,$00,$8E,$00   ;9DF00E|        |;
                       db $02,$00,$8F,$00,$02,$00,$90,$00   ;9DF016|        |;
                       db $EC,$FF,$32,$F0,$46,$F0,$5A,$F0   ;9DF01E|        |;
                       db $6E,$F0,$82,$F0,$96,$F0,$AA,$F0   ;9DF026|        |;
                       db $BE,$F0,$00,$00,$66,$00,$37,$00   ;9DF02E|        |;
                       db $65,$00,$02,$00,$64,$00,$02,$00   ;9DF036|        |;
                       db $63,$00,$02,$00,$62,$00,$EC,$FF   ;9DF03E|        |;
                       db $6C,$00,$37,$00,$6B,$00,$02,$00   ;9DF046|        |;
                       db $6A,$00,$02,$00,$69,$00,$02,$00   ;9DF04E|        |;
                       db $68,$00,$EC,$FF,$72,$00,$37,$00   ;9DF056|        |;
                       db $71,$00,$02,$00,$70,$00,$02,$00   ;9DF05E|        |;
                       db $6F,$00,$02,$00,$6E,$00,$EC,$FF   ;9DF066|        |;
                       db $78,$00,$37,$00,$77,$00,$02,$00   ;9DF06E|        |;
                       db $76,$00,$02,$00,$75,$00,$02,$00   ;9DF076|        |;
                       db $74,$00,$EC,$FF,$7E,$00,$37,$00   ;9DF07E|        |;
                       db $7D,$00,$02,$00,$7C,$00,$02,$00   ;9DF086|        |;
                       db $7B,$00,$02,$00,$7A,$00,$EC,$FF   ;9DF08E|        |;
                       db $84,$00,$37,$00,$83,$00,$02,$00   ;9DF096|        |;
                       db $82,$00,$02,$00,$81,$00,$02,$00   ;9DF09E|        |;
                       db $80,$00,$EC,$FF,$8A,$00,$37,$00   ;9DF0A6|        |;
                       db $89,$00,$02,$00,$88,$00,$02,$00   ;9DF0AE|        |;
                       db $87,$00,$02,$00,$86,$00,$EC,$FF   ;9DF0B6|        |;
                       db $90,$00,$37,$00,$8F,$00,$02,$00   ;9DF0BE|        |;
                       db $8E,$00,$02,$00,$8D,$00,$02,$00   ;9DF0C6|        |;
                       db $8C,$00,$EC,$FF                   ;9DF0CE|        |;
                       db $E4,$F0,$E8,$F0                   ;9DF0D2|        |;
                       db $EC,$F0,$F0,$F0,$F4,$F0           ;9DF0D6|        |;
                       db $F8,$F0,$FC,$F0,$00,$F1,$00,$00   ;9DF0DC|        |;
                       db $A1,$00,$F8,$FF,$A4,$00,$F8,$FF   ;9DF0E4|        |;
                       db $A7,$00,$F8,$FF,$AA,$00,$F8,$FF   ;9DF0EC|        |;
                       db $AD,$00,$F8,$FF                   ;9DF0F4|        |;
                       db $B0,$00,$F8,$FF,$B3,$00,$F8,$FF   ;9DF0F8|        |;
                       db $B6,$00,$F8,$FF,$16,$F1,$26,$F1   ;9DF100|        |;
                       db $36,$F1,$46,$F1,$56,$F1,$66,$F1   ;9DF108|        |;
                       db $76,$F1,$86,$F1                   ;9DF110|        |;
                       db $00,$00,$A1,$00,$08,$00,$A2,$00   ;9DF114|        |;
                       db $08,$00,$A1,$00,$08,$00,$A3,$00   ;9DF11C|        |;
                       db $F8,$FF,$A4,$00,$08,$00,$A5,$00   ;9DF124|        |;
                       db $08,$00,$A4,$00,$08,$00,$A6,$00   ;9DF12C|        |;
                       db $F8,$FF                           ;9DF134|        |;
                       db $A7,$00                           ;9DF136|        |;
                       db $08,$00,$A8,$00,$08,$00,$A7,$00   ;9DF138|        |;
                       db $08,$00,$A9,$00,$F8,$FF,$AA,$00   ;9DF140|        |;
                       db $08,$00,$AB,$00,$08,$00,$AA,$00   ;9DF148|        |;
                       db $08,$00,$AC,$00,$F8,$FF,$AD,$00   ;9DF150|        |;
                       db $08,$00,$AE,$00,$08,$00,$AD,$00   ;9DF158|        |;
                       db $08,$00,$AF,$00,$F8,$FF,$B0,$00   ;9DF160|        |;
                       db $08,$00                           ;9DF168|        |;
                       db $B1,$00,$08,$00,$B0,$00,$08,$00   ;9DF16A|        |;
                       db $B2,$00,$F8,$FF                   ;9DF172|        |;
                       db $B3,$00,$08,$00,$B4,$00,$08,$00   ;9DF176|        |;
                       db $B3,$00,$08,$00,$B5,$00,$F8,$FF   ;9DF17E|        |;
                       db $B6,$00,$08,$00,$B7,$00,$08,$00   ;9DF186|        |;
                       db $B6,$00,$08,$00,$B8,$00,$F8,$FF   ;9DF18E|        |;
                       db $A8,$F1,$B4,$F1,$C0,$F1,$CC,$F1   ;9DF196|        |;
                       db $D8,$F1,$E4,$F1,$F0,$F1           ;9DF19E|        |;
                       db $FC,$F1,$00,$00                   ;9DF1A4|        |;
                       db $06,$02,$01,$00,$07,$02,$0A,$00   ;9DF1A8|        |;
                       db $06,$02,$F8,$FF,$08,$02,$01,$00   ;9DF1B0|        |;
                       db $09,$02,$0A,$00,$08,$02,$F8,$FF   ;9DF1B8|        |;
                       db $0A,$02,$01,$00,$0B,$02,$0A,$00   ;9DF1C0|        |;
                       db $0A,$02,$F8,$FF,$0C,$02,$01,$00   ;9DF1C8|        |;
                       db $0D,$02,$0A,$00,$0C,$02,$F8,$FF   ;9DF1D0|        |;
                       db $0E,$02,$01,$00,$0F,$02,$0A,$00   ;9DF1D8|        |;
                       db $0E,$02,$F8,$FF,$10,$02,$01,$00   ;9DF1E0|        |;
                       db $11,$02,$0A,$00,$10,$02,$F8,$FF   ;9DF1E8|        |;
                       db $12,$02,$01,$00,$13,$02,$0A,$00   ;9DF1F0|        |;
                       db $12,$02,$F8,$FF                   ;9DF1F8|        |;
                       db $14,$02,$01,$00,$15,$02,$0A,$00   ;9DF1FC|        |;
                       db $14,$02,$F8,$FF,$1A,$F2,$26,$F2   ;9DF204|        |;
                       db $32,$F2                           ;9DF20C|        |;
                       db $3E,$F2                           ;9DF20E|        |;
                       db $4A,$F2,$56,$F2,$62,$F2           ;9DF210|        |;
                       db $6E,$F2                           ;9DF216|        |;
                       db $00,$00,$09,$01,$04,$00,$0A,$01   ;9DF218|        |;
                       db $08,$00,$09,$01,$FC,$FF,$0B,$01   ;9DF220|        |;
                       db $04,$00                           ;9DF228|        |;
                       db $0C,$01,$08,$00,$0B,$01,$FC,$FF   ;9DF22A|        |;
                       db $0D,$01,$04,$00,$0E,$01,$08,$00   ;9DF232|        |;
                       db $0D,$01,$FC,$FF                   ;9DF23A|        |;
                       db $0F,$01,$04,$00,$10,$01,$08,$00   ;9DF23E|        |;
                       db $0F,$01,$FC,$FF                   ;9DF246|        |;
                       db $11,$01,$04,$00                   ;9DF24A|        |;
                       db $12,$01                           ;9DF24E|        |;
                       db $08,$00                           ;9DF250|        |;
                       db $11,$01,$FC,$FF                   ;9DF252|        |;
                       db $13,$01,$04,$00,$14,$01,$08,$00   ;9DF256|        |;
                       db $13,$01,$FC,$FF,$15,$01,$04,$00   ;9DF25E|        |;
                       db $16,$01,$08,$00,$15,$01,$FC,$FF   ;9DF266|        |;
                       db $17,$01,$04,$00,$18,$01,$08,$00   ;9DF26E|        |;
                       db $17,$01,$FC,$FF                   ;9DF276|        |;
                       db $8C,$F2                           ;9DF27A|        |;
                       db $90,$F2,$94,$F2,$98,$F2,$9C,$F2   ;9DF27C|        |;
                       db $A0,$F2,$A4,$F2,$A8,$F2           ;9DF284|        |;
                       db $00,$00,$F9,$00,$E8,$FF           ;9DF28A|        |;
                       db $FA,$00,$E8,$FF,$FB,$00,$E8,$FF   ;9DF290|        |;
                       db $FC,$00,$E8,$FF,$FD,$00,$E8,$FF   ;9DF298|        |;
                       db $FE,$00,$E8,$FF,$FF,$00,$E8,$FF   ;9DF2A0|        |;
                       db $00,$01,$E8,$FF                   ;9DF2A8|        |;
                       db $BE,$F2                           ;9DF2AC|        |;
                       db $C2,$F2,$C6,$F2,$CA,$F2           ;9DF2AE|        |;
                       db $CE,$F2                           ;9DF2B4|        |;
                       db $D2,$F2,$D6,$F2,$DA,$F2           ;9DF2B6|        |;
                       db $00,$00,$01,$01,$E8,$FF           ;9DF2BC|        |;
                       db $02,$01,$E8,$FF,$03,$01,$E8,$FF   ;9DF2C2|        |;
                       db $04,$01,$E8,$FF                   ;9DF2CA|        |;
                       db $05,$01,$E8,$FF                   ;9DF2CE|        |;
                       db $06,$01,$E8,$FF,$07,$01,$E8,$FF   ;9DF2D2|        |;
                       db $08,$01,$E8,$FF,$F0,$F2,$F4,$F2   ;9DF2DA|        |;
                       db $F8,$F2,$FC,$F2,$00,$F3,$04,$F3   ;9DF2E2|        |;
                       db $08,$F3,$0C,$F3,$00,$00,$E9,$00   ;9DF2EA|        |;
                       db $E8,$FF,$EA,$00,$E8,$FF,$EB,$00   ;9DF2F2|        |;
                       db $E8,$FF,$EC,$00,$E8,$FF,$ED,$00   ;9DF2FA|        |;
                       db $E8,$FF,$EE,$00,$E8,$FF,$EF,$00   ;9DF302|        |;
                       db $E8,$FF,$F0,$00,$E8,$FF,$22,$F3   ;9DF30A|        |;
                       db $26,$F3,$2A,$F3,$2E,$F3,$32,$F3   ;9DF312|        |;
                       db $36,$F3,$3A,$F3,$3E,$F3,$00,$00   ;9DF31A|        |;
                       db $F1,$00,$E8,$FF,$F2,$00,$E8,$FF   ;9DF322|        |;
                       db $F3,$00,$E8,$FF,$F4,$00,$E8,$FF   ;9DF32A|        |;
                       db $F5,$00,$E8,$FF,$F6,$00,$E8,$FF   ;9DF332|        |;
                       db $F7,$00,$E8,$FF,$F8,$00,$E8,$FF   ;9DF33A|        |;
                       db $54,$F3,$58,$F3                   ;9DF342|        |;
                       db $5C,$F3,$60,$F3                   ;9DF346|        |;
                       db $64,$F3                           ;9DF34A|        |;
                       db $68,$F3,$6C,$F3                   ;9DF34C|        |;
                       db $70,$F3,$00,$00,$29,$00,$E8,$FF   ;9DF350|        |;
                       db $2E,$00,$E8,$FF                   ;9DF358|        |;
                       db $33,$00,$E8,$FF,$38,$00,$E8,$FF   ;9DF35C|        |;
                       db $3D,$00,$E8,$FF                   ;9DF364|        |;
                       db $42,$00,$E8,$FF,$47,$00,$E8,$FF   ;9DF368|        |;
                       db $4C,$00,$E8,$FF,$86,$F3,$8A,$F3   ;9DF370|        |;
                       db $8E,$F3,$92,$F3                   ;9DF378|        |;
                       db $96,$F3                           ;9DF37C|        |;
                       db $9A,$F3,$9E,$F3,$A2,$F3           ;9DF37E|        |;
                       db $00,$00,$61,$01,$E2,$FF,$62,$01   ;9DF384|        |;
                       db $E2,$FF                           ;9DF38C|        |;
                       db $63,$01,$E2,$FF,$64,$01,$E2,$FF   ;9DF38E|        |;
                       db $65,$01,$E2,$FF                   ;9DF396|        |;
                       db $66,$01,$E2,$FF,$67,$01,$E2,$FF   ;9DF39A|        |;
                       db $68,$01,$E2,$FF,$B8,$F3,$BC,$F3   ;9DF3A2|        |;
                       db $C0,$F3,$C4,$F3                   ;9DF3AA|        |;
                       db $C8,$F3                           ;9DF3AE|        |;
                       db $CC,$F3,$D0,$F3,$D4,$F3           ;9DF3B0|        |;
                       db $00,$00                           ;9DF3B6|        |;
                       db $61,$01,$B8,$FF,$62,$01,$B8,$FF   ;9DF3B8|        |;
                       db $63,$01,$B8,$FF,$64,$01,$B8,$FF   ;9DF3C0|        |;
                       db $65,$01,$B8,$FF                   ;9DF3C8|        |;
                       db $66,$01,$B8,$FF,$67,$01,$B8,$FF   ;9DF3CC|        |;
                       db $68,$01,$B8,$FF,$EA,$F3,$FA,$F3   ;9DF3D4|        |;
                       db $0A,$F4,$1A,$F4,$2A,$F4,$3A,$F4   ;9DF3DC|        |;
                       db $4A,$F4,$5A,$F4,$00,$00,$E1,$01   ;9DF3E4|        |;
                       db $12,$00,$E2,$01,$12,$00,$E1,$01   ;9DF3EC|        |;
                       db $12,$00,$E2,$01,$EE,$FF,$E3,$01   ;9DF3F4|        |;
                       db $12,$00,$E4,$01,$12,$00,$E3,$01   ;9DF3FC|        |;
                       db $12,$00,$E4,$01,$EE,$FF,$E5,$01   ;9DF404|        |;
                       db $12,$00,$E6,$01,$12,$00,$E5,$01   ;9DF40C|        |;
                       db $12,$00,$E6,$01,$EE,$FF,$E7,$01   ;9DF414|        |;
                       db $12,$00,$E8,$01,$12,$00,$E7,$01   ;9DF41C|        |;
                       db $12,$00,$E8,$01,$EE,$FF,$E9,$01   ;9DF424|        |;
                       db $12,$00,$EA,$01,$12,$00,$E9,$01   ;9DF42C|        |;
                       db $12,$00,$EA,$01,$EE,$FF,$EB,$01   ;9DF434|        |;
                       db $12,$00,$EC,$01,$12,$00,$EB,$01   ;9DF43C|        |;
                       db $12,$00,$EC,$01,$EE,$FF,$ED,$01   ;9DF444|        |;
                       db $12,$00,$EE,$01,$12,$00,$ED,$01   ;9DF44C|        |;
                       db $12,$00,$EE,$01,$EE,$FF,$EF,$01   ;9DF454|        |;
                       db $12,$00,$F0,$01,$12,$00,$EF,$01   ;9DF45C|        |;
                       db $12,$00,$F0,$01,$EE,$FF,$7C,$F4   ;9DF464|        |;
                       db $80,$F4,$84,$F4,$88,$F4           ;9DF46C|        |;
                       db $8C,$F4                           ;9DF472|        |;
                       db $90,$F4,$94,$F4                   ;9DF474|        |;
                       db $98,$F4,$00,$00                   ;9DF478|        |;
                       db $29,$00,$A6,$FF,$2E,$00,$A6,$FF   ;9DF47C|        |;
                       db $33,$00,$A6,$FF,$38,$00,$A6,$FF   ;9DF484|        |;
                       db $3D,$00,$A6,$FF                   ;9DF48C|        |;
                       db $42,$00,$A6,$FF,$47,$00,$A6,$FF   ;9DF490|        |;
                       db $4C,$00,$A6,$FF                   ;9DF498|        |;
                       db $AE,$F4,$C2,$F4,$D6,$F4,$EA,$F4   ;9DF49C|        |;
                       db $FE,$F4,$12,$F5,$26,$F5,$3A,$F5   ;9DF4A4|        |;
                       db $00,$00,$39,$01,$06,$00,$3A,$01   ;9DF4AC|        |;
                       db $06,$00,$3B,$01,$64,$00,$3C,$01   ;9DF4B4|        |;
                       db $08,$00,$59,$01,$F8,$FF,$3D,$01   ;9DF4BC|        |;
                       db $06,$00,$3E,$01,$06,$00,$3F,$01   ;9DF4C4|        |;
                       db $64,$00,$40,$01,$08,$00,$5A,$01   ;9DF4CC|        |;
                       db $F8,$FF,$41,$01,$06,$00,$42,$01   ;9DF4D4|        |;
                       db $06,$00,$43,$01,$64,$00,$44,$01   ;9DF4DC|        |;
                       db $08,$00,$5B,$01,$F8,$FF,$45,$01   ;9DF4E4|        |;
                       db $06,$00,$46,$01,$06,$00,$47,$01   ;9DF4EC|        |;
                       db $64,$00,$48,$01,$08,$00,$5C,$01   ;9DF4F4|        |;
                       db $F8,$FF,$49,$01,$06,$00,$4A,$01   ;9DF4FC|        |;
                       db $06,$00,$4B,$01,$64,$00,$4C,$01   ;9DF504|        |;
                       db $08,$00,$5D,$01,$F8,$FF,$4D,$01   ;9DF50C|        |;
                       db $06,$00,$4E,$01,$06,$00,$4F,$01   ;9DF514|        |;
                       db $64,$00,$50,$01,$08,$00,$5E,$01   ;9DF51C|        |;
                       db $F8,$FF,$51,$01,$06,$00,$52,$01   ;9DF524|        |;
                       db $06,$00,$53,$01,$64,$00,$54,$01   ;9DF52C|        |;
                       db $08,$00,$5F,$01,$F8,$FF,$55,$01   ;9DF534|        |;
                       db $06,$00,$56,$01,$06,$00,$57,$01   ;9DF53C|        |;
                       db $64,$00,$58,$01,$08,$00,$60,$01   ;9DF544|        |;
                       db $F8,$FF,$60,$F5,$74,$F5,$88,$F5   ;9DF54C|        |;
                       db $9C,$F5                           ;9DF554|        |;
                       db $B0,$F5,$C4,$F5,$D8,$F5           ;9DF556|        |;
                       db $EC,$F5,$00,$00                   ;9DF55C|        |;
                       db $19,$01,$06,$00,$1A,$01,$06,$00   ;9DF560|        |;
                       db $1B,$01,$64,$00,$1C,$01,$08,$00   ;9DF568|        |;
                       db $59,$01,$F8,$FF,$1D,$01,$06,$00   ;9DF570|        |;
                       db $1E,$01,$06,$00,$1F,$01,$64,$00   ;9DF578|        |;
                       db $20,$01,$08,$00,$5A,$01,$F8,$FF   ;9DF580|        |;
                       db $21,$01,$06,$00,$22,$01,$06,$00   ;9DF588|        |;
                       db $23,$01,$64,$00,$24,$01,$08,$00   ;9DF590|        |;
                       db $5B,$01,$F8,$FF                   ;9DF598|        |;
                       db $25,$01,$06,$00,$26,$01,$06,$00   ;9DF59C|        |;
                       db $27,$01,$64,$00,$28,$01,$08,$00   ;9DF5A4|        |;
                       db $5C,$01,$F8,$FF                   ;9DF5AC|        |;
                       db $29,$01,$06,$00,$2A,$01,$06,$00   ;9DF5B0|        |;
                       db $2B,$01,$64,$00,$2C,$01,$08,$00   ;9DF5B8|        |;
                       db $5D,$01,$F8,$FF,$2D,$01,$06,$00   ;9DF5C0|        |;
                       db $2E,$01,$06,$00,$2F,$01,$64,$00   ;9DF5C8|        |;
                       db $30,$01,$08,$00,$5E,$01,$F8,$FF   ;9DF5D0|        |;
                       db $31,$01,$06,$00,$32,$01,$06,$00   ;9DF5D8|        |;
                       db $33,$01,$64,$00,$34,$01,$08,$00   ;9DF5E0|        |;
                       db $5F,$01,$F8,$FF                   ;9DF5E8|        |;
                       db $35,$01,$06,$00,$36,$01,$06,$00   ;9DF5EC|        |;
                       db $37,$01,$64,$00,$38,$01,$08,$00   ;9DF5F4|        |;
                       db $60,$01,$F8,$FF,$12,$F6           ;9DF5FC|        |;
                       db $1E,$F6                           ;9DF602|        |;
                       db $1E,$F6,$1E,$F6,$1E,$F6           ;9DF604|        |;
                       db $1E,$F6,$1E,$F6,$1E,$F6           ;9DF60A|        |;
                       db $00,$00,$01,$00,$02,$00,$0A,$01   ;9DF610|        |;
                       db $0A,$00,$09,$01,$FA,$FF,$15,$00   ;9DF618|        |;
                       db $02,$00,$12,$01,$0A,$00,$11,$01   ;9DF620|        |;
                       db $FA,$FF,$3C,$F6                   ;9DF628|        |;
                       db $40,$F6,$40,$F6,$40,$F6           ;9DF62C|        |;
                       db $40,$F6                           ;9DF632|        |;
                       db $40,$F6,$40,$F6,$40,$F6           ;9DF634|        |;
                       db $00,$00,$01,$00,$FB,$FF,$15,$00   ;9DF63A|        |;
                       db $FB,$FF                           ;9DF642|        |;
                       db $56,$F6,$56,$F6,$56,$F6,$56,$F6   ;9DF644|        |;
                       db $56,$F6,$56,$F6,$56,$F6,$56,$F6   ;9DF64C|        |;
                       db $01,$00,$99,$01,$03,$00,$9A,$01   ;9DF654|        |;
                       db $03,$00,$9B,$01,$03,$00,$9C,$01   ;9DF65C|        |;
                       db $03,$00,$9D,$01,$03,$00,$9E,$01   ;9DF664|        |;
                       db $03,$00,$9F,$01,$03,$00,$A0,$01   ;9DF66C|        |;
                       db $03,$00,$A1,$01,$03,$00,$A2,$01   ;9DF674|        |;
                       db $03,$00,$A3,$01,$03,$00,$A4,$01   ;9DF67C|        |;
                       db $03,$00,$A5,$01,$03,$00,$A6,$01   ;9DF684|        |;
                       db $FD,$FF,$A0,$F6,$A4,$F6,$A8,$F6   ;9DF68C|        |;
                       db $AC,$F6,$B0,$F6,$B4,$F6,$B8,$F6   ;9DF694|        |;
                       db $BC,$F6,$01,$00,$D9,$00,$E2,$FF   ;9DF69C|        |;
                       db $DA,$00,$E2,$FF,$DB,$00,$E2,$FF   ;9DF6A4|        |;
                       db $DC,$00,$E2,$FF,$DD,$00,$E2,$FF   ;9DF6AC|        |;
                       db $DE,$00,$E2,$FF,$DF,$00,$E2,$FF   ;9DF6B4|        |;
                       db $E0,$00,$E2,$FF                   ;9DF6BC|        |;
                       db $D2,$F6                           ;9DF6C0|        |;
                       db $EE,$F6,$0A,$F7,$26,$F7,$42,$F7   ;9DF6C2|        |;
                       db $5E,$F7,$7A,$F7,$96,$F7           ;9DF6CA|        |;
                       db $00,$00,$C1,$01,$06,$00,$C2,$01   ;9DF6D0|        |;
                       db $06,$00,$C3,$01,$06,$00,$C4,$01   ;9DF6D8|        |;
                       db $06,$00,$1B,$01,$64,$00,$1C,$01   ;9DF6E0|        |;
                       db $08,$00,$59,$01,$F8,$FF           ;9DF6E8|        |;
                       db $C1,$01,$06,$00,$C2,$01,$06,$00   ;9DF6EE|        |;
                       db $C3,$01,$06,$00,$C4,$01,$06,$00   ;9DF6F6|        |;
                       db $1F,$01,$64,$00,$20,$01,$08,$00   ;9DF6FE|        |;
                       db $5A,$01,$F8,$FF,$C1,$01,$06,$00   ;9DF706|        |;
                       db $C2,$01,$06,$00,$C3,$01,$06,$00   ;9DF70E|        |;
                       db $C4,$01,$06,$00,$23,$01,$64,$00   ;9DF716|        |;
                       db $24,$01,$08,$00,$5B,$01,$F8,$FF   ;9DF71E|        |;
                       db $C5,$01,$06,$00,$C6,$01,$06,$00   ;9DF726|        |;
                       db $C7,$01,$06,$00,$C8,$01,$06,$00   ;9DF72E|        |;
                       db $27,$01,$64,$00,$28,$01,$08,$00   ;9DF736|        |;
                       db $5C,$01,$F8,$FF,$C5,$01,$06,$00   ;9DF73E|        |;
                       db $C6,$01,$06,$00,$C7,$01,$06,$00   ;9DF746|        |;
                       db $C8,$01,$06,$00,$2B,$01,$64,$00   ;9DF74E|        |;
                       db $2C,$01,$08,$00,$5D,$01,$F8,$FF   ;9DF756|        |;
                       db $C5,$01,$06,$00,$C6,$01,$06,$00   ;9DF75E|        |;
                       db $C7,$01,$06,$00,$C8,$01,$06,$00   ;9DF766|        |;
                       db $2F,$01,$64,$00,$30,$01,$08,$00   ;9DF76E|        |;
                       db $5E,$01,$F8,$FF,$C5,$01,$06,$00   ;9DF776|        |;
                       db $C6,$01,$06,$00,$C7,$01,$06,$00   ;9DF77E|        |;
                       db $C8,$01,$06,$00,$33,$01,$64,$00   ;9DF786|        |;
                       db $34,$01,$08,$00,$5F,$01,$F8,$FF   ;9DF78E|        |;
                       db $C1,$01,$06,$00,$C2,$01,$06,$00   ;9DF796|        |;
                       db $C3,$01,$06,$00,$C4,$01,$06,$00   ;9DF79E|        |;
                       db $37,$01,$64,$00,$38,$01,$08,$00   ;9DF7A6|        |;
                       db $60,$01,$F8,$FF,$C4,$F7,$D8,$F7   ;9DF7AE|        |;
                       db $EC,$F7,$00,$F8,$14,$F8,$28,$F8   ;9DF7B6|        |;
                       db $3C,$F8,$50,$F8,$00,$00,$C9,$01   ;9DF7BE|        |;
                       db $06,$00,$CA,$01,$06,$00,$CB,$01   ;9DF7C6|        |;
                       db $08,$00,$CA,$01,$06,$00,$C9,$01   ;9DF7CE|        |;
                       db $FA,$FF,$CC,$01,$06,$00,$CD,$01   ;9DF7D6|        |;
                       db $06,$00,$CE,$01,$08,$00,$CD,$01   ;9DF7DE|        |;
                       db $06,$00,$CC,$01,$FA,$FF,$CF,$01   ;9DF7E6|        |;
                       db $06,$00,$D0,$01,$06,$00,$D1,$01   ;9DF7EE|        |;
                       db $08,$00,$D0,$01,$06,$00,$CF,$01   ;9DF7F6|        |;
                       db $FA,$FF,$D2,$01,$06,$00,$D3,$01   ;9DF7FE|        |;
                       db $06,$00,$D4,$01,$08,$00,$D3,$01   ;9DF806|        |;
                       db $06,$00,$D2,$01,$FA,$FF,$D5,$01   ;9DF80E|        |;
                       db $06,$00,$D6,$01,$06,$00,$D7,$01   ;9DF816|        |;
                       db $08,$00,$D6,$01,$06,$00,$D5,$01   ;9DF81E|        |;
                       db $FA,$FF,$D8,$01,$06,$00,$D9,$01   ;9DF826|        |;
                       db $06,$00,$DA,$01,$08,$00,$D9,$01   ;9DF82E|        |;
                       db $06,$00,$D8,$01,$FA,$FF,$DB,$01   ;9DF836|        |;
                       db $06,$00,$DC,$01,$06,$00,$DD,$01   ;9DF83E|        |;
                       db $08,$00,$DC,$01,$06,$00,$DB,$01   ;9DF846|        |;
                       db $FA,$FF,$DE,$01,$06,$00,$DF,$01   ;9DF84E|        |;
                       db $06,$00,$E0,$01,$08,$00,$DF,$01   ;9DF856|        |;
                       db $06,$00,$DE,$01,$FA,$FF           ;9DF85E|        |;
                       db $76,$F8                           ;9DF864|        |;
                       db $7A,$F8                           ;9DF866|        |;
                       db $7E,$F8,$82,$F8                   ;9DF868|        |;
                       db $86,$F8,$8A,$F8,$8E,$F8,$92,$F8   ;9DF86C|        |;
                       db $00,$00,$E1,$01,$E2,$FF           ;9DF874|        |;
                       db $E3,$01,$E2,$FF                   ;9DF87A|        |;
                       db $E5,$01,$E2,$FF,$E7,$01,$E2,$FF   ;9DF87E|        |;
                       db $E9,$01,$E2,$FF,$EB,$01,$E2,$FF   ;9DF886|        |;
                       db $ED,$01,$E2,$FF,$EF,$01,$E2,$FF   ;9DF88E|        |;
                       db $A8,$F8,$B0,$F8,$B8,$F8,$C0,$F8   ;9DF896|        |;
                       db $C8,$F8,$D0,$F8,$D8,$F8,$E0,$F8   ;9DF89E|        |;
                       db $00,$00,$F1,$01,$06,$00,$F2,$01   ;9DF8A6|        |;
                       db $FA,$FF,$F3,$01,$06,$00,$F4,$01   ;9DF8AE|        |;
                       db $FA,$FF,$F5,$01,$06,$00,$F6,$01   ;9DF8B6|        |;
                       db $FA,$FF,$F7,$01,$06,$00,$F8,$01   ;9DF8BE|        |;
                       db $FA,$FF,$F9,$01,$06,$00,$FA,$01   ;9DF8C6|        |;
                       db $FA,$FF,$FB,$01,$06,$00,$FC,$01   ;9DF8CE|        |;
                       db $FA,$FF,$FD,$01,$06,$00,$FE,$01   ;9DF8D6|        |;
                       db $FA,$FF,$FF,$01,$06,$00,$00,$02   ;9DF8DE|        |;
                       db $FA,$FF,$FA,$F8,$FA,$F8,$FA,$F8   ;9DF8E6|        |;
                       db $FA,$F8,$FA,$F8,$FA,$F8,$FA,$F8   ;9DF8EE|        |;
                       db $FA,$F8,$00,$00,$01,$02,$08,$00   ;9DF8F6|        |;
                       db $02,$02,$08,$00,$03,$02,$08,$00   ;9DF8FE|        |;
                       db $04,$02,$08,$00,$05,$02,$18,$FC   ;9DF906|        |;
                       db $20,$F9,$20,$F9,$20,$F9,$30,$F9   ;9DF90E|        |;
                       db $30,$F9,$30,$F9,$30,$F9,$20,$F9   ;9DF916|        |;
                       db $00,$00,$19,$01,$14,$00,$1A,$01   ;9DF91E|        |;
                       db $14,$00,$1B,$01,$E8,$03,$1B,$01   ;9DF926|        |;
                       db $18,$FC,$29,$01,$14,$00,$2A,$01   ;9DF92E|        |;
                       db $14,$00,$2B,$01,$E8,$03,$2B,$01   ;9DF936|        |;
                       db $18,$FC,$52,$F9,$6A,$F9,$82,$F9   ;9DF93E|        |;
                       db $9A,$F9,$B2,$F9,$CA,$F9,$E2,$F9   ;9DF946|        |;
                       db $FA,$F9,$00,$00,$C9,$00,$05,$00   ;9DF94E|        |;
                       db $B9,$00,$06,$00,$BA,$00,$06,$00   ;9DF956|        |;
                       db $B9,$00,$0C,$00,$BA,$00,$28,$00   ;9DF95E|        |;
                       db $B9,$00,$FB,$FF,$CB,$00,$05,$00   ;9DF966|        |;
                       db $BB,$00,$06,$00,$BC,$00,$06,$00   ;9DF96E|        |;
                       db $BB,$00,$0C,$00,$BC,$00,$28,$00   ;9DF976|        |;
                       db $BB,$00,$FB,$FF,$CD,$00,$05,$00   ;9DF97E|        |;
                       db $BD,$00,$06,$00,$BE,$00,$06,$00   ;9DF986|        |;
                       db $BD,$00,$0C,$00,$BE,$00,$28,$00   ;9DF98E|        |;
                       db $BD,$00,$FB,$FF,$CF,$00,$05,$00   ;9DF996|        |;
                       db $BF,$00,$06,$00,$C0,$00,$06,$00   ;9DF99E|        |;
                       db $BF,$00,$0C,$00,$C0,$00,$28,$00   ;9DF9A6|        |;
                       db $BF,$00,$FB,$FF,$D1,$00,$05,$00   ;9DF9AE|        |;
                       db $C1,$00,$06,$00,$C2,$00,$06,$00   ;9DF9B6|        |;
                       db $C1,$00,$0C,$00,$C2,$00,$28,$00   ;9DF9BE|        |;
                       db $C1,$00,$FB,$FF,$D3,$00,$05,$00   ;9DF9C6|        |;
                       db $C3,$00,$06,$00,$C4,$00,$06,$00   ;9DF9CE|        |;
                       db $C3,$00,$0C,$00,$C4,$00,$28,$00   ;9DF9D6|        |;
                       db $C3,$00,$FB,$FF,$D5,$00,$05,$00   ;9DF9DE|        |;
                       db $C5,$00,$06,$00,$C6,$00,$06,$00   ;9DF9E6|        |;
                       db $C5,$00,$0C,$00,$C6,$00,$28,$00   ;9DF9EE|        |;
                       db $C5,$00,$FB,$FF,$D7,$00,$05,$00   ;9DF9F6|        |;
                       db $C7,$00,$06,$00,$C8,$00,$06,$00   ;9DF9FE|        |;
                       db $C7,$00,$0C,$00,$C8,$00,$28,$00   ;9DFA06|        |;
                       db $C7,$00,$FB,$FF,$24,$FA,$30,$FA   ;9DFA0E|        |;
                       db $3C,$FA,$48,$FA,$54,$FA,$60,$FA   ;9DFA16|        |;
                       db $6C,$FA,$78,$FA,$00,$00,$C9,$00   ;9DFA1E|        |;
                       db $08,$00,$CA,$00,$08,$00,$C9,$00   ;9DFA26|        |;
                       db $F8,$FF,$CB,$00,$08,$00,$CC,$00   ;9DFA2E|        |;
                       db $08,$00,$CB,$00,$F8,$FF,$CD,$00   ;9DFA36|        |;
                       db $08,$00,$CE,$00,$08,$00,$CD,$00   ;9DFA3E|        |;
                       db $F8,$FF,$CF,$00,$08,$00,$D0,$00   ;9DFA46|        |;
                       db $08,$00,$CF,$00,$F8,$FF,$D1,$00   ;9DFA4E|        |;
                       db $08,$00,$D2,$00,$08,$00,$D1,$00   ;9DFA56|        |;
                       db $F8,$FF,$D3,$00,$08,$00,$D4,$00   ;9DFA5E|        |;
                       db $08,$00,$D3,$00,$F8,$FF,$D5,$00   ;9DFA66|        |;
                       db $08,$00,$D6,$00,$08,$00,$D5,$00   ;9DFA6E|        |;
                       db $F8,$FF,$D7,$00,$08,$00,$D8,$00   ;9DFA76|        |;
                       db $08,$00,$D7,$00,$F8,$FF,$96,$FA   ;9DFA7E|        |;
                       db $D2,$FA,$0E,$FB,$4A,$FB,$86,$FB   ;9DFA86|        |;
                       db $C2,$FB,$FE,$FB,$3A,$FC,$00,$00   ;9DFA8E|        |;
                       db $B9,$00,$05,$00,$BA,$00,$0F,$00   ;9DFA96|        |;
                       db $16,$03,$0A,$00,$17,$03,$05,$00   ;9DFA9E|        |;
                       db $18,$03,$05,$00,$19,$03,$05,$00   ;9DFAA6|        |;
                       db $16,$03,$05,$00,$17,$03,$05,$00   ;9DFAAE|        |;
                       db $18,$03,$05,$00,$19,$03,$05,$00   ;9DFAB6|        |;
                       db $BA,$00,$05,$00,$B9,$00,$05,$00   ;9DFABE|        |;
                       db $01,$00,$01,$00,$01,$00,$01,$00   ;9DFAC6|        |;
                       db $01,$00,$FD,$FF,$BB,$00,$05,$00   ;9DFACE|        |;
                       db $BC,$00,$14,$00,$1A,$03,$05,$00   ;9DFAD6|        |;
                       db $1B,$03,$0F,$00,$1C,$03,$0A,$00   ;9DFADE|        |;
                       db $1B,$03,$0A,$00,$1C,$03,$0A,$00   ;9DFAE6|        |;
                       db $1B,$03,$0A,$00,$1C,$03,$05,$00   ;9DFAEE|        |;
                       db $1D,$03,$14,$00,$06,$00,$01,$00   ;9DFAF6|        |;
                       db $06,$00,$01,$00,$06,$00,$01,$00   ;9DFAFE|        |;
                       db $06,$00,$01,$00,$06,$00,$FF,$FF   ;9DFB06|        |;
                       db $BD,$00,$05,$00,$BE,$00,$14,$00   ;9DFB0E|        |;
                       db $1E,$03,$05,$00,$1F,$03,$05,$00   ;9DFB16|        |;
                       db $20,$03,$05,$00,$21,$03,$0A,$00   ;9DFB1E|        |;
                       db $20,$03,$05,$00,$21,$03,$0A,$00   ;9DFB26|        |;
                       db $20,$03,$0A,$00,$0B,$00,$01,$00   ;9DFB2E|        |;
                       db $0B,$00,$01,$00,$0B,$00,$01,$00   ;9DFB36|        |;
                       db $0B,$00,$01,$00,$0B,$00,$01,$00   ;9DFB3E|        |;
                       db $0B,$00,$FF,$FF,$BF,$00,$05,$00   ;9DFB46|        |;
                       db $C0,$00,$14,$00,$22,$03,$05,$00   ;9DFB4E|        |;
                       db $23,$03,$05,$00,$24,$03,$05,$00   ;9DFB56|        |;
                       db $25,$03,$0A,$00,$24,$03,$05,$00   ;9DFB5E|        |;
                       db $25,$03,$0A,$00,$24,$03,$0A,$00   ;9DFB66|        |;
                       db $10,$00,$01,$00,$10,$00,$01,$00   ;9DFB6E|        |;
                       db $10,$00,$01,$00,$10,$00,$01,$00   ;9DFB76|        |;
                       db $10,$00,$01,$00,$10,$00,$FF,$FF   ;9DFB7E|        |;
                       db $C1,$00,$05,$00,$C2,$00,$0F,$00   ;9DFB86|        |;
                       db $26,$03,$0A,$00,$27,$03,$05,$00   ;9DFB8E|        |;
                       db $28,$03,$05,$00,$29,$03,$05,$00   ;9DFB96|        |;
                       db $26,$03,$05,$00,$27,$03,$05,$00   ;9DFB9E|        |;
                       db $28,$03,$05,$00,$29,$03,$05,$00   ;9DFBA6|        |;
                       db $C2,$00,$05,$00,$C1,$00,$05,$00   ;9DFBAE|        |;
                       db $15,$00,$01,$00,$15,$00,$01,$00   ;9DFBB6|        |;
                       db $15,$00,$FD,$FF,$C3,$00,$05,$00   ;9DFBBE|        |;
                       db $C4,$00,$14,$00,$2A,$03,$05,$00   ;9DFBC6|        |;
                       db $2B,$03,$0A,$00,$2C,$03,$0A,$00   ;9DFBCE|        |;
                       db $2B,$03,$0A,$00,$2A,$03,$05,$00   ;9DFBD6|        |;
                       db $C3,$00,$05,$00,$1A,$00,$01,$00   ;9DFBDE|        |;
                       db $1A,$00,$01,$00,$1A,$00,$01,$00   ;9DFBE6|        |;
                       db $1A,$00,$01,$00,$1A,$00,$01,$00   ;9DFBEE|        |;
                       db $1A,$00,$01,$00,$1A,$00,$FF,$FF   ;9DFBF6|        |;
                       db $C5,$00,$05,$00,$C6,$00,$14,$00   ;9DFBFE|        |;
                       db $C5,$00,$05,$00,$2D,$03,$05,$00   ;9DFC06|        |;
                       db $2E,$03,$0A,$00,$2F,$03,$05,$00   ;9DFC0E|        |;
                       db $30,$03,$05,$00,$2E,$03,$05,$00   ;9DFC16|        |;
                       db $2F,$03,$05,$00,$30,$03,$05,$00   ;9DFC1E|        |;
                       db $2E,$03,$05,$00,$2F,$03,$05,$00   ;9DFC26|        |;
                       db $30,$03,$05,$00,$2D,$03,$05,$00   ;9DFC2E|        |;
                       db $1F,$00,$FB,$FF,$D7,$00,$05,$00   ;9DFC36|        |;
                       db $C7,$00,$05,$00,$C8,$00,$0F,$00   ;9DFC3E|        |;
                       db $C7,$00,$05,$00,$31,$03,$05,$00   ;9DFC46|        |;
                       db $32,$03,$0F,$00,$33,$03,$05,$00   ;9DFC4E|        |;
                       db $34,$03,$05,$00,$32,$03,$0A,$00   ;9DFC56|        |;
                       db $31,$03,$05,$00,$D7,$00,$05,$00   ;9DFC5E|        |;
                       db $24,$00,$01,$00,$24,$00,$01,$00   ;9DFC66|        |;
                       db $24,$00,$01,$00,$24,$00,$FE,$FF   ;9DFC6E|        |;
                       db $88,$FC,$88,$FC,$9C,$FC,$9C,$FC   ;9DFC76|        |;
                       db $B0,$FC,$B0,$FC,$C4,$FC,$C4,$FC   ;9DFC7E|        |;
                       db $00,$00,$40,$03,$06,$00,$41,$03   ;9DFC86|        |;
                       db $06,$00,$42,$03,$06,$00,$43,$03   ;9DFC8E|        |;
                       db $4B,$00,$4C,$01,$FA,$FF,$44,$03   ;9DFC96|        |;
                       db $06,$00,$45,$03,$06,$00,$46,$03   ;9DFC9E|        |;
                       db $06,$00,$47,$03,$4B,$00,$44,$01   ;9DFCA6|        |;
                       db $FA,$FF,$48,$03,$06,$00,$49,$03   ;9DFCAE|        |;
                       db $06,$00,$4A,$03,$06,$00,$4B,$03   ;9DFCB6|        |;
                       db $4B,$00,$4C,$01,$FA,$FF,$4C,$03   ;9DFCBE|        |;
                       db $06,$00,$4D,$03,$06,$00,$4E,$03   ;9DFCC6|        |;
                       db $06,$00,$4F,$03,$4B,$00,$54,$01   ;9DFCCE|        |;
                       db $FA,$FF,$EA,$FC,$EA,$FC,$FE,$FC   ;9DFCD6|        |;
                       db $FE,$FC,$12,$FD,$12,$FD,$26,$FD   ;9DFCDE|        |;
                       db $26,$FD,$00,$00,$60,$03,$06,$00   ;9DFCE6|        |;
                       db $61,$03,$06,$00,$62,$03,$06,$00   ;9DFCEE|        |;
                       db $63,$03,$4B,$00,$3C,$01,$FA,$FF   ;9DFCF6|        |;
                       db $64,$03,$06,$00,$65,$03,$06,$00   ;9DFCFE|        |;
                       db $66,$03,$06,$00,$67,$03,$4B,$00   ;9DFD06|        |;
                       db $24,$01,$FA,$FF,$68,$03,$06,$00   ;9DFD0E|        |;
                       db $69,$03,$06,$00,$6A,$03,$06,$00   ;9DFD16|        |;
                       db $6B,$03,$4B,$00,$4C,$01,$FA,$FF   ;9DFD1E|        |;
                       db $6C,$03,$06,$00,$6D,$03,$06,$00   ;9DFD26|        |;
                       db $6E,$03,$06,$00,$6F,$03,$4B,$00   ;9DFD2E|        |;
                       db $34,$01,$FA,$FF,$4C,$FD,$4C,$FD   ;9DFD36|        |;
                       db $60,$FD,$60,$FD,$74,$FD,$74,$FD   ;9DFD3E|        |;
                       db $88,$FD,$88,$FD,$00,$00,$50,$03   ;9DFD46|        |;
                       db $06,$00,$51,$03,$06,$00,$52,$03   ;9DFD4E|        |;
                       db $06,$00,$53,$03,$4B,$00,$1C,$01   ;9DFD56|        |;
                       db $FA,$FF,$54,$03,$06,$00,$55,$03   ;9DFD5E|        |;
                       db $06,$00,$56,$03,$06,$00,$57,$03   ;9DFD66|        |;
                       db $4B,$00,$20,$01,$FA,$FF,$58,$03   ;9DFD6E|        |;
                       db $06,$00,$59,$03,$06,$00,$5A,$03   ;9DFD76|        |;
                       db $06,$00,$5B,$03,$4B,$00,$2C,$01   ;9DFD7E|        |;
                       db $FA,$FF,$5C,$03,$06,$00,$5D,$03   ;9DFD86|        |;
                       db $06,$00,$5E,$03,$06,$00,$5F,$03   ;9DFD8E|        |;
                       db $4B,$00,$38,$01,$FA,$FF,$AE,$FD   ;9DFD96|        |;
                       db $AE,$FD,$C2,$FD,$C2,$FD,$D6,$FD   ;9DFD9E|        |;
                       db $D6,$FD,$EA,$FD,$EA,$FD,$00,$00   ;9DFDA6|        |;
                       db $70,$03,$06,$00,$71,$03,$06,$00   ;9DFDAE|        |;
                       db $72,$03,$06,$00,$73,$03,$4B,$00   ;9DFDB6|        |;
                       db $3C,$01,$FA,$FF,$74,$03,$06,$00   ;9DFDBE|        |;
                       db $75,$03,$06,$00,$76,$03,$06,$00   ;9DFDC6|        |;
                       db $77,$03,$4B,$00,$20,$01,$FA,$FF   ;9DFDCE|        |;
                       db $78,$03,$06,$00,$79,$03,$06,$00   ;9DFDD6|        |;
                       db $7A,$03,$06,$00,$7B,$03,$4B,$00   ;9DFDDE|        |;
                       db $4C,$01,$FA,$FF,$7C,$03,$06,$00   ;9DFDE6|        |;
                       db $7D,$03,$06,$00,$7E,$03,$06,$00   ;9DFDEE|        |;
                       db $7F,$03,$4B,$00,$50,$01,$FA,$FF   ;9DFDF6|        |;
                       db $10,$FE,$10,$FE,$24,$FE,$24,$FE   ;9DFDFE|        |;
                       db $38,$FE,$38,$FE,$4C,$FE,$4C,$FE   ;9DFE06|        |;
                       db $00,$00,$80,$03,$0A,$00,$81,$03   ;9DFE0E|        |;
                       db $0A,$00,$84,$03,$0A,$00,$84,$03   ;9DFE16|        |;
                       db $5A,$00,$94,$03,$EC,$FF,$85,$03   ;9DFE1E|        |;
                       db $0A,$00,$86,$03,$0A,$00,$89,$03   ;9DFE26|        |;
                       db $0A,$00,$89,$03,$5A,$00,$94,$03   ;9DFE2E|        |;
                       db $EC,$FF,$8A,$03,$0A,$00,$8B,$03   ;9DFE36|        |;
                       db $0A,$00,$8E,$03,$0A,$00,$8E,$03   ;9DFE3E|        |;
                       db $5A,$00,$94,$03,$EC,$FF,$8F,$03   ;9DFE46|        |;
                       db $0A,$00,$90,$03,$0A,$00,$93,$03   ;9DFE4E|        |;
                       db $0A,$00,$93,$03,$5A,$00,$94,$03   ;9DFE56|        |;
                       db $EC,$FF,$72,$FE,$72,$FE,$86,$FE   ;9DFE5E|        |;
                       db $86,$FE,$9A,$FE,$9A,$FE,$AE,$FE   ;9DFE66|        |;
                       db $AE,$FE,$00,$00,$82,$03,$0A,$00   ;9DFE6E|        |;
                       db $83,$03,$0A,$00,$84,$03,$0A,$00   ;9DFE76|        |;
                       db $84,$03,$5A,$00,$94,$03,$EC,$FF   ;9DFE7E|        |;
                       db $87,$03,$0A,$00,$88,$03,$0A,$00   ;9DFE86|        |;
                       db $89,$03,$0A,$00,$89,$03,$5A,$00   ;9DFE8E|        |;
                       db $94,$03,$EC,$FF,$8C,$03,$0A,$00   ;9DFE96|        |;
                       db $8D,$03,$0A,$00,$8E,$03,$0A,$00   ;9DFE9E|        |;
                       db $8E,$03,$5A,$00,$94,$03,$EC,$FF   ;9DFEA6|        |;
                       db $91,$03,$0A,$00,$92,$03,$0A,$00   ;9DFEAE|        |;
                       db $93,$03,$0A,$00,$93,$03,$5A,$00   ;9DFEB6|        |;
                       db $94,$03,$EC,$FF,$D4,$FE,$D4,$FE   ;9DFEBE|        |;
                       db $D4,$FE,$D4,$FE,$D4,$FE,$D4,$FE   ;9DFEC6|        |;
                       db $EC,$FE,$EC,$FE,$00,$00,$A7,$00   ;9DFECE|        |;
                       db $06,$00,$35,$03,$06,$00,$36,$03   ;9DFED6|        |;
                       db $0F,$00,$37,$03,$06,$00,$35,$03   ;9DFEDE|        |;
                       db $06,$00,$0B,$00,$FA,$FF,$B3,$00   ;9DFEE6|        |;
                       db $06,$00,$38,$03,$06,$00,$39,$03   ;9DFEEE|        |;
                       db $0F,$00,$3A,$03,$06,$00,$38,$03   ;9DFEF6|        |;
                       db $06,$00,$1F,$00,$FA,$FF,$16,$FF   ;9DFEFE|        |;
                       db $16,$FF,$16,$FF,$16,$FF,$16,$FF   ;9DFF06|        |;
                       db $16,$FF,$3A,$FF,$3A,$FF,$00,$00   ;9DFF0E|        |;
                       db $A7,$00,$06,$00,$35,$03,$0F,$00   ;9DFF16|        |;
                       db $3B,$03,$0F,$00,$3C,$03,$0F,$00   ;9DFF1E|        |;
                       db $3D,$03,$0F,$00,$3C,$03,$0F,$00   ;9DFF26|        |;
                       db $3D,$03,$0F,$00,$35,$03,$0A,$00   ;9DFF2E|        |;
                       db $AA,$00,$FA,$FF,$B3,$00,$06,$00   ;9DFF36|        |;
                       db $38,$03,$0F,$00,$3E,$03,$0F,$00   ;9DFF3E|        |;
                       db $3F,$03,$0F,$00,$3E,$03,$0F,$00   ;9DFF46|        |;
                       db $3F,$03,$0F,$00,$38,$03,$0A,$00   ;9DFF4E|        |;
                       db $B3,$00,$FA,$FF,$6C,$FF,$6C,$FF   ;9DFF56|        |;
                       db $6C,$FF,$6C,$FF,$6C,$FF,$6C,$FF   ;9DFF5E|        |;
                       db $6C,$FF,$6C,$FF,$00,$00,$AD,$00   ;9DFF66|        |;
                       db $CC,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFF6E|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFF76|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFF7E|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFF86|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFF8E|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFF96|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFF9E|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFFA6|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFFAE|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFFB6|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFFBE|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFFC6|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFFCE|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFFD6|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFFDE|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFFE6|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFFEE|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9DFFF6|        |;
                       db $FF,$FF                           ;9DFFFE|        |;
