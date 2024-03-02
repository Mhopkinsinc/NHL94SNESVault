 
                       ORG $9E8000
 
 
          CODE_9E8000:
                       LDA.W $14E3,X                        ;9E8000|BDE314  |;
                       BNE CODE_9E800C                      ;9E8003|D007    |;
                       LDA.W #$F0D2                         ;9E8005|A9D2F0  |;
                       JSL.L CODE_9EA3F1                    ;9E8008|22F1A39E|;
 
          CODE_9E800C:
                       RTL                                  ;9E800C|6B      |;
                       LDA.W $1283,X                        ;9E800D|BD8312  |;
                       BIT.W #$0002                         ;9E8010|890200  |;
                       BEQ CODE_9E802A                      ;9E8013|F015    |;
                       AND.W #$FFFD                         ;9E8015|29FDFF  |;
                       STA.W $1283,X                        ;9E8018|9D8312  |;
                       STZ.W $1043,X                        ;9E801B|9E4310  |;
                       STZ.W $1023,X                        ;9E801E|9E2310  |;
                       LDA.W #$0008                         ;9E8021|A90800  |;
                       STA.W $10A3,X                        ;9E8024|9DA310  |;
                       STZ.W $1003,X                        ;9E8027|9E0310  |;
 
          CODE_9E802A:
                       LDA.W $0F43,X                        ;9E802A|BD430F  |;
                       BEQ UNREACH_9E8042                   ;9E802D|F013    |;
                       CPX.W $0AD9                          ;9E802F|ECD90A  |;
                       BNE CODE_9E8046                      ;9E8032|D012    |;
                       LDA.W #$0011                         ;9E8034|A91100  |;
                       STA.B $A5                            ;9E8037|85A5    |;
                       LDA.W $19D4,X                        ;9E8039|BDD419  |;
                       BPL CODE_9E8041                      ;9E803C|1003    |;
                       JMP.W CODE_9E8C0E                    ;9E803E|4C0E8C  |;
 
          CODE_9E8041:
                       RTL                                  ;9E8041|6B      |;
 
       UNREACH_9E8042:
                       db $5C,$31,$D3,$9E                   ;9E8042|        |;
 
          CODE_9E8046:
                       LDA.W $1003,X                        ;9E8046|BD0310  |;
                       SEC                                  ;9E8049|38      |;
                       SBC.B $C1                            ;9E804A|E5C1    |;
                       STA.W $1003,X                        ;9E804C|9D0310  |;
                       BMI CODE_9E8054                      ;9E804F|3003    |;
                       JMP.W CODE_9E814E                    ;9E8051|4C4E81  |;
 
          CODE_9E8054:
                       ADC.W $1323,X                        ;9E8054|7D2313  |;
                       BPL CODE_9E805C                      ;9E8057|1003    |;
                       LDA.W #$0000                         ;9E8059|A90000  |;
 
          CODE_9E805C:
                       STA.W $1003,X                        ;9E805C|9D0310  |;
                       LDY.W $0AD9                          ;9E805F|ACD90A  |;
                       BMI CODE_9E8076                      ;9E8062|3012    |;
                       LDA.W $0F43,Y                        ;9E8064|B9430F  |;
                       BEQ CODE_9E8076                      ;9E8067|F00D    |;
                       STY.B $8D                            ;9E8069|848D    |;
                       LDA.W $1503,Y                        ;9E806B|B90315  |;
                       EOR.W $1503,X                        ;9E806E|5D0315  |;
                       BNE CODE_9E8076                      ;9E8071|D003    |;
                       JMP.W CODE_9E8086                    ;9E8073|4C8680  |;
 
          CODE_9E8076:
                       LDY.B zpCurntTeamLoopVal             ;9E8076|A491    |;
                       LDA.W $17AE,Y                        ;9E8078|B9AE17  |;
                       STA.B $AD                            ;9E807B|85AD    |;
                       LDA.W $17B2,Y                        ;9E807D|B9B217  |;
                       STA.B $8D                            ;9E8080|858D    |;
                       LDA.B $AD                            ;9E8082|A5AD    |;
                       BMI CODE_9E80BF                      ;9E8084|3039    |;
 
          CODE_9E8086:
                       CPX.B $8D                            ;9E8086|E48D    |;
                       BEQ CODE_9E80BF                      ;9E8088|F035    |;
                       LDA.W $15D6                          ;9E808A|ADD615  |;
                       BNE CODE_9E80BF                      ;9E808D|D030    |;
                       LDY.B $8D                            ;9E808F|A48D    |;
                       LDA.W $1283,Y                        ;9E8091|B98312  |;
                       BIT.W #$1000                         ;9E8094|890010  |;
                       BNE CODE_9E80BF                      ;9E8097|D026    |;
                       LDA.W $0F43,Y                        ;9E8099|B9430F  |;
                       BEQ CODE_9E80BF                      ;9E809C|F021    |;
                       LDA.W $0B7D,Y                        ;9E809E|B97D0B  |;
                       CMP.W #$0015                         ;9E80A1|C91500  |;
                       BEQ CODE_9E80BF                      ;9E80A4|F019    |;
                       LDX.B $8D                            ;9E80A6|A68D    |;
                       LDA.W $1283,X                        ;9E80A8|BD8312  |;
                       AND.W #$FFFE                         ;9E80AB|29FEFF  |;
                       STA.W $1283,X                        ;9E80AE|9D8312  |;
                       LDA.W #$0012                         ;9E80B1|A91200  |;
                       STA.B $A5                            ;9E80B4|85A5    |;
                       JSL.L CODE_9E8C0E                    ;9E80B6|220E8C9E|;
                       LDX.B $E4                            ;9E80BA|A6E4    |;
                       JMP.W CODE_9E8BE6                    ;9E80BC|4CE68B  |;
 
          CODE_9E80BF:
                       LDA.W #$0002                         ;9E80BF|A90200  |;
                       STA.B $A9                            ;9E80C2|85A9    |;
                       LDA.B $AD                            ;9E80C4|A5AD    |;
                       CMP.W #$00E2                         ;9E80C6|C9E200  |;
                       BCS CODE_9E80D2                      ;9E80C9|B007    |;
                       STZ.B $A9                            ;9E80CB|64A9    |;
                       LDA.W $0F43,X                        ;9E80CD|BD430F  |;
                       BEQ CODE_9E814E                      ;9E80D0|F07C    |;
 
          CODE_9E80D2:
                       LDA.W $15D8                          ;9E80D2|ADD815  |;
                       BIT.W #$2000                         ;9E80D5|890020  |;
                       BEQ CODE_9E80EC                      ;9E80D8|F012    |;
                       DEC.B $A9                            ;9E80DA|C6A9    |;
                       DEC.B $A9                            ;9E80DC|C6A9    |;
                       JSL.L CODE_9E827C                    ;9E80DE|227C829E|;
                       BNE CODE_9E80EC                      ;9E80E2|D008    |;
                       INC.B $A9                            ;9E80E4|E6A9    |;
                       INC.B $A9                            ;9E80E6|E6A9    |;
                       INC.B $A9                            ;9E80E8|E6A9    |;
                       INC.B $A9                            ;9E80EA|E6A9    |;
 
          CODE_9E80EC:
                       LDA.W #$0014                         ;9E80EC|A91400  |;
                       SEC                                  ;9E80EF|38      |;
                       SBC.W $1483,X                        ;9E80F0|FD8314  |;
                       STA.B $A5                            ;9E80F3|85A5    |;
                       LDA.B $A9                            ;9E80F5|A5A9    |;
                       STA.B $C5                            ;9E80F7|85C5    |;
 
          CODE_9E80F9:
                       DEC.B $C5                            ;9E80F9|C6C5    |;
                       BMI CODE_9E813D                      ;9E80FB|3040    |;
                       ASL.B $A5                            ;9E80FD|06A5    |;
                       BRA CODE_9E80F9                      ;9E80FF|80F8    |;
 
          CODE_9E8101:
                       RTL                                  ;9E8101|6B      |;
 
          CODE_9E8102:
                       LDY.W $0AD9                          ;9E8102|ACD90A  |;
                       BMI CODE_9E8136                      ;9E8105|302F    |;
                       LDA.W $0F43,Y                        ;9E8107|B9430F  |;
                       BNE CODE_9E8136                      ;9E810A|D02A    |;
                       LDA.W $0D71                          ;9E810C|AD710D  |;
                       STA.B $A5                            ;9E810F|85A5    |;
                       LDA.W #$0058                         ;9E8111|A95800  |;
                       LDY.W $14C3,X                        ;9E8114|BCC314  |;
                       BNE CODE_9E811C                      ;9E8117|D003    |;
                       LDA.W #$FFA8                         ;9E8119|A9A8FF  |;
 
          CODE_9E811C:
                       STA.B $A9                            ;9E811C|85A9    |;
                       LDA.W #$009E                         ;9E811E|A99E00  |;
                       STA.B $8B                            ;9E8121|858B    |;
                       LDA.W #$D0FC                         ;9E8123|A9FCD0  |;
                       STA.B $89                            ;9E8126|8589    |;
                       JSL.L CODE_9EA5A4                    ;9E8128|22A4A59E|;
                       JMP.W CODE_9EA164                    ;9E812C|4C64A1  |;
 
          CODE_9E812F:
                       JSL.L CODE_9E8000                    ;9E812F|2200809E|;
                       JMP.W CODE_9E8BD7                    ;9E8133|4CD78B  |;
 
          CODE_9E8136:
                       JSL.L CODE_9EAFB5                    ;9E8136|22B5AF9E|;
                       JMP.W CODE_9EA164                    ;9E813A|4C64A1  |;
 
          CODE_9E813D:
                       JSL.L CODE_9BB39B                    ;9E813D|229BB39B|;
                       LDA.B $A5                            ;9E8141|A5A5    |;
                       CMP.W #$0002                         ;9E8143|C90200  |;
                       BCS CODE_9E814E                      ;9E8146|B006    |;
                       LDA.W #$00F0                         ;9E8148|A9F000  |;
                       STA.W $1043,X                        ;9E814B|9D4310  |;
 
          CODE_9E814E:
                       LDA.W $19D4,X                        ;9E814E|BDD419  |;
                       BPL CODE_9E8101                      ;9E8151|10AE    |;
                       LDA.W $15D6                          ;9E8153|ADD615  |;
                       BNE CODE_9E812F                      ;9E8156|D0D7    |;
                       LDY.B zpCurntTeamLoopVal             ;9E8158|A491    |;
                       LDA.W $17DE,Y                        ;9E815A|B9DE17  |;
                       BIT.W #$0002                         ;9E815D|890200  |;
                       BNE CODE_9E8178                      ;9E8160|D016    |;
                       LDA.W $0AD9                          ;9E8162|ADD90A  |;
                       BMI CODE_9E8102                      ;9E8165|309B    |;
                       LDA.W $1043,X                        ;9E8167|BD4310  |;
                       SEC                                  ;9E816A|38      |;
                       SBC.B $C1                            ;9E816B|E5C1    |;
                       STA.W $1043,X                        ;9E816D|9D4310  |;
                       CMP.W #$0000                         ;9E8170|C90000  |;
                       BPL CODE_9E8102                      ;9E8173|108D    |;
                       STZ.W $1043,X                        ;9E8175|9E4310  |;
 
          CODE_9E8178:
                       JSL.L CODE_9EDEA7                    ;9E8178|22A7DE9E|;
                       LDA.B $A9                            ;9E817C|A5A9    |;
                       PHA                                  ;9E817E|48      |;
                       LDA.B $A5                            ;9E817F|A5A5    |;
                       PHA                                  ;9E8181|48      |;
                       EOR.W #$FFFF                         ;9E8182|49FFFF  |;
                       INC A                                ;9E8185|1A      |;
                       STA.B $A5                            ;9E8186|85A5    |;
                       LDA.B $A9                            ;9E8188|A5A9    |;
                       EOR.W #$FFFF                         ;9E818A|49FFFF  |;
                       INC A                                ;9E818D|1A      |;
                       CLC                                  ;9E818E|18      |;
                       ADC.W #$00F4                         ;9E818F|69F400  |;
                       STA.B $A9                            ;9E8192|85A9    |;
                       LDA.W $14C3,X                        ;9E8194|BDC314  |;
                       BEQ CODE_9E81A1                      ;9E8197|F008    |;
                       LDA.B $A9                            ;9E8199|A5A9    |;
                       SEC                                  ;9E819B|38      |;
                       SBC.W #$01E8                         ;9E819C|E9E801  |;
                       STA.B $A9                            ;9E819F|85A9    |;
 
          CODE_9E81A1:
                       LDA.B $A5                            ;9E81A1|A5A5    |;
                       PHA                                  ;9E81A3|48      |;
                       ASL A                                ;9E81A4|0A      |;
                       PLA                                  ;9E81A5|68      |;
                       ROR A                                ;9E81A6|6A      |;
                       STA.B $A5                            ;9E81A7|85A5    |;
                       LDA.B $A9                            ;9E81A9|A5A9    |;
                       PHA                                  ;9E81AB|48      |;
                       ASL A                                ;9E81AC|0A      |;
                       PLA                                  ;9E81AD|68      |;
                       ROR A                                ;9E81AE|6A      |;
                       STA.B $A9                            ;9E81AF|85A9    |;
                       PLA                                  ;9E81B1|68      |;
                       CLC                                  ;9E81B2|18      |;
                       ADC.B $A5                            ;9E81B3|65A5    |;
                       STA.B $A5                            ;9E81B5|85A5    |;
                       PLA                                  ;9E81B7|68      |;
                       CLC                                  ;9E81B8|18      |;
                       ADC.B $A9                            ;9E81B9|65A9    |;
                       STA.B $A9                            ;9E81BB|85A9    |;
                       LDY.B zpCurntTeamLoopVal             ;9E81BD|A491    |;
                       LDA.W $17DE,Y                        ;9E81BF|B9DE17  |;
                       BIT.W #$0002                         ;9E81C2|890200  |;
                       BEQ CODE_9E81E8                      ;9E81C5|F021    |;
                       db $BD,$C3,$14,$F0,$0F,$A5,$A9,$38   ;9E81C7|        |;
                       db $E9,$53,$00,$30,$14,$A9,$44,$00   ;9E81CF|        |;
                       db $85,$A9,$80,$0D,$A5,$A9,$38,$E9   ;9E81D7|        |;
                       db $AD,$FF,$10,$05,$A9,$BC,$FF,$85   ;9E81DF|        |;
                       db $A9                               ;9E81E7|        |;
 
          CODE_9E81E8:
                       LDA.W #$009E                         ;9E81E8|A99E00  |;
                       STA.B $8B                            ;9E81EB|858B    |;
                       LDA.W #$D0FC                         ;9E81ED|A9FCD0  |;
                       STA.B $89                            ;9E81F0|8589    |;
                       JSL.L CODE_9EA5A4                    ;9E81F2|22A4A59E|;
                       JMP.W CODE_9EA164                    ;9E81F6|4C64A1  |;
 
          CODE_9E81F9:
                       LDA.W $14E3,X                        ;9E81F9|BDE314  |;
                       BEQ CODE_9E81FF                      ;9E81FC|F001    |;
                       db $6B                               ;9E81FE|        |;
 
          CODE_9E81FF:
                       JSL.L CODE_9FDCB2                    ;9E81FF|22B2DC9F|;
                       LDA.L $7E34C6                        ;9E8203|AFC6347E|;
                       BEQ CODE_9E8223                      ;9E8207|F01A    |;
                       db $A5,$A5,$38,$E9,$CC,$00,$85,$A5   ;9E8209|        |;
                       db $22,$D3,$DC,$9F,$AF,$C6,$34,$7E   ;9E8211|        |;
                       db $C9,$02,$00,$D0,$05,$A9,$00,$10   ;9E8219|        |;
                       db $85,$A5                           ;9E8221|        |;
 
          CODE_9E8223:
                       LDA.B $A5                            ;9E8223|A5A5    |;
                       LDX.W #$0233                         ;9E8225|A23302  |;
                       JSL.L CODE_809099                    ;9E8228|22999080|;
                       LDX.B $95                            ;9E822C|A695    |;
                       LDA.B $0A                            ;9E822E|A50A    |;
                       STA.B $D7                            ;9E8230|85D7    |;
                       LDA.W $1163,X                        ;9E8232|BD6311  |;
                       ASL A                                ;9E8235|0A      |;
                       ASL A                                ;9E8236|0A      |;
                       TAY                                  ;9E8237|A8      |;
                       LDA.W #$0080                         ;9E8238|A98000  |;
                       STA.B $8B                            ;9E823B|858B    |;
                       LDA.W #$DA06                         ;9E823D|A906DA  |;
                       STA.B $89                            ;9E8240|8589    |;
                       LDA.B [$89],Y                        ;9E8242|B789    |;
                       INY                                  ;9E8244|C8      |;
                       INY                                  ;9E8245|C8      |;
                       TAX                                  ;9E8246|AA      |;
                       LDA.B $D7                            ;9E8247|A5D7    |;
                       JSL.L CODE_808F5D                    ;9E8249|225D8F80|;
                       LDX.B $95                            ;9E824D|A695    |;
                       CLC                                  ;9E824F|18      |;
                       ADC.W $0EC3,X                        ;9E8250|7DC30E  |;
                       STA.W $0EC3,X                        ;9E8253|9DC30E  |;
                       LDA.B [$89],Y                        ;9E8256|B789    |;
                       TAX                                  ;9E8258|AA      |;
                       LDA.B $D7                            ;9E8259|A5D7    |;
                       JSL.L CODE_808F5D                    ;9E825B|225D8F80|;
                       LDX.B $95                            ;9E825F|A695    |;
                       CLC                                  ;9E8261|18      |;
                       ADC.W $0EE3,X                        ;9E8262|7DE30E  |;
                       STA.W $0EE3,X                        ;9E8265|9DE30E  |;
                       LDA.W #$F342                         ;9E8268|A942F3  |;
                       STA.W $14E3,X                        ;9E826B|9DE314  |;
                       JML.L CODE_9EA3F1                    ;9E826E|5CF1A39E|;
 
          CODE_9E8272:
                       LDA.W $15D8                          ;9E8272|ADD815  |;
                       AND.W #$2000                         ;9E8275|290020  |;
                       BNE CODE_9E827C                      ;9E8278|D002    |;
                       INC A                                ;9E827A|1A      |;
                       RTL                                  ;9E827B|6B      |;
 
          CODE_9E827C:
                       LDA.W $1503,X                        ;9E827C|BD0315  |;
                       BNE CODE_9E828B                      ;9E827F|D00A    |;
                       LDA.W $15D8                          ;9E8281|ADD815  |;
                       AND.W #$4000                         ;9E8284|290040  |;
                       EOR.W #$4000                         ;9E8287|490040  |;
                       RTL                                  ;9E828A|6B      |;
 
          CODE_9E828B:
                       LDA.W $15D8                          ;9E828B|ADD815  |;
                       AND.W #$4000                         ;9E828E|290040  |;
                       RTL                                  ;9E8291|6B      |;
                       CPX.W $0AD9                          ;9E8292|ECD90A  |;
                       BNE CODE_9E829C                      ;9E8295|D005    |;
                       LDA.W $19D4,X                        ;9E8297|BDD419  |;
                       BMI CODE_9E82A7                      ;9E829A|300B    |;
 
          CODE_9E829C:
                       JMP.W CODE_9E8BE6                    ;9E829C|4CE68B  |;
                       db $6B                               ;9E829F|        |;
 
          CODE_9E82A0:
                       JSL.L CODE_9E8000                    ;9E82A0|2200809E|;
                       JMP.W CODE_9E8BD7                    ;9E82A4|4CD78B  |;
 
          CODE_9E82A7:
                       LDA.W $15D6                          ;9E82A7|ADD615  |;
                       BNE CODE_9E82A0                      ;9E82AA|D0F4    |;
                       LDA.W $1283,X                        ;9E82AC|BD8312  |;
                       BIT.W #$0002                         ;9E82AF|890200  |;
                       BEQ CODE_9E82CF                      ;9E82B2|F01B    |;
                       AND.W #$FFFD                         ;9E82B4|29FDFF  |;
                       STA.W $1283,X                        ;9E82B7|9D8312  |;
                       STZ.W $1003,X                        ;9E82BA|9E0310  |;
                       STZ.W $1023,X                        ;9E82BD|9E2310  |;
                       LDA.W #$0008                         ;9E82C0|A90800  |;
                       STA.W $10A3                          ;9E82C3|8DA310  |;
                       LDA.W $0792                          ;9E82C6|AD9207  |;
                       AND.W #$0003                         ;9E82C9|290300  |;
                       STA.W $1043,X                        ;9E82CC|9D4310  |;
 
          CODE_9E82CF:
                       LDA.W $1003,X                        ;9E82CF|BD0310  |;
                       SEC                                  ;9E82D2|38      |;
                       SBC.B $C1                            ;9E82D3|E5C1    |;
                       STA.W $1003,X                        ;9E82D5|9D0310  |;
                       BPL CODE_9E8321                      ;9E82D8|1047    |;
                       ADC.W $1323,X                        ;9E82DA|7D2313  |;
                       BPL CODE_9E82E2                      ;9E82DD|1003    |;
                       db $A9,$00,$00                       ;9E82DF|        |;
 
          CODE_9E82E2:
                       STA.W $1003,X                        ;9E82E2|9D0310  |;
                       JSL.L CODE_9EC417                    ;9E82E5|2217C49E|;
                       LDA.W BreakAwayActive_flg            ;9E82E9|AD8B1E  |;
                       BEQ CODE_9E830D                      ;9E82EC|F01F    |;
                       LDA.W $0DB7,X                        ;9E82EE|BDB70D  |;
                       STA.B $A5                            ;9E82F1|85A5    |;
                       BPL CODE_9E82FD                      ;9E82F3|1008    |;
                       LDA.W #$0000                         ;9E82F5|A90000  |;
                       SEC                                  ;9E82F8|38      |;
                       SBC.B $A5                            ;9E82F9|E5A5    |;
                       STA.B $A5                            ;9E82FB|85A5    |;
 
          CODE_9E82FD:
                       CMP.W #$0090                         ;9E82FD|C99000  |;
                       BPL CODE_9E830D                      ;9E8300|100B    |;
                       LDA.W #$0010                         ;9E8302|A91000  |;
                       STA.B $A5                            ;9E8305|85A5    |;
                       JSL.L CODE_9E8C18                    ;9E8307|22188C9E|;
                       BRA CODE_9E8373                      ;9E830B|8066    |;
 
          CODE_9E830D:
                       JSL.L CODE_9FDBD0                    ;9E830D|22D0DB9F|;
                       JSL.L CODE_9EDED4                    ;9E8311|22D4DE9E|;
                       LDA.W $0B7D,X                        ;9E8315|BD7D0B  |;
                       CMP.W #$0011                         ;9E8318|C91100  |;
                       BNE CODE_9E8321                      ;9E831B|D004    |;
                       JSL.L CODE_9EE89F                    ;9E831D|229FE89E|;
 
          CODE_9E8321:
                       LDA.W #$0006                         ;9E8321|A90600  |;
                       CLC                                  ;9E8324|18      |;
                       ADC.W $1043,X                        ;9E8325|7D4310  |;
                       STA.B $A5                            ;9E8328|85A5    |;
                       LDA.W #$0080                         ;9E832A|A98000  |;
                       STA.B $8B                            ;9E832D|858B    |;
                       LDA.W #$D398                         ;9E832F|A998D3  |;
                       STA.B $89                            ;9E8332|8589    |;
                       LDA.W $15D8                          ;9E8334|ADD815  |;
                       BIT.W #$8000                         ;9E8337|890080  |;
                       BEQ CODE_9E8341                      ;9E833A|F005    |;
                       db $BD,$43,$0F,$85,$A5               ;9E833C|        |;
 
          CODE_9E8341:
                       LDA.B $A5                            ;9E8341|A5A5    |;
                       ASL A                                ;9E8343|0A      |;
                       ASL A                                ;9E8344|0A      |;
                       TAY                                  ;9E8345|A8      |;
                       LDA.B [$89],Y                        ;9E8346|B789    |;
                       STA.B $A5                            ;9E8348|85A5    |;
                       INY                                  ;9E834A|C8      |;
                       INY                                  ;9E834B|C8      |;
                       LDA.B [$89],Y                        ;9E834C|B789    |;
                       STA.B $A9                            ;9E834E|85A9    |;
                       LDA.W $14C3,X                        ;9E8350|BDC314  |;
                       BNE CODE_9E8365                      ;9E8353|D010    |;
                       LDA.W #$0000                         ;9E8355|A90000  |;
                       SEC                                  ;9E8358|38      |;
                       SBC.B $A5                            ;9E8359|E5A5    |;
                       STA.B $A5                            ;9E835B|85A5    |;
                       LDA.W #$0000                         ;9E835D|A90000  |;
                       SEC                                  ;9E8360|38      |;
                       SBC.B $A9                            ;9E8361|E5A9    |;
                       STA.B $A9                            ;9E8363|85A9    |;
 
          CODE_9E8365:
                       LDA.W #$009E                         ;9E8365|A99E00  |;
                       STA.B $8B                            ;9E8368|858B    |;
                       LDA.W #$8374                         ;9E836A|A97483  |;
                       STA.B $89                            ;9E836D|8589    |;
                       JML.L CODE_9EA5A4                    ;9E836F|5CA4A59E|;
 
          CODE_9E8373:
                       RTL                                  ;9E8373|6B      |;
                       LDA.B $A5                            ;9E8374|A5A5    |;
                       AND.W #$00FF                         ;9E8376|29FF00  |;
                       BIT.W #$0080                         ;9E8379|898000  |;
                       BEQ CODE_9E8381                      ;9E837C|F003    |;
                       db $09,$00,$FF                       ;9E837E|        |;
 
          CODE_9E8381:
                       STA.B $A5                            ;9E8381|85A5    |;
                       LDA.W $0EC4,X                        ;9E8383|BDC40E  |;
                       AND.W #$00FF                         ;9E8386|29FF00  |;
                       BIT.W #$0080                         ;9E8389|898000  |;
                       BEQ CODE_9E8391                      ;9E838C|F003    |;
                       ORA.W #$FF00                         ;9E838E|0900FF  |;
 
          CODE_9E8391:
                       CLC                                  ;9E8391|18      |;
                       ADC.W $0D71                          ;9E8392|6D710D  |;
                       STA.B $AD                            ;9E8395|85AD    |;
                       LDA.W $0EE4,X                        ;9E8397|BDE40E  |;
                       AND.W #$00FF                         ;9E839A|29FF00  |;
                       BIT.W #$0080                         ;9E839D|898000  |;
                       BEQ CODE_9E83A5                      ;9E83A0|F003    |;
                       ORA.W #$FF00                         ;9E83A2|0900FF  |;
 
          CODE_9E83A5:
                       CLC                                  ;9E83A5|18      |;
                       ADC.W $0DD3                          ;9E83A6|6DD30D  |;
                       STA.B $B1                            ;9E83A9|85B1    |;
                       STZ.W $0D2D                          ;9E83AB|9C2D0D  |;
                       LDA.W #$0005                         ;9E83AE|A90500  |;
                       STA.B $B5                            ;9E83B1|85B5    |;
                       STZ.B $89                            ;9E83B3|6489    |;
                       CPX.W #$000C                         ;9E83B5|E00C00  |;
                       BCS CODE_9E83BF                      ;9E83B8|B005    |;
                       db $A9,$0C,$00,$85,$89               ;9E83BA|        |;
 
          CODE_9E83BF:
                       LDY.B $89                            ;9E83BF|A489    |;
                       LDA.W $0EC4,Y                        ;9E83C1|B9C40E  |;
                       AND.W #$00FF                         ;9E83C4|29FF00  |;
                       BIT.W #$0080                         ;9E83C7|898000  |;
                       BEQ CODE_9E83CF                      ;9E83CA|F003    |;
                       ORA.W #$FF00                         ;9E83CC|0900FF  |;
 
          CODE_9E83CF:
                       CLC                                  ;9E83CF|18      |;
                       ADC.W $0D55,Y                        ;9E83D0|79550D  |;
                       SEC                                  ;9E83D3|38      |;
                       SBC.B $AD                            ;9E83D4|E5AD    |;
                       CMP.W #$FFEB                         ;9E83D6|C9EBFF  |;
                       BMI CODE_9E8430                      ;9E83D9|3055    |;
                       CMP.W #$0015                         ;9E83DB|C91500  |;
                       BPL CODE_9E8430                      ;9E83DE|1050    |;
                       LDA.W $0EE4,Y                        ;9E83E0|B9E40E  |;
                       AND.W #$00FF                         ;9E83E3|29FF00  |;
                       BIT.W #$0080                         ;9E83E6|898000  |;
                       BEQ CODE_9E83EE                      ;9E83E9|F003    |;
                       ORA.W #$FF00                         ;9E83EB|0900FF  |;
 
          CODE_9E83EE:
                       CLC                                  ;9E83EE|18      |;
                       ADC.W $0DB7,Y                        ;9E83EF|79B70D  |;
                       SEC                                  ;9E83F2|38      |;
                       SBC.B $B1                            ;9E83F3|E5B1    |;
                       CMP.W #$FFEB                         ;9E83F5|C9EBFF  |;
                       BMI CODE_9E8430                      ;9E83F8|3036    |;
                       CMP.W #$0015                         ;9E83FA|C91500  |;
                       BPL CODE_9E8430                      ;9E83FD|1031    |;
                       INC.W $0D2D                          ;9E83FF|EE2D0D  |;
                       LDA.W $0D55,X                        ;9E8402|BD550D  |;
                       SEC                                  ;9E8405|38      |;
                       SBC.W $0D55,Y                        ;9E8406|F9550D  |;
                       STA.B $A5                            ;9E8409|85A5    |;
                       LDA.W $0DB7,X                        ;9E840B|BDB70D  |;
                       SEC                                  ;9E840E|38      |;
                       SBC.W $0DB7,Y                        ;9E840F|F9B70D  |;
                       STA.B $A9                            ;9E8412|85A9    |;
                       JSL.L CODE_9BB445                    ;9E8414|2245B49B|;
                       LDA.W $1163,X                        ;9E8418|BD6311  |;
                       EOR.W #$0004                         ;9E841B|490400  |;
                       CMP.B $A5                            ;9E841E|C5A5    |;
                       BNE CODE_9E8430                      ;9E8420|D00E    |;
                       LDA.W $0794                          ;9E8422|AD9407  |;
                       AND.W #$0001                         ;9E8425|290100  |;
                       CLC                                  ;9E8428|18      |;
                       ADC.B $A5                            ;9E8429|65A5    |;
                       AND.W #$0007                         ;9E842B|290700  |;
                       STA.B $A5                            ;9E842E|85A5    |;
 
          CODE_9E8430:
                       INC.B $89                            ;9E8430|E689    |;
                       INC.B $89                            ;9E8432|E689    |;
                       DEC.B $B5                            ;9E8434|C6B5    |;
                       BMI CODE_9E843B                      ;9E8436|3003    |;
                       JMP.W CODE_9E83BF                    ;9E8438|4CBF83  |;
 
          CODE_9E843B:
                       RTL                                  ;9E843B|6B      |;
                       CPX.W $0AD9                          ;9E843C|ECD90A  |;
                       BEQ CODE_9E845A                      ;9E843F|F019    |;
                       LDY.W $0AD9                          ;9E8441|ACD90A  |;
                       BMI CODE_9E8462                      ;9E8444|301C    |;
                       LDA.W $1503,X                        ;9E8446|BD0315  |;
                       CMP.W $1503,Y                        ;9E8449|D90315  |;
                       BEQ CODE_9E8462                      ;9E844C|F014    |;
                       LDA.W #$0005                         ;9E844E|A90500  |;
                       STA.B $A5                            ;9E8451|85A5    |;
                       JMP.W CODE_9E8C18                    ;9E8453|4C188C  |;
 
       UNREACH_9E8456:
                       db $6B                               ;9E8456|        |;
 
          CODE_9E8457:
                       JMP.W CODE_9E8BD7                    ;9E8457|4CD78B  |;
 
          CODE_9E845A:
                       LDA.W #$0011                         ;9E845A|A91100  |;
                       STA.B $A5                            ;9E845D|85A5    |;
                       JMP.W CODE_9E8C0E                    ;9E845F|4C0E8C  |;
 
          CODE_9E8462:
                       LDA.W $15D6                          ;9E8462|ADD615  |;
                       BNE CODE_9E8457                      ;9E8465|D0F0    |;
                       JSL.L CODE_9FDC4C                    ;9E8467|224CDC9F|;
                       LDA.W $19D4,X                        ;9E846B|BDD419  |;
                       BPL UNREACH_9E8456                   ;9E846E|10E6    |;
                       LDA.W $1283,X                        ;9E8470|BD8312  |;
                       BIT.W #$0002                         ;9E8473|890200  |;
                       BEQ CODE_9E8490                      ;9E8476|F018    |;
                       AND.W #$FFFD                         ;9E8478|29FDFF  |;
                       STA.W $1283,X                        ;9E847B|9D8312  |;
                       LDA.W #$FFFF                         ;9E847E|A9FFFF  |;
                       STA.W $1083,X                        ;9E8481|9D8310  |;
                       STZ.W $1003,X                        ;9E8484|9E0310  |;
                       STZ.W $1023,X                        ;9E8487|9E2310  |;
                       LDA.W #$0008                         ;9E848A|A90800  |;
                       STA.W $10A3,X                        ;9E848D|9DA310  |;
 
          CODE_9E8490:
                       LDA.W $1003,X                        ;9E8490|BD0310  |;
                       SEC                                  ;9E8493|38      |;
                       SBC.B $C1                            ;9E8494|E5C1    |;
                       STA.W $1003,X                        ;9E8496|9D0310  |;
                       BMI CODE_9E849E                      ;9E8499|3003    |;
                       JMP.W CODE_9E852D                    ;9E849B|4C2D85  |;
 
          CODE_9E849E:
                       CLC                                  ;9E849E|18      |;
                       ADC.W $1343,X                        ;9E849F|7D4313  |;
                       BPL CODE_9E84A7                      ;9E84A2|1003    |;
                       db $A9,$00,$00                       ;9E84A4|        |;
 
          CODE_9E84A7:
                       STA.W $1003,X                        ;9E84A7|9D0310  |;
                       LDA.W $0DD3                          ;9E84AA|ADD30D  |;
                       STA.B $A5                            ;9E84AD|85A5    |;
                       LDA.W $14C3,X                        ;9E84AF|BDC314  |;
                       BNE CODE_9E84BC                      ;9E84B2|D008    |;
                       LDA.W #$0000                         ;9E84B4|A90000  |;
                       SEC                                  ;9E84B7|38      |;
                       SBC.B $A5                            ;9E84B8|E5A5    |;
                       STA.B $A5                            ;9E84BA|85A5    |;
 
          CODE_9E84BC:
                       STZ.B $AD                            ;9E84BC|64AD    |;
                       LDA.B $A5                            ;9E84BE|A5A5    |;
                       SEC                                  ;9E84C0|38      |;
                       SBC.W #$FFA8                         ;9E84C1|E9A8FF  |;
                       BMI CODE_9E84EC                      ;9E84C4|3026    |;
                       LDA.W #$0008                         ;9E84C6|A90800  |;
                       STA.B $AD                            ;9E84C9|85AD    |;
                       LDA.B $A5                            ;9E84CB|A5A5    |;
                       SEC                                  ;9E84CD|38      |;
                       SBC.W #$0058                         ;9E84CE|E95800  |;
                       BMI CODE_9E84EC                      ;9E84D1|3019    |;
                       LDY.B zpCurntTeamLoopVal             ;9E84D3|A491    |;
                       LDA.W $17DE,Y                        ;9E84D5|B9DE17  |;
                       BIT.W #$0010                         ;9E84D8|891000  |;
                       BNE CODE_9E84EC                      ;9E84DB|D00F    |;
                       ASL.B $AD                            ;9E84DD|06AD    |;
                       LDA.B $A5                            ;9E84DF|A5A5    |;
                       SEC                                  ;9E84E1|38      |;
                       SBC.W #$0108                         ;9E84E2|E90801  |;
                       BMI CODE_9E84EC                      ;9E84E5|3005    |;
                       LDA.W #$0018                         ;9E84E7|A91800  |;
                       STA.B $AD                            ;9E84EA|85AD    |;
 
          CODE_9E84EC:
                       LDA.B $AD                            ;9E84EC|A5AD    |;
                       CMP.W $1083,X                        ;9E84EE|DD8310  |;
                       BNE CODE_9E84FB                      ;9E84F1|D008    |;
                       LDA.W $0794                          ;9E84F3|AD9407  |;
                       CMP.W #$0200                         ;9E84F6|C90002  |;
                       BCS CODE_9E852D                      ;9E84F9|B032    |;
 
          CODE_9E84FB:
                       LDA.B $AD                            ;9E84FB|A5AD    |;
                       STA.W $1083,X                        ;9E84FD|9D8310  |;
                       TAY                                  ;9E8500|A8      |;
                       LDA.W #$009E                         ;9E8501|A99E00  |;
                       STA.B $8B                            ;9E8504|858B    |;
                       LDA.W #$8553                         ;9E8506|A95385  |;
                       STA.B $89                            ;9E8509|8589    |;
                       INY                                  ;9E850B|C8      |;
                       INY                                  ;9E850C|C8      |;
                       LDA.B [$89],Y                        ;9E850D|B789    |;
                       DEY                                  ;9E850F|88      |;
                       DEY                                  ;9E8510|88      |;
                       JSL.L CODE_9BB3A4                    ;9E8511|22A4B39B|;
                       ADC.B [$89],Y                        ;9E8515|7789    |;
                       STA.W $1043,X                        ;9E8517|9D4310  |;
                       TYA                                  ;9E851A|98      |;
                       CLC                                  ;9E851B|18      |;
                       ADC.W #$0006                         ;9E851C|690600  |;
                       TAY                                  ;9E851F|A8      |;
                       LDA.B [$89],Y                        ;9E8520|B789    |;
                       DEY                                  ;9E8522|88      |;
                       DEY                                  ;9E8523|88      |;
                       JSL.L CODE_9BB3A4                    ;9E8524|22A4B39B|;
                       ADC.B [$89],Y                        ;9E8528|7789    |;
                       STA.W $1063,X                        ;9E852A|9D6310  |;
 
          CODE_9E852D:
                       LDA.W $1043,X                        ;9E852D|BD4310  |;
                       STA.B $A5                            ;9E8530|85A5    |;
                       LDA.W $1063,X                        ;9E8532|BD6310  |;
                       STA.B $A9                            ;9E8535|85A9    |;
                       LDA.W $14C3,X                        ;9E8537|BDC314  |;
                       BNE CODE_9E8544                      ;9E853A|D008    |;
                       LDA.W #$0000                         ;9E853C|A90000  |;
                       SEC                                  ;9E853F|38      |;
                       SBC.B $A9                            ;9E8540|E5A9    |;
                       STA.B $A9                            ;9E8542|85A9    |;
 
          CODE_9E8544:
                       LDA.W #$009E                         ;9E8544|A99E00  |;
                       STA.B $8B                            ;9E8547|858B    |;
                       LDA.W #$8904                         ;9E8549|A90489  |;
                       STA.B $89                            ;9E854C|8589    |;
                       JML.L CODE_9EA5A4                    ;9E854E|5CA4A59E|;
                       db $6B                               ;9E8552|        |;
                       db $00,$00,$3C,$00,$BA,$FF,$0A,$00   ;9E8553|        |;
                       db $00,$00,$3C,$00,$3C,$00,$0A,$00   ;9E855B|        |;
                       db $00,$00,$28,$00,$AA,$00,$1E,$00   ;9E8563|        |;
                       db $00,$00,$50,$00,$AA,$00,$14,$00   ;9E856B|        |;
                       LDY.W $0AD9                          ;9E8573|ACD90A  |;
                       BMI CODE_9E858C                      ;9E8576|3014    |;
                       LDA.W $1503,X                        ;9E8578|BD0315  |;
                       CMP.W $1503,Y                        ;9E857B|D90315  |;
                       BNE CODE_9E858C                      ;9E857E|D00C    |;
                       LDA.W #$0006                         ;9E8580|A90600  |;
                       STA.B $A5                            ;9E8583|85A5    |;
                       JMP.W CODE_9E8C18                    ;9E8585|4C188C  |;
 
          CODE_9E8588:
                       RTL                                  ;9E8588|6B      |;
 
          CODE_9E8589:
                       JMP.W CODE_9E8BD7                    ;9E8589|4CD78B  |;
 
          CODE_9E858C:
                       LDA.W $15D6                          ;9E858C|ADD615  |;
                       BNE CODE_9E8589                      ;9E858F|D0F8    |;
                       JSL.L CODE_9FDC4C                    ;9E8591|224CDC9F|;
                       LDA.W $19D4,X                        ;9E8595|BDD419  |;
                       BPL CODE_9E8588                      ;9E8598|10EE    |;
                       LDA.W $1283,X                        ;9E859A|BD8312  |;
                       BIT.W #$0002                         ;9E859D|890200  |;
                       BEQ CODE_9E85B4                      ;9E85A0|F012    |;
                       AND.W #$FFFD                         ;9E85A2|29FDFF  |;
                       STA.W $1283,X                        ;9E85A5|9D8312  |;
                       STZ.W $1003,X                        ;9E85A8|9E0310  |;
                       STZ.W $1023,X                        ;9E85AB|9E2310  |;
                       LDA.W #$0008                         ;9E85AE|A90800  |;
                       STA.W $10A3,X                        ;9E85B1|9DA310  |;
 
          CODE_9E85B4:
                       LDA.W $1003,X                        ;9E85B4|BD0310  |;
                       SEC                                  ;9E85B7|38      |;
                       SBC.B $C1                            ;9E85B8|E5C1    |;
                       STA.W $1003,X                        ;9E85BA|9D0310  |;
                       BPL CODE_9E85C5                      ;9E85BD|1006    |;
                       LDA.W $1343,X                        ;9E85BF|BD4313  |;
                       STA.W $1003,X                        ;9E85C2|9D0310  |;
 
          CODE_9E85C5:
                       LDA.W $0D71                          ;9E85C5|AD710D  |;
                       PHA                                  ;9E85C8|48      |;
                       ASL A                                ;9E85C9|0A      |;
                       PLA                                  ;9E85CA|68      |;
                       ROR A                                ;9E85CB|6A      |;
                       STA.B $A5                            ;9E85CC|85A5    |;
                       LDA.W #$0080                         ;9E85CE|A98000  |;
                       STA.B $A9                            ;9E85D1|85A9    |;
                       LDA.W $14C3,X                        ;9E85D3|BDC314  |;
                       BEQ CODE_9E85F6                      ;9E85D6|F01E    |;
                       LDA.W #$FF80                         ;9E85D8|A980FF  |;
                       STA.B $A9                            ;9E85DB|85A9    |;
                       LDA.W #$FFA8                         ;9E85DD|A9A8FF  |;
                       SEC                                  ;9E85E0|38      |;
                       SBC.W $0DD3                          ;9E85E1|EDD30D  |;
                       BPL CODE_9E860B                      ;9E85E4|1025    |;
                       LDA.W #$FF80                         ;9E85E6|A980FF  |;
                       CLC                                  ;9E85E9|18      |;
                       ADC.W $0DD3                          ;9E85EA|6DD30D  |;
                       PHA                                  ;9E85ED|48      |;
                       ASL A                                ;9E85EE|0A      |;
                       PLA                                  ;9E85EF|68      |;
                       ROR A                                ;9E85F0|6A      |;
                       STA.B $A9                            ;9E85F1|85A9    |;
                       BRA CODE_9E860B                      ;9E85F3|8016    |;
                       db $6B                               ;9E85F5|        |;
 
          CODE_9E85F6:
                       LDA.W #$0058                         ;9E85F6|A95800  |;
                       SEC                                  ;9E85F9|38      |;
                       SBC.W $0DD3                          ;9E85FA|EDD30D  |;
                       BMI CODE_9E860B                      ;9E85FD|300C    |;
                       LDA.B $A9                            ;9E85FF|A5A9    |;
                       CLC                                  ;9E8601|18      |;
                       ADC.W $0DD3                          ;9E8602|6DD30D  |;
                       PHA                                  ;9E8605|48      |;
                       ASL A                                ;9E8606|0A      |;
                       PLA                                  ;9E8607|68      |;
                       ROR A                                ;9E8608|6A      |;
                       STA.B $A9                            ;9E8609|85A9    |;
 
          CODE_9E860B:
                       LDA.W #$009E                         ;9E860B|A99E00  |;
                       STA.B $8B                            ;9E860E|858B    |;
                       LDA.W #$D0FC                         ;9E8610|A9FCD0  |;
                       STA.B $89                            ;9E8613|8589    |;
                       JMP.W CODE_9EA5A4                    ;9E8615|4CA4A5  |;
                       LDY.W $0AD9                          ;9E8618|ACD90A  |;
                       BMI CODE_9E8631                      ;9E861B|3014    |;
                       LDA.W $1503,X                        ;9E861D|BD0315  |;
                       CMP.W $1503,Y                        ;9E8620|D90315  |;
                       BNE CODE_9E8631                      ;9E8623|D00C    |;
                       LDA.W #$0001                         ;9E8625|A90100  |;
                       STA.B $A5                            ;9E8628|85A5    |;
                       JMP.W CODE_9E8C18                    ;9E862A|4C188C  |;
 
          CODE_9E862D:
                       RTL                                  ;9E862D|6B      |;
 
          CODE_9E862E:
                       JMP.W CODE_9E8BD7                    ;9E862E|4CD78B  |;
 
          CODE_9E8631:
                       LDA.W $15D6                          ;9E8631|ADD615  |;
                       BNE CODE_9E862E                      ;9E8634|D0F8    |;
                       JSL.L CODE_9FDC4C                    ;9E8636|224CDC9F|;
                       LDA.W $19D4,X                        ;9E863A|BDD419  |;
                       BPL CODE_9E862D                      ;9E863D|10EE    |;
                       LDA.W $1283,X                        ;9E863F|BD8312  |;
                       BIT.W #$0002                         ;9E8642|890200  |;
                       BEQ CODE_9E8659                      ;9E8645|F012    |;
                       AND.W #$FFFD                         ;9E8647|29FDFF  |;
                       STA.W $1283,X                        ;9E864A|9D8312  |;
                       STZ.W $1003,X                        ;9E864D|9E0310  |;
                       STZ.W $1023,X                        ;9E8650|9E2310  |;
                       LDA.W #$0008                         ;9E8653|A90800  |;
                       STA.W $10A3,X                        ;9E8656|9DA310  |;
 
          CODE_9E8659:
                       LDA.W $1003,X                        ;9E8659|BD0310  |;
                       SEC                                  ;9E865C|38      |;
                       SBC.B $C1                            ;9E865D|E5C1    |;
                       STA.W $1003,X                        ;9E865F|9D0310  |;
                       BMI CODE_9E8667                      ;9E8662|3003    |;
                       JMP.W CODE_9E87E9                    ;9E8664|4CE987  |;
 
          CODE_9E8667:
                       CLC                                  ;9E8667|18      |;
                       ADC.W $1343,X                        ;9E8668|7D4313  |;
                       BPL CODE_9E8670                      ;9E866B|1003    |;
                       db $A9,$00,$00                       ;9E866D|        |;
 
          CODE_9E8670:
                       STA.W $1003,X                        ;9E8670|9D0310  |;
                       LDA.W $0DD3                          ;9E8673|ADD30D  |;
                       STA.B $A9                            ;9E8676|85A9    |;
                       LDA.W $0EFF                          ;9E8678|ADFF0E  |;
                       LSR A                                ;9E867B|4A      |;
                       LSR A                                ;9E867C|4A      |;
                       LSR A                                ;9E867D|4A      |;
                       LSR A                                ;9E867E|4A      |;
                       LSR A                                ;9E867F|4A      |;
                       LSR A                                ;9E8680|4A      |;
                       BIT.W #$0200                         ;9E8681|890002  |;
                       BEQ CODE_9E8689                      ;9E8684|F003    |;
                       ORA.W #$FC00                         ;9E8686|0900FC  |;
 
          CODE_9E8689:
                       STA.B $B1                            ;9E8689|85B1    |;
                       LDA.W $14C3,X                        ;9E868B|BDC314  |;
                       BNE CODE_9E86A0                      ;9E868E|D010    |;
                       LDA.W #$0000                         ;9E8690|A90000  |;
                       SEC                                  ;9E8693|38      |;
                       SBC.B $A9                            ;9E8694|E5A9    |;
                       STA.B $A9                            ;9E8696|85A9    |;
                       LDA.W #$0000                         ;9E8698|A90000  |;
                       SEC                                  ;9E869B|38      |;
                       SBC.B $B1                            ;9E869C|E5B1    |;
                       STA.B $B1                            ;9E869E|85B1    |;
 
          CODE_9E86A0:
                       LDA.B $B1                            ;9E86A0|A5B1    |;
                       BPL CODE_9E86A6                      ;9E86A2|1002    |;
                       STZ.B $B1                            ;9E86A4|64B1    |;
 
          CODE_9E86A6:
                       LDA.B $B1                            ;9E86A6|A5B1    |;
                       CLC                                  ;9E86A8|18      |;
                       ADC.B $A9                            ;9E86A9|65A9    |;
                       STA.B $B1                            ;9E86AB|85B1    |;
                       SEC                                  ;9E86AD|38      |;
                       SBC.W #$0058                         ;9E86AE|E95800  |;
                       BMI CODE_9E86E1                      ;9E86B1|302E    |;
                       LDY.B zpCurntTeamLoopVal             ;9E86B3|A491    |;
                       LDA.W $17DE,Y                        ;9E86B5|B9DE17  |;
                       BIT.W #$0010                         ;9E86B8|891000  |;
                       BNE CODE_9E86E1                      ;9E86BB|D024    |;
                       LDA.W $0AD9                          ;9E86BD|ADD90A  |;
                       BMI CODE_9E86C3                      ;9E86C0|3001    |;
                       LSR A                                ;9E86C2|4A      |;
 
          CODE_9E86C3:
                       STA.B $A9                            ;9E86C3|85A9    |;
                       BMI CODE_9E86E1                      ;9E86C5|301A    |;
                       JSL.L CODE_9E8272                    ;9E86C7|2272829E|;
                       BEQ CODE_9E86E1                      ;9E86CB|F014    |;
                       LDA.B $A9                            ;9E86CD|A5A9    |;
                       SEC                                  ;9E86CF|38      |;
                       SBC.W #$0006                         ;9E86D0|E90600  |;
                       STA.B $A9                            ;9E86D3|85A9    |;
                       TXA                                  ;9E86D5|8A      |;
                       LSR A                                ;9E86D6|4A      |;
                       SEC                                  ;9E86D7|38      |;
                       SBC.W #$0006                         ;9E86D8|E90600  |;
                       STA.B $AD                            ;9E86DB|85AD    |;
                       EOR.B $A9                            ;9E86DD|45A9    |;
                       STA.B $A9                            ;9E86DF|85A9    |;
 
          CODE_9E86E1:
                       LDA.W #$0041                         ;9E86E1|A94100  |;
                       STA.W $1043,X                        ;9E86E4|9D4310  |;
                       LDA.W $0F43,X                        ;9E86E7|BD430F  |;
                       CMP.W #$0002                         ;9E86EA|C90200  |;
                       BEQ CODE_9E86F5                      ;9E86ED|F006    |;
                       LDA.W #$FFBF                         ;9E86EF|A9BFFF  |;
                       STA.W $1043,X                        ;9E86F2|9D4310  |;
 
          CODE_9E86F5:
                       LDY.W #$0000                         ;9E86F5|A00000  |;
                       CPX.W #$000C                         ;9E86F8|E00C00  |;
                       BCS CODE_9E8700                      ;9E86FB|B003    |;
                       LDY.W #$000C                         ;9E86FD|A00C00  |;
 
          CODE_9E8700:
                       LDA.W #$0006                         ;9E8700|A90600  |;
                       STA.B $AD                            ;9E8703|85AD    |;
                       LDA.W #$FC18                         ;9E8705|A918FC  |;
                       STA.B $A5                            ;9E8708|85A5    |;
                       LDA.W $14C3,X                        ;9E870A|BDC314  |;
                       BEQ CODE_9E877B                      ;9E870D|F06C    |;
                       LDA.W #$03E8                         ;9E870F|A9E803  |;
                       STA.B $A5                            ;9E8712|85A5    |;
 
          CODE_9E8714:
                       STY.B $89                            ;9E8714|8489    |;
                       LDA.W $1283,Y                        ;9E8716|B98312  |;
                       BIT.W #$1000                         ;9E8719|890010  |;
                       BNE CODE_9E8747                      ;9E871C|D029    |;
                       LDA.W $0F43,Y                        ;9E871E|B9430F  |;
                       BMI CODE_9E8747                      ;9E8721|3024    |;
                       LDA.W $0EE3,Y                        ;9E8723|B9E30E  |;
                       BMI CODE_9E872B                      ;9E8726|3003    |;
                       LDA.W #$0000                         ;9E8728|A90000  |;
 
          CODE_9E872B:
                       LSR A                                ;9E872B|4A      |;
                       LSR A                                ;9E872C|4A      |;
                       LSR A                                ;9E872D|4A      |;
                       LSR A                                ;9E872E|4A      |;
                       LSR A                                ;9E872F|4A      |;
                       BIT.W #$0400                         ;9E8730|890004  |;
                       BEQ CODE_9E8738                      ;9E8733|F003    |;
                       ORA.W #$F800                         ;9E8735|0900F8  |;
 
          CODE_9E8738:
                       CLC                                  ;9E8738|18      |;
                       ADC.W $0DB7,Y                        ;9E8739|79B70D  |;
                       STA.B $A9                            ;9E873C|85A9    |;
                       SEC                                  ;9E873E|38      |;
                       SBC.B $A5                            ;9E873F|E5A5    |;
                       BPL CODE_9E8747                      ;9E8741|1004    |;
                       LDA.B $A9                            ;9E8743|A5A9    |;
                       STA.B $A5                            ;9E8745|85A5    |;
 
          CODE_9E8747:
                       LDY.B $89                            ;9E8747|A489    |;
                       INY                                  ;9E8749|C8      |;
                       INY                                  ;9E874A|C8      |;
                       DEC.B $AD                            ;9E874B|C6AD    |;
                       BNE CODE_9E8714                      ;9E874D|D0C5    |;
                       LDA.B $A5                            ;9E874F|A5A5    |;
                       SEC                                  ;9E8751|38      |;
                       SBC.W #$0028                         ;9E8752|E92800  |;
                       STA.B $A5                            ;9E8755|85A5    |;
                       SEC                                  ;9E8757|38      |;
                       SBC.W #$FF42                         ;9E8758|E942FF  |;
                       BPL CODE_9E8762                      ;9E875B|1005    |;
                       LDA.W #$FF24                         ;9E875D|A924FF  |;
                       STA.B $A5                            ;9E8760|85A5    |;
 
          CODE_9E8762:
                       LDA.B $A5                            ;9E8762|A5A5    |;
                       STA.W $1063,X                        ;9E8764|9D6310  |;
                       LDA.W $0D71                          ;9E8767|AD710D  |;
                       STA.B $A5                            ;9E876A|85A5    |;
                       LDA.W $1043,X                        ;9E876C|BD4310  |;
                       EOR.B $A5                            ;9E876F|45A5    |;
                       STA.B $A9                            ;9E8771|85A9    |;
                       BPL CODE_9E87E9                      ;9E8773|1074    |;
                       STZ.W $1043,X                        ;9E8775|9E4310  |;
                       BRA CODE_9E87E9                      ;9E8778|806F    |;
                       db $6B                               ;9E877A|        |;
 
          CODE_9E877B:
                       STY.B $89                            ;9E877B|8489    |;
                       LDA.W $1283,Y                        ;9E877D|B98312  |;
                       BIT.W #$1000                         ;9E8780|890010  |;
                       BNE CODE_9E87AE                      ;9E8783|D029    |;
                       LDA.W $0F43,Y                        ;9E8785|B9430F  |;
                       BMI CODE_9E87AE                      ;9E8788|3024    |;
                       LDA.W $0EE3,Y                        ;9E878A|B9E30E  |;
                       BPL CODE_9E8792                      ;9E878D|1003    |;
                       LDA.W #$0000                         ;9E878F|A90000  |;
 
          CODE_9E8792:
                       LSR A                                ;9E8792|4A      |;
                       LSR A                                ;9E8793|4A      |;
                       LSR A                                ;9E8794|4A      |;
                       LSR A                                ;9E8795|4A      |;
                       LSR A                                ;9E8796|4A      |;
                       BIT.W #$0400                         ;9E8797|890004  |;
                       BEQ CODE_9E879F                      ;9E879A|F003    |;
                       db $09,$00,$F8                       ;9E879C|        |;
 
          CODE_9E879F:
                       CLC                                  ;9E879F|18      |;
                       ADC.W $0DB7,Y                        ;9E87A0|79B70D  |;
                       STA.B $A9                            ;9E87A3|85A9    |;
                       SEC                                  ;9E87A5|38      |;
                       SBC.B $A5                            ;9E87A6|E5A5    |;
                       BMI CODE_9E87AE                      ;9E87A8|3004    |;
                       LDA.B $A9                            ;9E87AA|A5A9    |;
                       STA.B $A5                            ;9E87AC|85A5    |;
 
          CODE_9E87AE:
                       LDY.B $89                            ;9E87AE|A489    |;
                       INY                                  ;9E87B0|C8      |;
                       INY                                  ;9E87B1|C8      |;
                       DEC.B $AD                            ;9E87B2|C6AD    |;
                       BNE CODE_9E877B                      ;9E87B4|D0C5    |;
                       LDA.B $A5                            ;9E87B6|A5A5    |;
                       CLC                                  ;9E87B8|18      |;
                       ADC.W #$0028                         ;9E87B9|692800  |;
                       STA.B $A5                            ;9E87BC|85A5    |;
                       SEC                                  ;9E87BE|38      |;
                       SBC.W #$00BE                         ;9E87BF|E9BE00  |;
                       BMI CODE_9E87C9                      ;9E87C2|3005    |;
                       LDA.W #$00DC                         ;9E87C4|A9DC00  |;
                       STA.B $A5                            ;9E87C7|85A5    |;
 
          CODE_9E87C9:
                       LDA.B $A5                            ;9E87C9|A5A5    |;
                       STA.W $1063,X                        ;9E87CB|9D6310  |;
                       LDA.W #$0000                         ;9E87CE|A90000  |;
                       SEC                                  ;9E87D1|38      |;
                       SBC.W $1043,X                        ;9E87D2|FD4310  |;
                       STA.W $1043,X                        ;9E87D5|9D4310  |;
                       LDA.W $0D71                          ;9E87D8|AD710D  |;
                       STA.B $A5                            ;9E87DB|85A5    |;
                       LDA.W $1043,X                        ;9E87DD|BD4310  |;
                       EOR.B $A5                            ;9E87E0|45A5    |;
                       STA.B $A9                            ;9E87E2|85A9    |;
                       BPL CODE_9E87E9                      ;9E87E4|1003    |;
                       STZ.W $1043,X                        ;9E87E6|9E4310  |;
 
          CODE_9E87E9:
                       LDA.W $1043,X                        ;9E87E9|BD4310  |;
                       STA.B $A5                            ;9E87EC|85A5    |;
                       LDA.W $1063,X                        ;9E87EE|BD6310  |;
                       STA.B $A9                            ;9E87F1|85A9    |;
                       LDA.W #$009E                         ;9E87F3|A99E00  |;
                       STA.B $8B                            ;9E87F6|858B    |;
                       LDA.W #$D0FC                         ;9E87F8|A9FCD0  |;
                       STA.B $89                            ;9E87FB|8589    |;
                       JSL.L CODE_9EA5A4                    ;9E87FD|22A4A59E|;
                       JMP.W CODE_9EA164                    ;9E8801|4C64A1  |;
                       CPX.W $0AD9                          ;9E8804|ECD90A  |;
                       BEQ CODE_9E8822                      ;9E8807|F019    |;
                       LDY.W $0AD9                          ;9E8809|ACD90A  |;
                       BMI CODE_9E882A                      ;9E880C|301C    |;
                       LDA.W $1503,X                        ;9E880E|BD0315  |;
                       CMP.W $1503,Y                        ;9E8811|D90315  |;
                       BEQ CODE_9E882A                      ;9E8814|F014    |;
                       LDA.W #$0002                         ;9E8816|A90200  |;
                       STA.B $A5                            ;9E8819|85A5    |;
                       JMP.W CODE_9E8C18                    ;9E881B|4C188C  |;
 
       UNREACH_9E881E:
                       db $6B,$4C,$D7,$8B                   ;9E881E|        |;
 
          CODE_9E8822:
                       LDA.W #$0011                         ;9E8822|A91100  |;
                       STA.B $A5                            ;9E8825|85A5    |;
                       JMP.W CODE_9E8C0E                    ;9E8827|4C0E8C  |;
 
          CODE_9E882A:
                       LDA.W $15D6                          ;9E882A|ADD615  |;
                       BEQ CODE_9E8832                      ;9E882D|F003    |;
                       JMP.W CODE_9E8BD7                    ;9E882F|4CD78B  |;
 
          CODE_9E8832:
                       JSL.L CODE_9FDC4C                    ;9E8832|224CDC9F|;
                       LDA.W $19D4,X                        ;9E8836|BDD419  |;
                       BPL UNREACH_9E881E                   ;9E8839|10E3    |;
                       LDA.W $1283,X                        ;9E883B|BD8312  |;
                       BIT.W #$0002                         ;9E883E|890200  |;
                       BEQ CODE_9E8855                      ;9E8841|F012    |;
                       AND.W #$FFFD                         ;9E8843|29FDFF  |;
                       STA.W $1283,X                        ;9E8846|9D8312  |;
                       STZ.W $1003,X                        ;9E8849|9E0310  |;
                       STZ.W $1023,X                        ;9E884C|9E2310  |;
                       LDA.W #$0008                         ;9E884F|A90800  |;
                       STA.W $10A3,X                        ;9E8852|9DA310  |;
 
          CODE_9E8855:
                       LDA.W $1003,X                        ;9E8855|BD0310  |;
                       SEC                                  ;9E8858|38      |;
                       SBC.B $C1                            ;9E8859|E5C1    |;
                       STA.W $1003,X                        ;9E885B|9D0310  |;
                       BPL CODE_9E886C                      ;9E885E|100C    |;
                       CLC                                  ;9E8860|18      |;
                       ADC.W $1323,X                        ;9E8861|7D2313  |;
                       BPL CODE_9E8869                      ;9E8864|1003    |;
                       db $A9,$00,$00                       ;9E8866|        |;
 
          CODE_9E8869:
                       STA.W $1003,X                        ;9E8869|9D0310  |;
 
          CODE_9E886C:
                       LDA.W #$009E                         ;9E886C|A99E00  |;
                       STA.B $8B                            ;9E886F|858B    |;
                       LDA.W #$8904                         ;9E8871|A90489  |;
                       STA.B $89                            ;9E8874|8589    |;
                       LDY.W #$0050                         ;9E8876|A05000  |;
                       LDA.W $0F43,X                        ;9E8879|BD430F  |;
                       CMP.W #$0002                         ;9E887C|C90200  |;
                       BEQ CODE_9E8884                      ;9E887F|F003    |;
                       LDY.W #$FFB0                         ;9E8881|A0B0FF  |;
 
          CODE_9E8884:
                       LDA.W $14C3,X                        ;9E8884|BDC314  |;
                       BNE CODE_9E888F                      ;9E8887|D006    |;
                       TYA                                  ;9E8889|98      |;
                       EOR.W #$FFFF                         ;9E888A|49FFFF  |;
                       INC A                                ;9E888D|1A      |;
                       TAY                                  ;9E888E|A8      |;
 
          CODE_9E888F:
                       STY.B $A5                            ;9E888F|84A5    |;
                       LDA.W $0D71                          ;9E8891|AD710D  |;
                       EOR.B $A5                            ;9E8894|45A5    |;
                       BMI CODE_9E889E                      ;9E8896|3006    |;
                       LDA.W $0D71                          ;9E8898|AD710D  |;
                       BRA CODE_9E88A8                      ;9E889B|800B    |;
                       db $6B                               ;9E889D|        |;
 
          CODE_9E889E:
                       LDA.W $0D71                          ;9E889E|AD710D  |;
                       PHA                                  ;9E88A1|48      |;
                       ASL A                                ;9E88A2|0A      |;
                       PLA                                  ;9E88A3|68      |;
                       ROR A                                ;9E88A4|6A      |;
                       CLC                                  ;9E88A5|18      |;
                       ADC.B $A5                            ;9E88A6|65A5    |;
 
          CODE_9E88A8:
                       STA.B $A5                            ;9E88A8|85A5    |;
                       LDY.B zpCurntTeamLoopVal             ;9E88AA|A491    |;
                       LDA.W $17DE,Y                        ;9E88AC|B9DE17  |;
                       BIT.W #$0010                         ;9E88AF|891000  |;
                       BNE UNREACH_9E88F5                   ;9E88B2|D041    |;
                       LDA.W $0DD3                          ;9E88B4|ADD30D  |;
                       STA.B $AD                            ;9E88B7|85AD    |;
                       LDA.W $14C3,X                        ;9E88B9|BDC314  |;
                       BNE CODE_9E88C6                      ;9E88BC|D008    |;
                       LDA.W #$0000                         ;9E88BE|A90000  |;
                       SEC                                  ;9E88C1|38      |;
                       SBC.B $AD                            ;9E88C2|E5AD    |;
                       STA.B $AD                            ;9E88C4|85AD    |;
 
          CODE_9E88C6:
                       LDA.B $AD                            ;9E88C6|A5AD    |;
                       CMP.W #$FFA8                         ;9E88C8|C9A8FF  |;
                       BMI CODE_9E88E0                      ;9E88CB|3013    |;
                       CMP.W #$0058                         ;9E88CD|C95800  |;
                       BMI CODE_9E88D9                      ;9E88D0|3007    |;
                       LDA.W #$0062                         ;9E88D2|A96200  |;
                       STA.B $A9                            ;9E88D5|85A9    |;
                       BRA CODE_9E88E5                      ;9E88D7|800C    |;
 
          CODE_9E88D9:
                       LDA.W #$FFB2                         ;9E88D9|A9B2FF  |;
                       STA.B $A9                            ;9E88DC|85A9    |;
                       BRA CODE_9E88E5                      ;9E88DE|8005    |;
 
          CODE_9E88E0:
                       LDA.W #$FF28                         ;9E88E0|A928FF  |;
                       STA.B $A9                            ;9E88E3|85A9    |;
 
          CODE_9E88E5:
                       LDA.W $14C3,X                        ;9E88E5|BDC314  |;
                       BNE CODE_9E88F2                      ;9E88E8|D008    |;
                       LDA.W #$0000                         ;9E88EA|A90000  |;
                       SEC                                  ;9E88ED|38      |;
                       SBC.B $A9                            ;9E88EE|E5A9    |;
                       STA.B $A9                            ;9E88F0|85A9    |;
 
          CODE_9E88F2:
                       JMP.W CODE_9EA5A4                    ;9E88F2|4CA4A5  |;
 
       UNREACH_9E88F5:
                       db $A0,$62,$00,$BD,$C3,$14,$F0,$03   ;9E88F5|        |;
                       db $A0,$9E,$FF,$84,$A9,$80,$EE       ;9E88FD|        |;
                       LDA.W $0AD9                          ;9E8904|ADD90A  |;
                       BMI CODE_9E8967                      ;9E8907|305E    |;
                       LDA.W $0EC4,X                        ;9E8909|BDC40E  |;
                       SEC                                  ;9E890C|38      |;
                       SBC.W $0EE0                          ;9E890D|EDE00E  |;
                       AND.W #$00FF                         ;9E8910|29FF00  |;
                       BIT.W #$0080                         ;9E8913|898000  |;
                       BEQ CODE_9E891B                      ;9E8916|F003    |;
                       ORA.W #$FF00                         ;9E8918|0900FF  |;
 
          CODE_9E891B:
                       CLC                                  ;9E891B|18      |;
                       ADC.W $0D55,X                        ;9E891C|7D550D  |;
                       SEC                                  ;9E891F|38      |;
                       SBC.W $0D71                          ;9E8920|ED710D  |;
                       CMP.W #$FFD7                         ;9E8923|C9D7FF  |;
                       BMI CODE_9E8967                      ;9E8926|303F    |;
                       CMP.W #$0029                         ;9E8928|C92900  |;
                       BPL CODE_9E8967                      ;9E892B|103A    |;
                       LDA.W $0EE4,X                        ;9E892D|BDE40E  |;
                       SEC                                  ;9E8930|38      |;
                       SBC.W $0F00                          ;9E8931|ED000F  |;
                       AND.W #$00FF                         ;9E8934|29FF00  |;
                       BIT.W #$0080                         ;9E8937|898000  |;
                       BEQ CODE_9E893F                      ;9E893A|F003    |;
                       ORA.W #$FF00                         ;9E893C|0900FF  |;
 
          CODE_9E893F:
                       CLC                                  ;9E893F|18      |;
                       ADC.W $0DB7,X                        ;9E8940|7DB70D  |;
                       SEC                                  ;9E8943|38      |;
                       SBC.W $0DD3                          ;9E8944|EDD30D  |;
                       CMP.W #$FFD7                         ;9E8947|C9D7FF  |;
                       BMI CODE_9E8967                      ;9E894A|301B    |;
                       CMP.W #$0029                         ;9E894C|C92900  |;
                       BPL CODE_9E8967                      ;9E894F|1016    |;
                       LDA.W $0D55,X                        ;9E8951|BD550D  |;
                       SEC                                  ;9E8954|38      |;
                       SBC.W $0D71                          ;9E8955|ED710D  |;
                       STA.B $A5                            ;9E8958|85A5    |;
                       LDA.W $0DB7,X                        ;9E895A|BDB70D  |;
                       SEC                                  ;9E895D|38      |;
                       SBC.W $0DD3                          ;9E895E|EDD30D  |;
                       STA.B $A9                            ;9E8961|85A9    |;
                       JML.L CODE_9BB445                    ;9E8963|5C45B49B|;
 
          CODE_9E8967:
                       RTL                                  ;9E8967|6B      |;
                       LDY.W $0AD9                          ;9E8968|ACD90A  |;
                       BMI CODE_9E8981                      ;9E896B|3014    |;
                       LDA.W $1503,X                        ;9E896D|BD0315  |;
                       CMP.W $1503,Y                        ;9E8970|D90315  |;
                       BNE CODE_9E8981                      ;9E8973|D00C    |;
                       LDA.W #$0004                         ;9E8975|A90400  |;
                       STA.B $A5                            ;9E8978|85A5    |;
                       JMP.W CODE_9E8C18                    ;9E897A|4C188C  |;
 
          CODE_9E897D:
                       RTL                                  ;9E897D|6B      |;
 
          CODE_9E897E:
                       JMP.W CODE_9E8BD7                    ;9E897E|4CD78B  |;
 
          CODE_9E8981:
                       LDA.W $15D6                          ;9E8981|ADD615  |;
                       BNE CODE_9E897E                      ;9E8984|D0F8    |;
                       JSL.L CODE_9FDC4C                    ;9E8986|224CDC9F|;
                       LDA.W $19D4,X                        ;9E898A|BDD419  |;
                       BPL CODE_9E897D                      ;9E898D|10EE    |;
                       LDA.W $1283,X                        ;9E898F|BD8312  |;
                       BIT.W #$0002                         ;9E8992|890200  |;
                       BEQ CODE_9E89A9                      ;9E8995|F012    |;
                       AND.W #$FFFD                         ;9E8997|29FDFF  |;
                       STA.W $1283,X                        ;9E899A|9D8312  |;
                       STZ.W $1003,X                        ;9E899D|9E0310  |;
                       STZ.W $1023,X                        ;9E89A0|9E2310  |;
                       LDA.W #$0008                         ;9E89A3|A90800  |;
                       STA.W $10A3,X                        ;9E89A6|9DA310  |;
 
          CODE_9E89A9:
                       LDA.W $1003,X                        ;9E89A9|BD0310  |;
                       SEC                                  ;9E89AC|38      |;
                       SBC.B $C1                            ;9E89AD|E5C1    |;
                       STA.W $1003,X                        ;9E89AF|9D0310  |;
                       BPL CODE_9E89C0                      ;9E89B2|100C    |;
                       CLC                                  ;9E89B4|18      |;
                       ADC.W $1343,X                        ;9E89B5|7D4313  |;
                       BPL CODE_9E89BD                      ;9E89B8|1003    |;
                       db $A9,$00,$00                       ;9E89BA|        |;
 
          CODE_9E89BD:
                       STA.W $1003,X                        ;9E89BD|9D0310  |;
 
          CODE_9E89C0:
                       LDA.W #$0064                         ;9E89C0|A96400  |;
                       STA.B $A5                            ;9E89C3|85A5    |;
                       LDA.W $0F43,X                        ;9E89C5|BD430F  |;
                       CMP.W #$0005                         ;9E89C8|C90500  |;
                       BNE CODE_9E89D2                      ;9E89CB|D005    |;
                       LDA.W #$FF9C                         ;9E89CD|A99CFF  |;
                       STA.B $A5                            ;9E89D0|85A5    |;
 
          CODE_9E89D2:
                       LDY.W $0AD9                          ;9E89D2|ACD90A  |;
                       LDA.W $14C3,X                        ;9E89D5|BDC314  |;
                       BEQ CODE_9E8A18                      ;9E89D8|F03E    |;
                       LDA.W #$0000                         ;9E89DA|A90000  |;
                       SEC                                  ;9E89DD|38      |;
                       SBC.B $A5                            ;9E89DE|E5A5    |;
                       STA.B $A5                            ;9E89E0|85A5    |;
                       LDA.W #$FF62                         ;9E89E2|A962FF  |;
                       STA.B $A9                            ;9E89E5|85A9    |;
                       LDA.W #$FFB2                         ;9E89E7|A9B2FF  |;
                       STA.B $AD                            ;9E89EA|85AD    |;
                       LDA.W $0F43,Y                        ;9E89EC|B9430F  |;
                       BEQ CODE_9E8A4B                      ;9E89EF|F05A    |;
                       LDY.B zpCurntTeamLoopVal             ;9E89F1|A491    |;
                       LDA.W $17DE,Y                        ;9E89F3|B9DE17  |;
                       BIT.W #$0010                         ;9E89F6|891000  |;
                       BNE CODE_9E8A4B                      ;9E89F9|D050    |;
                       LDA.B $AD                            ;9E89FB|A5AD    |;
                       SEC                                  ;9E89FD|38      |;
                       SBC.W $0DD3                          ;9E89FE|EDD30D  |;
                       BPL CODE_9E8A0B                      ;9E8A01|1008    |;
                       LDA.W $0DD3                          ;9E8A03|ADD30D  |;
                       STA.B $A9                            ;9E8A06|85A9    |;
                       BRA CODE_9E8A4F                      ;9E8A08|8045    |;
                       db $6B                               ;9E8A0A|        |;
 
          CODE_9E8A0B:
                       LDA.W #$FEF8                         ;9E8A0B|A9F8FE  |;
                       STA.B $AD                            ;9E8A0E|85AD    |;
                       SEC                                  ;9E8A10|38      |;
                       SBC.W $0DD3                          ;9E8A11|EDD30D  |;
                       BMI CODE_9E8A4F                      ;9E8A14|3039    |;
                       BRA CODE_9E8A4B                      ;9E8A16|8033    |;
 
          CODE_9E8A18:
                       LDA.W #$009E                         ;9E8A18|A99E00  |;
                       STA.B $A9                            ;9E8A1B|85A9    |;
                       LDA.W #$004E                         ;9E8A1D|A94E00  |;
                       STA.B $AD                            ;9E8A20|85AD    |;
                       LDA.W $0F43,Y                        ;9E8A22|B9430F  |;
                       BEQ CODE_9E8A4B                      ;9E8A25|F024    |;
                       LDY.B zpCurntTeamLoopVal             ;9E8A27|A491    |;
                       LDA.W $17DE,Y                        ;9E8A29|B9DE17  |;
                       BIT.W #$0010                         ;9E8A2C|891000  |;
                       BNE CODE_9E8A4B                      ;9E8A2F|D01A    |;
                       LDA.B $AD                            ;9E8A31|A5AD    |;
                       SEC                                  ;9E8A33|38      |;
                       SBC.W $0DD3                          ;9E8A34|EDD30D  |;
                       BMI CODE_9E8A40                      ;9E8A37|3007    |;
                       LDA.W $0DD3                          ;9E8A39|ADD30D  |;
                       STA.B $A9                            ;9E8A3C|85A9    |;
                       BRA CODE_9E8A4F                      ;9E8A3E|800F    |;
 
          CODE_9E8A40:
                       LDA.W #$0108                         ;9E8A40|A90801  |;
                       STA.B $AD                            ;9E8A43|85AD    |;
                       SEC                                  ;9E8A45|38      |;
                       SBC.W $0DD3                          ;9E8A46|EDD30D  |;
                       BPL CODE_9E8A4F                      ;9E8A49|1004    |;
 
          CODE_9E8A4B:
                       LDA.B $AD                            ;9E8A4B|A5AD    |;
                       STA.B $A9                            ;9E8A4D|85A9    |;
 
          CODE_9E8A4F:
                       LDA.W #$009E                         ;9E8A4F|A99E00  |;
                       STA.B $8B                            ;9E8A52|858B    |;
                       LDA.W #$D0FC                         ;9E8A54|A9FCD0  |;
                       STA.B $89                            ;9E8A57|8589    |;
                       LDA.W $0D71                          ;9E8A59|AD710D  |;
                       EOR.B $A5                            ;9E8A5C|45A5    |;
                       STA.B $AD                            ;9E8A5E|85AD    |;
                       BMI CODE_9E8A67                      ;9E8A60|3005    |;
                       LDA.W $0D71                          ;9E8A62|AD710D  |;
                       STA.B $A5                            ;9E8A65|85A5    |;
 
          CODE_9E8A67:
                       JMP.W CODE_9EA5A4                    ;9E8A67|4CA4A5  |;
                       CPX.W $0AD9                          ;9E8A6A|ECD90A  |;
                       BEQ CODE_9E8A88                      ;9E8A6D|F019    |;
                       LDY.W $0AD9                          ;9E8A6F|ACD90A  |;
                       BMI CODE_9E8A90                      ;9E8A72|301C    |;
                       LDA.W $1503,X                        ;9E8A74|BD0315  |;
                       CMP.W $1503,Y                        ;9E8A77|D90315  |;
                       BEQ CODE_9E8A90                      ;9E8A7A|F014    |;
                       LDA.W #$0003                         ;9E8A7C|A90300  |;
                       STA.B $A5                            ;9E8A7F|85A5    |;
                       JMP.W CODE_9E8C18                    ;9E8A81|4C188C  |;
 
          CODE_9E8A84:
                       RTL                                  ;9E8A84|6B      |;
 
          CODE_9E8A85:
                       JMP.W CODE_9E8BD7                    ;9E8A85|4CD78B  |;
 
          CODE_9E8A88:
                       LDA.W #$0011                         ;9E8A88|A91100  |;
                       STA.B $A5                            ;9E8A8B|85A5    |;
                       JMP.W CODE_9E8C0E                    ;9E8A8D|4C0E8C  |;
 
          CODE_9E8A90:
                       LDA.W $15D6                          ;9E8A90|ADD615  |;
                       BNE CODE_9E8A85                      ;9E8A93|D0F0    |;
                       JSL.L CODE_9FDC4C                    ;9E8A95|224CDC9F|;
                       LDA.W $19D4,X                        ;9E8A99|BDD419  |;
                       BPL CODE_9E8A84                      ;9E8A9C|10E6    |;
                       LDA.W $1283,X                        ;9E8A9E|BD8312  |;
                       BIT.W #$0002                         ;9E8AA1|890200  |;
                       BEQ CODE_9E8ABE                      ;9E8AA4|F018    |;
                       AND.W #$FFFD                         ;9E8AA6|29FDFF  |;
                       STA.W $1283,X                        ;9E8AA9|9D8312  |;
                       LDA.W #$FFFF                         ;9E8AAC|A9FFFF  |;
                       STA.W $1083,X                        ;9E8AAF|9D8310  |;
                       STZ.W $1003,X                        ;9E8AB2|9E0310  |;
                       STZ.W $1023,X                        ;9E8AB5|9E2310  |;
                       LDA.W #$0008                         ;9E8AB8|A90800  |;
                       STA.W $10A3,X                        ;9E8ABB|9DA310  |;
 
          CODE_9E8ABE:
                       LDA.W $1003,X                        ;9E8ABE|BD0310  |;
                       SEC                                  ;9E8AC1|38      |;
                       SBC.B $C1                            ;9E8AC2|E5C1    |;
                       STA.W $1003,X                        ;9E8AC4|9D0310  |;
                       BMI CODE_9E8ACC                      ;9E8AC7|3003    |;
                       JMP.W CODE_9E8B79                    ;9E8AC9|4C798B  |;
 
          CODE_9E8ACC:
                       CLC                                  ;9E8ACC|18      |;
                       ADC.W $1343,X                        ;9E8ACD|7D4313  |;
                       BPL CODE_9E8AD5                      ;9E8AD0|1003    |;
                       db $A9,$00,$00                       ;9E8AD2|        |;
 
          CODE_9E8AD5:
                       STA.W $1003,X                        ;9E8AD5|9D0310  |;
                       LDA.W $0DD3                          ;9E8AD8|ADD30D  |;
                       STA.B $A5                            ;9E8ADB|85A5    |;
                       LDA.W $0EFF                          ;9E8ADD|ADFF0E  |;
                       LSR A                                ;9E8AE0|4A      |;
                       LSR A                                ;9E8AE1|4A      |;
                       LSR A                                ;9E8AE2|4A      |;
                       LSR A                                ;9E8AE3|4A      |;
                       LSR A                                ;9E8AE4|4A      |;
                       LSR A                                ;9E8AE5|4A      |;
                       BIT.W #$0200                         ;9E8AE6|890002  |;
                       BEQ CODE_9E8AEE                      ;9E8AE9|F003    |;
                       ORA.W #$FC00                         ;9E8AEB|0900FC  |;
 
          CODE_9E8AEE:
                       CLC                                  ;9E8AEE|18      |;
                       ADC.B $A5                            ;9E8AEF|65A5    |;
                       STA.B $B1                            ;9E8AF1|85B1    |;
                       LDA.W $14C3,X                        ;9E8AF3|BDC314  |;
                       BNE CODE_9E8B08                      ;9E8AF6|D010    |;
                       LDA.W #$0000                         ;9E8AF8|A90000  |;
                       SEC                                  ;9E8AFB|38      |;
                       SBC.B $A5                            ;9E8AFC|E5A5    |;
                       STA.B $A5                            ;9E8AFE|85A5    |;
                       LDA.W #$0000                         ;9E8B00|A90000  |;
                       SEC                                  ;9E8B03|38      |;
                       SBC.B $B1                            ;9E8B04|E5B1    |;
                       STA.B $B1                            ;9E8B06|85B1    |;
 
          CODE_9E8B08:
                       STZ.B $AD                            ;9E8B08|64AD    |;
                       LDA.B $B1                            ;9E8B0A|A5B1    |;
                       SEC                                  ;9E8B0C|38      |;
                       SBC.W #$FFA8                         ;9E8B0D|E9A8FF  |;
                       BMI CODE_9E8B38                      ;9E8B10|3026    |;
                       LDA.W #$0008                         ;9E8B12|A90800  |;
                       STA.B $AD                            ;9E8B15|85AD    |;
                       LDA.B $A5                            ;9E8B17|A5A5    |;
                       SEC                                  ;9E8B19|38      |;
                       SBC.W #$0058                         ;9E8B1A|E95800  |;
                       BMI CODE_9E8B38                      ;9E8B1D|3019    |;
                       LDY.B zpCurntTeamLoopVal             ;9E8B1F|A491    |;
                       LDA.W $17DE,Y                        ;9E8B21|B9DE17  |;
                       BIT.W #$0010                         ;9E8B24|891000  |;
                       BNE CODE_9E8B38                      ;9E8B27|D00F    |;
                       ASL.B $AD                            ;9E8B29|06AD    |;
                       LDA.B $B1                            ;9E8B2B|A5B1    |;
                       SEC                                  ;9E8B2D|38      |;
                       SBC.W #$0108                         ;9E8B2E|E90801  |;
                       BMI CODE_9E8B38                      ;9E8B31|3005    |;
                       LDA.W #$0018                         ;9E8B33|A91800  |;
                       STA.B $AD                            ;9E8B36|85AD    |;
 
          CODE_9E8B38:
                       LDA.B $AD                            ;9E8B38|A5AD    |;
                       CMP.W $1083,X                        ;9E8B3A|DD8310  |;
                       BNE CODE_9E8B47                      ;9E8B3D|D008    |;
                       LDA.W $0792                          ;9E8B3F|AD9207  |;
                       CMP.W #$0200                         ;9E8B42|C90002  |;
                       BCS CODE_9E8B79                      ;9E8B45|B032    |;
 
          CODE_9E8B47:
                       LDA.B $AD                            ;9E8B47|A5AD    |;
                       STA.W $1083,X                        ;9E8B49|9D8310  |;
                       TAY                                  ;9E8B4C|A8      |;
                       LDA.W #$009E                         ;9E8B4D|A99E00  |;
                       STA.B $8B                            ;9E8B50|858B    |;
                       LDA.W #$8BB7                         ;9E8B52|A9B78B  |;
                       STA.B $89                            ;9E8B55|8589    |;
                       INY                                  ;9E8B57|C8      |;
                       INY                                  ;9E8B58|C8      |;
                       LDA.B [$89],Y                        ;9E8B59|B789    |;
                       DEY                                  ;9E8B5B|88      |;
                       DEY                                  ;9E8B5C|88      |;
                       JSL.L CODE_9BB3A4                    ;9E8B5D|22A4B39B|;
                       ADC.B [$89],Y                        ;9E8B61|7789    |;
                       STA.W $1043,X                        ;9E8B63|9D4310  |;
                       TYA                                  ;9E8B66|98      |;
                       CLC                                  ;9E8B67|18      |;
                       ADC.W #$0006                         ;9E8B68|690600  |;
                       TAY                                  ;9E8B6B|A8      |;
                       LDA.B [$89],Y                        ;9E8B6C|B789    |;
                       DEY                                  ;9E8B6E|88      |;
                       DEY                                  ;9E8B6F|88      |;
                       JSL.L CODE_9BB3A4                    ;9E8B70|22A4B39B|;
                       ADC.B [$89],Y                        ;9E8B74|7789    |;
                       STA.W $1063,X                        ;9E8B76|9D6310  |;
 
          CODE_9E8B79:
                       LDA.W $1043,X                        ;9E8B79|BD4310  |;
                       STA.B $A5                            ;9E8B7C|85A5    |;
                       LDA.W $0F43,X                        ;9E8B7E|BD430F  |;
                       CMP.W #$0005                         ;9E8B81|C90500  |;
                       BEQ CODE_9E8B8E                      ;9E8B84|F008    |;
                       LDA.W #$0000                         ;9E8B86|A90000  |;
                       SEC                                  ;9E8B89|38      |;
                       SBC.B $A5                            ;9E8B8A|E5A5    |;
                       STA.B $A5                            ;9E8B8C|85A5    |;
 
          CODE_9E8B8E:
                       LDA.W $1063,X                        ;9E8B8E|BD6310  |;
                       STA.B $A9                            ;9E8B91|85A9    |;
                       LDA.W $14C3,X                        ;9E8B93|BDC314  |;
                       BNE CODE_9E8BA8                      ;9E8B96|D010    |;
                       LDA.W #$0000                         ;9E8B98|A90000  |;
                       SEC                                  ;9E8B9B|38      |;
                       SBC.B $A5                            ;9E8B9C|E5A5    |;
                       STA.B $A5                            ;9E8B9E|85A5    |;
                       LDA.W #$0000                         ;9E8BA0|A90000  |;
                       SEC                                  ;9E8BA3|38      |;
                       SBC.B $A9                            ;9E8BA4|E5A9    |;
                       STA.B $A9                            ;9E8BA6|85A9    |;
 
          CODE_9E8BA8:
                       LDA.W #$009E                         ;9E8BA8|A99E00  |;
                       STA.B $8B                            ;9E8BAB|858B    |;
                       LDA.W #$8904                         ;9E8BAD|A90489  |;
                       STA.B $89                            ;9E8BB0|8589    |;
                       JML.L CODE_9EA5A4                    ;9E8BB2|5CA4A59E|;
                       db $6B                               ;9E8BB6|        |;
                       db $50,$00,$14,$00,$BA,$FF,$0A,$00   ;9E8BB7|        |;
                       db $64,$00,$14,$00,$3C,$00,$0A,$00   ;9E8BBF|        |;
                       db $3C,$00,$32,$00,$E6,$00,$14,$00   ;9E8BC7|        |;
                       db $50,$00,$1E,$00,$FA,$00,$14,$00   ;9E8BCF|        |;
 
          CODE_9E8BD7:
                       LDA.W $19D4,X                        ;9E8BD7|BDD419  |;
                       BPL CODE_9E8BE5                      ;9E8BDA|1009    |;
                       LDA.W #$0008                         ;9E8BDC|A90800  |;
                       STA.B $A5                            ;9E8BDF|85A5    |;
                       JML.L CODE_9EA8A9                    ;9E8BE1|5CA9A89E|;
 
          CODE_9E8BE5:
                       RTL                                  ;9E8BE5|6B      |;
 
          CODE_9E8BE6:
                       LDA.W $0F63,X                        ;9E8BE6|BD630F  |;
                       INC A                                ;9E8BE9|1A      |;
                       AND.W #$0007                         ;9E8BEA|290700  |;
                       STA.W $0F63,X                        ;9E8BED|9D630F  |;
                       PHX                                  ;9E8BF0|DA      |;
                       PHY                                  ;9E8BF1|5A      |;
                       TXA                                  ;9E8BF2|8A      |;
                       ASL A                                ;9E8BF3|0A      |;
                       ASL A                                ;9E8BF4|0A      |;
                       ADC.W $0F63,X                        ;9E8BF5|7D630F  |;
                       TAY                                  ;9E8BF8|A8      |;
                       LDA.W $0F83,Y                        ;9E8BF9|B9830F  |;
                       AND.W #$00FF                         ;9E8BFC|29FF00  |;
                       PLY                                  ;9E8BFF|7A      |;
                       PLX                                  ;9E8C00|FA      |;
                       STA.W $0B7D,X                        ;9E8C01|9D7D0B  |;
                       LDA.W $1283,X                        ;9E8C04|BD8312  |;
                       ORA.W #$0002                         ;9E8C07|090200  |;
                       STA.W $1283,X                        ;9E8C0A|9D8312  |;
                       RTL                                  ;9E8C0D|6B      |;
 
          CODE_9E8C0E:
                       LDA.W $0F63,X                        ;9E8C0E|BD630F  |;
                       DEC A                                ;9E8C11|3A      |;
                       AND.W #$0007                         ;9E8C12|290700  |;
                       STA.W $0F63,X                        ;9E8C15|9D630F  |;
 
          CODE_9E8C18:
                       LDA.W $1283,X                        ;9E8C18|BD8312  |;
                       ORA.W #$0002                         ;9E8C1B|090200  |;
                       STA.W $1283,X                        ;9E8C1E|9D8312  |;
                       TXA                                  ;9E8C21|8A      |;
                       ASL A                                ;9E8C22|0A      |;
                       ASL A                                ;9E8C23|0A      |;
                       ADC.W $0F63,X                        ;9E8C24|7D630F  |;
                       TAY                                  ;9E8C27|A8      |;
                       SEP #$20                             ;9E8C28|E220    |;
                       LDA.B $A5                            ;9E8C2A|A5A5    |;
                       STA.W $0F83,Y                        ;9E8C2C|99830F  |;
                       REP #$30                             ;9E8C2F|C230    |;
                       STA.W $0B7D,X                        ;9E8C31|9D7D0B  |;
                       RTL                                  ;9E8C34|6B      |;
 
          CODE_9E8C35:
                       STZ.W $0CDB                          ;9E8C35|9CDB0C  |;
                       LDA.W PauseScreenActive              ;9E8C38|ADDA15  |;
                       BEQ CODE_9E8C45                      ;9E8C3B|F008    |;
                       LDA.B $AD                            ;9E8C3D|A5AD    |;
                       LDY.B $B1                            ;9E8C3F|A4B1    |;
                       STY.B $AD                            ;9E8C41|84AD    |;
                       STA.B $B1                            ;9E8C43|85B1    |;
 
          CODE_9E8C45:
                       LDA.W $1563,X                        ;9E8C45|BD6315  |;
                       BNE CODE_9E8CA8                      ;9E8C48|D05E    |;
                       LDA.B $B1                            ;9E8C4A|A5B1    |;
                       PHA                                  ;9E8C4C|48      |;
                       LDA.B $AD                            ;9E8C4D|A5AD    |;
                       PHA                                  ;9E8C4F|48      |;
                       LDA.W $0D55,X                        ;9E8C50|BD550D  |;
                       STA.B $AD                            ;9E8C53|85AD    |;
                       LDA.W $0DB7,X                        ;9E8C55|BDB70D  |;
                       STA.B $B1                            ;9E8C58|85B1    |;
                       LDA.W $10C3,X                        ;9E8C5A|BDC310  |;
                       STA.W $0D3B                          ;9E8C5D|8D3B0D  |;
                       LDA.W $10E3,X                        ;9E8C60|BDE310  |;
                       STA.W $0D3D                          ;9E8C63|8D3D0D  |;
                       JSL.L CODE_9E8D3E                    ;9E8C66|223E8D9E|;
                       LDA.W $1103,X                        ;9E8C6A|BD0311  |;
                       ORA.W $1123,X                        ;9E8C6D|1D2311  |;
                       BNE CODE_9E8C99                      ;9E8C70|D027    |;
                       CPX.W #$0018                         ;9E8C72|E01800  |;
                       BCS CODE_9E8C99                      ;9E8C75|B022    |;
                       TXA                                  ;9E8C77|8A      |;
                       JSL.L CODE_9BC002                    ;9E8C78|2202C09B|;
                       LDA.W $0D55,X                        ;9E8C7C|BD550D  |;
                       CLC                                  ;9E8C7F|18      |;
                       ADC.B $A5                            ;9E8C80|65A5    |;
                       STA.B $AD                            ;9E8C82|85AD    |;
                       LDA.W $0DB7,X                        ;9E8C84|BDB70D  |;
                       CLC                                  ;9E8C87|18      |;
                       ADC.B $A9                            ;9E8C88|65A9    |;
                       STA.B $B1                            ;9E8C8A|85B1    |;
                       LDA.W #$0001                         ;9E8C8C|A90100  |;
                       STA.W $0D3B                          ;9E8C8F|8D3B0D  |;
                       STA.W $0D3D                          ;9E8C92|8D3D0D  |;
                       JSL.L CODE_9E8D3E                    ;9E8C95|223E8D9E|;
 
          CODE_9E8C99:
                       PLA                                  ;9E8C99|68      |;
                       STA.B $AD                            ;9E8C9A|85AD    |;
                       PLA                                  ;9E8C9C|68      |;
                       STA.B $B1                            ;9E8C9D|85B1    |;
                       LDA.W $0F43,X                        ;9E8C9F|BD430F  |;
                       BMI CODE_9E8CA8                      ;9E8CA2|3004    |;
                       JSL.L CODE_9E9484                    ;9E8CA4|2284949E|;
 
          CODE_9E8CA8:
                       LDA.W $0CDB                          ;9E8CA8|ADDB0C  |;
                       BEQ CODE_9E8CB0                      ;9E8CAB|F003    |;
                       JMP.W CODE_9E8D29                    ;9E8CAD|4C298D  |;
 
          CODE_9E8CB0:
                       LDA.W $15A3,X                        ;9E8CB0|BDA315  |;
                       STA.B $A9                            ;9E8CB3|85A9    |;
 
          CODE_9E8CB5:
                       LDY.B $A9                            ;9E8CB5|A4A9    |;
                       CPY.W #$000F                         ;9E8CB7|C00F00  |;
                       BEQ CODE_9E8CEC                      ;9E8CBA|F030    |;
                       LDA.W $15C4,Y                        ;9E8CBC|B9C415  |;
                       AND.W #$00FF                         ;9E8CBF|29FF00  |;
                       STA.B $B5                            ;9E8CC2|85B5    |;
                       TAY                                  ;9E8CC4|A8      |;
                       LDA.B $B1                            ;9E8CC5|A5B1    |;
                       SEC                                  ;9E8CC7|38      |;
                       SBC.W $1583,Y                        ;9E8CC8|F98315  |;
                       BEQ CODE_9E8CEC                      ;9E8CCB|F01F    |;
                       BMI CODE_9E8CEC                      ;9E8CCD|301D    |;
                       INC.W $15A3,X                        ;9E8CCF|FEA315  |;
                       LDA.W $15A3,Y                        ;9E8CD2|B9A315  |;
                       DEC A                                ;9E8CD5|3A      |;
                       STA.W $15A3,Y                        ;9E8CD6|99A315  |;
                       SEP #$30                             ;9E8CD9|E230    |;
                       LDY.B $A9                            ;9E8CDB|A4A9    |;
                       LDA.B $B5                            ;9E8CDD|A5B5    |;
                       STA.W $15C3,Y                        ;9E8CDF|99C315  |;
                       TXA                                  ;9E8CE2|8A      |;
                       STA.W $15C4,Y                        ;9E8CE3|99C415  |;
                       REP #$30                             ;9E8CE6|C230    |;
                       INC.B $A9                            ;9E8CE8|E6A9    |;
                       BRA CODE_9E8CB5                      ;9E8CEA|80C9    |;
 
          CODE_9E8CEC:
                       LDA.W $15A3,X                        ;9E8CEC|BDA315  |;
                       BEQ CODE_9E8D23                      ;9E8CEF|F032    |;
                       STA.B $A9                            ;9E8CF1|85A9    |;
 
          CODE_9E8CF3:
                       LDY.B $A9                            ;9E8CF3|A4A9    |;
                       LDA.W $15C2,Y                        ;9E8CF5|B9C215  |;
                       AND.W #$00FF                         ;9E8CF8|29FF00  |;
                       STA.B $B5                            ;9E8CFB|85B5    |;
                       TAY                                  ;9E8CFD|A8      |;
                       LDA.B $B1                            ;9E8CFE|A5B1    |;
                       SEC                                  ;9E8D00|38      |;
                       SBC.W $1583,Y                        ;9E8D01|F98315  |;
                       BPL CODE_9E8D23                      ;9E8D04|101D    |;
                       DEC.W $15A3,X                        ;9E8D06|DEA315  |;
                       LDA.W $15A3,Y                        ;9E8D09|B9A315  |;
                       INC A                                ;9E8D0C|1A      |;
                       STA.W $15A3,Y                        ;9E8D0D|99A315  |;
                       SEP #$30                             ;9E8D10|E230    |;
                       LDY.B $A9                            ;9E8D12|A4A9    |;
                       LDA.B $B5                            ;9E8D14|A5B5    |;
                       STA.W $15C3,Y                        ;9E8D16|99C315  |;
                       TXA                                  ;9E8D19|8A      |;
                       STA.W $15C2,Y                        ;9E8D1A|99C215  |;
                       REP #$30                             ;9E8D1D|C230    |;
                       DEC.B $A9                            ;9E8D1F|C6A9    |;
                       BNE CODE_9E8CF3                      ;9E8D21|D0D0    |;
 
          CODE_9E8D23:
                       LDA.B $B1                            ;9E8D23|A5B1    |;
                       STA.W $1583,X                        ;9E8D25|9D8315  |;
                       RTL                                  ;9E8D28|6B      |;
 
          CODE_9E8D29:
                       LDA.W $11A3,X                        ;9E8D29|BDA311  |;
                       CMP.W #$FC76                         ;9E8D2C|C976FC  |;
                       BCS CODE_9E8D3D                      ;9E8D2F|B00C    |;
                       LDA.W $0E43,X                        ;9E8D31|BD430E  |;
                       STA.W $0D55,X                        ;9E8D34|9D550D  |;
                       LDA.W $0E83,X                        ;9E8D37|BD830E  |;
                       STA.W $0DB7,X                        ;9E8D3A|9DB70D  |;
 
          CODE_9E8D3D:
                       RTL                                  ;9E8D3D|6B      |;
 
          CODE_9E8D3E:
                       LDA.W #$012A                         ;9E8D3E|A92A01  |;
                       SEC                                  ;9E8D41|38      |;
                       SBC.W $0D3D                          ;9E8D42|ED3D0D  |;
                       PHA                                  ;9E8D45|48      |;
                       EOR.W #$FFFF                         ;9E8D46|49FFFF  |;
                       INC A                                ;9E8D49|1A      |;
                       CLC                                  ;9E8D4A|18      |;
                       ADC.W #$0040                         ;9E8D4B|694000  |;
                       STA.B $B9                            ;9E8D4E|85B9    |;
                       LDA.W #$0088                         ;9E8D50|A98800  |;
                       SEC                                  ;9E8D53|38      |;
                       SBC.W $0D3B                          ;9E8D54|ED3B0D  |;
                       PHA                                  ;9E8D57|48      |;
                       EOR.W #$FFFF                         ;9E8D58|49FFFF  |;
                       INC A                                ;9E8D5B|1A      |;
                       CLC                                  ;9E8D5C|18      |;
                       ADC.W #$0040                         ;9E8D5D|694000  |;
                       STA.B $B5                            ;9E8D60|85B5    |;
                       LDA.B $B1                            ;9E8D62|A5B1    |;
                       PHA                                  ;9E8D64|48      |;
                       LDY.B $AD                            ;9E8D65|A4AD    |;
                       PHY                                  ;9E8D67|5A      |;
                       DEC A                                ;9E8D68|3A      |;
                       CMP.B $B9                            ;9E8D69|C5B9    |;
                       BPL CODE_9E8D8B                      ;9E8D6B|101E    |;
                       LDA.B $AD                            ;9E8D6D|A5AD    |;
                       CMP.B $B5                            ;9E8D6F|C5B5    |;
                       BMI CODE_9E8DB5                      ;9E8D71|3042    |;
                       LDA.W #$0000                         ;9E8D73|A90000  |;
                       SEC                                  ;9E8D76|38      |;
                       SBC.B $B5                            ;9E8D77|E5B5    |;
                       STA.B $B5                            ;9E8D79|85B5    |;
                       CMP.B $AD                            ;9E8D7B|C5AD    |;
                       BMI CODE_9E8DB5                      ;9E8D7D|3036    |;
                       LDA.W #$001A                         ;9E8D7F|A91A00  |;
                       STA.B zpCurntTeamLoopVal             ;9E8D82|8591    |;
                       JSL.L CODE_9E90AE                    ;9E8D84|22AE909E|;
                       JMP.W CODE_9E8E3A                    ;9E8D88|4C3A8E  |;
 
          CODE_9E8D8B:
                       LDA.W #$0000                         ;9E8D8B|A90000  |;
                       SEC                                  ;9E8D8E|38      |;
                       SBC.B $B9                            ;9E8D8F|E5B9    |;
                       STA.B $B9                            ;9E8D91|85B9    |;
                       CMP.B $B1                            ;9E8D93|C5B1    |;
                       BPL CODE_9E8DB2                      ;9E8D95|101B    |;
                       LDA.B $AD                            ;9E8D97|A5AD    |;
                       CMP.B $B5                            ;9E8D99|C5B5    |;
                       BMI CODE_9E8DB5                      ;9E8D9B|3018    |;
                       LDA.W #$0000                         ;9E8D9D|A90000  |;
                       SEC                                  ;9E8DA0|38      |;
                       SBC.B $B5                            ;9E8DA1|E5B5    |;
                       STA.B $B5                            ;9E8DA3|85B5    |;
                       CMP.B $AD                            ;9E8DA5|C5AD    |;
                       BMI CODE_9E8DB5                      ;9E8DA7|300C    |;
                       LDA.W #$0018                         ;9E8DA9|A91800  |;
                       STA.B zpCurntTeamLoopVal             ;9E8DAC|8591    |;
                       JSL.L CODE_9E90AE                    ;9E8DAE|22AE909E|;
 
          CODE_9E8DB2:
                       JMP.W CODE_9E8E3A                    ;9E8DB2|4C3A8E  |;
 
          CODE_9E8DB5:
                       LDA.B $AD                            ;9E8DB5|A5AD    |;
                       SEC                                  ;9E8DB7|38      |;
                       SBC.B $B5                            ;9E8DB8|E5B5    |;
                       STA.B $AD                            ;9E8DBA|85AD    |;
                       EOR.W #$FFFF                         ;9E8DBC|49FFFF  |;
                       INC A                                ;9E8DBF|1A      |;
                       STA.B $A9                            ;9E8DC0|85A9    |;
                       BIT.W #$8000                         ;9E8DC2|890080  |;
                       BEQ CODE_9E8DCB                      ;9E8DC5|F004    |;
                       EOR.W #$FFFF                         ;9E8DC7|49FFFF  |;
                       INC A                                ;9E8DCA|1A      |;
 
          CODE_9E8DCB:
                       STA.B $CD                            ;9E8DCB|85CD    |;
                       LDA.B $B1                            ;9E8DCD|A5B1    |;
                       SEC                                  ;9E8DCF|38      |;
                       SBC.B $B9                            ;9E8DD0|E5B9    |;
                       STA.B $A5                            ;9E8DD2|85A5    |;
                       BIT.W #$8000                         ;9E8DD4|890080  |;
                       BEQ CODE_9E8DDD                      ;9E8DD7|F004    |;
                       EOR.W #$FFFF                         ;9E8DD9|49FFFF  |;
                       INC A                                ;9E8DDC|1A      |;
 
          CODE_9E8DDD:
                       STA.B $D7                            ;9E8DDD|85D7    |;
                       CMP.B $CD                            ;9E8DDF|C5CD    |;
                       BCC CODE_9E8DEB                      ;9E8DE1|9008    |;
                       LDA.B $CD                            ;9E8DE3|A5CD    |;
                       LSR A                                ;9E8DE5|4A      |;
                       LSR A                                ;9E8DE6|4A      |;
                       ADC.B $D7                            ;9E8DE7|65D7    |;
                       BRA CODE_9E8DEF                      ;9E8DE9|8004    |;
 
          CODE_9E8DEB:
                       LSR A                                ;9E8DEB|4A      |;
                       LSR A                                ;9E8DEC|4A      |;
                       ADC.B $CD                            ;9E8DED|65CD    |;
 
          CODE_9E8DEF:
                       CMP.W #$0041                         ;9E8DEF|C94100  |;
                       BCC CODE_9E8E3A                      ;9E8DF2|9046    |;
                       STA.B $B1                            ;9E8DF4|85B1    |;
                       LDA.B $A5                            ;9E8DF6|A5A5    |;
                       XBA                                  ;9E8DF8|EB      |;
                       AND.W #$FF00                         ;9E8DF9|2900FF  |;
                       TAX                                  ;9E8DFC|AA      |;
                       LDA.B $B1                            ;9E8DFD|A5B1    |;
                       JSL.L CODE_809327                    ;9E8DFF|22279380|;
                       CMP.W #$FF01                         ;9E8E03|C901FF  |;
                       BPL CODE_9E8E0B                      ;9E8E06|1003    |;
                       db $A9,$01,$FF                       ;9E8E08|        |;
 
          CODE_9E8E0B:
                       CMP.W #$00FF                         ;9E8E0B|C9FF00  |;
                       BMI CODE_9E8E13                      ;9E8E0E|3003    |;
                       LDA.W #$00FF                         ;9E8E10|A9FF00  |;
 
          CODE_9E8E13:
                       STA.B $A5                            ;9E8E13|85A5    |;
                       LDA.B $A9                            ;9E8E15|A5A9    |;
                       XBA                                  ;9E8E17|EB      |;
                       AND.W #$FF00                         ;9E8E18|2900FF  |;
                       TAX                                  ;9E8E1B|AA      |;
                       LDA.B $B1                            ;9E8E1C|A5B1    |;
                       JSL.L CODE_809327                    ;9E8E1E|22279380|;
                       LDX.B $95                            ;9E8E22|A695    |;
                       CMP.W #$FF01                         ;9E8E24|C901FF  |;
                       BPL CODE_9E8E2C                      ;9E8E27|1003    |;
                       LDA.W #$FF01                         ;9E8E29|A901FF  |;
 
          CODE_9E8E2C:
                       CMP.W #$00FF                         ;9E8E2C|C9FF00  |;
                       BMI CODE_9E8E34                      ;9E8E2F|3003    |;
                       db $A9,$FF,$00                       ;9E8E31|        |;
 
          CODE_9E8E34:
                       STA.B $A9                            ;9E8E34|85A9    |;
                       JSL.L CODE_9E8E91                    ;9E8E36|22918E9E|;
 
          CODE_9E8E3A:
                       PLA                                  ;9E8E3A|68      |;
                       STA.B $AD                            ;9E8E3B|85AD    |;
                       PLA                                  ;9E8E3D|68      |;
                       STA.B $B1                            ;9E8E3E|85B1    |;
                       PLA                                  ;9E8E40|68      |;
                       STA.B $B5                            ;9E8E41|85B5    |;
                       PLA                                  ;9E8E43|68      |;
                       STA.B $B9                            ;9E8E44|85B9    |;
                       LDA.W $1103,X                        ;9E8E46|BD0311  |;
                       ORA.W $1123,X                        ;9E8E49|1D2311  |;
                       BNE CODE_9E8E8A                      ;9E8E4C|D03C    |;
                       LDA.W #$00FF                         ;9E8E4E|A9FF00  |;
                       STA.B $A5                            ;9E8E51|85A5    |;
                       STZ.B $A9                            ;9E8E53|64A9    |;
                       LDA.B $B1                            ;9E8E55|A5B1    |;
                       DEC A                                ;9E8E57|3A      |;
                       CMP.B $B9                            ;9E8E58|C5B9    |;
                       BPL CODE_9E8E91                      ;9E8E5A|1035    |;
                       LDA.W #$FF01                         ;9E8E5C|A901FF  |;
                       STA.B $A5                            ;9E8E5F|85A5    |;
                       LDA.W #$0000                         ;9E8E61|A90000  |;
                       SEC                                  ;9E8E64|38      |;
                       SBC.B $B9                            ;9E8E65|E5B9    |;
                       DEC A                                ;9E8E67|3A      |;
                       CMP.B $B1                            ;9E8E68|C5B1    |;
                       BPL CODE_9E8E91                      ;9E8E6A|1025    |;
                       STZ.B $A5                            ;9E8E6C|64A5    |;
                       LDA.W #$FF01                         ;9E8E6E|A901FF  |;
                       STA.B $A9                            ;9E8E71|85A9    |;
                       LDA.B $AD                            ;9E8E73|A5AD    |;
                       DEC A                                ;9E8E75|3A      |;
                       CMP.B $B5                            ;9E8E76|C5B5    |;
                       BPL CODE_9E8E91                      ;9E8E78|1017    |;
                       LDA.W #$00FF                         ;9E8E7A|A9FF00  |;
                       STA.B $A9                            ;9E8E7D|85A9    |;
                       LDA.W #$0000                         ;9E8E7F|A90000  |;
                       SEC                                  ;9E8E82|38      |;
                       SBC.B $B5                            ;9E8E83|E5B5    |;
                       DEC A                                ;9E8E85|3A      |;
                       CMP.B $AD                            ;9E8E86|C5AD    |;
                       BPL CODE_9E8E91                      ;9E8E88|1007    |;
 
          CODE_9E8E8A:
                       RTL                                  ;9E8E8A|6B      |;
 
          CODE_9E8E8B:
                       JMP.W CODE_9E8F42                    ;9E8E8B|4C428F  |;
 
       UNREACH_9E8E8E:
                       db $4C,$05,$8F                       ;9E8E8E|        |;
 
          CODE_9E8E91:
                       CPX.W #$001C                         ;9E8E91|E01C00  |;
                       BNE CODE_9E8E8B                      ;9E8E94|D0F5    |;
                       LDA.W $0DF9                          ;9E8E96|ADF90D  |;
                       CMP.W #$0021                         ;9E8E99|C92100  |;
                       BPL UNREACH_9E8E8E                   ;9E8E9C|10F0    |;
                       LDA.W $0DF9                          ;9E8E9E|ADF90D  |;
                       CMP.W #$0016                         ;9E8EA1|C91600  |;
                       BCC CODE_9E8E8B                      ;9E8EA4|90E5    |;
                       db $AD,$D3,$0D,$C9,$12,$01,$30,$E0   ;9E8EA6|        |;
                       db $AD,$71,$0D,$C9,$0D,$00,$30,$D5   ;9E8EAE|        |;
                       db $AD,$71,$0D,$C9,$10,$00,$10,$CD   ;9E8EB6|        |;
                       db $AD,$FF,$0E,$C9,$A0,$0F,$30,$C5   ;9E8EBE|        |;
                       db $DA,$AD,$FF,$0E,$48,$0A,$68,$6A   ;9E8EC6|        |;
                       db $8D,$FF,$0E,$E8,$E8,$86,$95,$A9   ;9E8ECE|        |;
                       db $E8,$F8,$85,$A9,$22,$DD,$A3,$9E   ;9E8ED6|        |;
                       db $FA,$86,$95,$A9,$06,$00,$22,$7F   ;9E8EDE|        |;
                       db $9A,$9C,$AF,$E0,$35,$7E,$18,$69   ;9E8EE6|        |;
                       db $58,$02,$8F,$E0,$35,$7E,$A9,$5A   ;9E8EEE|        |;
                       db $00,$85,$81,$AD,$BE,$19,$18,$69   ;9E8EF6|        |;
                       db $0F,$00,$30,$03,$8D,$BE,$19,$A9   ;9E8EFE|        |;
                       db $40,$00,$0C,$D8,$15,$8D,$7F,$15   ;9E8F06|        |;
                       db $AD,$D3,$0D,$10,$06,$A9,$00,$80   ;9E8F0E|        |;
                       db $0C,$1F,$0E,$9C,$B5,$0D,$AD,$D6   ;9E8F16|        |;
                       db $15,$D0,$16,$AF,$F6,$30,$7E,$0A   ;9E8F1E|        |;
                       db $85,$95,$AA,$A9,$06,$00,$85,$A5   ;9E8F26|        |;
                       db $22,$43,$C9,$80,$A2,$1C,$00,$86   ;9E8F2E|        |;
                       db $95,$22,$91,$C7,$9E,$9C,$8B,$1E   ;9E8F36|        |;
                       db $9C,$89,$1E,$6B                   ;9E8F3E|        |;
 
          CODE_9E8F42:
                       LDA.B $A5                            ;9E8F42|A5A5    |;
                       STA.W $1103,X                        ;9E8F44|9D0311  |;
                       LDA.B $A9                            ;9E8F47|A5A9    |;
                       STA.W $1123,X                        ;9E8F49|9D2311  |;
                       LDA.B $AD                            ;9E8F4C|A5AD    |;
                       PHA                                  ;9E8F4E|48      |;
                       LDA.B $B1                            ;9E8F4F|A5B1    |;
                       PHA                                  ;9E8F51|48      |;
                       LDA.B $A9                            ;9E8F52|A5A9    |;
                       PHA                                  ;9E8F54|48      |;
                       LDA.B $A5                            ;9E8F55|A5A5    |;
                       PHA                                  ;9E8F57|48      |;
                       TXY                                  ;9E8F58|9B      |;
                       LDX.W $0EE3,Y                        ;9E8F59|BEE30E  |;
                       JSL.L CODE_808FEB                    ;9E8F5C|22EB8F80|;
                       LDA.B $09                            ;9E8F60|A509    |;
                       STA.B $A5                            ;9E8F62|85A5    |;
                       LDX.W $0EC3,Y                        ;9E8F64|BEC30E  |;
                       LDA.B $A9                            ;9E8F67|A5A9    |;
                       JSL.L CODE_808FEB                    ;9E8F69|22EB8F80|;
                       LDA.B $A5                            ;9E8F6D|A5A5    |;
                       SEC                                  ;9E8F6F|38      |;
                       SBC.B $09                            ;9E8F70|E509    |;
                       EOR.W #$FFFF                         ;9E8F72|49FFFF  |;
                       INC A                                ;9E8F75|1A      |;
                       STA.B $AD                            ;9E8F76|85AD    |;
                       LDX.W $0EC3,Y                        ;9E8F78|BEC30E  |;
                       LDA.B $01,S                          ;9E8F7B|A301    |;
                       JSL.L CODE_808FEB                    ;9E8F7D|22EB8F80|;
                       LDA.B $09                            ;9E8F81|A509    |;
                       STA.B $A5                            ;9E8F83|85A5    |;
                       LDX.W $0EE3,Y                        ;9E8F85|BEE30E  |;
                       LDA.B $A9                            ;9E8F88|A5A9    |;
                       JSL.L CODE_808FEB                    ;9E8F8A|22EB8F80|;
                       LDA.B $09                            ;9E8F8E|A509    |;
                       CLC                                  ;9E8F90|18      |;
                       ADC.B $A5                            ;9E8F91|65A5    |;
                       STA.B $B1                            ;9E8F93|85B1    |;
                       TYX                                  ;9E8F95|BB      |;
                       CPX.W #$001C                         ;9E8F96|E01C00  |;
                       BEQ CODE_9E8F9E                      ;9E8F99|F003    |;
                       JMP.W CODE_9E900A                    ;9E8F9B|4C0A90  |;
 
          CODE_9E8F9E:
                       LDA.W #$1000                         ;9E8F9E|A90010  |;
                       TRB.W $15D8                          ;9E8FA1|1CD815  |;
                       LDA.B $AD                            ;9E8FA4|A5AD    |;
                       BMI CODE_9E8FAB                      ;9E8FA6|3003    |;
                       JMP.W CODE_9E9091                    ;9E8FA8|4C9190  |;
 
          CODE_9E8FAB:
                       LSR A                                ;9E8FAB|4A      |;
                       LSR A                                ;9E8FAC|4A      |;
                       BIT.W #$2000                         ;9E8FAD|890020  |;
                       BEQ CODE_9E8FB5                      ;9E8FB0|F003    |;
                       ORA.W #$C000                         ;9E8FB2|0900C0  |;
 
          CODE_9E8FB5:
                       STA.B $AD                            ;9E8FB5|85AD    |;
                       SEC                                  ;9E8FB7|38      |;
                       SBC.W #$FC00                         ;9E8FB8|E900FC  |;
                       BPL CODE_9E8FE3                      ;9E8FBB|1026    |;
                       JSL.L CODE_808658                    ;9E8FBD|22588680|;
                       AND.W #$07FF                         ;9E8FC1|29FF07  |;
                       EOR.W #$FFFF                         ;9E8FC4|49FFFF  |;
                       INC A                                ;9E8FC7|1A      |;
                       STA.W $0E01                          ;9E8FC8|8D010E  |;
                       STA.B $A5                            ;9E8FCB|85A5    |;
                       JSL.L CODE_9EDE5E                    ;9E8FCD|225EDE9E|;
                       LDA.W #$000A                         ;9E8FD1|A90A00  |;
                       LDY.W $0DF9                          ;9E8FD4|ACF90D  |;
                       CPY.W #$000B                         ;9E8FD7|C00B00  |;
                       BCS CODE_9E8FDF                      ;9E8FDA|B003    |;
                       LDA.W #$0004                         ;9E8FDC|A90400  |;
 
          CODE_9E8FDF:
                       JSL.L CODE_9C9ABC                    ;9E8FDF|22BC9A9C|;
 
          CODE_9E8FE3:
                       LDA.B $B1                            ;9E8FE3|A5B1    |;
                       LSR A                                ;9E8FE5|4A      |;
                       LSR A                                ;9E8FE6|4A      |;
                       LSR A                                ;9E8FE7|4A      |;
                       LSR A                                ;9E8FE8|4A      |;
                       LSR A                                ;9E8FE9|4A      |;
                       LSR A                                ;9E8FEA|4A      |;
                       BIT.W #$0200                         ;9E8FEB|890002  |;
                       BEQ CODE_9E8FF3                      ;9E8FEE|F003    |;
                       ORA.W #$FC00                         ;9E8FF0|0900FC  |;
 
          CODE_9E8FF3:
                       STA.B $A5                            ;9E8FF3|85A5    |;
                       PHA                                  ;9E8FF5|48      |;
                       ASL A                                ;9E8FF6|0A      |;
                       PLA                                  ;9E8FF7|68      |;
                       ROR A                                ;9E8FF8|6A      |;
                       STA.B $A7                            ;9E8FF9|85A7    |;
                       LDA.B $B1                            ;9E8FFB|A5B1    |;
                       SEC                                  ;9E8FFD|38      |;
                       SBC.B $A5                            ;9E8FFE|E5A5    |;
                       SEC                                  ;9E9000|38      |;
                       SBC.B $A7                            ;9E9001|E5A7    |;
                       STA.B $B1                            ;9E9003|85B1    |;
                       BRA CODE_9E904D                      ;9E9005|8046    |;
 
          CODE_9E9007:
                       JMP.W CODE_9E9091                    ;9E9007|4C9190  |;
 
          CODE_9E900A:
                       LDA.B $AD                            ;9E900A|A5AD    |;
                       SEC                                  ;9E900C|38      |;
                       SBC.W #$03E8                         ;9E900D|E9E803  |;
                       BPL CODE_9E9007                      ;9E9010|10F5    |;
                       LDA.B $AD                            ;9E9012|A5AD    |;
                       SEC                                  ;9E9014|38      |;
                       SBC.W #$F000                         ;9E9015|E900F0  |;
                       BPL CODE_9E9034                      ;9E9018|101A    |;
                       LDA.W $0F23,X                        ;9E901A|BD230F  |;
                       SEC                                  ;9E901D|38      |;
                       SBC.W #$000A                         ;9E901E|E90A00  |;
                       BMI CODE_9E9034                      ;9E9021|3011    |;
                       db $BD,$C3,$0E,$85,$0C,$BD,$E3,$0E   ;9E9023|        |;
                       db $85,$0E,$A9,$0D,$00,$22,$D0,$9A   ;9E902B|        |;
                       db $9C                               ;9E9033|        |;
 
          CODE_9E9034:
                       LDA.B $AD                            ;9E9034|A5AD    |;
                       LSR A                                ;9E9036|4A      |;
                       LSR A                                ;9E9037|4A      |;
                       BIT.W #$2000                         ;9E9038|890020  |;
                       BEQ CODE_9E9040                      ;9E903B|F003    |;
                       ORA.W #$C000                         ;9E903D|0900C0  |;
 
          CODE_9E9040:
                       STA.B $AD                            ;9E9040|85AD    |;
                       SEC                                  ;9E9042|38      |;
                       SBC.W #$FC7C                         ;9E9043|E97CFC  |;
                       BMI CODE_9E904D                      ;9E9046|3005    |;
                       LDA.W #$FC18                         ;9E9048|A918FC  |;
                       STA.B $AD                            ;9E904B|85AD    |;
 
          CODE_9E904D:
                       LDA.B $01,S                          ;9E904D|A301    |;
                       LDX.B $B1                            ;9E904F|A6B1    |;
                       JSL.L CODE_808FEB                    ;9E9051|22EB8F80|;
                       LDA.B $09                            ;9E9055|A509    |;
                       STA.B $C5                            ;9E9057|85C5    |;
                       LDA.B $03,S                          ;9E9059|A303    |;
                       LDX.B $AD                            ;9E905B|A6AD    |;
                       JSL.L CODE_808FEB                    ;9E905D|22EB8F80|;
                       LDA.B $C5                            ;9E9061|A5C5    |;
                       SEC                                  ;9E9063|38      |;
                       SBC.B $09                            ;9E9064|E509    |;
                       LDX.B $95                            ;9E9066|A695    |;
                       STA.W $0EC3,X                        ;9E9068|9DC30E  |;
                       LDA.B $03,S                          ;9E906B|A303    |;
                       LDX.B $B1                            ;9E906D|A6B1    |;
                       JSL.L CODE_808FEB                    ;9E906F|22EB8F80|;
                       LDA.B $09                            ;9E9073|A509    |;
                       STA.B $B1                            ;9E9075|85B1    |;
                       LDA.B $01,S                          ;9E9077|A301    |;
                       LDX.B $AD                            ;9E9079|A6AD    |;
                       JSL.L CODE_808FEB                    ;9E907B|22EB8F80|;
                       LDA.B $09                            ;9E907F|A509    |;
                       CLC                                  ;9E9081|18      |;
                       ADC.B $B1                            ;9E9082|65B1    |;
                       LDX.B $95                            ;9E9084|A695    |;
                       STA.W $0EE3,X                        ;9E9086|9DE30E  |;
                       LDA.W $0E01                          ;9E9089|AD010E  |;
                       BMI CODE_9E9091                      ;9E908C|3003    |;
                       STZ.W $0E01                          ;9E908E|9C010E  |;
 
          CODE_9E9091:
                       PLA                                  ;9E9091|68      |;
                       PLA                                  ;9E9092|68      |;
                       PLA                                  ;9E9093|68      |;
                       STA.B $B1                            ;9E9094|85B1    |;
                       PLA                                  ;9E9096|68      |;
                       STA.B $AD                            ;9E9097|85AD    |;
                       CPX.W #$001C                         ;9E9099|E01C00  |;
                       BNE CODE_9E90AD                      ;9E909C|D00F    |;
                       LDA.W $0AD9                          ;9E909E|ADD90A  |;
                       BPL CODE_9E90AD                      ;9E90A1|100A    |;
                       JSL.L CODE_9EC791                    ;9E90A3|2291C79E|;
                       STZ.W BreakAwayActive_flg            ;9E90A7|9C8B1E  |;
                       STZ.W OneTimerFlg                    ;9E90AA|9C891E  |;
 
          CODE_9E90AD:
                       RTL                                  ;9E90AD|6B      |;
 
          CODE_9E90AE:
                       CPX.W #$001C                         ;9E90AE|E01C00  |;
                       BEQ CODE_9E90B6                      ;9E90B1|F003    |;
                       JMP.W CODE_9E92F8                    ;9E90B3|4CF892  |;
 
          CODE_9E90B6:
                       LDY.W $0AD9                          ;9E90B6|ACD90A  |;
                       BMI CODE_9E90C0                      ;9E90B9|3005    |;
                       LDA.W $0F43,Y                        ;9E90BB|B9430F  |;
                       BEQ CODE_9E9116                      ;9E90BE|F056    |;
 
          CODE_9E90C0:
                       LDA.W $0DF9                          ;9E90C0|ADF90D  |;
                       CMP.W #$000D                         ;9E90C3|C90D00  |;
                       BPL CODE_9E9116                      ;9E90C6|104E    |;
                       LDY.B zpCurntTeamLoopVal             ;9E90C8|A491    |;
                       LDA.B $AD                            ;9E90CA|A5AD    |;
                       SEC                                  ;9E90CC|38      |;
                       SBC.W $0D55,Y                        ;9E90CD|F9550D  |;
                       STA.B $AD                            ;9E90D0|85AD    |;
                       CMP.W #$0017                         ;9E90D2|C91700  |;
                       BPL CODE_9E9116                      ;9E90D5|103F    |;
                       LDA.B $AD                            ;9E90D7|A5AD    |;
                       CMP.W #$FFEA                         ;9E90D9|C9EAFF  |;
                       BMI CODE_9E9116                      ;9E90DC|3038    |;
                       LDA.W #$0009                         ;9E90DE|A90900  |;
                       STA.B $B9                            ;9E90E1|85B9    |;
                       LDA.B $B1                            ;9E90E3|A5B1    |;
                       SEC                                  ;9E90E5|38      |;
                       SBC.W $0DB7,Y                        ;9E90E6|F9B70D  |;
                       STA.B $B1                            ;9E90E9|85B1    |;
                       CMP.W #$000A                         ;9E90EB|C90A00  |;
                       BPL CODE_9E9116                      ;9E90EE|1026    |;
                       LDA.W #$0000                         ;9E90F0|A90000  |;
                       SEC                                  ;9E90F3|38      |;
                       SBC.B $B9                            ;9E90F4|E5B9    |;
                       STA.B $B9                            ;9E90F6|85B9    |;
                       LDA.B $B1                            ;9E90F8|A5B1    |;
                       CMP.W #$FFF7                         ;9E90FA|C9F7FF  |;
                       BMI CODE_9E9116                      ;9E90FD|3017    |;
                       LDA.W #$FFFF                         ;9E90FF|A9FFFF  |;
                       STA.W $0CDB                          ;9E9102|8DDB0C  |;
                       LDA.W $0DFF                          ;9E9105|ADFF0D  |;
                       CMP.W #$000D                         ;9E9108|C90D00  |;
                       BMI CODE_9E9117                      ;9E910B|300A    |;
                       db $AD,$FF,$0D,$8D,$F9,$0D,$4C,$AE   ;9E910D|        |;
                       db $92                               ;9E9115|        |;
 
          CODE_9E9116:
                       RTL                                  ;9E9116|6B      |;
 
          CODE_9E9117:
                       STZ.W $14DF                          ;9E9117|9CDF14  |;
                       LDA.W $0AD9                          ;9E911A|ADD90A  |;
                       BMI CODE_9E9148                      ;9E911D|3029    |;
                       db $A8,$A9,$FF,$FF,$8D,$D9,$0A,$A9   ;9E911F|        |;
                       db $08,$00,$99,$03,$12,$AD,$D3,$0D   ;9E9127|        |;
                       db $85,$A9,$B9,$C3,$14,$D0,$08,$A9   ;9E912F|        |;
                       db $00,$00,$38,$E5,$A9,$85,$A9,$A5   ;9E9137|        |;
                       db $A9,$10,$06,$A9,$01,$00,$8D,$DF   ;9E913F|        |;
                       db $14                               ;9E9147|        |;
 
          CODE_9E9148:
                       LDA.W #$FF01                         ;9E9148|A901FF  |;
                       STA.B $A5                            ;9E914B|85A5    |;
                       LDA.W #$FF01                         ;9E914D|A901FF  |;
                       STA.B $0C                            ;9E9150|850C    |;
                       LDA.W $0DD9,X                        ;9E9152|BDD90D  |;
                       SEC                                  ;9E9155|38      |;
                       SBC.W $0EA3,X                        ;9E9156|FDA30E  |;
                       STA.B $A9                            ;9E9159|85A9    |;
                       LDA.W $0DB7,X                        ;9E915B|BDB70D  |;
                       SBC.W $0E83,X                        ;9E915E|FD830E  |;
                       STA.B $AB                            ;9E9161|85AB    |;
                       LDA.B $AA                            ;9E9163|A5AA    |;
                       STA.B $A9                            ;9E9165|85A9    |;
                       CMP.W #$0000                         ;9E9167|C90000  |;
                       BEQ UNREACH_9E91E9                   ;9E916A|F07D    |;
                       BMI CODE_9E9186                      ;9E916C|3018    |;
                       LDA.W #$0000                         ;9E916E|A90000  |;
                       SEC                                  ;9E9171|38      |;
                       SBC.B $A5                            ;9E9172|E5A5    |;
                       STA.B $A5                            ;9E9174|85A5    |;
                       LDA.W #$0000                         ;9E9176|A90000  |;
                       SEC                                  ;9E9179|38      |;
                       SBC.B $0C                            ;9E917A|E50C    |;
                       STA.B $0C                            ;9E917C|850C    |;
                       LDA.W #$0000                         ;9E917E|A90000  |;
                       SEC                                  ;9E9181|38      |;
                       SBC.B $B9                            ;9E9182|E5B9    |;
                       STA.B $B9                            ;9E9184|85B9    |;
 
          CODE_9E9186:
                       LDA.B $B9                            ;9E9186|A5B9    |;
                       CLC                                  ;9E9188|18      |;
                       ADC.B $B1                            ;9E9189|65B1    |;
                       STA.B $B9                            ;9E918B|85B9    |;
                       STA.B $08                            ;9E918D|8508    |;
                       LDA.W $0D77,X                        ;9E918F|BD770D  |;
                       SEC                                  ;9E9192|38      |;
                       SBC.W $0E63,X                        ;9E9193|FD630E  |;
                       STA.B $B1                            ;9E9196|85B1    |;
                       LDA.W $0D55,X                        ;9E9198|BD550D  |;
                       SBC.W $0E43,X                        ;9E919B|FD430E  |;
                       STA.B $B3                            ;9E919E|85B3    |;
                       LDA.B $B2                            ;9E91A0|A5B2    |;
                       STA.B $B1                            ;9E91A2|85B1    |;
                       LDX.B $08                            ;9E91A4|A608    |;
                       JSL.L CODE_809062                    ;9E91A6|22629080|;
                       LDX.B $95                            ;9E91AA|A695    |;
                       LDA.B $A9                            ;9E91AC|A5A9    |;
                       BIT.W #$8000                         ;9E91AE|890080  |;
                       BEQ CODE_9E91B7                      ;9E91B1|F004    |;
                       EOR.W #$FFFF                         ;9E91B3|49FFFF  |;
                       INC A                                ;9E91B6|1A      |;
 
          CODE_9E91B7:
                       STA.B $04                            ;9E91B7|8504    |;
                       LDA.B $0A                            ;9E91B9|A50A    |;
                       BIT.W #$8000                         ;9E91BB|890080  |;
                       BEQ CODE_9E91C4                      ;9E91BE|F004    |;
                       db $49,$FF,$FF,$1A                   ;9E91C0|        |;
 
          CODE_9E91C4:
                       CMP.B $04                            ;9E91C4|C504    |;
                       BCS UNREACH_9E91E9                   ;9E91C6|B021    |;
                       LDA.B $A9                            ;9E91C8|A5A9    |;
                       STA.B $04                            ;9E91CA|8504    |;
                       JSL.L CODE_8091FC                    ;9E91CC|22FC9180|;
                       LDA.B $00                            ;9E91D0|A500    |;
                       STA.B $B9                            ;9E91D2|85B9    |;
                       LDX.B $95                            ;9E91D4|A695    |;
                       LDA.B $AD                            ;9E91D6|A5AD    |;
                       SEC                                  ;9E91D8|38      |;
                       SBC.B $B9                            ;9E91D9|E5B9    |;
                       STA.B $AD                            ;9E91DB|85AD    |;
                       CMP.W #$FFEA                         ;9E91DD|C9EAFF  |;
                       BMI UNREACH_9E91E9                   ;9E91E0|3007    |;
                       LDA.B $AD                            ;9E91E2|A5AD    |;
                       CMP.W #$0017                         ;9E91E4|C91700  |;
                       BMI CODE_9E9212                      ;9E91E7|3029    |;
 
       UNREACH_9E91E9:
                       db $4C,$BE,$92                       ;9E91E9|        |;
 
          CODE_9E91EC:
                       LDA.W $0EFF                          ;9E91EC|ADFF0E  |;
                       CMP.W #$0800                         ;9E91EF|C90008  |;
                       BPL CODE_9E920C                      ;9E91F2|1018    |;
                       CMP.W #$F800                         ;9E91F4|C900F8  |;
                       BMI CODE_9E920C                      ;9E91F7|3013    |;
                       CMP.W #$0000                         ;9E91F9|C90000  |;
                       BPL UNREACH_9E9206                   ;9E91FC|1008    |;
                       LDA.W #$F800                         ;9E91FE|A900F8  |;
                       STA.W $0EFF                          ;9E9201|8DFF0E  |;
                       BRA CODE_9E920C                      ;9E9204|8006    |;
 
       UNREACH_9E9206:
                       db $A9,$00,$08,$8D,$FF,$0E           ;9E9206|        |;
 
          CODE_9E920C:
                       JMP.W CODE_9E8F42                    ;9E920C|4C428F  |;
 
          CODE_9E920F:
                       JMP.W CODE_9EF319                    ;9E920F|4C19F3  |;
 
          CODE_9E9212:
                       STZ.B $A9                            ;9E9212|64A9    |;
                       LDA.W $0DD3                          ;9E9214|ADD30D  |;
                       EOR.B $0C                            ;9E9217|450C    |;
                       BMI CODE_9E91EC                      ;9E9219|30D1    |;
                       LDA.W #$0000                         ;9E921B|A90000  |;
                       SEC                                  ;9E921E|38      |;
                       SBC.B $0C                            ;9E921F|E50C    |;
                       STA.B $0C                            ;9E9221|850C    |;
                       LDA.W #$0000                         ;9E9223|A90000  |;
                       SEC                                  ;9E9226|38      |;
                       SBC.B $A5                            ;9E9227|E5A5    |;
                       STA.B $A5                            ;9E9229|85A5    |;
                       LDA.W $14DF                          ;9E922B|ADDF14  |;
                       BNE CODE_9E91EC                      ;9E922E|D0BC    |;
                       LDA.W $0DF9                          ;9E9230|ADF90D  |;
                       CMP.W #$000D                         ;9E9233|C90D00  |;
                       BEQ CODE_9E9246                      ;9E9236|F00E    |;
                       LDA.B $AD                            ;9E9238|A5AD    |;
                       CMP.W #$0012                         ;9E923A|C91200  |;
                       BPL CODE_9E9246                      ;9E923D|1007    |;
                       LDA.B $AD                            ;9E923F|A5AD    |;
                       CMP.W #$FFEF                         ;9E9241|C9EFFF  |;
                       BPL CODE_9E920F                      ;9E9244|10C9    |;
 
          CODE_9E9246:
                       JSL.L CODE_9EF213                    ;9E9246|2213F29E|;
                       STZ.W BreakAwayActive_flg            ;9E924A|9C8B1E  |;
                       STZ.W OneTimerFlg                    ;9E924D|9C891E  |;
                       LDA.W #$0009                         ;9E9250|A90900  |;
                       JSL.L CODE_9C9ABC                    ;9E9253|22BC9A9C|;
                       LDA.L $7E35E0                        ;9E9257|AFE0357E|;
                       CLC                                  ;9E925B|18      |;
                       ADC.W #$012C                         ;9E925C|692C01  |;
                       STA.L $7E35E0                        ;9E925F|8FE0357E|;
                       LDA.W #$003C                         ;9E9263|A93C00  |;
                       STA.B $81                            ;9E9266|8581    |;
                       LDA.W $19BE                          ;9E9268|ADBE19  |;
                       CLC                                  ;9E926B|18      |;
                       ADC.W #$0028                         ;9E926C|692800  |;
                       BMI CODE_9E9274                      ;9E926F|3003    |;
                       STA.W $19BE                          ;9E9271|8DBE19  |;
 
          CODE_9E9274:
                       JSL.L CODE_808658                    ;9E9274|22588680|;
                       AND.W #$0FFF                         ;9E9278|29FF0F  |;
                       STA.B $A5                            ;9E927B|85A5    |;
                       LDA.W $0DD3                          ;9E927D|ADD30D  |;
                       BMI CODE_9E928A                      ;9E9280|3008    |;
                       LDA.W #$0000                         ;9E9282|A90000  |;
                       SEC                                  ;9E9285|38      |;
                       SBC.B $A5                            ;9E9286|E5A5    |;
                       STA.B $A5                            ;9E9288|85A5    |;
 
          CODE_9E928A:
                       LDA.B $A5                            ;9E928A|A5A5    |;
                       STA.W $0EFF                          ;9E928C|8DFF0E  |;
                       JSL.L CODE_808658                    ;9E928F|22588680|;
                       AND.W #$1FFF                         ;9E9293|29FF1F  |;
                       SEC                                  ;9E9296|38      |;
                       SBC.W #$1000                         ;9E9297|E90010  |;
                       STA.W $0EDF                          ;9E929A|8DDF0E  |;
                       JSL.L CODE_808658                    ;9E929D|22588680|;
                       AND.W #$1FFF                         ;9E92A1|29FF1F  |;
                       SEC                                  ;9E92A4|38      |;
                       SBC.W #$1000                         ;9E92A5|E90010  |;
                       STA.W $0E01                          ;9E92A8|8D010E  |;
                       JMP.W CODE_9EDE5E                    ;9E92AB|4C5EDE  |;
                       db $AD,$01,$0E,$89,$00,$80,$F0,$04   ;9E92AE|        |;
                       db $49,$FF,$FF,$1A,$8D,$01,$0E,$6B   ;9E92B6|        |;
                       db $AD,$DF,$0E,$C9,$00,$08,$10,$18   ;9E92BE|        |;
                       db $C9,$00,$F8,$30,$13,$C9,$00,$00   ;9E92C6|        |;
                       db $10,$08,$A9,$00,$F8,$8D,$DF,$0E   ;9E92CE|        |;
                       db $80,$06,$A9,$00,$08,$8D,$DF,$0E   ;9E92D6|        |;
                       db $64,$A5,$A9,$FF,$00,$85,$A9,$AD   ;9E92DE|        |;
                       db $71,$0D,$38,$ED,$5F,$0E,$85,$AD   ;9E92E6|        |;
                       db $30,$05,$A9,$01,$FF,$85,$A9,$4C   ;9E92EE|        |;
                       db $42,$8F                           ;9E92F6|        |;
 
          CODE_9E92F8:
                       LDA.W $1283,X                        ;9E92F8|BD8312  |;
                       BIT.W #$8000                         ;9E92FB|890080  |;
                       BNE CODE_9E9305                      ;9E92FE|D005    |;
                       CPX.W #$0017                         ;9E9300|E01700  |;
                       BCC CODE_9E9306                      ;9E9303|9001    |;
 
          CODE_9E9305:
                       RTL                                  ;9E9305|6B      |;
 
          CODE_9E9306:
                       LDY.B zpCurntTeamLoopVal             ;9E9306|A491    |;
                       CPY.W #$0018                         ;9E9308|C01800  |;
                       BEQ CODE_9E931A                      ;9E930B|F00D    |;
                       LDA.B $B1                            ;9E930D|A5B1    |;
                       SEC                                  ;9E930F|38      |;
                       SBC.W $0D3D                          ;9E9310|ED3D0D  |;
                       CMP.W #$FF16                         ;9E9313|C916FF  |;
                       BPL CODE_9E9305                      ;9E9316|10ED    |;
                       BRA CODE_9E9325                      ;9E9318|800B    |;
 
          CODE_9E931A:
                       LDA.B $B1                            ;9E931A|A5B1    |;
                       CLC                                  ;9E931C|18      |;
                       ADC.W $0D3D                          ;9E931D|6D3D0D  |;
                       CMP.W #$00EA                         ;9E9320|C9EA00  |;
                       BMI CODE_9E9305                      ;9E9323|30E0    |;
 
          CODE_9E9325:
                       LDA.B $AD                            ;9E9325|A5AD    |;
                       BIT.W #$8000                         ;9E9327|890080  |;
                       BEQ CODE_9E9330                      ;9E932A|F004    |;
                       EOR.W #$FFFF                         ;9E932C|49FFFF  |;
                       INC A                                ;9E932F|1A      |;
 
          CODE_9E9330:
                       SEC                                  ;9E9330|38      |;
                       SBC.W $0D3B                          ;9E9331|ED3B0D  |;
                       CMP.W #$0040                         ;9E9334|C94000  |;
                       BPL CODE_9E9305                      ;9E9337|10CC    |;
                       LDA.B $B1                            ;9E9339|A5B1    |;
                       PHA                                  ;9E933B|48      |;
                       SEC                                  ;9E933C|38      |;
                       SBC.W $0DB7,Y                        ;9E933D|F9B70D  |;
                       STA.B $B1                            ;9E9340|85B1    |;
                       EOR.W #$FFFF                         ;9E9342|49FFFF  |;
                       INC A                                ;9E9345|1A      |;
                       STA.B $A5                            ;9E9346|85A5    |;
                       LDA.B $AD                            ;9E9348|A5AD    |;
                       PHA                                  ;9E934A|48      |;
                       SEC                                  ;9E934B|38      |;
                       SBC.W $0D55,Y                        ;9E934C|F9550D  |;
                       STA.B $A9                            ;9E934F|85A9    |;
                       STA.B $04                            ;9E9351|8504    |;
                       TAX                                  ;9E9353|AA      |;
                       JSL.L CODE_808F7D                    ;9E9354|227D8F80|;
                       STA.B $08                            ;9E9358|8508    |;
                       LDX.B $95                            ;9E935A|A695    |;
                       LSR A                                ;9E935C|4A      |;
                       LSR A                                ;9E935D|4A      |;
                       CMP.W #$0101                         ;9E935E|C90101  |;
                       BCS CODE_9E9379                      ;9E9361|B016    |;
                       STA.B $AD                            ;9E9363|85AD    |;
                       LDA.B $B1                            ;9E9365|A5B1    |;
                       STA.B $06                            ;9E9367|8506    |;
                       TAX                                  ;9E9369|AA      |;
                       JSL.L CODE_808F7D                    ;9E936A|227D8F80|;
                       ASL A                                ;9E936E|0A      |;
                       STA.B $0A                            ;9E936F|850A    |;
                       LDX.B $95                            ;9E9371|A695    |;
                       CLC                                  ;9E9373|18      |;
                       ADC.B $AD                            ;9E9374|65AD    |;
                       CMP.W #$0101                         ;9E9376|C90101  |;
 
          CODE_9E9379:
                       BCS CODE_9E93D9                      ;9E9379|B05E    |;
                       PLA                                  ;9E937B|68      |;
                       STA.B $AD                            ;9E937C|85AD    |;
                       PLA                                  ;9E937E|68      |;
                       STA.B $B1                            ;9E937F|85B1    |;
                       JSR.W CODE_9E93E0                    ;9E9381|20E093  |;
                       LDA.B $B1                            ;9E9384|A5B1    |;
                       PHA                                  ;9E9386|48      |;
                       LDA.B $AD                            ;9E9387|A5AD    |;
                       PHA                                  ;9E9389|48      |;
                       LDA.B $04                            ;9E938A|A504    |;
                       LDY.B $06                            ;9E938C|A406    |;
                       JSL.L CODE_9CA554                    ;9E938E|2254A59C|;
                       INC A                                ;9E9392|1A      |;
                       STA.B $AD                            ;9E9393|85AD    |;
                       LDA.B $A5                            ;9E9395|A5A5    |;
                       XBA                                  ;9E9397|EB      |;
                       AND.W #$FF00                         ;9E9398|2900FF  |;
                       TAX                                  ;9E939B|AA      |;
                       LDA.B $AD                            ;9E939C|A5AD    |;
                       JSL.L CODE_809327                    ;9E939E|22279380|;
                       CMP.W #$00FF                         ;9E93A2|C9FF00  |;
                       BMI CODE_9E93AA                      ;9E93A5|3003    |;
                       db $A9,$FF,$00                       ;9E93A7|        |;
 
          CODE_9E93AA:
                       CMP.W #$FF01                         ;9E93AA|C901FF  |;
                       BPL CODE_9E93B2                      ;9E93AD|1003    |;
                       db $A9,$01,$FF                       ;9E93AF|        |;
 
          CODE_9E93B2:
                       STA.B $A5                            ;9E93B2|85A5    |;
                       LDA.B $A9                            ;9E93B4|A5A9    |;
                       XBA                                  ;9E93B6|EB      |;
                       AND.W #$FF00                         ;9E93B7|2900FF  |;
                       TAX                                  ;9E93BA|AA      |;
                       LDA.B $AD                            ;9E93BB|A5AD    |;
                       JSL.L CODE_809327                    ;9E93BD|22279380|;
                       CMP.W #$00FF                         ;9E93C1|C9FF00  |;
                       BMI CODE_9E93C9                      ;9E93C4|3003    |;
                       db $A9,$FF,$00                       ;9E93C6|        |;
 
          CODE_9E93C9:
                       CMP.W #$FF01                         ;9E93C9|C901FF  |;
                       BPL CODE_9E93D1                      ;9E93CC|1003    |;
                       db $A9,$01,$FF                       ;9E93CE|        |;
 
          CODE_9E93D1:
                       STA.B $A9                            ;9E93D1|85A9    |;
                       LDX.B $95                            ;9E93D3|A695    |;
                       JSL.L CODE_9E8F42                    ;9E93D5|22428F9E|;
 
          CODE_9E93D9:
                       PLA                                  ;9E93D9|68      |;
                       STA.B $AD                            ;9E93DA|85AD    |;
                       PLA                                  ;9E93DC|68      |;
                       STA.B $B1                            ;9E93DD|85B1    |;
                       RTL                                  ;9E93DF|6B      |;
 
          CODE_9E93E0:
                       LDA.B $A5                            ;9E93E0|A5A5    |;
                       PHA                                  ;9E93E2|48      |;
                       LDA.B $A9                            ;9E93E3|A5A9    |;
                       PHA                                  ;9E93E5|48      |;
                       LDA.W $0792                          ;9E93E6|AD9207  |;
                       AND.W #$01C0                         ;9E93E9|29C001  |;
                       BNE CODE_9E9429                      ;9E93EC|D03B    |;
                       LDA.W $11A3,X                        ;9E93EE|BDA311  |;
                       CMP.W #$F342                         ;9E93F1|C942F3  |;
                       BNE CODE_9E9429                      ;9E93F4|D033    |;
                       db $A4,$91,$AD,$D3,$0D,$38,$F9,$B7   ;9E93F6|        |;
                       db $0D,$C9,$80,$FF,$30,$25,$C9,$80   ;9E93FE|        |;
                       db $00,$10,$20,$BD,$C3,$0E,$85,$A5   ;9E9406|        |;
                       db $BD,$E3,$0E,$85,$A9,$C9,$FF,$DF   ;9E940E|        |;
                       db $30,$18,$C9,$01,$20,$10,$13,$A5   ;9E9416|        |;
                       db $A5,$C9,$FF,$DF,$30,$0C,$C9,$01   ;9E941E|        |;
                       db $20,$10,$07                       ;9E9426|        |;
 
          CODE_9E9429:
                       PLA                                  ;9E9429|68      |;
                       STA.B $A9                            ;9E942A|85A9    |;
                       PLA                                  ;9E942C|68      |;
                       STA.B $A5                            ;9E942D|85A5    |;
                       RTS                                  ;9E942F|60      |;
                       db $68,$68,$A5,$A5,$4A,$4A,$4A,$89   ;9E9430|        |;
                       db $00,$10,$F0,$03,$09,$00,$E0,$85   ;9E9438|        |;
                       db $A5,$C9,$00,$80,$6A,$18,$65,$A5   ;9E9440|        |;
                       db $85,$A5,$A4,$91,$99,$C3,$0E,$A5   ;9E9448|        |;
                       db $A9,$4A,$4A,$4A,$89,$00,$10,$F0   ;9E9450|        |;
                       db $03,$09,$00,$E0,$85,$A9,$C9,$00   ;9E9458|        |;
                       db $80,$6A,$18,$65,$A9,$85,$A9,$99   ;9E9460|        |;
                       db $E3,$0E,$9E,$C3,$0E,$9E,$E3,$0E   ;9E9468|        |;
                       db $A9,$40,$00,$0C,$D8,$15,$AD,$D6   ;9E9470|        |;
                       db $15,$D0,$B4,$68,$A9,$08,$00,$85   ;9E9478|        |;
                       db $A5,$4C,$8A,$B8                   ;9E9480|        |;
 
          CODE_9E9484:
                       LDA.W $1283,X                        ;9E9484|BD8312  |;
                       BIT.W #$8000                         ;9E9487|890080  |;
                       BNE CODE_9E9491                      ;9E948A|D005    |;
                       CPX.W #$0018                         ;9E948C|E01800  |;
                       BCC CODE_9E9492                      ;9E948F|9001    |;
 
          CODE_9E9491:
                       RTL                                  ;9E9491|6B      |;
 
          CODE_9E9492:
                       LDA.W $15A3,X                        ;9E9492|BDA315  |;
                       STA.B $A9                            ;9E9495|85A9    |;
 
          CODE_9E9497:
                       LDY.B $A9                            ;9E9497|A4A9    |;
                       CPY.W #$000F                         ;9E9499|C00F00  |;
                       BEQ CODE_9E94DE                      ;9E949C|F040    |;
                       LDA.W $15C4,Y                        ;9E949E|B9C415  |;
                       AND.W #$00FF                         ;9E94A1|29FF00  |;
                       TAY                                  ;9E94A4|A8      |;
                       LDA.W $1583,Y                        ;9E94A5|B98315  |;
                       SEC                                  ;9E94A8|38      |;
                       SBC.B $B1                            ;9E94A9|E5B1    |;
                       SEC                                  ;9E94AB|38      |;
                       SBC.W #$000E                         ;9E94AC|E90E00  |;
                       BPL CODE_9E94DE                      ;9E94AF|102D    |;
                       LDA.W $0F43,Y                        ;9E94B1|B9430F  |;
                       BMI CODE_9E94DA                      ;9E94B4|3024    |;
                       LDA.W $0D55,Y                        ;9E94B6|B9550D  |;
                       SEC                                  ;9E94B9|38      |;
                       SBC.B $AD                            ;9E94BA|E5AD    |;
                       CMP.W #$FFF1                         ;9E94BC|C9F1FF  |;
                       BMI CODE_9E94DA                      ;9E94BF|3019    |;
                       CMP.W #$000F                         ;9E94C1|C90F00  |;
                       BPL CODE_9E94DA                      ;9E94C4|1014    |;
                       LDA.W $1283,Y                        ;9E94C6|B98312  |;
                       AND.W #$8000                         ;9E94C9|290080  |;
                       ORA.W $1563,Y                        ;9E94CC|196315  |;
                       BNE CODE_9E94DA                      ;9E94CF|D009    |;
                       CPY.W #$0018                         ;9E94D1|C01800  |;
                       BCS CODE_9E94DA                      ;9E94D4|B004    |;
                       JSL.L CODE_9E9528                    ;9E94D6|2228959E|;
 
          CODE_9E94DA:
                       INC.B $A9                            ;9E94DA|E6A9    |;
                       BRA CODE_9E9497                      ;9E94DC|80B9    |;
 
          CODE_9E94DE:
                       LDA.W $15A3,X                        ;9E94DE|BDA315  |;
                       BEQ CODE_9E9527                      ;9E94E1|F044    |;
                       STA.B $A9                            ;9E94E3|85A9    |;
 
          CODE_9E94E5:
                       LDY.B $A9                            ;9E94E5|A4A9    |;
                       LDA.W $15C2,Y                        ;9E94E7|B9C215  |;
                       AND.W #$00FF                         ;9E94EA|29FF00  |;
                       TAY                                  ;9E94ED|A8      |;
                       LDA.B $B1                            ;9E94EE|A5B1    |;
                       SEC                                  ;9E94F0|38      |;
                       SBC.W $1583,Y                        ;9E94F1|F98315  |;
                       SEC                                  ;9E94F4|38      |;
                       SBC.W #$000E                         ;9E94F5|E90E00  |;
                       BPL CODE_9E9527                      ;9E94F8|102D    |;
                       LDA.W $0F43,Y                        ;9E94FA|B9430F  |;
                       BMI CODE_9E9523                      ;9E94FD|3024    |;
                       LDA.W $0D55,Y                        ;9E94FF|B9550D  |;
                       SEC                                  ;9E9502|38      |;
                       SBC.B $AD                            ;9E9503|E5AD    |;
                       CMP.W #$FFF1                         ;9E9505|C9F1FF  |;
                       BMI CODE_9E9523                      ;9E9508|3019    |;
                       CMP.W #$000F                         ;9E950A|C90F00  |;
                       BPL CODE_9E9523                      ;9E950D|1014    |;
                       LDA.W $1283,Y                        ;9E950F|B98312  |;
                       AND.W #$8000                         ;9E9512|290080  |;
                       ORA.W $1563,Y                        ;9E9515|196315  |;
                       BNE CODE_9E9523                      ;9E9518|D009    |;
                       CPY.W #$0018                         ;9E951A|C01800  |;
                       BCS CODE_9E9523                      ;9E951D|B004    |;
                       JSL.L CODE_9E9528                    ;9E951F|2228959E|;
 
          CODE_9E9523:
                       DEC.B $A9                            ;9E9523|C6A9    |;
                       BNE CODE_9E94E5                      ;9E9525|D0BE    |;
 
          CODE_9E9527:
                       RTL                                  ;9E9527|6B      |;
 
          CODE_9E9528:
                       LDA.B $A5                            ;9E9528|A5A5    |;
                       PHA                                  ;9E952A|48      |;
                       LDA.B $A9                            ;9E952B|A5A9    |;
                       PHA                                  ;9E952D|48      |;
                       LDA.B $AB                            ;9E952E|A5AB    |;
                       PHA                                  ;9E9530|48      |;
                       LDA.B $AD                            ;9E9531|A5AD    |;
                       PHA                                  ;9E9533|48      |;
                       LDA.B $B1                            ;9E9534|A5B1    |;
                       PHA                                  ;9E9536|48      |;
                       LDA.B $B5                            ;9E9537|A5B5    |;
                       PHA                                  ;9E9539|48      |;
                       LDA.B $B9                            ;9E953A|A5B9    |;
                       PHA                                  ;9E953C|48      |;
                       STY.B zpCurntTeamLoopVal             ;9E953D|8491    |;
                       LDA.W $0D55,Y                        ;9E953F|B9550D  |;
                       SEC                                  ;9E9542|38      |;
                       SBC.W $0D55,X                        ;9E9543|FD550D  |;
                       STA.B $AD                            ;9E9546|85AD    |;
                       LDA.W $0DB7,Y                        ;9E9548|B9B70D  |;
                       SEC                                  ;9E954B|38      |;
                       SBC.W $0DB7,X                        ;9E954C|FDB70D  |;
                       STA.B $B1                            ;9E954F|85B1    |;
                       LDY.B $AD                            ;9E9551|A4AD    |;
                       JSL.L CODE_9CA554                    ;9E9553|2254A59C|;
                       CMP.W #$0010                         ;9E9557|C91000  |;
                       BMI CODE_9E955F                      ;9E955A|3003    |;
                       JMP.W CODE_9E976E                    ;9E955C|4C6E97  |;
 
          CODE_9E955F:
                       LDY.B zpCurntTeamLoopVal             ;9E955F|A491    |;
                       LDA.W $0EC3,X                        ;9E9561|BDC30E  |;
                       SEC                                  ;9E9564|38      |;
                       SBC.W $0EC3,Y                        ;9E9565|F9C30E  |;
                       STA.B $A5                            ;9E9568|85A5    |;
                       LDA.W $0EE3,X                        ;9E956A|BDE30E  |;
                       SEC                                  ;9E956D|38      |;
                       SBC.W $0EE3,Y                        ;9E956E|F9E30E  |;
                       STA.B $A9                            ;9E9571|85A9    |;
                       LDA.B $A5                            ;9E9573|A5A5    |;
                       ORA.B $A9                            ;9E9575|05A9    |;
                       BNE CODE_9E957C                      ;9E9577|D003    |;
                       JMP.W CODE_9E976E                    ;9E9579|4C6E97  |;
 
          CODE_9E957C:
                       LDA.B $A9                            ;9E957C|A5A9    |;
                       PHA                                  ;9E957E|48      |;
                       LDA.B $A5                            ;9E957F|A5A5    |;
                       PHA                                  ;9E9581|48      |;
                       LDA.B $B1                            ;9E9582|A5B1    |;
                       LDX.B $A9                            ;9E9584|A6A9    |;
                       JSL.L CODE_808FEB                    ;9E9586|22EB8F80|;
                       LDA.B $0A                            ;9E958A|A50A    |;
                       STA.B $AB                            ;9E958C|85AB    |;
                       LDA.B $08                            ;9E958E|A508    |;
                       STA.B $A9                            ;9E9590|85A9    |;
                       LDA.B $AD                            ;9E9592|A5AD    |;
                       LDX.B $A5                            ;9E9594|A6A5    |;
                       JSL.L CODE_808FEB                    ;9E9596|22EB8F80|;
                       LDX.B $95                            ;9E959A|A695    |;
                       LDA.B $08                            ;9E959C|A508    |;
                       CLC                                  ;9E959E|18      |;
                       ADC.B $A9                            ;9E959F|65A9    |;
                       STA.B $A9                            ;9E95A1|85A9    |;
                       LDA.B $0A                            ;9E95A3|A50A    |;
                       ADC.B $AB                            ;9E95A5|65AB    |;
                       STA.B $AB                            ;9E95A7|85AB    |;
                       BPL CODE_9E95AE                      ;9E95A9|1003    |;
                       JMP.W CODE_9E9784                    ;9E95AB|4C8497  |;
 
          CODE_9E95AE:
                       LDA.W $11A3,X                        ;9E95AE|BDA311  |;
                       CMP.W #$F3A6                         ;9E95B1|C9A6F3  |;
                       BCC CODE_9E95DC                      ;9E95B4|9026    |;
                       CMP.W #$F46B                         ;9E95B6|C96BF4  |;
                       BCS CODE_9E95DC                      ;9E95B9|B021    |;
                       db $9E,$E3,$14,$9E,$43,$15,$BC,$03   ;9E95BB|        |;
                       db $0F,$B9,$A3,$11,$C9,$A6,$F3,$90   ;9E95C3|        |;
                       db $0E,$C9,$6B,$F4,$B0,$09,$A9,$00   ;9E95CB|        |;
                       db $00,$99,$E3,$14,$99,$43,$15,$A4   ;9E95D3|        |;
                       db $91                               ;9E95DB|        |;
 
          CODE_9E95DC:
                       LDA.W $11A3,Y                        ;9E95DC|B9A311  |;
                       CMP.W #$F3A6                         ;9E95DF|C9A6F3  |;
                       BCC CODE_9E960A                      ;9E95E2|9026    |;
                       CMP.W #$F46B                         ;9E95E4|C96BF4  |;
                       BCS CODE_9E960A                      ;9E95E7|B021    |;
                       LDA.W #$0000                         ;9E95E9|A90000  |;
                       STA.W $14E3,Y                        ;9E95EC|99E314  |;
                       STA.W $1543,Y                        ;9E95EF|994315  |;
                       LDX.W $0F03,Y                        ;9E95F2|BE030F  |;
                       LDA.W $11A3,X                        ;9E95F5|BDA311  |;
                       CMP.W #$F3A6                         ;9E95F8|C9A6F3  |;
                       BCC CODE_9E9608                      ;9E95FB|900B    |;
                       CMP.W #$F46B                         ;9E95FD|C96BF4  |;
                       BCS CODE_9E9608                      ;9E9600|B006    |;
                       STZ.W $14E3,X                        ;9E9602|9EE314  |;
                       STZ.W $1543,X                        ;9E9605|9E4315  |;
 
          CODE_9E9608:
                       LDX.B $95                            ;9E9608|A695    |;
 
          CODE_9E960A:
                       LDA.B $AA                            ;9E960A|A5AA    |;
                       STA.B $A9                            ;9E960C|85A9    |;
                       LDA.W $1503,X                        ;9E960E|BD0315  |;
                       CMP.W $1503,Y                        ;9E9611|D90315  |;
                       BEQ CODE_9E9692                      ;9E9614|F07C    |;
                       LDA.B $A9                            ;9E9616|A5A9    |;
                       LSR A                                ;9E9618|4A      |;
                       LSR A                                ;9E9619|4A      |;
                       LSR A                                ;9E961A|4A      |;
                       LSR A                                ;9E961B|4A      |;
                       CMP.W #$0005                         ;9E961C|C90500  |;
                       BCS CODE_9E9624                      ;9E961F|B003    |;
                       LDA.W #$0005                         ;9E9621|A90500  |;
 
          CODE_9E9624:
                       STA.B $B5                            ;9E9624|85B5    |;
                       LDA.W $11A3,X                        ;9E9626|BDA311  |;
                       CMP.W #$F208                         ;9E9629|C908F2  |;
                       BCC CODE_9E963C                      ;9E962C|900E    |;
                       CMP.W #$F343                         ;9E962E|C943F3  |;
                       BCS CODE_9E963C                      ;9E9631|B009    |;
 
          CODE_9E9633:
                       LDA.B $B5                            ;9E9633|A5B5    |;
                       LSR A                                ;9E9635|4A      |;
                       ADC.B $B5                            ;9E9636|65B5    |;
                       STA.B $B5                            ;9E9638|85B5    |;
                       BRA CODE_9E9649                      ;9E963A|800D    |;
 
          CODE_9E963C:
                       LDA.W $11A3,Y                        ;9E963C|B9A311  |;
                       CMP.W #$F208                         ;9E963F|C908F2  |;
                       BCC CODE_9E9649                      ;9E9642|9005    |;
                       CMP.W #$F343                         ;9E9644|C943F3  |;
                       BCC CODE_9E9633                      ;9E9647|90EA    |;
 
          CODE_9E9649:
                       LDA.B $B5                            ;9E9649|A5B5    |;
                       CLC                                  ;9E964B|18      |;
                       ADC.W $0F23,X                        ;9E964C|7D230F  |;
                       STA.W $0F23,X                        ;9E964F|9D230F  |;
                       LDA.B $B5                            ;9E9652|A5B5    |;
                       CLC                                  ;9E9654|18      |;
                       ADC.W $0F23,Y                        ;9E9655|79230F  |;
                       STA.W $0F23,Y                        ;9E9658|99230F  |;
                       TXA                                  ;9E965B|8A      |;
                       STA.W $0F03,Y                        ;9E965C|99030F  |;
                       TYA                                  ;9E965F|98      |;
                       STA.W $0F03,X                        ;9E9660|9D030F  |;
                       LDA.B $B5                            ;9E9663|A5B5    |;
                       CMP.W #$0014                         ;9E9665|C91400  |;
                       BCC CODE_9E9678                      ;9E9668|900E    |;
                       CPX.W $0AD9                          ;9E966A|ECD90A  |;
                       BEQ CODE_9E9674                      ;9E966D|F005    |;
                       CPY.W $0AD9                          ;9E966F|CCD90A  |;
                       BNE CODE_9E9678                      ;9E9672|D004    |;
 
          CODE_9E9674:
                       JSL.L CODE_9E9B0E                    ;9E9674|220E9B9E|;
 
          CODE_9E9678:
                       LDA.B $A9                            ;9E9678|A5A9    |;
                       PHA                                  ;9E967A|48      |;
                       LDA.B $AD                            ;9E967B|A5AD    |;
                       PHA                                  ;9E967D|48      |;
                       LDA.B $B1                            ;9E967E|A5B1    |;
                       PHA                                  ;9E9680|48      |;
                       JSL.L CODE_9EBA4F                    ;9E9681|224FBA9E|;
                       JSL.L CODE_9E9FF9                    ;9E9685|22F99F9E|;
                       PLA                                  ;9E9689|68      |;
                       STA.B $B1                            ;9E968A|85B1    |;
                       PLA                                  ;9E968C|68      |;
                       STA.B $AD                            ;9E968D|85AD    |;
                       PLA                                  ;9E968F|68      |;
                       STA.B $A9                            ;9E9690|85A9    |;
 
          CODE_9E9692:
                       LDA.B $A9                            ;9E9692|A5A9    |;
                       STA.B $B5                            ;9E9694|85B5    |;
                       PLA                                  ;9E9696|68      |;
                       STA.B $A5                            ;9E9697|85A5    |;
                       PLA                                  ;9E9699|68      |;
                       STA.B $A9                            ;9E969A|85A9    |;
                       LDA.W $0CDB                          ;9E969C|ADDB0C  |;
                       BPL CODE_9E96A4                      ;9E969F|1003    |;
                       JMP.W CODE_9E976E                    ;9E96A1|4C6E97  |;
 
          CODE_9E96A4:
                       LDA.B $AD                            ;9E96A4|A5AD    |;
                       LDX.B $A9                            ;9E96A6|A6A9    |;
                       JSL.L CODE_808FEB                    ;9E96A8|22EB8F80|;
                       LDA.B $0A                            ;9E96AC|A50A    |;
                       STA.B $AB                            ;9E96AE|85AB    |;
                       LDA.B $08                            ;9E96B0|A508    |;
                       STA.B $A9                            ;9E96B2|85A9    |;
                       LDA.B $B1                            ;9E96B4|A5B1    |;
                       LDX.B $A5                            ;9E96B6|A6A5    |;
                       JSL.L CODE_808FEB                    ;9E96B8|22EB8F80|;
                       LDA.B $08                            ;9E96BC|A508    |;
                       SEC                                  ;9E96BE|38      |;
                       SBC.B $A9                            ;9E96BF|E5A9    |;
                       STA.B $A9                            ;9E96C1|85A9    |;
                       LDA.B $0A                            ;9E96C3|A50A    |;
                       SBC.B $AB                            ;9E96C5|E5AB    |;
                       STA.B $AB                            ;9E96C7|85AB    |;
                       LDA.B $AA                            ;9E96C9|A5AA    |;
                       STA.B $B9                            ;9E96CB|85B9    |;
                       LDX.B $95                            ;9E96CD|A695    |;
                       LDA.W $12C3,X                        ;9E96CF|BDC312  |;
                       CLC                                  ;9E96D2|18      |;
                       ADC.W #$008C                         ;9E96D3|698C00  |;
                       STA.B $A5                            ;9E96D6|85A5    |;
                       LDY.B zpCurntTeamLoopVal             ;9E96D8|A491    |;
                       LDA.W $12C3,Y                        ;9E96DA|B9C312  |;
                       CLC                                  ;9E96DD|18      |;
                       ADC.W #$008C                         ;9E96DE|698C00  |;
                       STA.B $A9                            ;9E96E1|85A9    |;
                       LDA.B $A9                            ;9E96E3|A5A9    |;
                       CLC                                  ;9E96E5|18      |;
                       ADC.B $A5                            ;9E96E6|65A5    |;
                       STA.B $A9                            ;9E96E8|85A9    |;
                       LDA.B $A5                            ;9E96EA|A5A5    |;
                       LDX.B $B5                            ;9E96EC|A6B5    |;
                       JSL.L CODE_808FC9                    ;9E96EE|22C98F80|;
                       LDA.B $A9                            ;9E96F2|A5A9    |;
                       STA.B $04                            ;9E96F4|8504    |;
                       JSL.L CODE_8091FC                    ;9E96F6|22FC9180|;
                       LDA.B $00                            ;9E96FA|A500    |;
                       STA.B $A5                            ;9E96FC|85A5    |;
                       STA.B $A9                            ;9E96FE|85A9    |;
                       LDA.B $B1                            ;9E9700|A5B1    |;
                       LDX.B $B9                            ;9E9702|A6B9    |;
                       JSL.L CODE_808FEB                    ;9E9704|22EB8F80|;
                       LDA.B $08                            ;9E9708|A508    |;
                       STA.B $C5                            ;9E970A|85C5    |;
                       LDA.B $AD                            ;9E970C|A5AD    |;
                       LDX.B $A5                            ;9E970E|A6A5    |;
                       JSL.L CODE_808FEB                    ;9E9710|22EB8F80|;
                       LDA.B $08                            ;9E9714|A508    |;
                       CLC                                  ;9E9716|18      |;
                       ADC.B $C5                            ;9E9717|65C5    |;
                       LDX.B $95                            ;9E9719|A695    |;
                       CLC                                  ;9E971B|18      |;
                       ADC.W $0EC3,Y                        ;9E971C|79C30E  |;
                       STA.W $0EC3,X                        ;9E971F|9DC30E  |;
                       LDA.B $AD                            ;9E9722|A5AD    |;
                       LDX.B $B9                            ;9E9724|A6B9    |;
                       JSL.L CODE_808FEB                    ;9E9726|22EB8F80|;
                       LDA.B $08                            ;9E972A|A508    |;
                       STA.B $C5                            ;9E972C|85C5    |;
                       LDA.B $B1                            ;9E972E|A5B1    |;
                       LDX.B $A5                            ;9E9730|A6A5    |;
                       JSL.L CODE_808FEB                    ;9E9732|22EB8F80|;
                       LDA.B $08                            ;9E9736|A508    |;
                       SEC                                  ;9E9738|38      |;
                       SBC.B $C5                            ;9E9739|E5C5    |;
                       LDX.B $95                            ;9E973B|A695    |;
                       CLC                                  ;9E973D|18      |;
                       ADC.W $0EE3,Y                        ;9E973E|79E30E  |;
                       STA.W $0EE3,X                        ;9E9741|9DE30E  |;
                       LDA.B $AD                            ;9E9744|A5AD    |;
                       LDX.B $A9                            ;9E9746|A6A9    |;
                       JSL.L CODE_808FEB                    ;9E9748|22EB8F80|;
                       LDA.B $08                            ;9E974C|A508    |;
                       CLC                                  ;9E974E|18      |;
                       ADC.W $0EC3,Y                        ;9E974F|79C30E  |;
                       STA.W $0EC3,Y                        ;9E9752|99C30E  |;
                       LDA.B $B1                            ;9E9755|A5B1    |;
                       LDX.B $A9                            ;9E9757|A6A9    |;
                       JSL.L CODE_808FEB                    ;9E9759|22EB8F80|;
                       LDA.B $08                            ;9E975D|A508    |;
                       CLC                                  ;9E975F|18      |;
                       ADC.W $0EE3,Y                        ;9E9760|79E30E  |;
                       STA.W $0EE3,Y                        ;9E9763|99E30E  |;
                       LDX.B $95                            ;9E9766|A695    |;
                       LDA.W #$FFFF                         ;9E9768|A9FFFF  |;
                       STA.W $0CDB                          ;9E976B|8DDB0C  |;
 
          CODE_9E976E:
                       PLA                                  ;9E976E|68      |;
                       STA.B $B9                            ;9E976F|85B9    |;
                       PLA                                  ;9E9771|68      |;
                       STA.B $B5                            ;9E9772|85B5    |;
                       PLA                                  ;9E9774|68      |;
                       STA.B $B1                            ;9E9775|85B1    |;
                       PLA                                  ;9E9777|68      |;
                       STA.B $AD                            ;9E9778|85AD    |;
                       PLA                                  ;9E977A|68      |;
                       STA.B $AB                            ;9E977B|85AB    |;
                       PLA                                  ;9E977D|68      |;
                       STA.B $A9                            ;9E977E|85A9    |;
                       PLA                                  ;9E9780|68      |;
                       STA.B $A5                            ;9E9781|85A5    |;
                       RTL                                  ;9E9783|6B      |;
 
          CODE_9E9784:
                       PLA                                  ;9E9784|68      |;
                       PLA                                  ;9E9785|68      |;
                       BRA CODE_9E976E                      ;9E9786|80E6    |;
 
          CODE_9E9788:
                       LDA.W $0DF9                          ;9E9788|ADF90D  |;
                       SEC                                  ;9E978B|38      |;
                       SBC.W #$0010                         ;9E978C|E91000  |;
                       BPL CODE_9E97DC                      ;9E978F|104B    |;
                       LDY.W $15BF                          ;9E9791|ACBF15  |;
 
          CODE_9E9794:
                       STY.B $A9                            ;9E9794|84A9    |;
                       CPY.W #$000F                         ;9E9796|C00F00  |;
                       BEQ CODE_9E97B8                      ;9E9799|F01D    |;
                       LDA.W $15C4,Y                        ;9E979B|B9C415  |;
                       AND.W #$00FF                         ;9E979E|29FF00  |;
                       TAY                                  ;9E97A1|A8      |;
                       LDA.W $1583,Y                        ;9E97A2|B98315  |;
                       SEC                                  ;9E97A5|38      |;
                       SBC.W $0DD3                          ;9E97A6|EDD30D  |;
                       SEC                                  ;9E97A9|38      |;
                       SBC.W #$0028                         ;9E97AA|E92800  |;
                       BPL CODE_9E97B8                      ;9E97AD|1009    |;
                       JSL.L CODE_9E97DD                    ;9E97AF|22DD979E|;
                       LDY.B $A9                            ;9E97B3|A4A9    |;
                       INY                                  ;9E97B5|C8      |;
                       BRA CODE_9E9794                      ;9E97B6|80DC    |;
 
          CODE_9E97B8:
                       LDY.W $15BF                          ;9E97B8|ACBF15  |;
                       BEQ CODE_9E97DC                      ;9E97BB|F01F    |;
 
          CODE_9E97BD:
                       STY.B $A9                            ;9E97BD|84A9    |;
                       LDA.W $15C2,Y                        ;9E97BF|B9C215  |;
                       AND.W #$00FF                         ;9E97C2|29FF00  |;
                       TAY                                  ;9E97C5|A8      |;
                       LDA.W $0DD3                          ;9E97C6|ADD30D  |;
                       SEC                                  ;9E97C9|38      |;
                       SBC.W $1583,Y                        ;9E97CA|F98315  |;
                       SEC                                  ;9E97CD|38      |;
                       SBC.W #$0028                         ;9E97CE|E92800  |;
                       BPL CODE_9E97DC                      ;9E97D1|1009    |;
                       JSL.L CODE_9E97DD                    ;9E97D3|22DD979E|;
                       LDY.B $A9                            ;9E97D7|A4A9    |;
                       DEY                                  ;9E97D9|88      |;
                       BNE CODE_9E97BD                      ;9E97DA|D0E1    |;
 
          CODE_9E97DC:
                       RTL                                  ;9E97DC|6B      |;
 
          CODE_9E97DD:
                       STY.B zpCurntTeamLoopVal             ;9E97DD|8491    |;
                       CPY.W $0AD9                          ;9E97DF|CCD90A  |;
                       BEQ CODE_9E97F6                      ;9E97E2|F012    |;
                       CPY.W #$0018                         ;9E97E4|C01800  |;
                       BCS CODE_9E97F6                      ;9E97E7|B00D    |;
                       LDA.W $0F43,Y                        ;9E97E9|B9430F  |;
                       BMI CODE_9E97F6                      ;9E97EC|3008    |;
                       LDA.W $1563,Y                        ;9E97EE|B96315  |;
                       ORA.W $1203,Y                        ;9E97F1|190312  |;
                       BEQ CODE_9E97FD                      ;9E97F4|F007    |;
 
          CODE_9E97F6:
                       RTL                                  ;9E97F6|6B      |;
 
          CODE_9E97F7:
                       JMP.W CODE_9E9899                    ;9E97F7|4C9998  |;
 
          CODE_9E97FA:
                       JMP.W CODE_9E9987                    ;9E97FA|4C8799  |;
 
          CODE_9E97FD:
                       STX.B $87                            ;9E97FD|8687    |;
                       LDX.W #$0000                         ;9E97FF|A20000  |;
 
          CODE_9E9802:
                       LDA.B $A5,X                          ;9E9802|B5A5    |;
                       PHA                                  ;9E9804|48      |;
                       INX                                  ;9E9805|E8      |;
                       INX                                  ;9E9806|E8      |;
                       CPX.W #$001C                         ;9E9807|E01C00  |;
                       BNE CODE_9E9802                      ;9E980A|D0F6    |;
                       LDX.B $87                            ;9E980C|A687    |;
                       LDA.W $1283,Y                        ;9E980E|B98312  |;
                       BIT.W #$1000                         ;9E9811|890010  |;
                       BNE CODE_9E97F7                      ;9E9814|D0E1    |;
                       LDA.W $0F43,Y                        ;9E9816|B9430F  |;
                       BEQ CODE_9E97FA                      ;9E9819|F0DF    |;
                       LDA.W $0DF9                          ;9E981B|ADF90D  |;
                       CMP.W #$0005                         ;9E981E|C90500  |;
                       BPL CODE_9E97F7                      ;9E9821|10D4    |;
                       LDA.W $0E01                          ;9E9823|AD010E  |;
                       CMP.W #$0100                         ;9E9826|C90001  |;
                       BPL CODE_9E97F7                      ;9E9829|10CC    |;
                       TYA                                  ;9E982B|98      |;
                       JSL.L CODE_9BC002                    ;9E982C|2202C09B|;
                       LDY.B zpCurntTeamLoopVal             ;9E9830|A491    |;
                       LDA.B $A5                            ;9E9832|A5A5    |;
                       CLC                                  ;9E9834|18      |;
                       ADC.W $0D55,Y                        ;9E9835|79550D  |;
                       SEC                                  ;9E9838|38      |;
                       SBC.W $0D71                          ;9E9839|ED710D  |;
                       BIT.W #$8000                         ;9E983C|890080  |;
                       BEQ CODE_9E9845                      ;9E983F|F004    |;
                       EOR.W #$FFFF                         ;9E9841|49FFFF  |;
                       INC A                                ;9E9844|1A      |;
 
          CODE_9E9845:
                       CMP.W #$000F                         ;9E9845|C90F00  |;
                       BCS CODE_9E9899                      ;9E9848|B04F    |;
                       STA.B $A5                            ;9E984A|85A5    |;
                       LDA.B $A9                            ;9E984C|A5A9    |;
                       CLC                                  ;9E984E|18      |;
                       ADC.W $0DB7,Y                        ;9E984F|79B70D  |;
                       SEC                                  ;9E9852|38      |;
                       SBC.W $0DD3                          ;9E9853|EDD30D  |;
                       BIT.W #$8000                         ;9E9856|890080  |;
                       BEQ CODE_9E985F                      ;9E9859|F004    |;
                       EOR.W #$FFFF                         ;9E985B|49FFFF  |;
                       INC A                                ;9E985E|1A      |;
 
          CODE_9E985F:
                       CMP.W #$000F                         ;9E985F|C90F00  |;
                       BCS CODE_9E9899                      ;9E9862|B035    |;
                       STA.B $A9                            ;9E9864|85A9    |;
                       LDA.B $A5                            ;9E9866|A5A5    |;
                       TAX                                  ;9E9868|AA      |;
                       JSL.L CODE_808F4C                    ;9E9869|224C8F80|;
                       STA.B $A5                            ;9E986D|85A5    |;
                       LDA.B $A9                            ;9E986F|A5A9    |;
                       TAX                                  ;9E9871|AA      |;
                       JSL.L CODE_808F4C                    ;9E9872|224C8F80|;
                       LDX.B $E4                            ;9E9876|A6E4    |;
                       CLC                                  ;9E9878|18      |;
                       ADC.B $A5                            ;9E9879|65A5    |;
                       STA.B $A5                            ;9E987B|85A5    |;
                       LDA.W #$00C4                         ;9E987D|A9C400  |;
                       STA.B $A9                            ;9E9880|85A9    |;
                       LDA.W $121F                          ;9E9882|AD1F12  |;
                       BMI CODE_9E988D                      ;9E9885|3006    |;
                       BEQ CODE_9E988D                      ;9E9887|F004    |;
                       LSR.B $A9                            ;9E9889|46A9    |;
                       LSR.B $A9                            ;9E988B|46A9    |;
 
          CODE_9E988D:
                       LDA.B $A9                            ;9E988D|A5A9    |;
                       CMP.B $A5                            ;9E988F|C5A5    |;
                       BCC CODE_9E9899                      ;9E9891|9006    |;
                       JSL.L CODE_9EF5DA                    ;9E9893|22DAF59E|;
                       BRA CODE_9E98EC                      ;9E9897|8053    |;
 
          CODE_9E9899:
                       LDA.W $0F43,Y                        ;9E9899|B9430F  |;
                       BEQ CODE_9E98FB                      ;9E989C|F05D    |;
                       LDA.W $0D55,Y                        ;9E989E|B9550D  |;
                       SEC                                  ;9E98A1|38      |;
                       SBC.W $0D71                          ;9E98A2|ED710D  |;
                       BIT.W #$8000                         ;9E98A5|890080  |;
                       BEQ CODE_9E98AE                      ;9E98A8|F004    |;
                       EOR.W #$FFFF                         ;9E98AA|49FFFF  |;
                       INC A                                ;9E98AD|1A      |;
 
          CODE_9E98AE:
                       CMP.W #$0009                         ;9E98AE|C90900  |;
                       BCS CODE_9E98EC                      ;9E98B1|B039    |;
                       STA.B $A5                            ;9E98B3|85A5    |;
                       LDA.W $0DB7,Y                        ;9E98B5|B9B70D  |;
                       SEC                                  ;9E98B8|38      |;
                       SBC.W $0DD3                          ;9E98B9|EDD30D  |;
                       BIT.W #$8000                         ;9E98BC|890080  |;
                       BEQ CODE_9E98C5                      ;9E98BF|F004    |;
                       EOR.W #$FFFF                         ;9E98C1|49FFFF  |;
                       INC A                                ;9E98C4|1A      |;
 
          CODE_9E98C5:
                       CMP.W #$0009                         ;9E98C5|C90900  |;
                       BCS CODE_9E98EC                      ;9E98C8|B022    |;
                       STA.B $A9                            ;9E98CA|85A9    |;
                       LDA.B $A5                            ;9E98CC|A5A5    |;
                       TAX                                  ;9E98CE|AA      |;
                       JSL.L CODE_808F4C                    ;9E98CF|224C8F80|;
                       STA.B $A5                            ;9E98D3|85A5    |;
                       LDA.B $A9                            ;9E98D5|A5A9    |;
                       TAX                                  ;9E98D7|AA      |;
                       JSL.L CODE_808F4C                    ;9E98D8|224C8F80|;
                       CLC                                  ;9E98DC|18      |;
                       ADC.B $A5                            ;9E98DD|65A5    |;
                       STA.B $A5                            ;9E98DF|85A5    |;
                       LDX.B $95                            ;9E98E1|A695    |;
                       CMP.W #$0041                         ;9E98E3|C94100  |;
                       BCS CODE_9E98EC                      ;9E98E6|B004    |;
                       JSL.L CODE_9EEF7F                    ;9E98E8|227FEF9E|;
 
          CODE_9E98EC:
                       STX.B $87                            ;9E98EC|8687    |;
                       LDX.W #$001A                         ;9E98EE|A21A00  |;
 
          CODE_9E98F1:
                       PLA                                  ;9E98F1|68      |;
                       STA.B $A5,X                          ;9E98F2|95A5    |;
                       DEX                                  ;9E98F4|CA      |;
                       DEX                                  ;9E98F5|CA      |;
                       BPL CODE_9E98F1                      ;9E98F6|10F9    |;
                       LDX.B $87                            ;9E98F8|A687    |;
                       RTL                                  ;9E98FA|6B      |;
 
          CODE_9E98FB:
                       LDA.W $0D55,Y                        ;9E98FB|B9550D  |;
                       SEC                                  ;9E98FE|38      |;
                       SBC.W $0D71                          ;9E98FF|ED710D  |;
                       STA.B $A5                            ;9E9902|85A5    |;
                       CMP.W #$FFF5                         ;9E9904|C9F5FF  |;
                       BMI CODE_9E98EC                      ;9E9907|30E3    |;
                       CMP.W #$000B                         ;9E9909|C90B00  |;
                       BPL CODE_9E98EC                      ;9E990C|10DE    |;
                       LDA.W $0DB7,Y                        ;9E990E|B9B70D  |;
                       SEC                                  ;9E9911|38      |;
                       SBC.W $0DD3                          ;9E9912|EDD30D  |;
                       STA.B $A9                            ;9E9915|85A9    |;
                       CMP.W #$FFF5                         ;9E9917|C9F5FF  |;
                       BMI CODE_9E98EC                      ;9E991A|30D0    |;
                       CMP.W #$000B                         ;9E991C|C90B00  |;
                       BPL CODE_9E98EC                      ;9E991F|10CB    |;
                       JSL.L CODE_9EF042                    ;9E9921|2242F09E|;
                       BRA CODE_9E98EC                      ;9E9925|80C5    |;
 
         DATA8_9E9927:
                       db $00,$00                           ;9E9927|        |;
                       db $01,$00                           ;9E9929|        |;
                       db $01,$00                           ;9E992B|        |;
                       db $02,$00                           ;9E992D|        |;
                       db $03,$00,$03,$00                   ;9E992F|        |;
                       db $04,$00,$05,$00                   ;9E9933|        |;
                       db $05,$00                           ;9E9937|        |;
                       db $06,$00,$07,$00,$07,$00           ;9E9939|        |;
                       db $08,$00                           ;9E993F|        |;
                       db $09,$00,$09,$00,$0A,$00,$0B,$00   ;9E9941|        |;
                       db $0B,$00,$0C,$00,$0D,$00,$0D,$00   ;9E9949|        |;
                       db $0E,$00,$0F,$00,$0F,$00,$10,$00   ;9E9951|        |;
                       db $11,$00,$11,$00,$12,$00           ;9E9959|        |;
                       db $13,$00                           ;9E995F|        |;
                       db $13,$00,$14,$00,$15,$00,$15,$00   ;9E9961|        |;
                       db $16,$00,$17,$00,$17,$00,$18,$00   ;9E9969|        |;
                       db $19,$00,$19,$00,$1A,$00,$1B,$00   ;9E9971|        |;
                       db $1B,$00,$1C,$00,$1D,$00,$1D,$00   ;9E9979|        |;
                       db $1E,$00,$1F,$00,$1F,$00           ;9E9981|        |;
 
          CODE_9E9987:
                       TYA                                  ;9E9987|98      |;
                       JSL.L CODE_9BC074                    ;9E9988|2274C09B|;
                       LDA.B $A5                            ;9E998C|A5A5    |;
                       BIT.W #$8000                         ;9E998E|890080  |;
                       BEQ CODE_9E9997                      ;9E9991|F004    |;
                       EOR.W #$FFFF                         ;9E9993|49FFFF  |;
                       INC A                                ;9E9996|1A      |;
 
          CODE_9E9997:
                       STA.B $AD                            ;9E9997|85AD    |;
                       ASL A                                ;9E9999|0A      |;
                       TAX                                  ;9E999A|AA      |;
                       LDA.L DATA8_9E9927,X                 ;9E999B|BF27999E|;
                       STA.B $B5                            ;9E999F|85B5    |;
                       LDA.B $A9                            ;9E99A1|A5A9    |;
                       BIT.W #$8000                         ;9E99A3|890080  |;
                       BEQ CODE_9E99AC                      ;9E99A6|F004    |;
                       EOR.W #$FFFF                         ;9E99A8|49FFFF  |;
                       INC A                                ;9E99AB|1A      |;
 
          CODE_9E99AC:
                       ASL A                                ;9E99AC|0A      |;
                       TAX                                  ;9E99AD|AA      |;
                       LDA.L DATA8_9E9927,X                 ;9E99AE|BF27999E|;
                       STA.B $B1                            ;9E99B2|85B1    |;
                       LDX.B $E4                            ;9E99B4|A6E4    |;
                       LDA.B zpCurntTeamLoopVal             ;9E99B6|A591    |;
                       JSL.L CODE_9BC002                    ;9E99B8|2202C09B|;
                       LDY.B zpCurntTeamLoopVal             ;9E99BC|A491    |;
                       LDA.B $A5                            ;9E99BE|A5A5    |;
                       CLC                                  ;9E99C0|18      |;
                       ADC.W $0D55,Y                        ;9E99C1|79550D  |;
                       SEC                                  ;9E99C4|38      |;
                       SBC.W $0D71                          ;9E99C5|ED710D  |;
                       BIT.W #$8000                         ;9E99C8|890080  |;
                       BEQ CODE_9E99D1                      ;9E99CB|F004    |;
                       EOR.W #$FFFF                         ;9E99CD|49FFFF  |;
                       INC A                                ;9E99D0|1A      |;
 
          CODE_9E99D1:
                       CMP.B $AD                            ;9E99D1|C5AD    |;
                       BCS CODE_9E9A0E                      ;9E99D3|B039    |;
                       STA.B $A5                            ;9E99D5|85A5    |;
                       LDA.B $A9                            ;9E99D7|A5A9    |;
                       CLC                                  ;9E99D9|18      |;
                       ADC.W $0DB7,Y                        ;9E99DA|79B70D  |;
                       SEC                                  ;9E99DD|38      |;
                       SBC.W $0DD3                          ;9E99DE|EDD30D  |;
                       BIT.W #$8000                         ;9E99E1|890080  |;
                       BEQ CODE_9E99EA                      ;9E99E4|F004    |;
                       EOR.W #$FFFF                         ;9E99E6|49FFFF  |;
                       INC A                                ;9E99E9|1A      |;
 
          CODE_9E99EA:
                       CMP.B $AD                            ;9E99EA|C5AD    |;
                       BCS CODE_9E9A0E                      ;9E99EC|B020    |;
                       STA.B $A9                            ;9E99EE|85A9    |;
                       LDA.B $B1                            ;9E99F0|A5B1    |;
                       CLC                                  ;9E99F2|18      |;
                       ADC.B $B5                            ;9E99F3|65B5    |;
                       CMP.W #$0005                         ;9E99F5|C90500  |;
                       BPL CODE_9E99FD                      ;9E99F8|1003    |;
                       LDA.W #$0005                         ;9E99FA|A90500  |;
 
          CODE_9E99FD:
                       CMP.W $0DF9                          ;9E99FD|CDF90D  |;
                       BCC CODE_9E9A0E                      ;9E9A00|900C    |;
                       LDA.B $B1                            ;9E9A02|A5B1    |;
                       SEC                                  ;9E9A04|38      |;
                       SBC.B $B5                            ;9E9A05|E5B5    |;
                       BMI CODE_9E9A11                      ;9E9A07|3008    |;
                       CMP.W $0DF9                          ;9E9A09|CDF90D  |;
                       BCC CODE_9E9A11                      ;9E9A0C|9003    |;
 
          CODE_9E9A0E:
                       JMP.W CODE_9E98FB                    ;9E9A0E|4CFB98  |;
 
          CODE_9E9A11:
                       LDA.B $A5                            ;9E9A11|A5A5    |;
                       TAX                                  ;9E9A13|AA      |;
                       JSL.L CODE_808F4C                    ;9E9A14|224C8F80|;
                       STA.B $A5                            ;9E9A18|85A5    |;
                       LDA.B $A9                            ;9E9A1A|A5A9    |;
                       TAX                                  ;9E9A1C|AA      |;
                       JSL.L CODE_808F4C                    ;9E9A1D|224C8F80|;
                       CLC                                  ;9E9A21|18      |;
                       ADC.B $A5                            ;9E9A22|65A5    |;
                       STA.B $A5                            ;9E9A24|85A5    |;
                       LDA.B $AD                            ;9E9A26|A5AD    |;
                       TAX                                  ;9E9A28|AA      |;
                       JSL.L CODE_808F4C                    ;9E9A29|224C8F80|;
                       LDX.B $E4                            ;9E9A2D|A6E4    |;
                       STA.B $A9                            ;9E9A2F|85A9    |;
                       LDA.W $121F                          ;9E9A31|AD1F12  |;
                       BMI CODE_9E9A3C                      ;9E9A34|3006    |;
                       BEQ CODE_9E9A3C                      ;9E9A36|F004    |;
                       db $46,$A9,$46,$A9                   ;9E9A38|        |;
 
          CODE_9E9A3C:
                       LDA.B $A9                            ;9E9A3C|A5A9    |;
                       CMP.B $A5                            ;9E9A3E|C5A5    |;
                       BCC CODE_9E9A46                      ;9E9A40|9004    |;
                       JSL.L CODE_9EF5DA                    ;9E9A42|22DAF59E|;
 
          CODE_9E9A46:
                       JMP.W CODE_9E98FB                    ;9E9A46|4CFB98  |;
 
          CODE_9E9A49:
                       LDY.B zpCurntTeamLoopVal             ;9E9A49|A491    |;
                       CPY.W $0AD9                          ;9E9A4B|CCD90A  |;
                       BEQ CODE_9E9A61                      ;9E9A4E|F011    |;
                       LDA.W #$0003                         ;9E9A50|A90300  |;
                       JSL.L CODE_9C9ABC                    ;9E9A53|22BC9A9C|;
                       JSL.L CODE_9EC791                    ;9E9A57|2291C79E|;
                       STZ.W BreakAwayActive_flg            ;9E9A5B|9C8B1E  |;
                       STZ.W OneTimerFlg                    ;9E9A5E|9C891E  |;
 
          CODE_9E9A61:
                       LDY.B zpCurntTeamLoopVal             ;9E9A61|A491    |;
                       STY.W $0AD9                          ;9E9A63|8CD90A  |;
                       STY.B $A5                            ;9E9A66|84A5    |;
                       STZ.B $89                            ;9E9A68|6489    |;
                       LDA.W #$0002                         ;9E9A6A|A90200  |;
                       STA.B $8D                            ;9E9A6D|858D    |;
                       LDA.W $1503,Y                        ;9E9A6F|B90315  |;
                       BNE CODE_9E9A7B                      ;9E9A72|D007    |;
                       STZ.B $8D                            ;9E9A74|648D    |;
                       LDA.W #$0002                         ;9E9A76|A90200  |;
                       STA.B $89                            ;9E9A79|8589    |;
 
          CODE_9E9A7B:
                       LDY.B $89                            ;9E9A7B|A489    |;
                       LDA.W #$FFFF                         ;9E9A7D|A9FFFF  |;
                       STA.W $179E,Y                        ;9E9A80|999E17  |;
                       STA.W $17A2,Y                        ;9E9A83|99A217  |;
                       LDA.W $17DE,Y                        ;9E9A86|B9DE17  |;
                       ORA.W #$0004                         ;9E9A89|090400  |;
                       STA.W $17DE,Y                        ;9E9A8C|99DE17  |;
                       LDA.W #$0010                         ;9E9A8F|A91000  |;
                       TRB.W $15DC                          ;9E9A92|1CDC15  |;
                       BEQ CODE_9E9AB1                      ;9E9A95|F01A    |;
                       LDY.B $8D                            ;9E9A97|A48D    |;
                       LDA.W GmStat_FceOffWins,Y            ;9E9A99|B99217  |;
                       INC A                                ;9E9A9C|1A      |;
                       STA.W GmStat_FceOffWins,Y            ;9E9A9D|999217  |;
                       LDA.L $7E35E0                        ;9E9AA0|AFE0357E|;
                       CLC                                  ;9E9AA4|18      |;
                       ADC.W #$00C8                         ;9E9AA5|69C800  |;
                       STA.L $7E35E0                        ;9E9AA8|8FE0357E|;
                       LDA.W #$0014                         ;9E9AAC|A91400  |;
                       STA.B $81                            ;9E9AAF|8581    |;
 
          CODE_9E9AB1:
                       LDA.W $15D6                          ;9E9AB1|ADD615  |;
                       BNE CODE_9E9AC6                      ;9E9AB4|D010    |;
                       LDA.B zpCurntTeamLoopVal             ;9E9AB6|A591    |;
                       CMP.W $0D07                          ;9E9AB8|CD070D  |;
                       BNE CODE_9E9AC6                      ;9E9ABB|D009    |;
                       LDY.B $8D                            ;9E9ABD|A48D    |;
                       LDA.W GmStat_PassesMade,Y            ;9E9ABF|B9BA17  |;
                       INC A                                ;9E9AC2|1A      |;
                       STA.W GmStat_PassesMade,Y            ;9E9AC3|99BA17  |;
 
          CODE_9E9AC6:
                       LDA.W #$000C                         ;9E9AC6|A90C00  |;
                       TRB.W $15D8                          ;9E9AC9|1CD815  |;
                       LDY.B zpCurntTeamLoopVal             ;9E9ACC|A491    |;
                       LDA.W $0F43,Y                        ;9E9ACE|B9430F  |;
                       BNE CODE_9E9AED                      ;9E9AD1|D01A    |;
                       JSL.L CODE_9EF213                    ;9E9AD3|2213F29E|;
                       LDY.B zpCurntTeamLoopVal             ;9E9AD7|A491    |;
                       LDA.W #$008C                         ;9E9AD9|A98C00  |;
                       STA.W $1083,Y                        ;9E9ADC|998310  |;
                       LDA.W $11A3,Y                        ;9E9ADF|B9A311  |;
                       CMP.W #$E4B6                         ;9E9AE2|C9B6E4  |;
                       BNE CODE_9E9AED                      ;9E9AE5|D006    |;
                       db $A9,$05,$00,$99,$83,$10           ;9E9AE7|        |;
 
          CODE_9E9AED:
                       LDA.B zpCurntTeamLoopVal             ;9E9AED|A591    |;
                       CMP.W $0D07                          ;9E9AEF|CD070D  |;
                       BNE CODE_9E9B03                      ;9E9AF2|D00F    |;
                       LDY.B $8D                            ;9E9AF4|A48D    |;
                       LDA.W $0B01,Y                        ;9E9AF6|B9010B  |;
                       STA.B $B5                            ;9E9AF9|85B5    |;
                       BMI CODE_9E9B03                      ;9E9AFB|3006    |;
                       JSL.L CODE_9FCB5C                    ;9E9AFD|225CCB9F|;
                       BRA CODE_9E9B07                      ;9E9B01|8004    |;
 
          CODE_9E9B03:
                       JSL.L CODE_9FCB16                    ;9E9B03|2216CB9F|;
 
          CODE_9E9B07:
                       LDA.W #$FFFF                         ;9E9B07|A9FFFF  |;
                       STA.W $0D07                          ;9E9B0A|8D070D  |;
                       RTL                                  ;9E9B0D|6B      |;
 
          CODE_9E9B0E:
                       PHY                                  ;9E9B0E|5A      |;
                       LDY.W $0EC3,X                        ;9E9B0F|BCC30E  |;
                       LDA.W $0EE3,X                        ;9E9B12|BDE30E  |;
                       JSL.L CODE_9CA554                    ;9E9B15|2254A59C|;
                       STA.B $14                            ;9E9B19|8514    |;
                       LDA.B $01,S                          ;9E9B1B|A301    |;
                       TAY                                  ;9E9B1D|A8      |;
                       LDA.W $0EC3,Y                        ;9E9B1E|B9C30E  |;
                       PHA                                  ;9E9B21|48      |;
                       LDA.W $0EE3,Y                        ;9E9B22|B9E30E  |;
                       TAY                                  ;9E9B25|A8      |;
                       PLA                                  ;9E9B26|68      |;
                       JSL.L CODE_9CA554                    ;9E9B27|2254A59C|;
                       PLY                                  ;9E9B2B|7A      |;
                       CMP.B $14                            ;9E9B2C|C514    |;
                       BCS CODE_9E9B3C                      ;9E9B2E|B00C    |;
                       db $BD,$C3,$0E,$85,$0C,$BD,$E3,$0E   ;9E9B30|        |;
                       db $85,$0E,$80,$0A                   ;9E9B38|        |;
 
          CODE_9E9B3C:
                       LDA.W $0EC3,Y                        ;9E9B3C|B9C30E  |;
                       STA.B $0C                            ;9E9B3F|850C    |;
                       LDA.W $0EE3,Y                        ;9E9B41|B9E30E  |;
                       STA.B $0E                            ;9E9B44|850E    |;
                       ASL.B $0C                            ;9E9B46|060C    |;
                       ASL.B $0E                            ;9E9B48|060E    |;
                       LDA.W #$000F                         ;9E9B4A|A90F00  |;
                       JSL.L CODE_9C9AD0                    ;9E9B4D|22D09A9C|;
                       RTL                                  ;9E9B51|6B      |;
 
          CODE_9E9B52:
                       LDA.W $19BE                          ;9E9B52|ADBE19  |;
                       CLC                                  ;9E9B55|18      |;
                       ADC.W #$000F                         ;9E9B56|690F00  |;
                       BMI CODE_9E9B5E                      ;9E9B59|3003    |;
                       STA.W $19BE                          ;9E9B5B|8DBE19  |;
 
          CODE_9E9B5E:
                       LDY.B zpCurntTeamLoopVal             ;9E9B5E|A491    |;
                       CPY.W #$0018                         ;9E9B60|C01800  |;
                       BCS CODE_9E9BB2                      ;9E9B63|B04D    |;
                       LDA.W $11A3,Y                        ;9E9B65|B9A311  |;
                       CMP.W #$F90E                         ;9E9B68|C90EF9  |;
                       BEQ CODE_9E9BB2                      ;9E9B6B|F045    |;
                       CMP.W #$F7B2                         ;9E9B6D|C9B2F7  |;
                       BEQ CODE_9E9BB2                      ;9E9B70|F040    |;
                       CMP.W #$F49C                         ;9E9B72|C99CF4  |;
                       BEQ CODE_9E9BB2                      ;9E9B75|F03B    |;
                       CMP.W #$F54E                         ;9E9B77|C94EF5  |;
                       BEQ CODE_9E9BB2                      ;9E9B7A|F036    |;
                       CMP.W #$F6C0                         ;9E9B7C|C9C0F6  |;
                       BEQ CODE_9E9BB2                      ;9E9B7F|F031    |;
                       LDA.W #$F7B2                         ;9E9B81|A9B2F7  |;
                       STA.B $A9                            ;9E9B84|85A9    |;
                       LDA.W $15D6                          ;9E9B86|ADD615  |;
                       BNE CODE_9E9BB3                      ;9E9B89|D028    |;
                       LDA.W $1403,Y                        ;9E9B8B|B90314  |;
                       CMP.W #$000C                         ;9E9B8E|C90C00  |;
                       BCC CODE_9E9BB3                      ;9E9B91|9020    |;
                       LDA.W $1223,Y                        ;9E9B93|B92312  |;
                       BNE CODE_9E9BB3                      ;9E9B96|D01B    |;
                       LDA.W $0792                          ;9E9B98|AD9207  |;
                       AND.W #$000F                         ;9E9B9B|290F00  |;
                       ADC.W #$000A                         ;9E9B9E|690A00  |;
                       STA.B $A5                            ;9E9BA1|85A5    |;
                       SEC                                  ;9E9BA3|38      |;
                       SBC.W $0F23,Y                        ;9E9BA4|F9230F  |;
                       BMI CODE_9E9BB3                      ;9E9BA7|300A    |;
                       LDA.W #$003C                         ;9E9BA9|A93C00  |;
                       STA.W $1223,Y                        ;9E9BAC|992312  |;
                       JMP.W CODE_9E9D59                    ;9E9BAF|4C599D  |;
 
          CODE_9E9BB2:
                       RTL                                  ;9E9BB2|6B      |;
 
          CODE_9E9BB3:
                       LDA.W $0F43,X                        ;9E9BB3|BD430F  |;
                       BEQ CODE_9E9BD2                      ;9E9BB6|F01A    |;
                       STZ.B $89                            ;9E9BB8|6489    |;
                       LDA.W $1503,X                        ;9E9BBA|BD0315  |;
                       BEQ CODE_9E9BC4                      ;9E9BBD|F005    |;
                       LDA.W #$0002                         ;9E9BBF|A90200  |;
                       STA.B $89                            ;9E9BC2|8589    |;
 
          CODE_9E9BC4:
                       LDA.W $15D6                          ;9E9BC4|ADD615  |;
                       BNE CODE_9E9BD2                      ;9E9BC7|D009    |;
                       LDY.B $89                            ;9E9BC9|A489    |;
                       LDA.W $17B6,Y                        ;9E9BCB|B9B617  |;
                       INC A                                ;9E9BCE|1A      |;
                       STA.W $17B6,Y                        ;9E9BCF|99B617  |;
 
          CODE_9E9BD2:
                       LDY.B zpCurntTeamLoopVal             ;9E9BD2|A491    |;
                       LDA.W #$0078                         ;9E9BD4|A97800  |;
                       STA.W $1203,Y                        ;9E9BD7|990312  |;
                       LDA.W $0D55,X                        ;9E9BDA|BD550D  |;
                       SEC                                  ;9E9BDD|38      |;
                       SBC.W $0D55,Y                        ;9E9BDE|F9550D  |;
                       STA.B $A5                            ;9E9BE1|85A5    |;
                       LDA.W $0DB7,X                        ;9E9BE3|BDB70D  |;
                       SEC                                  ;9E9BE6|38      |;
                       SBC.W $0DB7,Y                        ;9E9BE7|F9B70D  |;
                       STA.B $A9                            ;9E9BEA|85A9    |;
                       JSL.L CODE_9BB445                    ;9E9BEC|2245B49B|;
                       LDA.W $0D55,Y                        ;9E9BF0|B9550D  |;
                       CMP.W #$0068                         ;9E9BF3|C96800  |;
                       BPL CODE_9E9C16                      ;9E9BF6|101E    |;
                       CMP.W #$FF98                         ;9E9BF8|C998FF  |;
                       BMI CODE_9E9C43                      ;9E9BFB|3046    |;
                       LDA.W $0DB7,Y                        ;9E9BFD|B9B70D  |;
                       CMP.W #$0112                         ;9E9C00|C91201  |;
                       BPL UNREACH_9E9C10                   ;9E9C03|100B    |;
                       CMP.W #$FEED                         ;9E9C05|C9EDFE  |;
                       BMI UNREACH_9E9C0D                   ;9E9C08|3003    |;
 
          CODE_9E9C0A:
                       JMP.W CODE_9E9D0D                    ;9E9C0A|4C0D9D  |;
 
       UNREACH_9E9C0D:
                       db $4C,$E0,$9C                       ;9E9C0D|        |;
 
       UNREACH_9E9C10:
                       db $4C,$B6,$9C                       ;9E9C10|        |;
 
       UNREACH_9E9C13:
                       db $4C,$C2,$9E                       ;9E9C13|        |;
 
          CODE_9E9C16:
                       LDA.W $0DB7,Y                        ;9E9C16|B9B70D  |;
                       CMP.W #$00F0                         ;9E9C19|C9F000  |;
                       BPL UNREACH_9E9C13                   ;9E9C1C|10F5    |;
                       CMP.W #$FF0A                         ;9E9C1E|C90AFF  |;
                       BMI UNREACH_9E9C13                   ;9E9C21|30F0    |;
                       LDA.B $A5                            ;9E9C23|A5A5    |;
                       CMP.W #$0005                         ;9E9C25|C90500  |;
                       BCC CODE_9E9C0A                      ;9E9C28|90E0    |;
                       db $A9,$82,$00,$99,$55,$0D,$A9,$00   ;9E9C2A|        |;
                       db $00,$99,$C3,$0E,$B9,$03,$0E,$89   ;9E9C32|        |;
                       db $00,$08,$D0,$3B,$A9,$3A,$FD,$80   ;9E9C3A|        |;
                       db $39                               ;9E9C42|        |;
 
          CODE_9E9C43:
                       LDA.W $0DB7,Y                        ;9E9C43|B9B70D  |;
                       CMP.W #$00F0                         ;9E9C46|C9F000  |;
                       BPL UNREACH_9E9C13                   ;9E9C49|10C8    |;
                       CMP.W #$FF0A                         ;9E9C4B|C90AFF  |;
                       BMI UNREACH_9E9C13                   ;9E9C4E|30C3    |;
                       LDA.B $A5                            ;9E9C50|A5A5    |;
                       DEC A                                ;9E9C52|3A      |;
                       CMP.W #$0003                         ;9E9C53|C90300  |;
                       BCS CODE_9E9C0A                      ;9E9C56|B0B2    |;
                       LDA.W #$FF7E                         ;9E9C58|A97EFF  |;
                       STA.W $0D55,Y                        ;9E9C5B|99550D  |;
                       LDA.W #$0000                         ;9E9C5E|A90000  |;
                       STA.W $0EC3,Y                        ;9E9C61|99C30E  |;
                       LDA.W $0DB7,Y                        ;9E9C64|B9B70D  |;
                       CMP.W #$0058                         ;9E9C67|C95800  |;
                       BPL UNREACH_9E9C71                   ;9E9C6A|1005    |;
                       CMP.W #$FFA8                         ;9E9C6C|C9A8FF  |;
                       BPL CODE_9E9CB3                      ;9E9C6F|1042    |;
 
       UNREACH_9E9C71:
                       db $B9,$03,$0E,$89,$00,$08,$D0,$C5   ;9E9C71|        |;
                       db $A9,$9C,$FD,$A6,$91,$9D,$E3,$14   ;9E9C79|        |;
                       db $22,$03,$A4,$9E,$AD,$BE,$19,$18   ;9E9C81|        |;
                       db $69,$0A,$00,$30,$03,$8D,$BE,$19   ;9E9C89|        |;
                       db $9C,$23,$0C,$A4,$91,$B9,$03,$15   ;9E9C91|        |;
                       db $F0,$03,$A9,$02,$00,$18,$69,$06   ;9E9C99|        |;
                       db $00,$22,$D5,$9F,$9C,$A9,$02,$00   ;9E9CA1|        |;
                       db $8D,$25,$0C,$A6,$95,$A4,$91,$4C   ;9E9CA9|        |;
                       db $79,$9D                           ;9E9CB1|        |;
 
          CODE_9E9CB3:
                       JMP.W CODE_9E9E8A                    ;9E9CB3|4C8A9E  |;
                       db $B9,$55,$0D,$C9,$50,$00,$10,$4C   ;9E9CB6|        |;
                       db $C9,$B0,$FF,$30,$47,$A5,$A5,$1A   ;9E9CBE|        |;
                       db $1A,$29,$07,$00,$C9,$05,$00,$90   ;9E9CC6|        |;
                       db $3E,$A9,$28,$01,$99,$B7,$0D,$A9   ;9E9CCE|        |;
                       db $00,$00,$99,$E3,$0E,$A9,$76,$FC   ;9E9CD6|        |;
                       db $80,$9C,$B9,$55,$0D,$C9,$50,$00   ;9E9CDE|        |;
                       db $10,$22,$C9,$B0,$FF,$30,$1D,$A5   ;9E9CE6|        |;
                       db $A5,$1A,$29,$07,$00,$C9,$03,$00   ;9E9CEE|        |;
                       db $B0,$15,$A9,$D8,$FE,$99,$B7,$0D   ;9E9CF6|        |;
                       db $A9,$00,$00,$99,$E3,$0E,$A9,$D8   ;9E9CFE|        |;
                       db $FC,$4C,$7C,$9C,$4C,$C2,$9E       ;9E9D06|        |;
 
          CODE_9E9D0D:
                       LDY.B $95                            ;9E9D0D|A495    |;
                       LDA.W $1503,Y                        ;9E9D0F|B90315  |;
                       BEQ CODE_9E9D17                      ;9E9D12|F003    |;
                       LDA.W #$0002                         ;9E9D14|A90200  |;
 
          CODE_9E9D17:
                       INC A                                ;9E9D17|1A      |;
                       INC A                                ;9E9D18|1A      |;
                       JSL.L CODE_9C9FD5                    ;9E9D19|22D59F9C|;
                       LDA.W #$0002                         ;9E9D1D|A90200  |;
                       STA.W $0C25                          ;9E9D20|8D250C  |;
                       LDA.W #$F54E                         ;9E9D23|A94EF5  |;
                       STA.B $A9                            ;9E9D26|85A9    |;
                       LDY.B zpCurntTeamLoopVal             ;9E9D28|A491    |;
                       LDA.B $A5                            ;9E9D2A|A5A5    |;
                       SEC                                  ;9E9D2C|38      |;
                       SBC.W $1163,Y                        ;9E9D2D|F96311  |;
                       INC A                                ;9E9D30|1A      |;
                       AND.W #$0007                         ;9E9D31|290700  |;
                       CMP.W #$0003                         ;9E9D34|C90300  |;
                       BCC CODE_9E9D59                      ;9E9D37|9020    |;
                       LDA.W #$F49C                         ;9E9D39|A99CF4  |;
                       STA.B $A9                            ;9E9D3C|85A9    |;
                       LDA.W $1163,Y                        ;9E9D3E|B96311  |;
                       AND.W #$0003                         ;9E9D41|290300  |;
                       BNE CODE_9E9D59                      ;9E9D44|D013    |;
                       LDA.W $1483,X                        ;9E9D46|BD8314  |;
                       SEC                                  ;9E9D49|38      |;
                       SBC.W #$000A                         ;9E9D4A|E90A00  |;
                       BMI CODE_9E9D59                      ;9E9D4D|300A    |;
                       CPX.W #$0018                         ;9E9D4F|E01800  |;
                       BCS CODE_9E9D59                      ;9E9D52|B005    |;
                       LDA.W #$F6C0                         ;9E9D54|A9C0F6  |;
                       STA.B $A9                            ;9E9D57|85A9    |;
 
          CODE_9E9D59:
                       LDX.B zpCurntTeamLoopVal             ;9E9D59|A691    |;
                       LDA.W #$0001                         ;9E9D5B|A90100  |;
                       STA.W $14E3,X                        ;9E9D5E|9DE314  |;
                       JSL.L CODE_9EA3DD                    ;9E9D61|22DDA39E|;
                       LDX.B $95                            ;9E9D65|A695    |;
                       LDA.W $0F43,X                        ;9E9D67|BD430F  |;
                       BNE CODE_9E9D79                      ;9E9D6A|D00D    |;
                       CPX.W #$0018                         ;9E9D6C|E01800  |;
                       BCS CODE_9E9D79                      ;9E9D6F|B008    |;
                       BRA CODE_9E9D79                      ;9E9D71|8006    |;
 
          CODE_9E9D73:
                       JMP.W CODE_9E9B0E                    ;9E9D73|4C0E9B  |;
 
          CODE_9E9D76:
                       JMP.W CODE_9E9E59                    ;9E9D76|4C599E  |;
 
          CODE_9E9D79:
                       LDA.L $7E35E0                        ;9E9D79|AFE0357E|;
                       CLC                                  ;9E9D7D|18      |;
                       ADC.W #$012C                         ;9E9D7E|692C01  |;
                       STA.L $7E35E0                        ;9E9D81|8FE0357E|;
                       LDA.W #$002D                         ;9E9D85|A92D00  |;
                       STA.B $81                            ;9E9D88|8581    |;
                       LDA.W $0AD9                          ;9E9D8A|ADD90A  |;
                       STA.B $A5                            ;9E9D8D|85A5    |;
                       BMI CODE_9E9D73                      ;9E9D8F|30E2    |;
                       CPY.B $A5                            ;9E9D91|C4A5    |;
                       BNE CODE_9E9D73                      ;9E9D93|D0DE    |;
                       LDA.W $15D4                          ;9E9D95|ADD415  |;
                       BIT.W #$0010                         ;9E9D98|891000  |;
                       BNE CODE_9E9D76                      ;9E9D9B|D0D9    |;
                       LDA.L $7E34BC                        ;9E9D9D|AFBC347E|;
                       CMP.W #$0004                         ;9E9DA1|C90400  |;
                       BEQ CODE_9E9D76                      ;9E9DA4|F0D0    |;
                       LDA.W $0F43,X                        ;9E9DA6|BD430F  |;
                       BEQ CODE_9E9D76                      ;9E9DA9|F0CB    |;
                       LDA.W $11A3,Y                        ;9E9DAB|B9A311  |;
                       CMP.W #$F54E                         ;9E9DAE|C94EF5  |;
                       BNE CODE_9E9D76                      ;9E9DB1|D0C3    |;
                       LDA.W $1163,Y                        ;9E9DB3|B96311  |;
                       AND.W #$0003                         ;9E9DB6|290300  |;
                       BNE CODE_9E9D76                      ;9E9DB9|D0BB    |;
                       db $B9,$83,$12,$89,$00,$40,$D0,$B3   ;9E9DBB|        |;
                       db $A9,$96,$00,$22,$85,$B3,$9B,$0A   ;9E9DC3|        |;
                       db $A4,$91,$38,$F9,$23,$0F,$10,$A3   ;9E9DCB|        |;
                       db $AD,$D6,$15,$D0,$9E,$B9,$43,$0F   ;9E9DD3|        |;
                       db $30,$7C,$F0,$7A,$A9,$FF,$FF,$8D   ;9E9DDB|        |;
                       db $D9,$0A,$9C,$23,$0C,$A4,$91,$B9   ;9E9DE3|        |;
                       db $03,$15,$F0,$03,$A9,$02,$00,$18   ;9E9DEB|        |;
                       db $69,$06,$00,$22,$D5,$9F,$9C,$A6   ;9E9DF3|        |;
                       db $91,$A9,$0E,$F9,$22,$F1,$A3,$9E   ;9E9DFB|        |;
                       db $A6,$95,$BD,$C3,$0E,$49,$FF,$FF   ;9E9E03|        |;
                       db $1A,$C9,$00,$80,$6A,$9D,$C3,$0E   ;9E9E0B|        |;
                       db $BD,$E3,$0E,$49,$FF,$FF,$1A,$C9   ;9E9E13|        |;
                       db $00,$80,$6A,$9D,$E3,$0E,$22,$D0   ;9E9E1B|        |;
                       db $C2,$9E,$A9,$04,$00,$8D,$26,$16   ;9E9E23|        |;
                       db $A9,$16,$00,$85,$A5,$AD,$BE,$19   ;9E9E2B|        |;
                       db $18,$69,$1E,$00,$30,$03,$8D,$BE   ;9E9E33|        |;
                       db $19,$BD,$43,$0F,$D0,$03,$4C,$8A   ;9E9E3B|        |;
                       db $B8,$AF,$C4,$34,$7E,$D0,$03,$4C   ;9E9E43|        |;
                       db $8A,$B8,$A9,$14,$00,$85,$A5,$22   ;9E9E4B|        |;
                       db $8A,$B8,$9E,$4C,$C9,$B2           ;9E9E53|        |;
 
          CODE_9E9E59:
                       LDY.B zpCurntTeamLoopVal             ;9E9E59|A491    |;
                       LDA.W $11A3,Y                        ;9E9E5B|B9A311  |;
                       CMP.W #$F7B2                         ;9E9E5E|C9B2F7  |;
                       BEQ CODE_9E9E69                      ;9E9E61|F006    |;
                       LDA.W #$FFFF                         ;9E9E63|A9FFFF  |;
                       STA.W $0AD9                          ;9E9E66|8DD90A  |;
 
          CODE_9E9E69:
                       LDY.B zpCurntTeamLoopVal             ;9E9E69|A491    |;
                       LDA.W $1503,Y                        ;9E9E6B|B90315  |;
                       BNE CODE_9E9E78                      ;9E9E6E|D008    |;
                       LDA.W #$0003                         ;9E9E70|A90300  |;
                       JSL.L CODE_9C9A7F                    ;9E9E73|227F9A9C|;
                       RTL                                  ;9E9E77|6B      |;
 
          CODE_9E9E78:
                       LDA.L $7E35E0                        ;9E9E78|AFE0357E|;
                       CLC                                  ;9E9E7C|18      |;
                       ADC.W #$0258                         ;9E9E7D|695802  |;
                       STA.L $7E35E0                        ;9E9E80|8FE0357E|;
                       LDA.W #$002D                         ;9E9E84|A92D00  |;
                       STA.B $81                            ;9E9E87|8581    |;
                       RTL                                  ;9E9E89|6B      |;
 
          CODE_9E9E8A:
                       LDA.W $19BE                          ;9E9E8A|ADBE19  |;
                       CLC                                  ;9E9E8D|18      |;
                       ADC.W #$000A                         ;9E9E8E|690A00  |;
                       BMI CODE_9E9E96                      ;9E9E91|3003    |;
                       STA.W $19BE                          ;9E9E93|8DBE19  |;
 
          CODE_9E9E96:
                       LDX.B zpCurntTeamLoopVal             ;9E9E96|A691    |;
                       LDA.W #$FF7E                         ;9E9E98|A97EFF  |;
                       STA.W $0D55,X                        ;9E9E9B|9D550D  |;
                       LDA.W #$0000                         ;9E9E9E|A90000  |;
                       STA.W $0EC3,X                        ;9E9EA1|9DC30E  |;
                       LDA.W $0E03,X                        ;9E9EA4|BD030E  |;
                       BIT.W #$0800                         ;9E9EA7|890008  |;
                       BNE UNREACH_9E9EB1                   ;9E9EAA|D005    |;
                       LDA.W #$FE60                         ;9E9EAC|A960FE  |;
                       BRA CODE_9E9EB4                      ;9E9EAF|8003    |;
 
       UNREACH_9E9EB1:
                       db $A9,$FE,$FD                       ;9E9EB1|        |;
 
          CODE_9E9EB4:
                       STA.W $14E3,X                        ;9E9EB4|9DE314  |;
                       JSL.L CODE_9EA3F1                    ;9E9EB7|22F1A39E|;
                       LDX.B $95                            ;9E9EBB|A695    |;
                       LDY.B zpCurntTeamLoopVal             ;9E9EBD|A491    |;
                       JMP.W CODE_9E9D79                    ;9E9EBF|4C799D  |;
                       db $A5,$A5,$85,$B9,$B9,$55,$0D,$85   ;9E9EC2|        |;
                       db $AD,$B9,$B7,$0D,$85,$B1,$A2,$48   ;9E9ECA|        |;
                       db $00,$A0,$EA,$00,$A5,$AD,$10,$03   ;9E9ED2|        |;
                       db $A2,$B8,$FF,$A5,$B1,$10,$03,$A0   ;9E9EDA|        |;
                       db $16,$FF,$86,$A7,$84,$AB,$A5,$AD   ;9E9EE2|        |;
                       db $38,$E5,$A7,$85,$A5,$A5,$B1,$38   ;9E9EEA|        |;
                       db $E5,$AB,$85,$A9,$A4,$A5,$22,$54   ;9E9EF2|        |;
                       db $A5,$9C,$A4,$91,$85,$B5,$C9,$14   ;9E9EFA|        |;
                       db $00,$B0,$05,$A6,$95,$4C,$0D,$9D   ;9E9F02|        |;
                       db $A5,$A5,$EB,$AA,$A5,$B5,$22,$27   ;9E9F0A|        |;
                       db $93,$80,$4A,$4A,$89,$00,$20,$F0   ;9E9F12|        |;
                       db $03,$09,$00,$C0,$85,$A5,$89,$00   ;9E9F1A|        |;
                       db $80,$F0,$04,$49,$FF,$FF,$1A,$85   ;9E9F22|        |;
                       db $AF,$A5,$A9,$EB,$AA,$A5,$B5,$22   ;9E9F2A|        |;
                       db $27,$93,$80,$A6,$95,$4A,$4A,$89   ;9E9F32|        |;
                       db $00,$20,$F0,$03,$09,$00,$C0,$85   ;9E9F3A|        |;
                       db $A9,$89,$00,$80,$F0,$04,$49,$FF   ;9E9F42|        |;
                       db $FF,$1A,$C5,$AF,$B0,$56,$A5,$A7   ;9E9F4A|        |;
                       db $10,$2B,$A5,$B9,$3A,$C9,$03,$00   ;9E9F52|        |;
                       db $B0,$20,$A5,$A5,$18,$69,$06,$00   ;9E9F5A|        |;
                       db $18,$65,$A7,$99,$55,$0D,$A5,$A9   ;9E9F62|        |;
                       db $18,$65,$AB,$99,$B7,$0D,$A9,$00   ;9E9F6A|        |;
                       db $00,$99,$C3,$0E,$99,$E3,$0E,$4C   ;9E9F72|        |;
                       db $71,$9C,$4C,$0D,$9D,$A5,$B9,$C9   ;9E9F7A|        |;
                       db $05,$00,$90,$F6,$A5,$A5,$38,$E9   ;9E9F82|        |;
                       db $06,$00,$18,$65,$A7,$99,$55,$0D   ;9E9F8A|        |;
                       db $A5,$A9,$18,$65,$AB,$99,$B7,$0D   ;9E9F92|        |;
                       db $A9,$00,$00,$99,$C3,$0E,$99,$E3   ;9E9F9A|        |;
                       db $0E,$4C,$36,$9C,$A5,$AB,$10,$27   ;9E9FA2|        |;
                       db $A5,$B9,$1A,$29,$07,$00,$C9,$03   ;9E9FAA|        |;
                       db $00,$B0,$C7,$A5,$A5,$18,$65,$A7   ;9E9FB2|        |;
                       db $99,$55,$0D,$A5,$A9,$18,$65,$AB   ;9E9FBA|        |;
                       db $99,$B7,$0D,$A9,$00,$00,$99,$C3   ;9E9FC2|        |;
                       db $0E,$99,$E3,$0E,$4C,$04,$9D,$A5   ;9E9FCA|        |;
                       db $B9,$1A,$1A,$29,$07,$00,$C9,$05   ;9E9FD2|        |;
                       db $00,$90,$9F,$A5,$A5,$18,$65,$A7   ;9E9FDA|        |;
                       db $99,$55,$0D,$A5,$A9,$18,$65,$AB   ;9E9FE2|        |;
                       db $99,$B7,$0D,$A9,$00,$00,$99,$C3   ;9E9FEA|        |;
                       db $0E,$99,$E3,$0E,$4C,$DB,$9C       ;9E9FF2|        |;
 
          CODE_9E9FF9:
                       LDA.B $B5                            ;9E9FF9|A5B5    |;
                       PHA                                  ;9E9FFB|48      |;
                       LDA.B zpCurntTeamLoopVal             ;9E9FFC|A591    |;
                       PHA                                  ;9E9FFE|48      |;
                       LDA.B $95                            ;9E9FFF|A595    |;
                       PHA                                  ;9EA001|48      |;
                       JSL.L CODE_9EA021                    ;9EA002|2221A09E|;
                       LDX.B zpCurntTeamLoopVal             ;9EA006|A691    |;
                       LDY.B $95                            ;9EA008|A495    |;
                       STY.B zpCurntTeamLoopVal             ;9EA00A|8491    |;
                       STX.B $95                            ;9EA00C|8695    |;
                       JSL.L CODE_9EA021                    ;9EA00E|2221A09E|;
                       PLA                                  ;9EA012|68      |;
                       STA.B $95                            ;9EA013|8595    |;
                       PLA                                  ;9EA015|68      |;
                       STA.B zpCurntTeamLoopVal             ;9EA016|8591    |;
                       PLA                                  ;9EA018|68      |;
                       STA.B $B5                            ;9EA019|85B5    |;
                       LDX.B $95                            ;9EA01B|A695    |;
 
          CODE_9EA01D:
                       RTL                                  ;9EA01D|6B      |;
 
          CODE_9EA01E:
                       JMP.W CODE_9EA2F1                    ;9EA01E|4CF1A2  |;
 
          CODE_9EA021:
                       LDY.B zpCurntTeamLoopVal             ;9EA021|A491    |;
                       LDA.W $11A3,Y                        ;9EA023|B9A311  |;
                       CMP.W #$F374                         ;9EA026|C974F3  |;
                       BEQ CODE_9EA01E                      ;9EA029|F0F3    |;
                       CMP.W #$F864                         ;9EA02B|C964F8  |;
                       BEQ CODE_9EA01E                      ;9EA02E|F0EE    |;
                       CMP.W #$F208                         ;9EA030|C908F2  |;
                       BNE CODE_9EA038                      ;9EA033|D003    |;
                       JMP.W CODE_9EBC24                    ;9EA035|4C24BC  |;
 
          CODE_9EA038:
                       LDA.W $11A3,X                        ;9EA038|BDA311  |;
                       CMP.W #$F342                         ;9EA03B|C942F3  |;
                       BNE CODE_9EA01D                      ;9EA03E|D0DD    |;
                       LDA.W $15D6                          ;9EA040|ADD615  |;
                       BEQ CODE_9EA04E                      ;9EA043|F009    |;
                       db $A9,$00,$01,$9D,$23,$0F,$99,$23   ;9EA045|        |;
                       db $0F                               ;9EA04D|        |;
 
          CODE_9EA04E:
                       LDA.W $0D55,Y                        ;9EA04E|B9550D  |;
                       SEC                                  ;9EA051|38      |;
                       SBC.W $0D55,X                        ;9EA052|FD550D  |;
                       STA.B $A5                            ;9EA055|85A5    |;
                       LDA.W $0DB7,Y                        ;9EA057|B9B70D  |;
                       SEC                                  ;9EA05A|38      |;
                       SBC.W $0DB7,X                        ;9EA05B|FDB70D  |;
                       STA.B $A9                            ;9EA05E|85A9    |;
                       JSL.L CODE_9BB445                    ;9EA060|2245B49B|;
                       LDA.B $A5                            ;9EA064|A5A5    |;
                       SEC                                  ;9EA066|38      |;
                       SBC.W $1163,X                        ;9EA067|FD6311  |;
                       AND.W #$0007                         ;9EA06A|290700  |;
                       ASL A                                ;9EA06D|0A      |;
                       TAY                                  ;9EA06E|A8      |;
                       LDA.W #$009E                         ;9EA06F|A99E00  |;
                       STA.B $8B                            ;9EA072|858B    |;
                       LDA.W #$A154                         ;9EA074|A954A1  |;
                       STA.B $89                            ;9EA077|8589    |;
                       STA.W $1543,X                        ;9EA079|9D4315  |;
                       CPY.W #$0000                         ;9EA07C|C00000  |;
                       BNE CODE_9EA0B1                      ;9EA07F|D030    |;
                       LDA.W $0D55,X                        ;9EA081|BD550D  |;
                       CMP.W #$0050                         ;9EA084|C95000  |;
                       BPL CODE_9EA0A5                      ;9EA087|101C    |;
                       CMP.W #$A057                         ;9EA089|C957A0  |;
                       BMI CODE_9EA0A5                      ;9EA08C|3017    |;
                       LDA.W $0DB7,X                        ;9EA08E|BDB70D  |;
                       CMP.W #$00F8                         ;9EA091|C9F800  |;
                       BPL CODE_9EA0A5                      ;9EA094|100F    |;
                       CMP.W #$FF08                         ;9EA096|C908FF  |;
                       BPL CODE_9EA0A5                      ;9EA099|100A    |;
                       LDA.W $0792                          ;9EA09B|AD9207  |;
                       AND.W #$00F0                         ;9EA09E|29F000  |;
                       BEQ CODE_9EA0B1                      ;9EA0A1|F00E    |;
                       BRA CODE_9EA0AD                      ;9EA0A3|8008    |;
 
          CODE_9EA0A5:
                       LDA.W $0792                          ;9EA0A5|AD9207  |;
                       AND.W #$0030                         ;9EA0A8|293000  |;
                       BEQ CODE_9EA0B1                      ;9EA0AB|F004    |;
 
          CODE_9EA0AD:
                       INY                                  ;9EA0AD|C8      |;
                       INY                                  ;9EA0AE|C8      |;
                       STY.B $A5                            ;9EA0AF|84A5    |;
 
          CODE_9EA0B1:
                       LDA.B [$89],Y                        ;9EA0B1|B789    |;
                       JSL.L CODE_9EA3F1                    ;9EA0B3|22F1A39E|;
                       LDY.B zpCurntTeamLoopVal             ;9EA0B7|A491    |;
                       LDA.W $0F43,Y                        ;9EA0B9|B9430F  |;
                       BEQ CODE_9EA10E                      ;9EA0BC|F050    |;
                       LDA.B $B5                            ;9EA0BE|A5B5    |;
                       SEC                                  ;9EA0C0|38      |;
                       SBC.W #$0020                         ;9EA0C1|E92000  |;
                       BMI CODE_9EA10E                      ;9EA0C4|3048    |;
                       LDA.W #$0078                         ;9EA0C6|A97800  |;
                       STA.B $A5                            ;9EA0C9|85A5    |;
                       LDA.B $A5                            ;9EA0CB|A5A5    |;
                       SEC                                  ;9EA0CD|38      |;
                       SBC.W $12C3,X                        ;9EA0CE|FDC312  |;
                       CLC                                  ;9EA0D1|18      |;
                       ADC.W $12C3,Y                        ;9EA0D2|79C312  |;
                       LSR A                                ;9EA0D5|4A      |;
                       SEC                                  ;9EA0D6|38      |;
                       SBC.W $0F23,Y                        ;9EA0D7|F9230F  |;
                       BEQ CODE_9EA10F                      ;9EA0DA|F033    |;
                       BMI CODE_9EA10F                      ;9EA0DC|3031    |;
                       STA.B $A5                            ;9EA0DE|85A5    |;
                       JSL.L CODE_9BB39B                    ;9EA0E0|229BB39B|;
                       LDA.B $A5                            ;9EA0E4|A5A5    |;
                       SEC                                  ;9EA0E6|38      |;
                       SBC.W $1483,X                        ;9EA0E7|FD8314  |;
                       BMI CODE_9EA10F                      ;9EA0EA|3023    |;
                       JSL.L CODE_9EC124                    ;9EA0EC|2224C19E|;
                       LDA.B $A5                            ;9EA0F0|A5A5    |;
                       CMP.W #$0001                         ;9EA0F2|C90100  |;
                       BCS CODE_9EA10E                      ;9EA0F5|B017    |;
                       db $AD,$D4,$15,$89,$10,$00,$D0,$0F   ;9EA0F7|        |;
                       db $AD,$93,$07,$29,$02,$00,$18,$69   ;9EA0FF|        |;
                       db $18,$00,$85,$A5,$4C,$5E,$B8       ;9EA107|        |;
 
          CODE_9EA10E:
                       RTL                                  ;9EA10E|6B      |;
 
          CODE_9EA10F:
                       JSL.L CODE_9EC124                    ;9EA10F|2224C19E|;
                       LDA.B $A5                            ;9EA113|A5A5    |;
                       CMP.W #$0001                         ;9EA115|C90100  |;
                       BCS CODE_9EA132                      ;9EA118|B018    |;
                       db $AD,$D4,$15,$89,$10,$00,$D0,$10   ;9EA11A|        |;
                       db $AD,$93,$07,$29,$02,$00,$18,$69   ;9EA122|        |;
                       db $1C,$00,$85,$A5,$22,$5E,$B8,$9E   ;9EA12A|        |;
 
          CODE_9EA132:
                       JSL.L CODE_9EC042                    ;9EA132|2242C09E|;
                       BEQ CODE_9EA151                      ;9EA136|F019    |;
                       db $AD,$8D,$1E,$10,$14,$A4,$91,$8C   ;9EA138|        |;
                       db $8D,$1E,$B9,$D4,$19,$8D,$93,$1E   ;9EA140|        |;
                       db $A9,$24,$00,$85,$A5,$22,$5E,$B8   ;9EA148|        |;
                       db $9E                               ;9EA150|        |;
 
          CODE_9EA151:
                       JMP.W CODE_9E9B52                    ;9EA151|4C529B  |;
                       db $96,$F1,$AC,$F2                   ;9EA154|        |;
                       db $10,$F3,$10,$F3,$10,$F3,$DE,$F2   ;9EA158|        |;
                       db $DE,$F2                           ;9EA160|        |;
                       db $7A,$F2                           ;9EA162|        |;
 
          CODE_9EA164:
                       LDA.W #$0014                         ;9EA164|A91400  |;
                       SEC                                  ;9EA167|38      |;
                       SBC.W $1483,X                        ;9EA168|FD8314  |;
                       STA.B $A5                            ;9EA16B|85A5    |;
                       LDA.L PenaltiesOnOff                 ;9EA16D|AFC4347E|;
                       BEQ CODE_9EA175                      ;9EA171|F002    |; Penalties Off Branch A175
                       ASL.B $A5                            ;9EA173|06A5    |;
 
          CODE_9EA175:
                       LDA.B $A5                            ;9EA175|A5A5    |;
                       JSL.L CODE_9BB370                    ;9EA177|2270B39B|;
                       CMP.W #$0004                         ;9EA17B|C90400  |;
                       BCC CODE_9EA18B                      ;9EA17E|900B    |;
                       LDA.B $A5                            ;9EA180|A5A5    |;
                       JSL.L CODE_9BB370                    ;9EA182|2270B39B|;
                       CMP.W #$0004                         ;9EA186|C90400  |;
                       BCS CODE_9EA1BC                      ;9EA189|B031    |;
 
          CODE_9EA18B:
                       LDA.W #$0005                         ;9EA18B|A90500  |;
                       STA.B $AD                            ;9EA18E|85AD    |;
                       LDY.W #$0000                         ;9EA190|A00000  |;
                       CPX.W #$000C                         ;9EA193|E00C00  |;
                       BCS CODE_9EA19B                      ;9EA196|B003    |;
                       LDY.W #$000C                         ;9EA198|A00C00  |;
 
          CODE_9EA19B:
                       STY.B $89                            ;9EA19B|8489    |;
                       LDA.W $0F43,Y                        ;9EA19D|B9430F  |;
                       BEQ CODE_9EA1B4                      ;9EA1A0|F012    |;
                       LDA.W $11A3,Y                        ;9EA1A2|B9A311  |;
                       CMP.W #$F3A6                         ;9EA1A5|C9A6F3  |;
                       BCC CODE_9EA1AF                      ;9EA1A8|9005    |;
                       CMP.W #$F46B                         ;9EA1AA|C96BF4  |;
                       BCC CODE_9EA1BD                      ;9EA1AD|900E    |;
 
          CODE_9EA1AF:
                       LDA.W $14E3,Y                        ;9EA1AF|B9E314  |;
                       BEQ CODE_9EA1BD                      ;9EA1B2|F009    |;
 
          CODE_9EA1B4:
                       LDY.B $89                            ;9EA1B4|A489    |;
                       INY                                  ;9EA1B6|C8      |;
                       INY                                  ;9EA1B7|C8      |;
                       DEC.B $AD                            ;9EA1B8|C6AD    |;
                       BPL CODE_9EA19B                      ;9EA1BA|10DF    |;
 
          CODE_9EA1BC:
                       RTL                                  ;9EA1BC|6B      |;
 
          CODE_9EA1BD:
                       LDA.W $0D55,Y                        ;9EA1BD|B9550D  |;
                       SEC                                  ;9EA1C0|38      |;
                       SBC.W $0D55,X                        ;9EA1C1|FD550D  |;
                       STA.B $A5                            ;9EA1C4|85A5    |;
                       CMP.W #$FFDE                         ;9EA1C6|C9DEFF  |;
                       BMI CODE_9EA1B4                      ;9EA1C9|30E9    |;
                       CMP.W #$0022                         ;9EA1CB|C92200  |;
                       BPL CODE_9EA1B4                      ;9EA1CE|10E4    |;
                       LDA.W $0DB7,Y                        ;9EA1D0|B9B70D  |;
                       SEC                                  ;9EA1D3|38      |;
                       SBC.W $0DB7,X                        ;9EA1D4|FDB70D  |;
                       STA.B $A9                            ;9EA1D7|85A9    |;
                       CMP.W #$FFDE                         ;9EA1D9|C9DEFF  |;
                       BMI CODE_9EA1B4                      ;9EA1DC|30D6    |;
                       CMP.W #$0022                         ;9EA1DE|C92200  |;
                       BPL CODE_9EA1B4                      ;9EA1E1|10D1    |;
                       JSL.L CODE_9BB445                    ;9EA1E3|2245B49B|;
                       LDA.B $A5                            ;9EA1E7|A5A5    |;
                       CMP.W $1163,X                        ;9EA1E9|DD6311  |;
                       BNE CODE_9EA1B4                      ;9EA1EC|D0C6    |;
                       LDA.W $0D55,X                        ;9EA1EE|BD550D  |;
                       CMP.W #$004A                         ;9EA1F1|C94A00  |;
                       BPL CODE_9EA233                      ;9EA1F4|103D    |;
                       CMP.W #$FFB6                         ;9EA1F6|C9B6FF  |;
                       BMI CODE_9EA233                      ;9EA1F9|3038    |;
                       LDA.W $14C3,X                        ;9EA1FB|BDC314  |;
                       BNE CODE_9EA226                      ;9EA1FE|D026    |;
                       LDA.W $0DB7,X                        ;9EA200|BDB70D  |;
                       CMP.W #$0058                         ;9EA203|C95800  |;
                       BMI CODE_9EA233                      ;9EA206|302B    |;
                       CMP.W #$0108                         ;9EA208|C90801  |;
                       BPL CODE_9EA233                      ;9EA20B|1026    |;
 
          CODE_9EA20D:
                       LDA.W $11A3,Y                        ;9EA20D|B9A311  |;
                       CMP.W #$F3A6                         ;9EA210|C9A6F3  |;
                       BCC CODE_9EA21A                      ;9EA213|9005    |;
                       CMP.W #$F46B                         ;9EA215|C96BF4  |;
                       BCC CODE_9EA23E                      ;9EA218|9024    |;
 
          CODE_9EA21A:
                       LDA.W $0793                          ;9EA21A|AD9307  |;
                       AND.W #$0007                         ;9EA21D|290700  |;
                       BEQ CODE_9EA23E                      ;9EA220|F01C    |;
 
          CODE_9EA222:
                       JML.L CODE_9EA2CB                    ;9EA222|5CCBA29E|;
 
          CODE_9EA226:
                       LDA.W $0DB7,X                        ;9EA226|BDB70D  |;
                       CMP.W #$FFA8                         ;9EA229|C9A8FF  |;
                       BPL CODE_9EA233                      ;9EA22C|1005    |;
                       CMP.W #$FEF8                         ;9EA22E|C9F8FE  |;
                       BPL CODE_9EA20D                      ;9EA231|10DA    |;
 
          CODE_9EA233:
                       LDA.W $0793                          ;9EA233|AD9307  |;
                       AND.W #$0007                         ;9EA236|290700  |;
                       BNE CODE_9EA23E                      ;9EA239|D003    |;
                       JMP.W CODE_9EA222                    ;9EA23B|4C22A2  |;
 
          CODE_9EA23E:
                       JML.L CODE_9E81F9                    ;9EA23E|5CF9819E|;
 
          CODE_9EA242:
                       LDA.W #$F208                         ;9EA242|A908F2  |;
                       STA.W $1543,X                        ;9EA245|9D4315  |;
                       JML.L CODE_9EA3F1                    ;9EA248|5CF1A39E|;
 
          CODE_9EA24C:
                       LDA.W $0F43,X                        ;9EA24C|BD430F  |;
                       BEQ CODE_9EA25E                      ;9EA24F|F00D    |;
                       LDA.W $14E3,X                        ;9EA251|BDE314  |;
                       BEQ CODE_9EA25F                      ;9EA254|F009    |;
                       LDA.W $11A3,X                        ;9EA256|BDA311  |;
                       CMP.W #$F342                         ;9EA259|C942F3  |;
                       BNE CODE_9EA25F                      ;9EA25C|D001    |;
 
          CODE_9EA25E:
                       RTL                                  ;9EA25E|6B      |;
 
          CODE_9EA25F:
                       LDA.W #$FFFF                         ;9EA25F|A9FFFF  |;
                       STA.B $B1                            ;9EA262|85B1    |;
                       STA.B $89                            ;9EA264|8589    |;
                       LDY.W #$0000                         ;9EA266|A00000  |;
                       CPX.W #$000C                         ;9EA269|E00C00  |;
                       BCS CODE_9EA271                      ;9EA26C|B003    |;
                       LDY.W #$000C                         ;9EA26E|A00C00  |;
 
          CODE_9EA271:
                       LDA.W #$0006                         ;9EA271|A90600  |;
                       STA.B $AD                            ;9EA274|85AD    |;
 
          CODE_9EA276:
                       STY.B zpCurntTeamLoopVal             ;9EA276|8491    |;
                       LDA.W $0F43,Y                        ;9EA278|B9430F  |;
                       BEQ CODE_9EA2B3                      ;9EA27B|F036    |;
                       BMI CODE_9EA2B3                      ;9EA27D|3034    |;
                       LDA.W $0D55,Y                        ;9EA27F|B9550D  |;
                       SEC                                  ;9EA282|38      |;
                       SBC.W $0D55,X                        ;9EA283|FD550D  |;
                       STA.B $A5                            ;9EA286|85A5    |;
                       LDA.W $0DB7,Y                        ;9EA288|B9B70D  |;
                       SEC                                  ;9EA28B|38      |;
                       SBC.W $0DB7,X                        ;9EA28C|FDB70D  |;
                       STA.B $A9                            ;9EA28F|85A9    |;
                       LDY.B $A9                            ;9EA291|A4A9    |;
                       LDA.B $A5                            ;9EA293|A5A5    |;
                       JSL.L CODE_9CA554                    ;9EA295|2254A59C|;
                       STA.B $B5                            ;9EA299|85B5    |;
                       JSL.L CODE_9BB445                    ;9EA29B|2245B49B|;
                       LDA.B $A5                            ;9EA29F|A5A5    |;
                       SEC                                  ;9EA2A1|38      |;
                       SBC.W $1163,X                        ;9EA2A2|FD6311  |;
                       AND.W #$0007                         ;9EA2A5|290700  |;
                       CMP.W #$0005                         ;9EA2A8|C90500  |;
                       BCC CODE_9EA2B3                      ;9EA2AB|9006    |;
                       EOR.W #$FFFF                         ;9EA2AD|49FFFF  |;
                       ADC.W #$0008                         ;9EA2B0|690800  |;
 
          CODE_9EA2B3:
                       ASL A                                ;9EA2B3|0A      |;
                       ASL A                                ;9EA2B4|0A      |;
                       ASL A                                ;9EA2B5|0A      |;
                       ASL A                                ;9EA2B6|0A      |;
                       ADC.B $B5                            ;9EA2B7|65B5    |;
                       CMP.B $B1                            ;9EA2B9|C5B1    |;
                       BCS CODE_9EA2C3                      ;9EA2BB|B006    |;
                       STA.B $B1                            ;9EA2BD|85B1    |;
                       LDA.B zpCurntTeamLoopVal             ;9EA2BF|A591    |;
                       STA.B $89                            ;9EA2C1|8589    |;
 
          CODE_9EA2C3:
                       LDY.B zpCurntTeamLoopVal             ;9EA2C3|A491    |;
                       INY                                  ;9EA2C5|C8      |;
                       INY                                  ;9EA2C6|C8      |;
                       DEC.B $AD                            ;9EA2C7|C6AD    |;
                       BNE CODE_9EA276                      ;9EA2C9|D0AB    |;
 
          CODE_9EA2CB:
                       LDA.W #$F864                         ;9EA2CB|A964F8  |;
                       STA.B $A9                            ;9EA2CE|85A9    |;
                       STA.W $14E3,X                        ;9EA2D0|9DE314  |;
                       LDY.B $89                            ;9EA2D3|A489    |;
                       BMI CODE_9EA2ED                      ;9EA2D5|3016    |;
                       LDA.W $1163,X                        ;9EA2D7|BD6311  |;
                       SEC                                  ;9EA2DA|38      |;
                       SBC.W $1163,Y                        ;9EA2DB|F96311  |;
                       INC A                                ;9EA2DE|1A      |;
                       INC A                                ;9EA2DF|1A      |;
                       AND.W #$0007                         ;9EA2E0|290700  |;
                       CMP.W #$0005                         ;9EA2E3|C90500  |;
                       BCC CODE_9EA2ED                      ;9EA2E6|9005    |;
                       LDA.W #$F374                         ;9EA2E8|A974F3  |;
                       STA.B $A9                            ;9EA2EB|85A9    |;
 
          CODE_9EA2ED:
                       JML.L CODE_9EA3DD                    ;9EA2ED|5CDDA39E|;
 
          CODE_9EA2F1:
                       LDA.W $0F43,X                        ;9EA2F1|BD430F  |;
                       BEQ CODE_9EA333                      ;9EA2F4|F03D    |;
                       LDA.W $14E3,X                        ;9EA2F6|BDE314  |;
                       BNE CODE_9EA333                      ;9EA2F9|D038    |;
                       LDY.B zpCurntTeamLoopVal             ;9EA2FB|A491    |;
                       LDA.W $0D55,X                        ;9EA2FD|BD550D  |;
                       SEC                                  ;9EA300|38      |;
                       SBC.W $0D55,Y                        ;9EA301|F9550D  |;
                       STA.B $A5                            ;9EA304|85A5    |;
                       LDA.W $0DB7,X                        ;9EA306|BDB70D  |;
                       SEC                                  ;9EA309|38      |;
                       SBC.W $0DB7,Y                        ;9EA30A|F9B70D  |;
                       STA.B $A9                            ;9EA30D|85A9    |;
                       JSL.L CODE_9BB445                    ;9EA30F|2245B49B|;
                       LDY.B zpCurntTeamLoopVal             ;9EA313|A491    |;
                       LDA.B $A5                            ;9EA315|A5A5    |;
                       SEC                                  ;9EA317|38      |;
                       SBC.W $1163,Y                        ;9EA318|F96311  |;
                       INC A                                ;9EA31B|1A      |;
                       AND.W #$0007                         ;9EA31C|290700  |;
                       CMP.W #$0003                         ;9EA31F|C90300  |;
                       BCS CODE_9EA333                      ;9EA322|B00F    |;
                       LDA.W $0AD9                          ;9EA324|ADD90A  |;
                       CMP.B $95                            ;9EA327|C595    |;
                       BNE CODE_9EA334                      ;9EA329|D009    |;
                       LDA.W #$0008                         ;9EA32B|A90800  |;
                       TRB.W $15D8                          ;9EA32E|1CD815  |;
                       BRA CODE_9EA334                      ;9EA331|8001    |;
 
          CODE_9EA333:
                       RTL                                  ;9EA333|6B      |;
 
          CODE_9EA334:
                       LDA.B $A5                            ;9EA334|A5A5    |;
                       STA.W $1163,Y                        ;9EA336|996311  |;
                       LDY.B zpCurntTeamLoopVal             ;9EA339|A491    |;
                       LDA.W $0EC3,X                        ;9EA33B|BDC30E  |;
                       CLC                                  ;9EA33E|18      |;
                       ADC.W $0EC3,Y                        ;9EA33F|79C30E  |;
                       PHA                                  ;9EA342|48      |;
                       ASL A                                ;9EA343|0A      |;
                       PLA                                  ;9EA344|68      |;
                       ROR A                                ;9EA345|6A      |;
                       STA.W $0EC3,X                        ;9EA346|9DC30E  |;
                       STA.W $0EC3,Y                        ;9EA349|99C30E  |;
                       LDA.W $0EE3,X                        ;9EA34C|BDE30E  |;
                       CLC                                  ;9EA34F|18      |;
                       ADC.W $0EE3,Y                        ;9EA350|79E30E  |;
                       PHA                                  ;9EA353|48      |;
                       ASL A                                ;9EA354|0A      |;
                       PLA                                  ;9EA355|68      |;
                       ROR A                                ;9EA356|6A      |;
                       STA.W $0EE3,X                        ;9EA357|9DE30E  |;
                       STA.W $0EE3,Y                        ;9EA35A|99E30E  |;
                       TYA                                  ;9EA35D|98      |;
                       STA.W $0F03,X                        ;9EA35E|9D030F  |;
                       LDA.W #$F46A                         ;9EA361|A96AF4  |;
                       STA.W $14E3,X                        ;9EA364|9DE314  |;
                       JSL.L CODE_9EA3F1                    ;9EA367|22F1A39E|;
                       LDX.B zpCurntTeamLoopVal             ;9EA36B|A691    |;
                       LDY.B $95                            ;9EA36D|A495    |;
                       STY.B zpCurntTeamLoopVal             ;9EA36F|8491    |;
                       STX.B $95                            ;9EA371|8695    |;
                       TYA                                  ;9EA373|98      |;
                       STA.W $0F03,X                        ;9EA374|9D030F  |;
                       LDA.W #$F3A6                         ;9EA377|A9A6F3  |;
                       STA.W $14E3,X                        ;9EA37A|9DE314  |;
                       LDY.W $11A3,X                        ;9EA37D|BCA311  |;
                       CPY.W #$F374                         ;9EA380|C074F3  |;
                       BEQ CODE_9EA388                      ;9EA383|F003    |;
                       LDA.W #$F3D8                         ;9EA385|A9D8F3  |;
 
          CODE_9EA388:
                       JSL.L CODE_9EA3F1                    ;9EA388|22F1A39E|;
                       JSL.L CODE_9EC042                    ;9EA38C|2242C09E|;
                       BEQ CODE_9EA3AD                      ;9EA390|F01B    |; If zero Branch to A3AD
                       LDA.W $1E8D                          ;9EA392|AD8D1E  |;
                       BPL CODE_9EA3AD                      ;9EA395|1016    |;
                       LDY.B zpCurntTeamLoopVal             ;9EA397|A491    |;
                       STY.W $1E8D                          ;9EA399|8C8D1E  |;
                       LDA.W $19D4,Y                        ;9EA39C|B9D419  |;
                       STA.W $1E93                          ;9EA39F|8D931E  |;
                       LDA.W #$0024                         ;9EA3A2|A92400  |;
                       STA.B $A5                            ;9EA3A5|85A5    |;
                       JSL.L CODE_9EB85E                    ;9EA3A7|225EB89E|;
                       BRA CODE_9EA3CE                      ;9EA3AB|8021    |;
 
          CODE_9EA3AD:
                       JSL.L CODE_9EC124                    ;9EA3AD|2224C19E|;
                       LDA.B $A5                            ;9EA3B1|A5A5    |;
                       CMP.W #$0001                         ;9EA3B3|C90100  |;
                       BCS CODE_9EA3CE                      ;9EA3B6|B016    |;
                       LDA.W #$0028                         ;9EA3B8|A92800  |;
                       STA.B $A5                            ;9EA3BB|85A5    |;
                       LDA.W $11A3,X                        ;9EA3BD|BDA311  |;
                       CMP.W #$F3A6                         ;9EA3C0|C9A6F3  |;
                       BEQ CODE_9EA3CA                      ;9EA3C3|F005    |;
                       LDA.W #$0020                         ;9EA3C5|A92000  |;
                       STA.B $A5                            ;9EA3C8|85A5    |;
          CODE_9EA3CA:
                       JSL.L CODE_9EB85E                    ;9EA3CA|225EB89E|;
 
          CODE_9EA3CE:
                       LDX.B zpCurntTeamLoopVal             ;9EA3CE|A691    |;
                       LDY.B $95                            ;9EA3D0|A495    |;
                       STY.B zpCurntTeamLoopVal             ;9EA3D2|8491    |;
                       STX.B $95                            ;9EA3D4|8695    |;
                       LDA.W #$FFFF                         ;9EA3D6|A9FFFF  |;
                       STA.W $0CDB                          ;9EA3D9|8DDB0C  |;
                       RTL                                  ;9EA3DC|6B      |;
 
          CODE_9EA3DD:
                       LDA.B $A9                            ;9EA3DD|A5A9    |;
                       CMP.W $11A3,X                        ;9EA3DF|DDA311  |;
                       BEQ CODE_9EA3F0                      ;9EA3E2|F00C    |;
                       STA.W $11A3,X                        ;9EA3E4|9DA311  |;
                       STZ.W $11C3,X                        ;9EA3E7|9EC311  |;
                       LDA.W #$FFFF                         ;9EA3EA|A9FFFF  |;
                       STA.W $11E3,X                        ;9EA3ED|9DE311  |;
 
          CODE_9EA3F0:
                       RTL                                  ;9EA3F0|6B      |;
 
          CODE_9EA3F1:
                       CMP.W $11A3,X                        ;9EA3F1|DDA311  |;
                       BEQ CODE_9EA402                      ;9EA3F4|F00C    |;
                       STA.W $11A3,X                        ;9EA3F6|9DA311  |;
                       STZ.W $11C3,X                        ;9EA3F9|9EC311  |;
                       LDA.W #$FFFF                         ;9EA3FC|A9FFFF  |;
                       STA.W $11E3,X                        ;9EA3FF|9DE311  |;
 
          CODE_9EA402:
                       RTL                                  ;9EA402|6B      |;
 
          CODE_9EA403:
                       CMP.W $11A3,X                        ;9EA403|DDA311  |;
                       BEQ CODE_9EA418                      ;9EA406|F010    |;
                       STA.W $11A3,X                        ;9EA408|9DA311  |;
                       STZ.W $11C3,X                        ;9EA40B|9EC311  |;
                       LDA.W #$FFFF                         ;9EA40E|A9FFFF  |;
                       STA.W $11E3,X                        ;9EA411|9DE311  |;
                       JSL.L CODE_9EA419                    ;9EA414|2219A49E|;
 
          CODE_9EA418:
                       RTL                                  ;9EA418|6B      |;
 
          CODE_9EA419:
                       LDA.W $11A3,X                        ;9EA419|BDA311  |;
                       BNE CODE_9EA442                      ;9EA41C|D024    |;
                       STZ.W $1543,X                        ;9EA41E|9E4315  |;
                       STZ.W $14E3,X                        ;9EA421|9EE314  |;
                       RTL                                  ;9EA424|6B      |;
 
          CODE_9EA425:
                       CPX.W #$0018                         ;9EA425|E01800  |;
                       BCS CODE_9EA456                      ;9EA428|B02C    |;
                       LDA.W $0E03,X                        ;9EA42A|BD030E  |;
                       BIT.W #$0800                         ;9EA42D|890008  |;
                       BEQ CODE_9EA43B                      ;9EA430|F009    |;
                       LDA.W #$0002                         ;9EA432|A90200  |;
                       SEC                                  ;9EA435|38      |;
                       SBC.W $1163,X                        ;9EA436|FD6311  |;
                       BRA CODE_9EA472                      ;9EA439|8037    |;
 
          CODE_9EA43B:
                       LDA.W $1163,X                        ;9EA43B|BD6311  |;
                       DEC A                                ;9EA43E|3A      |;
                       DEC A                                ;9EA43F|3A      |;
                       BRA CODE_9EA472                      ;9EA440|8030    |;
 
          CODE_9EA442:
                       PHY                                  ;9EA442|5A      |;
                       STA.B $89                            ;9EA443|8589    |;
                       LDA.W #$009D                         ;9EA445|A99D00  |;
                       STA.B $8B                            ;9EA448|858B    |;
                       LDY.W #$0010                         ;9EA44A|A01000  |;
                       LDA.B [$89],Y                        ;9EA44D|B789    |;
                       STA.B $A9                            ;9EA44F|85A9    |;
                       LDA.W PauseScreenActive              ;9EA451|ADDA15  |;
                       BNE CODE_9EA425                      ;9EA454|D0CF    |;
 
          CODE_9EA456:
                       LDA.W $11A3,X                        ;9EA456|BDA311  |;
                       CMP.W #$FDFE                         ;9EA459|C9FEFD  |;
                       BCS CODE_9EA46F                      ;9EA45C|B011    |;
                       LDA.W $0E03,X                        ;9EA45E|BD030E  |;
                       BIT.W #$0800                         ;9EA461|890008  |;
                       BEQ CODE_9EA46F                      ;9EA464|F009    |;
                       LDA.W #$0000                         ;9EA466|A90000  |;
                       SEC                                  ;9EA469|38      |;
                       SBC.W $1163,X                        ;9EA46A|FD6311  |;
                       BRA CODE_9EA472                      ;9EA46D|8003    |;
 
          CODE_9EA46F:
                       LDA.W $1163,X                        ;9EA46F|BD6311  |;
 
          CODE_9EA472:
                       AND.W #$0007                         ;9EA472|290700  |;
                       ASL A                                ;9EA475|0A      |;
                       TAY                                  ;9EA476|A8      |;
                       LDA.B [$89],Y                        ;9EA477|B789    |;
                       STA.B $89                            ;9EA479|8589    |;
                       LDY.W $11C3,X                        ;9EA47B|BCC311  |;
                       STY.B $A5                            ;9EA47E|84A5    |;
                       LDA.B [$89],Y                        ;9EA480|B789    |;
                       STA.B $AD                            ;9EA482|85AD    |;
                       LDA.W $11E3,X                        ;9EA484|BDE311  |;
                       BMI CODE_9EA4C6                      ;9EA487|303D    |;
                       SEC                                  ;9EA489|38      |;
                       SBC.W $0ADB                          ;9EA48A|EDDB0A  |;
                       STA.W $11E3,X                        ;9EA48D|9DE311  |;
                       BPL CODE_9EA4D8                      ;9EA490|1046    |;
                       LDA.W $11C3,X                        ;9EA492|BDC311  |;
                       CLC                                  ;9EA495|18      |;
                       ADC.W #$0004                         ;9EA496|690400  |;
                       STA.W $11C3,X                        ;9EA499|9DC311  |;
                       STA.B $A5                            ;9EA49C|85A5    |;
                       INY                                  ;9EA49E|C8      |;
                       INY                                  ;9EA49F|C8      |;
                       LDA.B [$89],Y                        ;9EA4A0|B789    |;
                       CMP.W #$0000                         ;9EA4A2|C90000  |;
                       BPL CODE_9EA4C6                      ;9EA4A5|101F    |;
                       STZ.B $A5                            ;9EA4A7|64A5    |;
                       STZ.W $11C3,X                        ;9EA4A9|9EC311  |;
                       STZ.W $1543,X                        ;9EA4AC|9E4315  |;
                       STZ.W $14E3,X                        ;9EA4AF|9EE314  |;
                       LDA.W $11A3,X                        ;9EA4B2|BDA311  |;
                       CMP.W #$FEC2                         ;9EA4B5|C9C2FE  |;
                       BCS CODE_9EA4BF                      ;9EA4B8|B005    |;
                       CMP.W #$FDFE                         ;9EA4BA|C9FEFD  |;
                       BCS CODE_9EA4DF                      ;9EA4BD|B020    |;
 
          CODE_9EA4BF:
                       LDA.B $A9                            ;9EA4BF|A5A9    |;
                       BNE CODE_9EA4C6                      ;9EA4C1|D003    |;
                       STZ.W $11A3,X                        ;9EA4C3|9EA311  |;
 
          CODE_9EA4C6:
                       LDY.B $A5                            ;9EA4C6|A4A5    |;
                       INY                                  ;9EA4C8|C8      |;
                       INY                                  ;9EA4C9|C8      |;
                       LDA.B [$89],Y                        ;9EA4CA|B789    |;
                       BIT.W #$8000                         ;9EA4CC|890080  |;
                       BEQ CODE_9EA4D5                      ;9EA4CF|F004    |;
                       EOR.W #$FFFF                         ;9EA4D1|49FFFF  |;
                       INC A                                ;9EA4D4|1A      |;
 
          CODE_9EA4D5:
                       STA.W $11E3,X                        ;9EA4D5|9DE311  |;
 
          CODE_9EA4D8:
                       LDA.B $AD                            ;9EA4D8|A5AD    |;
                       STA.W $0D97,X                        ;9EA4DA|9D970D  |;
 
          CODE_9EA4DD:
                       PLY                                  ;9EA4DD|7A      |;
                       RTL                                  ;9EA4DE|6B      |;
 
          CODE_9EA4DF:
                       LDA.W #$FF78                         ;9EA4DF|A978FF  |;
                       STA.W $0D55,X                        ;9EA4E2|9D550D  |;
                       LDA.W #$0002                         ;9EA4E5|A90200  |;
                       STA.W $1163,X                        ;9EA4E8|9D6311  |;
                       STA.W $14E3,X                        ;9EA4EB|9DE314  |;
                       LDA.W #$E8F4                         ;9EA4EE|A9F4E8  |;
                       JSL.L CODE_9EA403                    ;9EA4F1|2203A49E|;
                       BRA CODE_9EA4DD                      ;9EA4F5|80E6    |;
 
          CODE_9EA4F7:
                       LDA.W $0EC3,X                        ;9EA4F7|BDC30E  |;
                       CMP.W #$EFFF                         ;9EA4FA|C9FFEF  |;
                       BMI CODE_9EA511                      ;9EA4FD|3012    |;
                       CMP.W #$1001                         ;9EA4FF|C90110  |;
                       BPL CODE_9EA511                      ;9EA502|100D    |;
                       LDA.W $0EE3,X                        ;9EA504|BDE30E  |;
                       CMP.W #$EFFF                         ;9EA507|C9FFEF  |;
                       BMI CODE_9EA511                      ;9EA50A|3005    |;
                       CMP.W #$1001                         ;9EA50C|C90110  |;
                       BMI CODE_9EA539                      ;9EA50F|3028    |;
 
          CODE_9EA511:
                       LDA.W #$EA1A                         ;9EA511|A91AEA  |;
                       LDY.W $1523,X                        ;9EA514|BC2315  |;
                       BNE CODE_9EA535                      ;9EA517|D01C    |;
                       CPX.W $0AD9                          ;9EA519|ECD90A  |;
                       BNE CODE_9EA52F                      ;9EA51C|D011    |;
                       LDA.W $0EC3,X                        ;9EA51E|BDC30E  |;
                       STA.B $0C                            ;9EA521|850C    |;
                       LDA.W $0EE3,X                        ;9EA523|BDE30E  |;
                       STA.B $0E                            ;9EA526|850E    |;
                       LDA.W #$0011                         ;9EA528|A91100  |;
                       JSL.L CODE_9C9AD0                    ;9EA52B|22D09A9C|;
 
          CODE_9EA52F:
                       LDA.W #$EC14                         ;9EA52F|A914EC  |;
                       STA.W $1543,X                        ;9EA532|9D4315  |;
 
          CODE_9EA535:
                       JSL.L CODE_9EA3F1                    ;9EA535|22F1A39E|;
 
          CODE_9EA539:
                       LDA.W $0F43,X                        ;9EA539|BD430F  |;
                       BNE CODE_9EA55D                      ;9EA53C|D01F    |;
                       LDA.W $19D4,X                        ;9EA53E|BDD419  |;
                       BMI CODE_9EA55D                      ;9EA541|301A    |;
                       CPX.W $0AD9                          ;9EA543|ECD90A  |;
                       BEQ CODE_9EA55D                      ;9EA546|F015    |;
                       LDA.W $0EC3,X                        ;9EA548|BDC30E  |;
                       CMP.W #$8000                         ;9EA54B|C90080  |;
                       ROR A                                ;9EA54E|6A      |;
                       STA.W $0EC3,X                        ;9EA54F|9DC30E  |;
                       LDA.W $0EE3,X                        ;9EA552|BDE30E  |;
                       CMP.W #$8000                         ;9EA555|C90080  |;
                       ROR A                                ;9EA558|6A      |;
                       STA.W $0EE3,X                        ;9EA559|9DE30E  |;
                       RTL                                  ;9EA55C|6B      |;
 
          CODE_9EA55D:
                       PHX                                  ;9EA55D|DA      |;
                       LDA.W #$0070                         ;9EA55E|A97000  |;
                       CLC                                  ;9EA561|18      |;
                       ADC.W $12E3,X                        ;9EA562|7DE312  |;
                       LDX.W $0ADB                          ;9EA565|AEDB0A  |;
                       JSL.L CODE_808F4C                    ;9EA568|224C8F80|;
                       STA.B $08                            ;9EA56C|8508    |;
                       PLX                                  ;9EA56E|FA      |;
                       LDA.W $0EC3,X                        ;9EA56F|BDC30E  |;
                       BPL CODE_9EA57E                      ;9EA572|100A    |;
                       CLC                                  ;9EA574|18      |;
                       ADC.B $08                            ;9EA575|6508    |;
                       STA.W $0EC3,X                        ;9EA577|9DC30E  |;
                       BMI CODE_9EA589                      ;9EA57A|300D    |;
                       BRA CODE_9EA586                      ;9EA57C|8008    |;
 
          CODE_9EA57E:
                       SEC                                  ;9EA57E|38      |;
                       SBC.B $08                            ;9EA57F|E508    |;
                       STA.W $0EC3,X                        ;9EA581|9DC30E  |;
                       BPL CODE_9EA589                      ;9EA584|1003    |;
 
          CODE_9EA586:
                       STZ.W $0EC3,X                        ;9EA586|9EC30E  |;
 
          CODE_9EA589:
                       LDA.W $0EE3,X                        ;9EA589|BDE30E  |;
                       BPL CODE_9EA598                      ;9EA58C|100A    |;
                       CLC                                  ;9EA58E|18      |;
                       ADC.B $08                            ;9EA58F|6508    |;
                       STA.W $0EE3,X                        ;9EA591|9DE30E  |;
                       BMI CODE_9EA5A3                      ;9EA594|300D    |;
                       BRA CODE_9EA5A0                      ;9EA596|8008    |;
 
          CODE_9EA598:
                       SEC                                  ;9EA598|38      |;
                       SBC.B $08                            ;9EA599|E508    |;
                       STA.W $0EE3,X                        ;9EA59B|9DE30E  |;
                       BPL CODE_9EA5A3                      ;9EA59E|1003    |;
 
          CODE_9EA5A0:
                       STZ.W $0EE3,X                        ;9EA5A0|9EE30E  |;
 
          CODE_9EA5A3:
                       RTL                                  ;9EA5A3|6B      |;
 
          CODE_9EA5A4:
                       LDA.W $1023,X                        ;9EA5A4|BD2310  |;
                       SEC                                  ;9EA5A7|38      |;
                       SBC.W $0ADB                          ;9EA5A8|EDDB0A  |;
                       STA.W $1023,X                        ;9EA5AB|9D2310  |;
                       BMI CODE_9EA5B3                      ;9EA5AE|3003    |;
                       JMP.W CODE_9EA694                    ;9EA5B0|4C94A6  |;
 
          CODE_9EA5B3:
                       ADC.W #$000C                         ;9EA5B3|690C00  |;
                       STA.W $1023,X                        ;9EA5B6|9D2310  |;
                       LDA.B $A5                            ;9EA5B9|A5A5    |;
                       STA.B $A7                            ;9EA5BB|85A7    |;
                       LDA.B $A9                            ;9EA5BD|A5A9    |;
                       STA.B $AB                            ;9EA5BF|85AB    |;
                       JSL.L CODE_9EAB74                    ;9EA5C1|2274AB9E|;
                       LDA.W $0EC3,X                        ;9EA5C5|BDC30E  |;
                       XBA                                  ;9EA5C8|EB      |;
                       AND.W #$00FF                         ;9EA5C9|29FF00  |;
                       BIT.W #$0080                         ;9EA5CC|898000  |;
                       BEQ CODE_9EA5D4                      ;9EA5CF|F003    |;
                       ORA.W #$FF00                         ;9EA5D1|0900FF  |;
 
          CODE_9EA5D4:
                       EOR.W #$FFFF                         ;9EA5D4|49FFFF  |;
                       INC A                                ;9EA5D7|1A      |;
                       STA.B $14                            ;9EA5D8|8514    |;
                       CLC                                  ;9EA5DA|18      |;
                       ADC.B $A5                            ;9EA5DB|65A5    |;
                       SEC                                  ;9EA5DD|38      |;
                       SBC.W $0D55,X                        ;9EA5DE|FD550D  |;
                       STA.B $A5                            ;9EA5E1|85A5    |;
                       LDA.W $0EE3,X                        ;9EA5E3|BDE30E  |;
                       XBA                                  ;9EA5E6|EB      |;
                       AND.W #$00FF                         ;9EA5E7|29FF00  |;
                       BIT.W #$0080                         ;9EA5EA|898000  |;
                       BEQ CODE_9EA5F2                      ;9EA5ED|F003    |;
                       ORA.W #$FF00                         ;9EA5EF|0900FF  |;
 
          CODE_9EA5F2:
                       EOR.W #$FFFF                         ;9EA5F2|49FFFF  |;
                       INC A                                ;9EA5F5|1A      |;
                       STA.B $16                            ;9EA5F6|8516    |;
                       CLC                                  ;9EA5F8|18      |;
                       ADC.B $A9                            ;9EA5F9|65A9    |;
                       SEC                                  ;9EA5FB|38      |;
                       SBC.W $0DB7,X                        ;9EA5FC|FDB70D  |;
                       STA.B $A9                            ;9EA5FF|85A9    |;
                       LDA.W $0F43,X                        ;9EA601|BD430F  |;
                       BNE CODE_9EA60E                      ;9EA604|D008    |;
                       LDA.W $0B05,X                        ;9EA606|BD050B  |;
                       BIT.W #$0002                         ;9EA609|890200  |;
                       BEQ CODE_9EA65A                      ;9EA60C|F04C    |;
 
          CODE_9EA60E:
                       LDA.B $A5                            ;9EA60E|A5A5    |;
                       PHA                                  ;9EA610|48      |;
                       LDA.B $A9                            ;9EA611|A5A9    |;
                       PHA                                  ;9EA613|48      |;
                       LDY.W $0EC3,X                        ;9EA614|BCC30E  |;
                       LDA.W $0EE3,X                        ;9EA617|BDE30E  |;
                       JSL.L CODE_9CA554                    ;9EA61A|2254A59C|;
                       PHA                                  ;9EA61E|48      |;
                       LDA.B $14                            ;9EA61F|A514    |;
                       CLC                                  ;9EA621|18      |;
                       ADC.B $A7                            ;9EA622|65A7    |;
                       SEC                                  ;9EA624|38      |;
                       SBC.W $0D55,X                        ;9EA625|FD550D  |;
                       TAY                                  ;9EA628|A8      |;
                       LDA.B $16                            ;9EA629|A516    |;
                       CLC                                  ;9EA62B|18      |;
                       ADC.B $AB                            ;9EA62C|65AB    |;
                       SEC                                  ;9EA62E|38      |;
                       SBC.W $0DB7,X                        ;9EA62F|FDB70D  |;
                       JSL.L CODE_9CA554                    ;9EA632|2254A59C|;
                       TAY                                  ;9EA636|A8      |;
                       PLA                                  ;9EA637|68      |;
                       STA.B $14                            ;9EA638|8514    |;
                       PLA                                  ;9EA63A|68      |;
                       STA.B $A9                            ;9EA63B|85A9    |;
                       PLA                                  ;9EA63D|68      |;
                       STA.B $A5                            ;9EA63E|85A5    |;
                       LDA.B $14                            ;9EA640|A514    |;
                       CMP.W #$1000                         ;9EA642|C90010  |;
                       BCS CODE_9EA64E                      ;9EA645|B007    |;
                       CPY.W #$0005                         ;9EA647|C00500  |;
                       BPL CODE_9EA65A                      ;9EA64A|100E    |;
                       BRA CODE_9EA653                      ;9EA64C|8005    |;
 
          CODE_9EA64E:
                       CPY.W #$000C                         ;9EA64E|C00C00  |;
                       BPL CODE_9EA65A                      ;9EA651|1007    |;
 
          CODE_9EA653:
                       LDA.W #$0009                         ;9EA653|A90900  |;
                       STA.B $A5                            ;9EA656|85A5    |;
                       BRA CODE_9EA65E                      ;9EA658|8004    |;
 
          CODE_9EA65A:
                       JSL.L CODE_9BB445                    ;9EA65A|2245B49B|;
 
          CODE_9EA65E:
                       LDA.B $89                            ;9EA65E|A589    |;
                       STA.W $1D5A                          ;9EA660|8D5A1D  |;
                       LDA.B $8A                            ;9EA663|A58A    |;
                       STA.W $1D5B                          ;9EA665|8D5B1D  |;
                       JSL.L $001D59                        ;9EA668|22591D00|;
                       LDA.B $A5                            ;9EA66C|A5A5    |;
                       STA.W $10A3,X                        ;9EA66E|9DA310  |;
                       CMP.W #$0008                         ;9EA671|C90800  |;
                       BCC CODE_9EA694                      ;9EA674|901E    |;
                       LDA.W $0EC3,X                        ;9EA676|BDC30E  |;
                       ORA.W $0EE3,X                        ;9EA679|1DE30E  |;
                       BNE CODE_9EA694                      ;9EA67C|D016    |;
                       LDA.W $0D71                          ;9EA67E|AD710D  |;
                       SEC                                  ;9EA681|38      |;
                       SBC.W $0D55,X                        ;9EA682|FD550D  |;
                       STA.B $A5                            ;9EA685|85A5    |;
                       LDA.W $0DD3                          ;9EA687|ADD30D  |;
                       SEC                                  ;9EA68A|38      |;
                       SBC.W $0DB7,X                        ;9EA68B|FDB70D  |;
                       STA.B $A9                            ;9EA68E|85A9    |;
                       JSL.L CODE_9BB445                    ;9EA690|2245B49B|;
 
          CODE_9EA694:
                       LDA.W $10A3,X                        ;9EA694|BDA310  |;
                       STA.B $A5                            ;9EA697|85A5    |;
                       JML.L CODE_9EA8A9                    ;9EA699|5CA9A89E|;
                       db $BD,$83,$12,$89,$02,$00,$F0,$27   ;9EA69D|        |;
                       db $29,$FD,$FF,$9D,$83,$12,$A9,$5A   ;9EA6A5|        |;
                       db $00,$9D,$43,$10,$AD,$EB,$0C,$10   ;9EA6AD|        |;
                       db $06,$A9,$A6,$FF,$9D,$43,$10,$AD   ;9EA6B5|        |;
                       db $37,$0D,$9D,$63,$10,$A9,$8E,$F6   ;9EA6BD|        |;
                       db $9D,$E3,$14,$22,$F1,$A3,$9E,$BD   ;9EA6C5|        |;
                       db $43,$10,$38,$FD,$55,$0D,$85,$A5   ;9EA6CD|        |;
                       db $BD,$63,$10,$38,$FD,$B7,$0D,$85   ;9EA6D5|        |;
                       db $A9,$22,$45,$B4,$9B,$A5,$A5,$C9   ;9EA6DD|        |;
                       db $08,$00,$10,$10,$A5,$A5,$85,$AD   ;9EA6E5|        |;
                       db $9D,$63,$11,$A9,$14,$00,$9D,$E3   ;9EA6ED|        |;
                       db $14,$4C,$19,$A7,$6B,$A9,$FF,$FF   ;9EA6F5|        |;
                       db $85,$AD,$E6,$AD,$A5,$89,$18,$65   ;9EA6FD|        |;
                       db $AD,$A8,$E2,$20,$B9,$BA,$18,$99   ;9EA705|        |;
                       db $B9,$18,$C2,$30,$89,$80,$00,$F0   ;9EA70D|        |;
                       db $E9,$C6,$89,$6B                   ;9EA715|        |;
 
          CODE_9EA719:
                       ASL.B $AD                            ;9EA719|06AD    |;
                       ASL.B $AD                            ;9EA71B|06AD    |;
                       LDX.B $AD                            ;9EA71D|A6AD    |;
                       LDA.L DATA8_9EA88B,X                 ;9EA71F|BF8BA89E|;
                       STA.B $A9                            ;9EA723|85A9    |;
                       LDA.L DATA8_9EA889,X                 ;9EA725|BF89A89E|;
                       STA.B $A5                            ;9EA729|85A5    |;
                       LDX.B $E4                            ;9EA72B|A6E4    |;
                       LDA.W $1123,X                        ;9EA72D|BD2311  |;
                       BEQ CODE_9EA738                      ;9EA730|F006    |;
                       EOR.B $A5                            ;9EA732|45A5    |;
                       BPL CODE_9EA738                      ;9EA734|1002    |;
                       STZ.B $A5                            ;9EA736|64A5    |;
 
          CODE_9EA738:
                       LDA.W $1103,X                        ;9EA738|BD0311  |;
                       BEQ CODE_9EA743                      ;9EA73B|F006    |;
                       EOR.B $A9                            ;9EA73D|45A9    |;
                       BMI CODE_9EA743                      ;9EA73F|3002    |;
                       STZ.B $A9                            ;9EA741|64A9    |;
 
          CODE_9EA743:
                       LDA.W $12C3,X                        ;9EA743|BDC312  |;
                       LSR A                                ;9EA746|4A      |;
                       LSR A                                ;9EA747|4A      |;
                       LSR A                                ;9EA748|4A      |;
                       EOR.W #$FFFF                         ;9EA749|49FFFF  |;
                       INC A                                ;9EA74C|1A      |;
                       CLC                                  ;9EA74D|18      |;
                       ADC.W #$0020                         ;9EA74E|692000  |;
                       CLC                                  ;9EA751|18      |;
                       ADC.W $12E3,X                        ;9EA752|7DE312  |;
                       STA.B $AD                            ;9EA755|85AD    |;
                       LDA.W $12E3,X                        ;9EA757|BDE312  |;
                       LSR A                                ;9EA75A|4A      |;
                       ADC.B $AD                            ;9EA75B|65AD    |;
                       STA.B $AD                            ;9EA75D|85AD    |;
                       LDA.W $0F43,X                        ;9EA75F|BD430F  |;
                       BNE CODE_9EA78C                      ;9EA762|D028    |;
                       LDA.W $19D4,X                        ;9EA764|BDD419  |;
                       BMI CODE_9EA77B                      ;9EA767|3012    |;
                       CPX.W $0AD9                          ;9EA769|ECD90A  |;
                       BEQ CODE_9EA77B                      ;9EA76C|F00D    |;
                       LDA.W $12E3,X                        ;9EA76E|BDE312  |;
                       ASL A                                ;9EA771|0A      |;
                       ADC.B $AD                            ;9EA772|65AD    |;
                       ADC.W #$0008                         ;9EA774|690800  |;
                       STA.B $AD                            ;9EA777|85AD    |;
                       BRA CODE_9EA78C                      ;9EA779|8011    |;
 
          CODE_9EA77B:
                       LDA.B $AD                            ;9EA77B|A5AD    |;
                       LDY.W $0D07                          ;9EA77D|AC070D  |;
                       BMI CODE_9EA786                      ;9EA780|3004    |;
                       SEC                                  ;9EA782|38      |;
                       SBC.W $12E3,X                        ;9EA783|FDE312  |;
 
          CODE_9EA786:
                       CLC                                  ;9EA786|18      |;
                       ADC.W #$0008                         ;9EA787|690800  |;
                       STA.B $AD                            ;9EA78A|85AD    |;
 
          CODE_9EA78C:
                       LDA.B $AD                            ;9EA78C|A5AD    |;
                       PHA                                  ;9EA78E|48      |;
                       LDX.B $A5                            ;9EA78F|A6A5    |;
                       JSL.L CODE_808F5D                    ;9EA791|225D8F80|;
                       TAX                                  ;9EA795|AA      |;
                       LDA.B $C1                            ;9EA796|A5C1    |;
                       JSL.L CODE_808FC9                    ;9EA798|22C98F80|;
                       LDX.B $E4                            ;9EA79C|A6E4    |;
                       LDA.B $08                            ;9EA79E|A508    |;
                       ADC.W $0EC3,X                        ;9EA7A0|7DC30E  |;
                       STA.B $A5                            ;9EA7A3|85A5    |;
                       XBA                                  ;9EA7A5|EB      |;
                       AND.W #$00FF                         ;9EA7A6|29FF00  |;
                       CMP.W #$0080                         ;9EA7A9|C98000  |;
                       BCC CODE_9EA7B1                      ;9EA7AC|9003    |;
                       ORA.W #$FF00                         ;9EA7AE|0900FF  |;
 
          CODE_9EA7B1:
                       TAX                                  ;9EA7B1|AA      |;
                       JSL.L CODE_808F7D                    ;9EA7B2|227D8F80|;
                       STA.B $B1                            ;9EA7B6|85B1    |;
                       PLA                                  ;9EA7B8|68      |;
                       LDX.B $A9                            ;9EA7B9|A6A9    |;
                       JSL.L CODE_808F5D                    ;9EA7BB|225D8F80|;
                       TAX                                  ;9EA7BF|AA      |;
                       LDA.B $C1                            ;9EA7C0|A5C1    |;
                       JSL.L CODE_808FC9                    ;9EA7C2|22C98F80|;
                       LDX.B $E4                            ;9EA7C6|A6E4    |;
                       LDA.B $08                            ;9EA7C8|A508    |;
                       ADC.W $0EE3,X                        ;9EA7CA|7DE30E  |;
                       STA.B $A9                            ;9EA7CD|85A9    |;
                       XBA                                  ;9EA7CF|EB      |;
                       AND.W #$00FF                         ;9EA7D0|29FF00  |;
                       CMP.W #$0080                         ;9EA7D3|C98000  |;
                       BCC CODE_9EA7DB                      ;9EA7D6|9003    |;
                       ORA.W #$FF00                         ;9EA7D8|0900FF  |;
 
          CODE_9EA7DB:
                       TAX                                  ;9EA7DB|AA      |;
                       JSL.L CODE_808F7D                    ;9EA7DC|227D8F80|;
                       CLC                                  ;9EA7E0|18      |;
                       ADC.B $B1                            ;9EA7E1|65B1    |;
                       STA.B $B1                            ;9EA7E3|85B1    |;
                       LDA.B $A9                            ;9EA7E5|A5A9    |;
                       PHA                                  ;9EA7E7|48      |;
                       LDA.B $A5                            ;9EA7E8|A5A5    |;
                       PHA                                  ;9EA7EA|48      |;
                       LDX.B $E4                            ;9EA7EB|A6E4    |;
                       JSL.L CODE_9FDCB2                    ;9EA7ED|22B2DC9F|;
                       LDA.W $1303,X                        ;9EA7F1|BD0313  |;
                       PHA                                  ;9EA7F4|48      |;
                       LDA.L $7E34C6                        ;9EA7F5|AFC6347E|;
                       CMP.W #$0002                         ;9EA7F9|C90200  |;
                       BNE CODE_9EA803                      ;9EA7FC|D005    |;
                       db $A9,$00,$10,$85,$A5               ;9EA7FE|        |;
 
          CODE_9EA803:
                       LDA.B $A5                            ;9EA803|A5A5    |;
                       LSR A                                ;9EA805|4A      |;
                       CLC                                  ;9EA806|18      |;
                       ADC.W #$0800                         ;9EA807|690008  |;
                       TAX                                  ;9EA80A|AA      |;
                       PLA                                  ;9EA80B|68      |;
                       ASL A                                ;9EA80C|0A      |;
                       ASL A                                ;9EA80D|0A      |;
                       ASL A                                ;9EA80E|0A      |;
                       ASL A                                ;9EA80F|0A      |;
                       JSL.L CODE_808F98                    ;9EA810|22988F80|;
                       LDA.B $0A                            ;9EA814|A50A    |;
                       ASL A                                ;9EA816|0A      |;
                       ASL A                                ;9EA817|0A      |;
                       TAX                                  ;9EA818|AA      |;
                       LDA.L DATA8_80D9C6,X                 ;9EA819|BFC6D980|;
                       STA.B $AD                            ;9EA81D|85AD    |;
                       LDA.L UNREACH_80D9C8,X               ;9EA81F|BFC8D980|;
                       STA.B $AF                            ;9EA823|85AF    |;
                       LDX.B $E4                            ;9EA825|A6E4    |;
                       LDA.W $0F43,X                        ;9EA827|BD430F  |;
                       BNE CODE_9EA845                      ;9EA82A|D019    |;
                       LDA.W $19D4,X                        ;9EA82C|BDD419  |;
                       BMI CODE_9EA845                      ;9EA82F|3014    |;
                       LDA.W $0B05,X                        ;9EA831|BD050B  |;
                       BIT.W #$0004                         ;9EA834|890400  |;
                       BNE CODE_9EA845                      ;9EA837|D00C    |;
                       LDA.B $AF                            ;9EA839|A5AF    |;
                       LSR A                                ;9EA83B|4A      |;
                       LSR A                                ;9EA83C|4A      |;
                       EOR.W #$FFFF                         ;9EA83D|49FFFF  |;
                       INC A                                ;9EA840|1A      |;
                       ADC.B $AF                            ;9EA841|65AF    |;
                       STA.B $AF                            ;9EA843|85AF    |;
 
          CODE_9EA845:
                       PLA                                  ;9EA845|68      |;
                       STA.B $A5                            ;9EA846|85A5    |;
                       PLA                                  ;9EA848|68      |;
                       STA.B $A9                            ;9EA849|85A9    |;
                       LDA.B $AF                            ;9EA84B|A5AF    |;
                       CMP.B $B1                            ;9EA84D|C5B1    |;
                       BCC CODE_9EA85B                      ;9EA84F|900A    |;
                       LDA.B $A5                            ;9EA851|A5A5    |;
                       STA.W $0EC3,X                        ;9EA853|9DC30E  |;
                       LDA.B $A9                            ;9EA856|A5A9    |;
                       STA.W $0EE3,X                        ;9EA858|9DE30E  |;
 
          CODE_9EA85B:
                       LDA.L $7E34C6                        ;9EA85B|AFC6347E|;
                       BEQ CODE_9EA888                      ;9EA85F|F027    |;
                       db $AD,$92,$07,$29,$3F,$00,$D0,$1F   ;9EA861|        |;
                       db $22,$B2,$DC,$9F,$A5,$A5,$38,$E9   ;9EA869|        |;
                       db $21,$00,$85,$A5,$C9,$00,$0C,$30   ;9EA871|        |;
                       db $0A,$BD,$23,$14,$85,$AD,$18,$65   ;9EA879|        |;
                       db $A5,$85,$A5,$5C,$D3,$DC,$9F       ;9EA881|        |;
 
          CODE_9EA888:
                       RTL                                  ;9EA888|6B      |;
 
         DATA8_9EA889:
                       db $00,$00                           ;9EA889|        |;
 
         DATA8_9EA88B:
                       db $06,$00,$04,$00,$04,$00,$06,$00   ;9EA88B|        |;
                       db $00,$00,$04,$00,$FC,$FF,$00,$00   ;9EA893|        |;
                       db $FA,$FF,$FC,$FF,$FC,$FF,$FA,$FF   ;9EA89B|        |;
                       db $00,$00,$FC,$FF,$04,$00           ;9EA8A3|        |;
 
          CODE_9EA8A9:
                       LDA.W $0F43,X                        ;9EA8A9|BD430F  |;
                       BNE CODE_9EA8B2                      ;9EA8AC|D004    |;
                       JML.L CODE_9ECFDC                    ;9EA8AE|5CDCCF9E|;
 
          CODE_9EA8B2:
                       LDA.W $11A3,X                        ;9EA8B2|BDA311  |;
                       CMP.W #$F208                         ;9EA8B5|C908F2  |;
                       BEQ CODE_9EA8ED                      ;9EA8B8|F033    |;
                       LDA.W #$EA1A                         ;9EA8BA|A91AEA  |;
                       STA.B $A9                            ;9EA8BD|85A9    |;
                       LDA.W $1523,X                        ;9EA8BF|BD2315  |;
                       BEQ CODE_9EA8C9                      ;9EA8C2|F005    |;
                       LDA.W #$F0D2                         ;9EA8C4|A9D2F0  |;
                       STA.B $A9                            ;9EA8C7|85A9    |;
 
          CODE_9EA8C9:
                       LDA.B $A5                            ;9EA8C9|A5A5    |;
                       AND.W #$000F                         ;9EA8CB|290F00  |;
                       STA.B $A5                            ;9EA8CE|85A5    |;
                       CMP.W #$0008                         ;9EA8D0|C90800  |;
                       BCC CODE_9EA8EE                      ;9EA8D3|9019    |;
                       CMP.W #$0009                         ;9EA8D5|C90900  |;
                       BNE CODE_9EA8E5                      ;9EA8D8|D00B    |;
                       LDA.W $0EC3,X                        ;9EA8DA|BDC30E  |;
                       ORA.W $0EE3,X                        ;9EA8DD|1DE30E  |;
                       BEQ CODE_9EA8E5                      ;9EA8E0|F003    |;
                       JMP.W CODE_9EA4F7                    ;9EA8E2|4CF7A4  |;
 
          CODE_9EA8E5:
                       LDA.W $1543,X                        ;9EA8E5|BD4315  |;
                       BNE CODE_9EA8ED                      ;9EA8E8|D003    |;
                       JMP.W CODE_9EA3DD                    ;9EA8EA|4CDDA3  |;
 
          CODE_9EA8ED:
                       RTL                                  ;9EA8ED|6B      |;
 
          CODE_9EA8EE:
                       LDA.B $A9                            ;9EA8EE|A5A9    |;
                       PHA                                  ;9EA8F0|48      |;
                       LDA.B $A5                            ;9EA8F1|A5A5    |;
                       PHA                                  ;9EA8F3|48      |;
                       STA.B $AD                            ;9EA8F4|85AD    |;
                       CPX.W $0AD9                          ;9EA8F6|ECD90A  |;
                       BNE CODE_9EA8FE                      ;9EA8F9|D003    |;
                       JMP.W CODE_9EA9AD                    ;9EA8FB|4CADA9  |;
 
          CODE_9EA8FE:
                       LDA.W $0D71                          ;9EA8FE|AD710D  |;
                       SEC                                  ;9EA901|38      |;
                       SBC.W $0D55,X                        ;9EA902|FD550D  |;
                       STA.B $A5                            ;9EA905|85A5    |;
                       LDA.W $0DB7,X                        ;9EA907|BDB70D  |;
                       STA.B $B1                            ;9EA90A|85B1    |;
                       LDA.W $0EFF                          ;9EA90C|ADFF0E  |;
                       XBA                                  ;9EA90F|EB      |;
                       AND.W #$00FF                         ;9EA910|29FF00  |;
                       CMP.W #$0080                         ;9EA913|C98000  |;
                       BCC CODE_9EA91B                      ;9EA916|9003    |;
                       ORA.W #$FF00                         ;9EA918|0900FF  |;
 
          CODE_9EA91B:
                       CLC                                  ;9EA91B|18      |;
                       ADC.W $0DD3                          ;9EA91C|6DD30D  |;
                       SEC                                  ;9EA91F|38      |;
                       SBC.B $B1                            ;9EA920|E5B1    |;
                       STA.B $A9                            ;9EA922|85A9    |;
                       LDA.W $14C3,X                        ;9EA924|BDC314  |;
                       BNE CODE_9EA948                      ;9EA927|D01F    |;
                       LDA.W #$0000                         ;9EA929|A90000  |;
                       SEC                                  ;9EA92C|38      |;
                       SBC.B $A5                            ;9EA92D|E5A5    |;
                       STA.B $A5                            ;9EA92F|85A5    |;
                       LDA.W #$0000                         ;9EA931|A90000  |;
                       SEC                                  ;9EA934|38      |;
                       SBC.B $A9                            ;9EA935|E5A9    |;
                       STA.B $A9                            ;9EA937|85A9    |;
                       LDA.W #$0000                         ;9EA939|A90000  |;
                       SEC                                  ;9EA93C|38      |;
                       SBC.B $B1                            ;9EA93D|E5B1    |;
                       STA.B $B1                            ;9EA93F|85B1    |;
                       LDA.B $AD                            ;9EA941|A5AD    |;
                       EOR.W #$0004                         ;9EA943|490400  |;
                       STA.B $AD                            ;9EA946|85AD    |;
 
          CODE_9EA948:
                       LDA.W $1523,X                        ;9EA948|BD2315  |;
                       BNE CODE_9EA967                      ;9EA94B|D01A    |;
                       LDA.B $B1                            ;9EA94D|A5B1    |;
                       BPL CODE_9EA9AD                      ;9EA94F|105C    |;
                       LDA.B $AD                            ;9EA951|A5AD    |;
                       CMP.W #$0004                         ;9EA953|C90400  |;
                       BNE CODE_9EA9AD                      ;9EA956|D055    |;
                       JSL.L CODE_9BB445                    ;9EA958|2245B49B|;
                       INC A                                ;9EA95C|1A      |;
                       AND.W #$0007                         ;9EA95D|290700  |;
                       CMP.W #$0003                         ;9EA960|C90300  |;
                       BCS CODE_9EA9AD                      ;9EA963|B048    |;
                       BRA CODE_9EA983                      ;9EA965|801C    |;
 
          CODE_9EA967:
                       LDA.B $AD                            ;9EA967|A5AD    |;
                       SEC                                  ;9EA969|38      |;
                       SBC.W #$0003                         ;9EA96A|E90300  |;
                       AND.W #$0007                         ;9EA96D|290700  |;
                       CMP.W #$0003                         ;9EA970|C90300  |;
                       BCS CODE_9EA9AD                      ;9EA973|B038    |;
                       JSL.L CODE_9BB445                    ;9EA975|2245B49B|;
                       INC A                                ;9EA979|1A      |;
                       INC A                                ;9EA97A|1A      |;
                       AND.W #$0007                         ;9EA97B|290700  |;
                       CMP.W #$0005                         ;9EA97E|C90500  |;
                       BCS CODE_9EA9AD                      ;9EA981|B02A    |;
 
          CODE_9EA983:
                       LDA.W $1523,X                        ;9EA983|BD2315  |;
                       BNE CODE_9EA9B0                      ;9EA986|D028    |;
                       LDA.W $0EC3,X                        ;9EA988|BDC30E  |;
                       STA.B $A5                            ;9EA98B|85A5    |;
                       ORA.W $0EE3,X                        ;9EA98D|1DE30E  |;
                       BEQ CODE_9EA9A7                      ;9EA990|F015    |;
                       LDA.W $0EE3,X                        ;9EA992|BDE30E  |;
                       STA.B $A9                            ;9EA995|85A9    |;
                       JSL.L CODE_9BB445                    ;9EA997|2245B49B|;
                       SEC                                  ;9EA99B|38      |;
                       SBC.B $01,S                          ;9EA99C|E301    |;
                       INC A                                ;9EA99E|1A      |;
                       AND.W #$0007                         ;9EA99F|290700  |;
                       CMP.W #$0003                         ;9EA9A2|C90300  |;
                       BCS CODE_9EA9B0                      ;9EA9A5|B009    |;
 
          CODE_9EA9A7:
                       INC A                                ;9EA9A7|1A      |;
                       STA.W $1523,X                        ;9EA9A8|9D2315  |;
                       BRA CODE_9EA9B0                      ;9EA9AB|8003    |;
 
          CODE_9EA9AD:
                       STZ.W $1523,X                        ;9EA9AD|9E2315  |;
 
          CODE_9EA9B0:
                       PLA                                  ;9EA9B0|68      |;
                       STA.B $A5                            ;9EA9B1|85A5    |;
                       PLA                                  ;9EA9B3|68      |;
                       STA.B $A9                            ;9EA9B4|85A9    |;
                       LDA.W $1163,X                        ;9EA9B6|BD6311  |;
                       STA.B $AD                            ;9EA9B9|85AD    |;
                       LDA.B $A5                            ;9EA9BB|A5A5    |;
                       SEC                                  ;9EA9BD|38      |;
                       SBC.B $AD                            ;9EA9BE|E5AD    |;
                       AND.W #$0007                         ;9EA9C0|290700  |;
                       ASL A                                ;9EA9C3|0A      |;
                       STA.B $A5                            ;9EA9C4|85A5    |;
                       TAX                                  ;9EA9C6|AA      |;
                       LDA.L DATA8_9EAAA3,X                 ;9EA9C7|BFA3AA9E|;
                       LDX.B $95                            ;9EA9CB|A695    |;
                       CMP.W #$0000                         ;9EA9CD|C90000  |;
                       BNE CODE_9EA9D5                      ;9EA9D0|D003    |;
                       JMP.W CODE_9EAAB3                    ;9EA9D2|4CB3AA  |;
 
          CODE_9EA9D5:
                       TAX                                  ;9EA9D5|AA      |;
                       LDA.B $C1                            ;9EA9D6|A5C1    |;
                       JSL.L CODE_808F5D                    ;9EA9D8|225D8F80|;
                       LDX.B $95                            ;9EA9DC|A695    |;
                       STA.B $C5                            ;9EA9DE|85C5    |;
                       LDA.W $0EC3,X                        ;9EA9E0|BDC30E  |;
                       XBA                                  ;9EA9E3|EB      |;
                       AND.W #$00FF                         ;9EA9E4|29FF00  |;
                       CMP.W #$0080                         ;9EA9E7|C98000  |;
                       BCC CODE_9EA9EF                      ;9EA9EA|9003    |;
                       ORA.W #$FF00                         ;9EA9EC|0900FF  |;
 
          CODE_9EA9EF:
                       TAX                                  ;9EA9EF|AA      |;
                       JSL.L CODE_808F7D                    ;9EA9F0|227D8F80|;
                       STA.B $B5                            ;9EA9F4|85B5    |;
                       LDX.B $95                            ;9EA9F6|A695    |;
                       LDA.W $0EE3,X                        ;9EA9F8|BDE30E  |;
                       XBA                                  ;9EA9FB|EB      |;
                       AND.W #$00FF                         ;9EA9FC|29FF00  |;
                       CMP.W #$0080                         ;9EA9FF|C98000  |;
                       BCC CODE_9EAA07                      ;9EAA02|9003    |;
                       ORA.W #$FF00                         ;9EAA04|0900FF  |;
 
          CODE_9EAA07:
                       TAX                                  ;9EAA07|AA      |;
                       JSL.L CODE_808F7D                    ;9EAA08|227D8F80|;
                       CLC                                  ;9EAA0C|18      |;
                       ADC.B $B5                            ;9EAA0D|65B5    |;
                       STA.B $B1                            ;9EAA0F|85B1    |;
                       LDA.W #$0300                         ;9EAA11|A90003  |;
                       SEC                                  ;9EAA14|38      |;
                       SBC.B $B1                            ;9EAA15|E5B1    |;
                       STA.B $B5                            ;9EAA17|85B5    |;
                       SEC                                  ;9EAA19|38      |;
                       SBC.W #$0180                         ;9EAA1A|E98001  |;
                       BPL CODE_9EAA24                      ;9EAA1D|1005    |;
                       LDA.W #$0180                         ;9EAA1F|A98001  |;
                       STA.B $B5                            ;9EAA22|85B5    |;
 
          CODE_9EAA24:
                       LDA.B $C5                            ;9EAA24|A5C5    |;
                       LDX.B $B5                            ;9EAA26|A6B5    |;
                       JSL.L CODE_808FEB                    ;9EAA28|22EB8F80|;
                       LDA.B $0A                            ;9EAA2C|A50A    |;
                       STA.B $B7                            ;9EAA2E|85B7    |;
                       LDA.B $08                            ;9EAA30|A508    |;
                       STA.B $B5                            ;9EAA32|85B5    |;
                       LDX.B $95                            ;9EAA34|A695    |;
                       LDA.W $1523,X                        ;9EAA36|BD2315  |;
                       BEQ CODE_9EAA4A                      ;9EAA39|F00F    |;
                       LDA.W #$0000                         ;9EAA3B|A90000  |;
                       SEC                                  ;9EAA3E|38      |;
                       SBC.B $B5                            ;9EAA3F|E5B5    |;
                       STA.B $B5                            ;9EAA41|85B5    |;
                       LDA.W #$0000                         ;9EAA43|A90000  |;
                       SBC.B $B7                            ;9EAA46|E5B7    |;
                       STA.B $B7                            ;9EAA48|85B7    |;
 
          CODE_9EAA4A:
                       LDA.W $1183,X                        ;9EAA4A|BD8311  |;
                       CLC                                  ;9EAA4D|18      |;
                       ADC.B $B5                            ;9EAA4E|65B5    |;
                       STA.W $1183,X                        ;9EAA50|9D8311  |;
                       LDA.W $1163,X                        ;9EAA53|BD6311  |;
                       ADC.B $B7                            ;9EAA56|65B7    |;
                       AND.W #$0007                         ;9EAA58|290700  |;
                       STA.W $1163,X                        ;9EAA5B|9D6311  |;
                       STA.B $AD                            ;9EAA5E|85AD    |;
                       LDA.B $B1                            ;9EAA60|A5B1    |;
                       CMP.W #$0015                         ;9EAA62|C91500  |;
                       BCC CODE_9EAA89                      ;9EAA65|9022    |;
                       STZ.B $A9                            ;9EAA67|64A9    |;
                       LDA.B $C5                            ;9EAA69|A5C5    |;
                       BPL CODE_9EAA72                      ;9EAA6B|1005    |;
                       LDA.W #$FFCE                         ;9EAA6D|A9CEFF  |;
                       STA.B $A9                            ;9EAA70|85A9    |;
 
          CODE_9EAA72:
                       LDA.W $0E03,X                        ;9EAA72|BD030E  |;
                       BIT.W #$0800                         ;9EAA75|890008  |;
                       BEQ CODE_9EAA81                      ;9EAA78|F007    |;
                       LDA.B $A9                            ;9EAA7A|A5A9    |;
                       EOR.W #$FFCE                         ;9EAA7C|49CEFF  |;
                       STA.B $A9                            ;9EAA7F|85A9    |;
 
          CODE_9EAA81:
                       LDA.B $A9                            ;9EAA81|A5A9    |;
                       CLC                                  ;9EAA83|18      |;
                       ADC.W #$EBE2                         ;9EAA84|69E2EB  |;
                       STA.B $A9                            ;9EAA87|85A9    |;
 
          CODE_9EAA89:
                       LDA.W $1543,X                        ;9EAA89|BD4315  |;
                       BNE CODE_9EAA98                      ;9EAA8C|D00A    |;
                       JSL.L CODE_9EA3DD                    ;9EAA8E|22DDA39E|;
                       LDA.W #$0001                         ;9EAA92|A90100  |;
                       STA.W $1543,X                        ;9EAA95|9D4315  |;
 
          CODE_9EAA98:
                       LDA.B $B1                            ;9EAA98|A5B1    |;
                       CMP.W #$0003                         ;9EAA9A|C90300  |;
                       BCC CODE_9EAAA2                      ;9EAA9D|9003    |;
                       JMP.W CODE_9EAB64                    ;9EAA9F|4C64AB  |;
 
          CODE_9EAAA2:
                       RTL                                  ;9EAAA2|6B      |;
 
         DATA8_9EAAA3:
                       db $00,$00,$11,$00,$11,$00,$11,$00   ;9EAAA3|        |;
                       db $00,$00,$EF,$FF,$EF,$FF,$EF,$FF   ;9EAAAB|        |;
 
          CODE_9EAAB3:
                       LDA.W #$0002                         ;9EAAB3|A90200  |;
                       STA.B $B5                            ;9EAAB6|85B5    |;
                       LDA.W $1523,X                        ;9EAAB8|BD2315  |;
                       BEQ CODE_9EAAC9                      ;9EAABB|F00C    |;
                       LDA.W #$0006                         ;9EAABD|A90600  |;
                       STA.B $B5                            ;9EAAC0|85B5    |;
                       LDA.B $A5                            ;9EAAC2|A5A5    |;
                       EOR.W #$0008                         ;9EAAC4|490800  |;
                       STA.B $A5                            ;9EAAC7|85A5    |;
 
          CODE_9EAAC9:
                       LDA.B $A5                            ;9EAAC9|A5A5    |;
                       BEQ CODE_9EAB25                      ;9EAACB|F058    |;
                       LDA.W $0EC3,X                        ;9EAACD|BDC30E  |;
                       STA.B $A5                            ;9EAAD0|85A5    |;
                       LDA.W $0EE3,X                        ;9EAAD2|BDE30E  |;
                       STA.B $A9                            ;9EAAD5|85A9    |;
                       JSL.L CODE_9BB445                    ;9EAAD7|2245B49B|;
                       BIT.W #$0008                         ;9EAADB|890800  |;
                       BNE CODE_9EAAF4                      ;9EAADE|D014    |;
                       SEC                                  ;9EAAE0|38      |;
                       SBC.W $1163,X                        ;9EAAE1|FD6311  |;
                       CLC                                  ;9EAAE4|18      |;
                       ADC.B $B5                            ;9EAAE5|65B5    |;
                       AND.W #$0007                         ;9EAAE7|290700  |;
                       STA.B $A5                            ;9EAAEA|85A5    |;
                       CMP.W #$0004                         ;9EAAEC|C90400  |;
                       BCS CODE_9EAAF4                      ;9EAAEF|B003    |;
                       JMP.W CODE_9EA4F7                    ;9EAAF1|4CF7A4  |;
 
          CODE_9EAAF4:
                       INC.W $1163,X                        ;9EAAF4|FE6311  |;
                       LDA.W $0E03,X                        ;9EAAF7|BD030E  |;
                       BIT.W #$0800                         ;9EAAFA|890008  |;
                       BEQ CODE_9EAB05                      ;9EAAFD|F006    |;
                       DEC.W $1163,X                        ;9EAAFF|DE6311  |;
                       DEC.W $1163,X                        ;9EAB02|DE6311  |;
 
          CODE_9EAB05:
                       LDA.W $1163,X                        ;9EAB05|BD6311  |;
                       AND.W #$0007                         ;9EAB08|290700  |;
                       STA.W $1163,X                        ;9EAB0B|9D6311  |;
                       LDA.W #$EA1A                         ;9EAB0E|A91AEA  |;
                       STA.B $A9                            ;9EAB11|85A9    |;
                       LDA.W $1523,X                        ;9EAB13|BD2315  |;
                       BNE CODE_9EAB1B                      ;9EAB16|D003    |;
                       JMP.W CODE_9EA3DD                    ;9EAB18|4CDDA3  |;
 
          CODE_9EAB1B:
                       LDY.W #$0001                         ;9EAB1B|A00100  |;
                       LDA.W #$F0D2                         ;9EAB1E|A9D2F0  |;
                       JML.L CODE_9EA3F1                    ;9EAB21|5CF1A39E|;
 
          CODE_9EAB25:
                       LDY.W #$0001                         ;9EAB25|A00100  |;
                       LDA.W #$F104                         ;9EAB28|A904F1  |;
                       STA.B $A9                            ;9EAB2B|85A9    |;
                       LDA.W $1523,X                        ;9EAB2D|BD2315  |;
                       BNE CODE_9EAB57                      ;9EAB30|D025    |;
                       LDY.W #$0000                         ;9EAB32|A00000  |;
                       LDA.W #$EAFE                         ;9EAB35|A9FEEA  |;
                       STA.B $A9                            ;9EAB38|85A9    |;
                       LDA.W $1283,X                        ;9EAB3A|BD8312  |;
                       BIT.W #$0004                         ;9EAB3D|890400  |;
                       BEQ CODE_9EAB4A                      ;9EAB40|F008    |;
                       db $A0,$01,$00,$A9,$B2,$F7,$85,$A9   ;9EAB42|        |;
 
          CODE_9EAB4A:
                       CPX.W $0AD9                          ;9EAB4A|ECD90A  |;
                       BNE CODE_9EAB57                      ;9EAB4D|D008    |;
                       LDY.W #$0000                         ;9EAB4F|A00000  |;
                       LDA.W #$EA4C                         ;9EAB52|A94CEA  |;
                       STA.B $A9                            ;9EAB55|85A9    |;
 
          CODE_9EAB57:
                       LDA.W $1543,X                        ;9EAB57|BD4315  |;
                       BNE CODE_9EAB64                      ;9EAB5A|D008    |;
                       TYA                                  ;9EAB5C|98      |;
                       STA.W $1543,X                        ;9EAB5D|9D4315  |;
                       JSL.L CODE_9EA3DD                    ;9EAB60|22DDA39E|;
 
          CODE_9EAB64:
                       LDA.W $1523,X                        ;9EAB64|BD2315  |;
                       BEQ CODE_9EAB70                      ;9EAB67|F007    |;
                       LDA.B $AD                            ;9EAB69|A5AD    |;
                       EOR.W #$0004                         ;9EAB6B|490400  |;
                       STA.B $AD                            ;9EAB6E|85AD    |;
 
          CODE_9EAB70:
                       JML.L CODE_9EA719                    ;9EAB70|5C19A79E|;
 
          CODE_9EAB74:
                       PHB                                  ;9EAB74|8B      |;
                       PHK                                  ;9EAB75|4B      |;
                       PLB                                  ;9EAB76|AB      |;
                       STZ.B $C9                            ;9EAB77|64C9    |;
                       LDA.W $0D55,X                        ;9EAB79|BD550D  |;
                       STA.B $0C                            ;9EAB7C|850C    |;
                       LDA.W $0DB7,X                        ;9EAB7E|BDB70D  |;
                       STA.B $0E                            ;9EAB81|850E    |;
                       LDA.B $A5                            ;9EAB83|A5A5    |;
                       STA.B $10                            ;9EAB85|8510    |;
                       LDA.B $A9                            ;9EAB87|A5A9    |;
                       STA.B $12                            ;9EAB89|8512    |;
                       LDA.W $0F43,X                        ;9EAB8B|BD430F  |;
                       BNE CODE_9EAB93                      ;9EAB8E|D003    |;
                       JMP.W CODE_9EADCF                    ;9EAB90|4CCFAD  |;
 
          CODE_9EAB93:
                       LDX.W #$00E5                         ;9EAB93|A2E500  |;
                       LDY.W #$011C                         ;9EAB96|A01C01  |;
                       JSR.W CODE_9EAD4E                    ;9EAB99|204EAD  |;
                       LDX.W #$00E4                         ;9EAB9C|A2E400  |;
                       LDY.W #$011D                         ;9EAB9F|A01D01  |;
                       STX.B $14                            ;9EABA2|8614    |;
                       STY.B $16                            ;9EABA4|8416    |;
                       LDA.W #$0108                         ;9EABA6|A90801  |;
                       STA.B $22                            ;9EABA9|8522    |;
                       LDA.W $0B9D                          ;9EABAB|AD9D0B  |;
                       STA.B $20                            ;9EABAE|8520    |;
                       LDA.B $C9                            ;9EABB0|A5C9    |;
                       BNE CODE_9EABD9                      ;9EABB2|D025    |;
                       LDX.W #$FEE4                         ;9EABB4|A2E4FE  |;
                       LDY.W #$FF1B                         ;9EABB7|A01BFF  |;
                       JSR.W CODE_9EAD4E                    ;9EABBA|204EAD  |;
                       LDX.W #$FEE3                         ;9EABBD|A2E3FE  |;
                       LDY.W #$FF1C                         ;9EABC0|A01CFF  |;
                       STX.B $14                            ;9EABC3|8614    |;
                       STY.B $16                            ;9EABC5|8416    |;
                       LDA.W #$FEF8                         ;9EABC7|A9F8FE  |;
                       STA.B $22                            ;9EABCA|8522    |;
                       LDA.W $0B9F                          ;9EABCC|AD9F0B  |;
                       STA.B $20                            ;9EABCF|8520    |;
                       LDA.B $C9                            ;9EABD1|A5C9    |;
                       BNE CODE_9EAC09                      ;9EABD3|D034    |;
                       LDX.B $E4                            ;9EABD5|A6E4    |;
                       PLB                                  ;9EABD7|AB      |;
                       RTL                                  ;9EABD8|6B      |;
 
          CODE_9EABD9:
                       LDA.B $14                            ;9EABD9|A514    |;
                       LDY.B $16                            ;9EABDB|A416    |;
                       STY.B $14                            ;9EABDD|8414    |;
                       STA.B $16                            ;9EABDF|8516    |;
                       LDA.B $0E                            ;9EABE1|A50E    |;
                       EOR.W #$FFFF                         ;9EABE3|49FFFF  |;
                       INC A                                ;9EABE6|1A      |;
                       STA.B $0E                            ;9EABE7|850E    |;
                       LDA.B $12                            ;9EABE9|A512    |;
                       EOR.W #$FFFF                         ;9EABEB|49FFFF  |;
                       INC A                                ;9EABEE|1A      |;
                       STA.B $12                            ;9EABEF|8512    |;
                       LDA.B $C5                            ;9EABF1|A5C5    |;
                       BIT.W #$000A                         ;9EABF3|890A00  |;
                       BEQ CODE_9EABFD                      ;9EABF6|F005    |;
                       EOR.W #$000A                         ;9EABF8|490A00  |;
                       STA.B $C5                            ;9EABFB|85C5    |;
 
          CODE_9EABFD:
                       LDA.B $C7                            ;9EABFD|A5C7    |;
                       BIT.W #$000A                         ;9EABFF|890A00  |;
                       BEQ CODE_9EAC09                      ;9EAC02|F005    |;
                       EOR.W #$000A                         ;9EAC04|490A00  |;
                       STA.B $C7                            ;9EAC07|85C7    |;
 
          CODE_9EAC09:
                       LDA.B $C7                            ;9EAC09|A5C7    |;
                       BEQ CODE_9EAC16                      ;9EAC0B|F009    |;
                       LDX.B $C5                            ;9EAC0D|A6C5    |;
                       JSR.W (DATA8_9EAD34,X)               ;9EAC0F|FC34AD  |;
                       LDX.B $E4                            ;9EAC12|A6E4    |;
                       PLB                                  ;9EAC14|AB      |;
                       RTL                                  ;9EAC15|6B      |;
 
          CODE_9EAC16:
                       JSR.W CODE_9EAC1D                    ;9EAC16|201DAC  |;
                       LDX.B $E4                            ;9EAC19|A6E4    |;
                       PLB                                  ;9EAC1B|AB      |;
                       RTL                                  ;9EAC1C|6B      |;
 
          CODE_9EAC1D:
                       LDX.B $E4                            ;9EAC1D|A6E4    |;
                       LDA.B $0E                            ;9EAC1F|A50E    |;
                       CMP.W #$FEF8                         ;9EAC21|C9F8FE  |;
                       BPL CODE_9EAC2F                      ;9EAC24|1009    |;
                       db $A5,$12,$C9,$F8,$FE,$30,$1C,$80   ;9EAC26|        |;
                       db $38                               ;9EAC2E|        |;
 
          CODE_9EAC2F:
                       LDA.B $12                            ;9EAC2F|A512    |;
                       CMP.W #$FEF8                         ;9EAC31|C9F8FE  |;
                       BMI CODE_9EAC54                      ;9EAC34|301E    |;
                       LDY.B $20                            ;9EAC36|A420    |;
                       BMI CODE_9EAC49                      ;9EAC38|300F    |;
                       LDA.B $0C                            ;9EAC3A|A50C    |;
                       CMP.B $10                            ;9EAC3C|C510    |;
                       BMI CODE_9EAC4A                      ;9EAC3E|300A    |;
                       CMP.W $0D55,Y                        ;9EAC40|D9550D  |;
                       BMI CODE_9EAC49                      ;9EAC43|3004    |;
                       LDA.B $16                            ;9EAC45|A516    |;
                       STA.B $A9                            ;9EAC47|85A9    |;
 
          CODE_9EAC49:
                       RTS                                  ;9EAC49|60      |;
 
          CODE_9EAC4A:
                       CMP.W $0D55,Y                        ;9EAC4A|D9550D  |;
                       BPL CODE_9EAC53                      ;9EAC4D|1004    |;
                       LDA.B $16                            ;9EAC4F|A516    |;
                       STA.B $A9                            ;9EAC51|85A9    |;
 
          CODE_9EAC53:
                       RTS                                  ;9EAC53|60      |;
 
          CODE_9EAC54:
                       LDA.B $16                            ;9EAC54|A516    |;
                       STA.B $A9                            ;9EAC56|85A9    |;
                       BRA CODE_9EAC95                      ;9EAC58|803B    |;
 
          CODE_9EAC5A:
                       LDA.W #$FFCA                         ;9EAC5A|A9CAFF  |;
                       STA.B $A5                            ;9EAC5D|85A5    |;
                       RTS                                  ;9EAC5F|60      |;
                       LDA.B $0E                            ;9EAC60|A50E    |;
                       CMP.W #$FEF8                         ;9EAC62|C9F8FE  |;
                       BPL CODE_9EAC79                      ;9EAC65|1012    |;
                       LDA.B $0C                            ;9EAC67|A50C    |;
                       CMP.W #$FFCB                         ;9EAC69|C9CBFF  |;
                       BMI CODE_9EAC5A                      ;9EAC6C|30EC    |;
                       CMP.W #$0036                         ;9EAC6E|C93600  |;
                       BPL CODE_9EACE2                      ;9EAC71|106F    |;
                       LDA.B $14                            ;9EAC73|A514    |;
                       STA.B $A9                            ;9EAC75|85A9    |;
                       BRA CODE_9EACBA                      ;9EAC77|8041    |;
 
          CODE_9EAC79:
                       LDA.B $12                            ;9EAC79|A512    |;
                       CMP.W #$FEF8                         ;9EAC7B|C9F8FE  |;
                       BPL CODE_9EAC91                      ;9EAC7E|1011    |;
                       LDA.B $22                            ;9EAC80|A522    |;
                       STA.B $A9                            ;9EAC82|85A9    |;
                       LDY.B $20                            ;9EAC84|A420    |;
                       BMI CODE_9EACBA                      ;9EAC86|3032    |;
                       LDA.B $0C                            ;9EAC88|A50C    |;
                       CMP.W $0D55,Y                        ;9EAC8A|D9550D  |;
                       BMI CODE_9EAC5A                      ;9EAC8D|30CB    |;
                       BRA CODE_9EACE2                      ;9EAC8F|8051    |;
 
          CODE_9EAC91:
                       LDY.B $20                            ;9EAC91|A420    |;
                       BMI CODE_9EACD3                      ;9EAC93|303E    |;
 
          CODE_9EAC95:
                       LDA.B $10                            ;9EAC95|A510    |;
                       SEC                                  ;9EAC97|38      |;
                       SBC.W $0D55,Y                        ;9EAC98|F9550D  |;
                       PHA                                  ;9EAC9B|48      |;
                       LDA.B $0C                            ;9EAC9C|A50C    |;
                       SEC                                  ;9EAC9E|38      |;
                       SBC.B $10                            ;9EAC9F|E510    |;
                       EOR.B $01,S                          ;9EACA1|4301    |;
                       BPL CODE_9EACD4                      ;9EACA3|102F    |;
                       PLA                                  ;9EACA5|68      |;
                       LDA.B $0C                            ;9EACA6|A50C    |;
                       CMP.W $0D55,Y                        ;9EACA8|D9550D  |;
                       BPL CODE_9EACE2                      ;9EACAB|1035    |;
                       BRA CODE_9EAD14                      ;9EACAD|8065    |;
                       LDA.B $16                            ;9EACAF|A516    |;
                       STA.B $A9                            ;9EACB1|85A9    |;
                       LDA.B $C7                            ;9EACB3|A5C7    |;
                       AND.W #$0008                         ;9EACB5|290800  |;
                       BNE CODE_9EACD3                      ;9EACB8|D019    |;
 
          CODE_9EACBA:
                       LDA.B $10                            ;9EACBA|A510    |;
                       BPL CODE_9EACC9                      ;9EACBC|100B    |;
                       CMP.W #$FFCB                         ;9EACBE|C9CBFF  |;
                       BMI CODE_9EACD3                      ;9EACC1|3010    |;
                       LDA.W #$FFCA                         ;9EACC3|A9CAFF  |;
                       STA.B $A5                            ;9EACC6|85A5    |;
                       RTS                                  ;9EACC8|60      |;
 
          CODE_9EACC9:
                       CMP.W #$0036                         ;9EACC9|C93600  |;
                       BPL CODE_9EACD3                      ;9EACCC|1005    |;
                       LDA.W #$0036                         ;9EACCE|A93600  |;
                       STA.B $A5                            ;9EACD1|85A5    |;
 
          CODE_9EACD3:
                       RTS                                  ;9EACD3|60      |;
 
          CODE_9EACD4:
                       PLA                                  ;9EACD4|68      |;
                       RTS                                  ;9EACD5|60      |;
                       LDA.B $C7                            ;9EACD6|A5C7    |;
                       CMP.W #$0010                         ;9EACD8|C91000  |;
                       BNE CODE_9EACE2                      ;9EACDB|D005    |;
 
          CODE_9EACDD:
                       LDA.B $16                            ;9EACDD|A516    |;
                       STA.B $A9                            ;9EACDF|85A9    |;
                       RTS                                  ;9EACE1|60      |;
 
          CODE_9EACE2:
                       LDA.W #$0036                         ;9EACE2|A93600  |;
                       STA.B $A5                            ;9EACE5|85A5    |;
                       RTS                                  ;9EACE7|60      |;
                       LDA.W #$0036                         ;9EACE8|A93600  |;
                       STA.B $A5                            ;9EACEB|85A5    |;
                       LDA.B $C7                            ;9EACED|A5C7    |;
                       AND.W #$000A                         ;9EACEF|290A00  |;
                       BEQ CODE_9EACDD                      ;9EACF2|F0E9    |;
                       RTS                                  ;9EACF4|60      |;
                       LDA.B $C7                            ;9EACF5|A5C7    |;
                       CMP.W #$0010                         ;9EACF7|C91000  |;
                       BNE CODE_9EACE2                      ;9EACFA|D0E6    |;
 
       UNREACH_9EACFC:
                       db $A5,$14,$85,$A9,$60               ;9EACFC|        |;
                       LDA.B $14                            ;9EAD01|A514    |;
                       STA.B $A9                            ;9EAD03|85A9    |;
                       LDA.B $C7                            ;9EAD05|A5C7    |;
                       AND.W #$0002                         ;9EAD07|290200  |;
                       BNE CODE_9EACBA                      ;9EAD0A|D0AE    |;
                       RTS                                  ;9EAD0C|60      |;
                       LDA.B $C7                            ;9EAD0D|A5C7    |;
                       CMP.W #$0004                         ;9EAD0F|C90400  |;
                       BEQ UNREACH_9EACFC                   ;9EAD12|F0E8    |;
 
          CODE_9EAD14:
                       LDA.W #$FFCA                         ;9EAD14|A9CAFF  |;
                       STA.B $A5                            ;9EAD17|85A5    |;
                       RTS                                  ;9EAD19|60      |;
                       LDA.W #$FFCA                         ;9EAD1A|A9CAFF  |;
                       STA.B $A5                            ;9EAD1D|85A5    |;
                       LDA.B $C7                            ;9EAD1F|A5C7    |;
                       AND.W #$000A                         ;9EAD21|290A00  |;
                       BEQ CODE_9EACDD                      ;9EAD24|F0B7    |;
                       RTS                                  ;9EAD26|60      |;
                       LDA.B $C7                            ;9EAD27|A5C7    |;
                       CMP.W #$0004                         ;9EAD29|C90400  |;
                       BEQ CODE_9EACDD                      ;9EAD2C|F0AF    |;
                       db $A9,$CA,$FF,$85,$A5,$60           ;9EAD2E|        |;
 
         DATA8_9EAD34:
                       db $60,$AC,$AF,$AC,$E8,$AC,$D6,$AC   ;9EAD34|        |;
                       db $01,$AD                           ;9EAD3C|        |;
                       db $00,$00,$F5,$AC,$00,$00           ;9EAD3E|        |;
                       db $1A,$AD                           ;9EAD44|        |;
                       db $27,$AD,$00,$00,$00,$00           ;9EAD46|        |;
                       db $0D,$AD                           ;9EAD4C|        |;
 
          CODE_9EAD4E:
                       STX.B $14                            ;9EAD4E|8614    |;
                       STY.B $16                            ;9EAD50|8416    |;
                       STZ.B $C5                            ;9EAD52|64C5    |;
                       STZ.B $C7                            ;9EAD54|64C7    |;
                       LDX.B $0E                            ;9EAD56|A60E    |;
                       LDY.B $12                            ;9EAD58|A412    |;
                       CPX.B $14                            ;9EAD5A|E414    |;
                       BPL CODE_9EAD81                      ;9EAD5C|1023    |;
                       LDA.W #$0008                         ;9EAD5E|A90800  |;
                       STA.B $C5                            ;9EAD61|85C5    |;
                       CPY.B $14                            ;9EAD63|C414    |;
                       BPL CODE_9EAD8A                      ;9EAD65|1023    |;
 
          CODE_9EAD67:
                       RTS                                  ;9EAD67|60      |;
 
          CODE_9EAD68:
                       CPY.B $16                            ;9EAD68|C416    |;
                       BMI CODE_9EAD97                      ;9EAD6A|302B    |;
                       LDA.W #$0002                         ;9EAD6C|A90200  |;
                       STA.B $C7                            ;9EAD6F|85C7    |;
                       BRA CODE_9EAD97                      ;9EAD71|8024    |;
 
          CODE_9EAD73:
                       CPY.W #$002C                         ;9EAD73|C02C00  |;
                       BMI CODE_9EADAC                      ;9EAD76|3034    |;
                       LDA.B $C7                            ;9EAD78|A5C7    |;
                       ORA.W #$0004                         ;9EAD7A|090400  |;
                       STA.B $C7                            ;9EAD7D|85C7    |;
                       BRA CODE_9EADAC                      ;9EAD7F|802B    |;
 
          CODE_9EAD81:
                       CPY.B $14                            ;9EAD81|C414    |;
                       BPL CODE_9EAD8A                      ;9EAD83|1005    |;
                       LDA.W #$0008                         ;9EAD85|A90800  |;
                       STA.B $C7                            ;9EAD88|85C7    |;
 
          CODE_9EAD8A:
                       CPX.B $16                            ;9EAD8A|E416    |;
                       BMI CODE_9EAD68                      ;9EAD8C|30DA    |;
                       LDA.W #$0002                         ;9EAD8E|A90200  |;
                       STA.B $C5                            ;9EAD91|85C5    |;
                       CPY.B $16                            ;9EAD93|C416    |;
                       BPL CODE_9EAD67                      ;9EAD95|10D0    |;
 
          CODE_9EAD97:
                       LDX.B $0C                            ;9EAD97|A60C    |;
                       LDY.B $10                            ;9EAD99|A410    |;
                       CPX.W #$002C                         ;9EAD9B|E02C00  |;
                       BMI CODE_9EAD73                      ;9EAD9E|30D3    |;
                       LDA.B $C5                            ;9EADA0|A5C5    |;
                       ORA.W #$0004                         ;9EADA2|090400  |;
                       STA.B $C5                            ;9EADA5|85C5    |;
                       CPY.W #$002C                         ;9EADA7|C02C00  |;
                       BPL CODE_9EAD67                      ;9EADAA|10BB    |;
 
          CODE_9EADAC:
                       CPX.W #$FFD4                         ;9EADAC|E0D4FF  |;
                       BPL CODE_9EADC0                      ;9EADAF|100F    |;
                       LDA.B $C5                            ;9EADB1|A5C5    |;
                       ORA.W #$0010                         ;9EADB3|091000  |;
                       STA.B $C5                            ;9EADB6|85C5    |;
                       CPY.W #$FFD4                         ;9EADB8|C0D4FF  |;
                       BMI CODE_9EAD67                      ;9EADBB|30AA    |;
 
          CODE_9EADBD:
                       INC.B $C9                            ;9EADBD|E6C9    |;
                       RTS                                  ;9EADBF|60      |;
 
          CODE_9EADC0:
                       CPY.W #$FFD4                         ;9EADC0|C0D4FF  |;
                       BPL CODE_9EADBD                      ;9EADC3|10F8    |;
                       LDA.B $C7                            ;9EADC5|A5C7    |;
                       ORA.W #$0010                         ;9EADC7|091000  |;
                       STA.B $C7                            ;9EADCA|85C7    |;
                       INC.B $C9                            ;9EADCC|E6C9    |;
                       RTS                                  ;9EADCE|60      |;
 
          CODE_9EADCF:
                       LDX.W #$0102                         ;9EADCF|A20201  |;
                       LDY.W #$011C                         ;9EADD2|A01C01  |;
                       JSR.W CODE_9EAF34                    ;9EADD5|2034AF  |;
                       LDX.W #$0101                         ;9EADD8|A20101  |;
                       LDY.W #$011D                         ;9EADDB|A01D01  |;
                       STX.B $14                            ;9EADDE|8614    |;
                       STY.B $16                            ;9EADE0|8416    |;
                       LDA.B $C9                            ;9EADE2|A5C9    |;
                       BNE CODE_9EAE01                      ;9EADE4|D01B    |;
                       LDX.W #$FEE4                         ;9EADE6|A2E4FE  |;
                       LDY.W #$FEFE                         ;9EADE9|A0FEFE  |;
                       JSR.W CODE_9EAF34                    ;9EADEC|2034AF  |;
                       LDX.W #$FEE3                         ;9EADEF|A2E3FE  |;
                       LDY.W #$FEFF                         ;9EADF2|A0FFFE  |;
                       STX.B $14                            ;9EADF5|8614    |;
                       STY.B $16                            ;9EADF7|8416    |;
                       LDA.B $C9                            ;9EADF9|A5C9    |;
                       BNE CODE_9EAE31                      ;9EADFB|D034    |;
                       LDX.B $E4                            ;9EADFD|A6E4    |;
                       PLB                                  ;9EADFF|AB      |;
                       RTL                                  ;9EAE00|6B      |;
 
          CODE_9EAE01:
                       LDA.B $14                            ;9EAE01|A514    |;
                       LDY.B $16                            ;9EAE03|A416    |;
                       STY.B $14                            ;9EAE05|8414    |;
                       STA.B $16                            ;9EAE07|8516    |;
                       LDA.B $0E                            ;9EAE09|A50E    |;
                       EOR.W #$FFFF                         ;9EAE0B|49FFFF  |;
                       INC A                                ;9EAE0E|1A      |;
                       STA.B $0E                            ;9EAE0F|850E    |;
                       LDA.B $12                            ;9EAE11|A512    |;
                       EOR.W #$FFFF                         ;9EAE13|49FFFF  |;
                       INC A                                ;9EAE16|1A      |;
                       STA.B $12                            ;9EAE17|8512    |;
                       LDA.B $C5                            ;9EAE19|A5C5    |;
                       BIT.W #$000A                         ;9EAE1B|890A00  |;
                       BEQ CODE_9EAE25                      ;9EAE1E|F005    |;
                       db $49,$0A,$00,$85,$C5               ;9EAE20|        |;
 
          CODE_9EAE25:
                       LDA.B $C7                            ;9EAE25|A5C7    |;
                       BIT.W #$000A                         ;9EAE27|890A00  |;
                       BEQ CODE_9EAE31                      ;9EAE2A|F005    |;
                       EOR.W #$000A                         ;9EAE2C|490A00  |;
                       STA.B $C7                            ;9EAE2F|85C7    |;
 
          CODE_9EAE31:
                       LDA.B $C7                            ;9EAE31|A5C7    |;
                       BEQ UNREACH_9EAE3E                   ;9EAE33|F009    |;
                       LDX.B $C5                            ;9EAE35|A6C5    |;
                       JSR.W (UNREACH_9EAF1A,X)             ;9EAE37|FC1AAF  |;
                       LDX.B $E4                            ;9EAE3A|A6E4    |;
                       PLB                                  ;9EAE3C|AB      |;
                       RTL                                  ;9EAE3D|6B      |;
 
       UNREACH_9EAE3E:
                       db $20,$45,$AE,$A6,$E4,$AB,$6B,$A6   ;9EAE3E|        |;
                       db $E4,$A5,$0E,$C9,$F8,$FE,$10,$09   ;9EAE46|        |;
                       db $A5,$12,$C9,$F8,$FE,$30,$0B,$80   ;9EAE4E|        |;
                       db $21,$A5,$12,$C9,$F8,$FE,$10,$02   ;9EAE56|        |;
                       db $80,$31,$60,$D9,$55,$0D,$10,$55   ;9EAE5E|        |;
                       db $A5,$16,$85,$A9,$60               ;9EAE66|        |;
 
       UNREACH_9EAE6B:
                       db $A9,$DA,$FF,$85,$A5,$60           ;9EAE6B|        |;
                       LDA.B $0E                            ;9EAE71|A50E    |;
                       CMP.W #$FEF8                         ;9EAE73|C9F8FE  |;
                       BPL UNREACH_9EAE8A                   ;9EAE76|1012    |;
                       LDA.B $0C                            ;9EAE78|A50C    |;
                       CMP.W #$FFDB                         ;9EAE7A|C9DBFF  |;
                       BMI UNREACH_9EAE6B                   ;9EAE7D|30EC    |;
                       CMP.W #$0026                         ;9EAE7F|C92600  |;
                       BPL UNREACH_9EAEC8                   ;9EAE82|1044    |;
                       LDA.B $14                            ;9EAE84|A514    |;
                       STA.B $A9                            ;9EAE86|85A9    |;
                       BRA CODE_9EAEA2                      ;9EAE88|8018    |;
 
       UNREACH_9EAE8A:
                       db $A5,$C7,$89,$02,$00,$D0,$2A,$A5   ;9EAE8A|        |;
                       db $16,$85,$A9,$80,$0B,$A5,$16,$85   ;9EAE92|        |;
                       db $A9,$A5,$C7,$29,$08,$00,$D0,$19   ;9EAE9A|        |;
 
          CODE_9EAEA2:
                       LDA.B $10                            ;9EAEA2|A510    |;
                       BPL UNREACH_9EAEB1                   ;9EAEA4|100B    |;
                       CMP.W #$FFDB                         ;9EAEA6|C9DBFF  |;
                       BMI UNREACH_9EAEBB                   ;9EAEA9|3010    |;
                       LDA.W #$FFDA                         ;9EAEAB|A9DAFF  |;
                       STA.B $A5                            ;9EAEAE|85A5    |;
                       RTS                                  ;9EAEB0|60      |;
 
       UNREACH_9EAEB1:
                       db $C9,$26,$00,$10,$05,$A9,$26,$00   ;9EAEB1|        |;
                       db $85,$A5                           ;9EAEB9|        |;
 
       UNREACH_9EAEBB:
                       db $60,$A5,$C7,$C9,$10,$00,$D0,$05   ;9EAEBB|        |;
 
       UNREACH_9EAEC3:
                       db $A5,$16,$85,$A9,$60               ;9EAEC3|        |;
 
       UNREACH_9EAEC8:
                       db $A9,$26,$00,$85,$A5,$60,$A9,$26   ;9EAEC8|        |;
                       db $00,$85,$A5,$A5,$C7,$29,$0A,$00   ;9EAED0|        |;
                       db $F0,$E9,$60,$A5,$C7,$C9,$10,$00   ;9EAED8|        |;
                       db $D0,$E6,$A5,$14,$85,$A9,$60,$A5   ;9EAEE0|        |;
                       db $14,$85,$A9,$A5,$C7,$29,$02,$00   ;9EAEE8|        |;
                       db $D0,$B0,$60,$A5,$C7,$C9,$04,$00   ;9EAEF0|        |;
                       db $F0,$E8,$A9,$DA,$FF,$85,$A5,$60   ;9EAEF8|        |;
                       LDA.W #$FFDA                         ;9EAF00|A9DAFF  |;
                       STA.B $A5                            ;9EAF03|85A5    |;
                       LDA.B $C7                            ;9EAF05|A5C7    |;
                       AND.W #$000A                         ;9EAF07|290A00  |;
                       BEQ UNREACH_9EAEC3                   ;9EAF0A|F0B7    |;
                       RTS                                  ;9EAF0C|60      |;
                       db $A5,$C7,$C9,$04,$00,$F0,$AF,$A9   ;9EAF0D|        |;
                       db $DA,$FF,$85,$A5,$60               ;9EAF15|        |;
 
       UNREACH_9EAF1A:
                       db $71,$AE,$97,$AE,$CE,$AE,$BC,$AE   ;9EAF1A|        |;
                       db $E7,$AE,$00,$00,$DB,$AE,$00,$00   ;9EAF22|        |;
                       db $00,$AF,$0D,$AF,$00,$00,$00,$00   ;9EAF2A|        |;
                       db $F3,$AE                           ;9EAF32|        |;
 
          CODE_9EAF34:
                       STX.B $14                            ;9EAF34|8614    |;
                       STY.B $16                            ;9EAF36|8416    |;
                       STZ.B $C5                            ;9EAF38|64C5    |;
                       STZ.B $C7                            ;9EAF3A|64C7    |;
                       LDX.B $0E                            ;9EAF3C|A60E    |;
                       LDY.B $12                            ;9EAF3E|A412    |;
                       CPX.B $14                            ;9EAF40|E414    |;
                       BPL CODE_9EAF67                      ;9EAF42|1023    |;
                       LDA.W #$0008                         ;9EAF44|A90800  |;
                       STA.B $C5                            ;9EAF47|85C5    |;
                       CPY.B $14                            ;9EAF49|C414    |;
                       BPL CODE_9EAF70                      ;9EAF4B|1023    |;
 
          CODE_9EAF4D:
                       RTS                                  ;9EAF4D|60      |;
 
          CODE_9EAF4E:
                       CPY.B $16                            ;9EAF4E|C416    |;
                       BMI CODE_9EAF7D                      ;9EAF50|302B    |;
                       db $A9,$02,$00,$85,$C7,$80,$24       ;9EAF52|        |;
 
          CODE_9EAF59:
                       CPY.W #$0024                         ;9EAF59|C02400  |;
                       BMI CODE_9EAF92                      ;9EAF5C|3034    |;
                       db $A5,$C7,$09,$04,$00,$85,$C7,$80   ;9EAF5E|        |;
                       db $2B                               ;9EAF66|        |;
 
          CODE_9EAF67:
                       CPY.B $14                            ;9EAF67|C414    |;
                       BPL CODE_9EAF70                      ;9EAF69|1005    |;
                       LDA.W #$0008                         ;9EAF6B|A90800  |;
                       STA.B $C7                            ;9EAF6E|85C7    |;
 
          CODE_9EAF70:
                       CPX.B $16                            ;9EAF70|E416    |;
                       BMI CODE_9EAF4E                      ;9EAF72|30DA    |;
                       LDA.W #$0002                         ;9EAF74|A90200  |;
                       STA.B $C5                            ;9EAF77|85C5    |;
                       CPY.B $16                            ;9EAF79|C416    |;
                       BPL CODE_9EAF4D                      ;9EAF7B|10D0    |;
 
          CODE_9EAF7D:
                       LDX.B $0C                            ;9EAF7D|A60C    |;
                       LDY.B $10                            ;9EAF7F|A410    |;
                       CPX.W #$0024                         ;9EAF81|E02400  |;
                       BMI CODE_9EAF59                      ;9EAF84|30D3    |;
                       db $A5,$C5,$09,$04,$00,$85,$C5,$C0   ;9EAF86|        |;
                       db $24,$00,$10,$BB                   ;9EAF8E|        |;
 
          CODE_9EAF92:
                       CPX.W #$FFDC                         ;9EAF92|E0DCFF  |;
                       BPL CODE_9EAFA6                      ;9EAF95|100F    |;
                       LDA.B $C5                            ;9EAF97|A5C5    |;
                       ORA.W #$0010                         ;9EAF99|091000  |;
                       STA.B $C5                            ;9EAF9C|85C5    |;
                       CPY.W #$FFDC                         ;9EAF9E|C0DCFF  |;
                       BMI CODE_9EAF4D                      ;9EAFA1|30AA    |;
 
          CODE_9EAFA3:
                       INC.B $C9                            ;9EAFA3|E6C9    |;
                       RTS                                  ;9EAFA5|60      |;
 
          CODE_9EAFA6:
                       CPY.W #$FFDC                         ;9EAFA6|C0DCFF  |;
                       BPL CODE_9EAFA3                      ;9EAFA9|10F8    |;
                       db $A5,$C7,$09,$10,$00,$85,$C7,$E6   ;9EAFAB|        |;
                       db $C9,$60                           ;9EAFB3|        |;
 
          CODE_9EAFB5:
                       JSL.L CODE_9EDEA7                    ;9EAFB5|22A7DE9E|;
                       LDA.W $1023,X                        ;9EAFB9|BD2310  |;
                       SEC                                  ;9EAFBC|38      |;
                       SBC.B $C1                            ;9EAFBD|E5C1    |;
                       STA.W $1023,X                        ;9EAFBF|9D2310  |;
                       BMI CODE_9EAFC7                      ;9EAFC2|3003    |;
                       JMP.W CODE_9EB070                    ;9EAFC4|4C70B0  |;
 
          CODE_9EAFC7:
                       ADC.W #$0005                         ;9EAFC7|690500  |;
                       STA.W $1023,X                        ;9EAFCA|9D2310  |;
                       JSL.L CODE_9EAB74                    ;9EAFCD|2274AB9E|;
                       LDA.B $A9                            ;9EAFD1|A5A9    |;
                       PHA                                  ;9EAFD3|48      |;
                       LDA.B $A5                            ;9EAFD4|A5A5    |;
                       PHA                                  ;9EAFD6|48      |;
                       TXA                                  ;9EAFD7|8A      |;
                       JSL.L CODE_9BC002                    ;9EAFD8|2202C09B|;
                       LDA.B $A5                            ;9EAFDC|A5A5    |;
                       EOR.W #$FFFF                         ;9EAFDE|49FFFF  |;
                       INC A                                ;9EAFE1|1A      |;
                       SEC                                  ;9EAFE2|38      |;
                       SBC.W $0EC4,X                        ;9EAFE3|FDC40E  |;
                       AND.W #$00FF                         ;9EAFE6|29FF00  |;
                       BIT.W #$0080                         ;9EAFE9|898000  |;
                       BEQ CODE_9EAFF1                      ;9EAFEC|F003    |;
                       ORA.W #$FF00                         ;9EAFEE|0900FF  |;
 
          CODE_9EAFF1:
                       CLC                                  ;9EAFF1|18      |;
                       ADC.B $01,S                          ;9EAFF2|6301    |;
                       SEC                                  ;9EAFF4|38      |;
                       SBC.W $0D55,X                        ;9EAFF5|FD550D  |;
                       STA.B $A5                            ;9EAFF8|85A5    |;
                       LDA.B $A9                            ;9EAFFA|A5A9    |;
                       EOR.W #$FFFF                         ;9EAFFC|49FFFF  |;
                       INC A                                ;9EAFFF|1A      |;
                       SEC                                  ;9EB000|38      |;
                       SBC.W $0EE4,X                        ;9EB001|FDE40E  |;
                       AND.W #$00FF                         ;9EB004|29FF00  |;
                       BIT.W #$0080                         ;9EB007|898000  |;
                       BEQ CODE_9EB00F                      ;9EB00A|F003    |;
                       ORA.W #$FF00                         ;9EB00C|0900FF  |;
 
          CODE_9EB00F:
                       CLC                                  ;9EB00F|18      |;
                       ADC.B $03,S                          ;9EB010|6303    |;
                       SEC                                  ;9EB012|38      |;
                       SBC.W $0DB7,X                        ;9EB013|FDB70D  |;
                       STA.B $A9                            ;9EB016|85A9    |;
                       PLA                                  ;9EB018|68      |;
                       PLA                                  ;9EB019|68      |;
                       JSL.L CODE_9BB445                    ;9EB01A|2245B49B|;
                       LDA.B $A5                            ;9EB01E|A5A5    |;
                       STA.W $10A3,X                        ;9EB020|9DA310  |;
                       LDA.W $0F43,X                        ;9EB023|BD430F  |;
                       BEQ CODE_9EB070                      ;9EB026|F048    |;
                       LDA.W $0EDF                          ;9EB028|ADDF0E  |;
                       STA.B $A5                            ;9EB02B|85A5    |;
                       LDA.W $0EFF                          ;9EB02D|ADFF0E  |;
                       STA.B $A9                            ;9EB030|85A9    |;
                       JSL.L CODE_9BB445                    ;9EB032|2245B49B|;
                       LDA.B $A5                            ;9EB036|A5A5    |;
                       CMP.W #$0008                         ;9EB038|C90800  |;
                       BEQ CODE_9EB045                      ;9EB03B|F008    |;
                       EOR.W #$0004                         ;9EB03D|490400  |;
                       CMP.W $1163,X                        ;9EB040|DD6311  |;
                       BEQ CODE_9EB070                      ;9EB043|F02B    |;
 
          CODE_9EB045:
                       LDA.W $0DD3                          ;9EB045|ADD30D  |;
                       SEC                                  ;9EB048|38      |;
                       SBC.W $0DB7,X                        ;9EB049|FDB70D  |;
                       STA.B $A9                            ;9EB04C|85A9    |;
                       PHA                                  ;9EB04E|48      |;
                       LDA.W $0D71                          ;9EB04F|AD710D  |;
                       SEC                                  ;9EB052|38      |;
                       SBC.W $0D55,X                        ;9EB053|FD550D  |;
                       STA.B $A5                            ;9EB056|85A5    |;
                       PHA                                  ;9EB058|48      |;
                       JSL.L CODE_9BB445                    ;9EB059|2245B49B|;
                       LDA.B $A5                            ;9EB05D|A5A5    |;
                       STA.B $C5                            ;9EB05F|85C5    |;
                       PLA                                  ;9EB061|68      |;
                       STA.B $A5                            ;9EB062|85A5    |;
                       STA.B $00                            ;9EB064|8500    |;
                       PLA                                  ;9EB066|68      |;
                       STA.B $A9                            ;9EB067|85A9    |;
                       LDA.W $1163,X                        ;9EB069|BD6311  |;
                       CMP.B $C5                            ;9EB06C|C5C5    |;
                       BEQ CODE_9EB079                      ;9EB06E|F009    |;
 
          CODE_9EB070:
                       LDA.W $10A3,X                        ;9EB070|BDA310  |;
                       STA.B $A5                            ;9EB073|85A5    |;
                       JML.L CODE_9EA8A9                    ;9EB075|5CA9A89E|;
 
          CODE_9EB079:
                       LDA.W $0AD9                          ;9EB079|ADD90A  |;
                       BMI CODE_9EB070                      ;9EB07C|30F2    |;
                       LDA.B $00                            ;9EB07E|A500    |;
                       LSR A                                ;9EB080|4A      |;
                       LSR A                                ;9EB081|4A      |;
                       LSR A                                ;9EB082|4A      |;
                       BIT.W #$1000                         ;9EB083|890010  |;
                       BEQ CODE_9EB08B                      ;9EB086|F003    |;
                       ORA.W #$E000                         ;9EB088|0900E0  |;
 
          CODE_9EB08B:
                       TAX                                  ;9EB08B|AA      |;
                       JSL.L CODE_808F7D                    ;9EB08C|227D8F80|;
                       STA.B $A5                            ;9EB090|85A5    |;
                       LDA.B $A9                            ;9EB092|A5A9    |;
                       LSR A                                ;9EB094|4A      |;
                       LSR A                                ;9EB095|4A      |;
                       LSR A                                ;9EB096|4A      |;
                       BIT.W #$1000                         ;9EB097|890010  |;
                       BEQ CODE_9EB09F                      ;9EB09A|F003    |;
                       ORA.W #$E000                         ;9EB09C|0900E0  |;
 
          CODE_9EB09F:
                       TAX                                  ;9EB09F|AA      |;
                       JSL.L CODE_808F7D                    ;9EB0A0|227D8F80|;
                       LDX.B $95                            ;9EB0A4|A695    |;
                       CLC                                  ;9EB0A6|18      |;
                       ADC.B $A5                            ;9EB0A7|65A5    |;
                       CMP.W #$000E                         ;9EB0A9|C90E00  |;
                       BCC CODE_9EB070                      ;9EB0AC|90C2    |;
                       CMP.W #$0028                         ;9EB0AE|C92800  |;
                       BCS CODE_9EB0B6                      ;9EB0B1|B003    |;
                       JMP.W CODE_9EA242                    ;9EB0B3|4C42A2  |;
 
          CODE_9EB0B6:
                       BRA CODE_9EB070                      ;9EB0B6|80B8    |;
                       LDA.W $15D4                          ;9EB0B8|ADD415  |;
                       BIT.W #$0040                         ;9EB0BB|894000  |;
                       BEQ CODE_9EB0C8                      ;9EB0BE|F008    |;
                       LDA.B zpCurntTeamLoopVal             ;9EB0C0|A591    |;
                       INC A                                ;9EB0C2|1A      |;
                       INC A                                ;9EB0C3|1A      |;
                       JSL.L CODE_9C9FD5                    ;9EB0C4|22D59F9C|;
 
          CODE_9EB0C8:
                       LDY.W $19D4,X                        ;9EB0C8|BCD419  |;
                       BMI CODE_9EB0D6                      ;9EB0CB|3009    |;
                       LDA.W JoyPad,Y                       ;9EB0CD|B97607  |;
                       AND.W #$FFF0                         ;9EB0D0|29F0FF  |;
                       BEQ CODE_9EB0D6                      ;9EB0D3|F001    |;
                       RTL                                  ;9EB0D5|6B      |;
 
          CODE_9EB0D6:
                       LDA.W $0EC3,X                        ;9EB0D6|BDC30E  |;
                       TAX                                  ;9EB0D9|AA      |;
                       LDA.W #$00C0                         ;9EB0DA|A9C000  |;
                       JSL.L CODE_808FC9                    ;9EB0DD|22C98F80|;
                       LDX.B $95                            ;9EB0E1|A695    |;
                       LDA.B $09                            ;9EB0E3|A509    |;
                       STA.W $0EC3,X                        ;9EB0E5|9DC30E  |;
                       LDA.W $0EE3,X                        ;9EB0E8|BDE30E  |;
                       TAX                                  ;9EB0EB|AA      |;
                       LDA.W #$00C0                         ;9EB0EC|A9C000  |;
                       JSL.L CODE_808FC9                    ;9EB0EF|22C98F80|;
                       LDX.B $95                            ;9EB0F3|A695    |;
                       LDA.B $09                            ;9EB0F5|A509    |;
                       STA.W $0EE3,X                        ;9EB0F7|9DE30E  |;
                       TXA                                  ;9EB0FA|8A      |;
                       LSR A                                ;9EB0FB|4A      |;
                       CMP.W $0AD9                          ;9EB0FC|CDD90A  |;
                       BNE CODE_9EB10D                      ;9EB0FF|D00C    |;
                       LDA.W #$FFFF                         ;9EB101|A9FFFF  |;
                       STA.W $0AD9                          ;9EB104|8DD90A  |;
                       LDA.W #$0708                         ;9EB107|A90807  |;
                       STA.W $1203,X                        ;9EB10A|9D0312  |;
 
          CODE_9EB10D:
                       LDA.W $1283,X                        ;9EB10D|BD8312  |;
                       BIT.W #$0002                         ;9EB110|890200  |;
                       BEQ CODE_9EB13F                      ;9EB113|F02A    |;
                       AND.W #$FFFD                         ;9EB115|29FDFF  |;
                       STA.W $1283,X                        ;9EB118|9D8312  |;
                       JSL.L CODE_9EB17A                    ;9EB11B|227AB19E|;
                       STZ.W $1023,X                        ;9EB11F|9E2310  |;
                       LDA.W #$0008                         ;9EB122|A90800  |;
                       STA.W $10A3,X                        ;9EB125|9DA310  |;
                       LDA.W #$005A                         ;9EB128|A95A00  |;
                       STA.W $1043,X                        ;9EB12B|9D4310  |;
                       LDA.W $0CEB                          ;9EB12E|ADEB0C  |;
                       BPL CODE_9EB139                      ;9EB131|1006    |;
                       LDA.W #$FFA6                         ;9EB133|A9A6FF  |;
                       STA.W $1043,X                        ;9EB136|9D4310  |;
 
          CODE_9EB139:
                       LDA.W $0D37                          ;9EB139|AD370D  |;
                       STA.W $1063,X                        ;9EB13C|9D6310  |;
 
          CODE_9EB13F:
                       LDA.W #$009E                         ;9EB13F|A99E00  |;
                       STA.B $8B                            ;9EB142|858B    |;
                       LDA.W #$D0FC                         ;9EB144|A9FCD0  |;
                       STA.B $89                            ;9EB147|8589    |;
                       LDA.W $1043,X                        ;9EB149|BD4310  |;
                       STA.B $A5                            ;9EB14C|85A5    |;
                       LDA.W $1063,X                        ;9EB14E|BD6310  |;
                       STA.B $A9                            ;9EB151|85A9    |;
                       LDA.W $1003,X                        ;9EB153|BD0310  |;
                       SEC                                  ;9EB156|38      |;
                       SBC.B $C1                            ;9EB157|E5C1    |;
                       STA.W $1003,X                        ;9EB159|9D0310  |;
                       BPL CODE_9EB185                      ;9EB15C|1027    |;
                       LDA.W #$F940                         ;9EB15E|A940F9  |;
                       STA.B $A9                            ;9EB161|85A9    |;
                       STA.W $14E3,X                        ;9EB163|9DE314  |;
                       CPX.W $0D29                          ;9EB166|EC290D  |;
                       BNE CODE_9EB176                      ;9EB169|D00B    |;
                       db $A9,$84,$FA,$85,$A9,$A9,$FF,$FF   ;9EB16B|        |;
                       db $8D,$29,$0D                       ;9EB173|        |;
 
          CODE_9EB176:
                       JSL.L CODE_9EA3DD                    ;9EB176|22DDA39E|;
 
          CODE_9EB17A:
                       LDA.W #$0078                         ;9EB17A|A97800  |;
                       JSL.L CODE_9BB385                    ;9EB17D|2285B39B|;
                       STA.W $1003,X                        ;9EB181|9D0310  |;
                       RTL                                  ;9EB184|6B      |;
 
          CODE_9EB185:
                       JMP.W CODE_9EA5A4                    ;9EB185|4CA4A5  |;
 
          CODE_9EB188:
                       JSL.L CODE_9EBF44                    ;9EB188|2244BF9E|;
                       JSL.L CODE_9EB1E5                    ;9EB18C|22E5B19E|;
                       JSL.L CODE_9EB3BC                    ;9EB190|22BCB39E|;
                       JML.L CODE_9EF913                    ;9EB194|5C13F99E|;
 
          CODE_9EB198:
                       STZ.B $A9                            ;9EB198|64A9    |;
                       LDA.W $0DD3                          ;9EB19A|ADD30D  |;
                       SEC                                  ;9EB19D|38      |;
                       SBC.W #$0058                         ;9EB19E|E95800  |;
                       BPL CODE_9EB1B0                      ;9EB1A1|100D    |;
                       INC.B $A9                            ;9EB1A3|E6A9    |;
                       INC.B $A9                            ;9EB1A5|E6A9    |;
                       LDA.W $0DD3                          ;9EB1A7|ADD30D  |;
                       SEC                                  ;9EB1AA|38      |;
                       SBC.W #$FFA8                         ;9EB1AB|E9A8FF  |;
                       BPL CODE_9EB1C8                      ;9EB1AE|1018    |;
 
          CODE_9EB1B0:
                       LDA.W $15D4                          ;9EB1B0|ADD415  |;
                       BIT.W #$0002                         ;9EB1B3|890200  |;
                       BEQ CODE_9EB1BF                      ;9EB1B6|F007    |;
                       db $A5,$A9,$49,$02,$00,$85,$A9       ;9EB1B8|        |;
 
          CODE_9EB1BF:
                       LDY.B $A9                            ;9EB1BF|A4A9    |;
                       LDA.W GmStat_AtckZneTme,Y            ;9EB1C1|B95217  |;
                       INC A                                ;9EB1C4|1A      |;
                       STA.W GmStat_AtckZneTme,Y            ;9EB1C5|995217  |;
 
          CODE_9EB1C8:
                       RTL                                  ;9EB1C8|6B      |;
 
          CODE_9EB1C9:
                       STZ.B $A9                            ;9EB1C9|64A9    |;
                       LDA.W PlyrsOnIceCountHm              ;9EB1CB|ADA617  |;
                       SEC                                  ;9EB1CE|38      |;
                       SBC.W PlyrsOnIceCountAwy             ;9EB1CF|EDA817  |;
                       BEQ CODE_9EB1E4                      ;9EB1D2|F010    |;
                       BPL CODE_9EB1DB                      ;9EB1D4|1005    |;
                       db $A9,$02,$00,$85,$A9               ;9EB1D6|        |;
 
          CODE_9EB1DB:
                       LDY.B $A9                            ;9EB1DB|A4A9    |;
                       LDA.W GmStat_PPMins,Y                ;9EB1DD|B95617  |;
                       INC A                                ;9EB1E0|1A      |;
                       STA.W GmStat_PPMins,Y                ;9EB1E1|995617  |;
 
          CODE_9EB1E4:
                       RTL                                  ;9EB1E4|6B      |;
 
          CODE_9EB1E5:
                       LDA.W PauseScreenActive              ;9EB1E5|ADDA15  |;
                       BEQ CODE_9EB1ED                      ;9EB1E8|F003    |;
                       JMP.W CODE_9EB2B4                    ;9EB1EA|4CB4B2  |;
 
          CODE_9EB1ED:
                       LDA.W #$15DE                         ;9EB1ED|A9DE15  |;
                       STA.B $89                            ;9EB1F0|8589    |;
 
          CODE_9EB1F2:
                       LDA.B ($89)                          ;9EB1F2|B289    |;
                       INC.B $89                            ;9EB1F4|E689    |;
                       INC.B $89                            ;9EB1F6|E689    |;
                       AND.W #$00FF                         ;9EB1F8|29FF00  |;
                       CMP.W #$0034                         ;9EB1FB|C93400  |;
                       BEQ CODE_9EB1F2                      ;9EB1FE|F0F2    |;
                       TAY                                  ;9EB200|A8      |;
                       BNE CODE_9EB206                      ;9EB201|D003    |;
                       JMP.W CODE_9EB2B4                    ;9EB203|4CB4B2  |;
 
          CODE_9EB206:
                       LDA.W $15D4                          ;9EB206|ADD415  |;
                       BIT.W #$0004                         ;9EB209|890400  |;
                       BNE CODE_9EB25F                      ;9EB20C|D051    |;
                       DEC.B $89                            ;9EB20E|C689    |;
                       DEC.B $89                            ;9EB210|C689    |;
                       LDA.B ($89)                          ;9EB212|B289    |;
                       INC.B $89                            ;9EB214|E689    |;
                       INC.B $89                            ;9EB216|E689    |;
                       AND.W #$00FF                         ;9EB218|29FF00  |;
                       STA.B $A5                            ;9EB21B|85A5    |;
                       TAY                                  ;9EB21D|A8      |;
                       LDA.W #$0080                         ;9EB21E|A98000  |;
                       STA.B $8F                            ;9EB221|858F    |;
                       LDA.W #$D3EB                         ;9EB223|A9EBD3  |;
                       STA.B $8D                            ;9EB226|858D    |;
                       LDA.B [$8D],Y                        ;9EB228|B78D    |;
                       CLC                                  ;9EB22A|18      |;
                       ADC.B $8D                            ;9EB22B|658D    |;
                       STA.B $8D                            ;9EB22D|858D    |;
                       LDA.B [$8D]                          ;9EB22F|A78D    |;
                       AND.W #$00FF                         ;9EB231|29FF00  |;
                       BEQ CODE_9EB25B                      ;9EB234|F025    |;
                       LDA.W $0AD9                          ;9EB236|ADD90A  |;
                       BMI CODE_9EB2B5                      ;9EB239|307A    |;
                       LSR A                                ;9EB23B|4A      |;
                       SEC                                  ;9EB23C|38      |;
                       SBC.W #$0006                         ;9EB23D|E90600  |;
                       STA.B $A5                            ;9EB240|85A5    |;
                       DEC.B $89                            ;9EB242|C689    |;
                       LDA.B ($89)                          ;9EB244|B289    |;
                       INC.B $89                            ;9EB246|E689    |;
                       AND.W #$00FF                         ;9EB248|29FF00  |;
                       BIT.W #$0080                         ;9EB24B|898000  |;
                       BEQ CODE_9EB253                      ;9EB24E|F003    |;
                       db $09,$00,$FF                       ;9EB250|        |;
 
          CODE_9EB253:
                       SEC                                  ;9EB253|38      |;
                       SBC.W #$0006                         ;9EB254|E90600  |;
                       EOR.B $A5                            ;9EB257|45A5    |;
                       BMI CODE_9EB2B5                      ;9EB259|305A    |;
 
          CODE_9EB25B:
                       JSL.L CODE_9EB2C9                    ;9EB25B|22C9B29E|;
 
          CODE_9EB25F:
                       DEC.B $89                            ;9EB25F|C689    |;
                       LDA.B ($89)                          ;9EB261|B289    |;
                       TAY                                  ;9EB263|A8      |;
                       ORA.W #$0080                         ;9EB264|098000  |;
                       STA.B ($89)                          ;9EB267|9289    |;
                       INC.B $89                            ;9EB269|E689    |;
                       TYA                                  ;9EB26B|98      |;
                       BIT.W #$0080                         ;9EB26C|898000  |;
                       BEQ CODE_9EB274                      ;9EB26F|F003    |;
                       JMP.W CODE_9EB1F2                    ;9EB271|4CF2B1  |;
 
          CODE_9EB274:
                       DEC.B $89                            ;9EB274|C689    |;
                       DEC.B $89                            ;9EB276|C689    |;
                       LDA.B ($89)                          ;9EB278|B289    |;
                       INC.B $89                            ;9EB27A|E689    |;
                       INC.B $89                            ;9EB27C|E689    |;
                       AND.W #$00FF                         ;9EB27E|29FF00  |;
                       STA.B $A5                            ;9EB281|85A5    |;
                       TAY                                  ;9EB283|A8      |;
                       LDA.W #$0080                         ;9EB284|A98000  |;
                       STA.B $8F                            ;9EB287|858F    |;
                       LDA.W #$D3EB                         ;9EB289|A9EBD3  |;
                       STA.B $8D                            ;9EB28C|858D    |;
                       LDA.B [$8D],Y                        ;9EB28E|B78D    |;
                       CLC                                  ;9EB290|18      |;
                       ADC.B $8D                            ;9EB291|658D    |;
                       STA.B $8D                            ;9EB293|858D    |;
                       LDY.W #$0001                         ;9EB295|A00100  |;
                       LDA.B [$8D],Y                        ;9EB298|B78D    |;
                       AND.W #$00FF                         ;9EB29A|29FF00  |;
                       ASL A                                ;9EB29D|0A      |;
                       ASL A                                ;9EB29E|0A      |;
                       ASL A                                ;9EB29F|0A      |;
                       ASL A                                ;9EB2A0|0A      |;
                       ASL A                                ;9EB2A1|0A      |;
                       STA.B $A9                            ;9EB2A2|85A9    |;
                       SEC                                  ;9EB2A4|38      |;
                       SBC.W $1620                          ;9EB2A5|ED2016  |;
                       BEQ CODE_9EB2B1                      ;9EB2A8|F007    |;
                       BMI CODE_9EB2B1                      ;9EB2AA|3005    |;
                       LDA.B $A9                            ;9EB2AC|A5A9    |;
                       STA.W $1620                          ;9EB2AE|8D2016  |;
 
          CODE_9EB2B1:
                       JMP.W CODE_9EB1F2                    ;9EB2B1|4CF2B1  |;
 
          CODE_9EB2B4:
                       RTL                                  ;9EB2B4|6B      |;
 
          CODE_9EB2B5:
                       LDA.W #$0008                         ;9EB2B5|A90800  |;
                       TSB.W $15D4                          ;9EB2B8|0CD415  |;
                       BNE CODE_9EB2B1                      ;9EB2BB|D0F4    |;
                       LDA.W #$0030                         ;9EB2BD|A93000  |;
                       STA.B $A5                            ;9EB2C0|85A5    |;
                       JSL.L CODE_9EF969                    ;9EB2C2|2269F99E|;
                       JMP.W CODE_9EB1F2                    ;9EB2C6|4CF2B1  |;
 
          CODE_9EB2C9:
                       LDA.W #$FFFF                         ;9EB2C9|A9FFFF  |;
                       TSB.W $15D6                          ;9EB2CC|0CD615  |;
                       BEQ CODE_9EB2D4                      ;9EB2CF|F003    |;
                       JMP.W CODE_9EB388                    ;9EB2D1|4C88B3  |;
 
          CODE_9EB2D4:
                       STZ.B $A5                            ;9EB2D4|64A5    |;
                       STZ.B $A9                            ;9EB2D6|64A9    |;
                       DEC.B $89                            ;9EB2D8|C689    |;
                       DEC.B $89                            ;9EB2DA|C689    |;
                       LDA.B ($89)                          ;9EB2DC|B289    |;
                       INC.B $89                            ;9EB2DE|E689    |;
                       INC.B $89                            ;9EB2E0|E689    |;
                       AND.W #$00FF                         ;9EB2E2|29FF00  |;
                       CMP.W #$000E                         ;9EB2E5|C90E00  |;
                       BEQ CODE_9EB326                      ;9EB2E8|F03C    |;
                       PHA                                  ;9EB2EA|48      |;
                       LDA.L $7E30F8                        ;9EB2EB|AFF8307E|;
                       STA.B $A5                            ;9EB2EF|85A5    |;
                       LDA.L $7E30FA                        ;9EB2F1|AFFA307E|;
                       STA.B $A9                            ;9EB2F5|85A9    |;
                       PLA                                  ;9EB2F7|68      |;
                       CMP.W #$0006                         ;9EB2F8|C90600  |;
                       BEQ CODE_9EB326                      ;9EB2FB|F029    |;
                       LDY.W $0D71                          ;9EB2FD|AC710D  |;
                       STY.B $A5                            ;9EB300|84A5    |;
                       LDY.W $0DD3                          ;9EB302|ACD30D  |;
                       STY.B $A9                            ;9EB305|84A9    |;
                       CMP.W #$000C                         ;9EB307|C90C00  |;
                       BNE CODE_9EB326                      ;9EB30A|D01A    |;
                       DEC.B $89                            ;9EB30C|C689    |;
                       LDA.B ($89)                          ;9EB30E|B289    |;
                       INC.B $89                            ;9EB310|E689    |;
                       AND.W #$00FF                         ;9EB312|29FF00  |;
                       ASL A                                ;9EB315|0A      |;
                       TAY                                  ;9EB316|A8      |;
                       LDA.W #$0258                         ;9EB317|A95802  |;
                       STA.B $A9                            ;9EB31A|85A9    |;
                       LDA.W $14C3,Y                        ;9EB31C|B9C314  |;
                       BEQ CODE_9EB326                      ;9EB31F|F005    |;
                       LDA.W #$FDA8                         ;9EB321|A9A8FD  |;
                       STA.B $A9                            ;9EB324|85A9    |;
 
          CODE_9EB326:
                       LDA.B $A5                            ;9EB326|A5A5    |;
                       STA.B $C5                            ;9EB328|85C5    |;
                       SEC                                  ;9EB32A|38      |;
                       SBC.W #$0046                         ;9EB32B|E94600  |;
                       BMI CODE_9EB335                      ;9EB32E|3005    |;
                       db $A9,$46,$00,$85,$A5               ;9EB330|        |;
 
          CODE_9EB335:
                       LDA.B $A5                            ;9EB335|A5A5    |;
                       SEC                                  ;9EB337|38      |;
                       SBC.W #$FFBA                         ;9EB338|E9BAFF  |;
                       BPL CODE_9EB342                      ;9EB33B|1005    |;
                       LDA.W #$FFBA                         ;9EB33D|A9BAFF  |;
                       STA.B $A5                            ;9EB340|85A5    |;
 
          CODE_9EB342:
                       LDA.B $A9                            ;9EB342|A5A9    |;
                       SEC                                  ;9EB344|38      |;
                       SBC.W #$00A6                         ;9EB345|E9A600  |;
                       BMI CODE_9EB35D                      ;9EB348|3013    |;
                       LDA.W #$00CE                         ;9EB34A|A9CE00  |;
                       STA.B $A9                            ;9EB34D|85A9    |;
                       LDA.W #$0046                         ;9EB34F|A94600  |;
                       STA.B $A5                            ;9EB352|85A5    |;
                       LDA.B $C5                            ;9EB354|A5C5    |;
                       BPL CODE_9EB35D                      ;9EB356|1005    |;
                       LDA.W #$FFBA                         ;9EB358|A9BAFF  |;
                       STA.B $A5                            ;9EB35B|85A5    |;
 
          CODE_9EB35D:
                       LDA.B $A9                            ;9EB35D|A5A9    |;
                       SEC                                  ;9EB35F|38      |;
                       SBC.W #$FF5A                         ;9EB360|E95AFF  |;
                       BPL CODE_9EB378                      ;9EB363|1013    |;
                       LDA.W #$FF32                         ;9EB365|A932FF  |;
                       STA.B $A9                            ;9EB368|85A9    |;
                       LDA.W #$0046                         ;9EB36A|A94600  |;
                       STA.B $A5                            ;9EB36D|85A5    |;
                       LDA.B $C5                            ;9EB36F|A5C5    |;
                       BPL CODE_9EB378                      ;9EB371|1005    |;
                       LDA.W #$FFBA                         ;9EB373|A9BAFF  |;
                       STA.B $A5                            ;9EB376|85A5    |;
 
          CODE_9EB378:
                       LDA.B $A5                            ;9EB378|A5A5    |;
                       STA.L $7E3136                        ;9EB37A|8F36317E|;
                       LDA.B $A9                            ;9EB37E|A5A9    |;
                       STA.L $7E3138                        ;9EB380|8F38317E|;
                       JSL.L CODE_9FB601                    ;9EB384|2201B69F|;
          CODE_9EB388:
                       LDA.B $83                            ;9EB388|A583    |;
                       SEC                                  ;9EB38A|38      |;
                       SBC.W $0D2B                          ;9EB38B|ED2B0D  |;
                       CMP.W #$003C                         ;9EB38E|C93C00  |;
                       BCC CODE_9EB393                      ;9EB391|9000    |;
 
          CODE_9EB393:
                       LDA.W $0CA9                          ;9EB393|ADA90C  |;
                       BNE CODE_9EB39E                      ;9EB396|D006    |;
                       LDA.W #$001E                         ;9EB398|A91E00  |;
                       STA.W $0CA9                          ;9EB39B|8DA90C  |;
 
          CODE_9EB39E:
                       LDA.W #$7000                         ;9EB39E|A90070  |;
                       STA.B $64                            ;9EB3A1|8564    |;
                       LDA.W #$0015                         ;9EB3A3|A91500  |;
                       JSL.L fn_PlaySFX                     ;9EB3A6|227DA180|;
                       STZ.W $1620                          ;9EB3AA|9C2016  |;
                       LDA.W #$0004                         ;9EB3AD|A90400  |;
                       TSB.W $15D4                          ;9EB3B0|0CD415  |;
                       LDA.W #$000A                         ;9EB3B3|A90A00  |;
                       STA.B $A5                            ;9EB3B6|85A5    |;
                       JML.L CODE_9EF969                    ;9EB3B8|5C69F99E|;
 
          CODE_9EB3BC:
                       LDA.W $15D4                          ;9EB3BC|ADD415  |;
                       BIT.W #$0004                         ;9EB3BF|890400  |;
                       BNE CODE_9EB3C5                      ;9EB3C2|D001    |;
 
          CODE_9EB3C4:
                       RTL                                  ;9EB3C4|6B      |;
 
          CODE_9EB3C5:
                       LDA.W $1620                          ;9EB3C5|AD2016  |;
                       BPL CODE_9EB3CD                      ;9EB3C8|1003    |;
                       JMP.W CODE_9EB476                    ;9EB3CA|4C76B4  |;
 
          CODE_9EB3CD:
                       SEC                                  ;9EB3CD|38      |;
                       SBC.B $C1                            ;9EB3CE|E5C1    |;
                       STA.W $1620                          ;9EB3D0|8D2016  |;
                       BPL CODE_9EB3C4                      ;9EB3D3|10EF    |;
                       LDA.W #$0008                         ;9EB3D5|A90800  |;
                       TRB.W $15D4                          ;9EB3D8|1CD415  |;
                       LDA.W #$0000                         ;9EB3DB|A90000  |;
                       STA.B $8B                            ;9EB3DE|858B    |;
                       LDA.W #$15DE                         ;9EB3E0|A9DE15  |;
                       STA.B $89                            ;9EB3E3|8589    |;
 
          CODE_9EB3E5:
                       LDA.B [$89]                          ;9EB3E5|A789    |;
                       INC.B $89                            ;9EB3E7|E689    |;
                       INC.B $89                            ;9EB3E9|E689    |;
                       AND.W #$00FF                         ;9EB3EB|29FF00  |;
                       CMP.W #$0034                         ;9EB3EE|C93400  |;
                       BEQ CODE_9EB3E5                      ;9EB3F1|F0F2    |;
                       TAY                                  ;9EB3F3|A8      |;
                       BEQ CODE_9EB3C4                      ;9EB3F4|F0CE    |;
                       DEC.B $89                            ;9EB3F6|C689    |;
                       DEC.B $89                            ;9EB3F8|C689    |;
                       LDA.B [$89]                          ;9EB3FA|A789    |;
                       INC.B $89                            ;9EB3FC|E689    |;
                       INC.B $89                            ;9EB3FE|E689    |;
                       AND.W #$00FF                         ;9EB400|29FF00  |;
                       STA.B $A5                            ;9EB403|85A5    |;
                       TAY                                  ;9EB405|A8      |;
                       LDA.W #$0080                         ;9EB406|A98000  |;
                       STA.B $8F                            ;9EB409|858F    |;
                       LDA.W #$D3EB                         ;9EB40B|A9EBD3  |;
                       STA.B $8D                            ;9EB40E|858D    |;
                       CLC                                  ;9EB410|18      |;
                       ADC.B [$8D],Y                        ;9EB411|778D    |;
                       STA.B $8D                            ;9EB413|858D    |;
                       LDA.B [$8D]                          ;9EB415|A78D    |;
                       JMP.W One_Min_Pen                    ;9EB417|4C5BFB  |; Hijack for one min penalities
          CODE_9EB41A:
                       BEQ CODE_9EB3E5                      ;9EB41A|F0C9    |;
                       CMP.W #$0001                         ;9EB41C|C90100  |;
                       BEQ CODE_9EB3E5                      ;9EB41F|F0C4    |;
          CODE_9EB421:
                       LDA.W #$0400                         ;9EB421|A90004  |;
                       TSB.W $15D8                          ;9EB424|0CD815  |;
                       LDA.W $0AD3                          ;9EB427|ADD30A  |;
                       BEQ CODE_9EB434                      ;9EB42A|F008    |;
                       JSL.L CODE_9F96F7                    ;9EB42C|22F7969F|;
                       JSL.L CODE_9F9708                    ;9EB430|2208979F|;
 
          CODE_9EB434:
                       JSL.L CODE_9FBA17                    ;9EB434|2217BA9F|;
                       LDA.W #$FF00                         ;9EB438|A900FF  |;
                       TSB.W $0AD9                          ;9EB43B|0CD90A  |;
                       LDX.W #$001C                         ;9EB43E|A21C00  |;
                       STX.B $95                            ;9EB441|8695    |;
                       LDA.W #$001A                         ;9EB443|A91A00  |;
                       STA.B $A5                            ;9EB446|85A5    |;
                       JSL.L CODE_9E8C0E                    ;9EB448|220E8C9E|;
                       LDX.B $95                            ;9EB44C|A695    |;
                       LDA.W #$1C20                         ;9EB44E|A9201C  |;
                       STA.W $1003,X                        ;9EB451|9D0310  |;
                       LDA.W #$FF00                         ;9EB454|A900FF  |;
                       TSB.W $162C                          ;9EB457|0C2C16  |;
                       STZ.W $162A                          ;9EB45A|9C2A16  |;
                       JSL.L CODE_9EF913                    ;9EB45D|2213F99E|;
                       LDA.W #$0032                         ;9EB461|A93200  |;
                       STA.W $162A                          ;9EB464|8D2A16  |;
                       STZ.B $A5                            ;9EB467|64A5    |;
                       JSL.L CODE_9EFA36                    ;9EB469|2236FA9E|;
                       JSL.L CODE_9F96E6                    ;9EB46D|22E6969F|;
                       JSL.L CODE_8086BD                    ;9EB471|22BD8680|;
                       RTL                                  ;9EB475|6B      |;
 
          CODE_9EB476:
                       JSL.L CODE_9EBF11                    ;9EB476|2211BF9E|;
                       LDA.W $162A                          ;9EB47A|AD2A16  |;
                       BMI CODE_9EB482                      ;9EB47D|3003    |;
                       JMP.W CODE_9EB6F6                    ;9EB47F|4CF6B6  |;
 
          CODE_9EB482:
                       LDA.W $162C                          ;9EB482|AD2C16  |;
                       BMI CODE_9EB48A                      ;9EB485|3003    |;
                       db $4C,$F6,$B6                       ;9EB487|        |;
 
          CODE_9EB48A:
                       LDA.B $A5                            ;9EB48A|A5A5    |;
                       PHA                                  ;9EB48C|48      |;
                       LDA.B $A7                            ;9EB48D|A5A7    |;
                       PHA                                  ;9EB48F|48      |;
                       STX.B $87                            ;9EB490|8687    |;
                       LDX.W #$0000                         ;9EB492|A20000  |;
 
          CODE_9EB495:
                       LDA.B $89,X                          ;9EB495|B589    |;
                       PHA                                  ;9EB497|48      |;
                       INX                                  ;9EB498|E8      |;
                       INX                                  ;9EB499|E8      |;
                       CPX.W #$0010                         ;9EB49A|E01000  |;
                       BNE CODE_9EB495                      ;9EB49D|D0F6    |;
                       LDX.B $87                            ;9EB49F|A687    |;
                       LDA.W #$0000                         ;9EB4A1|A90000  |;
                       STA.B $8B                            ;9EB4A4|858B    |;
                       LDA.W #$15DE                         ;9EB4A6|A9DE15  |;
                       STA.B $89                            ;9EB4A9|8589    |;
 
          CODE_9EB4AB:
                       LDA.B [$89]                          ;9EB4AB|A789    |;
                       INC.B $89                            ;9EB4AD|E689    |;
                       INC.B $89                            ;9EB4AF|E689    |;
                       AND.W #$00FF                         ;9EB4B1|29FF00  |;
                       CMP.W #$0034                         ;9EB4B4|C93400  |;
                       BEQ CODE_9EB4AB                      ;9EB4B7|F0F2    |;
                       CMP.W #$0000                         ;9EB4B9|C90000  |;
                       BNE CODE_9EB4C1                      ;9EB4BC|D003    |;
                       JMP.W CODE_9EB6B8                    ;9EB4BE|4CB8B6  |;
 
          CODE_9EB4C1:
                       LDA.B [$89]                          ;9EB4C1|A789    |;
                       INC.B $89                            ;9EB4C3|E689    |;
                       INC.B $89                            ;9EB4C5|E689    |;
                       CMP.W #$0000                         ;9EB4C7|C90000  |;
                       BNE CODE_9EB4C1                      ;9EB4CA|D0F5    |;
                       DEC.B $89                            ;9EB4CC|C689    |;
                       DEC.B $89                            ;9EB4CE|C689    |;
                       DEC.B $89                            ;9EB4D0|C689    |;
                       DEC.B $89                            ;9EB4D2|C689    |;
                       LDA.B [$89]                          ;9EB4D4|A789    |;
                       PHA                                  ;9EB4D6|48      |;
                       AND.W #$7FFF                         ;9EB4D7|29FF7F  |;
                       STA.B [$89]                          ;9EB4DA|8789    |;
                       PLA                                  ;9EB4DC|68      |;
                       BMI CODE_9EB4F9                      ;9EB4DD|301A    |;
                       LDA.B [$89]                          ;9EB4DF|A789    |;
                       XBA                                  ;9EB4E1|EB      |;
                       AND.W #$00FF                         ;9EB4E2|29FF00  |;
                       ASL A                                ;9EB4E5|0A      |;
                       STA.B $A9                            ;9EB4E6|85A9    |;
                       TAY                                  ;9EB4E8|A8      |;
                       LDA.W $0F43,Y                        ;9EB4E9|B9430F  |;
                       BMI CODE_9EB4F1                      ;9EB4EC|3003    |;
                       JMP.W CODE_9EB6CC                    ;9EB4EE|4CCCB6  |;
 
          CODE_9EB4F1:
                       LDA.W #$0000                         ;9EB4F1|A90000  |;
                       STA.B [$89]                          ;9EB4F4|8789    |;
                       JMP.W CODE_9EB6CC                    ;9EB4F6|4CCCB6  |;
 
          CODE_9EB4F9:
                       LDA.B [$89]                          ;9EB4F9|A789    |;
                       AND.W #$00FF                         ;9EB4FB|29FF00  |;
                       STA.B $A5                            ;9EB4FE|85A5    |;
                       TAY                                  ;9EB500|A8      |;
                       LDA.W #$0080                         ;9EB501|A98000  |;
                       STA.B $8F                            ;9EB504|858F    |;
                       LDA.W #$D3EB                         ;9EB506|A9EBD3  |;
                       STA.B $8D                            ;9EB509|858D    |;
                       LDA.B [$8D],Y                        ;9EB50B|B78D    |;
                       CLC                                  ;9EB50D|18      |;
                       ADC.B $8D                            ;9EB50E|658D    |;
                       STA.B $8D                            ;9EB510|858D    |;
                       CMP.W #$D4AD                         ;9EB512|C9ADD4  |;
                       BNE CODE_9EB51A                      ;9EB515|D003    |;
                       db $4C,$A1,$B6                       ;9EB517|        |;
 
          CODE_9EB51A:
                       CMP.W #$D434                         ;9EB51A|C934D4  |;
                       BNE CODE_9EB523                      ;9EB51D|D004    |;
                       JSL.L CODE_9C9BAB                    ;9EB51F|22AB9B9C|;
 
          CODE_9EB523:
                       LDA.B [$8D]                          ;9EB523|A78D    |;
                       AND.W #$00FF                         ;9EB525|29FF00  |;
                       STA.B $AD                            ;9EB528|85AD    |;
                       BNE CODE_9EB52F                      ;9EB52A|D003    |;
                       JMP.W CODE_9EB6A5                    ;9EB52C|4CA5B6  |;
 
          CODE_9EB52F:
                       LDA.B $A5                            ;9EB52F|A5A5    |;
                       PHA                                  ;9EB531|48      |;
                       LDA.B $A7                            ;9EB532|A5A7    |;
                       PHA                                  ;9EB534|48      |;
                       LDA.B $A9                            ;9EB535|A5A9    |;
                       PHA                                  ;9EB537|48      |;
                       LDA.B $AB                            ;9EB538|A5AB    |;
                       PHA                                  ;9EB53A|48      |;
                       STX.B $87                            ;9EB53B|8687    |;
                       LDX.W #$0000                         ;9EB53D|A20000  |;
 
          CODE_9EB540:
                       LDA.B $8D,X                          ;9EB540|B58D    |;
                       PHA                                  ;9EB542|48      |;
                       INX                                  ;9EB543|E8      |;
                       INX                                  ;9EB544|E8      |;
                       CPX.W #$0010                         ;9EB545|E01000  |;
                       BNE CODE_9EB540                      ;9EB548|D0F6    |;
                       LDX.B $87                            ;9EB54A|A687    |;
                       JSL.L CODE_9F9B08                    ;9EB54C|22089B9F|;
                       LDA.B [$89]                          ;9EB550|A789    |;
                       XBA                                  ;9EB552|EB      |;
                       AND.W #$00FF                         ;9EB553|29FF00  |;
                       ASL A                                ;9EB556|0A      |;
                       STA.B $A9                            ;9EB557|85A9    |;
                       TAX                                  ;9EB559|AA      |;
                       STX.B $95                            ;9EB55A|8695    |;
                       STZ.B $A5                            ;9EB55C|64A5    |;
                       STZ.B zpCurntTeamLoopVal             ;9EB55E|6491    |;
                       LDA.W #$0002                         ;9EB560|A90200  |;
                       STA.B $8D                            ;9EB563|858D    |;
                       LDA.W $1503,X                        ;9EB565|BD0315  |;
                       BEQ CODE_9EB582                      ;9EB568|F018    |;
                       LDA.W #$8000                         ;9EB56A|A90080  |;
                       STA.B $A5                            ;9EB56D|85A5    |;
                       STZ.B $8D                            ;9EB56F|648D    |;
                       LDA.W #$0002                         ;9EB571|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9EB574|8591    |;
                       LDA.W $19BE                          ;9EB576|ADBE19  |;
                       CLC                                  ;9EB579|18      |;
                       ADC.W #$0014                         ;9EB57A|691400  |;
                       BMI CODE_9EB582                      ;9EB57D|3003    |;
                       STA.W $19BE                          ;9EB57F|8DBE19  |;
 
          CODE_9EB582:
                       LDY.B zpCurntTeamLoopVal             ;9EB582|A491    |;
                       LDA.W GmStat_PenaltyCnt,Y            ;9EB584|B94A17  |;
                       INC A                                ;9EB587|1A      |;
                       STA.W GmStat_PenaltyCnt,Y            ;9EB588|994A17  |;
                       LDA.W GmStat_PenaltyMins,Y           ;9EB58B|B94E17  |;
                       CLC                                  ;9EB58E|18      |;
                       ADC.B $AD                            ;9EB58F|65AD    |;
                       STA.W GmStat_PenaltyMins,Y           ;9EB591|994E17  |;
                       LDA.W $12A3,X                        ;9EB594|BDA312  |;
                       AND.W #$00FF                         ;9EB597|29FF00  |;
                       ORA.B $A5                            ;9EB59A|05A5    |;
                       STA.W $1636                          ;9EB59C|8D3616  |;
                       LDA.W $12A3,X                        ;9EB59F|BDA312  |;
                       STA.B $A5                            ;9EB5A2|85A5    |;
                       LDA.B zpCurntTeamLoopVal             ;9EB5A4|A591    |;
                       BEQ CODE_9EB5AB                      ;9EB5A6|F003    |;
                       LDA.W #$001A                         ;9EB5A8|A91A00  |;
 
          CODE_9EB5AB:
                       PHX                                  ;9EB5AB|DA      |; Sub routine to Add Stats, 198Ax = Pen Minutes
                       CLC                                  ;9EB5AC|18      |;
                       ADC.B $A5                            ;9EB5AD|65A5    |;
                       TAX                                  ;9EB5AF|AA      |;
                       SEP #$20                             ;9EB5B0|E220    |;
                       LDA.W $198A,X                        ;9EB5B2|BD8A19  |; Get Current Number of pen minutes for the player Load into A register
                       REP #$20                             ;9EB5B5|C220    |;
                       AND.W #$00FF                         ;9EB5B7|29FF00  |;
                       CLC                                  ;9EB5BA|18      |;
                       ADC.B $AD                            ;9EB5BB|65AD    |;
                       SEP #$20                             ;9EB5BD|E220    |;
                       STA.W $198A,X                        ;9EB5BF|9D8A19  |;
                       REP #$20                             ;9EB5C2|C220    |;
                       PLX                                  ;9EB5C4|FA      |;
                       LDA.W $163C                          ;9EB5C5|AD3C16  |;
                       CMP.W #$0041                         ;9EB5C8|C94100  |;
                       BCS CODE_9EB5FD                      ;9EB5CB|B030    |;
                       ASL A                                ;9EB5CD|0A      |;
                       ASL A                                ;9EB5CE|0A      |;
                       TAY                                  ;9EB5CF|A8      |;
                       JSL.L CODE_9F9B08                    ;9EB5D0|22089B9F|;
                       LDA.B $A5                            ;9EB5D4|A5A5    |;
                       STA.W $163E,Y                        ;9EB5D6|993E16  |;
                       INY                                  ;9EB5D9|C8      |;
                       INY                                  ;9EB5DA|C8      |;
                       LDA.W $1636                          ;9EB5DB|AD3616  |;
                       CMP.W #$0080                         ;9EB5DE|C98000  |;
                       BMI CODE_9EB5E6                      ;9EB5E1|3003    |;
                       ORA.W #$0080                         ;9EB5E3|098000  |;
 
          CODE_9EB5E6:
                       SEP #$20                             ;9EB5E6|E220    |;
                       STA.W $163E,Y                        ;9EB5E8|993E16  |;
                       REP #$20                             ;9EB5EB|C220    |;
                       INY                                  ;9EB5ED|C8      |;
                       LDA.B [$89]                          ;9EB5EE|A789    |;
                       AND.W #$00FF                         ;9EB5F0|29FF00  |;
                       SEP #$20                             ;9EB5F3|E220    |;
                       STA.W $163E,Y                        ;9EB5F5|993E16  |;
                       REP #$20                             ;9EB5F8|C220    |;
                       INC.W $163C                          ;9EB5FA|EE3C16  |;
 
          CODE_9EB5FD:
                       LDA.W $1636                          ;9EB5FD|AD3616  |;
                       AND.W #$00FF                         ;9EB600|29FF00  |;
                       BIT.W #$0080                         ;9EB603|898000  |;
                       BEQ CODE_9EB60B                      ;9EB606|F003    |;
                       db $09,$00,$FF                       ;9EB608|        |;
 
          CODE_9EB60B:
                       ASL A                                ;9EB60B|0A      |;
                       STA.B $A5                            ;9EB60C|85A5    |;
                       PHX                                  ;9EB60E|DA      |;
                       LDX.W #$003C                         ;9EB60F|A23C00  |;
                       LDA.B $AD                            ;9EB612|A5AD    |;
                       AND.W #$00FF                         ;9EB614|29FF00  |;
                       JSL.L CODE_808F4C                    ;9EB617|224C8F80|;
                       ORA.W #$2000                         ;9EB61B|090020  |;
                       STA.B $AD                            ;9EB61E|85AD    |;
                       PLX                                  ;9EB620|FA      |;
                       LDA.B zpCurntTeamLoopVal             ;9EB621|A591    |;
                       BEQ CODE_9EB628                      ;9EB623|F003    |;
                       LDA.W #$0034                         ;9EB625|A93400  |;
 
          CODE_9EB628:
                       CLC                                  ;9EB628|18      |;
                       ADC.B $A5                            ;9EB629|65A5    |;
                       TAY                                  ;9EB62B|A8      |;
                       LDA.W $1852,Y                        ;9EB62C|B95218  |;
                       BMI CODE_9EB636                      ;9EB62F|3005    |;
                       db $29,$00,$10,$04,$AD               ;9EB631|        |;
 
          CODE_9EB636:
                       LDA.B $AD                            ;9EB636|A5AD    |; Pen Called 3rd already has 2078 also called when penalty ticks down every second
                       STA.W $1852,Y                        ;9EB638|995218  |;
                       LDA.W #$1000                         ;9EB63B|A90010  |;
                       TRB.B $AD                            ;9EB63E|14AD    |;
                       LDA.B $8B                            ;9EB640|A58B    |;
                       PHA                                  ;9EB642|48      |;
                       LDA.B $89                            ;9EB643|A589    |;
                       PHA                                  ;9EB645|48      |;
                       LDA.B zpCurntTeamLoopVal             ;9EB646|A591    |;
                       BEQ CODE_9EB64D                      ;9EB648|F003    |;
                       LDA.W #$001A                         ;9EB64A|A91A00  |;
 
          CODE_9EB64D:
                       STA.B $89                            ;9EB64D|8589    |;
                       LDA.W #$0018                         ;9EB64F|A91800  |;
                       STA.B $A9                            ;9EB652|85A9    |;
                       LDY.B $89                            ;9EB654|A489    |;
                       INC.B $89                            ;9EB656|E689    |;
                       LDA.W $18BA,Y                        ;9EB658|B9BA18  |;
                       BIT.W #$0080                         ;9EB65B|898000  |;
                       BNE CODE_9EB664                      ;9EB65E|D004    |;
                       db $C6,$A9,$10,$F0                   ;9EB660|        |;
 
          CODE_9EB664:
                       LDA.B $A5                            ;9EB664|A5A5    |;
                       ORA.W #$FF00                         ;9EB666|0900FF  |;
                       STA.W $18BA,Y                        ;9EB669|99BA18  |;
                       PLA                                  ;9EB66C|68      |;
                       STA.B $89                            ;9EB66D|8589    |;
                       PLA                                  ;9EB66F|68      |;
                       STA.B $8B                            ;9EB670|858B    |;
                       LDA.W #$000D                         ;9EB672|A90D00  |;
                       STA.B $A5                            ;9EB675|85A5    |;
                       JSL.L CODE_9E8C18                    ;9EB677|22188C9E|;
                       STX.B $87                            ;9EB67B|8687    |;
                       LDX.W #$000E                         ;9EB67D|A20E00  |;
 
          CODE_9EB680:
                       PLA                                  ;9EB680|68      |;
                       STA.B $8D,X                          ;9EB681|958D    |;
                       DEX                                  ;9EB683|CA      |;
                       DEX                                  ;9EB684|CA      |;
                       BPL CODE_9EB680                      ;9EB685|10F9    |;
                       LDX.B $87                            ;9EB687|A687    |;
                       PLA                                  ;9EB689|68      |;
                       STA.B $AB                            ;9EB68A|85AB    |;
                       PLA                                  ;9EB68C|68      |;
                       STA.B $A9                            ;9EB68D|85A9    |;
                       PLA                                  ;9EB68F|68      |;
                       STA.B $A7                            ;9EB690|85A7    |;
                       PLA                                  ;9EB692|68      |;
                       STA.B $A5                            ;9EB693|85A5    |;
                       LDX.B $95                            ;9EB695|A695    |;
                       JSL.L CODE_9EF969                    ;9EB697|2269F99E|;
                       JSL.L CODE_9FA130                    ;9EB69B|2230A19F|;
                       BRA CODE_9EB6CC                      ;9EB69F|802B    |;
                       db $22,$2D,$C7,$9E                   ;9EB6A1|        |;
 
          CODE_9EB6A5:
                       LDA.W #$0000                         ;9EB6A5|A90000  |;
                       STA.B [$89]                          ;9EB6A8|8789    |;
                       LDA.W PauseScreenActive              ;9EB6AA|ADDA15  |;
                       BEQ CODE_9EB6B2                      ;9EB6AD|F003    |;
                       db $4C,$A1,$B4                       ;9EB6AF|        |;
 
          CODE_9EB6B2:
                       JSL.L CODE_9EF969                    ;9EB6B2|2269F99E|;
                       BRA CODE_9EB6CC                      ;9EB6B6|8014    |;
 
          CODE_9EB6B8:
                       LDA.W #$0004                         ;9EB6B8|A90400  |;
                       TRB.W $15D4                          ;9EB6BB|1CD415  |;
                       LDX.W #$001C                         ;9EB6BE|A21C00  |;
                       STX.B $95                            ;9EB6C1|8695    |;
                       LDA.W #$001B                         ;9EB6C3|A91B00  |;
                       STA.B $A5                            ;9EB6C6|85A5    |;
                       JSL.L CODE_9E8C18                    ;9EB6C8|22188C9E|;
 
          CODE_9EB6CC:
                       LDA.W IsPenaltyShot                  ;9EB6CC|AD9B1E  |;
                       BNE CODE_9EB6E0                      ;9EB6CF|D00F    |;
                       STZ.B zpCurntTeamLoopVal             ;9EB6D1|6491    |;
                       JSL.L CODE_9EB6F7                    ;9EB6D3|22F7B69E|;
                       LDA.W #$0002                         ;9EB6D7|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9EB6DA|8591    |;
                       JSL.L CODE_9EB6F7                    ;9EB6DC|22F7B69E|;
 
          CODE_9EB6E0:
                       STX.B $87                            ;9EB6E0|8687    |;
                       LDX.W #$000E                         ;9EB6E2|A20E00  |;
 
          CODE_9EB6E5:
                       PLA                                  ;9EB6E5|68      |;
                       STA.B $89,X                          ;9EB6E6|9589    |;
                       DEX                                  ;9EB6E8|CA      |;
                       DEX                                  ;9EB6E9|CA      |;
                       BPL CODE_9EB6E5                      ;9EB6EA|10F9    |;
                       LDX.B $87                            ;9EB6EC|A687    |;
                       PLA                                  ;9EB6EE|68      |;
                       STA.B $A7                            ;9EB6EF|85A7    |;
                       PLA                                  ;9EB6F1|68      |;
                       STA.B $A5                            ;9EB6F2|85A5    |;
                       LDX.B $95                            ;9EB6F4|A695    |;
 
          CODE_9EB6F6:
                       RTL                                  ;9EB6F6|6B      |;
 
          CODE_9EB6F7:
                       LDA.W #$0006                         ;9EB6F7|A90600  |;
                       STA.B $A9                            ;9EB6FA|85A9    |;
                       LDA.W #$0032                         ;9EB6FC|A93200  |;
                       STA.B $A5                            ;9EB6FF|85A5    |;
 
          CODE_9EB701:
                       LDA.B zpCurntTeamLoopVal             ;9EB701|A591    |;
                       BEQ CODE_9EB708                      ;9EB703|F003    |;
                       LDA.W #$0034                         ;9EB705|A93400  |;
 
          CODE_9EB708:
                       CLC                                  ;9EB708|18      |;
                       ADC.B $A5                            ;9EB709|65A5    |;
                       TAY                                  ;9EB70B|A8      |;
                       LDA.W $1852,Y                        ;9EB70C|B95218  |;
                       BMI CODE_9EB727                      ;9EB70F|3016    |;
                       BEQ CODE_9EB727                      ;9EB711|F014    |;
                       AND.W #$DFFF                         ;9EB713|29FFDF  |;
                       STA.W $1852,Y                        ;9EB716|995218  |;
                       BIT.W #$5000                         ;9EB719|890050  |;
                       BNE CODE_9EB727                      ;9EB71C|D009    |;
                       LDA.B $A9                            ;9EB71E|A5A9    |;
                       CMP.W #$0004                         ;9EB720|C90400  |;
                       BEQ CODE_9EB727                      ;9EB723|F002    |;
                       DEC.B $A9                            ;9EB725|C6A9    |;
 
          CODE_9EB727:
                       DEC.B $A5                            ;9EB727|C6A5    |;
                       DEC.B $A5                            ;9EB729|C6A5    |;
                       BPL CODE_9EB701                      ;9EB72B|10D4    |;
                       LDY.B zpCurntTeamLoopVal             ;9EB72D|A491    |;
                       LDA.B $A9                            ;9EB72F|A5A9    |;
                       STA.W PlyrsOnIceCountHm,Y            ;9EB731|99A617  |;
                       RTL                                  ;9EB734|6B      |;
 
          CODE_9EB735:
                       LDA.L $7E34BC                        ;9EB735|AFBC347E|;
                       CMP.W #$0004                         ;9EB739|C90400  |;
                       BEQ CODE_9EB769                      ;9EB73C|F02B    |;
                       STZ.B zpCurntTeamLoopVal             ;9EB73E|6491    |;
                       LDA.W #$0002                         ;9EB740|A90200  |;
                       STA.B $95                            ;9EB743|8595    |;
                       LDA.W PlyrsOnIceCountHm              ;9EB745|ADA617  |;
                       SEC                                  ;9EB748|38      |;
                       SBC.W PlyrsOnIceCountAwy             ;9EB749|EDA817  |;
                       STA.B $A5                            ;9EB74C|85A5    |;
                       BNE CODE_9EB753                      ;9EB74E|D003    |;
                       JMP.W CODE_9EB851                    ;9EB750|4C51B8  |;
 
          CODE_9EB753:
                       BPL CODE_9EB76A                      ;9EB753|1015    |;
                       db $AD,$D8,$15,$89,$00,$40,$D0,$27   ;9EB755|        |;
                       db $22,$51,$B8,$9E,$A9,$00,$40,$0C   ;9EB75D|        |;
                       db $D8,$15,$80,$1B                   ;9EB765|        |;
 
          CODE_9EB769:
                       RTL                                  ;9EB769|6B      |;
 
          CODE_9EB76A:
                       LDX.B zpCurntTeamLoopVal             ;9EB76A|A691    |;
                       LDY.B $95                            ;9EB76C|A495    |;
                       STY.B zpCurntTeamLoopVal             ;9EB76E|8491    |;
                       STX.B $95                            ;9EB770|8695    |;
                       LDA.W $15D8                          ;9EB772|ADD815  |;
                       BIT.W #$4000                         ;9EB775|890040  |;
                       BEQ CODE_9EB784                      ;9EB778|F00A    |;
                       db $22,$51,$B8,$9E,$A9,$00,$40,$1C   ;9EB77A|        |;
                       db $D8,$15                           ;9EB782|        |;
 
          CODE_9EB784:
                       LDA.W #$2000                         ;9EB784|A90020  |;
                       TSB.W $15D8                          ;9EB787|0CD815  |;
                       BNE CODE_9EB791                      ;9EB78A|D005    |;
                       LDX.B $95                            ;9EB78C|A695    |;
                       INC.W $1746,X                        ;9EB78E|FE4617  |;
 
          CODE_9EB791:
                       LDA.B $8F                            ;9EB791|A58F    |;
                       PHA                                  ;9EB793|48      |;
                       LDA.B $8D                            ;9EB794|A58D    |;
                       PHA                                  ;9EB796|48      |;
                       LDA.W #$009C                         ;9EB797|A99C00  |;
                       STA.B $8F                            ;9EB79A|858F    |;
                       LDA.W #$F718                         ;9EB79C|A918F7  |;
                       STA.B $8D                            ;9EB79F|858D    |;
                       JSL.L CODE_9EC7BE                    ;9EB7A1|22BEC79E|;
                       PLA                                  ;9EB7A5|68      |;
                       STA.B $8D                            ;9EB7A6|858D    |;
                       PLA                                  ;9EB7A8|68      |;
                       STA.B $8F                            ;9EB7A9|858F    |;
                       JSL.L CODE_9EBB92                    ;9EB7AB|2292BB9E|;
                       LDA.W $15D6                          ;9EB7AF|ADD615  |;
                       BNE CODE_9EB7FB                      ;9EB7B2|D047    |;
                       LDA.B $A5                            ;9EB7B4|A5A5    |;
                       CMP.W #$0005                         ;9EB7B6|C90500  |; Penalty Countdown CMP 5 Seconds
                       BCS CODE_9EB7FB                      ;9EB7B9|B040    |;
                       CMP.W #$0001                         ;9EB7BB|C90100  |; Penalty Countdown CMP 1 Seconds
                       BEQ CODE_9EB7CE                      ;9EB7BE|F00E    |; 1 Second Left BRA
                       LDA.W #$7000                         ;9EB7C0|A90070  |; SFX
                       STA.B $64                            ;9EB7C3|8564    |; SFX
                       LDA.W #$0005                         ;9EB7C5|A90500  |; SFX
                       JSL.L fn_PlaySFX                     ;9EB7C8|227DA180|; JMP Function Play SFX
                       BRA CODE_9EB7FB                      ;9EB7CC|802D    |;
          CODE_9EB7CE:
                       LDA.W #$7000                         ;9EB7CE|A90070  |; SFX
                       STA.B $64                            ;9EB7D1|8564    |; SFX
                       LDA.W #$0005                         ;9EB7D3|A90500  |; SFX
                       JSL.L fn_PlaySFX                     ;9EB7D6|227DA180|; JMP Play SFX
                       db $DA,$A8,$E2,$20,$B9,$F2,$08,$C9   ;9EB7DA|        |;
                       db $02,$D0,$13,$A9,$03,$99,$F2,$08   ;9EB7E2|        |;
                       db $C2,$20,$98,$0A,$A8,$A9,$59,$06   ;9EB7EA|        |;
                       db $99,$4A,$09,$8D,$AF,$0C,$C2,$20   ;9EB7F2|        |;
                       db $FA                               ;9EB7FA|        |;
 
          CODE_9EB7FB:
                       JSL.L CODE_9FA3D7                    ;9EB7FB|22D7A39F|;
                       JSL.L CODE_9EC7BE                    ;9EB7FF|22BEC79E|;
                       LDX.B $95                            ;9EB803|A695    |;
                       LDA.W $1CDC,X                        ;9EB805|BDDC1C  |;
                       STA.B $89                            ;9EB808|8589    |;
                       LDA.W #$009C                         ;9EB80A|A99C00  |;
                       STA.B $8B                            ;9EB80D|858B    |;
                       LDA.W #$0000                         ;9EB80F|A90000  |;
                       STA.B $97                            ;9EB812|8597    |;
                       LDA.W #$0A2A                         ;9EB814|A92A0A  |;
                       STA.B $95                            ;9EB817|8595    |;
                       LDA.W #$0002                         ;9EB819|A90200  |;
                       STA.B [$95]                          ;9EB81C|8795    |;
                       LDA.W #$009C                         ;9EB81E|A99C00  |;
                       STA.B $8F                            ;9EB821|858F    |;
                       LDA.W #$F72A                         ;9EB823|A92AF7  |;
                       STA.B $8D                            ;9EB826|858D    |;
                       JSL.L CODE_9ECFA5                    ;9EB828|22A5CF9E|;
                       LDA.B $89                            ;9EB82C|A589    |;
                       LDY.W #$0004                         ;9EB82E|A00400  |;
                       CLC                                  ;9EB831|18      |;
                       ADC.B [$89],Y                        ;9EB832|7789    |;
                       STA.B $89                            ;9EB834|8589    |;
                       ADC.B [$89]                          ;9EB836|6789    |;
                       STA.B $89                            ;9EB838|8589    |;
                       STA.B $8D                            ;9EB83A|858D    |;
                       LDA.B $8B                            ;9EB83C|A58B    |;
                       STA.B $8F                            ;9EB83E|858F    |;
                       JSL.L CODE_9ECFA5                    ;9EB840|22A5CF9E|;
                       LDA.B $97                            ;9EB844|A597    |;
                       STA.B $8F                            ;9EB846|858F    |;
                       LDA.B $95                            ;9EB848|A595    |;
                       STA.B $8D                            ;9EB84A|858D    |;
                       JSL.L CODE_9EC7BE                    ;9EB84C|22BEC79E|;
                       RTL                                  ;9EB850|6B      |;
 
          CODE_9EB851:
                       LDA.W #$2000                         ;9EB851|A90020  |;
                       TRB.W $15D8                          ;9EB854|1CD815  |;
                       BEQ CODE_9EB85D                      ;9EB857|F004    |;
                       db $22,$FD,$BE,$9F                   ;9EB859|        |;
 
          CODE_9EB85D:
                       RTL                                  ;9EB85D|6B      |;
 
          CODE_9EB85E:
                       LDA.W $15D6                          ;9EB85E|ADD615  |;
                       BNE .done                            ;9EB861|D026    |;
                       LDA.W $163A                          ;9EB863|AD3A16  |;
                       BNE .done                            ;9EB866|D021    |;
                       LDA.B $A5                            ;9EB868|A5A5    |;
                       CMP.W #$000C                         ;9EB86A|C90C00  |;
                       BEQ CODE_9EB88A                      ;9EB86D|F01B    |;
                       CMP.W #$0024                         ;9EB86F|C92400  |;
                       BEQ CODE_9EB88A                      ;9EB872|F016    |;
                       LDA.L PenaltiesOnOff                 ;9EB874|AFC4347E|;
                       BEQ .done                            ;9EB878|F00F    |; If Penalties Off were done
                       LDA.W $15D4                          ;9EB87A|ADD415  |;
                       BIT.W #$0020                         ;9EB87D|892000  |;
                       BNE CODE_9EB88A                      ;9EB880|D008    |;
                       LDA.B $A5                            ;9EB882|A5A5    |;
                       CMP.W #$0012                         ;9EB884|C91200  |;
                       BNE CODE_9EB88A                      ;9EB887|D001    |;
 
                .done:
                       RTL                                  ;9EB889|6B      |;
 
          CODE_9EB88A:
                       LDA.W PauseScreenActive              ;9EB88A|ADDA15  |;
                       BEQ CODE_9EB892                      ;9EB88D|F003    |;
                       db $4C,$4B,$B9                       ;9EB88F|        |;
 
          CODE_9EB892:
                       LDA.B $A9                            ;9EB892|A5A9    |;
                       PHA                                  ;9EB894|48      |;
                       LDA.B $AB                            ;9EB895|A5AB    |;
                       PHA                                  ;9EB897|48      |;
                       LDA.B $89                            ;9EB898|A589    |;
                       PHA                                  ;9EB89A|48      |;
                       LDA.B $8B                            ;9EB89B|A58B    |;
                       PHA                                  ;9EB89D|48      |;
                       LDA.B $8D                            ;9EB89E|A58D    |;
                       PHA                                  ;9EB8A0|48      |;
                       LDA.B $8F                            ;9EB8A1|A58F    |;
                       PHA                                  ;9EB8A3|48      |;
                       LDA.B $A5                            ;9EB8A4|A5A5    |;
                       CMP.W #$000E                         ;9EB8A6|C90E00  |;
                       BNE CODE_9EB8AB                      ;9EB8A9|D000    |;
 
          CODE_9EB8AB:
                       SEC                                  ;9EB8AB|38      |;
                       SBC.W #$000E                         ;9EB8AC|E90E00  |;
                       BMI CODE_9EB8D8                      ;9EB8AF|3027    |;
                       LDA.L $7E35E0                        ;9EB8B1|AFE0357E|;
                       CLC                                  ;9EB8B5|18      |;
                       ADC.W #$00C8                         ;9EB8B6|69C800  |;
                       STA.L $7E35E0                        ;9EB8B9|8FE0357E|;
                       LDA.W #$002D                         ;9EB8BD|A92D00  |;
                       STA.B $81                            ;9EB8C0|8581    |;
                       LDA.W $1503,X                        ;9EB8C2|BD0315  |;
                       BEQ CODE_9EB8D8                      ;9EB8C5|F011    |;
                       LDA.L $7E35E0                        ;9EB8C7|AFE0357E|;
                       SEC                                  ;9EB8CB|38      |;
                       SBC.W #$00C8                         ;9EB8CC|E9C800  |;
                       BCS CODE_9EB8D4                      ;9EB8CF|B003    |;
                       db $A9,$00,$00                       ;9EB8D1|        |;
 
          CODE_9EB8D4:
                       STA.L $7E35E0                        ;9EB8D4|8FE0357E|;
 
          CODE_9EB8D8:
                       LDA.W #$0000                         ;9EB8D8|A90000  |;
                       STA.B $8F                            ;9EB8DB|858F    |;
                       LDA.W #$15DE                         ;9EB8DD|A9DE15  |;
                       STA.B $8D                            ;9EB8E0|858D    |;
                       LDA.W #$001F                         ;9EB8E2|A91F00  |;
                       STA.B $A9                            ;9EB8E5|85A9    |;
 
          CODE_9EB8E7:
                       LDA.B [$8D]                          ;9EB8E7|A78D    |;
                       INC.B $8D                            ;9EB8E9|E68D    |;
                       INC.B $8D                            ;9EB8EB|E68D    |;
                       AND.W #$00FF                         ;9EB8ED|29FF00  |;
                       CMP.W #$0034                         ;9EB8F0|C93400  |;
                       BEQ CODE_9EB8E7                      ;9EB8F3|F0F2    |;
                       TAY                                  ;9EB8F5|A8      |;
                       BEQ CODE_9EB8FE                      ;9EB8F6|F006    |;
                       db $C6,$A9,$10,$EB,$80,$3B           ;9EB8F8|        |;
 
          CODE_9EB8FE:
                       DEC.B $8D                            ;9EB8FE|C68D    |;
                       DEC.B $8D                            ;9EB900|C68D    |;
                       TXA                                  ;9EB902|8A      |;
                       LSR A                                ;9EB903|4A      |;
                       XBA                                  ;9EB904|EB      |;
                       AND.W #$FF00                         ;9EB905|2900FF  |;
                       ORA.B $A5                            ;9EB908|05A5    |;
                       STA.B [$8D]                          ;9EB90A|878D    |;
                       LDA.W #$0080                         ;9EB90C|A98000  |;
                       STA.B $8B                            ;9EB90F|858B    |;
                       LDA.W #$D3EB                         ;9EB911|A9EBD3  |;
                       STA.B $89                            ;9EB914|8589    |;
                       LDY.B $A5                            ;9EB916|A4A5    |;
                       CLC                                  ;9EB918|18      |;
                       ADC.B [$89],Y                        ;9EB919|7789    |;
                       STA.B $89                            ;9EB91B|8589    |;
                       LDA.B [$89]                          ;9EB91D|A789    |;
                       AND.W #$00FF                         ;9EB91F|29FF00  |;
                       BEQ CODE_9EB939                      ;9EB922|F015    |;
                       LDA.W $1283,X                        ;9EB924|BD8312  |;
                       PHA                                  ;9EB927|48      |;
                       ORA.W #$4000                         ;9EB928|090040  |;
                       STA.W $1283,X                        ;9EB92B|9D8312  |;
                       PLA                                  ;9EB92E|68      |;
                       BIT.W #$4000                         ;9EB92F|890040  |;
                       BEQ CODE_9EB939                      ;9EB932|F005    |;
                       db $A9,$00,$00,$87,$8D               ;9EB934|        |;
 
          CODE_9EB939:
                       PLA                                  ;9EB939|68      |;
                       STA.B $8F                            ;9EB93A|858F    |;
                       PLA                                  ;9EB93C|68      |;
                       STA.B $8D                            ;9EB93D|858D    |;
                       PLA                                  ;9EB93F|68      |;
                       STA.B $8B                            ;9EB940|858B    |;
                       PLA                                  ;9EB942|68      |;
                       STA.B $89                            ;9EB943|8589    |;
                       PLA                                  ;9EB945|68      |;
                       STA.B $AB                            ;9EB946|85AB    |;
                       PLA                                  ;9EB948|68      |;
                       STA.B $A9                            ;9EB949|85A9    |;
                       RTL                                  ;9EB94B|6B      |;
 
          CODE_9EB94C:
                       LDA.B $A5                            ;9EB94C|A5A5    |;
                       PHA                                  ;9EB94E|48      |;
                       LDA.B $A7                            ;9EB94F|A5A7    |;
                       PHA                                  ;9EB951|48      |;
                       LDA.B $A9                            ;9EB952|A5A9    |;
                       PHA                                  ;9EB954|48      |;
                       LDA.B $AB                            ;9EB955|A5AB    |;
                       PHA                                  ;9EB957|48      |;
                       LDA.B $AD                            ;9EB958|A5AD    |;
                       PHA                                  ;9EB95A|48      |;
                       LDA.B $AF                            ;9EB95B|A5AF    |;
                       PHA                                  ;9EB95D|48      |;
                       LDA.B $89                            ;9EB95E|A589    |;
                       PHA                                  ;9EB960|48      |;
                       LDA.B $8B                            ;9EB961|A58B    |;
                       PHA                                  ;9EB963|48      |;
                       LDA.W period                         ;9EB964|AD3016  |;
                       CMP.W #$0003                         ;9EB967|C90300  |;
                       BEQ UNREACH_9EB9D1                   ;9EB96A|F065    |;
                       LDA.W #$15DE                         ;9EB96C|A9DE15  |;
                       STA.B $89                            ;9EB96F|8589    |;
 
          CODE_9EB971:
                       LDA.B ($89)                          ;9EB971|B289    |;
                       INC.B $89                            ;9EB973|E689    |;
                       INC.B $89                            ;9EB975|E689    |;
                       AND.W #$00FF                         ;9EB977|29FF00  |;
                       CMP.W #$0034                         ;9EB97A|C93400  |;
                       BEQ CODE_9EB971                      ;9EB97D|F0F2    |;
                       CMP.W #$0000                         ;9EB97F|C90000  |;
                       BNE CODE_9EB987                      ;9EB982|D003    |;
                       JMP.W CODE_9EB9D5                    ;9EB984|4CD5B9  |;
 
          CODE_9EB987:
                       TAY                                  ;9EB987|A8      |;
                       LDA.W #$0080                         ;9EB988|A98000  |;
                       STA.B $8F                            ;9EB98B|858F    |;
                       LDA.W #$D3EB                         ;9EB98D|A9EBD3  |;
                       STA.B $8D                            ;9EB990|858D    |;
                       LDA.B [$8D],Y                        ;9EB992|B78D    |;
                       CLC                                  ;9EB994|18      |;
                       ADC.B $8D                            ;9EB995|658D    |;
                       STA.B $8D                            ;9EB997|858D    |;
                       LDA.B [$8D]                          ;9EB999|A78D    |;
                       AND.W #$00FF                         ;9EB99B|29FF00  |;
                       BEQ CODE_9EB9C2                      ;9EB99E|F022    |;
                       db $C6,$89,$C6,$89,$A9,$00,$00,$85   ;9EB9A0|        |;
                       db $A5,$B2,$89,$E6,$89,$E6,$89,$29   ;9EB9A8|        |;
                       db $00,$FF,$C9,$00,$06,$90,$05,$A9   ;9EB9B0|        |;
                       db $02,$00,$85,$A5,$A5,$91,$C5,$A5   ;9EB9B8|        |;
                       db $F0,$AF                           ;9EB9C0|        |;
 
          CODE_9EB9C2:
                       DEC.B $89                            ;9EB9C2|C689    |;
                       DEC.B $89                            ;9EB9C4|C689    |;
                       LDA.W #$0034                         ;9EB9C6|A93400  |;
                       STA.B ($89)                          ;9EB9C9|9289    |;
                       INC.B $89                            ;9EB9CB|E689    |;
                       INC.B $89                            ;9EB9CD|E689    |;
                       BRA CODE_9EB971                      ;9EB9CF|80A0    |;
 
       UNREACH_9EB9D1:
                       db $22,$07,$C1,$9E                   ;9EB9D1|        |;
 
          CODE_9EB9D5:
                       LDY.B zpCurntTeamLoopVal             ;9EB9D5|A491    |;
                       LDA.W PlyrsOnIceCountHm,Y            ;9EB9D7|B9A617  |;
                       LDY.B $8D                            ;9EB9DA|A48D    |;
                       SEC                                  ;9EB9DC|38      |;
                       SBC.W PlyrsOnIceCountHm,Y            ;9EB9DD|F9A617  |;
                       BEQ CODE_9EBA36                      ;9EB9E0|F054    |;
                       BMI CODE_9EBA36                      ;9EB9E2|3052    |;
                       LDA.B $8D                            ;9EB9E4|A58D    |;
                       BEQ CODE_9EB9EB                      ;9EB9E6|F003    |;
                       LDA.W #$001A                         ;9EB9E8|A91A00  |;
 
          CODE_9EB9EB:
                       STA.B $89                            ;9EB9EB|8589    |;
                       LDY.B $89                            ;9EB9ED|A489    |;
                       LDA.W $18BA,Y                        ;9EB9EF|B9BA18  |;
                       INC.B $89                            ;9EB9F2|E689    |;
                       AND.W #$00FF                         ;9EB9F4|29FF00  |;
                       STA.B $AD                            ;9EB9F7|85AD    |;
                       BIT.W #$0080                         ;9EB9F9|898000  |;
                       BNE CODE_9EBA36                      ;9EB9FC|D038    |;
                       db $A5,$8D,$F0,$03,$A9,$34,$00,$18   ;9EB9FE|        |;
                       db $65,$AD,$A8,$B9,$52,$18,$89,$00   ;9EBA06|        |;
                       db $40,$D0,$DC,$A9,$00,$00,$99,$52   ;9EBA0E|        |;
                       db $18,$22,$FA,$A6,$9E,$A4,$8D,$B9   ;9EBA16|        |;
                       db $A6,$17,$1A,$99,$A6,$17,$A4,$91   ;9EBA1E|        |;
                       db $B9,$42,$17,$1A,$99,$42,$17,$A9   ;9EBA26|        |;
                       db $01,$00,$0C,$DE,$17,$0C,$E0,$17   ;9EBA2E|        |;
 
          CODE_9EBA36:
                       PLA                                  ;9EBA36|68      |;
                       STA.B $8B                            ;9EBA37|858B    |;
                       PLA                                  ;9EBA39|68      |;
                       STA.B $89                            ;9EBA3A|8589    |;
                       PLA                                  ;9EBA3C|68      |;
                       STA.B $AF                            ;9EBA3D|85AF    |;
                       PLA                                  ;9EBA3F|68      |;
                       STA.B $AD                            ;9EBA40|85AD    |;
                       PLA                                  ;9EBA42|68      |;
                       STA.B $AB                            ;9EBA43|85AB    |;
                       PLA                                  ;9EBA45|68      |;
                       STA.B $A9                            ;9EBA46|85A9    |;
                       PLA                                  ;9EBA48|68      |;
                       STA.B $A7                            ;9EBA49|85A7    |;
                       PLA                                  ;9EBA4B|68      |;
                       STA.B $A5                            ;9EBA4C|85A5    |;
                       RTL                                  ;9EBA4E|6B      |;
 
          CODE_9EBA4F:
                       JSL.L CODE_9EBA68                    ;9EBA4F|2268BA9E|;
                       LDX.B zpCurntTeamLoopVal             ;9EBA53|A691    |;
                       LDY.B $95                            ;9EBA55|A495    |;
                       STY.B zpCurntTeamLoopVal             ;9EBA57|8491    |;
                       STX.B $95                            ;9EBA59|8695    |;
                       JSL.L CODE_9EBA68                    ;9EBA5B|2268BA9E|;
                       LDX.B zpCurntTeamLoopVal             ;9EBA5F|A691    |;
                       LDY.B $95                            ;9EBA61|A495    |;
                       STY.B zpCurntTeamLoopVal             ;9EBA63|8491    |;
                       STX.B $95                            ;9EBA65|8695    |;
 
          CODE_9EBA67:
                       RTL                                  ;9EBA67|6B      |;
 
          CODE_9EBA68:
                       LDY.B zpCurntTeamLoopVal             ;9EBA68|A491    |;
                       LDA.W $0F43,Y                        ;9EBA6A|B9430F  |;
                       BNE CODE_9EBA67                      ;9EBA6D|D0F8    |;
                       LDA.W $15D6                          ;9EBA6F|ADD615  |;
                       BNE CODE_9EBA67                      ;9EBA72|D0F3    |;
                       LDA.W $0AD9                          ;9EBA74|ADD90A  |;
                       CMP.B $95                            ;9EBA77|C595    |;
                       BEQ CODE_9EBA84                      ;9EBA79|F009    |;
                       LDA.W $0F23,X                        ;9EBA7B|BD230F  |;
                       SEC                                  ;9EBA7E|38      |;
                       SBC.W #$001A                         ;9EBA7F|E91A00  |;
                       BMI CODE_9EBA67                      ;9EBA82|30E3    |;
 
          CODE_9EBA84:
                       LDA.W $0F23,X                        ;9EBA84|BD230F  |;
                       SEC                                  ;9EBA87|38      |;
                       SBC.W #$0003                         ;9EBA88|E90300  |;
                       BMI CODE_9EBA67                      ;9EBA8B|30DA    |;
                       LDX.B zpCurntTeamLoopVal             ;9EBA8D|A691    |;
                       LDY.B $95                            ;9EBA8F|A495    |;
                       STY.B zpCurntTeamLoopVal             ;9EBA91|8491    |;
                       STX.B $95                            ;9EBA93|8695    |;
                       JSL.L CODE_9E9B52                    ;9EBA95|22529B9E|;
                       LDX.B zpCurntTeamLoopVal             ;9EBA99|A691    |;
                       LDY.B $95                            ;9EBA9B|A495    |;
                       STY.B zpCurntTeamLoopVal             ;9EBA9D|8491    |;
                       STX.B $95                            ;9EBA9F|8695    |;
                       LDA.W $0F23,Y                        ;9EBAA1|B9230F  |;
                       SEC                                  ;9EBAA4|38      |;
                       SBC.W #$001F                         ;9EBAA5|E91F00  |;
                       BMI CODE_9EBA67                      ;9EBAA8|30BD    |; Hijack to skip Interference Penalty BRA
                       LDA.W $1283,X                        ;9EBAAA|BD8312  |;
                       BIT.W #$4000                         ;9EBAAD|890040  |;
                       BNE CODE_9EBA67                      ;9EBAB0|D0B5    |;
                       LDA.W #$0014                         ;9EBAB2|A91400  |;
                       SEC                                  ;9EBAB5|38      |;
                       SBC.W $1443,X                        ;9EBAB6|FD4314  |;
                       JSL.L CODE_9BB385                    ;9EBAB9|2285B39B|;
                       CMP.W #$0002                         ;9EBABD|C90200  |;
                       BCS CODE_9EBA67                      ;9EBAC0|B0A5    |;
                       LDA.W $15D4                          ;9EBAC2|ADD415  |;
                       BIT.W #$0010                         ;9EBAC5|891000  |;
                       BNE CODE_9EBA67                      ;9EBAC8|D09D    |;
                       LDA.W $0B05,Y                        ;9EBACA|B9050B  |;
                       AND.W #$0004                         ;9EBACD|290400  |;
                       BNE CODE_9EBA67                      ;9EBAD0|D095    |;
                       LDA.W #$0026                         ;9EBAD2|A92600  |;
                       STA.B $A5                            ;9EBAD5|85A5    |;
                       JMP.W CODE_9EB85E                    ;9EBAD7|4C5EB8  |;
                       db $BD,$83,$12,$89,$02,$00,$D0,$03   ;9EBADA|        |;
                       db $4C,$35,$BB,$29,$FD,$FF,$9D,$83   ;9EBAE2|        |;
                       db $12,$A0,$10,$00,$BD,$03,$15,$F0   ;9EBAEA|        |;
                       db $03,$A0,$01,$00,$84,$A5,$AD,$24   ;9EBAF2|        |;
                       db $16,$38,$E5,$A5,$8D,$24,$16,$9E   ;9EBAFA|        |;
                       db $C3,$0E,$9E,$E3,$0E,$A9,$3C,$00   ;9EBB02|        |;
                       db $85,$A5,$BD,$03,$15,$D0,$05,$A9   ;9EBB0A|        |;
                       db $C4,$FF,$85,$A5,$A5,$A5,$9D,$B7   ;9EBB12|        |;
                       db $0D,$A9,$88,$00,$9D,$55,$0D,$A9   ;9EBB1A|        |;
                       db $02,$00,$9D,$63,$11,$9D,$E3,$14   ;9EBB22|        |;
                       db $A9,$36,$E9,$22,$F1,$A3,$9E,$5C   ;9EBB2A|        |;
                       db $9B,$A1,$9C,$A9,$04,$00,$9D,$63   ;9EBB32|        |;
                       db $11,$A9,$FF,$FF,$9D,$63,$12,$9D   ;9EBB3A|        |;
                       db $43,$12,$BD,$83,$12,$29,$F7,$6F   ;9EBB42|        |;
                       db $9D,$83,$12,$9E,$63,$15,$A9,$00   ;9EBB4A|        |;
                       db $F0,$9D,$C3,$0E,$A6,$91,$BD,$D0   ;9EBB52|        |;
                       db $19,$C9,$04,$00,$90,$2C,$BC,$F9   ;9EBB5A|        |;
                       db $0A,$C8,$C8,$C0,$0A,$00,$D0,$03   ;9EBB62|        |;
                       db $A0,$00,$00,$B9,$F6,$19,$10,$F1   ;9EBB6A|        |;
                       db $29,$FF,$00,$C5,$91,$D0,$EA,$99   ;9EBB72|        |;
                       db $F6,$19,$1A,$1A,$4A,$99,$84,$1C   ;9EBB7A|        |;
                       db $A6,$E4,$98,$9D,$D4,$19,$8A,$99   ;9EBB82|        |;
                       db $EC,$19,$A6,$E4,$5C,$E6,$8B,$9E   ;9EBB8A|        |;
 
          CODE_9EBB92:
                       STZ.B $A5                            ;9EBB92|64A5    |;
                       STZ.B $B1                            ;9EBB94|64B1    |;
                       LDA.B zpCurntTeamLoopVal             ;9EBB96|A591    |;
                       BEQ CODE_9EBB9D                      ;9EBB98|F003    |;
                       LDA.W #$001A                         ;9EBB9A|A91A00  |;
 
          CODE_9EBB9D:
                       STA.B $89                            ;9EBB9D|8589    |;
 
          CODE_9EBB9F:
                       LDY.B $89                            ;9EBB9F|A489    |;
                       INC.B $89                            ;9EBBA1|E689    |;
                       LDA.W $18BA,Y                        ;9EBBA3|B9BA18  |;
                       AND.W #$00FF                         ;9EBBA6|29FF00  |;
                       STA.B $AD                            ;9EBBA9|85AD    |;
                       BIT.W #$0080                         ;9EBBAB|898000  |;
                       BNE CODE_9EBBD7                      ;9EBBAE|D027    |;
                       LDA.B zpCurntTeamLoopVal             ;9EBBB0|A591    |;
                       BEQ CODE_9EBBB7                      ;9EBBB2|F003    |;
                       LDA.W #$0034                         ;9EBBB4|A93400  |;
 
          CODE_9EBBB7:
                       CLC                                  ;9EBBB7|18      |;
                       ADC.B $AD                            ;9EBBB8|65AD    |;
                       TAY                                  ;9EBBBA|A8      |;
                       LDA.W $1852,Y                        ;9EBBBB|B95218  |;
                       STA.B $AD                            ;9EBBBE|85AD    |;
                       BIT.W #$4000                         ;9EBBC0|890040  |;
                       BNE CODE_9EBB9F                      ;9EBBC3|D0DA    |;
                       LDA.B $AD                            ;9EBBC5|A5AD    |;
                       SEC                                  ;9EBBC7|38      |;
                       SBC.B $B1                            ;9EBBC8|E5B1    |;
                       STA.B $AD                            ;9EBBCA|85AD    |;
                       CLC                                  ;9EBBCC|18      |;
                       ADC.B $A5                            ;9EBBCD|65A5    |;
                       STA.B $A5                            ;9EBBCF|85A5    |;
                       LDA.B $AD                            ;9EBBD1|A5AD    |;
                       STA.B $B1                            ;9EBBD3|85B1    |;
                       BRA CODE_9EBB9F                      ;9EBBD5|80C8    |;
 
          CODE_9EBBD7:
                       LDY.B $95                            ;9EBBD7|A495    |;
                       LDA.W PlyrsOnIceCountHm,Y            ;9EBBD9|B9A617  |;
                       CMP.W #$0006                         ;9EBBDC|C90600  |;
                       BEQ CODE_9EBC23                      ;9EBBDF|F042    |;
                       db $A5,$A5,$38,$E5,$B1,$85,$A5,$A5   ;9EBBE1|        |;
                       db $95,$F0,$03,$A9,$1A,$00,$85,$89   ;9EBBE9|        |;
                       db $A4,$89,$B9,$BA,$18,$E6,$89,$29   ;9EBBF1|        |;
                       db $FF,$00,$85,$AD,$89,$80,$00,$D0   ;9EBBF9|        |;
                       db $21,$A5,$95,$F0,$03,$A9,$34,$00   ;9EBC01|        |;
                       db $18,$65,$AD,$A8,$B9,$52,$18,$89   ;9EBC09|        |;
                       db $00,$40,$D0,$DC,$A5,$A5,$D9,$52   ;9EBC11|        |;
                       db $18,$30,$07,$A5,$A5,$18,$65,$B1   ;9EBC19|        |;
                       db $85,$A5                           ;9EBC21|        |;
 
          CODE_9EBC23:
                       RTL                                  ;9EBC23|6B      |;
 
          CODE_9EBC24:
                       LDY.B zpCurntTeamLoopVal             ;9EBC24|A491    |;
                       LDA.W $14E3,X                        ;9EBC26|BDE314  |;
                       BNE CODE_9EBCA3                      ;9EBC29|D078    |;
                       LDA.W $0F43,X                        ;9EBC2B|BD430F  |;
                       BEQ CODE_9EBCA3                      ;9EBC2E|F073    |;
                       LDA.L PenaltiesOnOff                 ;9EBC30|AFC4347E|;
                       BNE CODE_9EBC4F                      ;9EBC34|D019    |; If Penalties On Branch BC4F
                       db $B9,$D4,$19,$30,$14,$A9,$10,$00   ;9EBC36|        |;
                       db $18,$79,$83,$14,$38,$FD,$E3,$12   ;9EBC3E|        |;
                       db $22,$85,$B3,$9B,$C9,$0C,$00,$90   ;9EBC46|        |;
                       db $54                               ;9EBC4E|        |;
 
          CODE_9EBC4F:
                       LDA.W $0D55,X                        ;9EBC4F|BD550D  |;
                       SEC                                  ;9EBC52|38      |;
                       SBC.W $0D55,Y                        ;9EBC53|F9550D  |;
                       STA.B $A5                            ;9EBC56|85A5    |;
                       LDA.W $0DB7,X                        ;9EBC58|BDB70D  |;
                       SEC                                  ;9EBC5B|38      |;
                       SBC.W $0DB7,Y                        ;9EBC5C|F9B70D  |;
                       STA.B $A9                            ;9EBC5F|85A9    |;
                       JSL.L CODE_9BB445                    ;9EBC61|2245B49B|;
                       LDY.B zpCurntTeamLoopVal             ;9EBC65|A491    |;
                       LDA.B $A5                            ;9EBC67|A5A5    |;
                       SEC                                  ;9EBC69|38      |;
                       SBC.W $1163,Y                        ;9EBC6A|F96311  |;
                       INC A                                ;9EBC6D|1A      |;
                       AND.W #$0007                         ;9EBC6E|290700  |;
                       CMP.W #$0003                         ;9EBC71|C90300  |;
                       BCS CODE_9EBCA3                      ;9EBC74|B02D    |;
                       db $A6,$91,$A4,$95,$84,$91,$86,$95   ;9EBC76|        |;
                       db $22,$52,$9B,$9E,$22,$42,$C0,$9E   ;9EBC7E|        |;
                       db $F0,$1C,$AD,$8D,$1E,$10,$17,$A4   ;9EBC86|        |;
                       db $91,$8C,$8D,$1E,$B9,$D4,$19,$8D   ;9EBC8E|        |;
                       db $93,$1E,$A9,$24,$00,$85,$A5,$22   ;9EBC96|        |;
                       db $5E,$B8,$9E,$80,$15               ;9EBC9E|        |;
 
          CODE_9EBCA3:
                       RTL                                  ;9EBCA3|6B      |;
                       db $22,$24,$C1,$9E,$A5,$A5,$C9,$05   ;9EBCA4|        |;
                       db $00,$B0,$09,$A9,$22,$00,$85,$A5   ;9EBCAC|        |;
                       db $22,$5E,$B8,$9E,$A6,$91,$A4,$95   ;9EBCB4|        |;
                       db $84,$91,$86,$95,$A9,$FF,$FF,$8D   ;9EBCBC|        |;
                       db $DB,$0C,$6B                       ;9EBCC4|        |;
                       LDA.W $1283,X                        ;9EBCC7|BD8312  |;
                       BIT.W #$0002                         ;9EBCCA|890200  |;
                       BNE CODE_9EBCD2                      ;9EBCCD|D003    |;
                       JMP.W CODE_9EBD1D                    ;9EBCCF|4C1DBD  |;
 
          CODE_9EBCD2:
                       JSL.L CODE_9EBDF8                    ;9EBCD2|22F8BD9E|;
                       LDA.W $1283,X                        ;9EBCD6|BD8312  |;
                       AND.W #$FFF9                         ;9EBCD9|29F9FF  |;
                       ORA.W #$1000                         ;9EBCDC|090010  |;
                       STA.W $1283,X                        ;9EBCDF|9D8312  |;
                       LDA.W #$0000                         ;9EBCE2|A90000  |;
                       STA.B $B5                            ;9EBCE5|85B5    |;
                       JSL.L CODE_9BC174                    ;9EBCE7|2274C19B|;
                       STZ.W $1023,X                        ;9EBCEB|9E2310  |;
                       LDA.W #$0008                         ;9EBCEE|A90800  |;
                       STA.W $10A3,X                        ;9EBCF1|9DA310  |;
                       JSL.L CODE_9EBEA1                    ;9EBCF4|22A1BE9E|;
                       LDA.B $08                            ;9EBCF8|A508    |;
                       STA.B $A9                            ;9EBCFA|85A9    |;
                       STA.W $1063,X                        ;9EBCFC|9D6310  |;
                       LDA.W #$0088                         ;9EBCFF|A98800  |;
                       STA.W $1043,X                        ;9EBD02|9D4310  |;
                       STZ.W $1003,X                        ;9EBD05|9E0310  |;
                       LDA.W $1283,X                        ;9EBD08|BD8312  |;
                       ORA.W #$8000                         ;9EBD0B|090080  |;
                       STA.W $1283,X                        ;9EBD0E|9D8312  |;
                       STZ.W $1103,X                        ;9EBD11|9E0311  |;
                       STZ.W $1123,X                        ;9EBD14|9E2311  |;
                       LDA.W #$0384                         ;9EBD17|A98403  |;
                       STA.W $1083,X                        ;9EBD1A|9D8310  |;
 
          CODE_9EBD1D:
                       LDA.W $1083,X                        ;9EBD1D|BD8310  |;
                       SEC                                  ;9EBD20|38      |;
                       SBC.W $0ADB                          ;9EBD21|EDDB0A  |;
                       STA.W $1083,X                        ;9EBD24|9D8310  |;
                       BPL CODE_9EBD45                      ;9EBD27|101C    |;
                       db $4C,$C9,$BD                       ;9EBD29|        |;
 
          CODE_9EBD2C:
                       RTL                                  ;9EBD2C|6B      |;
 
          CODE_9EBD2D:
                       LDA.W $1043,X                        ;9EBD2D|BD4310  |;
                       STA.B $A5                            ;9EBD30|85A5    |;
                       LDA.W $1063,X                        ;9EBD32|BD6310  |;
                       STA.B $A9                            ;9EBD35|85A9    |;
                       LDA.W #$009E                         ;9EBD37|A99E00  |;
                       STA.B $8B                            ;9EBD3A|858B    |;
                       LDA.W #$D0FC                         ;9EBD3C|A9FCD0  |;
                       STA.B $89                            ;9EBD3F|8589    |;
                       JML.L CODE_9EA5A4                    ;9EBD41|5CA4A59E|;
 
          CODE_9EBD45:
                       LDA.W $0DB7,X                        ;9EBD45|BDB70D  |;
                       SEC                                  ;9EBD48|38      |;
                       SBC.W $1063,X                        ;9EBD49|FD6310  |;
                       CMP.W #$FFF3                         ;9EBD4C|C9F3FF  |;
                       BMI CODE_9EBD2D                      ;9EBD4F|30DC    |;
                       CMP.W #$000D                         ;9EBD51|C90D00  |;
                       BPL CODE_9EBD2D                      ;9EBD54|10D7    |;
                       LDA.W $0D55,X                        ;9EBD56|BD550D  |;
                       SEC                                  ;9EBD59|38      |;
                       SBC.W $1043,X                        ;9EBD5A|FD4310  |;
                       STA.B $A5                            ;9EBD5D|85A5    |;
                       SEC                                  ;9EBD5F|38      |;
                       SBC.W #$FFE8                         ;9EBD60|E9E8FF  |;
                       BMI CODE_9EBD2D                      ;9EBD63|30C8    |;
                       LDA.W $1003,X                        ;9EBD65|BD0310  |;
                       SEC                                  ;9EBD68|38      |;
                       SBC.B $C1                            ;9EBD69|E5C1    |;
                       STA.W $1003,X                        ;9EBD6B|9D0310  |;
                       BPL CODE_9EBD2C                      ;9EBD6E|10BC    |;
                       ADC.W #$0008                         ;9EBD70|690800  |;
                       STA.W $1003,X                        ;9EBD73|9D0310  |;
                       CPX.W $0AD9                          ;9EBD76|ECD90A  |;
                       BNE CODE_9EBD87                      ;9EBD79|D00C    |;
                       db $A9,$FF,$FF,$8D,$D9,$0A,$A9,$3C   ;9EBD7B|        |;
                       db $00,$9D,$03,$12                   ;9EBD83|        |;
 
          CODE_9EBD87:
                       LDA.W #$EA1A                         ;9EBD87|A91AEA  |;
                       STA.W $1563,X                        ;9EBD8A|9D6315  |;
                       JSL.L CODE_9EA3F1                    ;9EBD8D|22F1A39E|;
                       LDA.W #$0006                         ;9EBD91|A90600  |;
                       STA.B $AD                            ;9EBD94|85AD    |;
                       LDA.W $14A3,X                        ;9EBD96|BDA314  |;
                       BEQ CODE_9EBDA0                      ;9EBD99|F005    |;
                       LDA.W #$0002                         ;9EBD9B|A90200  |;
                       STA.B $AD                            ;9EBD9E|85AD    |;
 
          CODE_9EBDA0:
                       LDA.W $1163,X                        ;9EBDA0|BD6311  |;
                       CMP.B $AD                            ;9EBDA3|C5AD    |;
                       BEQ CODE_9EBDAE                      ;9EBDA5|F007    |;
                       db $1A,$29,$07,$00,$9D,$63,$11       ;9EBDA7|        |;
 
          CODE_9EBDAE:
                       STZ.W $0EE3,X                        ;9EBDAE|9EE30E  |;
                       LDA.W #$1000                         ;9EBDB1|A90010  |;
                       STA.W $0EC3,X                        ;9EBDB4|9DC30E  |;
                       LDA.B $A5                            ;9EBDB7|A5A5    |;
                       SEC                                  ;9EBDB9|38      |;
                       SBC.W #$FFF8                         ;9EBDBA|E9F8FF  |;
                       BMI CODE_9EBDF7                      ;9EBDBD|3038    |;
                       STZ.W $0EC3,X                        ;9EBDBF|9EC30E  |;
                       LDA.W $1163,X                        ;9EBDC2|BD6311  |;
                       CMP.B $AD                            ;9EBDC5|C5AD    |;
                       BNE CODE_9EBDF7                      ;9EBDC7|D02E    |;
                       LDA.W $1063,X                        ;9EBDC9|BD6310  |;
                       STA.W $0DB7,X                        ;9EBDCC|9DB70D  |;
                       LDA.W #$0088                         ;9EBDCF|A98800  |;
                       STA.W $0D55,X                        ;9EBDD2|9D550D  |;
                       LDA.W #$0002                         ;9EBDD5|A90200  |;
                       STA.W $1163,X                        ;9EBDD8|9D6311  |;
                       STA.W $14E3,X                        ;9EBDDB|9DE314  |;
                       LDA.W #$E8F4                         ;9EBDDE|A9F4E8  |;
                       JSL.L CODE_9EA3F1                    ;9EBDE1|22F1A39E|;
                       LDA.W $1283,X                        ;9EBDE5|BD8312  |;
                       AND.W #$BFFF                         ;9EBDE8|29FFBF  |;
                       STA.W $1283,X                        ;9EBDEB|9D8312  |;
                       LDA.W #$000E                         ;9EBDEE|A90E00  |;
                       STA.B $A5                            ;9EBDF1|85A5    |;
                       JML.L CODE_9E8C18                    ;9EBDF3|5C188C9E|;
 
          CODE_9EBDF7:
                       RTL                                  ;9EBDF7|6B      |;
 
          CODE_9EBDF8:
                       LDY.B zpCurntTeamLoopVal             ;9EBDF8|A491    |;
                       LDA.W $19D0,Y                        ;9EBDFA|B9D019  |;
                       CMP.W #$0004                         ;9EBDFD|C90400  |;
                       BCC CODE_9EBE24                      ;9EBE00|9022    |;
                       db $85,$A9,$A9,$06,$00,$85,$A5,$B9   ;9EBE02|        |;
                       db $66,$17,$AA,$A0,$00,$00,$BD,$43   ;9EBE0A|        |;
                       db $0F,$30,$03,$F0,$01,$C8,$E8,$E8   ;9EBE12|        |;
                       db $C6,$A5,$D0,$F2,$C4,$A9,$F0,$13   ;9EBE1A|        |;
                       db $90,$11                           ;9EBE22|        |;
 
          CODE_9EBE24:
                       LDX.B $E4                            ;9EBE24|A6E4    |;
                       LDA.W $19D4,X                        ;9EBE26|BDD419  |;
                       BPL UNREACH_9EBE2E                   ;9EBE29|1003    |;
                       JMP.W CODE_9EBDF7                    ;9EBE2B|4CF7BD  |;
 
       UNREACH_9EBE2E:
                       db $85,$B5,$22,$0A,$CD,$9F,$6B,$C0   ;9EBE2E|        |;
                       db $03,$00,$D0,$24,$A6,$91,$BC,$F9   ;9EBE36|        |;
                       db $0A,$C8,$C8,$C0,$0A,$00,$D0,$03   ;9EBE3E|        |;
                       db $A0,$00,$00,$B9,$F6,$19,$10,$F1   ;9EBE46|        |;
                       db $29,$FF,$00,$C5,$91,$D0,$EA,$99   ;9EBE4E|        |;
                       db $F6,$19,$1A,$1A,$4A,$99,$84,$1C   ;9EBE56|        |;
                       db $A6,$91,$BC,$F9,$0A,$80,$0A,$C8   ;9EBE5E|        |;
                       db $C8,$C0,$0A,$00,$D0,$03,$A0,$00   ;9EBE66|        |;
                       db $00,$B9,$F6,$19,$C5,$91,$D0,$EF   ;9EBE6E|        |;
                       db $09,$00,$FF,$99,$F6,$19,$A9,$00   ;9EBE76|        |;
                       db $00,$99,$84,$1C,$5A,$C8,$C8,$C0   ;9EBE7E|        |;
                       db $0A,$00,$D0,$03,$A0,$00,$00,$98   ;9EBE86|        |;
                       db $9D,$F9,$0A,$7A,$BE,$EC,$19,$A9   ;9EBE8E|        |;
                       db $FF,$FF,$99,$EC,$19,$9D,$D4,$19   ;9EBE96|        |;
                       db $4C,$24,$BE                       ;9EBE9E|        |;
 
          CODE_9EBEA1:
                       LDA.W #$000B                         ;9EBEA1|A90B00  |;
                       STA.B $A5                            ;9EBEA4|85A5    |;
                       LDA.W $1624                          ;9EBEA6|AD2416  |;
                       STA.B $A9                            ;9EBEA9|85A9    |;
                       LDA.W $1503,X                        ;9EBEAB|BD0315  |;
                       BNE CODE_9EBEBD                      ;9EBEAE|D00D    |;
                       db $A5,$A9,$4A,$4A,$4A,$4A,$85,$A9   ;9EBEB0|        |;
                       db $A9,$F5,$FF,$85,$A5               ;9EBEB8|        |;
 
          CODE_9EBEBD:
                       LDA.B $A9                            ;9EBEBD|A5A9    |;
                       AND.W #$000F                         ;9EBEBF|290F00  |;
                       STA.B $A9                            ;9EBEC2|85A9    |;
                       CMP.W #$0003                         ;9EBEC4|C90300  |;
                       BCC CODE_9EBECE                      ;9EBEC7|9005    |;
                       db $A9,$02,$00,$85,$A9               ;9EBEC9|        |;
 
          CODE_9EBECE:
                       INC.B $A9                            ;9EBECE|E6A9    |;
                       INC.B $A9                            ;9EBED0|E6A9    |;
                       INC.B $A9                            ;9EBED2|E6A9    |;
                       PHX                                  ;9EBED4|DA      |;
                       LDA.B $A5                            ;9EBED5|A5A5    |;
                       LDX.B $A9                            ;9EBED7|A6A9    |;
                       JSL.L CODE_809062                    ;9EBED9|22629080|;
                       PLX                                  ;9EBEDD|FA      |;
                       RTL                                  ;9EBEDE|6B      |;
 
          CODE_9EBEDF:
                       LDA.W #$0010                         ;9EBEDF|A91000  |;
                       STA.B $A5                            ;9EBEE2|85A5    |;
                       LDA.W $1503,X                        ;9EBEE4|BD0315  |;
                       BEQ CODE_9EBEEE                      ;9EBEE7|F005    |;
                       LDA.W #$0001                         ;9EBEE9|A90100  |;
                       STA.B $A5                            ;9EBEEC|85A5    |;
 
          CODE_9EBEEE:
                       LDA.W $1624                          ;9EBEEE|AD2416  |;
                       CLC                                  ;9EBEF1|18      |;
                       ADC.B $A5                            ;9EBEF2|65A5    |;
                       STA.W $1624                          ;9EBEF4|8D2416  |;
                       LDA.W #$FFFF                         ;9EBEF7|A9FFFF  |;
                       STA.W $0F43,X                        ;9EBEFA|9D430F  |;
                       LDA.W PauseScreenActive              ;9EBEFD|ADDA15  |;
                       BNE CODE_9EBF0A                      ;9EBF00|D008    |;
                       LDA.W #$0171                         ;9EBF02|A97101  |;
                       STA.W $0D97,X                        ;9EBF05|9D970D  |;
                       BRA CODE_9EBF10                      ;9EBF08|8006    |;
 
          CODE_9EBF0A:
                       LDA.W #$0170                         ;9EBF0A|A97001  |;
                       STA.W $0D97,X                        ;9EBF0D|9D970D  |;
 
          CODE_9EBF10:
                       RTL                                  ;9EBF10|6B      |;
 
          CODE_9EBF11:
                       LDA.W IsPenaltyShot                  ;9EBF11|AD9B1E  |;
                       ORA.W $163A                          ;9EBF14|0D3A16  |;
                       ORA.W $1D81                          ;9EBF17|0D811D  |;
                       BNE CODE_9EBF43                      ;9EBF1A|D027    |;
                       PHX                                  ;9EBF1C|DA      |;
                       STZ.W $1624                          ;9EBF1D|9C2416  |;
                       LDX.W #$0000                         ;9EBF20|A20000  |;
 
          CODE_9EBF23:
                       LDA.W $0F43,X                        ;9EBF23|BD430F  |;
                       BPL CODE_9EBF3B                      ;9EBF26|1013    |;
                       JSL.L CODE_9EBEA1                    ;9EBF28|22A1BE9E|;
                       LDA.B $08                            ;9EBF2C|A508    |;
                       STA.W $0DB7,X                        ;9EBF2E|9DB70D  |;
                       LDA.W #$0088                         ;9EBF31|A98800  |;
                       STA.W $0D55,X                        ;9EBF34|9D550D  |;
                       JSL.L CODE_9EBEDF                    ;9EBF37|22DFBE9E|;
 
          CODE_9EBF3B:
                       INX                                  ;9EBF3B|E8      |;
                       INX                                  ;9EBF3C|E8      |;
                       CPX.W #$0018                         ;9EBF3D|E01800  |;
                       BCC CODE_9EBF23                      ;9EBF40|90E1    |;
                       PLX                                  ;9EBF42|FA      |;
 
          CODE_9EBF43:
                       RTL                                  ;9EBF43|6B      |;
 
          CODE_9EBF44:
                       LDA.W #$0020                         ;9EBF44|A92000  |;
                       TRB.W $15DC                          ;9EBF47|1CDC15  |;
                       LDA.W $15D6                          ;9EBF4A|ADD615  |;
                       BEQ CODE_9EBF52                      ;9EBF4D|F003    |;
                       JMP.W CODE_9EBFDD                    ;9EBF4F|4CDDBF  |;
 
          CODE_9EBF52:
                       LDA.W $163A                          ;9EBF52|AD3A16  |;
                       BEQ CODE_9EBF5A                      ;9EBF55|F003    |;
                       JMP.W CODE_9EBFDD                    ;9EBF57|4CDDBF  |;
 
          CODE_9EBF5A:
                       LDA.W $1622                          ;9EBF5A|AD2216  |;
                       SEC                                  ;9EBF5D|38      |;
                       SBC.B $C1                            ;9EBF5E|E5C1    |;
                       STA.W $1622                          ;9EBF60|8D2216  |;
                       BPL CODE_9EBFDD                      ;9EBF63|1078    |;
  Real_Time_Pen_Clock:
                       ADC.W #$0018                         ;9EBF65|691800  |; 003C makes this real time
                       STA.W $1622                          ;9EBF68|8D2216  |;
                       LDA.W #$0020                         ;9EBF6B|A92000  |;
                       TSB.W $15DC                          ;9EBF6E|0CDC15  |;
                       JSL.L CODE_9EB198                    ;9EBF71|2298B19E|;
                       JSL.L CODE_9EB1C9                    ;9EBF75|22C9B19E|;
                       STZ.B zpCurntTeamLoopVal             ;9EBF79|6491    |;
                       JSL.L CODE_9EBF84                    ;9EBF7B|2284BF9E|;
                       LDA.W #$0002                         ;9EBF7F|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9EBF82|8591    |;
 
          CODE_9EBF84:
                       LDA.B zpCurntTeamLoopVal             ;9EBF84|A591    |;
                       BEQ CODE_9EBF8B                      ;9EBF86|F003    |;
                       LDA.W #$001A                         ;9EBF88|A91A00  |;
 
          CODE_9EBF8B:
                       STA.B $89                            ;9EBF8B|8589    |;
                       LDA.W #$0000                         ;9EBF8D|A90000  |;
                       STA.B $8F                            ;9EBF90|858F    |;
                       LDA.W #$0A2A                         ;9EBF92|A92A0A  |;
                       STA.B $8D                            ;9EBF95|858D    |;
                       LDA.W #$0002                         ;9EBF97|A90200  |;
                       STA.B $A9                            ;9EBF9A|85A9    |;
                       STA.B $B1                            ;9EBF9C|85B1    |;
 
          CODE_9EBF9E:
                       LDY.B $89                            ;9EBF9E|A489    |;
                       LDA.W $18BA,Y                        ;9EBFA0|B9BA18  |;
                       INC.B $89                            ;9EBFA3|E689    |;
                       AND.W #$00FF                         ;9EBFA5|29FF00  |;
                       STA.B $A5                            ;9EBFA8|85A5    |;
                       BIT.W #$0080                         ;9EBFAA|898000  |;
                       BNE CODE_9EBFDE                      ;9EBFAD|D02F    |;
                       LDA.B zpCurntTeamLoopVal             ;9EBFAF|A591    |;
                       BEQ CODE_9EBFB6                      ;9EBFB1|F003    |;
                       LDA.W #$0034                         ;9EBFB3|A93400  |;
 
          CODE_9EBFB6:
                       CLC                                  ;9EBFB6|18      |;
                       ADC.B $A5                            ;9EBFB7|65A5    |;
                       TAY                                  ;9EBFB9|A8      |;
                       LDA.W $1852,Y                        ;9EBFBA|B95218  |;
                       BIT.W #$4000                         ;9EBFBD|890040  |;
                       BNE UNREACH_9EC01D                   ;9EBFC0|D05B    |;
                       DEC.B $A9                            ;9EBFC2|C6A9    |;
                       BMI CODE_9EBF9E                      ;9EBFC4|30D8    |;
                       LDA.B $A5                            ;9EBFC6|A5A5    |;
                       STA.B [$8D]                          ;9EBFC8|878D    |;
                       INC.B $8D                            ;9EBFCA|E68D    |;
                       INC.B $8D                            ;9EBFCC|E68D    |;
                       LDA.W $1852,Y                        ;9EBFCE|B95218  |;
                       DEC A                                ;9EBFD1|3A      |;
                       STA.W $1852,Y                        ;9EBFD2|995218  |;
                       BNE CODE_9EBFDB                      ;9EBFD5|D004    |;
                       db $22,$FA,$A6,$9E                   ;9EBFD7|        |;
 
          CODE_9EBFDB:
                       BRA CODE_9EBF9E                      ;9EBFDB|80C1    |;
 
          CODE_9EBFDD:
                       RTL                                  ;9EBFDD|6B      |;
 
          CODE_9EBFDE:
                       LDA.W $0A2A                          ;9EBFDE|AD2A0A  |;
                       STA.B $A5                            ;9EBFE1|85A5    |;
                       LDA.B $A9                            ;9EBFE3|A5A9    |;
                       CMP.W #$0001                         ;9EBFE5|C90100  |;
                       BEQ CODE_9EC000                      ;9EBFE8|F016    |;
                       LDA.B $A9                            ;9EBFEA|A5A9    |;
                       BNE CODE_9EBFF4                      ;9EBFEC|D006    |;
                       db $22,$00,$C0,$9E,$80,$07           ;9EBFEE|        |;
 
          CODE_9EBFF4:
                       LDA.B $A9                            ;9EBFF4|A5A9    |;
                       CMP.W #$FFFF                         ;9EBFF6|C9FFFF  |;
                       BNE CODE_9EBFDD                      ;9EBFF9|D0E2    |;
                       db $AD,$2C,$0A,$85,$A5               ;9EBFFB|        |;
 
          CODE_9EC000:
                       LDA.B zpCurntTeamLoopVal             ;9EC000|A591    |;
                       BEQ CODE_9EC007                      ;9EC002|F003    |;
                       LDA.W #$0034                         ;9EC004|A93400  |;
 
          CODE_9EC007:
                       CLC                                  ;9EC007|18      |;
                       ADC.B $A5                            ;9EC008|65A5    |;
                       TAY                                  ;9EC00A|A8      |;
                       LDA.W $1852,Y                        ;9EC00B|B95218  |;
                       CMP.W #$0006                         ;9EC00E|C90600  |;
                       BPL CODE_9EBFDD                      ;9EC011|10CA    |;
                       LDA.W $1852,Y                        ;9EC013|B95218  |;
                       BNE UNREACH_9EC01C                   ;9EC016|D004    |;
                       db $22,$71,$C0,$9E                   ;9EC018|        |;
       UNREACH_9EC01C:
                       db $6B                               ;9EC01C|        |;
 
       UNREACH_9EC01D:
                       db $3A,$99,$52,$18,$89,$00,$08,$D0   ;9EC01D|        |;
                       db $03,$4C,$9E,$BF,$89,$00,$10,$D0   ;9EC025|        |;
                       db $0A,$A9,$00,$10,$99,$52,$18,$5C   ;9EC02D|        |;
                       db $FA,$A6,$9E,$A9,$00,$00,$99,$52   ;9EC035|        |;
                       db $18,$5C,$FA,$A6,$9E               ;9EC03D|        |;
 
          CODE_9EC042:
                       LDA.W $15D4                          ;9EC042|ADD415  |;
                       BIT.W #$0010                         ;9EC045|891000  |;
                       BNE CODE_9EC06D                      ;9EC048|D023    |;
                       LDA.B zpCurntTeamLoopVal             ;9EC04A|A591    |;
                       CMP.W $0AD9                          ;9EC04C|CDD90A  |;
                       BNE CODE_9EC06D                      ;9EC04F|D01C    |;
                       LDA.W BreakAwayActive_flg            ;9EC051|AD8B1E  |;
                       BNE CODE_9EC059                      ;9EC054|D003    |;Breakaway Branch to c059
                       JMP.W CODE_9EC06D                    ;9EC056|4C6DC0  |; Not a Breakaway JMP to 0C6D
 
          CODE_9EC059:
                       JSL.L Chk_Puc_Xing_BrkWay            ;9EC059|224BC69E|; Check if still breakaway
                       LDA.W BreakAwayTrigger_flg           ;9EC05D|AD3816  |;
                       STA.W BreakAwayActive_flg            ;9EC060|8D8B1E  |;
                       BNE CODE_9EC068                      ;9EC063|D003    |; Breakaway flag set, Setup for Penalty Shot
                       JMP.W CODE_9EC06D                    ;9EC065|4C6DC0  |; Breakaway flag clear, Setup for NO Penalty Shot
          CODE_9EC068:
                       LDA.W #$FFFF                         ;9EC068|A9FFFF  |; Active Breakaway, Setup PenaltyShot Flag #$FFFF
                       BRA CODE_9EC070                      ;9EC06B|8003    |; Skip to end of function RTL
 
          CODE_9EC06D:
                       LDA.W #$0000                         ;9EC06D|A90000  |; Dont Call Penalty Shot
          CODE_9EC070:
                       RTL                                  ;9EC070|6B      |;
                       STX.B $87                            ;9EC071|8687    |;
                       LDX.W #$0000                         ;9EC073|A20000  |;
 
          CODE_9EC076:
                       LDA.B $A5,X                          ;9EC076|B5A5    |;
                       PHA                                  ;9EC078|48      |;
                       INX                                  ;9EC079|E8      |;
                       INX                                  ;9EC07A|E8      |;
                       CPX.W #$0010                         ;9EC07B|E01000  |;
                       BNE CODE_9EC076                      ;9EC07E|D0F6    |;
                       LDX.B $87                            ;9EC080|A687    |;
                       STX.B $87                            ;9EC082|8687    |;
                       LDX.W #$0000                         ;9EC084|A20000  |;
          CODE_9EC087:
                       LDA.B $89,X                          ;9EC087|B589    |;
                       PHA                                  ;9EC089|48      |;
                       INX                                  ;9EC08A|E8      |;
                       INX                                  ;9EC08B|E8      |;
                       CPX.W #$0010                         ;9EC08C|E01000  |;
                       BNE CODE_9EC087                      ;9EC08F|D0F6    |;
                       LDX.B $87                            ;9EC091|A687    |;
                       LDY.B zpCurntTeamLoopVal             ;9EC093|A491    |;
                       LDX.W $1766,Y                        ;9EC095|BE6617  |;
                       DEX                                  ;9EC098|CA      |;
                       DEX                                  ;9EC099|CA      |;
          CODE_9EC09A:
                       INX                                  ;9EC09A|E8      |;
                       INX                                  ;9EC09B|E8      |;
                       LDA.W $0F43,X                        ;9EC09C|BD430F  |;
                       BPL CODE_9EC09A                      ;9EC09F|10F9    |;
                       LDA.B $A5                            ;9EC0A1|A5A5    |;
                       LSR A                                ;9EC0A3|4A      |;
                       STA.B $B1                            ;9EC0A4|85B1    |;
                       LDY.B zpCurntTeamLoopVal             ;9EC0A6|A491    |;
                       LDA.W PlyrsOnIceCountHm,Y            ;9EC0A8|B9A617  |;
                       STA.B $A9                            ;9EC0AB|85A9    |;
                       INC A                                ;9EC0AD|1A      |;
                       STA.W PlyrsOnIceCountHm,Y            ;9EC0AE|99A617  |;
                       LDA.W #$0001                         ;9EC0B1|A90100  |;
                       TSB.W $17DE                          ;9EC0B4|0CDE17  |;
                       TSB.W $17E0                          ;9EC0B7|0CE017  |;
                       LDA.W #$0080                         ;9EC0BA|A98000  |;
                       STA.B $8B                            ;9EC0BD|858B    |;
                       LDA.W #$D6B0                         ;9EC0BF|A9B0D6  |;
                       STA.B $89                            ;9EC0C2|8589    |;
                       LDA.W GoalieInNetHmAw,Y              ;9EC0C4|B9AA17  |;
                       BPL CODE_9EC0CB                      ;9EC0C7|1002    |;
                       INC.B $89                            ;9EC0C9|E689    |;
          CODE_9EC0CB:
                       LDY.B $A9                            ;9EC0CB|A4A9    |;
                       LDA.B [$89],Y                        ;9EC0CD|B789    |;
                       AND.W #$00FF                         ;9EC0CF|29FF00  |;
                       STA.W $0F43,X                        ;9EC0D2|9D430F  |;
                       STX.B $95                            ;9EC0D5|8695    |;
                       JSL.L CODE_9FCED0                    ;9EC0D7|22D0CE9F|;
                       JSL.L CODE_9FCEF6                    ;9EC0DB|22F6CE9F|;
                       LDA.W $1283,X                        ;9EC0DF|BD8312  |;
                       ORA.W #$1000                         ;9EC0E2|090010  |;
                       STA.W $1283,X                        ;9EC0E5|9D8312  |;
                       STX.B $87                            ;9EC0E8|8687    |;
                       LDX.W #$000E                         ;9EC0EA|A20E00  |;
          CODE_9EC0ED:
                       PLA                                  ;9EC0ED|68      |;
                       STA.B $89,X                          ;9EC0EE|9589    |;
                       DEX                                  ;9EC0F0|CA      |;
                       DEX                                  ;9EC0F1|CA      |;
                       BPL CODE_9EC0ED                      ;9EC0F2|10F9    |;
                       LDX.B $87                            ;9EC0F4|A687    |;
                       STX.B $87                            ;9EC0F6|8687    |;
                       LDX.W #$000E                         ;9EC0F8|A20E00  |;
          CODE_9EC0FB:
                       PLA                                  ;9EC0FB|68      |;
                       STA.B $A5,X                          ;9EC0FC|95A5    |;
                       DEX                                  ;9EC0FE|CA      |;
                       DEX                                  ;9EC0FF|CA      |;
                       BPL CODE_9EC0FB                      ;9EC100|10F9    |;
                       LDX.B $87                            ;9EC102|A687    |;
                       LDX.B $95                            ;9EC104|A695    |;
                       RTL                                  ;9EC106|6B      |;
 
          CODE_9EC107:
                       LDA.W #$001F                         ;9EC107|A91F00  |;
                       STA.B $A5                            ;9EC10A|85A5    |;
                       LDA.W #$0000                         ;9EC10C|A90000  |;
                       STA.B $8B                            ;9EC10F|858B    |;
                       LDA.W #$15DE                         ;9EC111|A9DE15  |;
                       STA.B $89                            ;9EC114|8589    |;
 
          CODE_9EC116:
                       LDA.W #$0000                         ;9EC116|A90000  |;
                       STA.B [$89]                          ;9EC119|8789    |;
                       INC.B $89                            ;9EC11B|E689    |;
                       INC.B $89                            ;9EC11D|E689    |;
                       DEC.B $A5                            ;9EC11F|C6A5    |;
                       BPL CODE_9EC116                      ;9EC121|10F3    |;
                       RTL                                  ;9EC123|6B      |;
 
          CODE_9EC124:
                       LDA.W #$0014                         ;9EC124|A91400  |;
                       SEC                                  ;9EC127|38      |;
                       SBC.W $1443,X                        ;9EC128|FD4314  |;
                       ASL A                                ;9EC12B|0A      |;
                       ASL A                                ;9EC12C|0A      |;
                       ASL A                                ;9EC12D|0A      |;
                       ASL A                                ;9EC12E|0A      |;
                       STA.B $A5                            ;9EC12F|85A5    |;
                       LDA.W $19D4,X                        ;9EC131|BDD419  |;
                       BMI CODE_9EC138                      ;9EC134|3002    |;
                       ASL.B $A5                            ;9EC136|06A5    |;
 
          CODE_9EC138:
                       LDA.W $0D55,X                        ;9EC138|BD550D  |;
                       SEC                                  ;9EC13B|38      |;
                       SBC.W $0D71                          ;9EC13C|ED710D  |;
                       CMP.W #$FFD7                         ;9EC13F|C9D7FF  |;
                       BMI CODE_9EC15C                      ;9EC142|3018    |;
                       CMP.W #$0029                         ;9EC144|C92900  |;
                       BPL CODE_9EC15C                      ;9EC147|1013    |;
                       LDA.W $0DB7,X                        ;9EC149|BDB70D  |;
                       SEC                                  ;9EC14C|38      |;
                       SBC.W $0DD3                          ;9EC14D|EDD30D  |;
                       CMP.W #$FFD7                         ;9EC150|C9D7FF  |;
                       BMI CODE_9EC15C                      ;9EC153|3007    |;
                       CMP.W #$0029                         ;9EC155|C92900  |;
                       BPL CODE_9EC15C                      ;9EC158|1002    |;
                       LSR.B $A5                            ;9EC15A|46A5    |;
 
          CODE_9EC15C:
                       JML.L CODE_9BB39B                    ;9EC15C|5C9BB39B|;
 
          CODE_9EC160:
                       LDA.B $A5                            ;9EC160|A5A5    |;
                       PHA                                  ;9EC162|48      |;
                       LDA.B $A7                            ;9EC163|A5A7    |;
                       PHA                                  ;9EC165|48      |;
                       LDA.B $A9                            ;9EC166|A5A9    |;
                       PHA                                  ;9EC168|48      |;
                       LDA.B $AB                            ;9EC169|A5AB    |;
                       PHA                                  ;9EC16B|48      |;
                       LDA.B $AD                            ;9EC16C|A5AD    |;
                       PHA                                  ;9EC16E|48      |;
                       LDA.B $AF                            ;9EC16F|A5AF    |;
                       PHA                                  ;9EC171|48      |;
                       LDA.B $8D                            ;9EC172|A58D    |;
                       PHA                                  ;9EC174|48      |;
                       LDA.B $8F                            ;9EC175|A58F    |;
                       PHA                                  ;9EC177|48      |;                       
                       LDA.W PauseScreenActive              ;9EC178|ADDA15  |;
                       BEQ CODE_9EC180                      ;9EC17B|F003    |;
                       JMP.W CODE_9EC265                    ;9EC17D|4C65C2  |;
 
          CODE_9EC180:
                       LDA.L $7E344C                        ;9EC180|AF4C347E|;
                       BEQ CODE_9EC1BB                      ;9EC184|F035    |;
                       LDA.B $8F                            ;9EC186|A58F    |;
                       PHA                                  ;9EC188|48      |;
                       LDA.B $8D                            ;9EC189|A58D    |;
                       PHA                                  ;9EC18B|48      |;
                       LDA.W #$009C                         ;9EC18C|A99C00  |;
                       STA.B $8F                            ;9EC18F|858F    |;
                       LDA.W #$F72F                         ;9EC191|A92FF7  |;
                       STA.B $8D                            ;9EC194|858D    |;
                       JSL.L CODE_9EC7BE                    ;9EC196|22BEC79E|;
                       PLA                                  ;9EC19A|68      |;
                       STA.B $8D                            ;9EC19B|858D    |;
                       PLA                                  ;9EC19D|68      |;
                       STA.B $8F                            ;9EC19E|858F    |;
                       LDA.W #$000E                         ;9EC1A0|A90E00  |;
                       STA.B $A5                            ;9EC1A3|85A5    |;
                       LDA.W #$0003                         ;9EC1A5|A90300  |;
                       STA.B $A9                            ;9EC1A8|85A9    |;
                       LDA.L $7E35D0                        ;9EC1AA|AFD0357E|;
                       STA.B $AD                            ;9EC1AE|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9EC1B0|229CBD9F|;
                       LDA.W #$0000                         ;9EC1B4|A90000  |;
                       STA.L $7E344C                        ;9EC1B7|8F4C347E|;
 
          CODE_9EC1BB:
                       LDA.B $A5                            ;9EC1BB|A5A5    |;
                       BPL CODE_9EC1C2                      ;9EC1BD|1003    |;
                       JMP.W CODE_9EC2AE                    ;9EC1BF|4CAEC2  |;
 
          CODE_9EC1C2:
                       LDA.B $8F                            ;9EC1C2|A58F    |;
                       PHA                                  ;9EC1C4|48      |;
                       LDA.B $8D                            ;9EC1C5|A58D    |;
                       PHA                                  ;9EC1C7|48      |;
                       LDA.W #$009C                         ;9EC1C8|A99C00  |;
                       STA.B $8F                            ;9EC1CB|858F    |;
                       LDA.W #$F734                         ;9EC1CD|A934F7  |;
                       STA.B $8D                            ;9EC1D0|858D    |;
                       JSL.L CODE_9EC7BE                    ;9EC1D2|22BEC79E|;
                       PLA                                  ;9EC1D6|68      |;
                       STA.B $8D                            ;9EC1D7|858D    |;
                       PLA                                  ;9EC1D9|68      |;
                       STA.B $8F                            ;9EC1DA|858F    |;
                       LDA.W #$0080                         ;9EC1DC|A98000  |;
                       STA.B $8F                            ;9EC1DF|858F    |;
                       LDA.W #$D3EB                         ;9EC1E1|A9EBD3  |;
                       STA.B $8D                            ;9EC1E4|858D    |;
                       LDY.B $A5                            ;9EC1E6|A4A5    |;
                       LDA.L $7E344C                        ;9EC1E8|AF4C347E|;
                       BEQ CODE_9EC20E                      ;9EC1EC|F020    |;
                       db $C0,$06,$00,$D0,$03,$4C,$AE,$C2   ;9EC1EE|        |;
                       db $C0,$08,$00,$D0,$03,$4C,$AE,$C2   ;9EC1F6|        |;
                       db $C0,$0C,$00,$D0,$03,$4C,$AE,$C2   ;9EC1FE|        |;
                       db $C0,$12,$00,$D0,$03,$4C,$AE,$C2   ;9EC206|        |;
 
          CODE_9EC20E:
                       LDA.B [$8D],Y                        ;9EC20E|B78D    |;
                       CLC                                  ;9EC210|18      |;
                       ADC.B $8D                            ;9EC211|658D    |;
                       INC A                                ;9EC213|1A      |;
                       INC A                                ;9EC214|1A      |;
                       STA.B $8D                            ;9EC215|858D    |;
                       LDA.B [$8D]                          ;9EC217|A78D    |;
                       DEC A                                ;9EC219|3A      |;
                       DEC A                                ;9EC21A|3A      |;
                       STA.B $A5                            ;9EC21B|85A5    |;
                       BNE CODE_9EC222                      ;9EC21D|D003    |;
                       JMP.W CODE_9EC2AE                    ;9EC21F|4CAEC2  |;
 
          CODE_9EC222:
                       INC A                                ;9EC222|1A      |;
                       LSR A                                ;9EC223|4A      |;
                       STA.B $A5                            ;9EC224|85A5    |;
                       LDA.W $0D0F                          ;9EC226|AD0F0D  |;
                       SEC                                  ;9EC229|38      |;
                       SBC.B $A5                            ;9EC22A|E5A5    |;
                       STA.W $0D0F                          ;9EC22C|8D0F0D  |;
                       BPL CODE_9EC234                      ;9EC22F|1003    |;
                       db $9C,$0F,$0D                       ;9EC231|        |;
 
          CODE_9EC234:
                       LDA.B [$8D]                          ;9EC234|A78D    |;
                       STA.B $A5                            ;9EC236|85A5    |;
                       TAY                                  ;9EC238|A8      |;
                       DEC.B $8D                            ;9EC239|C68D    |;
                       LDA.B [$8D],Y                        ;9EC23B|B78D    |;
                       INC.B $8D                            ;9EC23D|E68D    |;
                       AND.W #$00FF                         ;9EC23F|29FF00  |;
                       BNE CODE_9EC246                      ;9EC242|D002    |;
                       db $C6,$A5                           ;9EC244|        |;
 
          CODE_9EC246:
                       LDA.W #$0001                         ;9EC246|A90100  |;
                       STA.L $7E344C                        ;9EC249|8F4C347E|;
                       LDA.W #$0003                         ;9EC24D|A90300  |;
                       STA.B $A9                            ;9EC250|85A9    |;
                       JSL.L CODE_9D8000                    ;9EC252|2200809D|;
                       DEC.W $0D11                          ;9EC256|CE110D  |;
                       DEC.W $0D11                          ;9EC259|CE110D  |;
                       INC.W $0D0F                          ;9EC25C|EE0F0D  |;
                       JSL.L CODE_9EC7BE                    ;9EC25F|22BEC79E|;
                       BRA CODE_9EC2AE                      ;9EC263|8049    |;
 
          CODE_9EC265:
                       JSL.L CODE_9EC913                    ;9EC265|2213C99E|;
                       LDA.B $A5                            ;9EC269|A5A5    |;
                       BMI CODE_9EC2AE                      ;9EC26B|3041    |;
                       LDA.B $8F                            ;9EC26D|A58F    |;
                       PHA                                  ;9EC26F|48      |;
                       LDA.B $8D                            ;9EC270|A58D    |;
                       PHA                                  ;9EC272|48      |;
                       LDA.W #$009C                         ;9EC273|A99C00  |;
                       STA.B $8F                            ;9EC276|858F    |;
                       LDA.W #$F739                         ;9EC278|A939F7  |;
                       STA.B $8D                            ;9EC27B|858D    |;
                       JSL.L CODE_9EC7BE                    ;9EC27D|22BEC79E|;
                       PLA                                  ;9EC281|68      |;
                       STA.B $8D                            ;9EC282|858D    |;
                       PLA                                  ;9EC284|68      |;
                       STA.B $8F                            ;9EC285|858F    |;
                       LDA.W #$0080                         ;9EC287|A98000  |;
                       STA.B $8F                            ;9EC28A|858F    |;
                       LDA.W #$D3EB                         ;9EC28C|A9EBD3  |;
                       STA.B $8D                            ;9EC28F|858D    |;
                       LDY.B $A5                            ;9EC291|A4A5    |;
                       LDA.B [$8D],Y                        ;9EC293|B78D    |;
                       CLC                                  ;9EC295|18      |;
                       ADC.B $8D                            ;9EC296|658D    |;
                       INC A                                ;9EC298|1A      |;
                       INC A                                ;9EC299|1A      |;
                       STA.B $8D                            ;9EC29A|858D    |;
                       LDA.B [$8D]                          ;9EC29C|A78D    |;
                       LSR A                                ;9EC29E|4A      |;
                       STA.B $A5                            ;9EC29F|85A5    |;
                       LDA.W $0D0F                          ;9EC2A1|AD0F0D  |;
                       SEC                                  ;9EC2A4|38      |;
                       SBC.B $A5                            ;9EC2A5|E5A5    |;
                       STA.W $0D0F                          ;9EC2A7|8D0F0D  |;
                       JSL.L CODE_9EC7BE                    ;9EC2AA|22BEC79E|;
 
          CODE_9EC2AE:
                       PLA                                  ;9EC2AE|68      |;
                       STA.B $8F                            ;9EC2AF|858F    |;
                       PLA                                  ;9EC2B1|68      |;
                       STA.B $8D                            ;9EC2B2|858D    |;
                       PLA                                  ;9EC2B4|68      |;
                       STA.B $AF                            ;9EC2B5|85AF    |;
                       PLA                                  ;9EC2B7|68      |;
                       STA.B $AD                            ;9EC2B8|85AD    |;
                       PLA                                  ;9EC2BA|68      |;
                       STA.B $AB                            ;9EC2BB|85AB    |;
                       PLA                                  ;9EC2BD|68      |;
                       STA.B $A9                            ;9EC2BE|85A9    |;
                       PLA                                  ;9EC2C0|68      |;
                       STA.B $A7                            ;9EC2C1|85A7    |;
                       PLA                                  ;9EC2C3|68      |;
                       STA.B $A5                            ;9EC2C4|85A5    |;
                       RTL                                  ;9EC2C6|6B      |;
 
          CODE_9EC2C7:
                       DEC.W $1626                          ;9EC2C7|CE2616  |;
                       BNE CODE_9EC2CF                      ;9EC2CA|D003    |;
                       db $4C,$5F,$C3                       ;9EC2CC|        |;
 
          CODE_9EC2CF:
                       RTL                                  ;9EC2CF|6B      |;
                       db $A4,$91,$B9,$83,$12,$09,$00,$10   ;9EC2D0|        |;
                       db $99,$83,$12,$AF,$E0,$35,$7E,$18   ;9EC2D8|        |;
                       db $69,$2C,$01,$8F,$E0,$35,$7E,$A9   ;9EC2E0|        |;
                       db $3C,$00,$85,$81,$A9,$04,$00,$22   ;9EC2E8|        |;
                       db $7F,$9A,$9C,$A4,$91,$B9,$55,$0D   ;9EC2F0|        |;
                       db $8D,$4B,$0D,$B9,$B7,$0D,$8D,$4D   ;9EC2F8|        |;
                       db $0D,$A9,$40,$00,$0C,$D8,$15,$64   ;9EC300|        |;
                       db $A9,$64,$89,$B9,$03,$15,$F0,$0A   ;9EC308|        |;
                       db $A9,$00,$80,$85,$A9,$A9,$02,$00   ;9EC310|        |;
                       db $85,$89,$B9,$A3,$12,$29,$FF,$00   ;9EC318|        |;
                       db $05,$A9,$8D,$36,$16,$29,$FF,$00   ;9EC320|        |;
                       db $89,$80,$00,$F0,$03,$09,$00,$FF   ;9EC328|        |;
                       db $0A,$85,$A9,$A5,$89,$F0,$03,$A9   ;9EC330|        |;
                       db $34,$00,$65,$A9,$A8,$A9,$FD,$FF   ;9EC338|        |;
                       db $99,$52,$18,$A9,$07,$00,$22,$85   ;9EC340|        |;
                       db $B3,$9B,$C9,$00,$00,$D0,$0F,$A9   ;9EC348|        |;
                       db $FC,$FF,$99,$52,$18,$AD,$36,$16   ;9EC350|        |;
                       db $09,$00,$40,$8D,$36,$16,$6B,$A5   ;9EC358|        |;
                       db $A5,$48,$A5,$A7,$48,$A5,$A9,$48   ;9EC360|        |;
                       db $A5,$AB,$48,$A5,$AD,$48,$A5,$AF   ;9EC368|        |;
                       db $48,$86,$87,$A2,$00,$00,$B5,$89   ;9EC370|        |;
                       db $48,$E8,$E8,$E0,$14,$00,$D0,$F6   ;9EC378|        |;
                       db $A6,$87,$A5,$8F,$48,$A5,$8D,$48   ;9EC380|        |;
                       db $A9,$9C,$00,$85,$8F,$A9,$3E,$F7   ;9EC388|        |;
                       db $85,$8D,$22,$BE,$C7,$9E,$68,$85   ;9EC390|        |;
                       db $8D,$68,$85,$8F,$A9,$12,$00,$85   ;9EC398|        |;
                       db $A5,$A9,$05,$00,$85,$A9,$22,$00   ;9EC3A0|        |;
                       db $80,$9D,$A5,$8F,$48,$A5,$8D,$48   ;9EC3A8|        |;
                       db $A9,$9C,$00,$85,$8F,$A9,$43,$F7   ;9EC3B0|        |;
                       db $85,$8D,$22,$BE,$C7,$9E,$68,$85   ;9EC3B8|        |;
                       db $8D,$68,$85,$8F,$AD,$36,$16,$89   ;9EC3C0|        |;
                       db $00,$40,$F0,$20,$29,$FF,$BF,$8D   ;9EC3C8|        |;
                       db $36,$16,$A5,$8F,$48,$A5,$8D,$48   ;9EC3D0|        |;
                       db $A9,$9C,$00,$85,$8F,$A9,$66,$F7   ;9EC3D8|        |;
                       db $85,$8D,$22,$BE,$C7,$9E,$68,$85   ;9EC3E0|        |;
                       db $8D,$68,$85,$8F,$22,$A1,$C4,$9F   ;9EC3E8|        |;
                       db $22,$BE,$C7,$9E,$86,$87,$A2,$12   ;9EC3F0|        |;
                       db $00,$68,$95,$89,$CA,$CA,$10,$F9   ;9EC3F8|        |;
                       db $A6,$87,$68,$85,$AF,$68,$85,$AD   ;9EC400|        |;
                       db $68,$85,$AB,$68,$85,$A9,$68,$85   ;9EC408|        |;
                       db $A7,$68,$85,$A5,$A6,$95,$6B       ;9EC410|        |;
 
          CODE_9EC417:
                       LDA.W $15D4                          ;9EC417|ADD415  |;
                       BIT.W #$0020                         ;9EC41A|892000  |;
                       BNE UNREACH_9EC422                   ;9EC41D|D003    |;
                       JMP.W CODE_9EC4BB                    ;9EC41F|4CBBC4  |;
 
       UNREACH_9EC422:
                       db $A5,$A5,$48,$A5,$A7,$48,$A5,$A9   ;9EC422|        |;
                       db $48,$A5,$AB,$48,$A5,$89,$48,$A5   ;9EC42A|        |;
                       db $8B,$48,$A9,$05,$00,$85,$A5,$A0   ;9EC432|        |;
                       db $00,$00,$E0,$0C,$00,$90,$03,$A0   ;9EC43A|        |;
                       db $0C,$00,$84,$89,$A9,$5C,$00,$85   ;9EC442|        |;
                       db $A9,$BD,$C3,$14,$F0,$03,$4C,$D4   ;9EC44A|        |;
                       db $C4,$A9,$A4,$FF,$85,$A9,$38,$ED   ;9EC452|        |;
                       db $D3,$0D,$F0,$02,$10,$19,$A4,$89   ;9EC45A|        |;
                       db $B9,$43,$0F,$30,$0A,$A5,$A9,$38   ;9EC462|        |;
                       db $F9,$B7,$0D,$F0,$02,$10,$4B,$E6   ;9EC46A|        |;
                       db $89,$E6,$89,$C6,$A5,$10,$E7,$A9   ;9EC472|        |;
                       db $40,$00,$85,$A5,$A9,$00,$80,$1C   ;9EC47A|        |;
                       db $D8,$15,$F0,$23,$AF,$4A,$34,$7E   ;9EC482|        |;
                       db $D0,$1D,$A9,$05,$00,$85,$A5,$A9   ;9EC48A|        |;
                       db $05,$00,$85,$A9,$AF,$D0,$35,$7E   ;9EC492|        |;
                       db $85,$AD,$A9,$02,$00,$8D,$0F,$0D   ;9EC49A|        |;
                       db $8D,$11,$0D,$22,$9C,$BD,$9F,$68   ;9EC4A2|        |;
                       db $85,$8B,$68,$85,$89,$68,$85,$AB   ;9EC4AA|        |;
                       db $68,$85,$A9,$68,$85,$A7,$68,$85   ;9EC4B2|        |;
                       db $A5                               ;9EC4BA|        |;
 
          CODE_9EC4BB:
                       RTL                                  ;9EC4BB|6B      |;
                       db $A9,$06,$00,$85,$A5,$A9,$00,$80   ;9EC4BC|        |;
                       db $0C,$D8,$15,$D0,$E0,$AD,$2A,$16   ;9EC4C4|        |;
                       db $10,$DB,$22,$36,$FA,$9E,$80,$D5   ;9EC4CC|        |;
                       db $A5,$A9,$CD,$D3,$0D,$30,$9E,$A4   ;9EC4D4|        |;
                       db $89,$B9,$43,$0F,$30,$07,$A5,$A9   ;9EC4DC|        |;
                       db $D9,$B7,$0D,$30,$D3,$E6,$89,$E6   ;9EC4E4|        |;
                       db $89,$C6,$A5,$10,$EA,$80,$86       ;9EC4EC|        |;
 
          CODE_9EC4F3:
                       LDY.B zpCurntTeamLoopVal             ;9EC4F3|A491    |;
                       CPY.W #$0018                         ;9EC4F5|C01800  |;
                       BCC CODE_9EC4FD                      ;9EC4F8|9003    |;
                       db $4C,$A7,$C5                       ;9EC4FA|        |;
 
          CODE_9EC4FD:
                       LDA.W $0D55,Y                        ;9EC4FD|B9550D  |;
                       STA.L $7E30F8                        ;9EC500|8FF8307E|;
                       LDA.W $0DB7,Y                        ;9EC504|B9B70D  |;
                       STA.L $7E30FA                        ;9EC507|8FFA307E|;
                       TYA                                  ;9EC50B|98      |;
                       LSR A                                ;9EC50C|4A      |;
                       STA.L $7E30F6                        ;9EC50D|8FF6307E|;
                       STZ.B $89                            ;9EC511|6489    |;
                       LDA.W $1503,Y                        ;9EC513|B90315  |;
                       BEQ CODE_9EC51C                      ;9EC516|F004    |;
                       INC.B $89                            ;9EC518|E689    |;
                       INC.B $89                            ;9EC51A|E689    |;
 
          CODE_9EC51C:
                       LDA.W $12A3,Y                        ;9EC51C|B9A312  |;
                       STA.B $A5                            ;9EC51F|85A5    |;
                       LDY.B $89                            ;9EC521|A489    |;
                       CMP.W $179A,Y                        ;9EC523|D99A17  |;
                       BEQ CODE_9EC565                      ;9EC526|F03D    |;
                       LDA.W $17DE,Y                        ;9EC528|B9DE17  |;
                       BIT.W #$0004                         ;9EC52B|890400  |;
                       BEQ CODE_9EC549                      ;9EC52E|F019    |;
                       AND.W #$FFFB                         ;9EC530|29FBFF  |;
                       STA.W $17DE,Y                        ;9EC533|99DE17  |;
                       CPY.W #$0000                         ;9EC536|C00000  |;
                       BNE CODE_9EC555                      ;9EC539|D01A    |;
                       LDA.W $19BE                          ;9EC53B|ADBE19  |;
                       CLC                                  ;9EC53E|18      |;
                       ADC.W #$000A                         ;9EC53F|690A00  |;
                       BMI CODE_9EC547                      ;9EC542|3003    |;
                       STA.W $19BE                          ;9EC544|8DBE19  |;
 
          CODE_9EC547:
                       BRA CODE_9EC555                      ;9EC547|800C    |;
 
          CODE_9EC549:
                       LDA.W $179E,Y                        ;9EC549|B99E17  |;
                       STA.W $17A2,Y                        ;9EC54C|99A217  |;
                       LDA.W $179A,Y                        ;9EC54F|B99A17  |;
                       STA.W $179E,Y                        ;9EC552|999E17  |;
 
          CODE_9EC555:
                       LDA.B $A5                            ;9EC555|A5A5    |;
                       STA.W $179A,Y                        ;9EC557|999A17  |;
                       CMP.W $17A2,Y                        ;9EC55A|D9A217  |;
                       BNE CODE_9EC565                      ;9EC55D|D006    |;
                       LDA.W #$FFFF                         ;9EC55F|A9FFFF  |;
                       STA.W $17A2,Y                        ;9EC562|99A217  |;
 
          CODE_9EC565:
                       LDA.W #$1000                         ;9EC565|A90010  |;
                       TRB.W $15D8                          ;9EC568|1CD815  |;
                       JSL.L CODE_9EC5F0                    ;9EC56B|22F0C59E|;
                       LDY.B zpCurntTeamLoopVal             ;9EC56F|A491    |;
                       LDA.W $0CF1                          ;9EC571|ADF10C  |;
                       BIT.W #$0004                         ;9EC574|890400  |;
                       BEQ CODE_9EC5AD                      ;9EC577|F034    |;
                       BIT.W #$0001                         ;9EC579|890100  |;
                       BEQ CODE_9EC5AD                      ;9EC57C|F02F    |;
                       LDA.W $0F43,Y                        ;9EC57E|B9430F  |;
                       BEQ CODE_9EC5AD                      ;9EC581|F02A    |;
                       LDA.W $0CF1                          ;9EC583|ADF10C  |;
                       BIT.W #$0002                         ;9EC586|890200  |;
                       BNE CODE_9EC5A8                      ;9EC589|D01D    |;
                       db $B9,$C3,$14,$F0,$1D               ;9EC58B|        |;
 
          CODE_9EC590:
                       PHX                                  ;9EC590|DA      |;
                       LDA.W $0CF2                          ;9EC591|ADF20C  |;
                       AND.W #$00FF                         ;9EC594|29FF00  |;
                       ASL A                                ;9EC597|0A      |;
                       STA.B $95                            ;9EC598|8595    |;
                       TAX                                  ;9EC59A|AA      |;
                       LDA.W #$000C                         ;9EC59B|A90C00  |;
                       STA.B $A5                            ;9EC59E|85A5    |;
                       JSL.L CODE_9EB85E                    ;9EC5A0|225EB89E|;
                       PLX                                  ;9EC5A4|FA      |;
                       STX.B $95                            ;9EC5A5|8695    |;
 
          CODE_9EC5A7:
                       RTL                                  ;9EC5A7|6B      |;
 
          CODE_9EC5A8:
                       LDA.W $14C3,Y                        ;9EC5A8|B9C314  |;
                       BEQ CODE_9EC590                      ;9EC5AB|F0E3    |;
 
          CODE_9EC5AD:
                       TYA                                  ;9EC5AD|98      |;
                       LSR A                                ;9EC5AE|4A      |;
                       XBA                                  ;9EC5AF|EB      |;
                       STA.W $0CF1                          ;9EC5B0|8DF10C  |;
                       LDA.W $0DD3                          ;9EC5B3|ADD30D  |;
                       STA.B $A5                            ;9EC5B6|85A5    |;
                       LDA.W $14C3,Y                        ;9EC5B8|B9C314  |;
                       BEQ CODE_9EC5CB                      ;9EC5BB|F00E    |;
                       LDA.W #$0002                         ;9EC5BD|A90200  |;
                       TSB.W $0CF1                          ;9EC5C0|0CF10C  |;
                       LDA.W #$0000                         ;9EC5C3|A90000  |;
                       SEC                                  ;9EC5C6|38      |;
                       SBC.B $A5                            ;9EC5C7|E5A5    |;
                       STA.B $A5                            ;9EC5C9|85A5    |;
 
          CODE_9EC5CB:
                       LDA.B $A5                            ;9EC5CB|A5A5    |;
                       BMI CODE_9EC5A7                      ;9EC5CD|30D8    |;
                       LDA.W PlyrsOnIceCountHm              ;9EC5CF|ADA617  |;
                       SEC                                  ;9EC5D2|38      |;
                       SBC.W PlyrsOnIceCountAwy             ;9EC5D3|EDA817  |;
                       STA.B $A5                            ;9EC5D6|85A5    |;
                       LDA.W $1503,Y                        ;9EC5D8|B90315  |;
                       BEQ CODE_9EC5E5                      ;9EC5DB|F008    |;
                       LDA.W #$0000                         ;9EC5DD|A90000  |;
                       SEC                                  ;9EC5E0|38      |;
                       SBC.B $A5                            ;9EC5E1|E5A5    |;
                       STA.B $A5                            ;9EC5E3|85A5    |;
 
          CODE_9EC5E5:
                       LDA.B $A5                            ;9EC5E5|A5A5    |;
                       BMI CODE_9EC5A7                      ;9EC5E7|30BE    |;
                       LDA.W #$0004                         ;9EC5E9|A90400  |;
                       TSB.W $0CF1                          ;9EC5EC|0CF10C  |;
                       RTL                                  ;9EC5EF|6B      |;
 
          CODE_9EC5F0:
                       LDY.B zpCurntTeamLoopVal             ;9EC5F0|A491    |;
                       LDA.W $15D4                          ;9EC5F2|ADD415  |;
                       BIT.W #$0020                         ;9EC5F5|892000  |;
                       BEQ CODE_9EC64A                      ;9EC5F8|F050    |;
                       db $AD,$D3,$0D,$85,$A5,$B9,$C3,$14   ;9EC5FA|        |;
                       db $D0,$08,$A9,$00,$00,$38,$E5,$A5   ;9EC602|        |;
                       db $85,$A5,$A5,$A5,$C9,$58,$00,$30   ;9EC60A|        |;
                       db $37,$64,$89,$B9,$03,$15,$F0,$05   ;9EC612|        |;
                       db $A9,$02,$00,$85,$89,$A4,$89,$B9   ;9EC61A|        |;
                       db $DE,$17,$89,$10,$00,$F0,$21,$AD   ;9EC622|        |;
                       db $D4,$15,$89,$10,$00,$D0,$19,$A6   ;9EC62A|        |;
                       db $91,$A4,$95,$84,$91,$86,$95,$A9   ;9EC632|        |;
                       db $12,$00,$85,$A5,$22,$5E,$B8,$9E   ;9EC63A|        |;
                       db $A6,$91,$A4,$95,$84,$91,$86,$95   ;9EC642|        |;
 
          CODE_9EC64A:
                       RTL                                  ;9EC64A|6B      |;
 
  Chk_Puc_Xing_BrkWay:
                       STZ.W BreakAwayTrigger_flg           ;9EC64B|9C3816  |;
                       LDA.W $0AD9                          ;9EC64E|ADD90A  |;
                       BPL CODE_9EC656                      ;9EC651|1003    |;
                       JMP.W CODE_9EC6E6                    ;9EC653|4CE6C6  |;
 
          CODE_9EC656:
                       LDA.W $15D4                          ;9EC656|ADD415  |;
                       BIT.W #$0002                         ;9EC659|890200  |;
                       BNE CODE_9EC668                      ;9EC65C|D00A    |;
                       LDA.W $0AD9                          ;9EC65E|ADD90A  |;
                       CMP.W #$000C                         ;9EC661|C90C00  |;
                       BMI CODE_9EC6AA                      ;9EC664|3044    |;
                       BRA CODE_9EC672                      ;9EC666|800A    |;
 
          CODE_9EC668:
                       LDA.W $0AD9                          ;9EC668|ADD90A  |;
                       CMP.W #$000C                         ;9EC66B|C90C00  |;
                       BMI CODE_9EC672                      ;9EC66E|3002    |;
                       BRA CODE_9EC6AA                      ;9EC670|8038    |;
 
          CODE_9EC672:
                       LDY.W $0AD9                          ;9EC672|ACD90A  |;
                       LDA.W $0DB7,Y                        ;9EC675|B9B70D  |;
                       BPL CODE_9EC6E6                      ;9EC678|106C    |;
                       SEC                                  ;9EC67A|38      |;
                       SBC.W #$0004                         ;9EC67B|E90400  |;
                       STA.B $A5                            ;9EC67E|85A5    |;
                       LDY.W #$0000                         ;9EC680|A00000  |;
                       LDA.W $0AD9                          ;9EC683|ADD90A  |;
                       CMP.W #$000C                         ;9EC686|C90C00  |;
                       BPL CODE_9EC68E                      ;9EC689|1003    |;
                       db $A0,$0C,$00                       ;9EC68B|        |;
 
          CODE_9EC68E:
                       LDA.W #$0006                         ;9EC68E|A90600  |;
                       STA.B $AD                            ;9EC691|85AD    |;
 
          CODE_9EC693:
                       LDA.W $0F43,Y                        ;9EC693|B9430F  |;
                       BMI CODE_9EC6A2                      ;9EC696|300A    |;
                       BEQ CODE_9EC6A2                      ;9EC698|F008    |;
                       LDA.B $A5                            ;9EC69A|A5A5    |;
                       SEC                                  ;9EC69C|38      |;
                       SBC.W $0DB7,Y                        ;9EC69D|F9B70D  |;
                       BPL CODE_9EC6E6                      ;9EC6A0|1044    |;
 
          CODE_9EC6A2:
                       INY                                  ;9EC6A2|C8      |;
                       INY                                  ;9EC6A3|C8      |;
                       DEC.B $AD                            ;9EC6A4|C6AD    |;
                       BPL CODE_9EC693                      ;9EC6A6|10EB    |;
                       BRA CODE_9EC6E0                      ;9EC6A8|8036    |;
 
          CODE_9EC6AA:
                       LDY.W $0AD9                          ;9EC6AA|ACD90A  |;
                       LDA.W $0DB7,Y                        ;9EC6AD|B9B70D  |;
                       BMI CODE_9EC6E6                      ;9EC6B0|3034    |;
                       CLC                                  ;9EC6B2|18      |;
                       ADC.W #$0004                         ;9EC6B3|690400  |;
                       STA.B $A5                            ;9EC6B6|85A5    |;
                       LDY.W #$0000                         ;9EC6B8|A00000  |;
                       LDA.W $0AD9                          ;9EC6BB|ADD90A  |;
                       CMP.W #$000C                         ;9EC6BE|C90C00  |;
                       BPL CODE_9EC6C6                      ;9EC6C1|1003    |;
                       LDY.W #$000C                         ;9EC6C3|A00C00  |;
 
          CODE_9EC6C6:
                       LDA.W #$0006                         ;9EC6C6|A90600  |;
                       STA.B $AD                            ;9EC6C9|85AD    |;
 
          CODE_9EC6CB:
                       LDA.W $0F43,Y                        ;9EC6CB|B9430F  |;
                       BMI CODE_9EC6DA                      ;9EC6CE|300A    |;
                       BEQ CODE_9EC6DA                      ;9EC6D0|F008    |;
                       LDA.B $A5                            ;9EC6D2|A5A5    |;
                       SEC                                  ;9EC6D4|38      |;
                       SBC.W $0DB7,Y                        ;9EC6D5|F9B70D  |;
                       BMI CODE_9EC6E6                      ;9EC6D8|300C    |;
 
          CODE_9EC6DA:
                       INY                                  ;9EC6DA|C8      |;
                       INY                                  ;9EC6DB|C8      |;
                       DEC.B $AD                            ;9EC6DC|C6AD    |;
                       BPL CODE_9EC6CB                      ;9EC6DE|10EB    |;
 
          CODE_9EC6E0:
                       STZ.W BreakAwayTrigger_flg           ;9EC6E0|9C3816  |; Reset BreakAwayTriggeredFlag
                       INC.W BreakAwayTrigger_flg           ;9EC6E3|EE3816  |; Set BreakAwayTriggered Flag
 
          CODE_9EC6E6:
                       RTL                                  ;9EC6E6|6B      |;
 
    fn_BreakawayLogic:
                       JSL.L Chk_Puc_Xing_BrkWay            ;9EC6E7|224BC69E|; Sets BreakAwayTrigger_flg
                       LDA.W BreakAwayTrigger_flg           ;9EC6EB|AD3816  |;
                       STA.W BreakAwayActive_flg            ;9EC6EE|8D8B1E  |;
                       BEQ .done                            ;9EC6F1|F039    |; Not a Breakaway were done
                       LDA.W IsPenaltyShot                  ;9EC6F3|AD9B1E  |;
                       BNE .skipSFXpenaltyshot              ;9EC6F6|D00C    |; Skip sfx if Penalty shot
                       LDA.W #$7000                         ;9EC6F8|A90070  |; sfx setup
                       STA.B $64                            ;9EC6FB|8564    |; sfx setup
                       LDA.W #$0005                         ;9EC6FD|A90500  |; sfx beep
                       JSL.L fn_PlaySFX                     ;9EC700|227DA180|; Play sfx
 
  .skipSFXpenaltyshot:
                       LDA.W $19BE                          ;9EC704|ADBE19  |; $19BE Something to do with chance of a penalty occuring
                       CLC                                  ;9EC707|18      |;
                       ADC.W #$0014                         ;9EC708|691400  |;
                       BMI .HmwAwyChk                       ;9EC70B|3003    |; Negative don't add to 14 Hex to $19BE
                       STA.W $19BE                          ;9EC70D|8DBE19  |;
 
           .HmwAwyChk:
                       PHY                                  ;9EC710|5A      |;
                       LDY.W #$0000                         ;9EC711|A00000  |;
                       LDA.W $0AD9                          ;9EC714|ADD90A  |;
                       CMP.W #$000C                         ;9EC717|C90C00  |;
                       BMI .checkifpenalyshot               ;9EC71A|3003    |; If Negative, Home team stats
                       LDY.W #$0002                         ;9EC71C|A00200  |; Positive, switch to away team stats by loading 2
 
   .checkifpenalyshot:
                       LDA.W IsPenaltyShot                  ;9EC71F|AD9B1E  |;
                       BNE .skipGameStats                   ;9EC722|D007    |; Penalty shot skip adding to game stats
                       LDA.W GmStat_BrkAwayAttmpts,Y        ;9EC724|B9C217  |;
                       INC A                                ;9EC727|1A      |; Add 1 to BreakAway Stat
                       STA.W GmStat_BrkAwayAttmpts,Y        ;9EC728|99C217  |;
 
       .skipGameStats:
                       PLY                                  ;9EC72B|7A      |;
 
                .done:
                       RTL                                  ;9EC72C|6B      |;
 
          CODE_9EC72D:
                       LDA.W IsPenaltyShot                  ;9EC72D|AD9B1E  |;
                       BNE CODE_9EC790                      ;9EC730|D05E    |;
                       LDA.W $1E8D                          ;9EC732|AD8D1E  |;
                       CMP.W #$000C                         ;9EC735|C90C00  |;
                       BMI CODE_9EC745                      ;9EC738|300B    |;
                       LDA.W #$0002                         ;9EC73A|A90200  |;
                       STA.W $1E91                          ;9EC73D|8D911E  |;
                       INC.W $17CC                          ;9EC740|EECC17  |;
                       BRA CODE_9EC74B                      ;9EC743|8006    |;
 
          CODE_9EC745:
                       STZ.W $1E91                          ;9EC745|9C911E  |;
                       INC.W $17CA                          ;9EC748|EECA17  |;
 
          CODE_9EC74B:
                       PHY                                  ;9EC74B|5A      |;
                       LDA.W $1E91                          ;9EC74C|AD911E  |;
                       EOR.W #$0002                         ;9EC74F|490200  |;
                       TAY                                  ;9EC752|A8      |;
                       LDA.W #$0001                         ;9EC753|A90100  |;
                       STA.W PlyrsOnIceCountHm,Y            ;9EC756|99A617  |;
                       LDY.W $1E91                          ;9EC759|AC911E  |;
                       LDA.W #$0001                         ;9EC75C|A90100  |;
                       STA.W PlyrsOnIceCountHm,Y            ;9EC75F|99A617  |;
                       PLY                                  ;9EC762|7A      |;
                       PHX                                  ;9EC763|DA      |;
                       LDX.W $1E8D                          ;9EC764|AE8D1E  |;
                       LDA.W $12A3,X                        ;9EC767|BDA312  |;
                       STA.W $1E8F                          ;9EC76A|8D8F1E  |;
                       PLX                                  ;9EC76D|FA      |;
                       STZ.W IsPenaltyShot                  ;9EC76E|9C9B1E  |;
                       INC.W IsPenaltyShot                  ;9EC771|EE9B1E  |;
                       LDA.L $7E3136                        ;9EC774|AF36317E|;
                       STA.W $1E97                          ;9EC778|8D971E  |;
                       LDA.L $7E3138                        ;9EC77B|AF38317E|;
                       STA.W $1E99                          ;9EC77F|8D991E  |;
                       LDA.W #$0000                         ;9EC782|A90000  |;
                       STA.L $7E3136                        ;9EC785|8F36317E|;
                       LDA.W #$0000                         ;9EC789|A90000  |;
                       STA.L $7E3138                        ;9EC78C|8F38317E|;
 
          CODE_9EC790:
                       RTL                                  ;9EC790|6B      |;
 
          CODE_9EC791:
                       LDA.W $163A                          ;9EC791|AD3A16  |;
                       BEQ CODE_9EC7BD                      ;9EC794|F027    |;
                       LDA.W IsPenaltyShot                  ;9EC796|AD9B1E  |;
                       BEQ CODE_9EC7BD                      ;9EC799|F022    |;
                       PHX                                  ;9EC79B|DA      |;
                       STZ.W IsPenaltyShot                  ;9EC79C|9C9B1E  |;
                       LDA.W #$FFFF                         ;9EC79F|A9FFFF  |;
                       STA.W $1E8D                          ;9EC7A2|8D8D1E  |;
                       LDA.W #$000A                         ;9EC7A5|A90A00  |;
                       STA.B $A5                            ;9EC7A8|85A5    |;
                       JSL.L CODE_80C943                    ;9EC7AA|2243C980|;
                       LDA.W $1E97                          ;9EC7AE|AD971E  |;
                       STA.L $7E30F8                        ;9EC7B1|8FF8307E|;
                       LDA.W $1E99                          ;9EC7B5|AD991E  |;
                       STA.L $7E30FA                        ;9EC7B8|8FFA307E|;
                       PLX                                  ;9EC7BC|FA      |;
 
          CODE_9EC7BD:
                       RTL                                  ;9EC7BD|6B      |;
 
          CODE_9EC7BE:
                       PHX                                  ;9EC7BE|DA      |;
                       LDY.W #$0002                         ;9EC7BF|A00200  |;
 
          CODE_9EC7C2:
                       LDA.W $0D11                          ;9EC7C2|AD110D  |;
                       ASL A                                ;9EC7C5|0A      |;
                       ASL A                                ;9EC7C6|0A      |;
                       ASL A                                ;9EC7C7|0A      |;
                       ASL A                                ;9EC7C8|0A      |;
                       ASL A                                ;9EC7C9|0A      |;
                       ADC.W $0D0F                          ;9EC7CA|6D0F0D  |;
                       ASL A                                ;9EC7CD|0A      |;
                       ADC.W $0CD9                          ;9EC7CE|6DD90C  |;
                       TAX                                  ;9EC7D1|AA      |;
                       LDA.L $7E35B6                        ;9EC7D2|AFB6357E|;
                       ADC.L $7E35A8                        ;9EC7D6|6FA8357E|;
                       ORA.W $0D0D                          ;9EC7DA|0D0D0D  |;
                       STA.B $14                            ;9EC7DD|8514    |;
 
          CODE_9EC7DF:
                       TYA                                  ;9EC7DF|98      |;
                       CMP.B [$8D]                          ;9EC7E0|C78D    |;
                       BNE CODE_9EC7E7                      ;9EC7E2|D003    |;
                       JMP.W CODE_9EC881                    ;9EC7E4|4C81C8  |;
 
          CODE_9EC7E7:
                       LDA.B [$8D],Y                        ;9EC7E7|B78D    |;
                       BIT.W #$0080                         ;9EC7E9|898000  |;
                       BNE CODE_9EC827                      ;9EC7EC|D039    |;
                       AND.W #$00FF                         ;9EC7EE|29FF00  |;
                       CMP.W #$0040                         ;9EC7F1|C94000  |;
                       BNE CODE_9EC7F9                      ;9EC7F4|D003    |;
                       db $4C,$88,$C8                       ;9EC7F6|        |;
 
          CODE_9EC7F9:
                       PHX                                  ;9EC7F9|DA      |;
                       ASL A                                ;9EC7FA|0A      |;
                       TAX                                  ;9EC7FB|AA      |;
                       LDA.L UNREACH_9ACDB6,X               ;9EC7FC|BFB6CD9A|;
                       ADC.B $14                            ;9EC800|6514    |;
                       PLX                                  ;9EC802|FA      |;
                       CMP.L $7E37F4,X                      ;9EC803|DFF4377E|;
                       BEQ CODE_9EC81F                      ;9EC807|F016    |;
                       STA.L $7E37F4,X                      ;9EC809|9FF4377E|;
                       TXA                                  ;9EC80D|8A      |;
                       LSR A                                ;9EC80E|4A      |;
                       CMP.W $0CD5                          ;9EC80F|CDD50C  |;
                       BCS CODE_9EC817                      ;9EC812|B003    |;
                       STA.W $0CD5                          ;9EC814|8DD50C  |;
 
          CODE_9EC817:
                       CMP.W $0CD7                          ;9EC817|CDD70C  |;
                       BCC CODE_9EC81F                      ;9EC81A|9003    |;
                       STA.W $0CD7                          ;9EC81C|8DD70C  |;
 
          CODE_9EC81F:
                       INC.W $0D0F                          ;9EC81F|EE0F0D  |;
                       INX                                  ;9EC822|E8      |;
                       INX                                  ;9EC823|E8      |;
                       INY                                  ;9EC824|C8      |;
                       BRA CODE_9EC7DF                      ;9EC825|80B8    |;
 
          CODE_9EC827:
                       EOR.W #$FFFF                         ;9EC827|49FFFF  |;
                       INC A                                ;9EC82A|1A      |;
                       PHA                                  ;9EC82B|48      |;
                       AND.W #$0030                         ;9EC82C|293000  |;
                       CMP.W #$0010                         ;9EC82F|C91000  |;
                       BNE CODE_9EC838                      ;9EC832|D004    |;
                       CLC                                  ;9EC834|18      |;
                       ADC.W #$0050                         ;9EC835|695000  |;
 
          CODE_9EC838:
                       ASL A                                ;9EC838|0A      |;
                       ASL A                                ;9EC839|0A      |;
                       ASL A                                ;9EC83A|0A      |;
                       ASL A                                ;9EC83B|0A      |;
                       ASL A                                ;9EC83C|0A      |;
                       ASL A                                ;9EC83D|0A      |;
                       STA.W $0D0D                          ;9EC83E|8D0D0D  |;
                       LDA.B $01,S                          ;9EC841|A301    |;
                       AND.W #$0040                         ;9EC843|294000  |;
                       ASL A                                ;9EC846|0A      |;
                       ASL A                                ;9EC847|0A      |;
                       ASL A                                ;9EC848|0A      |;
                       ASL A                                ;9EC849|0A      |;
                       ASL A                                ;9EC84A|0A      |;
                       ASL A                                ;9EC84B|0A      |;
                       ASL A                                ;9EC84C|0A      |;
                       TSB.W $0D0D                          ;9EC84D|0C0D0D  |;
                       PLA                                  ;9EC850|68      |;
                       AND.W #$0003                         ;9EC851|290300  |;
                       PHA                                  ;9EC854|48      |;
                       ASL A                                ;9EC855|0A      |;
                       TAX                                  ;9EC856|AA      |;
                       LDA.L $7E35A8,X                      ;9EC857|BFA8357E|;
                       STA.L $7E35A8                        ;9EC85B|8FA8357E|;
                       PLA                                  ;9EC85F|68      |;
                       DEC A                                ;9EC860|3A      |;
                       XBA                                  ;9EC861|EB      |;
                       AND.W #$FF00                         ;9EC862|2900FF  |;
                       ASL A                                ;9EC865|0A      |;
                       ASL A                                ;9EC866|0A      |;
                       ASL A                                ;9EC867|0A      |;
                       STA.W $0CD9                          ;9EC868|8DD90C  |;
                       INY                                  ;9EC86B|C8      |;
                       LDA.B [$8D],Y                        ;9EC86C|B78D    |;
                       AND.W #$007F                         ;9EC86E|297F00  |;
                       STA.W $0D0F                          ;9EC871|8D0F0D  |;
                       INY                                  ;9EC874|C8      |;
                       LDA.B [$8D],Y                        ;9EC875|B78D    |;
                       AND.W #$007F                         ;9EC877|297F00  |;
                       STA.W $0D11                          ;9EC87A|8D110D  |;
                       INY                                  ;9EC87D|C8      |;
                       JMP.W CODE_9EC7C2                    ;9EC87E|4CC2C7  |;
 
          CODE_9EC881:
                       CLC                                  ;9EC881|18      |;
                       ADC.B $8D                            ;9EC882|658D    |;
                       STA.B $8D                            ;9EC884|858D    |;
                       PLX                                  ;9EC886|FA      |;
                       RTL                                  ;9EC887|6B      |;
                       db $AF,$D0,$35,$7E,$18,$6F,$A8,$35   ;9EC888|        |;
                       db $7E,$4C,$03,$C8                   ;9EC890|        |;
 
          CODE_9EC894:
                       PHX                                  ;9EC894|DA      |;
                       LDA.W #$0020                         ;9EC895|A92000  |;
                       STA.B $24                            ;9EC898|8524    |;
                       LDA.B [$8D]                          ;9EC89A|A78D    |;
                       DEC A                                ;9EC89C|3A      |;
                       DEC A                                ;9EC89D|3A      |;
                       STA.B $22                            ;9EC89E|8522    |;
                       INC.B $8D                            ;9EC8A0|E68D    |;
                       INC.B $8D                            ;9EC8A2|E68D    |;
                       LDA.B $8F                            ;9EC8A4|A58F    |;
                       STA.B $0E                            ;9EC8A6|850E    |;
                       LDA.B $8D                            ;9EC8A8|A58D    |;
                       STA.B $0C                            ;9EC8AA|850C    |;
                       LDA.W #$007F                         ;9EC8AC|A97F00  |;
                       STA.B $12                            ;9EC8AF|8512    |;
                       LDA.W #$2780                         ;9EC8B1|A98027  |;
                       STA.B $10                            ;9EC8B4|8510    |;
                       LDY.W $0D11                          ;9EC8B6|AC110D  |;
                       LDX.W $0D0F                          ;9EC8B9|AE0F0D  |;
                       LDA.L $7E35B6                        ;9EC8BC|AFB6357E|;
                       CLC                                  ;9EC8C0|18      |;
                       ADC.L $7E35A8                        ;9EC8C1|6FA8357E|;
                       ORA.W $0D0D                          ;9EC8C5|0D0D0D  |;
                       JSL.L CODE_9EC8CE                    ;9EC8C8|22CEC89E|;
                       PLX                                  ;9EC8CC|FA      |;
                       RTL                                  ;9EC8CD|6B      |;
 
          CODE_9EC8CE:
                       STA.B $26                            ;9EC8CE|8526    |;
                       STX.B $1C                            ;9EC8D0|861C    |;
                       TYA                                  ;9EC8D2|98      |;
                       ASL A                                ;9EC8D3|0A      |;
                       LDX.B $24                            ;9EC8D4|A624    |;
                       JSL.L CODE_809099                    ;9EC8D6|22999080|;
                       LDA.B $1C                            ;9EC8DA|A51C    |;
                       ASL A                                ;9EC8DC|0A      |;
                       CLC                                  ;9EC8DD|18      |;
                       ADC.B $08                            ;9EC8DE|6508    |;
                       ADC.B $10                            ;9EC8E0|6510    |;
                       STA.B $10                            ;9EC8E2|8510    |;
                       LDY.W #$0000                         ;9EC8E4|A00000  |;
 
          CODE_9EC8E7:
                       LDA.B [$0C]                          ;9EC8E7|A70C    |;
                       AND.W #$00FF                         ;9EC8E9|29FF00  |;
                       BEQ UNREACH_9EC902                   ;9EC8EC|F014    |;
                       ASL A                                ;9EC8EE|0A      |;
                       TAX                                  ;9EC8EF|AA      |;
                       LDA.L UNREACH_9ACDB6,X               ;9EC8F0|BFB6CD9A|;
                       CLC                                  ;9EC8F4|18      |;
                       ADC.B $26                            ;9EC8F5|6526    |;
                       STA.B [$10],Y                        ;9EC8F7|9710    |;
                       INY                                  ;9EC8F9|C8      |;
                       INY                                  ;9EC8FA|C8      |;
                       INC.B $0C                            ;9EC8FB|E60C    |;
                       DEC.B $22                            ;9EC8FD|C622    |;
                       BNE CODE_9EC8E7                      ;9EC8FF|D0E6    |;
                       RTL                                  ;9EC901|6B      |;
 
       UNREACH_9EC902:
                       db $CA,$30,$FC,$A9,$20,$00,$18,$65   ;9EC902|        |;
                       db $26,$97,$10,$C8,$C8,$E6,$0C,$80   ;9EC90A|        |;
                       db $EF                               ;9EC912|        |;
 
          CODE_9EC913:
                       LDA.B $A5                            ;9EC913|A5A5    |;
                       PHA                                  ;9EC915|48      |;
                       LDA.B $8F                            ;9EC916|A58F    |;
                       PHA                                  ;9EC918|48      |;
                       LDA.B $8D                            ;9EC919|A58D    |;
                       PHA                                  ;9EC91B|48      |;
                       LDA.W #$009C                         ;9EC91C|A99C00  |;
                       STA.B $8F                            ;9EC91F|858F    |;
                       LDA.W #$F776                         ;9EC921|A976F7  |;
                       STA.B $8D                            ;9EC924|858D    |;
                       JSL.L CODE_9EC7BE                    ;9EC926|22BEC79E|;
                       PLA                                  ;9EC92A|68      |;
                       STA.B $8D                            ;9EC92B|858D    |;
                       PLA                                  ;9EC92D|68      |;
                       STA.B $8F                            ;9EC92E|858F    |;
                       LDA.W #$0018                         ;9EC930|A91800  |;
                       STA.B $A5                            ;9EC933|85A5    |;
                       LDA.W #$0003                         ;9EC935|A90300  |;
                       STA.B $A9                            ;9EC938|85A9    |;
                       JSL.L CODE_9D8000                    ;9EC93A|2200809D|;
                       LDA.B $8F                            ;9EC93E|A58F    |;
                       PHA                                  ;9EC940|48      |;
                       LDA.B $8D                            ;9EC941|A58D    |;
                       PHA                                  ;9EC943|48      |;
                       LDA.W #$009C                         ;9EC944|A99C00  |;
                       STA.B $8F                            ;9EC947|858F    |;
                       LDA.W #$F77B                         ;9EC949|A97BF7  |;
                       STA.B $8D                            ;9EC94C|858D    |;
                       JSL.L CODE_9EC7BE                    ;9EC94E|22BEC79E|;
                       PLA                                  ;9EC952|68      |;
                       STA.B $8D                            ;9EC953|858D    |;
                       PLA                                  ;9EC955|68      |;
                       STA.B $8F                            ;9EC956|858F    |;
                       PLA                                  ;9EC958|68      |;
                       STA.B $A5                            ;9EC959|85A5    |;
                       RTL                                  ;9EC95B|6B      |;
 
          CODE_9EC95C:
                       LDA.W $0D45                          ;9EC95C|AD450D  |;
                       SEC                                  ;9EC95F|38      |;
                       SBC.W #$1000                         ;9EC960|E90010  |;
                       BEQ CODE_9EC96D                      ;9EC963|F008    |;
                       BMI CODE_9EC96B                      ;9EC965|3004    |;
                       BVS CODE_9EC96D                      ;9EC967|7004    |;
                       BRA CODE_9EC9B0                      ;9EC969|8045    |;
 
          CODE_9EC96B:
                       BVS CODE_9EC9B0                      ;9EC96B|7043    |;
 
          CODE_9EC96D:
                       LDA.W $1D5E                          ;9EC96D|AD5E1D  |;
                       BMI CODE_9EC977                      ;9EC970|3005    |;
                       DEC.W $0D45                          ;9EC972|CE450D  |;
                       BPL CODE_9EC9B0                      ;9EC975|1039    |;
 
          CODE_9EC977:
                       LDA.W #$0097                         ;9EC977|A99700  |;
                       STA.B $8F                            ;9EC97A|858F    |;
                       LDA.W #$88DC                         ;9EC97C|A9DC88  |;
                       STA.B $8D                            ;9EC97F|858D    |;
                       LDA.W $0D3F                          ;9EC981|AD3F0D  |;
                       STA.B $A5                            ;9EC984|85A5    |;
                       BPL CODE_9EC9E2                      ;9EC986|105A    |;
                       STZ.W $0D47                          ;9EC988|9C470D  |;
                       LDY.W $0D43                          ;9EC98B|AC430D  |;
                       INC.W $0D43                          ;9EC98E|EE430D  |;
                       INC.W $0D43                          ;9EC991|EE430D  |;
                       LDA.W #$007E                         ;9EC994|A97E00  |;
                       STA.B $8B                            ;9EC997|858B    |;
                       LDA.W #$347C                         ;9EC999|A97C34  |;
                       STA.B $89                            ;9EC99C|8589    |;
                       LDA.B [$89],Y                        ;9EC99E|B789    |;
                       STA.B $A5                            ;9EC9A0|85A5    |;
                       BPL CODE_9EC9B1                      ;9EC9A2|100D    |;
                       LDA.W #$7FFF                         ;9EC9A4|A9FF7F  |;
                       STA.W $0D45                          ;9EC9A7|8D450D  |;
                       LDA.W #$01E0                         ;9EC9AA|A9E001  |;
                       STA.W $0D41                          ;9EC9AD|8D410D  |;
 
          CODE_9EC9B0:
                       RTL                                  ;9EC9B0|6B      |;
 
          CODE_9EC9B1:
                       LDA.W $0D49                          ;9EC9B1|AD490D  |;
                       CMP.W #$0001                         ;9EC9B4|C90100  |;
                       BMI CODE_9EC9BD                      ;9EC9B7|3004    |;
                       JSL.L CODE_9ECD9D                    ;9EC9B9|229DCD9E|;
 
          CODE_9EC9BD:
                       JSL.L CODE_9ECD9D                    ;9EC9BD|229DCD9E|;
                       LDA.B $8F                            ;9EC9C1|A58F    |;
                       STA.B $93                            ;9EC9C3|8593    |;
                       LDA.B $8D                            ;9EC9C5|A58D    |;
                       STA.B zpCurntTeamLoopVal             ;9EC9C7|8591    |;
                       BRA CODE_9EC9D7                      ;9EC9C9|800C    |;
 
          CODE_9EC9CB:
                       LDA.B [zpCurntTeamLoopVal]           ;9EC9CB|A791    |;
                       INC.B zpCurntTeamLoopVal             ;9EC9CD|E691    |;
                       AND.W #$00FF                         ;9EC9CF|29FF00  |;
                       CMP.W #$000D                         ;9EC9D2|C90D00  |;
                       BNE CODE_9EC9CB                      ;9EC9D5|D0F4    |;
 
          CODE_9EC9D7:
                       DEC.B $A5                            ;9EC9D7|C6A5    |;
                       BPL CODE_9EC9CB                      ;9EC9D9|10F0    |;
                       LDA.B zpCurntTeamLoopVal             ;9EC9DB|A591    |;
                       SEC                                  ;9EC9DD|38      |;
                       SBC.B $8D                            ;9EC9DE|E58D    |;
                       STA.B $A5                            ;9EC9E0|85A5    |;
 
          CODE_9EC9E2:
                       LDA.B $8D                            ;9EC9E2|A58D    |;
                       CLC                                  ;9EC9E4|18      |;
                       ADC.B $A5                            ;9EC9E5|65A5    |;
                       STA.B zpCurntTeamLoopVal             ;9EC9E7|8591    |;
                       LDA.B $8F                            ;9EC9E9|A58F    |;
                       STA.B $93                            ;9EC9EB|8593    |;
                       LDA.W #$000A                         ;9EC9ED|A90A00  |;
                       STA.W $0D45                          ;9EC9F0|8D450D  |;
                       LDA.W $0D47                          ;9EC9F3|AD470D  |;
                       STA.B $A5                            ;9EC9F6|85A5    |;
                       LDA.B [zpCurntTeamLoopVal]           ;9EC9F8|A791    |;
                       AND.W #$00FF                         ;9EC9FA|29FF00  |;
                       CMP.W #$0025                         ;9EC9FD|C92500  |;
                       BEQ CODE_9ECA05                      ;9ECA00|F003    |;
                       JMP.W CODE_9ECAB7                    ;9ECA02|4CB7CA  |;
 
          CODE_9ECA05:
                       INC.B zpCurntTeamLoopVal             ;9ECA05|E691    |;
                       LDA.B [zpCurntTeamLoopVal]           ;9ECA07|A791    |;
                       INC.W $0D3F                          ;9ECA09|EE3F0D  |;
                       AND.W #$00FF                         ;9ECA0C|29FF00  |;
                       CMP.W #$0072                         ;9ECA0F|C97200  |;
                       BNE CODE_9ECA17                      ;9ECA12|D003    |;
                       JMP.W CODE_9ECC4B                    ;9ECA14|4C4BCC  |;
 
          CODE_9ECA17:
                       CMP.W #$0076                         ;9ECA17|C97600  |;
                       BNE CODE_9ECA1F                      ;9ECA1A|D003    |;
                       JMP.W CODE_9ECCFE                    ;9ECA1C|4CFECC  |;
 
          CODE_9ECA1F:
                       CMP.W #$0068                         ;9ECA1F|C96800  |;
                       BNE CODE_9ECA27                      ;9ECA22|D003    |;
                       JMP.W CODE_9ECD05                    ;9ECA24|4C05CD  |;
 
          CODE_9ECA27:
                       CMP.W #$0056                         ;9ECA27|C95600  |;
                       BNE CODE_9ECA2F                      ;9ECA2A|D003    |;
                       JMP.W CODE_9ECCEC                    ;9ECA2C|4CECCC  |;
 
          CODE_9ECA2F:
                       CMP.W #$0048                         ;9ECA2F|C94800  |;
                       BNE CODE_9ECA37                      ;9ECA32|D003    |;
                       JMP.W CODE_9ECCF5                    ;9ECA34|4CF5CC  |;
 
          CODE_9ECA37:
                       CMP.W #$006D                         ;9ECA37|C96D00  |;
                       BNE CODE_9ECA3F                      ;9ECA3A|D003    |;
                       JMP.W CODE_9ECC1E                    ;9ECA3C|4C1ECC  |;
 
          CODE_9ECA3F:
                       CMP.W #$006E                         ;9ECA3F|C96E00  |;
                       BNE CODE_9ECA47                      ;9ECA42|D003    |;
                       JMP.W CODE_9ECC25                    ;9ECA44|4C25CC  |;
 
          CODE_9ECA47:
                       CMP.W #$0074                         ;9ECA47|C97400  |;
                       BNE CODE_9ECA4F                      ;9ECA4A|D003    |;
                       JMP.W CODE_9ECCA1                    ;9ECA4C|4CA1CC  |;
 
          CODE_9ECA4F:
                       CMP.W #$0065                         ;9ECA4F|C96500  |;
                       BNE CODE_9ECA57                      ;9ECA52|D003    |;
                       JMP.W CODE_9ECC71                    ;9ECA54|4C71CC  |;
 
          CODE_9ECA57:
                       CMP.W #$0030                         ;9ECA57|C93000  |;
                       BNE CODE_9ECA5F                      ;9ECA5A|D003    |;
                       JMP.W CODE_9ECB99                    ;9ECA5C|4C99CB  |;
 
          CODE_9ECA5F:
                       CMP.W #$0031                         ;9ECA5F|C93100  |;
                       BNE CODE_9ECA67                      ;9ECA62|D003    |;
                       JMP.W CODE_9ECB9E                    ;9ECA64|4C9ECB  |;
 
          CODE_9ECA67:
                       CMP.W #$0032                         ;9ECA67|C93200  |;
                       BNE CODE_9ECA6F                      ;9ECA6A|D003    |;
                       JMP.W CODE_9ECBA3                    ;9ECA6C|4CA3CB  |;
 
          CODE_9ECA6F:
                       CMP.W #$0033                         ;9ECA6F|C93300  |;
                       BNE CODE_9ECA77                      ;9ECA72|D003    |;
                       JMP.W CODE_9ECBA8                    ;9ECA74|4CA8CB  |;
 
          CODE_9ECA77:
                       CMP.W #$0034                         ;9ECA77|C93400  |;
                       BNE CODE_9ECA7F                      ;9ECA7A|D003    |;
                       JMP.W CODE_9ECBAD                    ;9ECA7C|4CADCB  |;
 
          CODE_9ECA7F:
                       CMP.W #$0035                         ;9ECA7F|C93500  |;
                       BNE CODE_9ECA87                      ;9ECA82|D003    |;
                       JMP.W CODE_9ECBB2                    ;9ECA84|4CB2CB  |;
 
          CODE_9ECA87:
                       CMP.W #$0036                         ;9ECA87|C93600  |;
                       BNE CODE_9ECA8F                      ;9ECA8A|D003    |;
                       JMP.W CODE_9ECBB7                    ;9ECA8C|4CB7CB  |;
 
          CODE_9ECA8F:
                       CMP.W #$0037                         ;9ECA8F|C93700  |;
                       BNE CODE_9ECA97                      ;9ECA92|D003    |;
                       JMP.W CODE_9ECBBC                    ;9ECA94|4CBCCB  |;
 
          CODE_9ECA97:
                       CMP.W #$0038                         ;9ECA97|C93800  |;
                       BNE CODE_9ECA9F                      ;9ECA9A|D003    |;
                       JMP.W CODE_9ECBC1                    ;9ECA9C|4CC1CB  |;
 
          CODE_9ECA9F:
                       CMP.W #$0039                         ;9ECA9F|C93900  |;
                       BNE CODE_9ECAA7                      ;9ECAA2|D003    |;
                       JMP.W CODE_9ECBC6                    ;9ECAA4|4CC6CB  |;
 
          CODE_9ECAA7:
                       CMP.W #$0061                         ;9ECAA7|C96100  |;
                       BNE CODE_9ECAAF                      ;9ECAAA|D003    |;
                       JMP.W CODE_9ECBCB                    ;9ECAAC|4CCBCB  |;
 
          CODE_9ECAAF:
                       CMP.W #$0062                         ;9ECAAF|C96200  |;
                       BNE CODE_9ECAB7                      ;9ECAB2|D003    |;
                       JMP.W CODE_9ECBD0                    ;9ECAB4|4CD0CB  |;
 
          CODE_9ECAB7:
                       LDA.W #$FFFF                         ;9ECAB7|A9FFFF  |;
                       STA.W $0D3F                          ;9ECABA|8D3F0D  |;
                       LDA.W #$0000                         ;9ECABD|A90000  |;
                       STA.B $8B                            ;9ECAC0|858B    |;
                       LDA.W #$0A2C                         ;9ECAC2|A92C0A  |;
                       STA.B $89                            ;9ECAC5|8589    |;
                       STZ.B $A9                            ;9ECAC7|64A9    |;
 
          CODE_9ECAC9:
                       LDA.B [zpCurntTeamLoopVal]           ;9ECAC9|A791    |;
                       AND.W #$00FF                         ;9ECACB|29FF00  |;
                       CMP.W #$000D                         ;9ECACE|C90D00  |;
                       BEQ CODE_9ECB1A                      ;9ECAD1|F047    |;
                       INC.B $A5                            ;9ECAD3|E6A5    |;
 
          CODE_9ECAD5:
                       SEP #$20                             ;9ECAD5|E220    |;
                       LDA.B [zpCurntTeamLoopVal]           ;9ECAD7|A791    |;
                       STA.B [$89]                          ;9ECAD9|8789    |;
                       REP #$30                             ;9ECADB|C230    |;
                       INC.B $89                            ;9ECADD|E689    |;
                       INC.B $A9                            ;9ECADF|E6A9    |;
                       LDA.B [zpCurntTeamLoopVal]           ;9ECAE1|A791    |;
                       AND.W #$00FF                         ;9ECAE3|29FF00  |;
                       CMP.W #$002C                         ;9ECAE6|C92C00  |;
                       BEQ CODE_9ECAF0                      ;9ECAE9|F005    |;
                       CMP.W #$002E                         ;9ECAEB|C92E00  |;
                       BNE CODE_9ECAFA                      ;9ECAEE|D00A    |;
 
          CODE_9ECAF0:
                       LDA.W $0D45                          ;9ECAF0|AD450D  |;
                       CLC                                  ;9ECAF3|18      |;
                       ADC.W #$0028                         ;9ECAF4|692800  |;
                       STA.W $0D45                          ;9ECAF7|8D450D  |;
 
          CODE_9ECAFA:
                       LDA.B [zpCurntTeamLoopVal]           ;9ECAFA|A791    |;
                       INC.B zpCurntTeamLoopVal             ;9ECAFC|E691    |;
                       AND.W #$00FF                         ;9ECAFE|29FF00  |;
                       CMP.W #$0020                         ;9ECB01|C92000  |;
                       BNE CODE_9ECAC9                      ;9ECB04|D0C3    |;
                       LDA.B [zpCurntTeamLoopVal]           ;9ECB06|A791    |;
                       AND.W #$00FF                         ;9ECB08|29FF00  |;
                       CMP.W #$0020                         ;9ECB0B|C92000  |;
                       BEQ CODE_9ECAD5                      ;9ECB0E|F0C5    |;
                       LDA.B zpCurntTeamLoopVal             ;9ECB10|A591    |;
                       SEC                                  ;9ECB12|38      |;
                       SBC.B $8D                            ;9ECB13|E58D    |;
                       STA.B zpCurntTeamLoopVal             ;9ECB15|8591    |;
                       STA.W $0D3F                          ;9ECB17|8D3F0D  |;
 
          CODE_9ECB1A:
                       LDA.B $A9                            ;9ECB1A|A5A9    |;
                       INC A                                ;9ECB1C|1A      |;
                       INC A                                ;9ECB1D|1A      |;
                       STA.W $0A2A                          ;9ECB1E|8D2A0A  |;
                       LDA.W #$0000                         ;9ECB21|A90000  |;
                       STA.B $8F                            ;9ECB24|858F    |;
                       LDA.W #$0A2A                         ;9ECB26|A92A0A  |;
                       STA.B $8D                            ;9ECB29|858D    |;
 
          CODE_9ECB2B:
                       LDA.B $A5                            ;9ECB2B|A5A5    |;
                       SEC                                  ;9ECB2D|38      |;
                       SBC.W #$0014                         ;9ECB2E|E91400  |;
                       BEQ CODE_9ECB3F                      ;9ECB31|F00C    |;
                       BMI CODE_9ECB3D                      ;9ECB33|3008    |;
                       BVS CODE_9ECB3F                      ;9ECB35|7008    |;
 
          CODE_9ECB37:
                       JSL.L CODE_9ECD9D                    ;9ECB37|229DCD9E|;
                       BRA CODE_9ECB3F                      ;9ECB3B|8002    |;
 
          CODE_9ECB3D:
                       BVS CODE_9ECB37                      ;9ECB3D|70F8    |;
 
          CODE_9ECB3F:
                       LDA.W $0D47                          ;9ECB3F|AD470D  |;
                       BNE CODE_9ECB5D                      ;9ECB42|D019    |;
                       LDY.W #$0002                         ;9ECB44|A00200  |;
 
          CODE_9ECB47:
                       LDA.B [$8D],Y                        ;9ECB47|B78D    |;
                       AND.W #$00FF                         ;9ECB49|29FF00  |;
                       CMP.W #$0020                         ;9ECB4C|C92000  |;
                       BNE CODE_9ECB5D                      ;9ECB4F|D00C    |;
                       LDA.B [$8D]                          ;9ECB51|A78D    |;
                       DEC A                                ;9ECB53|3A      |;
                       INC.B $8D                            ;9ECB54|E68D    |;
                       STA.B [$8D]                          ;9ECB56|878D    |;
                       DEC.B $A9                            ;9ECB58|C6A9    |;
                       INY                                  ;9ECB5A|C8      |;
                       BRA CODE_9ECB47                      ;9ECB5B|80EA    |;
 
          CODE_9ECB5D:
                       LDA.B $8F                            ;9ECB5D|A58F    |;
                       PHA                                  ;9ECB5F|48      |;
                       LDA.B $8D                            ;9ECB60|A58D    |;
                       PHA                                  ;9ECB62|48      |;
                       LDA.W #$009C                         ;9ECB63|A99C00  |;
                       STA.B $8F                            ;9ECB66|858F    |;
                       LDA.W #$F796                         ;9ECB68|A996F7  |;
                       STA.B $8D                            ;9ECB6B|858D    |;
                       JSL.L CODE_9EC7BE                    ;9ECB6D|22BEC79E|;
                       PLA                                  ;9ECB71|68      |;
                       STA.B $8D                            ;9ECB72|858D    |;
                       PLA                                  ;9ECB74|68      |;
                       STA.B $8F                            ;9ECB75|858F    |;
                       LDA.W $0D47                          ;9ECB77|AD470D  |;
                       CLC                                  ;9ECB7A|18      |;
                       ADC.W $0D0F                          ;9ECB7B|6D0F0D  |;
                       STA.W $0D0F                          ;9ECB7E|8D0F0D  |;
                       LDA.W $0D49                          ;9ECB81|AD490D  |;
                       CLC                                  ;9ECB84|18      |;
                       ADC.W $0D11                          ;9ECB85|6D110D  |;
                       STA.W $0D11                          ;9ECB88|8D110D  |;
                       JSL.L CODE_9EC7BE                    ;9ECB8B|22BEC79E|;
                       LDA.W $0D47                          ;9ECB8F|AD470D  |;
                       CLC                                  ;9ECB92|18      |;
                       ADC.B $A9                            ;9ECB93|65A9    |;
                       STA.W $0D47                          ;9ECB95|8D470D  |;
                       RTL                                  ;9ECB98|6B      |;
 
          CODE_9ECB99:
                       LDA.W $1E49                          ;9ECB99|AD491E  |;
                       BRA CODE_9ECBD5                      ;9ECB9C|8037    |;
 
          CODE_9ECB9E:
                       LDA.W $1E4D                          ;9ECB9E|AD4D1E  |;
                       BRA CODE_9ECBD5                      ;9ECBA1|8032    |;
 
          CODE_9ECBA3:
                       LDA.W $1E51                          ;9ECBA3|AD511E  |;
                       BRA CODE_9ECBD5                      ;9ECBA6|802D    |;
 
          CODE_9ECBA8:
                       LDA.W $1E55                          ;9ECBA8|AD551E  |;
                       BRA CODE_9ECBD5                      ;9ECBAB|8028    |;
 
          CODE_9ECBAD:
                       LDA.W $1E59                          ;9ECBAD|AD591E  |;
                       BRA CODE_9ECBD5                      ;9ECBB0|8023    |;
 
          CODE_9ECBB2:
                       LDA.W $1E5D                          ;9ECBB2|AD5D1E  |;
                       BRA CODE_9ECBD5                      ;9ECBB5|801E    |;
 
          CODE_9ECBB7:
                       LDA.W $1E4B                          ;9ECBB7|AD4B1E  |;
                       BRA CODE_9ECBDD                      ;9ECBBA|8021    |;
 
          CODE_9ECBBC:
                       LDA.W $1E4F                          ;9ECBBC|AD4F1E  |;
                       BRA CODE_9ECBDD                      ;9ECBBF|801C    |;
 
          CODE_9ECBC1:
                       LDA.W $1E53                          ;9ECBC1|AD531E  |;
                       BRA CODE_9ECBDD                      ;9ECBC4|8017    |;
 
          CODE_9ECBC6:
                       LDA.W $1E57                          ;9ECBC6|AD571E  |;
                       BRA CODE_9ECBDD                      ;9ECBC9|8012    |;
 
          CODE_9ECBCB:
                       LDA.W $1E5B                          ;9ECBCB|AD5B1E  |;
                       BRA CODE_9ECBDD                      ;9ECBCE|800D    |;
 
          CODE_9ECBD0:
                       LDA.W $1E5F                          ;9ECBD0|AD5F1E  |;
                       BRA CODE_9ECBDD                      ;9ECBD3|8008    |;
 
          CODE_9ECBD5:
                       LDX.B $A5                            ;9ECBD5|A6A5    |;
                       STA.B $A5                            ;9ECBD7|85A5    |;
                       STZ.B zpCurntTeamLoopVal             ;9ECBD9|6491    |;
                       BRA CODE_9ECBE8                      ;9ECBDB|800B    |;
 
          CODE_9ECBDD:
                       LDX.B $A5                            ;9ECBDD|A6A5    |;
                       STA.B $A5                            ;9ECBDF|85A5    |;
                       LDA.W #$0002                         ;9ECBE1|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9ECBE4|8591    |;
                       BRA CODE_9ECBE8                      ;9ECBE6|8000    |;
 
          CODE_9ECBE8:
                       PHX                                  ;9ECBE8|DA      |;
                       LDA.B $89                            ;9ECBE9|A589    |;
                       PHA                                  ;9ECBEB|48      |;
                       JSL.L CODE_9FC732                    ;9ECBEC|2232C79F|;
                       LDA.B $8B                            ;9ECBF0|A58B    |;
                       STA.B $8F                            ;9ECBF2|858F    |;
                       LDA.B $89                            ;9ECBF4|A589    |;
                       STA.B $8D                            ;9ECBF6|858D    |;
                       LDA.W #$0000                         ;9ECBF8|A90000  |;
                       STA.B $97                            ;9ECBFB|8597    |;
                       LDA.W #$0A2A                         ;9ECBFD|A92A0A  |;
                       STA.B $95                            ;9ECC00|8595    |;
                       LDA.W #$0002                         ;9ECC02|A90200  |;
                       STA.B [$95]                          ;9ECC05|8795    |;
                       JSL.L CODE_9ECFA5                    ;9ECC07|22A5CF9E|;
                       LDA.W #$0000                         ;9ECC0B|A90000  |;
                       STA.B $8F                            ;9ECC0E|858F    |;
                       LDA.W #$0A2A                         ;9ECC10|A92A0A  |;
                       STA.B $8D                            ;9ECC13|858D    |;
                       PLA                                  ;9ECC15|68      |;
                       STA.B $89                            ;9ECC16|8589    |;
                       PLX                                  ;9ECC18|FA      |;
                       STX.B $A5                            ;9ECC19|86A5    |;
                       JMP.W CODE_9ECD36                    ;9ECC1B|4C36CD  |;
 
          CODE_9ECC1E:
                       LDA.W $1CDE                          ;9ECC1E|ADDE1C  |;
                       STA.B $8D                            ;9ECC21|858D    |;
                       BRA CODE_9ECC2A                      ;9ECC23|8005    |;
 
          CODE_9ECC25:
                       LDA.W $1CDC                          ;9ECC25|ADDC1C  |;
                       STA.B $8D                            ;9ECC28|858D    |;
 
          CODE_9ECC2A:
                       LDA.W #$009C                         ;9ECC2A|A99C00  |;
                       STA.B $8F                            ;9ECC2D|858F    |;
                       LDY.W #$0004                         ;9ECC2F|A00400  |;
                       LDA.B $8D                            ;9ECC32|A58D    |;
                       CLC                                  ;9ECC34|18      |;
                       ADC.B [$8D],Y                        ;9ECC35|778D    |;
                       STA.B $8D                            ;9ECC37|858D    |;
                       LDA.B $A5                            ;9ECC39|A5A5    |;
                       PHA                                  ;9ECC3B|48      |;
                       LDA.W #$0002                         ;9ECC3C|A90200  |;
                       STA.B $A5                            ;9ECC3F|85A5    |;
                       JSL.L CODE_9ED323                    ;9ECC41|2223D39E|;
                       PLA                                  ;9ECC45|68      |;
                       STA.B $A5                            ;9ECC46|85A5    |;
                       JMP.W CODE_9ECD19                    ;9ECC48|4C19CD  |;
 
          CODE_9ECC4B:
                       LDA.W $1CDC                          ;9ECC4B|ADDC1C  |;
                       STA.B $8D                            ;9ECC4E|858D    |;
                       LDA.W #$009C                         ;9ECC50|A99C00  |;
                       STA.B $8F                            ;9ECC53|858F    |;
                       LDY.W #$0004                         ;9ECC55|A00400  |;
                       LDA.B $8D                            ;9ECC58|A58D    |;
                       CLC                                  ;9ECC5A|18      |;
                       ADC.B [$8D],Y                        ;9ECC5B|778D    |;
                       STA.B $8D                            ;9ECC5D|858D    |;
                       LDA.B $A5                            ;9ECC5F|A5A5    |;
                       PHA                                  ;9ECC61|48      |;
                       LDA.W #$0003                         ;9ECC62|A90300  |;
                       STA.B $A5                            ;9ECC65|85A5    |;
                       JSL.L CODE_9ED323                    ;9ECC67|2223D39E|;
                       PLA                                  ;9ECC6B|68      |;
                       STA.B $A5                            ;9ECC6C|85A5    |;
                       JMP.W CODE_9ECD19                    ;9ECC6E|4C19CD  |;
 
          CODE_9ECC71:
                       INC.B zpCurntTeamLoopVal             ;9ECC71|E691    |;
                       LDA.W $1E43                          ;9ECC73|AD431E  |;
                       BNE CODE_9ECC7B                      ;9ECC76|D003    |;
                       JMP.W CODE_9ECAB7                    ;9ECC78|4CB7CA  |;
 
          CODE_9ECC7B:
                       LDA.W #$009E                         ;9ECC7B|A99E00  |;
                       STA.B $8F                            ;9ECC7E|858F    |;
                       LDA.W #$CC88                         ;9ECC80|A988CC  |;
                       STA.B $8D                            ;9ECC83|858D    |;
                       JMP.W CODE_9ECD19                    ;9ECC85|4C19CD  |;
                       db $0C,$00,$65,$78,$74,$72,$65,$6D   ;9ECC88|        |;
                       db $65,$6C,$79,$20,$06,$00,$20,$68   ;9ECC90|        |;
                       db $61,$73,$07,$00,$20,$68,$61,$76   ;9ECC98|        |;
                       db $65                               ;9ECCA0|        |;
 
          CODE_9ECCA1:
                       LDA.W $1E41                          ;9ECCA1|AD411E  |;
                       JSL.L CODE_9BC5AB                    ;9ECCA4|22ABC59B|;
                       LDA.W #$0000                         ;9ECCA8|A90000  |;
                       STA.B $97                            ;9ECCAB|8597    |;
                       LDA.W #$0A2A                         ;9ECCAD|A92A0A  |;
                       STA.B $95                            ;9ECCB0|8595    |;
                       LDA.W #$0002                         ;9ECCB2|A90200  |;
                       STA.B [$95]                          ;9ECCB5|8795    |;
                       JSL.L CODE_9ECFA5                    ;9ECCB7|22A5CF9E|;
                       LDA.W #$009E                         ;9ECCBB|A99E00  |;
                       STA.B $8F                            ;9ECCBE|858F    |;
                       LDA.W #$CC9A                         ;9ECCC0|A99ACC  |;
                       STA.B $8D                            ;9ECCC3|858D    |;
                       LDA.W $1E41                          ;9ECCC5|AD411E  |;
                       CMP.W #$000D                         ;9ECCC8|C90D00  |;
                       BEQ CODE_9ECCDC                      ;9ECCCB|F00F    |;
                       CMP.W #$000E                         ;9ECCCD|C90E00  |;
                       BEQ CODE_9ECCDC                      ;9ECCD0|F00A    |;
                       LDA.W #$009E                         ;9ECCD2|A99E00  |;
                       STA.B $8F                            ;9ECCD5|858F    |;
                       LDA.W #$CC94                         ;9ECCD7|A994CC  |;
                       STA.B $8D                            ;9ECCDA|858D    |;
 
          CODE_9ECCDC:
                       JSL.L CODE_9ECFA5                    ;9ECCDC|22A5CF9E|;
                       LDA.W #$0000                         ;9ECCE0|A90000  |;
                       STA.B $8F                            ;9ECCE3|858F    |;
                       LDA.W #$0A2A                         ;9ECCE5|A92A0A  |;
                       STA.B $8D                            ;9ECCE8|858D    |;
                       BRA CODE_9ECD36                      ;9ECCEA|804A    |;
 
          CODE_9ECCEC:
                       LDA.W $1C9A                          ;9ECCEC|AD9A1C  |;
                       JSL.L CODE_9BC5AB                    ;9ECCEF|22ABC59B|;
                       BRA CODE_9ECD19                      ;9ECCF3|8024    |;
 
          CODE_9ECCF5:
                       LDA.W $1C98                          ;9ECCF5|AD981C  |;
                       JSL.L CODE_9BC5AB                    ;9ECCF8|22ABC59B|;
                       BRA CODE_9ECD19                      ;9ECCFC|801B    |;
 
          CODE_9ECCFE:
                       LDA.W $1CDE                          ;9ECCFE|ADDE1C  |;
                       STA.B $8D                            ;9ECD01|858D    |;
                       BRA CODE_9ECD0A                      ;9ECD03|8005    |;
 
          CODE_9ECD05:
                       LDA.W $1CDC                          ;9ECD05|ADDC1C  |;
                       STA.B $8D                            ;9ECD08|858D    |;
 
          CODE_9ECD0A:
                       LDA.W #$009C                         ;9ECD0A|A99C00  |;
                       STA.B $8F                            ;9ECD0D|858F    |;
                       LDY.W #$0004                         ;9ECD0F|A00400  |;
                       LDA.B $8D                            ;9ECD12|A58D    |;
                       CLC                                  ;9ECD14|18      |;
                       ADC.B [$8D],Y                        ;9ECD15|778D    |;
                       STA.B $8D                            ;9ECD17|858D    |;
 
          CODE_9ECD19:
                       LDA.W #$0000                         ;9ECD19|A90000  |;
                       STA.B $97                            ;9ECD1C|8597    |;
                       LDA.W #$0A2A                         ;9ECD1E|A92A0A  |;
                       STA.B $95                            ;9ECD21|8595    |;
                       LDA.W #$0002                         ;9ECD23|A90200  |;
                       STA.B [$95]                          ;9ECD26|8795    |;
                       JSL.L CODE_9ECFA5                    ;9ECD28|22A5CF9E|;
                       LDA.W #$0000                         ;9ECD2C|A90000  |;
                       STA.B $8F                            ;9ECD2F|858F    |;
                       LDA.W #$0A2A                         ;9ECD31|A92A0A  |;
                       STA.B $8D                            ;9ECD34|858D    |;
 
          CODE_9ECD36:
                       LDY.W #$0003                         ;9ECD36|A00300  |;
 
          CODE_9ECD39:
                       LDA.B [$8D],Y                        ;9ECD39|B78D    |;
                       AND.W #$00FF                         ;9ECD3B|29FF00  |;
                       CMP.W #$0020                         ;9ECD3E|C92000  |;
                       BNE CODE_9ECD76                      ;9ECD41|D033    |;
                       LDA.B [$8D]                          ;9ECD43|A78D    |;
                       PHA                                  ;9ECD45|48      |;
                       TYA                                  ;9ECD46|98      |;
                       DEC A                                ;9ECD47|3A      |;
                       DEC A                                ;9ECD48|3A      |;
                       STA.B $B5                            ;9ECD49|85B5    |;
                       TYA                                  ;9ECD4B|98      |;
                       STA.B [$8D]                          ;9ECD4C|878D    |;
                       LDA.B $8D                            ;9ECD4E|A58D    |;
                       PHA                                  ;9ECD50|48      |;
                       JSL.L CODE_9ECD7C                    ;9ECD51|227CCD9E|;
                       DEC.W $0D3F                          ;9ECD55|CE3F0D  |;
                       PLA                                  ;9ECD58|68      |;
                       STA.B $8D                            ;9ECD59|858D    |;
                       LDA.B $8D                            ;9ECD5B|A58D    |;
                       CLC                                  ;9ECD5D|18      |;
                       ADC.B $B5                            ;9ECD5E|65B5    |;
                       STA.B $8D                            ;9ECD60|858D    |;
                       PLA                                  ;9ECD62|68      |;
                       SEC                                  ;9ECD63|38      |;
                       SBC.B $B5                            ;9ECD64|E5B5    |;
                       STA.B [$8D]                          ;9ECD66|878D    |;
                       LDA.B $A5                            ;9ECD68|A5A5    |;
                       CMP.W #$0015                         ;9ECD6A|C91500  |;
                       BMI CODE_9ECD73                      ;9ECD6D|3004    |;
                       LDA.B $B5                            ;9ECD6F|A5B5    |;
                       STA.B $A5                            ;9ECD71|85A5    |;
 
          CODE_9ECD73:
                       LDY.W #$0002                         ;9ECD73|A00200  |;
 
          CODE_9ECD76:
                       INY                                  ;9ECD76|C8      |;
                       TYA                                  ;9ECD77|98      |;
                       CMP.B [$8D]                          ;9ECD78|C78D    |;
                       BMI CODE_9ECD39                      ;9ECD7A|30BD    |;
 
          CODE_9ECD7C:
                       INC.W $0D3F                          ;9ECD7C|EE3F0D  |;
                       LDA.B $A5                            ;9ECD7F|A5A5    |;
                       CLC                                  ;9ECD81|18      |;
                       ADC.B [$8D]                          ;9ECD82|678D    |;
                       DEC A                                ;9ECD84|3A      |;
                       STA.B $A5                            ;9ECD85|85A5    |;
                       LDA.B [$8D]                          ;9ECD87|A78D    |;
                       DEC A                                ;9ECD89|3A      |;
                       TAY                                  ;9ECD8A|A8      |;
                       DEC A                                ;9ECD8B|3A      |;
                       STA.B $A9                            ;9ECD8C|85A9    |;
                       LDA.B [$8D],Y                        ;9ECD8E|B78D    |;
                       AND.W #$00FF                         ;9ECD90|29FF00  |;
                       BEQ CODE_9ECD98                      ;9ECD93|F003    |;
                       JMP.W CODE_9ECB2B                    ;9ECD95|4C2BCB  |;
 
          CODE_9ECD98:
                       DEC.B $A9                            ;9ECD98|C6A9    |;
                       JMP.W CODE_9ECB2B                    ;9ECD9A|4C2BCB  |;
 
          CODE_9ECD9D:
                       STZ.W $0D47                          ;9ECD9D|9C470D  |;
                       INC.W $0D49                          ;9ECDA0|EE490D  |;
                       LDA.W $0D49                          ;9ECDA3|AD490D  |;
                       SEC                                  ;9ECDA6|38      |;
                       SBC.W #$0008                         ;9ECDA7|E90800  |;
                       BMI CODE_9ECDB1                      ;9ECDAA|3005    |;
                       BVC CODE_9ECDB3                      ;9ECDAC|5005    |;
 
          CODE_9ECDAE:
                       JMP.W CODE_9EC9B0                    ;9ECDAE|4CB0C9  |;
 
          CODE_9ECDB1:
                       BVC CODE_9ECDAE                      ;9ECDB1|50FB    |;
 
          CODE_9ECDB3:
                       DEC.W $0D49                          ;9ECDB3|CE490D  |;
                       LDA.W #$0007                         ;9ECDB6|A90700  |;
                       STA.B $14                            ;9ECDB9|8514    |;
                       LDA.W #$007E                         ;9ECDBB|A97E00  |;
                       STA.B $12                            ;9ECDBE|8512    |;
                       LDA.W #$3B78                         ;9ECDC0|A9783B  |;
                       STA.B $10                            ;9ECDC3|8510    |;
                       LDA.B $12                            ;9ECDC5|A512    |;
                       STA.B $0E                            ;9ECDC7|850E    |;
 
          CODE_9ECDC9:
                       LDX.W #$0028                         ;9ECDC9|A22800  |;
                       LDA.B $10                            ;9ECDCC|A510    |;
                       CLC                                  ;9ECDCE|18      |;
                       ADC.W #$0040                         ;9ECDCF|694000  |;
                       STA.B $0C                            ;9ECDD2|850C    |;
                       JSL.L CODE_808F2F                    ;9ECDD4|222F8F80|;
                       LDA.B $0C                            ;9ECDD8|A50C    |;
                       STA.B $10                            ;9ECDDA|8510    |;
                       DEC.B $14                            ;9ECDDC|C614    |;
                       BPL CODE_9ECDC9                      ;9ECDDE|10E9    |;
                       RTL                                  ;9ECDE0|6B      |;
                       db $A5,$8F,$48,$A5,$8D,$48,$A9,$9C   ;9ECDE1|        |;
                       db $00,$85,$8F,$A9,$9B,$F7,$85,$8D   ;9ECDE9|        |;
                       db $22,$BE,$C7,$9E,$68,$85,$8D,$68   ;9ECDF1|        |;
                       db $85,$8F,$A5,$91,$D0,$06,$A9,$14   ;9ECDF9|        |;
                       db $00,$8D,$0F,$0D,$6B               ;9ECE01|        |;
 
          CODE_9ECE06:
                       LDA.B $8D                            ;9ECE06|A58D    |;
                       SEC                                  ;9ECE08|38      |;
                       SBC.W #$0A2A                         ;9ECE09|E92A0A  |;
                       STA.W $0A2A                          ;9ECE0C|8D2A0A  |;
                       LDA.W #$0A2A                         ;9ECE0F|A92A0A  |;
                       STA.B $8D                            ;9ECE12|858D    |;
                       RTL                                  ;9ECE14|6B      |;
 
          CODE_9ECE15:
                       PHX                                  ;9ECE15|DA      |;
                       LDA.B $A5                            ;9ECE16|A5A5    |;
                       PHA                                  ;9ECE18|48      |;
                       LDA.B $A7                            ;9ECE19|A5A7    |;
                       PHA                                  ;9ECE1B|48      |;
                       LDA.B $A9                            ;9ECE1C|A5A9    |;
                       PHA                                  ;9ECE1E|48      |;
                       LDA.B $AB                            ;9ECE1F|A5AB    |;
                       PHA                                  ;9ECE21|48      |;
                       LDA.B $AD                            ;9ECE22|A5AD    |;
                       PHA                                  ;9ECE24|48      |;
                       LDA.B $AF                            ;9ECE25|A5AF    |;
                       PHA                                  ;9ECE27|48      |;
                       LDY.W #$0002                         ;9ECE28|A00200  |;
 
          CODE_9ECE2B:
                       TYA                                  ;9ECE2B|98      |;
                       CMP.B [$8D]                          ;9ECE2C|C78D    |;
                       BNE CODE_9ECE33                      ;9ECE2E|D003    |;
                       JMP.W CODE_9ECF91                    ;9ECE30|4C91CF  |;
 
          CODE_9ECE33:
                       LDA.W $0D11                          ;9ECE33|AD110D  |;
                       ASL A                                ;9ECE36|0A      |;
                       ASL A                                ;9ECE37|0A      |;
                       ASL A                                ;9ECE38|0A      |;
                       ASL A                                ;9ECE39|0A      |;
                       ASL A                                ;9ECE3A|0A      |;
                       ADC.W $0D0F                          ;9ECE3B|6D0F0D  |;
                       ASL A                                ;9ECE3E|0A      |;
                       STA.B $A9                            ;9ECE3F|85A9    |;
                       LDA.B [$8D],Y                        ;9ECE41|B78D    |;
                       BIT.W #$0080                         ;9ECE43|898000  |;
                       BEQ CODE_9ECE4B                      ;9ECE46|F003    |;
                       JMP.W CODE_9ECF40                    ;9ECE48|4C40CF  |;
 
          CODE_9ECE4B:
                       AND.W #$00FF                         ;9ECE4B|29FF00  |;
                       BNE CODE_9ECE53                      ;9ECE4E|D003    |;
                       db $4C,$0A,$CF                       ;9ECE50|        |;
 
          CODE_9ECE53:
                       CMP.W #$0061                         ;9ECE53|C96100  |;
                       BCC CODE_9ECE60                      ;9ECE56|9008    |;
                       CMP.W #$007B                         ;9ECE58|C97B00  |;
                       BCS CODE_9ECE60                      ;9ECE5B|B003    |;
                       ADC.W #$FFE0                         ;9ECE5D|69E0FF  |;
 
          CODE_9ECE60:
                       SEC                                  ;9ECE60|38      |;
                       SBC.W #$0020                         ;9ECE61|E92000  |;
                       BNE CODE_9ECE69                      ;9ECE64|D003    |;
                       JMP.W CODE_9ECF0E                    ;9ECE66|4C0ECF  |;
 
          CODE_9ECE69:
                       STZ.B $AD                            ;9ECE69|64AD    |;
                       INC.B $AD                            ;9ECE6B|E6AD    |;
                       TAX                                  ;9ECE6D|AA      |;
                       LDA.L UNREACH_80D6FE,X               ;9ECE6E|BFFED680|;
                       AND.W #$00FF                         ;9ECE72|29FF00  |;
                       BIT.W #$0080                         ;9ECE75|898000  |;
                       BEQ CODE_9ECE7D                      ;9ECE78|F003    |;
                       ORA.W #$FF00                         ;9ECE7A|0900FF  |;
 
          CODE_9ECE7D:
                       CMP.W #$0000                         ;9ECE7D|C90000  |;
                       BPL CODE_9ECE88                      ;9ECE80|1006    |;
                       EOR.W #$FFFF                         ;9ECE82|49FFFF  |;
                       INC A                                ;9ECE85|1A      |;
                       STZ.B $AD                            ;9ECE86|64AD    |;
 
          CODE_9ECE88:
                       ASL A                                ;9ECE88|0A      |;
                       STA.B $A5                            ;9ECE89|85A5    |;
                       TAX                                  ;9ECE8B|AA      |;
                       LDA.L UNREACH_9ABD43,X               ;9ECE8C|BF43BD9A|;
                       CLC                                  ;9ECE90|18      |;
                       ADC.L $7E35AE                        ;9ECE91|6FAE357E|;
                       ADC.L $7E35A8                        ;9ECE95|6FA8357E|;
                       ORA.W $0D0D                          ;9ECE99|0D0D0D  |;
                       LDX.B $A9                            ;9ECE9C|A6A9    |;
                       STA.L $7E37F4,X                      ;9ECE9E|9FF4377E|;
                       TXA                                  ;9ECEA2|8A      |;
                       LSR A                                ;9ECEA3|4A      |;
                       CMP.W $0CD5                          ;9ECEA4|CDD50C  |;
                       BCS CODE_9ECEAC                      ;9ECEA7|B003    |;
                       STA.W $0CD5                          ;9ECEA9|8DD50C  |;
 
          CODE_9ECEAC:
                       CLC                                  ;9ECEAC|18      |;
                       ADC.W #$0021                         ;9ECEAD|692100  |;
                       CMP.W $0CD7                          ;9ECEB0|CDD70C  |;
                       BCC CODE_9ECEB8                      ;9ECEB3|9003    |;
                       db $8D,$D7,$0C                       ;9ECEB5|        |;
 
          CODE_9ECEB8:
                       LDX.B $A5                            ;9ECEB8|A6A5    |;
                       LDA.L UNREACH_9ABDDB,X               ;9ECEBA|BFDBBD9A|;
                       CLC                                  ;9ECEBE|18      |;
                       ADC.L $7E35AE                        ;9ECEBF|6FAE357E|;
                       ADC.L $7E35A8                        ;9ECEC3|6FA8357E|;
                       ORA.W $0D0D                          ;9ECEC7|0D0D0D  |;
                       LDX.B $A9                            ;9ECECA|A6A9    |;
                       STA.L $7E3834,X                      ;9ECECC|9F34387E|;
                       LDA.B $AD                            ;9ECED0|A5AD    |;
                       BEQ CODE_9ECF07                      ;9ECED2|F033    |;
                       LDX.B $A5                            ;9ECED4|A6A5    |;
                       LDA.L UNREACH_9ABD45,X               ;9ECED6|BF45BD9A|;
                       CLC                                  ;9ECEDA|18      |;
                       ADC.L $7E35AE                        ;9ECEDB|6FAE357E|;
                       ADC.L $7E35A8                        ;9ECEDF|6FA8357E|;
                       ORA.W $0D0D                          ;9ECEE3|0D0D0D  |;
                       LDX.B $A9                            ;9ECEE6|A6A9    |;
                       STA.L $7E37F6,X                      ;9ECEE8|9FF6377E|;
                       LDX.B $A5                            ;9ECEEC|A6A5    |;
                       LDA.L UNREACH_9ABDDD,X               ;9ECEEE|BFDDBD9A|;
                       CLC                                  ;9ECEF2|18      |;
                       ADC.L $7E35AE                        ;9ECEF3|6FAE357E|;
                       ADC.L $7E35A8                        ;9ECEF7|6FA8357E|;
                       ORA.W $0D0D                          ;9ECEFB|0D0D0D  |;
                       LDX.B $A9                            ;9ECEFE|A6A9    |;
                       STA.L $7E3836,X                      ;9ECF00|9F36387E|;
                       INC.W $0D0F                          ;9ECF04|EE0F0D  |;
 
          CODE_9ECF07:
                       INC.W $0D0F                          ;9ECF07|EE0F0D  |;
                       INY                                  ;9ECF0A|C8      |;
                       JMP.W CODE_9ECE2B                    ;9ECF0B|4C2BCE  |;
 
          CODE_9ECF0E:
                       LDA.L UNREACH_9ABD6F                 ;9ECF0E|AF6FBD9A|;
                       CLC                                  ;9ECF12|18      |;
                       ADC.L $7E35AE                        ;9ECF13|6FAE357E|;
                       ADC.L $7E35A8                        ;9ECF17|6FA8357E|;
                       ORA.W $0D0D                          ;9ECF1B|0D0D0D  |;
                       LDX.B $A9                            ;9ECF1E|A6A9    |;
                       STA.L $7E37F4,X                      ;9ECF20|9FF4377E|;
                       STA.L $7E3834,X                      ;9ECF24|9F34387E|;
                       TXA                                  ;9ECF28|8A      |;
                       LSR A                                ;9ECF29|4A      |;
                       CMP.W $0CD5                          ;9ECF2A|CDD50C  |;
                       BCS CODE_9ECF32                      ;9ECF2D|B003    |;
                       db $8D,$D5,$0C                       ;9ECF2F|        |;
 
          CODE_9ECF32:
                       CLC                                  ;9ECF32|18      |;
                       ADC.W #$0020                         ;9ECF33|692000  |;
                       CMP.W $0CD7                          ;9ECF36|CDD70C  |;
                       BCC CODE_9ECF07                      ;9ECF39|90CC    |;
                       db $8D,$D7,$0C,$80,$C7               ;9ECF3B|        |;
 
          CODE_9ECF40:
                       EOR.W #$FFFF                         ;9ECF40|49FFFF  |;
                       INC A                                ;9ECF43|1A      |;
                       PHA                                  ;9ECF44|48      |;
                       AND.W #$0030                         ;9ECF45|293000  |;
                       ASL A                                ;9ECF48|0A      |;
                       ASL A                                ;9ECF49|0A      |;
                       ASL A                                ;9ECF4A|0A      |;
                       ASL A                                ;9ECF4B|0A      |;
                       ASL A                                ;9ECF4C|0A      |;
                       ASL A                                ;9ECF4D|0A      |;
                       STA.W $0D0D                          ;9ECF4E|8D0D0D  |;
                       LDA.B $01,S                          ;9ECF51|A301    |;
                       AND.W #$0040                         ;9ECF53|294000  |;
                       ASL A                                ;9ECF56|0A      |;
                       ASL A                                ;9ECF57|0A      |;
                       ASL A                                ;9ECF58|0A      |;
                       ASL A                                ;9ECF59|0A      |;
                       ASL A                                ;9ECF5A|0A      |;
                       ASL A                                ;9ECF5B|0A      |;
                       ASL A                                ;9ECF5C|0A      |;
                       TSB.W $0D0D                          ;9ECF5D|0C0D0D  |;
                       PLA                                  ;9ECF60|68      |;
                       AND.W #$0003                         ;9ECF61|290300  |;
                       PHA                                  ;9ECF64|48      |;
                       ASL A                                ;9ECF65|0A      |;
                       TAX                                  ;9ECF66|AA      |;
                       LDA.L $7E35A8,X                      ;9ECF67|BFA8357E|;
                       STA.L $7E35A8                        ;9ECF6B|8FA8357E|;
                       PLA                                  ;9ECF6F|68      |;
                       DEC A                                ;9ECF70|3A      |;
                       XBA                                  ;9ECF71|EB      |;
                       AND.W #$FF00                         ;9ECF72|2900FF  |;
                       ASL A                                ;9ECF75|0A      |;
                       ASL A                                ;9ECF76|0A      |;
                       ASL A                                ;9ECF77|0A      |;
                       STA.W $0CD9                          ;9ECF78|8DD90C  |;
                       INY                                  ;9ECF7B|C8      |;
                       LDA.B [$8D],Y                        ;9ECF7C|B78D    |;
                       AND.W #$001F                         ;9ECF7E|291F00  |;
                       STA.W $0D0F                          ;9ECF81|8D0F0D  |;
                       INY                                  ;9ECF84|C8      |;
                       LDA.B [$8D],Y                        ;9ECF85|B78D    |;
                       AND.W #$001F                         ;9ECF87|291F00  |;
                       STA.W $0D11                          ;9ECF8A|8D110D  |;
                       INY                                  ;9ECF8D|C8      |;
                       JMP.W CODE_9ECE2B                    ;9ECF8E|4C2BCE  |;
 
          CODE_9ECF91:
                       PLA                                  ;9ECF91|68      |;
                       STA.B $AF                            ;9ECF92|85AF    |;
                       PLA                                  ;9ECF94|68      |;
                       STA.B $AD                            ;9ECF95|85AD    |;
                       PLA                                  ;9ECF97|68      |;
                       STA.B $AB                            ;9ECF98|85AB    |;
                       PLA                                  ;9ECF9A|68      |;
                       STA.B $A9                            ;9ECF9B|85A9    |;
                       PLA                                  ;9ECF9D|68      |;
                       STA.B $A7                            ;9ECF9E|85A7    |;
                       PLA                                  ;9ECFA0|68      |;
                       STA.B $A5                            ;9ECFA1|85A5    |;
                       PLX                                  ;9ECFA3|FA      |;
                       RTL                                  ;9ECFA4|6B      |;
 
          CODE_9ECFA5:
                       LDA.W #$0002                         ;9ECFA5|A90200  |;
                       STA.B $C5                            ;9ECFA8|85C5    |;
                       LDA.B [$95]                          ;9ECFAA|A795    |;
                       STA.B $C7                            ;9ECFAC|85C7    |;
 
          CODE_9ECFAE:
                       LDA.B $C5                            ;9ECFAE|A5C5    |;
                       CMP.B [$8D]                          ;9ECFB0|C78D    |;
                       BEQ CODE_9ECFC1                      ;9ECFB2|F00D    |;
                       TAY                                  ;9ECFB4|A8      |;
                       LDA.B [$8D],Y                        ;9ECFB5|B78D    |;
                       LDY.B $C7                            ;9ECFB7|A4C7    |;
                       STA.B [$95],Y                        ;9ECFB9|9795    |;
                       INC.B $C5                            ;9ECFBB|E6C5    |;
                       INC.B $C7                            ;9ECFBD|E6C7    |;
                       BRA CODE_9ECFAE                      ;9ECFBF|80ED    |;
 
          CODE_9ECFC1:
                       LDA.B $C7                            ;9ECFC1|A5C7    |;
                       STA.B [$95]                          ;9ECFC3|8795    |;
                       RTL                                  ;9ECFC5|6B      |;
 
          CODE_9ECFC6:
                       LDA.B $A5                            ;9ECFC6|A5A5    |;
                       STA.B $10                            ;9ECFC8|8510    |;
 
          CODE_9ECFCA:
                       LDA.B $A5                            ;9ECFCA|A5A5    |;
                       BNE CODE_9ECFD1                      ;9ECFCC|D003    |;
                       JMP.W CODE_9EC7BE                    ;9ECFCE|4CBEC7  |;
 
          CODE_9ECFD1:
                       LDA.B [$8D]                          ;9ECFD1|A78D    |;
                       CLC                                  ;9ECFD3|18      |;
                       ADC.B $8D                            ;9ECFD4|658D    |;
                       STA.B $8D                            ;9ECFD6|858D    |;
                       DEC.B $A5                            ;9ECFD8|C6A5    |;
                       BRA CODE_9ECFCA                      ;9ECFDA|80EE    |;
 
          CODE_9ECFDC:
                       LDA.W #$E0FE                         ;9ECFDC|A9FEE0  |;
                       STA.B $A9                            ;9ECFDF|85A9    |;
                       LDA.B $A5                            ;9ECFE1|A5A5    |;
                       AND.W #$000F                         ;9ECFE3|290F00  |;
                       STA.B $A5                            ;9ECFE6|85A5    |;
                       CMP.W #$0008                         ;9ECFE8|C90800  |;
                       BCC CODE_9ED009                      ;9ECFEB|901C    |;
                       LDY.W $19D4,X                        ;9ECFED|BCD419  |;
                       BPL CODE_9ECFF7                      ;9ECFF0|1005    |;
                       db $C9,$09,$00,$D0,$08               ;9ECFF2|        |;
 
          CODE_9ECFF7:
                       LDA.W $0EC3,X                        ;9ECFF7|BDC30E  |;
                       ORA.W $0EE3,X                        ;9ECFFA|1DE30E  |;
                       BNE CODE_9ED04D                      ;9ECFFD|D04E    |;
                       LDA.W $1543,X                        ;9ECFFF|BD4315  |;
                       BNE UNREACH_9ED008                   ;9ED002|D004    |;
                       JML.L CODE_9EA3DD                    ;9ED004|5CDDA39E|;
 
       UNREACH_9ED008:
                       db $6B                               ;9ED008|        |;
 
          CODE_9ED009:
                       CPX.W $0AD9                          ;9ED009|ECD90A  |;
                       BEQ CODE_9ED050                      ;9ED00C|F042    |;
                       LDA.W $0B7D,X                        ;9ED00E|BD7D0B  |;
                       CMP.W #$000C                         ;9ED011|C90C00  |;
                       BEQ CODE_9ED050                      ;9ED014|F03A    |;
                       LDA.W $0DB7,X                        ;9ED016|BDB70D  |;
                       BIT.W #$8000                         ;9ED019|890080  |;
                       BEQ CODE_9ED022                      ;9ED01C|F004    |;
                       EOR.W #$FFFF                         ;9ED01E|49FFFF  |;
                       INC A                                ;9ED021|1A      |;
 
          CODE_9ED022:
                       CMP.W #$0098                         ;9ED022|C99800  |;
                       BCC CODE_9ED050                      ;9ED025|9029    |;
                       LDY.W $19D4,X                        ;9ED027|BCD419  |;
                       BMI CODE_9ED039                      ;9ED02A|300D    |;
                       LDA.W $11A3,X                        ;9ED02C|BDA311  |;
                       CMP.W #$E4B6                         ;9ED02F|C9B6E4  |;
                       BCC CODE_9ED039                      ;9ED032|9005    |;
                       db $C9,$0E,$F9,$90,$14               ;9ED034|        |;
 
          CODE_9ED039:
                       LDA.B $A5                            ;9ED039|A5A5    |;
                       CMP.W $1163,X                        ;9ED03B|DD6311  |;
                       BEQ CODE_9ED07A                      ;9ED03E|F03A    |;
                       STA.B $AD                            ;9ED040|85AD    |;
                       LDA.W #$E0FE                         ;9ED042|A9FEE0  |;
                       JSL.L CODE_9EA3F1                    ;9ED045|22F1A39E|;
                       JML.L CODE_9EA719                    ;9ED049|5C19A79E|;
 
          CODE_9ED04D:
                       JMP.W CODE_9EA539                    ;9ED04D|4C39A5  |;
 
          CODE_9ED050:
                       LDA.W $0BCB,X                        ;9ED050|BDCB0B  |;
                       BNE CODE_9ED07A                      ;9ED053|D025    |;
                       LDA.B $A5                            ;9ED055|A5A5    |;
                       SEC                                  ;9ED057|38      |;
                       SBC.W $1163,X                        ;9ED058|FD6311  |;
                       STA.B $A5                            ;9ED05B|85A5    |;
                       BEQ CODE_9ED07A                      ;9ED05D|F01B    |;
                       EOR.W #$FFFF                         ;9ED05F|49FFFF  |;
                       INC A                                ;9ED062|1A      |;
                       AND.W #$0004                         ;9ED063|290400  |;
                       LSR A                                ;9ED066|4A      |;
                       DEC A                                ;9ED067|3A      |;
                       CLC                                  ;9ED068|18      |;
                       ADC.W $1163,X                        ;9ED069|7D6311  |;
                       AND.W #$0007                         ;9ED06C|290700  |;
                       STA.B $A5                            ;9ED06F|85A5    |;
                       STA.W $1163,X                        ;9ED071|9D6311  |;
                       LDA.W #$0006                         ;9ED074|A90600  |;
                       STA.W $0BCB,X                        ;9ED077|9DCB0B  |;
 
          CODE_9ED07A:
                       LDA.W $0BCB,X                        ;9ED07A|BDCB0B  |;
                       BEQ CODE_9ED08B                      ;9ED07D|F00C    |;
                       SEC                                  ;9ED07F|38      |;
                       SBC.W $0ADB                          ;9ED080|EDDB0A  |;
                       BPL CODE_9ED088                      ;9ED083|1003    |;
                       LDA.W #$0000                         ;9ED085|A90000  |;
 
          CODE_9ED088:
                       STA.W $0BCB,X                        ;9ED088|9DCB0B  |;
 
          CODE_9ED08B:
                       LDA.W $0B05,X                        ;9ED08B|BD050B  |;
                       BIT.W #$0002                         ;9ED08E|890200  |;
                       BNE CODE_9ED098                      ;9ED091|D005    |;
                       LDA.W #$E0FE                         ;9ED093|A9FEE0  |;
                       BRA CODE_9ED09B                      ;9ED096|8003    |;
 
          CODE_9ED098:
                       LDA.W #$E3C0                         ;9ED098|A9C0E3  |;
 
          CODE_9ED09B:
                       JSL.L CODE_9EA3F1                    ;9ED09B|22F1A39E|;
                       LDA.W $1163,X                        ;9ED09F|BD6311  |;
                       STA.B $AD                            ;9ED0A2|85AD    |;
                       JML.L CODE_9EA719                    ;9ED0A4|5C19A79E|;
 
          CODE_9ED0A8:
                       LDA.W $15D6                          ;9ED0A8|ADD615  |;
                       BNE CODE_9ED0FC                      ;9ED0AB|D04F    |;
                       STZ.B zpCurntTeamLoopVal             ;9ED0AD|6491    |;
                       LDA.W #$0002                         ;9ED0AF|A90200  |;
                       STA.B $8D                            ;9ED0B2|858D    |;
                       JSL.L CODE_9ED0BF                    ;9ED0B4|22BFD09E|;
                       STZ.B $8D                            ;9ED0B8|648D    |;
                       LDA.W #$0002                         ;9ED0BA|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9ED0BD|8591    |;
 
          CODE_9ED0BF:
                       JSR.W ManualPullGoalie               ;9ED0BF|206EFB  |; Hijack For Manual Pull Goalie
                       NOP                                  ;9ED0C2|EA      |;
                       NOP                                  ;9ED0C3|EA      |;
                       BMI CODE_9ED0FC                      ;9ED0C4|3036    |;
                       LDX.W $1766,Y                        ;9ED0C6|BE6617  |;
                       LDY.W $0AD9                          ;9ED0C9|ACD90A  |;
                       BMI CODE_9ED0FC                      ;9ED0CC|302E    |;
                       LDA.W $1503,Y                        ;9ED0CE|B90315  |;
                       CMP.W $1503,X                        ;9ED0D1|DD0315  |;
                       BNE CODE_9ED0FC                      ;9ED0D4|D026    |;
                       LDY.B zpCurntTeamLoopVal             ;9ED0D6|A491    |;
                       LDA.W $15D4                          ;9ED0D8|ADD415  |;
                       BIT.W #$0008                         ;9ED0DB|890800  |;
                       BNE Pen_PullGoalie                   ;9ED0DE|D00F    |;
                       LDA.W $19D0,Y                        ;9ED0E0|B9D019  |;
                       BNE CODE_9ED0FC                      ;9ED0E3|D017    |;
                       LDA.W $0DD3                          ;9ED0E5|ADD30D  |;
                       STA.B $A9                            ;9ED0E8|85A9    |;
                       JSL.L fn_cpu_pull_goalie_3rdperiod   ;9ED0EA|2230D19E|;
                       RTL                                  ;9ED0EE|6B      |;
 
       Pen_PullGoalie:
                       LDA.W GoalieInNetHmAw,Y              ;9ED0EF|B9AA17  |;
                       ORA.W #$FF00                         ;9ED0F2|0900FF  |;
                       STA.W GoalieInNetHmAw,Y              ;9ED0F5|99AA17  |;
                       JSL.L CODE_9FD407                    ;9ED0F8|2207D49F|;
 
          CODE_9ED0FC:
                       RTL                                  ;9ED0FC|6B      |;
 
          CODE_9ED0FD:
                       STZ.B zpCurntTeamLoopVal             ;9ED0FD|6491    |;
                       LDA.W #$0002                         ;9ED0FF|A90200  |;
                       STA.B $8D                            ;9ED102|858D    |;
                       JSL.L CODE_9ED10F                    ;9ED104|220FD19E|;
                       STZ.B $8D                            ;9ED108|648D    |;
                       LDA.W #$0002                         ;9ED10A|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9ED10D|8591    |;
 
          CODE_9ED10F:
                       LDY.B zpCurntTeamLoopVal             ;9ED10F|A491    |;
                       LDA.W GoalieInNetHmAw,Y              ;9ED111|B9AA17  |;
                       BPL CODE_9ED12F                      ;9ED114|1019    |;
                       db $29,$FF,$00,$C9,$0A,$00,$B0,$11   ;9ED116|        |;
                       db $99,$AA,$17,$B9,$D0,$19,$D0,$09   ;9ED11E|        |;
                       db $AF,$38,$31,$7E,$85,$A9,$4C,$30   ;9ED126|        |;
                       db $D1                               ;9ED12E|        |;
 
          CODE_9ED12F:
                       RTL                                  ;9ED12F|6B      |;
 
fn_cpu_pull_goalie_3rdperiod:
                       LDA.W period                         ;9ED130|AD3016  |; Load Period
                       CMP.W #$0002                         ;9ED133|C90200  |; Check If 3rd Period (0 Based)
                       BNE fn_end_cpu_pull_goalie_3rdperiod ;9ED136|D040    |; Not 3rd Period End Function
                       LDY.B $8D                            ;9ED138|A48D    |; CPU Team Home Away Value 0 Home 2 Away
                       LDA.W Score_HmAw,Y                   ;9ED13A|B98E17  |; Load CPU Score
                       LDY.B zpCurntTeamLoopVal             ;9ED13D|A491    |; Non CPU Team Home or Away Value 0 Home Away 2
                       SEC                                  ;9ED13F|38      |;
                       SBC.W Score_HmAw,Y                   ;9ED140|F98E17  |; Load Player Score and Subtract Player Score From CPU Score
                       BMI fn_end_cpu_pull_goalie_3rdperiod ;9ED143|3033    |; If CPU is winning; End function
                       BEQ fn_end_cpu_pull_goalie_3rdperiod ;9ED145|F031    |; If Tied; End Function
                       CMP.W #$0003                         ;9ED147|C90300  |; Goal difference upper limit
                       BCS fn_end_cpu_pull_goalie_3rdperiod ;9ED14A|B02C    |; Goal difference is >= 2; End function
                       LDA.W clock_remaining_time           ;9ED14C|AD3216  |; Load remaining time left in period
                       CMP.W #$003D                         ;9ED14F|C93D00  |; Compare remaining time to 61 seoncds
                       BCS fn_end_cpu_pull_goalie_3rdperiod ;9ED152|B024    |; remaining time is > 61 seconds; end function
                       LDA.W $1766,Y                        ;9ED154|B96617  |; ? Not sure what this mem value is
                       TAY                                  ;9ED157|A8      |;
                       LDA.W $14C3,Y                        ;9ED158|B9C314  |; ? Not sure what this mem value is
                       BNE skipsbc                          ;9ED15B|D008    |; Not sure what this jump bypasses
                       LDA.W #$0000                         ;9ED15D|A90000  |;
                       SEC                                  ;9ED160|38      |;
                       SBC.B $A9                            ;9ED161|E5A9    |; Check If puck is over center?
                       STA.B $A9                            ;9ED163|85A9    |;
 
              skipsbc:
                       LDA.B $A9                            ;9ED165|A5A9    |;
                       BMI fn_end_cpu_pull_goalie_3rdperiod ;9ED167|300F    |; Not over center; End Function
                       LDY.B zpCurntTeamLoopVal             ;9ED169|A491    |; Value contains Home or Away Team Loop 02 Away 00 Home
                       LDA.W GoalieInNetHmAw,Y              ;9ED16B|B9AA17  |; Load the Goalie value
                       ORA.W #$FF00                         ;9ED16E|0900FF  |;
                       STA.W GoalieInNetHmAw,Y              ;9ED171|99AA17  |;
                       JML.L CODE_9FD407                    ;9ED174|5C07D49F|;
 
fn_end_cpu_pull_goalie_3rdperiod:
                       RTL                                  ;9ED178|6B      |;
                       db $A9,$06,$00,$1D,$05,$0B,$9D,$05   ;9ED179|        |;
                       db $0B,$BD,$55,$0D,$C9,$D8,$FF,$30   ;9ED181|        |;
                       db $26,$C9,$29,$00,$10,$21,$BD,$B7   ;9ED189|        |;
                       db $0D,$89,$00,$80,$F0,$04,$49,$FF   ;9ED191|        |;
                       db $FF,$1A,$85,$00,$C9,$E4,$00,$30   ;9ED199|        |;
                       db $0E,$C9,$04,$01,$10,$09,$A9,$FB   ;9ED1A1|        |;
                       db $FF,$3D,$05,$0B,$9D,$05,$0B,$BD   ;9ED1A9|        |;
                       db $55,$0D,$C9,$D0,$FF,$30,$1F,$C9   ;9ED1B1|        |;
                       db $31,$00,$10,$1A,$BD,$B7,$0D,$89   ;9ED1B9|        |;
                       db $00,$80,$F0,$04,$49,$FF,$FF,$1A   ;9ED1C1|        |;
                       db $C9,$E4,$00,$30,$09,$A9,$FD,$FF   ;9ED1C9|        |;
                       db $3D,$05,$0B,$9D,$05,$0B,$BD,$D4   ;9ED1D1|        |;
                       db $19,$10,$38,$AD,$D6,$15,$D0,$33   ;9ED1D9|        |;
                       db $22,$4C,$DC,$9F,$BD,$83,$12,$89   ;9ED1E1|        |;
                       db $02,$00,$F0,$0C,$29,$FD,$FF,$9D   ;9ED1E9|        |;
                       db $83,$12,$9E,$03,$10,$9C,$C9,$0B   ;9ED1F1|        |;
                       db $BD,$03,$10,$38,$E5,$C1,$9D,$03   ;9ED1F9|        |;
                       db $10,$10,$49,$BD,$43,$13,$4A,$4A   ;9ED201|        |;
                       db $18,$7D,$03,$10,$10,$08,$A9,$00   ;9ED209|        |;
                       db $00,$80,$03,$4C,$E6,$8B,$9D,$03   ;9ED211|        |;
                       db $10,$AD,$D9,$0A,$10,$F5,$AD,$FF   ;9ED219|        |;
                       db $0E,$BC,$C3,$14,$F0,$04,$49,$FF   ;9ED221|        |;
                       db $FF,$1A,$C9,$00,$F8,$30,$E4,$64   ;9ED229|        |;
                       db $8D,$A9,$02,$00,$85,$91,$BD,$03   ;9ED231|        |;
                       db $15,$F0,$07,$64,$91,$A9,$02,$00   ;9ED239|        |;
                       db $85,$8D,$A4,$91,$B9,$AE,$17,$C9   ;9ED241|        |;
                       db $96,$00,$90,$C7,$20,$44,$DC,$22   ;9ED249|        |;
                       db $45,$B4,$9B,$22,$06,$DC,$9E,$1E   ;9ED251|        |;
                       db $E3,$12,$22,$63,$D2,$9E,$5E,$E3   ;9ED259|        |;
                       db $12,$6B,$BD,$23,$10,$38,$E5,$C1   ;9ED261|        |;
                       db $9D,$23,$10,$30,$03,$4C,$F7,$D2   ;9ED269|        |;
                       db $69,$05,$00,$9D,$23,$10,$AD,$DF   ;9ED271|        |;
                       db $0E,$EB,$29,$FF,$00,$89,$80,$00   ;9ED279|        |;
                       db $F0,$03,$09,$00,$FF,$18,$6D,$71   ;9ED281|        |;
                       db $0D,$85,$A5,$AD,$FF,$0E,$EB,$29   ;9ED289|        |;
                       db $FF,$00,$89,$80,$00,$F0,$03,$09   ;9ED291|        |;
                       db $00,$FF,$18,$6D,$D3,$0D,$85,$A9   ;9ED299|        |;
                       db $22,$74,$AB,$9E,$A5,$A9,$48,$A5   ;9ED2A1|        |;
                       db $A5,$48,$8A,$22,$02,$C0,$9B,$A5   ;9ED2A9|        |;
                       db $A5,$49,$FF,$FF,$1A,$38,$FD,$C4   ;9ED2B1|        |;
                       db $0E,$29,$FF,$00,$89,$80,$00,$F0   ;9ED2B9|        |;
                       db $03,$09,$00,$FF,$18,$63,$01,$38   ;9ED2C1|        |;
                       db $FD,$55,$0D,$85,$A5,$A5,$A9,$49   ;9ED2C9|        |;
                       db $FF,$FF,$1A,$38,$FD,$E4,$0E,$29   ;9ED2D1|        |;
                       db $FF,$00,$89,$80,$00,$F0,$03,$09   ;9ED2D9|        |;
                       db $00,$FF,$18,$63,$03,$38,$FD,$B7   ;9ED2E1|        |;
                       db $0D,$85,$A9,$68,$68,$22,$45,$B4   ;9ED2E9|        |;
                       db $9B,$A5,$A5,$9D,$A3,$10,$BD,$A3   ;9ED2F1|        |;
                       db $10,$85,$A5,$5C,$A9,$A8,$9E       ;9ED2F9|        |;
 
          CODE_9ED300:
                       LDA.B zpCurntTeamLoopVal             ;9ED300|A591    |;
                       TAY                                  ;9ED302|A8      |;
                       LDA.W #$009C                         ;9ED303|A99C00  |;
                       STA.B $C7                            ;9ED306|85C7    |;
                       LDA.W $1CDC,Y                        ;9ED308|B9DC1C  |;
                       STA.B $C5                            ;9ED30B|85C5    |;
                       LDY.W #$000A                         ;9ED30D|A00A00  |;
                       CLC                                  ;9ED310|18      |;
                       ADC.B [$C5],Y                        ;9ED311|77C5    |;
                       STA.B $C5                            ;9ED313|85C5    |;
                       STZ.B $A5                            ;9ED315|64A5    |;
                       LDA.B [$C5]                          ;9ED317|A7C5    |;
                       XBA                                  ;9ED319|EB      |;
 
          CODE_9ED31A:
                       INC.B $A5                            ;9ED31A|E6A5    |;
                       ASL A                                ;9ED31C|0A      |;
                       ASL A                                ;9ED31D|0A      |;
                       ASL A                                ;9ED31E|0A      |;
                       ASL A                                ;9ED31F|0A      |;
                       BNE CODE_9ED31A                      ;9ED320|D0F8    |;
                       RTL                                  ;9ED322|6B      |;
 
          CODE_9ED323:
                       BRA CODE_9ED32C                      ;9ED323|8007    |;
 
          CODE_9ED325:
                       LDA.B $8D                            ;9ED325|A58D    |;
                       CLC                                  ;9ED327|18      |;
                       ADC.B [$8D]                          ;9ED328|678D    |;
                       STA.B $8D                            ;9ED32A|858D    |;
 
          CODE_9ED32C:
                       DEC.B $A5                            ;9ED32C|C6A5    |;
                       BPL CODE_9ED325                      ;9ED32E|10F5    |;
                       RTL                                  ;9ED330|6B      |;
                       LDA.W #$0006                         ;9ED331|A90600  |;
                       ORA.W $0B05,X                        ;9ED334|1D050B  |;
                       STA.W $0B05,X                        ;9ED337|9D050B  |;
                       LDA.W $0D55,X                        ;9ED33A|BD550D  |;
                       CMP.W #$FFD8                         ;9ED33D|C9D8FF  |;
                       BMI CODE_9ED368                      ;9ED340|3026    |;
                       CMP.W #$0029                         ;9ED342|C92900  |;
                       BPL CODE_9ED368                      ;9ED345|1021    |;
                       LDA.W $0DB7,X                        ;9ED347|BDB70D  |;
                       BIT.W #$8000                         ;9ED34A|890080  |;
                       BEQ CODE_9ED353                      ;9ED34D|F004    |;
                       EOR.W #$FFFF                         ;9ED34F|49FFFF  |;
                       INC A                                ;9ED352|1A      |;
 
          CODE_9ED353:
                       STA.B $00                            ;9ED353|8500    |;
                       CMP.W #$00E4                         ;9ED355|C9E400  |;
                       BMI CODE_9ED368                      ;9ED358|300E    |;
                       CMP.W #$0104                         ;9ED35A|C90401  |;
                       BPL CODE_9ED368                      ;9ED35D|1009    |;
                       LDA.W #$FFFB                         ;9ED35F|A9FBFF  |;
                       AND.W $0B05,X                        ;9ED362|3D050B  |;
                       STA.W $0B05,X                        ;9ED365|9D050B  |;
 
          CODE_9ED368:
                       LDA.W $0D55,X                        ;9ED368|BD550D  |;
                       CMP.W #$FFD0                         ;9ED36B|C9D0FF  |;
                       BMI CODE_9ED391                      ;9ED36E|3021    |;
                       CMP.W #$0031                         ;9ED370|C93100  |;
                       BPL CODE_9ED391                      ;9ED373|101C    |;
                       LDA.W $0DB7,X                        ;9ED375|BDB70D  |;
                       BIT.W #$8000                         ;9ED378|890080  |;
                       BEQ CODE_9ED381                      ;9ED37B|F004    |;
                       EOR.W #$FFFF                         ;9ED37D|49FFFF  |;
                       INC A                                ;9ED380|1A      |;
 
          CODE_9ED381:
                       STA.B $00                            ;9ED381|8500    |;
                       CMP.W #$00E4                         ;9ED383|C9E400  |;
                       BMI CODE_9ED391                      ;9ED386|3009    |;
                       LDA.W #$FFFD                         ;9ED388|A9FDFF  |;
                       AND.W $0B05,X                        ;9ED38B|3D050B  |;
                       STA.W $0B05,X                        ;9ED38E|9D050B  |;
 
          CODE_9ED391:
                       JSL.L CODE_9FDC4C                    ;9ED391|224CDC9F|;
                       LDA.W $1283,X                        ;9ED395|BD8312  |;
                       BIT.W #$0002                         ;9ED398|890200  |;
                       BEQ CODE_9ED3B5                      ;9ED39B|F018    |;
                       AND.W #$FFFD                         ;9ED39D|29FDFF  |;
                       STA.W $1283,X                        ;9ED3A0|9D8312  |;
                       STZ.W $1003,X                        ;9ED3A3|9E0310  |;
                       STZ.W $1023,X                        ;9ED3A6|9E2310  |;
                       LDA.W #$0008                         ;9ED3A9|A90800  |;
                       STA.W $10A3,X                        ;9ED3AC|9DA310  |;
                       LDA.W #$FFFF                         ;9ED3AF|A9FFFF  |;
                       STA.W $1063,X                        ;9ED3B2|9D6310  |;
 
          CODE_9ED3B5:
                       LDY.W $19D4,X                        ;9ED3B5|BCD419  |;
                       BPL CODE_9ED408                      ;9ED3B8|104E    |;
                       LDA.W $0D55,X                        ;9ED3BA|BD550D  |;
                       CMP.W #$FFCB                         ;9ED3BD|C9CBFF  |;
                       BMI CODE_9ED3DD                      ;9ED3C0|301B    |;
                       CMP.W #$0035                         ;9ED3C2|C93500  |;
                       BPL CODE_9ED3DD                      ;9ED3C5|1016    |;
                       LDA.W $0DB7,X                        ;9ED3C7|BDB70D  |;
                       BIT.W #$8000                         ;9ED3CA|890080  |;
                       BEQ CODE_9ED3D3                      ;9ED3CD|F004    |;
                       EOR.W #$FFFF                         ;9ED3CF|49FFFF  |;
                       INC A                                ;9ED3D2|1A      |;
 
          CODE_9ED3D3:
                       CMP.W #$010F                         ;9ED3D3|C90F01  |;
                       BCS CODE_9ED3DD                      ;9ED3D6|B005    |;
                       CMP.W #$00D3                         ;9ED3D8|C9D300  |;
                       BCS CODE_9ED41E                      ;9ED3DB|B041    |;
 
          CODE_9ED3DD:
                       LDA.W #$009E                         ;9ED3DD|A99E00  |;
                       STA.B $8B                            ;9ED3E0|858B    |;
                       LDA.W #$D0FC                         ;9ED3E2|A9FCD0  |;
                       STA.B $89                            ;9ED3E5|8589    |;
                       LDY.W #$0004                         ;9ED3E7|A00400  |;
                       LDA.W $0D55,X                        ;9ED3EA|BD550D  |;
                       BPL CODE_9ED3F2                      ;9ED3ED|1003    |;
                       LDY.W #$FFFC                         ;9ED3EF|A0FCFF  |;
 
          CODE_9ED3F2:
                       STY.B $A5                            ;9ED3F2|84A5    |;
                       LDA.W #$00F4                         ;9ED3F4|A9F400  |;
                       STA.B $A9                            ;9ED3F7|85A9    |;
                       LDA.W $14C3,X                        ;9ED3F9|BDC314  |;
                       BEQ CODE_9ED403                      ;9ED3FC|F005    |;
                       LDA.W #$FF0C                         ;9ED3FE|A90CFF  |;
                       STA.B $A9                            ;9ED401|85A9    |;
 
          CODE_9ED403:
                       JML.L CODE_9EA5A4                    ;9ED403|5CA4A59E|;
                       db $6B                               ;9ED407|        |;
 
          CODE_9ED408:
                       LDA.W $15D6                          ;9ED408|ADD615  |;
                       BNE CODE_9ED415                      ;9ED40B|D008    |;
                       CPX.W $0AD9                          ;9ED40D|ECD90A  |;
                       BEQ CODE_9ED415                      ;9ED410|F003    |;
                       JMP.W CODE_9ED44E                    ;9ED412|4C4ED4  |;
 
          CODE_9ED415:
                       LDA.W $0B05,X                        ;9ED415|BD050B  |;
                       ORA.W #$0001                         ;9ED418|090100  |;
                       STA.W $0B05,X                        ;9ED41B|9D050B  |;
 
          CODE_9ED41E:
                       JMP.W CODE_9ED46A                    ;9ED41E|4C6AD4  |;
 
          CODE_9ED421:
                       LDA.W #$009E                         ;9ED421|A99E00  |;
                       STA.B $8B                            ;9ED424|858B    |;
                       LDA.W #$D0FC                         ;9ED426|A9FCD0  |;
                       STA.B $89                            ;9ED429|8589    |;
                       LDY.W #$0004                         ;9ED42B|A00400  |;
                       LDA.W $0D55,X                        ;9ED42E|BD550D  |;
                       BPL CODE_9ED436                      ;9ED431|1003    |;
                       LDY.W #$FFFC                         ;9ED433|A0FCFF  |;
 
          CODE_9ED436:
                       STY.B $A5                            ;9ED436|84A5    |;
                       LDA.W #$00F9                         ;9ED438|A9F900  |;
                       STA.B $A9                            ;9ED43B|85A9    |;
                       LDA.W $14C3,X                        ;9ED43D|BDC314  |;
                       BEQ CODE_9ED447                      ;9ED440|F005    |;
                       LDA.W #$FF07                         ;9ED442|A907FF  |;
                       STA.B $A9                            ;9ED445|85A9    |;
 
          CODE_9ED447:
                       STZ.W $1023,X                        ;9ED447|9E2310  |;
                       JML.L CODE_9EA5A4                    ;9ED44A|5CA4A59E|;
 
          CODE_9ED44E:
                       LDA.W $0B05,X                        ;9ED44E|BD050B  |;
                       BIT.W #$0001                         ;9ED451|890100  |;
                       BNE CODE_9ED41E                      ;9ED454|D0C8    |;
                       BIT.W #$0002                         ;9ED456|890200  |;
                       BNE CODE_9ED421                      ;9ED459|D0C6    |;
                       LDY.W $19D4,X                        ;9ED45B|BCD419  |;
                       LDA.W $0AA4,Y                        ;9ED45E|B9A40A  |;
                       CMP.W #$0008                         ;9ED461|C90800  |;
                       BNE CODE_9ED46A                      ;9ED464|D004    |;
                       JSL.L CODE_9EA539                    ;9ED466|2239A59E|;
 
          CODE_9ED46A:
                       LDA.W $1543,X                        ;9ED46A|BD4315  |;
                       BNE CODE_9ED476                      ;9ED46D|D007    |;
                       LDA.W #$E0FE                         ;9ED46F|A9FEE0  |;
                       JSL.L CODE_9EA3F1                    ;9ED472|22F1A39E|;
 
          CODE_9ED476:
                       LDA.W $15D6                          ;9ED476|ADD615  |;
                       BNE CODE_9ED49F                      ;9ED479|D024    |;
                       LDA.W $1083,X                        ;9ED47B|BD8310  |;
                       BMI CODE_9ED4B4                      ;9ED47E|3034    |;
                       CPX.W $0AD9                          ;9ED480|ECD90A  |;
                       BNE CODE_9ED497                      ;9ED483|D012    |;
                       LDA.W $0DB7,X                        ;9ED485|BDB70D  |;
                       CMP.W #$00BB                         ;9ED488|C9BB00  |;
                       BPL CODE_9ED4A0                      ;9ED48B|1013    |;
                       CMP.W #$FF45                         ;9ED48D|C945FF  |;
                       BMI CODE_9ED4A0                      ;9ED490|300E    |;
                       db $9E,$83,$10,$80,$09               ;9ED492|        |;
 
          CODE_9ED497:
                       LDA.W #$FFFF                         ;9ED497|A9FFFF  |;
                       STA.W $1083,X                        ;9ED49A|9D8310  |;
                       BRA CODE_9ED4B4                      ;9ED49D|8015    |;
 
          CODE_9ED49F:
                       RTL                                  ;9ED49F|6B      |;
 
          CODE_9ED4A0:
                       LDA.W $1083,X                        ;9ED4A0|BD8310  |;
                       SEC                                  ;9ED4A3|38      |;
                       SBC.B $C1                            ;9ED4A4|E5C1    |;
                       STA.W $1083,X                        ;9ED4A6|9D8310  |;
                       BPL CODE_9ED4B4                      ;9ED4A9|1009    |;
                       LDA.W #$0008                         ;9ED4AB|A90800  |;
                       STA.B $A5                            ;9ED4AE|85A5    |;
                       JSL.L CODE_9EB88A                    ;9ED4B0|228AB89E|;
 
          CODE_9ED4B4:
                       LDA.W $1543,X                        ;9ED4B4|BD4315  |;
                       BEQ CODE_9ED4BC                      ;9ED4B7|F003    |;
                       JMP.W CODE_9ED49F                    ;9ED4B9|4C9FD4  |;
 
          CODE_9ED4BC:
                       LDA.W $1003,X                        ;9ED4BC|BD0310  |;
                       SEC                                  ;9ED4BF|38      |;
                       SBC.B $C1                            ;9ED4C0|E5C1    |;
                       STA.W $1003,X                        ;9ED4C2|9D0310  |;
                       BMI CODE_9ED4CA                      ;9ED4C5|3003    |;
                       JMP.W CODE_9EDB21                    ;9ED4C7|4C21DB  |;
 
          CODE_9ED4CA:
                       LDA.W $1343,X                        ;9ED4CA|BD4313  |;
                       LSR A                                ;9ED4CD|4A      |;
                       CLC                                  ;9ED4CE|18      |;
                       ADC.W $1003,X                        ;9ED4CF|7D0310  |;
                       CMP.W #$0000                         ;9ED4D2|C90000  |;
                       BPL CODE_9ED4DA                      ;9ED4D5|1003    |;
                       db $A9,$00,$00                       ;9ED4D7|        |;
 
          CODE_9ED4DA:
                       STA.W $1003,X                        ;9ED4DA|9D0310  |;
                       LDA.W $19D4,X                        ;9ED4DD|BDD419  |;
                       BPL CODE_9ED514                      ;9ED4E0|1032    |;
                       LDA.W $0DD3                          ;9ED4E2|ADD30D  |;
                       STA.B $A5                            ;9ED4E5|85A5    |;
                       LDA.W $0DB7,X                        ;9ED4E7|BDB70D  |;
                       EOR.B $A5                            ;9ED4EA|45A5    |;
                       STA.B $A9                            ;9ED4EC|85A9    |;
                       BPL CODE_9ED504                      ;9ED4EE|1014    |;
                       STZ.B $A5                            ;9ED4F0|64A5    |;
                       LDA.W #$00F4                         ;9ED4F2|A9F400  |;
                       STA.B $AD                            ;9ED4F5|85AD    |;
                       LDA.W $14C3,X                        ;9ED4F7|BDC314  |;
                       BEQ CODE_9ED501                      ;9ED4FA|F005    |;
                       LDA.W #$FF0C                         ;9ED4FC|A90CFF  |;
                       STA.B $AD                            ;9ED4FF|85AD    |;
 
          CODE_9ED501:
                       JMP.W CODE_9EDA51                    ;9ED501|4C51DA  |;
 
          CODE_9ED504:
                       DEC.W $1063,X                        ;9ED504|DE6310  |;
                       BPL CODE_9ED50F                      ;9ED507|1006    |;
                       LDA.W #$FFFF                         ;9ED509|A9FFFF  |;
                       STA.W $1063,X                        ;9ED50C|9D6310  |;
 
          CODE_9ED50F:
                       CPX.W $0AD9                          ;9ED50F|ECD90A  |;
                       BEQ CODE_9ED517                      ;9ED512|F003    |;
 
          CODE_9ED514:
                       JMP.W CODE_9ED5A7                    ;9ED514|4CA7D5  |;
 
          CODE_9ED517:
                       LDA.W $1083,X                        ;9ED517|BD8310  |;
                       BPL CODE_9ED522                      ;9ED51A|1006    |;
                       db $A9,$5A,$00,$9D,$83,$10           ;9ED51C|        |;
 
          CODE_9ED522:
                       LDA.W #$FFFF                         ;9ED522|A9FFFF  |;
                       STA.W $1063,X                        ;9ED525|9D6310  |;
                       LDA.W $1083,X                        ;9ED528|BD8310  |;
                       SEC                                  ;9ED52B|38      |;
                       SBC.W #$005A                         ;9ED52C|E95A00  |;
                       BPL CODE_9ED574                      ;9ED52F|1043    |;
                       JSL.L CODE_808658                    ;9ED531|22588680|;
                       CMP.W #$C000                         ;9ED535|C900C0  |;
                       BCC CODE_9ED574                      ;9ED538|903A    |;
                       LDA.W #$0005                         ;9ED53A|A90500  |;
                       STA.B $A5                            ;9ED53D|85A5    |;
                       STZ.B $89                            ;9ED53F|6489    |;
                       LDA.W $1503,X                        ;9ED541|BD0315  |;
                       BNE CODE_9ED54B                      ;9ED544|D005    |;
                       db $A9,$0C,$00,$85,$89               ;9ED546|        |;
 
          CODE_9ED54B:
                       LDY.B $89                            ;9ED54B|A489    |;
                       LDA.W $1283,Y                        ;9ED54D|B98312  |;
                       BIT.W #$1000                         ;9ED550|890010  |;
                       BNE CODE_9ED55D                      ;9ED553|D008    |;
                       LDA.W $0B1D,Y                        ;9ED555|B91D0B  |;
                       CMP.W #$0023                         ;9ED558|C92300  |;
                       BCC CODE_9ED577                      ;9ED55B|901A    |;
 
          CODE_9ED55D:
                       INC.B $89                            ;9ED55D|E689    |;
                       INC.B $89                            ;9ED55F|E689    |;
                       DEC.B $A5                            ;9ED561|C6A5    |;
                       BPL CODE_9ED54B                      ;9ED563|10E6    |;
                       LDA.W #$0001                         ;9ED565|A90100  |;
                       STA.W $0D2D                          ;9ED568|8D2D0D  |;
                       JSL.L CODE_9EE89F                    ;9ED56B|229FE89E|;
                       LDA.W $0AD9                          ;9ED56F|ADD90A  |;
                       BMI CODE_9ED58C                      ;9ED572|3018    |;
 
          CODE_9ED574:
                       JMP.W CODE_9ED6AE                    ;9ED574|4CAED6  |;
 
          CODE_9ED577:
                       LDY.W #$0000                         ;9ED577|A00000  |;
                       CMP.W #$0014                         ;9ED57A|C91400  |;
                       BCS CODE_9ED574                      ;9ED57D|B0F5    |;
                       LDA.W #$005A                         ;9ED57F|A95A00  |;
                       STA.W $1543,X                        ;9ED582|9D4315  |;
                       LDA.W #$E66C                         ;9ED585|A96CE6  |;
                       JSL.L CODE_9EA3F1                    ;9ED588|22F1A39E|;
 
          CODE_9ED58C:
                       RTL                                  ;9ED58C|6B      |;
 
          CODE_9ED58D:
                       JSL.L CODE_9BB445                    ;9ED58D|2245B49B|;
                       LDA.B $A5                            ;9ED591|A5A5    |;
                       STA.W $1163,X                        ;9ED593|9D6311  |;
                       STA.W $14E3,X                        ;9ED596|9DE314  |;
                       LDA.W #$E528                         ;9ED599|A928E5  |;
                       JSL.L CODE_9EA3F1                    ;9ED59C|22F1A39E|;
                       LDA.W #$00F0                         ;9ED5A0|A9F000  |;
                       STA.W $0BEB,X                        ;9ED5A3|9DEB0B  |;
                       RTL                                  ;9ED5A6|6B      |;
 
          CODE_9ED5A7:
                       LDY.W $19D4,X                        ;9ED5A7|BCD419  |;
                       BMI CODE_9ED5F9                      ;9ED5AA|304D    |;
                       LDA.W $0ADD,Y                        ;9ED5AC|B9DD0A  |;
                       CMP.W #$0001                         ;9ED5AF|C90100  |;
                       BNE CODE_9ED5F9                      ;9ED5B2|D045    |;
                       CPX.W $0AD9                          ;9ED5B4|ECD90A  |;
                       BEQ CODE_9ED574                      ;9ED5B7|F0BB    |;
                       LDA.W $0D71                          ;9ED5B9|AD710D  |;
                       SEC                                  ;9ED5BC|38      |;
                       SBC.W $0D55,X                        ;9ED5BD|FD550D  |;
                       STA.B $A5                            ;9ED5C0|85A5    |;
                       LDA.W $0DD3                          ;9ED5C2|ADD30D  |;
                       SEC                                  ;9ED5C5|38      |;
                       SBC.W $0DB7,X                        ;9ED5C6|FDB70D  |;
                       STA.B $A9                            ;9ED5C9|85A9    |;
                       LDA.W JoyPad,Y                       ;9ED5CB|B97607  |;
                       BIT.W #$4000                         ;9ED5CE|890040  |; Manual Goalie Control Logix when X is pressed
                       BNE UNREACH_9ED5E8                   ;9ED5D1|D015    |;
                       LDA.W $0AB8,Y                        ;9ED5D3|B9B80A  |;
                       BIT.W #$0040                         ;9ED5D6|894000  |;
                       BEQ CODE_9ED574                      ;9ED5D9|F099    |;
                       db $B9,$A4,$0A,$C9,$08,$00,$F0,$AA   ;9ED5DB|        |;
                       db $29,$07,$00,$80,$AB               ;9ED5E3|        |;
 
       UNREACH_9ED5E8:
                       db $B9,$A4,$0A,$C9,$08,$00,$D0,$03   ;9ED5E8|        |;
                       db $4C,$76,$D6,$29,$07,$00,$4C,$7C   ;9ED5F0|        |;
                       db $D6                               ;9ED5F8|        |;
 
          CODE_9ED5F9:
                       LDA.W $0D71                          ;9ED5F9|AD710D  |;
                       SEC                                  ;9ED5FC|38      |;
                       SBC.W $0D55,X                        ;9ED5FD|FD550D  |;
                       STA.B $A5                            ;9ED600|85A5    |;
                       LDA.W $0DD3                          ;9ED602|ADD30D  |;
                       SEC                                  ;9ED605|38      |;
                       SBC.W $0DB7,X                        ;9ED606|FDB70D  |;
                       STA.B $A9                            ;9ED609|85A9    |;
                       LDA.W $0AD9                          ;9ED60B|ADD90A  |;
                       BMI CODE_9ED640                      ;9ED60E|3030    |;
                       LSR A                                ;9ED610|4A      |;
                       TAY                                  ;9ED611|A8      |;
                       LDA.W $1503,Y                        ;9ED612|B90315  |;
                       CMP.W $1503,X                        ;9ED615|DD0315  |;
                       BEQ CODE_9ED673                      ;9ED618|F059    |;
                       LDA.W $0BEB,X                        ;9ED61A|BDEB0B  |;
                       BNE CODE_9ED673                      ;9ED61D|D054    |;
                       JSL.L CODE_808658                    ;9ED61F|22588680|;
                       CMP.W #$0A00                         ;9ED623|C9000A  |;
                       BCS CODE_9ED673                      ;9ED626|B04B    |;
                       LDA.W $0B1D,X                        ;9ED628|BD1D0B  |;
                       CMP.W #$0023                         ;9ED62B|C92300  |;
                       BCS CODE_9ED6AE                      ;9ED62E|B07E    |;
                       LDA.W $0DD3                          ;9ED630|ADD30D  |;
                       CMP.W #$FEF7                         ;9ED633|C9F7FE  |;
                       BMI CODE_9ED6AE                      ;9ED636|3076    |;
                       CMP.W #$0109                         ;9ED638|C90901  |;
                       BPL CODE_9ED6AE                      ;9ED63B|1071    |;
                       JMP.W CODE_9ED58D                    ;9ED63D|4C8DD5  |;
 
          CODE_9ED640:
                       LDA.W $1063,X                        ;9ED640|BD6310  |;
                       BNE CODE_9ED673                      ;9ED643|D02E    |;
                       db $BD,$1D,$0B,$C9,$2D,$00,$B0,$61   ;9ED645|        |;
                       db $AD,$D3,$0D,$C9,$F7,$FE,$30,$59   ;9ED64D|        |;
                       db $C9,$09,$01,$10,$54,$A5,$91,$49   ;9ED655|        |;
                       db $02,$00,$A8,$B9,$AE,$17,$C9,$3C   ;9ED65D|        |;
                       db $00,$B0,$46,$22,$58,$86,$80,$C9   ;9ED665|        |;
                       db $00,$08,$B0,$3D,$80,$03           ;9ED66D|        |;
 
          CODE_9ED673:
                       JMP.W CODE_9ED6AE                    ;9ED673|4CAED6  |;
                       db $22,$45,$B4,$9B,$A5,$A5,$9D,$63   ;9ED676|        |;
                       db $11,$A0,$B6,$E4,$98,$22,$F1,$A3   ;9ED67E|        |;
                       db $9E,$A9,$68,$01,$9D,$EB,$0B,$AD   ;9ED686|        |;
                       db $BE,$19,$18,$69,$0A,$00,$30,$03   ;9ED68E|        |;
                       db $8D,$BE,$19,$A9,$96,$00,$9D,$E3   ;9ED696|        |;
                       db $14,$18,$6F,$E0,$35,$7E,$8F,$E0   ;9ED69E|        |;
                       db $35,$7E,$A9,$1E,$00,$85,$81,$6B   ;9ED6A6|        |;
 
          CODE_9ED6AE:
                       LDA.W $14C3,X                        ;9ED6AE|BDC314  |;
                       BNE CODE_9ED6C9                      ;9ED6B1|D016    |;
                       LDA.W #$0000                         ;9ED6B3|A90000  |;
                       STA.B $8B                            ;9ED6B6|858B    |;
                       LDA.W #$0D17                         ;9ED6B8|A9170D  |;
                       STA.B $89                            ;9ED6BB|8589    |;
                       LDA.W #$0104                         ;9ED6BD|A90401  |;
                       STA.B $B1                            ;9ED6C0|85B1    |;
                       LDA.W #$0108                         ;9ED6C2|A90801  |;
                       STA.B $B5                            ;9ED6C5|85B5    |;
                       BRA CODE_9ED6D8                      ;9ED6C7|800F    |;
 
          CODE_9ED6C9:
                       LDA.W #$0D1B                         ;9ED6C9|A91B0D  |;
                       STA.B $89                            ;9ED6CC|8589    |;
                       LDA.W #$FEFC                         ;9ED6CE|A9FCFE  |;
                       STA.B $B1                            ;9ED6D1|85B1    |;
                       LDA.W #$FEF8                         ;9ED6D3|A9F8FE  |;
                       STA.B $B5                            ;9ED6D6|85B5    |;
 
          CODE_9ED6D8:
                       CPX.W $0AD9                          ;9ED6D8|ECD90A  |;
                       BEQ CODE_9ED6EA                      ;9ED6DB|F00D    |;
                       JSR.W CODE_9EDC44                    ;9ED6DD|2044DC  |;
                       JSL.L CODE_9BB445                    ;9ED6E0|2245B49B|;
                       JSL.L CODE_9EDC06                    ;9ED6E4|2206DC9E|;
                       BRA CODE_9ED6FD                      ;9ED6E8|8013    |;
 
          CODE_9ED6EA:
                       LDA.W $19D4,X                        ;9ED6EA|BDD419  |;
                       BPL CODE_9ED6FD                      ;9ED6ED|100E    |;
                       LDA.W $14C3,X                        ;9ED6EF|BDC314  |;
                       EOR.W #$0001                         ;9ED6F2|490100  |;
                       ASL A                                ;9ED6F5|0A      |;
                       ASL A                                ;9ED6F6|0A      |;
                       STA.B $A5                            ;9ED6F7|85A5    |;
                       JSL.L CODE_9EDC06                    ;9ED6F9|2206DC9E|;
 
          CODE_9ED6FD:
                       LDA.W $0DB7,X                        ;9ED6FD|BDB70D  |;
                       CMP.W #$FEFB                         ;9ED700|C9FBFE  |;
                       BMI CODE_9ED72D                      ;9ED703|3028    |;
                       CMP.W #$0105                         ;9ED705|C90501  |;
                       BPL CODE_9ED72D                      ;9ED708|1023    |;
 
          CODE_9ED70A:
                       LDA.W $0D71                          ;9ED70A|AD710D  |;
                       STA.B $A5                            ;9ED70D|85A5    |;
                       LDA.W $0DD3                          ;9ED70F|ADD30D  |;
                       STA.B $A9                            ;9ED712|85A9    |;
                       JSL.L CODE_9EDBC0                    ;9ED714|22C0DB9E|;
                       LDA.B $A9                            ;9ED718|A5A9    |;
                       CMP.W #$FFD2                         ;9ED71A|C9D2FF  |;
                       BMI CODE_9ED755                      ;9ED71D|3036    |;
                       CMP.W #$002E                         ;9ED71F|C92E00  |;
                       BPL CODE_9ED755                      ;9ED722|1031    |;
                       LDA.B $A9                            ;9ED724|A5A9    |;
                       PHA                                  ;9ED726|48      |;
                       LDA.B $A5                            ;9ED727|A5A5    |;
                       PHA                                  ;9ED729|48      |;
                       JMP.W CODE_9ED7F1                    ;9ED72A|4CF1D7  |;
 
          CODE_9ED72D:
                       LDA.W $19D4,X                        ;9ED72D|BDD419  |;
                       BPL CODE_9ED70A                      ;9ED730|10D8    |;
                       db $64,$AD,$64,$A5,$BD,$55,$0D,$C9   ;9ED732|        |;
                       db $D3,$FF,$30,$14,$C9,$2D,$00,$10   ;9ED73A|        |;
                       db $0F,$A9,$88,$00,$85,$A5,$BD,$55   ;9ED742|        |;
                       db $0D,$10,$05,$A9,$78,$FF,$85,$A5   ;9ED74A|        |;
                       db $4C,$51,$DA                       ;9ED752|        |;
 
          CODE_9ED755:
                       LDA.W $0EFF                          ;9ED755|ADFF0E  |;
                       XBA                                  ;9ED758|EB      |;
                       LSR A                                ;9ED759|4A      |;
                       AND.W #$007F                         ;9ED75A|297F00  |;
                       BIT.W #$0040                         ;9ED75D|894000  |;
                       BEQ CODE_9ED765                      ;9ED760|F003    |;
                       ORA.W #$FF80                         ;9ED762|0980FF  |;
 
          CODE_9ED765:
                       STA.B $14                            ;9ED765|8514    |;
                       CMP.W #$8000                         ;9ED767|C90080  |;
                       ROR A                                ;9ED76A|6A      |;
                       ADC.B $14                            ;9ED76B|6514    |;
                       CLC                                  ;9ED76D|18      |;
                       ADC.W $0DD3                          ;9ED76E|6DD30D  |;
                       STA.B $A9                            ;9ED771|85A9    |;
                       LDA.B $A9                            ;9ED773|A5A9    |;
                       CMP.W #$00E0                         ;9ED775|C9E000  |;
                       BPL CODE_9ED781                      ;9ED778|1007    |;
                       LDA.B $A9                            ;9ED77A|A5A9    |;
                       CMP.W #$FF20                         ;9ED77C|C920FF  |;
                       BPL CODE_9ED7CA                      ;9ED77F|1049    |;
 
          CODE_9ED781:
                       LDA.W $0D07                          ;9ED781|AD070D  |;
                       BPL CODE_9ED7B2                      ;9ED784|102C    |;
                       LDA.W $0AD9                          ;9ED786|ADD90A  |;
                       BMI CODE_9ED7B2                      ;9ED789|3027    |;
                       LDA.W $0792                          ;9ED78B|AD9207  |;
                       AND.W #$0180                         ;9ED78E|298001  |;
                       BEQ CODE_9ED7D2                      ;9ED791|F03F    |;
 
          CODE_9ED793:
                       LDA.W $0EDF                          ;9ED793|ADDF0E  |;
                       XBA                                  ;9ED796|EB      |;
                       AND.W #$00FF                         ;9ED797|29FF00  |;
                       BIT.W #$0080                         ;9ED79A|898000  |;
                       BEQ CODE_9ED7A2                      ;9ED79D|F003    |;
                       ORA.W #$FF00                         ;9ED79F|0900FF  |;
 
          CODE_9ED7A2:
                       STA.B $14                            ;9ED7A2|8514    |;
                       CMP.W #$8000                         ;9ED7A4|C90080  |;
                       ROR A                                ;9ED7A7|6A      |;
                       ADC.B $14                            ;9ED7A8|6514    |;
                       CLC                                  ;9ED7AA|18      |;
                       ADC.W $0D71                          ;9ED7AB|6D710D  |;
                       STA.B $A5                            ;9ED7AE|85A5    |;
                       BRA CODE_9ED7E7                      ;9ED7B0|8035    |;
 
          CODE_9ED7B2:
                       LDA.W $0EDF                          ;9ED7B2|ADDF0E  |;
                       XBA                                  ;9ED7B5|EB      |;
                       LSR A                                ;9ED7B6|4A      |;
                       AND.W #$007F                         ;9ED7B7|297F00  |;
                       BIT.W #$0040                         ;9ED7BA|894000  |;
                       BEQ CODE_9ED7C2                      ;9ED7BD|F003    |;
                       ORA.W #$FF80                         ;9ED7BF|0980FF  |;
 
          CODE_9ED7C2:
                       CLC                                  ;9ED7C2|18      |;
                       ADC.W $0D71                          ;9ED7C3|6D710D  |;
                       STA.B $A5                            ;9ED7C6|85A5    |;
                       BRA CODE_9ED7E7                      ;9ED7C8|801D    |;
 
          CODE_9ED7CA:
                       LDA.W $0792                          ;9ED7CA|AD9207  |;
                       AND.W #$0380                         ;9ED7CD|298003  |;
                       BEQ CODE_9ED793                      ;9ED7D0|F0C1    |;
 
          CODE_9ED7D2:
                       LDA.W $0EDF                          ;9ED7D2|ADDF0E  |;
                       XBA                                  ;9ED7D5|EB      |;
                       AND.W #$00FF                         ;9ED7D6|29FF00  |;
                       BIT.W #$0080                         ;9ED7D9|898000  |;
                       BEQ CODE_9ED7E1                      ;9ED7DC|F003    |;
                       ORA.W #$FF00                         ;9ED7DE|0900FF  |;
 
          CODE_9ED7E1:
                       CLC                                  ;9ED7E1|18      |;
                       ADC.W $0D71                          ;9ED7E2|6D710D  |;
                       STA.B $A5                            ;9ED7E5|85A5    |;
 
          CODE_9ED7E7:
                       JSL.L CODE_9EDBC0                    ;9ED7E7|22C0DB9E|;
                       LDA.B $A9                            ;9ED7EB|A5A9    |;
                       PHA                                  ;9ED7ED|48      |;
                       LDA.B $A5                            ;9ED7EE|A5A5    |;
                       PHA                                  ;9ED7F0|48      |;
 
          CODE_9ED7F1:
                       LDA.B $A5                            ;9ED7F1|A5A5    |;
                       LDY.B $A9                            ;9ED7F3|A4A9    |;
                       JSL.L CODE_9CA554                    ;9ED7F5|2254A59C|;
                       STA.B $A5                            ;9ED7F9|85A5    |;
                       CMP.W #$001E                         ;9ED7FB|C91E00  |;
                       BCS CODE_9ED808                      ;9ED7FE|B008    |;
                       PLA                                  ;9ED800|68      |;
                       STA.B $A5                            ;9ED801|85A5    |;
                       PLA                                  ;9ED803|68      |;
                       STA.B $A9                            ;9ED804|85A9    |;
                       BRA CODE_9ED853                      ;9ED806|804B    |;
 
          CODE_9ED808:
                       LDA.B $A5                            ;9ED808|A5A5    |;
                       INC A                                ;9ED80A|1A      |;
                       STA.B $AD                            ;9ED80B|85AD    |;
                       LDA.W #$0014                         ;9ED80D|A91400  |;
                       STA.B $B5                            ;9ED810|85B5    |;
                       LDA.W $15D8                          ;9ED812|ADD815  |;
                       BIT.W #$0008                         ;9ED815|890800  |;
                       BEQ CODE_9ED81F                      ;9ED818|F005    |;
                       LDA.W #$001C                         ;9ED81A|A91C00  |;
                       STA.B $B5                            ;9ED81D|85B5    |;
 
          CODE_9ED81F:
                       PLA                                  ;9ED81F|68      |;
                       STA.B $A5                            ;9ED820|85A5    |;
                       PLA                                  ;9ED822|68      |;
                       STA.B $A9                            ;9ED823|85A9    |;
                       TAX                                  ;9ED825|AA      |;
                       LDA.B $B5                            ;9ED826|A5B5    |;
                       JSL.L CODE_808FC9                    ;9ED828|22C98F80|;
                       LDA.B $AD                            ;9ED82C|A5AD    |;
                       STA.B $04                            ;9ED82E|8504    |;
                       JSL.L CODE_8091FC                    ;9ED830|22FC9180|;
                       LDA.B $00                            ;9ED834|A500    |;
                       STA.B $A9                            ;9ED836|85A9    |;
                       LDA.B $B5                            ;9ED838|A5B5    |;
                       ADC.W #$0006                         ;9ED83A|690600  |;
                       STA.B $B5                            ;9ED83D|85B5    |;
                       LDX.B $A5                            ;9ED83F|A6A5    |;
                       JSL.L CODE_808FC9                    ;9ED841|22C98F80|;
                       LDA.B $AD                            ;9ED845|A5AD    |;
                       STA.B $04                            ;9ED847|8504    |;
                       JSL.L CODE_8091FC                    ;9ED849|22FC9180|;
                       LDA.B $00                            ;9ED84D|A500    |;
                       STA.B $A5                            ;9ED84F|85A5    |;
                       LDX.B $E4                            ;9ED851|A6E4    |;
 
          CODE_9ED853:
                       LDA.B $A9                            ;9ED853|A5A9    |;
                       CLC                                  ;9ED855|18      |;
                       ADC.B $B1                            ;9ED856|65B1    |;
                       STA.B $A9                            ;9ED858|85A9    |;
                       STA.B $AD                            ;9ED85A|85AD    |;
                       LDY.W $19D4,X                        ;9ED85C|BCD419  |;
                       BMI CODE_9ED871                      ;9ED85F|3010    |;
                       CPX.W $0AD9                          ;9ED861|ECD90A  |;
                       BEQ CODE_9ED86E                      ;9ED864|F008    |;
                       LDA.W JoyPad,Y                       ;9ED866|B97607  |;
                       BIT.W #$0080                         ;9ED869|898000  |;
                       BNE CODE_9ED8A4                      ;9ED86C|D036    |;
 
          CODE_9ED86E:
                       JMP.W CODE_9EDA2C                    ;9ED86E|4C2CDA  |;
 
          CODE_9ED871:
                       LDY.W #$0002                         ;9ED871|A00200  |;
                       LDA.B [$89],Y                        ;9ED874|B789    |;
                       CMP.W #$0023                         ;9ED876|C92300  |;
                       BCC CODE_9ED87E                      ;9ED879|9003    |;
                       JMP.W CODE_9EDA51                    ;9ED87B|4C51DA  |;
 
          CODE_9ED87E:
                       LDA.B [$89]                          ;9ED87E|A789    |;
                       CMP.W #$FFE7                         ;9ED880|C9E7FF  |;
                       BMI CODE_9ED8A1                      ;9ED883|301C    |;
                       CMP.W #$0019                         ;9ED885|C91900  |;
                       BPL CODE_9ED8A1                      ;9ED888|1017    |;
                       LDA.B [$89],Y                        ;9ED88A|B789    |;
                       CMP.W #$0013                         ;9ED88C|C91300  |;
                       BCS CODE_9ED89E                      ;9ED88F|B00D    |;
                       LDA.W $0DD3                          ;9ED891|ADD30D  |;
                       CMP.W #$FEF7                         ;9ED894|C9F7FE  |;
                       BMI CODE_9ED89E                      ;9ED897|3005    |;
                       CMP.W #$0109                         ;9ED899|C90901  |;
                       BMI CODE_9ED8A4                      ;9ED89C|3006    |;
 
          CODE_9ED89E:
                       JMP.W CODE_9EDA2C                    ;9ED89E|4C2CDA  |;
 
          CODE_9ED8A1:
                       JMP.W CODE_9EDB3E                    ;9ED8A1|4C3EDB  |;
 
          CODE_9ED8A4:
                       LDA.W $0EC3,X                        ;9ED8A4|BDC30E  |;
                       CMP.W #$8000                         ;9ED8A7|C90080  |;
                       ROR A                                ;9ED8AA|6A      |;
                       STA.W $0EC3,X                        ;9ED8AB|9DC30E  |;
                       LDA.W $0EE3,X                        ;9ED8AE|BDE30E  |;
                       CMP.W #$8000                         ;9ED8B1|C90080  |;
                       ROR A                                ;9ED8B4|6A      |;
                       STA.W $0EE3,X                        ;9ED8B5|9DE30E  |;
                       LDA.W $0B05,X                        ;9ED8B8|BD050B  |;
                       BIT.W #$0002                         ;9ED8BB|890200  |;
                       BEQ CODE_9ED8C3                      ;9ED8BE|F003    |;
                       db $4C,$92,$D9                       ;9ED8C0|        |;
 
          CODE_9ED8C3:
                       LDA.W $0EDF                          ;9ED8C3|ADDF0E  |;
                       XBA                                  ;9ED8C6|EB      |;
                       LSR A                                ;9ED8C7|4A      |;
                       LSR A                                ;9ED8C8|4A      |;
                       AND.W #$003F                         ;9ED8C9|293F00  |;
                       BIT.W #$0020                         ;9ED8CC|892000  |;
                       BEQ CODE_9ED8D4                      ;9ED8CF|F003    |;
                       ORA.W #$FFC0                         ;9ED8D1|09C0FF  |;
 
          CODE_9ED8D4:
                       CLC                                  ;9ED8D4|18      |;
                       ADC.W $0D71                          ;9ED8D5|6D710D  |;
                       SEC                                  ;9ED8D8|38      |;
                       SBC.W $0D55,X                        ;9ED8D9|FD550D  |;
                       STA.B $A5                            ;9ED8DC|85A5    |;
                       STA.B $02                            ;9ED8DE|8502    |;
                       BIT.W #$8000                         ;9ED8E0|890080  |;
                       BEQ CODE_9ED8E9                      ;9ED8E3|F004    |;
                       EOR.W #$FFFF                         ;9ED8E5|49FFFF  |;
                       INC A                                ;9ED8E8|1A      |;
 
          CODE_9ED8E9:
                       STA.B $00                            ;9ED8E9|8500    |;
                       LDA.W $0EFF                          ;9ED8EB|ADFF0E  |;
                       XBA                                  ;9ED8EE|EB      |;
                       LSR A                                ;9ED8EF|4A      |;
                       LSR A                                ;9ED8F0|4A      |;
                       AND.W #$003F                         ;9ED8F1|293F00  |;
                       BIT.W #$0020                         ;9ED8F4|892000  |;
                       BEQ CODE_9ED8FC                      ;9ED8F7|F003    |;
                       ORA.W #$FFC0                         ;9ED8F9|09C0FF  |;
 
          CODE_9ED8FC:
                       CLC                                  ;9ED8FC|18      |;
                       ADC.W $0DD3                          ;9ED8FD|6DD30D  |;
                       SEC                                  ;9ED900|38      |;
                       SBC.W $0DB7,X                        ;9ED901|FDB70D  |;
                       STA.B $A9                            ;9ED904|85A9    |;
                       BIT.W #$8000                         ;9ED906|890080  |;
                       BEQ CODE_9ED90F                      ;9ED909|F004    |;
                       EOR.W #$FFFF                         ;9ED90B|49FFFF  |;
                       INC A                                ;9ED90E|1A      |;
 
          CODE_9ED90F:
                       STA.B $04                            ;9ED90F|8504    |;
                       JSL.L CODE_9BB445                    ;9ED911|2245B49B|;
                       LDA.B $A5                            ;9ED915|A5A5    |;
                       CMP.W #$0008                         ;9ED917|C90800  |;
                       BEQ CODE_9ED93F                      ;9ED91A|F023    |;
                       SEC                                  ;9ED91C|38      |;
                       SBC.W $1163,X                        ;9ED91D|FD6311  |;
                       AND.W #$0007                         ;9ED920|290700  |;
                       STA.B $B1                            ;9ED923|85B1    |;
                       BEQ CODE_9ED93F                      ;9ED925|F018    |;
                       JMP.W CODE_9ED9A0                    ;9ED927|4CA0D9  |;
 
       UNREACH_9ED92A:
                       db $AD,$FF,$0E,$C9,$00,$08,$10,$0D   ;9ED92A|        |;
                       db $C9,$00,$F8,$30,$08,$A9,$08,$00   ;9ED932|        |;
                       db $85,$A5,$4C,$04,$DA               ;9ED93A|        |;
 
          CODE_9ED93F:
                       LDA.W $1163,X                        ;9ED93F|BD6311  |;
                       BEQ CODE_9ED965                      ;9ED942|F021    |;
                       CMP.W #$0004                         ;9ED944|C90400  |;
                       BEQ CODE_9ED96E                      ;9ED947|F025    |;
                       CMP.W #$0001                         ;9ED949|C90100  |;
                       BEQ CODE_9ED977                      ;9ED94C|F029    |;
                       CMP.W #$0005                         ;9ED94E|C90500  |;
                       BEQ CODE_9ED977                      ;9ED951|F024    |;
                       CMP.W #$0007                         ;9ED953|C90700  |;
                       BEQ UNREACH_9ED97F                   ;9ED956|F027    |;
                       CMP.W #$0003                         ;9ED958|C90300  |;
                       BEQ UNREACH_9ED97F                   ;9ED95B|F022    |;
                       LDA.W $0792                          ;9ED95D|AD9207  |;
                       AND.W #$0001                         ;9ED960|290100  |;
                       BRA CODE_9ED9A0                      ;9ED963|803B    |;
 
          CODE_9ED965:
                       LDA.B $02                            ;9ED965|A502    |;
                       BPL CODE_9ED972                      ;9ED967|1009    |;
 
          CODE_9ED969:
                       LDA.W #$0007                         ;9ED969|A90700  |;
                       BRA CODE_9ED9A0                      ;9ED96C|8032    |;
 
          CODE_9ED96E:
                       LDA.B $02                            ;9ED96E|A502    |;
                       BPL CODE_9ED969                      ;9ED970|10F7    |;
 
          CODE_9ED972:
                       LDA.W #$0001                         ;9ED972|A90100  |;
                       BRA CODE_9ED9A0                      ;9ED975|8029    |;
 
          CODE_9ED977:
                       LDA.B $00                            ;9ED977|A500    |;
                       CMP.B $04                            ;9ED979|C504    |;
                       BPL CODE_9ED972                      ;9ED97B|10F5    |;
                       BRA CODE_9ED969                      ;9ED97D|80EA    |;
 
       UNREACH_9ED97F:
                       db $A5,$04,$C5,$00,$10,$ED,$80,$E2   ;9ED97F|        |;
 
          CODE_9ED987:
                       LDA.B $A5                            ;9ED987|A5A5    |;
                       CLC                                  ;9ED989|18      |;
                       ADC.W #$0006                         ;9ED98A|690600  |;
                       STA.B $A5                            ;9ED98D|85A5    |;
                       JMP.W CODE_9EDA04                    ;9ED98F|4C04DA  |;
                       db $BD,$5D,$0B,$38,$FD,$63,$11,$29   ;9ED992|        |;
                       db $07,$00,$85,$B1,$F0,$9F           ;9ED99A|        |;
 
          CODE_9ED9A0:
                       CMP.W #$0004                         ;9ED9A0|C90400  |;
                       BEQ UNREACH_9ED92A                   ;9ED9A3|F085    |;
                       LSR A                                ;9ED9A5|4A      |;
                       LSR A                                ;9ED9A6|4A      |;
                       STA.B $A5                            ;9ED9A7|85A5    |;
                       LDA.W $0E03,X                        ;9ED9A9|BD030E  |;
                       BIT.W #$0800                         ;9ED9AC|890008  |;
                       BEQ CODE_9ED9B8                      ;9ED9AF|F007    |;
                       db $A5,$A5,$49,$01,$00,$85,$A5       ;9ED9B1|        |;
 
          CODE_9ED9B8:
                       LDA.B $B1                            ;9ED9B8|A5B1    |;
                       CMP.W #$0004                         ;9ED9BA|C90400  |;
                       BCC CODE_9ED9C5                      ;9ED9BD|9006    |;
                       EOR.W #$FFFF                         ;9ED9BF|49FFFF  |;
                       ADC.W #$0008                         ;9ED9C2|690800  |;
 
          CODE_9ED9C5:
                       CMP.W #$0002                         ;9ED9C5|C90200  |;
                       BCS CODE_9ED987                      ;9ED9C8|B0BD    |;
                       LDA.W $0DF9                          ;9ED9CA|ADF90D  |;
                       SEC                                  ;9ED9CD|38      |;
                       SBC.W #$0008                         ;9ED9CE|E90800  |;
                       BPL CODE_9EDA04                      ;9ED9D1|1031    |;
                       LDA.W $0E01                          ;9ED9D3|AD010E  |;
                       SEC                                  ;9ED9D6|38      |;
                       SBC.W #$0800                         ;9ED9D7|E90008  |;
                       BPL CODE_9EDA04                      ;9ED9DA|1028    |;
                       LDA.B $A5                            ;9ED9DC|A5A5    |;
                       CLC                                  ;9ED9DE|18      |;
                       ADC.W #$0004                         ;9ED9DF|690400  |;
                       STA.B $A5                            ;9ED9E2|85A5    |;
                       LDY.W #$0002                         ;9ED9E4|A00200  |;
                       LDA.B [$89],Y                        ;9ED9E7|B789    |;
                       CMP.W #$0009                         ;9ED9E9|C90900  |;
                       BCC CODE_9EDA04                      ;9ED9EC|9016    |;
                       LDA.W $1163,X                        ;9ED9EE|BD6311  |;
                       CMP.W #$0002                         ;9ED9F1|C90200  |;
                       BEQ CODE_9EDA04                      ;9ED9F4|F00E    |;
                       CMP.W #$0006                         ;9ED9F6|C90600  |;
                       BEQ CODE_9EDA04                      ;9ED9F9|F009    |;
                       LDA.W $0AD9                          ;9ED9FB|ADD90A  |;
                       BMI CODE_9EDA04                      ;9ED9FE|3004    |;
                       DEC.B $A5                            ;9EDA00|C6A5    |;
                       DEC.B $A5                            ;9EDA02|C6A5    |;
 
          CODE_9EDA04:
                       ASL.B $A5                            ;9EDA04|06A5    |;
                       LDA.W #$009E                         ;9EDA06|A99E00  |;
                       STA.B $8F                            ;9EDA09|858F    |;
                       LDA.W #$DBF4                         ;9EDA0B|A9F4DB  |;
                       STA.B $8D                            ;9EDA0E|858D    |;
                       LDY.B $A5                            ;9EDA10|A4A5    |;
                       LDA.B [$8D],Y                        ;9EDA12|B78D    |;
                       STA.W $14E3,X                        ;9EDA14|9DE314  |;
                       JSL.L CODE_9EA3F1                    ;9EDA17|22F1A39E|;
                       LDA.L $7E35E0                        ;9EDA1B|AFE0357E|;
                       CLC                                  ;9EDA1F|18      |;
                       ADC.W #$0096                         ;9EDA20|699600  |;
                       STA.L $7E35E0                        ;9EDA23|8FE0357E|;
                       LDA.W #$001E                         ;9EDA27|A91E00  |;
                       STA.B $81                            ;9EDA2A|8581    |;
 
          CODE_9EDA2C:
                       LDA.B [$89]                          ;9EDA2C|A789    |;
                       STA.B $A5                            ;9EDA2E|85A5    |;
                       LDA.W $0DD3                          ;9EDA30|ADD30D  |;
                       SEC                                  ;9EDA33|38      |;
                       SBC.W #$00FC                         ;9EDA34|E9FC00  |;
                       BPL CODE_9EDA42                      ;9EDA37|1009    |;
                       LDA.W $0DD3                          ;9EDA39|ADD30D  |;
                       SEC                                  ;9EDA3C|38      |;
                       SBC.W #$FF04                         ;9EDA3D|E904FF  |;
                       BPL CODE_9EDA51                      ;9EDA40|100F    |;
 
          CODE_9EDA42:
                       LDA.W #$0018                         ;9EDA42|A91800  |;
                       STA.B $A5                            ;9EDA45|85A5    |;
                       LDA.W $0D71                          ;9EDA47|AD710D  |;
                       BPL CODE_9EDA51                      ;9EDA4A|1005    |;
                       db $A9,$E8,$FF,$85,$A5               ;9EDA4C|        |;
 
          CODE_9EDA51:
                       LDA.W $19D4,X                        ;9EDA51|BDD419  |;
                       BMI CODE_9EDA59                      ;9EDA54|3003    |;
                       JMP.W CODE_9EDBF3                    ;9EDA56|4CF3DB  |;
 
          CODE_9EDA59:
                       LDY.W $0AD9                          ;9EDA59|ACD90A  |;
                       BMI CODE_9EDAA4                      ;9EDA5C|3046    |;
                       LDA.W $1503,X                        ;9EDA5E|BD0315  |;
                       CMP.W $1503,Y                        ;9EDA61|D90315  |;
                       BEQ CODE_9EDAA4                      ;9EDA64|F03E    |;
                       LDA.W $11A3,Y                        ;9EDA66|B9A311  |;
                       CMP.W #$ED4A                         ;9EDA69|C94AED  |;
                       BCC CODE_9EDAA1                      ;9EDA6C|9033    |;
                       CMP.W #$F021                         ;9EDA6E|C921F0  |;
                       BCS CODE_9EDAA1                      ;9EDA71|B02E    |;
                       LDA.W $0EE3,Y                        ;9EDA73|B9E30E  |;
                       BIT.W #$8000                         ;9EDA76|890080  |;
                       BEQ CODE_9EDA7F                      ;9EDA79|F004    |;
                       EOR.W #$FFFF                         ;9EDA7B|49FFFF  |;
                       INC A                                ;9EDA7E|1A      |;
 
          CODE_9EDA7F:
                       STA.B $00                            ;9EDA7F|8500    |;
                       LDA.W $0EC3,Y                        ;9EDA81|B9C30E  |;
                       BIT.W #$8000                         ;9EDA84|890080  |;
                       BEQ CODE_9EDA8D                      ;9EDA87|F004    |;
                       EOR.W #$FFFF                         ;9EDA89|49FFFF  |;
                       INC A                                ;9EDA8C|1A      |;
 
          CODE_9EDA8D:
                       LSR A                                ;9EDA8D|4A      |;
                       CMP.B $00                            ;9EDA8E|C500    |;
                       BCS CODE_9EDAA1                      ;9EDA90|B00F    |;
                       LDA.W $0BA1                          ;9EDA92|ADA10B  |;
                       BNE CODE_9EDAA4                      ;9EDA95|D00D    |;
                       STZ.W $0EC3,X                        ;9EDA97|9EC30E  |;
                       STZ.W $0EE3,X                        ;9EDA9A|9EE30E  |;
                       INC.W $0BA1                          ;9EDA9D|EEA10B  |;
                       RTL                                  ;9EDAA0|6B      |;
 
          CODE_9EDAA1:
                       STZ.W $0BA1                          ;9EDAA1|9CA10B  |;
 
          CODE_9EDAA4:
                       LDA.B $AD                            ;9EDAA4|A5AD    |;
                       STA.B $A9                            ;9EDAA6|85A9    |;
                       PHA                                  ;9EDAA8|48      |;
                       LDA.B $A5                            ;9EDAA9|A5A5    |;
                       PHA                                  ;9EDAAB|48      |;
                       LDA.W $0EC3,X                        ;9EDAAC|BDC30E  |;
                       XBA                                  ;9EDAAF|EB      |;
                       AND.W #$00FF                         ;9EDAB0|29FF00  |;
                       BIT.W #$0080                         ;9EDAB3|898000  |;
                       BEQ CODE_9EDABB                      ;9EDAB6|F003    |;
                       ORA.W #$FF00                         ;9EDAB8|0900FF  |;
 
          CODE_9EDABB:
                       EOR.W #$FFFF                         ;9EDABB|49FFFF  |;
                       INC A                                ;9EDABE|1A      |;
                       STA.B $A5                            ;9EDABF|85A5    |;
                       PLA                                  ;9EDAC1|68      |;
                       CLC                                  ;9EDAC2|18      |;
                       ADC.B $A5                            ;9EDAC3|65A5    |;
                       SEC                                  ;9EDAC5|38      |;
                       SBC.W $0D55,X                        ;9EDAC6|FD550D  |;
                       STA.B $A5                            ;9EDAC9|85A5    |;
                       LDA.W $0EE3,X                        ;9EDACB|BDE30E  |;
                       XBA                                  ;9EDACE|EB      |;
                       AND.W #$00FF                         ;9EDACF|29FF00  |;
                       BIT.W #$0080                         ;9EDAD2|898000  |;
                       BEQ CODE_9EDADA                      ;9EDAD5|F003    |;
                       ORA.W #$FF00                         ;9EDAD7|0900FF  |;
 
          CODE_9EDADA:
                       EOR.W #$FFFF                         ;9EDADA|49FFFF  |;
                       INC A                                ;9EDADD|1A      |;
                       STA.B $A9                            ;9EDADE|85A9    |;
                       PLA                                  ;9EDAE0|68      |;
                       CLC                                  ;9EDAE1|18      |;
                       ADC.B $A9                            ;9EDAE2|65A9    |;
                       SEC                                  ;9EDAE4|38      |;
                       SBC.W $0DB7,X                        ;9EDAE5|FDB70D  |;
                       STA.B $A9                            ;9EDAE8|85A9    |;
                       LDA.W #$0005                         ;9EDAEA|A90500  |;
                       STA.B $C5                            ;9EDAED|85C5    |;
                       CPX.W $0AD9                          ;9EDAEF|ECD90A  |;
                       BNE CODE_9EDAF6                      ;9EDAF2|D002    |;
                       ASL.B $C5                            ;9EDAF4|06C5    |;
 
          CODE_9EDAF6:
                       LDA.B $A5                            ;9EDAF6|A5A5    |;
                       BIT.W #$8000                         ;9EDAF8|890080  |;
                       BEQ CODE_9EDB01                      ;9EDAFB|F004    |;
                       EOR.W #$FFFF                         ;9EDAFD|49FFFF  |;
                       INC A                                ;9EDB00|1A      |;
 
          CODE_9EDB01:
                       CMP.B $C5                            ;9EDB01|C5C5    |;
                       BCS CODE_9EDB18                      ;9EDB03|B013    |;
                       LDA.B $A9                            ;9EDB05|A5A9    |;
                       BIT.W #$8000                         ;9EDB07|890080  |;
                       BEQ CODE_9EDB10                      ;9EDB0A|F004    |;
                       EOR.W #$FFFF                         ;9EDB0C|49FFFF  |;
                       INC A                                ;9EDB0F|1A      |;
 
          CODE_9EDB10:
                       CMP.B $C5                            ;9EDB10|C5C5    |;
                       BCS CODE_9EDB18                      ;9EDB12|B004    |;
                       STZ.B $A5                            ;9EDB14|64A5    |;
                       STZ.B $A9                            ;9EDB16|64A9    |;
 
          CODE_9EDB18:
                       JSL.L CODE_9BB445                    ;9EDB18|2245B49B|;
                       LDA.B $A5                            ;9EDB1C|A5A5    |;
                       STA.W $10A3,X                        ;9EDB1E|9DA310  |;
 
          CODE_9EDB21:
                       LDY.W $19D4,X                        ;9EDB21|BCD419  |;
                       BPL CODE_9EDB3D                      ;9EDB24|1017    |;
                       LDA.W $10A3,X                        ;9EDB26|BDA310  |;
                       STA.B $AD                            ;9EDB29|85AD    |;
                       SEC                                  ;9EDB2B|38      |;
                       SBC.W #$0007                         ;9EDB2C|E90700  |;
                       BEQ CODE_9EDB36                      ;9EDB2F|F005    |;
                       BMI CODE_9EDB36                      ;9EDB31|3003    |;
                       JMP.W CODE_9EA539                    ;9EDB33|4C39A5  |;
 
          CODE_9EDB36:
                       JML.L CODE_9EA719                    ;9EDB36|5C19A79E|;
 
          CODE_9EDB3A:
                       JMP.W CODE_9EDA51                    ;9EDB3A|4C51DA  |;
 
          CODE_9EDB3D:
                       RTL                                  ;9EDB3D|6B      |;
 
          CODE_9EDB3E:
                       LDA.W $0AD9                          ;9EDB3E|ADD90A  |;
                       BPL CODE_9EDB3A                      ;9EDB41|10F7    |;
                       LDA.W $0CF1                          ;9EDB43|ADF10C  |;
                       BIT.W #$0004                         ;9EDB46|890400  |;
                       BNE CODE_9EDB3A                      ;9EDB49|D0EF    |;
                       LDA.W $0D71                          ;9EDB4B|AD710D  |;
                       BIT.W #$8000                         ;9EDB4E|890080  |;
                       BEQ CODE_9EDB57                      ;9EDB51|F004    |;
                       EOR.W #$FFFF                         ;9EDB53|49FFFF  |;
                       INC A                                ;9EDB56|1A      |;
 
          CODE_9EDB57:
                       CMP.W #$0068                         ;9EDB57|C96800  |;
                       BMI CODE_9EDB3A                      ;9EDB5A|30DE    |;
                       LDA.W $0EFF                          ;9EDB5C|ADFF0E  |;
                       BIT.W #$8000                         ;9EDB5F|890080  |;
                       BEQ CODE_9EDB68                      ;9EDB62|F004    |;
                       EOR.W #$FFFF                         ;9EDB64|49FFFF  |;
                       INC A                                ;9EDB67|1A      |;
 
          CODE_9EDB68:
                       CMP.W #$3800                         ;9EDB68|C90038  |;
                       BMI CODE_9EDB3A                      ;9EDB6B|30CD    |;
                       db $AD,$D3,$0D,$C9,$B8,$00,$10,$08   ;9EDB6D|        |;
                       db $AD,$D3,$0D,$C9,$48,$FF,$10,$BD   ;9EDB75|        |;
                       db $AD,$FF,$0E,$BC,$C3,$14,$F0,$04   ;9EDB7D|        |;
                       db $49,$FF,$FF,$1A,$C9,$00,$FC,$30   ;9EDB85|        |;
                       db $AC,$64,$8D,$A9,$02,$00,$85,$91   ;9EDB8D|        |;
                       db $BD,$03,$15,$F0,$07,$64,$91,$A9   ;9EDB95|        |;
                       db $02,$00,$85,$8D,$A4,$8D,$B9,$AE   ;9EDB9D|        |;
                       db $17,$C9,$32,$01,$90,$12,$A4,$91   ;9EDBA5|        |;
                       db $B9,$AE,$17,$C9,$32,$01,$90,$08   ;9EDBAD|        |;
                       db $A9,$0F,$00,$85,$A5,$4C,$0E,$8C   ;9EDBB5|        |;
                       db $4C,$51,$DA                       ;9EDBBD|        |;
 
          CODE_9EDBC0:
                       LDA.W $0DB7,X                        ;9EDBC0|BDB70D  |;
                       CMP.W #$0108                         ;9EDBC3|C90801  |;
                       BPL CODE_9EDBEC                      ;9EDBC6|1024    |;
                       CMP.W #$FEF8                         ;9EDBC8|C9F8FE  |;
                       BMI CODE_9EDBEC                      ;9EDBCB|301F    |;
                       CPX.W $0AD9                          ;9EDBCD|ECD90A  |;
                       BNE CODE_9EDBD4                      ;9EDBD0|D002    |;
                       STZ.B $A5                            ;9EDBD2|64A5    |;
 
          CODE_9EDBD4:
                       LDA.B $A9                            ;9EDBD4|A5A9    |;
                       CMP.W #$0103                         ;9EDBD6|C90301  |;
                       BMI CODE_9EDBE0                      ;9EDBD9|3005    |;
                       LDA.W #$0103                         ;9EDBDB|A90301  |;
                       STA.B $A9                            ;9EDBDE|85A9    |;
 
          CODE_9EDBE0:
                       LDA.B $A9                            ;9EDBE0|A5A9    |;
                       CMP.W #$FEFD                         ;9EDBE2|C9FDFE  |;
                       BPL CODE_9EDBEC                      ;9EDBE5|1005    |;
                       LDA.W #$FEFD                         ;9EDBE7|A9FDFE  |;
                       STA.B $A9                            ;9EDBEA|85A9    |;
 
          CODE_9EDBEC:
                       LDA.B $A9                            ;9EDBEC|A5A9    |;
                       SEC                                  ;9EDBEE|38      |;
                       SBC.B $B1                            ;9EDBEF|E5B1    |;
                       STA.B $A9                            ;9EDBF1|85A9    |;
 
          CODE_9EDBF3:
                       RTL                                  ;9EDBF3|6B      |;
                       db $E2,$E1                           ;9EDBF4|        |;
                       db $14,$E2                           ;9EDBF6|        |;
                       db $AA,$E2,$FC,$E2                   ;9EDBF8|        |;
                       db $46,$E2                           ;9EDBFC|        |;
                       db $78,$E2,$62,$E8,$D0,$E7,$3E,$E7   ;9EDBFE|        |;
 
          CODE_9EDC06:
                       LDA.W $1163,X                        ;9EDC06|BD6311  |;
                       STA.B $14                            ;9EDC09|8514    |;
                       LDA.W $0BCB,X                        ;9EDC0B|BDCB0B  |;
                       BNE CODE_9EDC32                      ;9EDC0E|D022    |;
                       LDA.B $A5                            ;9EDC10|A5A5    |;
                       SEC                                  ;9EDC12|38      |;
                       SBC.B $14                            ;9EDC13|E514    |;
                       BEQ CODE_9EDC32                      ;9EDC15|F01B    |;
                       EOR.W #$FFFF                         ;9EDC17|49FFFF  |;
                       INC A                                ;9EDC1A|1A      |;
                       AND.W #$0004                         ;9EDC1B|290400  |;
                       LSR A                                ;9EDC1E|4A      |;
                       DEC A                                ;9EDC1F|3A      |;
                       STA.B $A5                            ;9EDC20|85A5    |;
                       CLC                                  ;9EDC22|18      |;
                       ADC.B $14                            ;9EDC23|6514    |;
                       AND.W #$0007                         ;9EDC25|290700  |;
                       STA.W $1163,X                        ;9EDC28|9D6311  |;
                       LDA.W #$0006                         ;9EDC2B|A90600  |;
                       STA.W $0BCB,X                        ;9EDC2E|9DCB0B  |;
                       RTL                                  ;9EDC31|6B      |;
 
          CODE_9EDC32:
                       LDA.W $0BCB,X                        ;9EDC32|BDCB0B  |;
                       BEQ CODE_9EDC43                      ;9EDC35|F00C    |;
                       SEC                                  ;9EDC37|38      |;
                       SBC.W $0ADB                          ;9EDC38|EDDB0A  |;
                       BPL CODE_9EDC40                      ;9EDC3B|1003    |;
                       LDA.W #$0000                         ;9EDC3D|A90000  |;
 
          CODE_9EDC40:
                       STA.W $0BCB,X                        ;9EDC40|9DCB0B  |;
 
          CODE_9EDC43:
                       RTL                                  ;9EDC43|6B      |;
 
          CODE_9EDC44:
                       PHK                                  ;9EDC44|4B      |;
                       PLB                                  ;9EDC45|AB      |;
                       LDA.W $0D71                          ;9EDC46|AD710D  |;
                       SEC                                  ;9EDC49|38      |;
                       SBC.W $0D55,X                        ;9EDC4A|FD550D  |;
                       STA.B $A5                            ;9EDC4D|85A5    |;
                       LDA.W $0DD3                          ;9EDC4F|ADD30D  |;
                       SEC                                  ;9EDC52|38      |;
                       SBC.W $0DB7,X                        ;9EDC53|FDB70D  |;
                       STA.B $A9                            ;9EDC56|85A9    |;
                       BRA CODE_9EDC67                      ;9EDC58|800D    |;
                       db $AD,$71,$0D,$85,$A5,$AD,$D3,$0D   ;9EDC5A|        |;
                       db $38,$E5,$B5,$85,$A9               ;9EDC62|        |;
 
          CODE_9EDC67:
                       LDA.W $0DB7,X                        ;9EDC67|BDB70D  |;
                       BPL CODE_9EDC86                      ;9EDC6A|101A    |;
                       CMP.W #$FEF8                         ;9EDC6C|C9F8FE  |;
                       BMI CODE_9EDC85                      ;9EDC6F|3014    |;
                       LDA.W $0DD3                          ;9EDC71|ADD30D  |;
                       CMP.W #$FEF8                         ;9EDC74|C9F8FE  |;
                       BMI CODE_9EDC7A                      ;9EDC77|3001    |;
                       RTS                                  ;9EDC79|60      |;
 
          CODE_9EDC7A:
                       LDA.W #$0001                         ;9EDC7A|A90100  |;
                       STA.B $A9                            ;9EDC7D|85A9    |;
                       RTS                                  ;9EDC7F|60      |;
 
          CODE_9EDC80:
                       LDA.W #$FFFF                         ;9EDC80|A9FFFF  |;
                       STA.B $A9                            ;9EDC83|85A9    |;
 
          CODE_9EDC85:
                       RTS                                  ;9EDC85|60      |;
 
          CODE_9EDC86:
                       CMP.W #$0108                         ;9EDC86|C90801  |;
                       BPL CODE_9EDC85                      ;9EDC89|10FA    |;
                       LDA.W $0DD3                          ;9EDC8B|ADD30D  |;
                       CMP.W #$0108                         ;9EDC8E|C90801  |;
                       BPL CODE_9EDC80                      ;9EDC91|10ED    |;
                       RTS                                  ;9EDC93|60      |;
                       db $00,$00,$F9,$FF,$F6,$FF,$F9,$FF   ;9EDC94|        |;
                       db $00,$00,$07,$00,$0A,$00,$07,$00   ;9EDC9C|        |;
                       db $00,$00,$F9,$FF                   ;9EDCA4|        |;
                       LDA.W #$0002                         ;9EDCA8|A90200  |;
                       TRB.W $129F                          ;9EDCAB|1C9F12  |;
                       BEQ CODE_9EDCC3                      ;9EDCAE|F013    |;
                       STZ.W $101F                          ;9EDCB0|9C1F10  |;
                       STZ.W $103F                          ;9EDCB3|9C3F10  |;
                       LDA.W #$0078                         ;9EDCB6|A97800  |;
                       STA.W $10BF                          ;9EDCB9|8DBF10  |;
                       LDA.W #$0000                         ;9EDCBC|A90000  |;
                       STA.L $7E3450                        ;9EDCBF|8F50347E|;
 
          CODE_9EDCC3:
                       LDA.W $0D19                          ;9EDCC3|AD190D  |;
                       SEC                                  ;9EDCC6|38      |;
                       SBC.B $C1                            ;9EDCC7|E5C1    |;
                       STA.W $0D19                          ;9EDCC9|8D190D  |;
                       LDA.W $0D1D                          ;9EDCCC|AD1D0D  |;
                       SEC                                  ;9EDCCF|38      |;
                       SBC.B $C1                            ;9EDCD0|E5C1    |;
                       STA.W $0D1D                          ;9EDCD2|8D1D0D  |;
                       LDA.W $101F                          ;9EDCD5|AD1F10  |;
                       SEC                                  ;9EDCD8|38      |;
                       SBC.B $C1                            ;9EDCD9|E5C1    |;
                       STA.W $101F                          ;9EDCDB|8D1F10  |;
                       BPL CODE_9EDCEA                      ;9EDCDE|100A    |;
                       ADC.W #$0005                         ;9EDCE0|690500  |;
                       STA.W $101F                          ;9EDCE3|8D1F10  |;
                       JSL.L CODE_9EDDD2                    ;9EDCE6|22D2DD9E|;
 
          CODE_9EDCEA:
                       LDA.W $0AD9                          ;9EDCEA|ADD90A  |;
                       BMI CODE_9EDD3F                      ;9EDCED|3050    |;
                       STA.B zpCurntTeamLoopVal             ;9EDCEF|8591    |;
                       JSL.L CODE_9EC4F3                    ;9EDCF1|22F3C49E|;
                       LDA.B zpCurntTeamLoopVal             ;9EDCF5|A591    |;
                       JSL.L CODE_9BC002                    ;9EDCF7|2202C09B|;
                       LDY.B zpCurntTeamLoopVal             ;9EDCFB|A491    |;
                       LDA.B $A5                            ;9EDCFD|A5A5    |;
                       CLC                                  ;9EDCFF|18      |;
                       ADC.W $0D55,Y                        ;9EDD00|79550D  |;
                       SEC                                  ;9EDD03|38      |;
                       SBC.W $0D71                          ;9EDD04|ED710D  |;
                       LSR A                                ;9EDD07|4A      |;
                       LSR A                                ;9EDD08|4A      |;
                       BIT.W #$2000                         ;9EDD09|890020  |;
                       BEQ CODE_9EDD11                      ;9EDD0C|F003    |;
                       ORA.W #$C000                         ;9EDD0E|0900C0  |;
 
          CODE_9EDD11:
                       CLC                                  ;9EDD11|18      |;
                       ADC.W $0D71                          ;9EDD12|6D710D  |;
                       STA.W $0D71                          ;9EDD15|8D710D  |;
                       LDA.B $A9                            ;9EDD18|A5A9    |;
                       CLC                                  ;9EDD1A|18      |;
                       ADC.W $0DB7,Y                        ;9EDD1B|79B70D  |;
                       SEC                                  ;9EDD1E|38      |;
                       SBC.W $0DD3                          ;9EDD1F|EDD30D  |;
                       LSR A                                ;9EDD22|4A      |;
                       LSR A                                ;9EDD23|4A      |;
                       BIT.W #$2000                         ;9EDD24|890020  |;
                       BEQ CODE_9EDD2C                      ;9EDD27|F003    |;
                       ORA.W #$C000                         ;9EDD29|0900C0  |;
 
          CODE_9EDD2C:
                       CLC                                  ;9EDD2C|18      |;
                       ADC.W $0DD3                          ;9EDD2D|6DD30D  |;
                       STA.W $0DD3                          ;9EDD30|8DD30D  |;
                       LDA.W $0EC3,Y                        ;9EDD33|B9C30E  |;
                       STA.W $0EDF                          ;9EDD36|8DDF0E  |;
                       LDA.W $0EE3,Y                        ;9EDD39|B9E30E  |;
                       STA.W $0EFF                          ;9EDD3C|8DFF0E  |;
 
          CODE_9EDD3F:
                       JSL.L CODE_9EF751                    ;9EDD3F|2251F79E|;
                       JSL.L CODE_9EF78A                    ;9EDD43|228AF79E|;
                       LDA.W $15D6                          ;9EDD47|ADD615  |;
                       BNE CODE_9EDDBD                      ;9EDD4A|D071    |;
                       LDA.W $0AD9                          ;9EDD4C|ADD90A  |;
                       BPL CODE_9EDDB0                      ;9EDD4F|105F    |;
                       LDA.W $163A                          ;9EDD51|AD3A16  |;
                       BEQ CODE_9EDD89                      ;9EDD54|F033    |;
                       LDA.W $15D4                          ;9EDD56|ADD415  |;
                       BIT.W #$0002                         ;9EDD59|890200  |;
                       BNE CODE_9EDD65                      ;9EDD5C|D007    |;
                       LDA.W $1E91                          ;9EDD5E|AD911E  |;
                       BEQ CODE_9EDD71                      ;9EDD61|F00E    |;
                       db $80,$05                           ;9EDD63|        |;
 
          CODE_9EDD65:
                       LDA.W $1E91                          ;9EDD65|AD911E  |;
                       BNE CODE_9EDD71                      ;9EDD68|D007    |;
                       db $AD,$FF,$0E,$30,$1A,$80,$06       ;9EDD6A|        |;
 
          CODE_9EDD71:
                       LDA.W $0EFF                          ;9EDD71|ADFF0E  |;
                       DEC A                                ;9EDD74|3A      |;
                       BPL CODE_9EDD89                      ;9EDD75|1012    |;
                       LDA.L $7E3450                        ;9EDD77|AF50347E|;
                       INC A                                ;9EDD7B|1A      |;
                       STA.L $7E3450                        ;9EDD7C|8F50347E|;
                       CMP.W #$0030                         ;9EDD80|C93000  |;
                       BCC CODE_9EDD90                      ;9EDD83|900B    |;
                       JSL.L CODE_9EC791                    ;9EDD85|2291C79E|;
 
          CODE_9EDD89:
                       LDA.W #$0000                         ;9EDD89|A90000  |;
                       STA.L $7E3450                        ;9EDD8C|8F50347E|;
 
          CODE_9EDD90:
                       LDA.W $0D71                          ;9EDD90|AD710D  |;
                       CMP.W $0E5F                          ;9EDD93|CD5F0E  |;
                       BNE CODE_9EDDB7                      ;9EDD96|D01F    |;
                       LDA.W $0DD3                          ;9EDD98|ADD30D  |;
                       CMP.W $0E9F                          ;9EDD9B|CD9F0E  |;
                       BNE CODE_9EDDB7                      ;9EDD9E|D017    |;
                       LDA.W #$0006                         ;9EDDA0|A90600  |;
                       STA.B $A5                            ;9EDDA3|85A5    |;
                       DEC.W $10BF                          ;9EDDA5|CEBF10  |;
                       BPL CODE_9EDDBD                      ;9EDDA8|1013    |;
                       db $22,$8A,$B8,$9E,$80,$0D           ;9EDDAA|        |;
 
          CODE_9EDDB0:
                       LDA.W #$0000                         ;9EDDB0|A90000  |;
                       STA.L $7E3450                        ;9EDDB3|8F50347E|;
 
          CODE_9EDDB7:
                       LDA.W #$0078                         ;9EDDB7|A97800  |;
                       STA.W $10BF                          ;9EDDBA|8DBF10  |;
 
          CODE_9EDDBD:
                       LDA.W $0E01                          ;9EDDBD|AD010E  |;
                       AND.W #$FF00                         ;9EDDC0|2900FF  |;
                       ORA.W $0DF9                          ;9EDDC3|0DF90D  |;
                       BEQ CODE_9EDDCB                      ;9EDDC6|F003    |;
                       JMP.W CODE_9E9788                    ;9EDDC8|4C8897  |;
 
          CODE_9EDDCB:
                       JSL.L CODE_9EDE81                    ;9EDDCB|2281DE9E|;
                       JMP.W CODE_9E9788                    ;9EDDCF|4C8897  |;
 
          CODE_9EDDD2:
                       PHX                                  ;9EDDD2|DA      |;
                       LDA.W #$0108                         ;9EDDD3|A90801  |;
                       STA.B $B5                            ;9EDDD6|85B5    |;
                       LDY.W #$0000                         ;9EDDD8|A00000  |;
                       JSL.L CODE_9EDDF0                    ;9EDDDB|22F0DD9E|;
                       LDA.W #$FEF8                         ;9EDDDF|A9F8FE  |;
                       STA.B $B5                            ;9EDDE2|85B5    |;
                       LDY.W #$0004                         ;9EDDE4|A00400  |;
                       JSL.L CODE_9EDDF0                    ;9EDDE7|22F0DD9E|;
                       PLX                                  ;9EDDEB|FA      |;
                       RTL                                  ;9EDDEC|6B      |;
 
          CODE_9EDDED:
                       JMP.W CODE_9EDE57                    ;9EDDED|4C57DE  |;
 
          CODE_9EDDF0:
                       LDA.B $B5                            ;9EDDF0|A5B5    |;
                       SEC                                  ;9EDDF2|38      |;
                       SBC.W $0DD3                          ;9EDDF3|EDD30D  |;
                       STA.B $A5                            ;9EDDF6|85A5    |;
                       LDA.W $0EFF                          ;9EDDF8|ADFF0E  |;
                       BEQ CODE_9EDDED                      ;9EDDFB|F0F0    |;
                       EOR.B $A5                            ;9EDDFD|45A5    |;
                       BMI CODE_9EDDED                      ;9EDDFF|30EC    |;
                       LDA.B $A5                            ;9EDE01|A5A5    |;
                       STZ.B $08                            ;9EDE03|6408    |;
                       LSR A                                ;9EDE05|4A      |;
                       ROR.B $08                            ;9EDE06|6608    |;
                       LSR A                                ;9EDE08|4A      |;
                       ROR.B $08                            ;9EDE09|6608    |;
                       LSR A                                ;9EDE0B|4A      |;
                       ROR.B $08                            ;9EDE0C|6608    |;
                       LSR A                                ;9EDE0E|4A      |;
                       ROR.B $08                            ;9EDE0F|6608    |;
                       BIT.W #$0800                         ;9EDE11|890008  |;
                       BEQ CODE_9EDE19                      ;9EDE14|F003    |;
                       ORA.W #$F000                         ;9EDE16|0900F0  |;
 
          CODE_9EDE19:
                       STA.B $0A                            ;9EDE19|850A    |;
                       LDA.W $0EFF                          ;9EDE1B|ADFF0E  |;
                       STA.B $04                            ;9EDE1E|8504    |;
                       JSL.L CODE_8091FC                    ;9EDE20|22FC9180|;
                       LDA.B $00                            ;9EDE24|A500    |;
                       STA.W $0D19,Y                        ;9EDE26|99190D  |;
                       LDA.B $00                            ;9EDE29|A500    |;
                       ASL A                                ;9EDE2B|0A      |;
                       ASL A                                ;9EDE2C|0A      |;
                       ASL A                                ;9EDE2D|0A      |;
                       ASL A                                ;9EDE2E|0A      |;
                       LDX.W $0EDF                          ;9EDE2F|AEDF0E  |;
                       JSL.L CODE_809080                    ;9EDE32|22809080|;
                       ADC.W $0D71                          ;9EDE36|6D710D  |;
                       STA.B $A5                            ;9EDE39|85A5    |;
                       CMP.W #$0088                         ;9EDE3B|C98800  |;
                       BMI CODE_9EDE45                      ;9EDE3E|3005    |;
                       LDA.W #$0088                         ;9EDE40|A98800  |;
                       STA.B $A5                            ;9EDE43|85A5    |;
 
          CODE_9EDE45:
                       LDA.B $A5                            ;9EDE45|A5A5    |;
                       CMP.W #$FF78                         ;9EDE47|C978FF  |;
                       BPL CODE_9EDE51                      ;9EDE4A|1005    |;
                       LDA.W #$FF78                         ;9EDE4C|A978FF  |;
                       STA.B $A5                            ;9EDE4F|85A5    |;
 
          CODE_9EDE51:
                       LDA.B $A5                            ;9EDE51|A5A5    |;
                       STA.W $0D17,Y                        ;9EDE53|99170D  |;
                       RTL                                  ;9EDE56|6B      |;
 
          CODE_9EDE57:
                       LDA.W #$FFFF                         ;9EDE57|A9FFFF  |;
                       STA.W $0D19,Y                        ;9EDE5A|99190D  |;
                       RTL                                  ;9EDE5D|6B      |;
 
          CODE_9EDE5E:
                       LDA.B $A5                            ;9EDE5E|A5A5    |;
                       AND.W #$0001                         ;9EDE60|290100  |;
                       STA.B $A5                            ;9EDE63|85A5    |;
                       EOR.W $117F                          ;9EDE65|4D7F11  |;
                       AND.W #$0003                         ;9EDE68|290300  |;
                       STA.W $117F                          ;9EDE6B|8D7F11  |;
                       LDA.W #$FFFF                         ;9EDE6E|A9FFFF  |;
                       STA.W $11FF                          ;9EDE71|8DFF11  |;
                       PHX                                  ;9EDE74|DA      |;
                       LDX.W #$001C                         ;9EDE75|A21C00  |;
                       LDA.W #$E978                         ;9EDE78|A978E9  |;
                       JSL.L CODE_9EA3F1                    ;9EDE7B|22F1A39E|;
                       PLX                                  ;9EDE7F|FA      |;
                       RTL                                  ;9EDE80|6B      |;
 
          CODE_9EDE81:
                       LDA.W $11DF                          ;9EDE81|ADDF11  |;
                       CMP.W #$0008                         ;9EDE84|C90800  |;
                       BCC CODE_9EDE97                      ;9EDE87|900E    |;
                       CMP.W #$0018                         ;9EDE89|C91800  |;
                       BCS CODE_9EDE97                      ;9EDE8C|B009    |;
                       LDA.W $117F                          ;9EDE8E|AD7F11  |;
                       EOR.W #$0002                         ;9EDE91|490200  |;
                       STA.W $117F                          ;9EDE94|8D7F11  |;
 
          CODE_9EDE97:
                       LDA.W #$0004                         ;9EDE97|A90400  |;
                       TSB.W $117F                          ;9EDE9A|0C7F11  |;
                       STZ.W $11DF                          ;9EDE9D|9CDF11  |;
                       LDA.W #$FFFF                         ;9EDEA0|A9FFFF  |;
                       STA.W $11FF                          ;9EDEA3|8DFF11  |;
                       RTL                                  ;9EDEA6|6B      |;
 
          CODE_9EDEA7:
                       LDA.W $0EDF                          ;9EDEA7|ADDF0E  |;
                       XBA                                  ;9EDEAA|EB      |;
                       LSR A                                ;9EDEAB|4A      |;
                       AND.W #$007F                         ;9EDEAC|297F00  |;
                       BIT.W #$0040                         ;9EDEAF|894000  |;
                       BEQ CODE_9EDEB7                      ;9EDEB2|F003    |;
                       ORA.W #$FF80                         ;9EDEB4|0980FF  |;
 
          CODE_9EDEB7:
                       CLC                                  ;9EDEB7|18      |;
                       ADC.W $0D71                          ;9EDEB8|6D710D  |;
                       STA.B $A5                            ;9EDEBB|85A5    |;
                       LDA.W $0EFF                          ;9EDEBD|ADFF0E  |;
                       XBA                                  ;9EDEC0|EB      |;
                       LSR A                                ;9EDEC1|4A      |;
                       AND.W #$007F                         ;9EDEC2|297F00  |;
                       BIT.W #$0040                         ;9EDEC5|894000  |;
                       BEQ CODE_9EDECD                      ;9EDEC8|F003    |;
                       ORA.W #$FF80                         ;9EDECA|0980FF  |;
 
          CODE_9EDECD:
                       CLC                                  ;9EDECD|18      |;
                       ADC.W $0DD3                          ;9EDECE|6DD30D  |;
                       STA.B $A9                            ;9EDED1|85A9    |;
                       RTL                                  ;9EDED3|6B      |;
 
          CODE_9EDED4:
                       LDA.W $15D6                          ;9EDED4|ADD615  |;
                       BNE CODE_9EDEE4                      ;9EDED7|D00B    |;
                       LDA.W clock_remaining_time           ;9EDED9|AD3216  |;
                       CMP.W #$0005                         ;9EDEDC|C90500  |;
                       BCS CODE_9EDEE4                      ;9EDEDF|B003    |;
                       db $4C,$0B,$E1                       ;9EDEE1|        |;
 
          CODE_9EDEE4:
                       LDA.W $163A                          ;9EDEE4|AD3A16  |;
                       BNE CODE_9EDF0C                      ;9EDEE7|D023    |;
                       JSL.L CODE_9E8272                    ;9EDEE9|2272829E|;
                       BNE CODE_9EDF0C                      ;9EDEED|D01D    |;
                       LDA.W $0D2D                          ;9EDEEF|AD2D0D  |;
                       BEQ CODE_9EDF0C                      ;9EDEF2|F018    |;
                       LDA.W $0DB7,X                        ;9EDEF4|BDB70D  |;
                       CMP.W #$FF13                         ;9EDEF7|C913FF  |;
                       BMI CODE_9EDF0C                      ;9EDEFA|3010    |;
                       CMP.W #$00ED                         ;9EDEFC|C9ED00  |;
                       BPL CODE_9EDF0C                      ;9EDEFF|100B    |;
                       LDA.W $0792                          ;9EDF01|AD9207  |;
                       AND.W #$0003                         ;9EDF04|290300  |;
                       BNE CODE_9EDF0C                      ;9EDF07|D003    |;
                       JMP.W CODE_9EED85                    ;9EDF09|4C85ED  |;
 
          CODE_9EDF0C:
                       LDA.W #$0020                         ;9EDF0C|A92000  |;
                       SEC                                  ;9EDF0F|38      |;
                       SBC.W $13E3,X                        ;9EDF10|FDE313  |;
                       ASL A                                ;9EDF13|0A      |;
                       ASL A                                ;9EDF14|0A      |;
                       ASL A                                ;9EDF15|0A      |;
                       ASL A                                ;9EDF16|0A      |;
                       STA.B $B5                            ;9EDF17|85B5    |;
                       LDY.W #$0108                         ;9EDF19|A00801  |;
                       LDA.W $14C3,X                        ;9EDF1C|BDC314  |;
                       BNE CODE_9EDF24                      ;9EDF1F|D003    |;
                       LDY.W #$FEF8                         ;9EDF21|A0F8FE  |;
 
          CODE_9EDF24:
                       STY.B $A9                            ;9EDF24|84A9    |;
                       TYA                                  ;9EDF26|98      |;
                       SEC                                  ;9EDF27|38      |;
                       SBC.W $0DD3                          ;9EDF28|EDD30D  |;
                       STA.B $A9                            ;9EDF2B|85A9    |;
                       CMP.W #$0064                         ;9EDF2D|C96400  |;
                       BPL CODE_9EDF9B                      ;9EDF30|1069    |;
                       CMP.W #$FF9C                         ;9EDF32|C99CFF  |;
                       BMI CODE_9EDF9B                      ;9EDF35|3064    |;
                       LDA.W $0D71                          ;9EDF37|AD710D  |;
                       CMP.W #$0064                         ;9EDF3A|C96400  |;
                       BPL CODE_9EDF9B                      ;9EDF3D|105C    |;
                       CMP.W #$FF9C                         ;9EDF3F|C99CFF  |;
                       BMI CODE_9EDFAF                      ;9EDF42|306B    |;
                       EOR.W #$FFFF                         ;9EDF44|49FFFF  |;
                       INC A                                ;9EDF47|1A      |;
                       PHA                                  ;9EDF48|48      |;
                       TAX                                  ;9EDF49|AA      |;
                       JSL.L CODE_808F7D                    ;9EDF4A|227D8F80|;
                       STA.B $A5                            ;9EDF4E|85A5    |;
                       LDA.B $A9                            ;9EDF50|A5A9    |;
                       TAX                                  ;9EDF52|AA      |;
                       JSL.L CODE_808F7D                    ;9EDF53|227D8F80|;
                       LDX.B $E4                            ;9EDF57|A6E4    |;
                       CLC                                  ;9EDF59|18      |;
                       ADC.B $A5                            ;9EDF5A|65A5    |;
                       STA.B $C5                            ;9EDF5C|85C5    |;
                       PLA                                  ;9EDF5E|68      |;
                       STA.B $A5                            ;9EDF5F|85A5    |;
                       LDA.B $C5                            ;9EDF61|A5C5    |;
                       CMP.W #$2711                         ;9EDF63|C91127  |;
                       LSR.B $B5                            ;9EDF66|46B5    |;
                       LSR.B $B5                            ;9EDF68|46B5    |;
                       LSR.B $B5                            ;9EDF6A|46B5    |;
                       LSR.B $B5                            ;9EDF6C|46B5    |;
                       JSL.L CODE_9BB445                    ;9EDF6E|2245B49B|;
                       STA.B $B9                            ;9EDF72|85B9    |;
                       LDA.W #$0005                         ;9EDF74|A90500  |;
                       STA.B $B1                            ;9EDF77|85B1    |;
                       LDY.W #$0000                         ;9EDF79|A00000  |;
                       CPX.W #$000C                         ;9EDF7C|E00C00  |;
                       BCS CODE_9EDF84                      ;9EDF7F|B003    |;
                       db $A0,$0C,$00                       ;9EDF81|        |;
 
          CODE_9EDF84:
                       LDA.W $0F43,Y                        ;9EDF84|B9430F  |;
                       BEQ CODE_9EDF9D                      ;9EDF87|F014    |;
                       LDA.W $0B5D,Y                        ;9EDF89|B95D0B  |;
                       SEC                                  ;9EDF8C|38      |;
                       SBC.W #$0004                         ;9EDF8D|E90400  |;
                       AND.W #$0007                         ;9EDF90|290700  |;
                       CMP.B $B9                            ;9EDF93|C5B9    |;
                       BNE CODE_9EDFA9                      ;9EDF95|D012    |;
                       ASL.B $B5                            ;9EDF97|06B5    |;
                       BRA CODE_9EDFA9                      ;9EDF99|800E    |;
 
          CODE_9EDF9B:
                       BRA CODE_9EDFAF                      ;9EDF9B|8012    |;
 
          CODE_9EDF9D:
                       LDA.W $1543,Y                        ;9EDF9D|B94315  |;
                       BEQ CODE_9EDFA9                      ;9EDFA0|F007    |;
                       db $64,$B1,$A9,$01,$00,$85,$B5       ;9EDFA2|        |;
 
          CODE_9EDFA9:
                       INY                                  ;9EDFA9|C8      |;
                       INY                                  ;9EDFAA|C8      |;
                       DEC.B $B1                            ;9EDFAB|C6B1    |;
                       BPL CODE_9EDF84                      ;9EDFAD|10D5    |;
 
          CODE_9EDFAF:
                       LDA.B $B5                            ;9EDFAF|A5B5    |;
                       JSL.L CODE_9BB370                    ;9EDFB1|2270B39B|;
                       CMP.W #$0009                         ;9EDFB5|C90900  |;
                       BCS CODE_9EDFF6                      ;9EDFB8|B03C    |;
                       LDA.W $0DD3                          ;9EDFBA|ADD30D  |;
                       STA.B $A5                            ;9EDFBD|85A5    |;
                       LDA.W $14C3,X                        ;9EDFBF|BDC314  |;
                       BNE CODE_9EDFCC                      ;9EDFC2|D008    |;
                       LDA.W #$0000                         ;9EDFC4|A90000  |;
                       SEC                                  ;9EDFC7|38      |;
                       SBC.B $A5                            ;9EDFC8|E5A5    |;
                       STA.B $A5                            ;9EDFCA|85A5    |;
 
          CODE_9EDFCC:
                       LDA.B $A5                            ;9EDFCC|A5A5    |;
                       BMI CODE_9EDFF6                      ;9EDFCE|3026    |;
                       LDA.W #$0108                         ;9EDFD0|A90801  |;
                       SEC                                  ;9EDFD3|38      |;
                       SBC.B $A5                            ;9EDFD4|E5A5    |;
                       BMI CODE_9EDFF6                      ;9EDFD6|301E    |;
                       LDA.W $163A                          ;9EDFD8|AD3A16  |;
                       BEQ CODE_9EDFEB                      ;9EDFDB|F00E    |;
                       db $A9,$B0,$00,$4A,$4A,$18,$69,$58   ;9EDFDD|        |;
                       db $00,$38,$E5,$A5,$10,$0B           ;9EDFE5|        |;
 
          CODE_9EDFEB:
                       LDA.W $15D8                          ;9EDFEB|ADD815  |;
                       BIT.W #$8000                         ;9EDFEE|890080  |;
                       BNE CODE_9EDFF6                      ;9EDFF1|D003    |;
                       JMP.W CODE_9EE10B                    ;9EDFF3|4C0BE1  |;
 
          CODE_9EDFF6:
                       RTL                                  ;9EDFF6|6B      |;
 
          CODE_9EDFF7:
                       LDA.W $19D4,X                        ;9EDFF7|BDD419  |;
                       BMI CODE_9EDFFF                      ;9EDFFA|3003    |;
                       JMP.W CODE_9EE0CC                    ;9EDFFC|4CCCE0  |;
 
          CODE_9EDFFF:
                       LDA.W #$0008                         ;9EDFFF|A90800  |;
                       STA.B $A5                            ;9EE002|85A5    |;
                       LDA.W #$0005                         ;9EE004|A90500  |;
                       STA.B $A9                            ;9EE007|85A9    |;
                       LDY.W #$0000                         ;9EE009|A00000  |;
                       LDA.W $1503,X                        ;9EE00C|BD0315  |;
                       BNE CODE_9EE014                      ;9EE00F|D003    |;
                       LDY.W #$000C                         ;9EE011|A00C00  |;
 
          CODE_9EE014:
                       LDA.W $0F43,Y                        ;9EE014|B9430F  |;
                       BEQ CODE_9EE022                      ;9EE017|F009    |;
                       INY                                  ;9EE019|C8      |;
                       INY                                  ;9EE01A|C8      |;
                       DEC.B $A9                            ;9EE01B|C6A9    |;
                       BPL CODE_9EE014                      ;9EE01D|10F5    |;
                       db $4C,$C7,$E0                       ;9EE01F|        |;
 
          CODE_9EE022:
                       LDA.W $0EC4,Y                        ;9EE022|B9C40E  |;
                       AND.W #$00FF                         ;9EE025|29FF00  |;
                       BIT.W #$0080                         ;9EE028|898000  |;
                       BEQ CODE_9EE030                      ;9EE02B|F003    |;
                       ORA.W #$FF00                         ;9EE02D|0900FF  |;
 
          CODE_9EE030:
                       PHA                                  ;9EE030|48      |;
                       ASL A                                ;9EE031|0A      |;
                       PLA                                  ;9EE032|68      |;
                       ROR A                                ;9EE033|6A      |;
                       CLC                                  ;9EE034|18      |;
                       ADC.W $0D55,Y                        ;9EE035|79550D  |;
                       SEC                                  ;9EE038|38      |;
                       SBC.W $0D71                          ;9EE039|ED710D  |;
                       STA.B $A5                            ;9EE03C|85A5    |;
                       LDA.W $0EE4,Y                        ;9EE03E|B9E40E  |;
                       AND.W #$00FF                         ;9EE041|29FF00  |;
                       BIT.W #$0080                         ;9EE044|898000  |;
                       BEQ CODE_9EE04C                      ;9EE047|F003    |;
                       ORA.W #$FF00                         ;9EE049|0900FF  |;
 
          CODE_9EE04C:
                       PHA                                  ;9EE04C|48      |;
                       ASL A                                ;9EE04D|0A      |;
                       PLA                                  ;9EE04E|68      |;
                       ROR A                                ;9EE04F|6A      |;
                       CLC                                  ;9EE050|18      |;
                       ADC.W $0DB7,Y                        ;9EE051|79B70D  |;
                       SEC                                  ;9EE054|38      |;
                       SBC.W $0DD3                          ;9EE055|EDD30D  |;
                       STA.B $A9                            ;9EE058|85A9    |;
                       LDY.B $A5                            ;9EE05A|A4A5    |;
                       JSL.L CODE_9CA554                    ;9EE05C|2254A59C|;
                       STA.B $AD                            ;9EE060|85AD    |;
                       LDA.W #$0012                         ;9EE062|A91200  |;
                       STA.B $B1                            ;9EE065|85B1    |;
                       LDY.W #$0108                         ;9EE067|A00801  |;
                       LDA.W $14C3,X                        ;9EE06A|BDC314  |;
                       BNE CODE_9EE072                      ;9EE06D|D003    |;
                       LDY.W #$FEF8                         ;9EE06F|A0F8FE  |;
 
          CODE_9EE072:
                       STY.B $B5                            ;9EE072|84B5    |;
                       TYA                                  ;9EE074|98      |;
                       PHA                                  ;9EE075|48      |;
                       LDA.B $B1                            ;9EE076|A5B1    |;
                       PHA                                  ;9EE078|48      |;
                       JSR.W CODE_9EE0CD                    ;9EE079|20CDE0  |;
                       LDA.B $B5                            ;9EE07C|A5B5    |;
                       STA.B $B9                            ;9EE07E|85B9    |;
                       PLA                                  ;9EE080|68      |;
                       EOR.W #$FFFF                         ;9EE081|49FFFF  |;
                       INC A                                ;9EE084|1A      |;
                       STA.B $B1                            ;9EE085|85B1    |;
                       PLA                                  ;9EE087|68      |;
                       STA.B $B5                            ;9EE088|85B5    |;
                       JSR.W CODE_9EE0CD                    ;9EE08A|20CDE0  |;
                       LDA.B $B5                            ;9EE08D|A5B5    |;
                       CLC                                  ;9EE08F|18      |;
                       ADC.B $B9                            ;9EE090|65B9    |;
                       STA.B $B5                            ;9EE092|85B5    |;
                       LDX.B $95                            ;9EE094|A695    |;
                       STZ.B $A5                            ;9EE096|64A5    |;
                       LDA.B $B5                            ;9EE098|A5B5    |;
                       CMP.W #$FFD3                         ;9EE09A|C9D3FF  |;
                       BMI CODE_9EE0C7                      ;9EE09D|3028    |;
                       CMP.W #$002D                         ;9EE09F|C92D00  |;
                       BPL CODE_9EE0C7                      ;9EE0A2|1023    |;
                       LDA.W $14C3,X                        ;9EE0A4|BDC314  |;
                       BEQ CODE_9EE0B1                      ;9EE0A7|F008    |;
                       LDA.W #$0000                         ;9EE0A9|A90000  |;
                       SEC                                  ;9EE0AC|38      |;
                       SBC.B $B5                            ;9EE0AD|E5B5    |;
                       STA.B $B5                            ;9EE0AF|85B5    |;
 
          CODE_9EE0B1:
                       JSL.L CODE_808658                    ;9EE0B1|22588680|;
                       AND.W #$0003                         ;9EE0B5|290300  |;
                       INC A                                ;9EE0B8|1A      |;
                       STA.B $A5                            ;9EE0B9|85A5    |;
                       LDA.B $B5                            ;9EE0BB|A5B5    |;
                       BPL CODE_9EE0C7                      ;9EE0BD|1008    |;
                       LDA.B $A5                            ;9EE0BF|A5A5    |;
                       CLC                                  ;9EE0C1|18      |;
                       ADC.W #$0004                         ;9EE0C2|690400  |;
                       STA.B $A5                            ;9EE0C5|85A5    |;
 
          CODE_9EE0C7:
                       LDA.B $A5                            ;9EE0C7|A5A5    |;
                       STA.W $0D03                          ;9EE0C9|8D030D  |;
 
          CODE_9EE0CC:
                       RTL                                  ;9EE0CC|6B      |;
 
          CODE_9EE0CD:
                       LDA.B $B1                            ;9EE0CD|A5B1    |;
                       SEC                                  ;9EE0CF|38      |;
                       SBC.W $0D71                          ;9EE0D0|ED710D  |;
                       STA.B $B1                            ;9EE0D3|85B1    |;
                       LDA.B $B5                            ;9EE0D5|A5B5    |;
                       SEC                                  ;9EE0D7|38      |;
                       SBC.W $0DD3                          ;9EE0D8|EDD30D  |;
                       LDX.B $A5                            ;9EE0DB|A6A5    |;
                       JSL.L CODE_809062                    ;9EE0DD|22629080|;
                       LDA.B $0A                            ;9EE0E1|A50A    |;
                       STA.B $B7                            ;9EE0E3|85B7    |;
                       LDA.B $08                            ;9EE0E5|A508    |;
                       STA.B $B5                            ;9EE0E7|85B5    |;
                       LDA.B $A9                            ;9EE0E9|A5A9    |;
                       LDX.B $B1                            ;9EE0EB|A6B1    |;
                       JSL.L CODE_809062                    ;9EE0ED|22629080|;
                       LDA.B $B5                            ;9EE0F1|A5B5    |;
                       SEC                                  ;9EE0F3|38      |;
                       SBC.B $08                            ;9EE0F4|E508    |;
                       STA.B $08                            ;9EE0F6|8508    |;
                       LDA.B $B7                            ;9EE0F8|A5B7    |;
                       SBC.B $0A                            ;9EE0FA|E50A    |;
                       STA.B $0A                            ;9EE0FC|850A    |;
                       LDA.B $AD                            ;9EE0FE|A5AD    |;
                       STA.B $04                            ;9EE100|8504    |;
                       JSL.L CODE_8091FC                    ;9EE102|22FC9180|;
                       LDA.B $00                            ;9EE106|A500    |;
                       STA.B $B5                            ;9EE108|85B5    |;
                       RTS                                  ;9EE10A|60      |;
 
          CODE_9EE10B:
                       PLA                                  ;9EE10B|68      |;
                       SEP #$20                             ;9EE10C|E220    |;
                       PLA                                  ;9EE10E|68      |;
                       REP #$30                             ;9EE10F|C230    |;
                       LDA.W $0DD3                          ;9EE111|ADD30D  |;
                       STA.B $A5                            ;9EE114|85A5    |;
                       LDA.W $14C3,X                        ;9EE116|BDC314  |;
                       BNE CODE_9EE123                      ;9EE119|D008    |;
                       LDA.W #$0000                         ;9EE11B|A90000  |;
                       SEC                                  ;9EE11E|38      |;
                       SBC.B $A5                            ;9EE11F|E5A5    |;
                       STA.B $A5                            ;9EE121|85A5    |;
 
          CODE_9EE123:
                       LDA.W #$0108                         ;9EE123|A90801  |;
                       SEC                                  ;9EE126|38      |;
                       SBC.B $A5                            ;9EE127|E5A5    |;
                       LSR A                                ;9EE129|4A      |;
                       LSR A                                ;9EE12A|4A      |;
                       LSR A                                ;9EE12B|4A      |;
                       CMP.W #$0014                         ;9EE12C|C91400  |;
                       BCC CODE_9EE134                      ;9EE12F|9003    |;
                       LDA.W #$0014                         ;9EE131|A91400  |;
 
          CODE_9EE134:
                       STA.B $A9                            ;9EE134|85A9    |;
                       STZ.W $1023,X                        ;9EE136|9E2310  |;
                       LDA.B $A9                            ;9EE139|A5A9    |;
                       STA.W $10A3,X                        ;9EE13B|9DA310  |;
                       LDA.W #$0013                         ;9EE13E|A91300  |;
                       STA.B $A5                            ;9EE141|85A5    |;
                       JMP.W CODE_9E8C18                    ;9EE143|4C188C  |;
                       LDA.W $1283,X                        ;9EE146|BD8312  |;
                       BIT.W #$0002                         ;9EE149|890200  |;
                       BEQ CODE_9EE156                      ;9EE14C|F008    |;
                       AND.W #$FFFD                         ;9EE14E|29FDFF  |;
                       STA.W $1283,X                        ;9EE151|9D8312  |;
                       BRA CODE_9EE17A                      ;9EE154|8024    |;
 
          CODE_9EE156:
                       LDA.W $15D8                          ;9EE156|ADD815  |;
                       BIT.W #$0008                         ;9EE159|890800  |;
                       BNE CODE_9EE161                      ;9EE15C|D003    |;
                       JMP.W CODE_9E8BE6                    ;9EE15E|4CE68B  |;
 
          CODE_9EE161:
                       LDA.W $1003,X                        ;9EE161|BD0310  |;
                       STA.B $A5                            ;9EE164|85A5    |;
                       STZ.B $AD                            ;9EE166|64AD    |;
                       LDA.W $10A3,X                        ;9EE168|BDA310  |;
                       SEC                                  ;9EE16B|38      |;
                       SBC.B $C1                            ;9EE16C|E5C1    |;
                       STA.W $10A3,X                        ;9EE16E|9DA310  |;
                       BPL CODE_9EE1C3                      ;9EE171|1050    |;
                       LDA.W #$0080                         ;9EE173|A98000  |;
                       TSB.B $AD                            ;9EE176|04AD    |;
                       BRA CODE_9EE1C3                      ;9EE178|8049    |;
 
          CODE_9EE17A:
                       LDA.W #$0008                         ;9EE17A|A90800  |;
                       STA.W $0D03                          ;9EE17D|8D030D  |;
                       LDA.W #$0008                         ;9EE180|A90800  |;
                       TSB.W $15D8                          ;9EE183|0CD815  |;
                       STZ.B $A5                            ;9EE186|64A5    |;
                       LDA.W #$0128                         ;9EE188|A92801  |;
                       STA.B $A9                            ;9EE18B|85A9    |;
                       LDA.W $14C3,X                        ;9EE18D|BDC314  |;
                       BNE CODE_9EE197                      ;9EE190|D005    |;
                       LDA.W #$FED8                         ;9EE192|A9D8FE  |;
                       STA.B $A9                            ;9EE195|85A9    |;
 
          CODE_9EE197:
                       LDA.B $A5                            ;9EE197|A5A5    |;
                       SEC                                  ;9EE199|38      |;
                       SBC.W $0D55,X                        ;9EE19A|FD550D  |;
                       STA.B $A5                            ;9EE19D|85A5    |;
                       LDA.B $A9                            ;9EE19F|A5A9    |;
                       SEC                                  ;9EE1A1|38      |;
                       SBC.W $0DB7,X                        ;9EE1A2|FDB70D  |;
                       STA.B $A9                            ;9EE1A5|85A9    |;
                       JSL.L CODE_9BB445                    ;9EE1A7|2245B49B|;
                       LDA.W #$000F                         ;9EE1AB|A90F00  |;
                       STA.W $0D05                          ;9EE1AE|8D050D  |;
                       LDY.W #$ED4A                         ;9EE1B1|A04AED  |;
                       JSL.L CODE_9EE698                    ;9EE1B4|2298E69E|;
                       BEQ CODE_9EE1BD                      ;9EE1B8|F003    |;
                       LDY.W #$EE5C                         ;9EE1BA|A05CEE  |;
 
          CODE_9EE1BD:
                       STY.B $A9                            ;9EE1BD|84A9    |;
                       JML.L CODE_9EA3DD                    ;9EE1BF|5CDDA39E|;
 
          CODE_9EE1C3:
                       CPX.W $0AD9                          ;9EE1C3|ECD90A  |;
                       BNE UNREACH_9EE219                   ;9EE1C6|D051    |;
                       LDA.W $11A3,X                        ;9EE1C8|BDA311  |;
                       CMP.W #$ED4A                         ;9EE1CB|C94AED  |;
                       BCC UNREACH_9EE219                   ;9EE1CE|9049    |;
                       CMP.W #$F021                         ;9EE1D0|C921F0  |;
                       BCS UNREACH_9EE219                   ;9EE1D3|B044    |;
                       LDA.W $11C3,X                        ;9EE1D5|BDC311  |;
                       CMP.W #$0018                         ;9EE1D8|C91800  |;
                       BCS CODE_9EE220                      ;9EE1DB|B043    |;
                       LDA.B $A5                            ;9EE1DD|A5A5    |;
                       BIT.W #$0008                         ;9EE1DF|890800  |;
                       BNE CODE_9EE1EA                      ;9EE1E2|D006    |;
                       AND.W #$0007                         ;9EE1E4|290700  |;
                       STA.W $0D03                          ;9EE1E7|8D030D  |;
 
          CODE_9EE1EA:
                       LDA.W $11C3,X                        ;9EE1EA|BDC311  |;
                       CMP.W #$0010                         ;9EE1ED|C91000  |;
                       BCS CODE_9EE21F                      ;9EE1F0|B02D    |;
                       LDA.W $0D05                          ;9EE1F2|AD050D  |;
                       CLC                                  ;9EE1F5|18      |;
                       ADC.B $C1                            ;9EE1F6|65C1    |;
                       STA.W $0D05                          ;9EE1F8|8D050D  |;
                       LDA.B $AD                            ;9EE1FB|A5AD    |;
                       BIT.W #$0080                         ;9EE1FD|898000  |;
                       BEQ CODE_9EE21F                      ;9EE200|F01D    |;
                       LDA.W #$001C                         ;9EE202|A91C00  |;
                       SEC                                  ;9EE205|38      |;
                       SBC.W $11C3,X                        ;9EE206|FDC311  |;
                       STA.W $11C3,X                        ;9EE209|9DC311  |;
                       CMP.W #$0018                         ;9EE20C|C91800  |;
                       BCC CODE_9EE21F                      ;9EE20F|900E    |;
                       LDA.W #$0018                         ;9EE211|A91800  |;
                       STA.W $11C3,X                        ;9EE214|9DC311  |;
                       BRA CODE_9EE220                      ;9EE217|8007    |;
 
       UNREACH_9EE219:
                       db $A9,$08,$00,$1C,$D8,$15           ;9EE219|        |;
 
          CODE_9EE21F:
                       RTL                                  ;9EE21F|6B      |;
 
          CODE_9EE220:
                       JSL.L CODE_9EDFF7                    ;9EE220|22F7DF9E|;
                       LDA.W #$0007                         ;9EE224|A90700  |;
                       PHA                                  ;9EE227|48      |;
                       LDA.W #$0008                         ;9EE228|A90800  |;
                       TRB.W $15D8                          ;9EE22B|1CD815  |;
                       STA.W $14E3,X                        ;9EE22E|9DE314  |;
                       STX.W $0D29                          ;9EE231|8E290D  |;
                       CPX.W $0AD9                          ;9EE234|ECD90A  |;
                       BEQ CODE_9EE23C                      ;9EE237|F003    |;
                       db $4C,$08,$E4                       ;9EE239|        |;
 
          CODE_9EE23C:
                       LDA.W #$0001                         ;9EE23C|A90100  |;
                       STA.B $01,S                          ;9EE23F|8301    |;
                       LDA.W #$1000                         ;9EE241|A90010  |;
                       TSB.W $15D8                          ;9EE244|0CD815  |;
                       LDA.W $11A3,X                        ;9EE247|BDA311  |;
                       CMP.W #$EE5C                         ;9EE24A|C95CEE  |;
                       BNE CODE_9EE264                      ;9EE24D|D015    |;
                       LDA.W #$0001                         ;9EE24F|A90100  |;
                       STA.B $01,S                          ;9EE252|8301    |;
                       LDA.W $0D05                          ;9EE254|AD050D  |;
                       LSR A                                ;9EE257|4A      |;
                       LSR A                                ;9EE258|4A      |;
                       EOR.W #$FFFF                         ;9EE259|49FFFF  |;
                       INC A                                ;9EE25C|1A      |;
                       CLC                                  ;9EE25D|18      |;
                       ADC.W $0D05                          ;9EE25E|6D050D  |;
                       STA.W $0D05                          ;9EE261|8D050D  |;
 
          CODE_9EE264:
                       LDA.W $0D05                          ;9EE264|AD050D  |;
                       STA.W $0BC5                          ;9EE267|8DC50B  |;
                       CMP.W #$001E                         ;9EE26A|C91E00  |;
                       BCC CODE_9EE274                      ;9EE26D|9005    |;
                       LDA.W #$0002                         ;9EE26F|A90200  |;
                       STA.B $01,S                          ;9EE272|8301    |;
 
          CODE_9EE274:
                       LDA.W $1363,X                        ;9EE274|BD6313  |;
                       STX.B $89                            ;9EE277|8689    |;
                       JSL.L CODE_9FDCEB                    ;9EE279|22EBDC9F|;
                       ADC.W #$0014                         ;9EE27D|691400  |;
                       TAX                                  ;9EE280|AA      |;
                       LDA.W $0D05                          ;9EE281|AD050D  |;
                       JSL.L CODE_808F98                    ;9EE284|22988F80|;
                       LDX.B $08                            ;9EE288|A608    |;
                       LDA.W #$2570                         ;9EE28A|A97025  |;
                       JSL.L CODE_809099                    ;9EE28D|22999080|;
                       LDA.B $0A                            ;9EE291|A50A    |;
                       STA.W $0D05                          ;9EE293|8D050D  |;
                       LDA.W BreakAwayActive_flg            ;9EE296|AD8B1E  |;
                       BEQ CODE_9EE2A5                      ;9EE299|F00A    |;
                       JSL.L Chk_Puc_Xing_BrkWay            ;9EE29B|224BC69E|;
                       LDA.W BreakAwayTrigger_flg           ;9EE29F|AD3816  |;
                       STA.W BreakAwayActive_flg            ;9EE2A2|8D8B1E  |;
 
          CODE_9EE2A5:
                       LDX.B $E4                            ;9EE2A5|A6E4    |;
                       LDA.W #$FFFF                         ;9EE2A7|A9FFFF  |;
                       STA.W $0AD9                          ;9EE2AA|8DD90A  |;
                       LDA.W #$0010                         ;9EE2AD|A91000  |;
                       STA.W $1203,X                        ;9EE2B0|9D0312  |;
                       TXA                                  ;9EE2B3|8A      |;
                       LSR A                                ;9EE2B4|4A      |;
                       STA.W $0CF3                          ;9EE2B5|8DF30C  |;
                       LDY.W #$0108                         ;9EE2B8|A00801  |;
                       LDA.W $14C3,X                        ;9EE2BB|BDC314  |;
                       BNE CODE_9EE2C3                      ;9EE2BE|D003    |;
                       LDY.W #$FEF8                         ;9EE2C0|A0F8FE  |;
 
          CODE_9EE2C3:
                       STY.B $A9                            ;9EE2C3|84A9    |;
                       LDA.W $0D03                          ;9EE2C5|AD030D  |;
                       ASL A                                ;9EE2C8|0A      |;
                       ASL A                                ;9EE2C9|0A      |;
                       TAY                                  ;9EE2CA|A8      |;
                       LDA.W #$009E                         ;9EE2CB|A99E00  |;
                       STA.B $8B                            ;9EE2CE|858B    |;
                       LDA.W #$E43F                         ;9EE2D0|A93FE4  |;
                       STA.B $89                            ;9EE2D3|8589    |;
                       LDA.B [$89],Y                        ;9EE2D5|B789    |;
                       SEC                                  ;9EE2D7|38      |;
                       SBC.W $0D71                          ;9EE2D8|ED710D  |;
                       STA.B $A5                            ;9EE2DB|85A5    |;
                       INY                                  ;9EE2DD|C8      |;
                       INY                                  ;9EE2DE|C8      |;
                       LDA.B [$89],Y                        ;9EE2DF|B789    |;
                       STA.B $AD                            ;9EE2E1|85AD    |;
                       PHA                                  ;9EE2E3|48      |;
                       LDA.B $A9                            ;9EE2E4|A5A9    |;
                       SEC                                  ;9EE2E6|38      |;
                       SBC.W $0DD3                          ;9EE2E7|EDD30D  |;
                       STA.B $A9                            ;9EE2EA|85A9    |;
                       PHA                                  ;9EE2EC|48      |;
                       LDA.B $A5                            ;9EE2ED|A5A5    |;
                       PHA                                  ;9EE2EF|48      |;
                       LDA.B $A5                            ;9EE2F0|A5A5    |;
                       LDY.B $A9                            ;9EE2F2|A4A9    |;
                       JSL.L CODE_9CA554                    ;9EE2F4|2254A59C|;
                       CMP.W #$0000                         ;9EE2F8|C90000  |;
                       BNE CODE_9EE2FE                      ;9EE2FB|D001    |;
                       db $1A                               ;9EE2FD|        |;
 
          CODE_9EE2FE:
                       STA.B $B1                            ;9EE2FE|85B1    |;
                       LDA.W $15D4                          ;9EE300|ADD415  |;
                       BIT.W #$0010                         ;9EE303|891000  |;
                       BEQ CODE_9EE30B                      ;9EE306|F003    |;
                       db $4C,$87,$E3                       ;9EE308|        |;
 
          CODE_9EE30B:
                       LDA.B $B1                            ;9EE30B|A5B1    |;
                       CMP.W #$00C9                         ;9EE30D|C9C900  |;
                       BCS CODE_9EE321                      ;9EE310|B00F    |;
                       LDA.W #$0010                         ;9EE312|A91000  |;
                       ADC.W $1383,X                        ;9EE315|7D8313  |;
                       JSL.L CODE_9BB385                    ;9EE318|2285B39B|;
                       CMP.W #$000F                         ;9EE31C|C90F00  |;
                       BCS CODE_9EE387                      ;9EE31F|B066    |;
 
          CODE_9EE321:
                       LDA.W $0D05                          ;9EE321|AD050D  |;
                       LSR A                                ;9EE324|4A      |;
                       LSR A                                ;9EE325|4A      |;
                       LSR A                                ;9EE326|4A      |;
                       SEC                                  ;9EE327|38      |;
                       SBC.W $1383,X                        ;9EE328|FD8313  |;
                       CLC                                  ;9EE32B|18      |;
                       ADC.W #$0010                         ;9EE32C|691000  |;
                       LDX.B $B1                            ;9EE32F|A6B1    |;
                       JSL.L CODE_809099                    ;9EE331|22999080|;
                       LDA.B $08                            ;9EE335|A508    |;
                       LSR A                                ;9EE337|4A      |;
                       LSR A                                ;9EE338|4A      |;
                       LSR A                                ;9EE339|4A      |;
                       LSR A                                ;9EE33A|4A      |;
                       LSR A                                ;9EE33B|4A      |;
                       LSR A                                ;9EE33C|4A      |;
                       STA.B $A5                            ;9EE33D|85A5    |;
                       LDA.B $B1                            ;9EE33F|A5B1    |;
                       CMP.W #$00FB                         ;9EE341|C9FB00  |;
                       BCS CODE_9EE348                      ;9EE344|B002    |;
                       LSR.B $A5                            ;9EE346|46A5    |;
 
          CODE_9EE348:
                       LDA.B $A5                            ;9EE348|A5A5    |;
                       CMP.W #$0088                         ;9EE34A|C98800  |;
                       BCC CODE_9EE354                      ;9EE34D|9005    |;
                       LDA.W #$0088                         ;9EE34F|A98800  |;
                       STA.B $A5                            ;9EE352|85A5    |;
 
          CODE_9EE354:
                       PHA                                  ;9EE354|48      |;
                       JSL.L CODE_9BB3A4                    ;9EE355|22A4B39B|;
                       ADC.B $03,S                          ;9EE359|6303    |;
                       STA.B $03,S                          ;9EE35B|8303    |;
                       LDA.B $01,S                          ;9EE35D|A301    |;
                       STA.B $A5                            ;9EE35F|85A5    |;
                       CMP.W #$003D                         ;9EE361|C93D00  |;
                       BCC CODE_9EE36D                      ;9EE364|9007    |;
                       LDA.W #$003C                         ;9EE366|A93C00  |;
                       STA.B $A5                            ;9EE369|85A5    |;
                       STA.B $01,S                          ;9EE36B|8301    |;
 
          CODE_9EE36D:
                       LDA.B $05,S                          ;9EE36D|A305    |;
                       BPL CODE_9EE373                      ;9EE36F|1002    |;
                       LSR.B $A5                            ;9EE371|46A5    |;
 
          CODE_9EE373:
                       JSL.L CODE_9BB3B0                    ;9EE373|22B0B39B|;
                       LDA.B $05,S                          ;9EE377|A305    |;
                       ADC.B $A5                            ;9EE379|65A5    |;
                       STA.B $05,S                          ;9EE37B|8305    |;
                       PLA                                  ;9EE37D|68      |;
                       LSR A                                ;9EE37E|4A      |;
                       JSL.L CODE_9BB370                    ;9EE37F|2270B39B|;
                       ADC.B $05,S                          ;9EE383|6305    |;
                       STA.B $05,S                          ;9EE385|8305    |;
 
          CODE_9EE387:
                       LDX.W $0D05                          ;9EE387|AE050D  |;
                       LDA.W #$0044                         ;9EE38A|A94400  |;
                       JSL.L CODE_808F5D                    ;9EE38D|225D8F80|;
                       PLX                                  ;9EE391|FA      |;
                       JSL.L CODE_809062                    ;9EE392|22629080|;
                       LDA.B $B1                            ;9EE396|A5B1    |;
                       STA.B $04                            ;9EE398|8504    |;
                       JSL.L CODE_8091FC                    ;9EE39A|22FC9180|;
                       LDA.B $00                            ;9EE39E|A500    |;
                       ASL A                                ;9EE3A0|0A      |;
                       STA.W $0EDF                          ;9EE3A1|8DDF0E  |;
                       LDX.W $0D05                          ;9EE3A4|AE050D  |;
                       LDA.W #$0044                         ;9EE3A7|A94400  |;
                       JSL.L CODE_808F5D                    ;9EE3AA|225D8F80|;
                       PLX                                  ;9EE3AE|FA      |;
                       JSL.L CODE_809062                    ;9EE3AF|22629080|;
                       LDA.B $B1                            ;9EE3B3|A5B1    |;
                       STA.B $04                            ;9EE3B5|8504    |;
                       JSL.L CODE_8091FC                    ;9EE3B7|22FC9180|;
                       LDA.B $00                            ;9EE3BB|A500    |;
                       ASL A                                ;9EE3BD|0A      |;
                       STA.W $0EFF                          ;9EE3BE|8DFF0E  |;
                       LDX.B $E4                            ;9EE3C1|A6E4    |;
                       PLA                                  ;9EE3C3|68      |;
                       BEQ CODE_9EE408                      ;9EE3C4|F042    |;
                       TAX                                  ;9EE3C6|AA      |;
                       LDA.W $0D05                          ;9EE3C7|AD050D  |;
                       JSL.L CODE_808F98                    ;9EE3CA|22988F80|;
                       LDX.B $08                            ;9EE3CE|A608    |;
                       LDA.W #$0044                         ;9EE3D0|A94400  |;
                       JSL.L CODE_808F98                    ;9EE3D3|22988F80|;
                       LDA.B $B1                            ;9EE3D7|A5B1    |;
                       STA.B $04                            ;9EE3D9|8504    |;
                       JSL.L CODE_80923F                    ;9EE3DB|223F9280|;
                       LDA.B $00                            ;9EE3DF|A500    |;
                       ASL A                                ;9EE3E1|0A      |;
                       STA.B $A9                            ;9EE3E2|85A9    |;
                       LDA.W #$0B33                         ;9EE3E4|A9330B  |;
                       LDX.B $B1                            ;9EE3E7|A6B1    |;
                       JSL.L CODE_809099                    ;9EE3E9|22999080|;
                       LDA.W $0D05                          ;9EE3ED|AD050D  |;
                       STA.B $04                            ;9EE3F0|8504    |;
                       JSL.L CODE_80923F                    ;9EE3F2|223F9280|;
                       LDX.B $E4                            ;9EE3F6|A6E4    |;
                       LDA.B $00                            ;9EE3F8|A500    |;
                       LSR A                                ;9EE3FA|4A      |;
                       ADC.B $A9                            ;9EE3FB|65A9    |;
                       CMP.W #$1801                         ;9EE3FD|C90118  |;
                       BCC CODE_9EE405                      ;9EE400|9003    |;
                       LDA.W #$1800                         ;9EE402|A90018  |;
 
          CODE_9EE405:
                       STA.W $0E01                          ;9EE405|8D010E  |;
 
          CODE_9EE408:
                       PLA                                  ;9EE408|68      |;
                       JSL.L CODE_9C9ABC                    ;9EE409|22BC9A9C|;
                       LDX.B $95                            ;9EE40D|A695    |;
                       LDY.W #$0108                         ;9EE40F|A00801  |;
                       LDA.W $14C3,X                        ;9EE412|BDC314  |;
                       BNE CODE_9EE41A                      ;9EE415|D003    |;
                       LDY.W #$FEF8                         ;9EE417|A0F8FE  |;
 
          CODE_9EE41A:
                       STY.B $C5                            ;9EE41A|84C5    |;
                       TYA                                  ;9EE41C|98      |;
                       SEC                                  ;9EE41D|38      |;
                       SBC.W $0DD3                          ;9EE41E|EDD30D  |;
                       EOR.W $0EFF                          ;9EE421|4DFF0E  |;
                       BPL CODE_9EE430                      ;9EE424|100A    |;
                       db $A9,$00,$00,$38,$ED,$FF,$0E,$8D   ;9EE426|        |;
                       db $FF,$0E                           ;9EE42E|        |;
 
          CODE_9EE430:
                       LDA.W $163A                          ;9EE430|AD3A16  |;
                       BEQ CODE_9EE43E                      ;9EE433|F009    |;
                       LDA.W #$0012                         ;9EE435|A91200  |;
                       STA.B $A5                            ;9EE438|85A5    |;
                       JSL.L CODE_9E8C18                    ;9EE43A|22188C9E|;
 
          CODE_9EE43E:
                       RTL                                  ;9EE43E|6B      |;
                       db $00,$00,$0C,$00,$0F,$00,$0C,$00   ;9EE43F|        |;
                       db $0F,$00,$06,$00,$0F,$00,$00,$00   ;9EE447|        |;
                       db $00,$00,$00,$00,$F1,$FF,$00,$00   ;9EE44F|        |;
                       db $F1,$FF,$06,$00                   ;9EE457|        |;
                       db $F1,$FF,$0C,$00,$00,$00,$06,$00   ;9EE45B|        |;
                       CPX.W $0AD9                          ;9EE463|ECD90A  |;
                       BNE CODE_9EE46D                      ;9EE466|D005    |;
                       LDA.W $19D4,X                        ;9EE468|BDD419  |;
                       BMI CODE_9EE47E                      ;9EE46B|3011    |;
 
          CODE_9EE46D:
                       JMP.W CODE_9E8BE6                    ;9EE46D|4CE68B  |;
                       db $6B                               ;9EE470|        |;
 
       UNREACH_9EE471:
                       db $22,$00,$80,$9E,$A9,$3C,$00,$9D   ;9EE471|        |;
                       db $03,$12,$4C,$D7,$8B               ;9EE479|        |;
 
          CODE_9EE47E:
                       LDA.W $15D6                          ;9EE47E|ADD615  |;
                       BNE UNREACH_9EE471                   ;9EE481|D0EE    |;
                       LDA.W $0DB7,X                        ;9EE483|BDB70D  |;
                       STA.B $A5                            ;9EE486|85A5    |;
                       LDY.W $14C3,X                        ;9EE488|BCC314  |;
                       BNE CODE_9EE495                      ;9EE48B|D008    |;
                       LDA.W #$0000                         ;9EE48D|A90000  |;
                       SEC                                  ;9EE490|38      |;
                       SBC.B $A5                            ;9EE491|E5A5    |;
                       STA.B $A5                            ;9EE493|85A5    |;
 
          CODE_9EE495:
                       LDA.W $1283,X                        ;9EE495|BD8312  |;
                       BIT.W #$0002                         ;9EE498|890200  |;
                       BEQ CODE_9EE4BE                      ;9EE49B|F021    |;
                       AND.W #$FFFD                         ;9EE49D|29FDFF  |;
                       STA.W $1283,X                        ;9EE4A0|9D8312  |;
                       STZ.W $1003,X                        ;9EE4A3|9E0310  |;
                       STZ.W $1023,X                        ;9EE4A6|9E2310  |;
                       LDA.W #$0008                         ;9EE4A9|A90800  |;
                       STA.W $10A3,X                        ;9EE4AC|9DA310  |;
                       STZ.W $1EA7                          ;9EE4AF|9CA71E  |;
                       LDA.W $0792                          ;9EE4B2|AD9207  |;
                       AND.W #$0003                         ;9EE4B5|290300  |;
                       STA.W $1043,X                        ;9EE4B8|9D4310  |;
                       JSR.W CODE_9EE5E6                    ;9EE4BB|20E6E5  |;
 
          CODE_9EE4BE:
                       LDA.W $1EA5                          ;9EE4BE|ADA51E  |;
                       BMI CODE_9EE502                      ;9EE4C1|303F    |;
                       LDA.B $A5                            ;9EE4C3|A5A5    |;
                       CMP.W $1EA5                          ;9EE4C5|CDA51E  |;
                       BMI CODE_9EE4D3                      ;9EE4C8|3009    |;
                       JSR.W CODE_9EE593                    ;9EE4CA|2093E5  |;
                       LDA.W $1163,X                        ;9EE4CD|BD6311  |;
                       STA.W $1EAB                          ;9EE4D0|8DAB1E  |;
 
          CODE_9EE4D3:
                       LDA.W $1EA1                          ;9EE4D3|ADA11E  |;
                       STA.B $A5                            ;9EE4D6|85A5    |;
                       LDA.W $1EA3                          ;9EE4D8|ADA31E  |;
                       STA.B $A9                            ;9EE4DB|85A9    |;
                       LDA.W $14C3,X                        ;9EE4DD|BDC314  |;
                       BNE CODE_9EE4EA                      ;9EE4E0|D008    |;
                       LDA.W #$0000                         ;9EE4E2|A90000  |;
                       SEC                                  ;9EE4E5|38      |;
                       SBC.B $A9                            ;9EE4E6|E5A9    |;
                       STA.B $A9                            ;9EE4E8|85A9    |;
 
          CODE_9EE4EA:
                       LDA.W #$009E                         ;9EE4EA|A99E00  |;
                       STA.B $8B                            ;9EE4ED|858B    |;
                       LDA.W #$E592                         ;9EE4EF|A992E5  |;
                       STA.B $89                            ;9EE4F2|8589    |;
                       LDA.W $1023,X                        ;9EE4F4|BD2310  |;
                       SEC                                  ;9EE4F7|38      |;
                       SBC.W $0CDD                          ;9EE4F8|EDDD0C  |;
                       STA.W $1023,X                        ;9EE4FB|9D2310  |;
                       JML.L CODE_9EA5A4                    ;9EE4FE|5CA4A59E|;
 
          CODE_9EE502:
                       LDA.W $1163,X                        ;9EE502|BD6311  |;
                       SEC                                  ;9EE505|38      |;
                       SBC.W $1EAB                          ;9EE506|EDAB1E  |;
                       BEQ CODE_9EE4D3                      ;9EE509|F0C8    |;
                       INC A                                ;9EE50B|1A      |;
                       AND.W #$0007                         ;9EE50C|290700  |;
                       CMP.W #$0003                         ;9EE50F|C90300  |;
                       BCS CODE_9EE51F                      ;9EE512|B00B    |;
                       JSL.L CODE_808658                    ;9EE514|22588680|;
                       AND.W #$0F80                         ;9EE518|29800F  |;
                       BNE CODE_9EE4D3                      ;9EE51B|D0B6    |;
                       BRA CODE_9EE528                      ;9EE51D|8009    |;
 
          CODE_9EE51F:
                       JSL.L CODE_808658                    ;9EE51F|22588680|;
                       AND.W #$0600                         ;9EE523|290006  |;
                       BNE CODE_9EE4D3                      ;9EE526|D0AB    |;
 
          CODE_9EE528:
                       JSL.L CODE_808658                    ;9EE528|22588680|;
                       AND.W #$0001                         ;9EE52C|290100  |;
                       INC A                                ;9EE52F|1A      |;
                       INC A                                ;9EE530|1A      |;
                       STA.B $A5                            ;9EE531|85A5    |;
                       LDY.W $1EA9                          ;9EE533|ACA91E  |;
                       BPL CODE_9EE540                      ;9EE536|1008    |;
                       LDA.B $A5                            ;9EE538|A5A5    |;
                       CLC                                  ;9EE53A|18      |;
                       ADC.W #$0003                         ;9EE53B|690300  |;
                       STA.B $A5                            ;9EE53E|85A5    |;
 
          CODE_9EE540:
                       LDA.B $A5                            ;9EE540|A5A5    |;
                       STA.W $0D03                          ;9EE542|8D030D  |;
                       LDA.W #$0014                         ;9EE545|A91400  |;
                       STA.W $0D05                          ;9EE548|8D050D  |;
                       LDA.W #$0000                         ;9EE54B|A90000  |;
                       SEC                                  ;9EE54E|38      |;
                       SBC.W $0D55,X                        ;9EE54F|FD550D  |;
                       STA.B $A5                            ;9EE552|85A5    |;
                       LDA.W $14C3,X                        ;9EE554|BDC314  |;
                       BNE CODE_9EE564                      ;9EE557|D00B    |;
                       LDA.W #$FEF8                         ;9EE559|A9F8FE  |;
                       SEC                                  ;9EE55C|38      |;
                       SBC.W $0DB7,X                        ;9EE55D|FDB70D  |;
                       STA.B $A9                            ;9EE560|85A9    |;
                       BRA CODE_9EE56D                      ;9EE562|8009    |;
 
          CODE_9EE564:
                       LDA.W #$0108                         ;9EE564|A90801  |;
                       SEC                                  ;9EE567|38      |;
                       SBC.W $0DB7,X                        ;9EE568|FDB70D  |;
                       STA.B $A9                            ;9EE56B|85A9    |;
 
          CODE_9EE56D:
                       JSL.L CODE_9BB445                    ;9EE56D|2245B49B|;
                       JSL.L CODE_9EE698                    ;9EE571|2298E69E|;
                       BEQ CODE_9EE57C                      ;9EE575|F005    |;
                       LDA.W #$F020                         ;9EE577|A920F0  |;
                       BRA CODE_9EE57F                      ;9EE57A|8003    |;
 
          CODE_9EE57C:
                       LDA.W #$EF6E                         ;9EE57C|A96EEF  |;
 
          CODE_9EE57F:
                       JSL.L CODE_9EA3F1                    ;9EE57F|22F1A39E|;
                       JSL.L CODE_9EA419                    ;9EE583|2219A49E|;
                       LDA.W #$0002                         ;9EE587|A90200  |;
                       STA.W $11E3,X                        ;9EE58A|9DE311  |;
                       JSL.L CODE_9EE220                    ;9EE58D|2220E29E|;
                       RTL                                  ;9EE591|6B      |;
                       RTL                                  ;9EE592|6B      |;
 
          CODE_9EE593:
                       LDA.W $1EA7                          ;9EE593|ADA71E  |;
                       ASL A                                ;9EE596|0A      |;
                       ADC.W $1EA7                          ;9EE597|6DA71E  |;
                       ASL A                                ;9EE59A|0A      |;
                       TAY                                  ;9EE59B|A8      |;
                       LDA.W #$009E                         ;9EE59C|A99E00  |;
                       STA.B $8B                            ;9EE59F|858B    |;
                       LDA.W #$E5CE                         ;9EE5A1|A9CEE5  |;
                       STA.B $89                            ;9EE5A4|8589    |;
                       LDA.B [$89],Y                        ;9EE5A6|B789    |;
                       STA.B $A5                            ;9EE5A8|85A5    |;
                       LDA.W $1EA9                          ;9EE5AA|ADA91E  |;
                       BPL CODE_9EE5B7                      ;9EE5AD|1008    |;
                       LDA.W #$0000                         ;9EE5AF|A90000  |;
                       SEC                                  ;9EE5B2|38      |;
                       SBC.B $A5                            ;9EE5B3|E5A5    |;
                       STA.B $A5                            ;9EE5B5|85A5    |;
 
          CODE_9EE5B7:
                       LDA.B $A5                            ;9EE5B7|A5A5    |;
                       STA.W $1EA1                          ;9EE5B9|8DA11E  |;
                       INY                                  ;9EE5BC|C8      |;
                       INY                                  ;9EE5BD|C8      |;
                       LDA.B [$89],Y                        ;9EE5BE|B789    |;
                       STA.W $1EA3                          ;9EE5C0|8DA31E  |;
                       INY                                  ;9EE5C3|C8      |;
                       INY                                  ;9EE5C4|C8      |;
                       LDA.B [$89],Y                        ;9EE5C5|B789    |;
                       STA.W $1EA5                          ;9EE5C7|8DA51E  |;
                       INC.W $1EA7                          ;9EE5CA|EEA71E  |;
                       RTS                                  ;9EE5CD|60      |;
                       db $28,$00,$78,$00,$4A,$00,$EA,$FF   ;9EE5CE|        |;
                       db $97,$00,$86,$00,$EA,$FF,$E0,$00   ;9EE5D6|        |;
                       db $B1,$00,$2C,$00,$E3,$00,$FF,$FF   ;9EE5DE|        |;
 
          CODE_9EE5E6:
                       LDA.B $A5                            ;9EE5E6|A5A5    |;
                       CMP.W #$002C                         ;9EE5E8|C92C00  |;
                       BPL CODE_9EE635                      ;9EE5EB|1048    |;
                       JSL.L CODE_808658                    ;9EE5ED|22588680|;
                       AND.W #$00C0                         ;9EE5F1|29C000  |;
                       BEQ CODE_9EE600                      ;9EE5F4|F00A    |;
                       LDA.W $0E03,X                        ;9EE5F6|BD030E  |;
                       BIT.W #$0800                         ;9EE5F9|890008  |;
                       BNE CODE_9EE611                      ;9EE5FC|D013    |;
                       BRA CODE_9EE616                      ;9EE5FE|8016    |;
 
          CODE_9EE600:
                       JSL.L CODE_808658                    ;9EE600|22588680|;
                       AND.W #$00F0                         ;9EE604|29F000  |;
                       STA.B $A5                            ;9EE607|85A5    |;
                       LDA.W #$007F                         ;9EE609|A97F00  |;
                       SEC                                  ;9EE60C|38      |;
                       SBC.B $A5                            ;9EE60D|E5A5    |;
                       BMI CODE_9EE616                      ;9EE60F|3005    |;
 
          CODE_9EE611:
                       LDA.W #$002D                         ;9EE611|A92D00  |;
                       BRA CODE_9EE619                      ;9EE614|8003    |;
 
          CODE_9EE616:
                       LDA.W #$FFD3                         ;9EE616|A9D3FF  |;
 
          CODE_9EE619:
                       LDY.W $14C3,X                        ;9EE619|BCC314  |;
                       BNE CODE_9EE622                      ;9EE61C|D004    |;
                       db $49,$FF,$FF,$1A                   ;9EE61E|        |;
 
          CODE_9EE622:
                       STA.W $1EA9                          ;9EE622|8DA91E  |;
                       STA.W $1EA1                          ;9EE625|8DA11E  |;
                       LDA.W #$0028                         ;9EE628|A92800  |;
                       STA.W $1EA3                          ;9EE62B|8DA31E  |;
                       LDA.W #$001E                         ;9EE62E|A91E00  |;
                       STA.W $1EA5                          ;9EE631|8DA51E  |;
                       RTS                                  ;9EE634|60      |;
 
          CODE_9EE635:
                       LDA.W $0D55,X                        ;9EE635|BD550D  |;
                       CMP.W #$0020                         ;9EE638|C92000  |;
                       BPL UNREACH_9EE690                   ;9EE63B|1053    |;
                       CMP.W #$FFE0                         ;9EE63D|C9E0FF  |;
                       BMI UNREACH_9EE690                   ;9EE640|304E    |;
                       JSL.L CODE_808658                    ;9EE642|22588680|;
                       AND.W #$00C0                         ;9EE646|29C000  |;
                       BEQ UNREACH_9EE655                   ;9EE649|F00A    |;
                       LDA.W $0E03,X                        ;9EE64B|BD030E  |;
                       BIT.W #$0800                         ;9EE64E|890008  |;
                       BNE UNREACH_9EE666                   ;9EE651|D013    |;
                       BRA CODE_9EE66B                      ;9EE653|8016    |;
 
       UNREACH_9EE655:
                       db $22,$58,$86,$80,$29,$F0,$00,$85   ;9EE655|        |;
                       db $A5,$A9,$7F,$00,$38,$E5,$A5,$30   ;9EE65D|        |;
                       db $05                               ;9EE665|        |;
 
       UNREACH_9EE666:
                       db $A9,$2C,$00,$80,$03               ;9EE666|        |;
 
          CODE_9EE66B:
                       LDA.W #$FFD4                         ;9EE66B|A9D4FF  |;
                       LDY.W $14C3,X                        ;9EE66E|BCC314  |;
                       BNE CODE_9EE677                      ;9EE671|D004    |;
                       EOR.W #$FFFF                         ;9EE673|49FFFF  |;
                       INC A                                ;9EE676|1A      |;
 
          CODE_9EE677:
                       STA.W $1EA9                          ;9EE677|8DA91E  |;
                       STA.W $1EA1                          ;9EE67A|8DA11E  |;
                       LDA.W #$0002                         ;9EE67D|A90200  |;
                       STA.W $1EA7                          ;9EE680|8DA71E  |;
                       LDA.W #$0097                         ;9EE683|A99700  |;
                       STA.W $1EA3                          ;9EE686|8DA31E  |;
                       LDA.W #$0086                         ;9EE689|A98600  |;
                       STA.W $1EA5                          ;9EE68C|8DA51E  |;
                       RTS                                  ;9EE68F|60      |;
 
       UNREACH_9EE690:
                       db $8D,$A9,$1E,$9C,$A1,$1E,$80,$E5   ;9EE690|        |;
 
          CODE_9EE698:
                       LDA.B $A5                            ;9EE698|A5A5    |;
                       EOR.W #$FFFF                         ;9EE69A|49FFFF  |;
                       INC A                                ;9EE69D|1A      |;
                       CLC                                  ;9EE69E|18      |;
                       ADC.W $1163,X                        ;9EE69F|7D6311  |;
                       AND.W #$0007                         ;9EE6A2|290700  |;
                       STA.B $A5                            ;9EE6A5|85A5    |;
                       LDA.W $0E03,X                        ;9EE6A7|BD030E  |;
                       BIT.W #$0800                         ;9EE6AA|890008  |;
                       BEQ CODE_9EE6BB                      ;9EE6AD|F00C    |;
                       PHX                                  ;9EE6AF|DA      |;
                       LDX.B $A5                            ;9EE6B0|A6A5    |;
                       LDA.L UNREACH_9EE6C7,X               ;9EE6B2|BFC7E69E|;
                       PLX                                  ;9EE6B6|FA      |;
                       AND.W #$00FF                         ;9EE6B7|29FF00  |;
                       RTL                                  ;9EE6BA|6B      |;
 
          CODE_9EE6BB:
                       PHX                                  ;9EE6BB|DA      |;
                       LDX.B $A5                            ;9EE6BC|A6A5    |;
                       LDA.L DATA8_9EE6CA,X                 ;9EE6BE|BFCAE69E|;
                       PLX                                  ;9EE6C2|FA      |;
                       AND.W #$00FF                         ;9EE6C3|29FF00  |;
                       RTL                                  ;9EE6C6|6B      |;
 
       UNREACH_9EE6C7:
                       db $00                               ;9EE6C7|        |;
                       db $00,$00                           ;9EE6C8|        |;
 
         DATA8_9EE6CA:
                       db $00,$01,$01,$01,$01,$00           ;9EE6CA|        |;
                       db $00                               ;9EE6D0|        |;
                       db $00                               ;9EE6D1|        |;
 
          CODE_9EE6D2:
                       LDA.W $0F43,X                        ;9EE6D2|BD430F  |;
                       BNE CODE_9EE6F6                      ;9EE6D5|D01F    |;
                       LDA.W $0D71                          ;9EE6D7|AD710D  |;
                       CMP.W #$FFF0                         ;9EE6DA|C9F0FF  |;
                       BMI CODE_9EE6F6                      ;9EE6DD|3017    |;
                       CMP.W #$0010                         ;9EE6DF|C91000  |;
                       BPL CODE_9EE6F6                      ;9EE6E2|1012    |;
                       LDA.W $0DD3                          ;9EE6E4|ADD30D  |;
                       CMP.W #$0108                         ;9EE6E7|C90801  |;
                       BPL UNREACH_9EE6F1                   ;9EE6EA|1005    |;
                       CMP.W #$FEF8                         ;9EE6EC|C9F8FE  |;
                       BPL CODE_9EE6F6                      ;9EE6EF|1005    |;
 
       UNREACH_9EE6F1:
                       db $C9,$10,$01,$90,$0F               ;9EE6F1|        |;
 
          CODE_9EE6F6:
                       LDA.W $1163,X                        ;9EE6F6|BD6311  |;
                       AND.W #$0007                         ;9EE6F9|290700  |;
                       STA.W $0D03                          ;9EE6FC|8D030D  |;
                       LDA.W #$0004                         ;9EE6FF|A90400  |;
                       TSB.W $15D8                          ;9EE702|0CD815  |;
                       RTL                                  ;9EE705|6B      |;
                       LDA.W $1283,X                        ;9EE706|BD8312  |;
                       BIT.W #$0002                         ;9EE709|890200  |;
                       BEQ CODE_9EE720                      ;9EE70C|F012    |;
                       AND.W #$FFFD                         ;9EE70E|29FDFF  |;
                       ORA.W #$0001                         ;9EE711|090100  |;
                       STA.W $1283,X                        ;9EE714|9D8312  |;
                       STZ.W $1023,X                        ;9EE717|9E2310  |;
                       LDA.W #$0008                         ;9EE71A|A90800  |;
                       STA.W $10A3,X                        ;9EE71D|9DA310  |;
 
          CODE_9EE720:
                       LDA.W $0BAD,X                        ;9EE720|BDAD0B  |;
                       SEC                                  ;9EE723|38      |;
                       SBC.W $0ADB                          ;9EE724|EDDB0A  |;
                       STA.W $0BAD,X                        ;9EE727|9DAD0B  |;
                       BMI CODE_9EE77E                      ;9EE72A|3052    |;
                       LDA.W $0AD9                          ;9EE72C|ADD90A  |;
                       BPL CODE_9EE77E                      ;9EE72F|104D    |;
                       LDA.W $0BAB                          ;9EE731|ADAB0B  |;
                       BNE CODE_9EE797                      ;9EE734|D061    |;
                       LDY.W $19D4,X                        ;9EE736|BCD419  |;
                       BMI CODE_9EE74E                      ;9EE739|3013    |;
                       LDA.W $0AB8,Y                        ;9EE73B|B9B80A  |;
                       BIT.W #$8000                         ;9EE73E|890080  |;
                       BNE CODE_9EE77E                      ;9EE741|D03B    |;
                       BIT.W #$0080                         ;9EE743|898000  |;
                       BEQ CODE_9EE74E                      ;9EE746|F006    |;
                       db $EE,$AB,$0B,$80,$4A,$6B           ;9EE748|        |;
 
          CODE_9EE74E:
                       LDY.B zpCurntTeamLoopVal             ;9EE74E|A491    |;
                       LDA.W $19D0,Y                        ;9EE750|B9D019  |;
                       BNE CODE_9EE779                      ;9EE753|D024    |;
                       LDA.W $14C3,X                        ;9EE755|BDC314  |;
                       BNE UNREACH_9EE771                   ;9EE758|D017    |;
                       LDA.W $0DB7,X                        ;9EE75A|BDB70D  |;
                       CMP.W #$FFA8                         ;9EE75D|C9A8FF  |;
                       BPL CODE_9EE779                      ;9EE760|1017    |;
                       JSL.L CODE_808658                    ;9EE762|22588680|;
                       AND.W #$0080                         ;9EE766|298000  |;
                       BNE CODE_9EE779                      ;9EE769|D00E    |;
                       INC.W $0BAB                          ;9EE76B|EEAB0B  |;
                       JMP.W CODE_9EE797                    ;9EE76E|4C97E7  |;
 
       UNREACH_9EE771:
                       db $BD,$B7,$0D,$C9,$58,$00,$10,$E9   ;9EE771|        |;
 
          CODE_9EE779:
                       LDA.W $0AD9                          ;9EE779|ADD90A  |;
                       BMI CODE_9EE796                      ;9EE77C|3018    |;
 
          CODE_9EE77E:
                       LDA.W #$FFFF                         ;9EE77E|A9FFFF  |;
                       STA.W $0D07                          ;9EE781|8D070D  |;
                       STZ.W $14E3,X                        ;9EE784|9EE314  |;
                       STZ.W $0BAB                          ;9EE787|9CAB0B  |;
                       LDA.W $1283,X                        ;9EE78A|BD8312  |;
                       AND.W #$FFFE                         ;9EE78D|29FEFF  |;
                       STA.W $1283,X                        ;9EE790|9D8312  |;
                       JMP.W CODE_9E8BE6                    ;9EE793|4CE68B  |;
 
          CODE_9EE796:
                       RTL                                  ;9EE796|6B      |;
 
          CODE_9EE797:
                       LDA.W $11A3,X                        ;9EE797|BDA311  |;
                       CMP.W #$EF6E                         ;9EE79A|C96EEF  |;
                       BEQ CODE_9EE7F6                      ;9EE79D|F057    |;
                       CMP.W #$F020                         ;9EE79F|C920F0  |;
                       BEQ CODE_9EE7F6                      ;9EE7A2|F052    |;
                       PHY                                  ;9EE7A4|5A      |;
                       LDY.W #$0000                         ;9EE7A5|A00000  |;
                       CPX.W #$000C                         ;9EE7A8|E00C00  |;
                       BMI CODE_9EE7B0                      ;9EE7AB|3003    |;
                       LDY.W #$0002                         ;9EE7AD|A00200  |;
 
          CODE_9EE7B0:
                       LDA.W $17D2,Y                        ;9EE7B0|B9D217  |;
                       INC A                                ;9EE7B3|1A      |;
                       STA.W $17D2,Y                        ;9EE7B4|99D217  |;
                       PLY                                  ;9EE7B7|7A      |;
                       LDA.W #$0000                         ;9EE7B8|A90000  |;
                       SEC                                  ;9EE7BB|38      |;
                       SBC.W $0BA7                          ;9EE7BC|EDA70B  |;
                       STA.B $A5                            ;9EE7BF|85A5    |;
                       LDA.W $14C3,X                        ;9EE7C1|BDC314  |;
                       BNE UNREACH_9EE7D1                   ;9EE7C4|D00B    |;
                       LDA.W #$FEF8                         ;9EE7C6|A9F8FE  |;
                       SEC                                  ;9EE7C9|38      |;
                       SBC.W $0BA9                          ;9EE7CA|EDA90B  |;
                       STA.B $A9                            ;9EE7CD|85A9    |;
                       BRA CODE_9EE7DA                      ;9EE7CF|8009    |;
 
       UNREACH_9EE7D1:
                       db $A9,$08,$01,$38,$ED,$A9,$0B,$85   ;9EE7D1|        |;
                       db $A9                               ;9EE7D9|        |;
 
          CODE_9EE7DA:
                       JSL.L CODE_9BB445                    ;9EE7DA|2245B49B|;
                       JSL.L CODE_9EE698                    ;9EE7DE|2298E69E|;
                       BEQ CODE_9EE7E9                      ;9EE7E2|F005    |;
                       LDA.W #$F020                         ;9EE7E4|A920F0  |;
                       BRA CODE_9EE7EC                      ;9EE7E7|8003    |;
 
          CODE_9EE7E9:
                       LDA.W #$EF6E                         ;9EE7E9|A96EEF  |;
          CODE_9EE7EC:
                       JSL.L CODE_9EA3F1                    ;9EE7EC|22F1A39E|;
                       JMP.W CODE_9EE796                    ;9EE7F0|4C96E7  |;
 
       UNREACH_9EE7F3:
                       db $4C,$7E,$E7                       ;9EE7F3|        |;
 
          CODE_9EE7F6:
                       LDA.W #$000A                         ;9EE7F6|A90A00  |;
                       STA.W $1203,X                        ;9EE7F9|9D0312  |;
                       LDA.W $11C3,X                        ;9EE7FC|BDC311  |;
                       CMP.W #$0010                         ;9EE7FF|C91000  |;
                       BCS UNREACH_9EE7F3                   ;9EE802|B0EF    |;
                       TXA                                  ;9EE804|8A      |;
                       JSL.L CODE_9BC002                    ;9EE805|2202C09B|;
                       LDA.W $0D55,X                        ;9EE809|BD550D  |;
                       CLC                                  ;9EE80C|18      |;
                       ADC.B $A5                            ;9EE80D|65A5    |;
                       SEC                                  ;9EE80F|38      |;
                       SBC.W $0D71                          ;9EE810|ED710D  |;
                       STA.B $A5                            ;9EE813|85A5    |;
                       LDA.W $0DB7,X                        ;9EE815|BDB70D  |;
                       CLC                                  ;9EE818|18      |;
                       ADC.B $A9                            ;9EE819|65A9    |;
                       SEC                                  ;9EE81B|38      |;
                       SBC.W $0DD3                          ;9EE81C|EDD30D  |;
                       STA.B $A9                            ;9EE81F|85A9    |;
                       LDY.B $A5                            ;9EE821|A4A5    |;
                       JSL.L CODE_9CA554                    ;9EE823|2254A59C|;
                       CMP.W #$0008                         ;9EE827|C90800  |;
                       BCS CODE_9EE891                      ;9EE82A|B065    |;
                       STZ.W $11E3,X                        ;9EE82C|9EE311  |;
                       CMP.W #$000C                         ;9EE82F|C90C00  |;
                       BCS CODE_9EE891                      ;9EE832|B05D    |;
                       STX.W $0AD9                          ;9EE834|8ED90A  |;
                       LDY.W $19D4,X                        ;9EE837|BCD419  |;
                       BMI CODE_9EE844                      ;9EE83A|3008    |;
                       db $B9,$A4,$0A,$8D,$03,$0D,$80,$06   ;9EE83C|        |;
 
          CODE_9EE844:
                       LDA.W #$0008                         ;9EE844|A90800  |;
                       STA.W $0D03                          ;9EE847|8D030D  |;
                       LDA.W #$0024                         ;9EE84A|A92400  |;
                       STA.W $0D05                          ;9EE84D|8D050D  |;
                       STA.W $14E3,X                        ;9EE850|9DE314  |;
                       LDA.W $15D6                          ;9EE853|ADD615  |;
                       BNE CODE_9EE86C                      ;9EE856|D014    |;
                       PHY                                  ;9EE858|5A      |;
                       LDY.W #$0000                         ;9EE859|A00000  |;
                       CPX.W #$000C                         ;9EE85C|E00C00  |;
                       BMI CODE_9EE864                      ;9EE85F|3003    |;
                       LDY.W #$0002                         ;9EE861|A00200  |;
 
          CODE_9EE864:
                       LDA.W GmStat_OneTmrAtmpt,Y           ;9EE864|B9D617  |;
                       INC A                                ;9EE867|1A      |;
                       STA.W GmStat_OneTmrAtmpt,Y           ;9EE868|99D617  |;
                       PLY                                  ;9EE86B|7A      |;
 
          CODE_9EE86C:
                       LDA.W #$0001                         ;9EE86C|A90100  |;
                       STA.W OneTimerFlg                    ;9EE86F|8D891E  |;
                       LDA.W $19BE                          ;9EE872|ADBE19  |;
                       CLC                                  ;9EE875|18      |;
                       ADC.W #$000A                         ;9EE876|690A00  |;
                       BMI CODE_9EE87E                      ;9EE879|3003    |;
                       STA.W $19BE                          ;9EE87B|8DBE19  |;
 
          CODE_9EE87E:
                       LDA.B zpCurntTeamLoopVal             ;9EE87E|A591    |;
                       PHA                                  ;9EE880|48      |;
                       STX.B zpCurntTeamLoopVal             ;9EE881|8691    |;
                       JSL.L CODE_9EC4F3                    ;9EE883|22F3C49E|;
                       PLA                                  ;9EE887|68      |;
                       STA.B zpCurntTeamLoopVal             ;9EE888|8591    |;
                       JSL.L CODE_9EE220                    ;9EE88A|2220E29E|;
                       JMP.W CODE_9EE77E                    ;9EE88E|4C7EE7  |;
 
          CODE_9EE891:
                       LDA.W $0AD9                          ;9EE891|ADD90A  |;
                       BMI CODE_9EE89E                      ;9EE894|3008    |;
                       db $EC,$D9,$0A,$F0,$03,$4C,$7E,$E7   ;9EE896|        |;
 
          CODE_9EE89E:
                       RTL                                  ;9EE89E|6B      |;
 
          CODE_9EE89F:
                       LDA.W $0D2D                          ;9EE89F|AD2D0D  |;
                       BNE CODE_9EE8B4                      ;9EE8A2|D010    |;
                       LDA.W #$0010                         ;9EE8A4|A91000  |;
                       CLC                                  ;9EE8A7|18      |;
                       ADC.W $13E3,X                        ;9EE8A8|7DE313  |;
                       JSL.L CODE_9BB385                    ;9EE8AB|2285B39B|;
                       CMP.W #$0009                         ;9EE8AF|C90900  |;
                       BCS CODE_9EE8ED                      ;9EE8B2|B039    |;
 
          CODE_9EE8B4:
                       LDA.W #$0006                         ;9EE8B4|A90600  |;
                       JSL.L CODE_9BB385                    ;9EE8B7|2285B39B|;
                       STA.B $A5                            ;9EE8BB|85A5    |;
                       CPX.W #$000C                         ;9EE8BD|E00C00  |;
                       BCC CODE_9EE8C8                      ;9EE8C0|9006    |;
                       CLC                                  ;9EE8C2|18      |;
                       ADC.W #$0006                         ;9EE8C3|690600  |;
                       STA.B $A5                            ;9EE8C6|85A5    |;
 
          CODE_9EE8C8:
                       LDA.W $0F43,X                        ;9EE8C8|BD430F  |;
                       BEQ CODE_9EE8E7                      ;9EE8CB|F01A    |;
                       LDA.W $0D71                          ;9EE8CD|AD710D  |;
                       CMP.W #$FFD7                         ;9EE8D0|C9D7FF  |;
                       BMI CODE_9EE8E7                      ;9EE8D3|3012    |;
                       CMP.W #$0029                         ;9EE8D5|C92900  |;
                       BPL CODE_9EE8E7                      ;9EE8D8|100D    |;
                       LDA.W $0DD3                          ;9EE8DA|ADD30D  |;
                       CMP.W #$FF33                         ;9EE8DD|C933FF  |;
                       BMI CODE_9EE8ED                      ;9EE8E0|300B    |;
                       CMP.W #$00CD                         ;9EE8E2|C9CD00  |;
                       BPL CODE_9EE8ED                      ;9EE8E5|1006    |;
 
          CODE_9EE8E7:
                       ASL.B $A5                            ;9EE8E7|06A5    |;
                       CPX.B $A5                            ;9EE8E9|E4A5    |;
                       BNE CODE_9EE8EE                      ;9EE8EB|D001    |;
 
          CODE_9EE8ED:
                       RTL                                  ;9EE8ED|6B      |;
 
          CODE_9EE8EE:
                       LDY.B $A5                            ;9EE8EE|A4A5    |;
                       STY.B $89                            ;9EE8F0|8489    |;
                       LDA.W $0F43,Y                        ;9EE8F2|B9430F  |;
                       BEQ CODE_9EE8ED                      ;9EE8F5|F0F6    |;
                       BMI CODE_9EE8ED                      ;9EE8F7|30F4    |;
                       LDA.W $1283,Y                        ;9EE8F9|B98312  |;
                       AND.W #$1000                         ;9EE8FC|290010  |;
                       ORA.W $14E3,Y                        ;9EE8FF|19E314  |;
                       BNE CODE_9EE8ED                      ;9EE902|D0E9    |;
                       LDA.W $0DB7,Y                        ;9EE904|B9B70D  |;
                       STA.B $A5                            ;9EE907|85A5    |;
                       LDA.W $0DB7,X                        ;9EE909|BDB70D  |;
                       STA.B $A9                            ;9EE90C|85A9    |;
                       LDA.W $14C3,X                        ;9EE90E|BDC314  |;
                       BNE CODE_9EE923                      ;9EE911|D010    |;
                       LDA.W #$0000                         ;9EE913|A90000  |;
                       SEC                                  ;9EE916|38      |;
                       SBC.B $A5                            ;9EE917|E5A5    |;
                       STA.B $A5                            ;9EE919|85A5    |;
                       LDA.W #$0000                         ;9EE91B|A90000  |;
                       SEC                                  ;9EE91E|38      |;
                       SBC.B $A9                            ;9EE91F|E5A9    |;
                       STA.B $A9                            ;9EE921|85A9    |;
 
          CODE_9EE923:
                       LDA.W $15D4                          ;9EE923|ADD415  |;
                       BIT.W #$0020                         ;9EE926|892000  |;
                       BEQ CODE_9EE93D                      ;9EE929|F012    |;
                       db $A5,$A5,$38,$E9,$58,$00,$85,$C5   ;9EE92B|        |;
                       db $A5,$A9,$38,$E9,$58,$00,$45,$C5   ;9EE933|        |;
                       db $30,$B0                           ;9EE93B|        |;
 
          CODE_9EE93D:
                       LDA.B $A5                            ;9EE93D|A5A5    |;
                       CMP.W #$0058                         ;9EE93F|C95800  |;
                       BPL CODE_9EE950                      ;9EE942|100C    |;
                       LDA.B $A5                            ;9EE944|A5A5    |;
                       SEC                                  ;9EE946|38      |;
                       SBC.B $A9                            ;9EE947|E5A9    |;
                       STA.B $A5                            ;9EE949|85A5    |;
                       CMP.W #$FFF1                         ;9EE94B|C9F1FF  |;
                       BMI CODE_9EE9A2                      ;9EE94E|3052    |;
 
          CODE_9EE950:
                       LDA.W $0B5D,Y                        ;9EE950|B95D0B  |;
                       SEC                                  ;9EE953|38      |;
                       SBC.W #$0004                         ;9EE954|E90400  |;
                       AND.W #$0007                         ;9EE957|290700  |;
                       STA.W $0D03                          ;9EE95A|8D030D  |;
                       LDA.W $0B3D,Y                        ;9EE95D|B93D0B  |;
                       STA.B $AD                            ;9EE960|85AD    |;
                       LDA.W #$0005                         ;9EE962|A90500  |;
                       STA.B $B1                            ;9EE965|85B1    |;
                       LDY.W #$0000                         ;9EE967|A00000  |;
                       STZ.B $8D                            ;9EE96A|648D    |;
                       CPX.W #$000C                         ;9EE96C|E00C00  |;
                       BCS CODE_9EE974                      ;9EE96F|B003    |;
                       db $A0,$0C,$00                       ;9EE971|        |;
 
          CODE_9EE974:
                       LDA.B $AD                            ;9EE974|A5AD    |;
                       CMP.W $0B3D,Y                        ;9EE976|D93D0B  |;
                       BCC CODE_9EE98A                      ;9EE979|900F    |;
                       LDA.W $0B5D,Y                        ;9EE97B|B95D0B  |;
                       SEC                                  ;9EE97E|38      |;
                       SBC.W #$0004                         ;9EE97F|E90400  |;
                       AND.W #$0007                         ;9EE982|290700  |;
                       CMP.W $0D03                          ;9EE985|CD030D  |;
                       BEQ CODE_9EE9A2                      ;9EE988|F018    |;
 
          CODE_9EE98A:
                       INY                                  ;9EE98A|C8      |;
                       INY                                  ;9EE98B|C8      |;
                       DEC.B $B1                            ;9EE98C|C6B1    |;
                       BPL CODE_9EE974                      ;9EE98E|10E4    |;
                       JSL.L CODE_9EE9BF                    ;9EE990|22BFE99E|;
                       LDA.W $0F43,X                        ;9EE994|BD430F  |;
                       BEQ CODE_9EE9A2                      ;9EE997|F009    |;
                       PLA                                  ;9EE999|68      |;
                       SEP #$20                             ;9EE99A|E220    |;
                       PLA                                  ;9EE99C|68      |;
                       REP #$30                             ;9EE99D|C230    |;
                       JMP.W CODE_9E8BE6                    ;9EE99F|4CE68B  |;
 
          CODE_9EE9A2:
                       RTL                                  ;9EE9A2|6B      |;
 
          CODE_9EE9A3:
                       LDA.B $AD                            ;9EE9A3|A5AD    |;
                       BIT.W #$8000                         ;9EE9A5|890080  |;
                       BNE CODE_9EE9BF                      ;9EE9A8|D015    |;
                       LDA.B $A5                            ;9EE9AA|A5A5    |;
                       BIT.W #$0008                         ;9EE9AC|890800  |;
                       BNE UNREACH_9EE9BE                   ;9EE9AF|D00D    |;
                       AND.W #$0007                         ;9EE9B1|290700  |;
                       STA.W $0D03                          ;9EE9B4|8D030D  |;
                       ORA.W #$0008                         ;9EE9B7|090800  |;
                       STA.B $A5                            ;9EE9BA|85A5    |;
                       BRA CODE_9EE9BF                      ;9EE9BC|8001    |;
 
       UNREACH_9EE9BE:
                       db $6B                               ;9EE9BE|        |;
 
          CODE_9EE9BF:
                       STZ.W $0BAB                          ;9EE9BF|9CAB0B  |;
                       LDA.W #$0004                         ;9EE9C2|A90400  |;
                       TRB.W $15D8                          ;9EE9C5|1CD815  |;
                       LDA.W #$FFFF                         ;9EE9C8|A9FFFF  |;
                       STA.W $0AD9                          ;9EE9CB|8DD90A  |;
                       LDA.W #$0010                         ;9EE9CE|A91000  |;
                       STA.W $1203,X                        ;9EE9D1|9D0312  |;
                       TXA                                  ;9EE9D4|8A      |;
                       LSR A                                ;9EE9D5|4A      |;
                       STA.W $0CF3                          ;9EE9D6|8DF30C  |;
                       LDA.W #$0007                         ;9EE9D9|A90700  |;
                       STA.B $A5                            ;9EE9DC|85A5    |;
                       LDA.W $0F43,X                        ;9EE9DE|BD430F  |;
                       BEQ CODE_9EE9E8                      ;9EE9E1|F005    |;
                       LDA.W $13A3,X                        ;9EE9E3|BDA313  |;
                       STA.B $A5                            ;9EE9E6|85A5    |;
 
          CODE_9EE9E8:
                       LDA.B $A5                            ;9EE9E8|A5A5    |;
                       ASL A                                ;9EE9EA|0A      |;
                       ASL A                                ;9EE9EB|0A      |;
                       ADC.W #$0090                         ;9EE9EC|699000  |;
                       STA.W $0D05                          ;9EE9EF|8D050D  |;
                       LDA.W #$FFFF                         ;9EE9F2|A9FFFF  |;
                       STA.B $B5                            ;9EE9F5|85B5    |;
                       LDA.W #$0005                         ;9EE9F7|A90500  |;
                       STA.B $B1                            ;9EE9FA|85B1    |;
                       STZ.B $8D                            ;9EE9FC|648D    |;
                       CPX.W #$000C                         ;9EE9FE|E00C00  |;
                       BCC CODE_9EEA08                      ;9EEA01|9005    |;
                       LDA.W #$000C                         ;9EEA03|A90C00  |;
                       STA.B $8D                            ;9EEA06|858D    |;
 
          CODE_9EEA08:
                       CPX.B $8D                            ;9EEA08|E48D    |;
                       BEQ CODE_9EEA50                      ;9EEA0A|F044    |;
                       LDY.B $8D                            ;9EEA0C|A48D    |;
                       LDA.W $0F43,Y                        ;9EEA0E|B9430F  |;
                       BMI CODE_9EEA50                      ;9EEA11|303D    |;
                       BEQ CODE_9EEA50                      ;9EEA13|F03B    |;
                       LDA.W $1283,Y                        ;9EEA15|B98312  |;
                       BIT.W #$1000                         ;9EEA18|890010  |;
                       BNE CODE_9EEA50                      ;9EEA1B|D033    |;
                       LDA.W $0B5D,Y                        ;9EEA1D|B95D0B  |;
                       SEC                                  ;9EEA20|38      |;
                       SBC.W $0D03                          ;9EEA21|ED030D  |;
                       SEC                                  ;9EEA24|38      |;
                       SBC.W #$0004                         ;9EEA25|E90400  |;
                       STZ.B $00                            ;9EEA28|6400    |;
                       AND.W #$0007                         ;9EEA2A|290700  |;
                       BEQ CODE_9EEA3E                      ;9EEA2D|F00F    |;
                       CMP.W #$0001                         ;9EEA2F|C90100  |;
                       BEQ CODE_9EEA39                      ;9EEA32|F005    |;
                       CMP.W #$0007                         ;9EEA34|C90700  |;
                       BNE CODE_9EEA50                      ;9EEA37|D017    |;
 
          CODE_9EEA39:
                       LDA.W #$1000                         ;9EEA39|A90010  |;
                       STA.B $00                            ;9EEA3C|8500    |;
 
          CODE_9EEA3E:
                       LDA.B $00                            ;9EEA3E|A500    |;
                       CLC                                  ;9EEA40|18      |;
                       ADC.W $0B3D,Y                        ;9EEA41|793D0B  |;
                       BCS CODE_9EEA50                      ;9EEA44|B00A    |;
                       CMP.B $B5                            ;9EEA46|C5B5    |;
                       BCS CODE_9EEA50                      ;9EEA48|B006    |;
                       STA.B $B5                            ;9EEA4A|85B5    |;
                       LDA.B $8D                            ;9EEA4C|A58D    |;
                       STA.B $89                            ;9EEA4E|8589    |;
 
          CODE_9EEA50:
                       INC.B $8D                            ;9EEA50|E68D    |;
                       INC.B $8D                            ;9EEA52|E68D    |;
                       DEC.B $B1                            ;9EEA54|C6B1    |;
                       BMI CODE_9EEA5B                      ;9EEA56|3003    |;
                       JMP.W CODE_9EEA08                    ;9EEA58|4C08EA  |;
 
          CODE_9EEA5B:
                       LDX.B $95                            ;9EEA5B|A695    |;
                       LDA.B $B5                            ;9EEA5D|A5B5    |;
                       BMI CODE_9EEA6F                      ;9EEA5F|300E    |;
                       JSL.L CODE_9EEB2E                    ;9EEA61|222EEB9E|;
                       LDA.W #$0000                         ;9EEA65|A90000  |;
                       JSL.L CODE_9C9ABC                    ;9EEA68|22BC9A9C|;
                       JMP.W CODE_9EEACC                    ;9EEA6C|4CCCEA  |;
 
          CODE_9EEA6F:
                       LDA.W $0D03                          ;9EEA6F|AD030D  |;
                       ASL A                                ;9EEA72|0A      |;
                       ASL A                                ;9EEA73|0A      |;
                       ADC.W #$DA08                         ;9EEA74|6908DA  |;
                       STA.B $89                            ;9EEA77|8589    |;
                       LDA.W #$0080                         ;9EEA79|A98000  |;
                       STA.B $8B                            ;9EEA7C|858B    |;
                       LDA.B [$89]                          ;9EEA7E|A789    |;
                       CMP.W #$8000                         ;9EEA80|C90080  |;
                       ROR A                                ;9EEA83|6A      |;
                       TAX                                  ;9EEA84|AA      |;
                       LDA.W #$0050                         ;9EEA85|A95000  |;
                       JSL.L CODE_808F5D                    ;9EEA88|225D8F80|;
                       ASL A                                ;9EEA8C|0A      |;
                       STA.B $14                            ;9EEA8D|8514    |;
                       LDX.B $E4                            ;9EEA8F|A6E4    |;
                       LDA.W $0EE3,X                        ;9EEA91|BDE30E  |;
                       CMP.W #$8000                         ;9EEA94|C90080  |;
                       ROR A                                ;9EEA97|6A      |;
                       CLC                                  ;9EEA98|18      |;
                       ADC.B $14                            ;9EEA99|6514    |;
                       STA.W $0EFF                          ;9EEA9B|8DFF0E  |;
                       DEC.B $89                            ;9EEA9E|C689    |;
                       DEC.B $89                            ;9EEAA0|C689    |;
                       LDA.B [$89]                          ;9EEAA2|A789    |;
                       CMP.W #$8000                         ;9EEAA4|C90080  |;
                       ROR A                                ;9EEAA7|6A      |;
                       TAX                                  ;9EEAA8|AA      |;
                       LDA.W #$0050                         ;9EEAA9|A95000  |;
                       JSL.L CODE_808F5D                    ;9EEAAC|225D8F80|;
                       ASL A                                ;9EEAB0|0A      |;
                       STA.B $14                            ;9EEAB1|8514    |;
                       LDX.B $E4                            ;9EEAB3|A6E4    |;
                       LDA.W $0EC3,X                        ;9EEAB5|BDC30E  |;
                       CMP.W #$8000                         ;9EEAB8|C90080  |;
                       ROR A                                ;9EEABB|6A      |;
                       CLC                                  ;9EEABC|18      |;
                       ADC.B $14                            ;9EEABD|6514    |;
                       STA.W $0EDF                          ;9EEABF|8DDF0E  |;
                       JSL.L CODE_808658                    ;9EEAC2|22588680|;
                       AND.W #$0FFF                         ;9EEAC6|29FF0F  |;
                       STA.W $0E01                          ;9EEAC9|8D010E  |;
 
          CODE_9EEACC:
                       LDA.W $0F43,X                        ;9EEACC|BD430F  |;
                       BNE CODE_9EEAE9                      ;9EEACF|D018    |;
                       LDA.W $14C3,X                        ;9EEAD1|BDC314  |;
                       BEQ CODE_9EEADD                      ;9EEAD4|F007    |;
                       LDA.W $0EFF                          ;9EEAD6|ADFF0E  |;
                       BMI UNREACH_9EEAE2                   ;9EEAD9|3007    |;
                       BRA CODE_9EEAE9                      ;9EEADB|800C    |;
 
          CODE_9EEADD:
                       LDA.W $0EFF                          ;9EEADD|ADFF0E  |;
                       BMI CODE_9EEAE9                      ;9EEAE0|3007    |;
 
       UNREACH_9EEAE2:
                       db $49,$FF,$FF,$1A,$8D,$FF,$0E       ;9EEAE2|        |;
 
          CODE_9EEAE9:
                       LDA.W $0EDF                          ;9EEAE9|ADDF0E  |;
                       STA.B $A5                            ;9EEAEC|85A5    |;
                       LDA.W $0EFF                          ;9EEAEE|ADFF0E  |;
                       STA.B $A9                            ;9EEAF1|85A9    |;
                       JSL.L CODE_9BB445                    ;9EEAF3|2245B49B|;
                       LDY.W #$E34E                         ;9EEAF7|A04EE3  |;
                       LDA.W $0F43,X                        ;9EEAFA|BD430F  |;
                       BEQ CODE_9EEB0B                      ;9EEAFD|F00C    |;
                       LDY.W #$EC66                         ;9EEAFF|A066EC  |;
                       JSL.L CODE_9EE698                    ;9EEB02|2298E69E|;
                       BEQ CODE_9EEB0B                      ;9EEB06|F003    |;
                       LDY.W #$ECD8                         ;9EEB08|A0D8EC  |;
 
          CODE_9EEB0B:
                       STY.B $A9                            ;9EEB0B|84A9    |;
                       JSL.L CODE_9EA3DD                    ;9EEB0D|22DDA39E|;
                       LDA.W #$0001                         ;9EEB11|A90100  |;
                       STA.W $14E3,X                        ;9EEB14|9DE314  |;
                       LDA.W $0F43,X                        ;9EEB17|BD430F  |;
                       BNE CODE_9EEB2D                      ;9EEB1A|D011    |;
                       LDA.W $19D4,X                        ;9EEB1C|BDD419  |;
                       BMI CODE_9EEB2D                      ;9EEB1F|300C    |;
                       STZ.W $0EC3,X                        ;9EEB21|9EC30E  |;
                       STZ.W $0EE3,X                        ;9EEB24|9EE30E  |;
                       STA.B $B5                            ;9EEB27|85B5    |;
                       JSL.L CODE_9FCBB6                    ;9EEB29|22B6CB9F|;
 
          CODE_9EEB2D:
                       RTL                                  ;9EEB2D|6B      |;
 
          CODE_9EEB2E:
                       JSL.L CODE_9FC757                    ;9EEB2E|2257C79F|;
                       LDA.W $15D6                          ;9EEB32|ADD615  |;
                       BNE CODE_9EEB40                      ;9EEB35|D009    |;
                       LDY.B zpCurntTeamLoopVal             ;9EEB37|A491    |;
                       LDA.W GmStat_PasCmplt,Y              ;9EEB39|B9BE17  |;
                       INC A                                ;9EEB3C|1A      |;
                       STA.W GmStat_PasCmplt,Y              ;9EEB3D|99BE17  |;
 
          CODE_9EEB40:
                       LDX.W $0B9D,Y                        ;9EEB40|BE9D0B  |;
                       LDA.W $1343,X                        ;9EEB43|BD4313  |;
                       LSR A                                ;9EEB46|4A      |;
                       CLC                                  ;9EEB47|18      |;
                       ADC.W #$0001                         ;9EEB48|690100  |;
                       ADC.W $1003,X                        ;9EEB4B|7D0310  |;
                       STA.W $1003,X                        ;9EEB4E|9D0310  |;
                       LDA.B $89                            ;9EEB51|A589    |;
                       STA.W $0D07                          ;9EEB53|8D070D  |;
                       LDX.B $89                            ;9EEB56|A689    |;
                       LDA.W #$0015                         ;9EEB58|A91500  |;
                       STA.B $A5                            ;9EEB5B|85A5    |;
                       JSL.L CODE_9E8C0E                    ;9EEB5D|220E8C9E|;
                       LDX.B $95                            ;9EEB61|A695    |;
                       LDY.B $89                            ;9EEB63|A489    |;
                       LDA.W $0D97,Y                        ;9EEB65|B9970D  |;
                       PHA                                  ;9EEB68|48      |;
                       LDA.W $0E03,Y                        ;9EEB69|B9030E  |;
                       BIT.W #$0800                         ;9EEB6C|890008  |;
                       BEQ CODE_9EEB7A                      ;9EEB6F|F009    |;
                       LDA.W #$0000                         ;9EEB71|A90000  |;
                       SEC                                  ;9EEB74|38      |;
                       SBC.W $1163,Y                        ;9EEB75|F96311  |;
                       BRA CODE_9EEB7D                      ;9EEB78|8003    |;
 
          CODE_9EEB7A:
                       LDA.W $1163,Y                        ;9EEB7A|B96311  |;
 
          CODE_9EEB7D:
                       AND.W #$0007                         ;9EEB7D|290700  |;
                       ASL A                                ;9EEB80|0A      |;
                       TAX                                  ;9EEB81|AA      |;
                       LDA.L DATA8_9DEF6E,X                 ;9EEB82|BF6EEF9D|;
                       TAX                                  ;9EEB86|AA      |;
                       LDA.L $9D0000,X                      ;9EEB87|BF00009D|;
                       LDX.B $95                            ;9EEB8B|A695    |;
                       LDY.B $89                            ;9EEB8D|A489    |;
                       STA.W $0D97,Y                        ;9EEB8F|99970D  |;
                       LDA.B $89                            ;9EEB92|A589    |;
                       JSL.L CODE_9BC002                    ;9EEB94|2202C09B|;
                       LDY.B $89                            ;9EEB98|A489    |;
                       PLA                                  ;9EEB9A|68      |;
                       STA.W $0D97,Y                        ;9EEB9B|99970D  |;
                       LDA.B $A9                            ;9EEB9E|A5A9    |;
                       CLC                                  ;9EEBA0|18      |;
                       ADC.W $0DB7,Y                        ;9EEBA1|79B70D  |;
                       SEC                                  ;9EEBA4|38      |;
                       SBC.W $0DD3                          ;9EEBA5|EDD30D  |;
                       STA.B $A9                            ;9EEBA8|85A9    |;
                       LDA.B $A5                            ;9EEBAA|A5A5    |;
                       CLC                                  ;9EEBAC|18      |;
                       ADC.W $0D55,Y                        ;9EEBAD|79550D  |;
                       SEC                                  ;9EEBB0|38      |;
                       SBC.W $0D71                          ;9EEBB1|ED710D  |;
                       STA.B $A5                            ;9EEBB4|85A5    |;
                       LDA.W #$0018                         ;9EEBB6|A91800  |;
                       STA.B $BD                            ;9EEBB9|85BD    |;
                       LDA.B $BD                            ;9EEBBB|A5BD    |;
                       ASL A                                ;9EEBBD|0A      |;
                       ASL A                                ;9EEBBE|0A      |;
                       ASL A                                ;9EEBBF|0A      |;
                       ASL A                                ;9EEBC0|0A      |;
                       LDY.B $89                            ;9EEBC1|A489    |;
                       LDX.W $0EC3,Y                        ;9EEBC3|BEC30E  |;
                       JSL.L CODE_809080                    ;9EEBC6|22809080|;
                       LDA.B $0A                            ;9EEBCA|A50A    |;
                       CLC                                  ;9EEBCC|18      |;
                       ADC.B $A5                            ;9EEBCD|65A5    |;
                       STA.B $AD                            ;9EEBCF|85AD    |;
                       LDA.B $BD                            ;9EEBD1|A5BD    |;
                       ASL A                                ;9EEBD3|0A      |;
                       ASL A                                ;9EEBD4|0A      |;
                       ASL A                                ;9EEBD5|0A      |;
                       ASL A                                ;9EEBD6|0A      |;
                       LDX.W $0EE3,Y                        ;9EEBD7|BEE30E  |;
                       JSL.L CODE_809080                    ;9EEBDA|22809080|;
                       LDA.B $0A                            ;9EEBDE|A50A    |;
                       CLC                                  ;9EEBE0|18      |;
                       ADC.B $A9                            ;9EEBE1|65A9    |;
                       STA.B $B1                            ;9EEBE3|85B1    |;
                       LDY.B $AD                            ;9EEBE5|A4AD    |;
                       JSL.L CODE_9CA554                    ;9EEBE7|2254A59C|;
                       STA.B $B5                            ;9EEBEB|85B5    |;
                       ASL A                                ;9EEBED|0A      |;
                       TAX                                  ;9EEBEE|AA      |;
                       LDA.W #$0003                         ;9EEBEF|A90300  |;
                       JSL.L CODE_809316                    ;9EEBF2|22169380|;
                       CMP.W #$0040                         ;9EEBF6|C94000  |;
                       BCC CODE_9EEC10                      ;9EEBF9|9015    |;
                       CMP.W #$0050                         ;9EEBFB|C95000  |;
                       BCC CODE_9EEC4D                      ;9EEBFE|904D    |;
                       LDX.B $B5                            ;9EEC00|A6B5    |;
                       LDA.W #$0005                         ;9EEC02|A90500  |;
                       JSL.L CODE_809316                    ;9EEC05|22169380|;
                       STA.B $BD                            ;9EEC09|85BD    |;
                       LDA.W #$0050                         ;9EEC0B|A95000  |;
                       BRA CODE_9EEC19                      ;9EEC0E|8009    |;
 
          CODE_9EEC10:
                       LDA.B $B5                            ;9EEC10|A5B5    |;
                       LSR A                                ;9EEC12|4A      |;
                       LSR A                                ;9EEC13|4A      |;
                       STA.B $BD                            ;9EEC14|85BD    |;
                       LDA.W #$0040                         ;9EEC16|A94000  |;
 
          CODE_9EEC19:
                       PHA                                  ;9EEC19|48      |;
                       LDA.B $BD                            ;9EEC1A|A5BD    |;
                       ASL A                                ;9EEC1C|0A      |;
                       ASL A                                ;9EEC1D|0A      |;
                       ASL A                                ;9EEC1E|0A      |;
                       ASL A                                ;9EEC1F|0A      |;
                       LDY.B $89                            ;9EEC20|A489    |;
                       LDX.W $0EC3,Y                        ;9EEC22|BEC30E  |;
                       JSL.L CODE_809080                    ;9EEC25|22809080|;
                       LDA.B $0A                            ;9EEC29|A50A    |;
                       CLC                                  ;9EEC2B|18      |;
                       ADC.B $A5                            ;9EEC2C|65A5    |;
                       STA.B $AD                            ;9EEC2E|85AD    |;
                       LDA.B $BD                            ;9EEC30|A5BD    |;
                       ASL A                                ;9EEC32|0A      |;
                       ASL A                                ;9EEC33|0A      |;
                       ASL A                                ;9EEC34|0A      |;
                       ASL A                                ;9EEC35|0A      |;
                       LDX.W $0EE3,Y                        ;9EEC36|BEE30E  |;
                       JSL.L CODE_809080                    ;9EEC39|22809080|;
                       LDA.B $0A                            ;9EEC3D|A50A    |;
                       CLC                                  ;9EEC3F|18      |;
                       ADC.B $A9                            ;9EEC40|65A9    |;
                       STA.B $B1                            ;9EEC42|85B1    |;
                       LDY.B $AD                            ;9EEC44|A4AD    |;
                       JSL.L CODE_9CA554                    ;9EEC46|2254A59C|;
                       STA.B $B5                            ;9EEC4A|85B5    |;
                       PLA                                  ;9EEC4C|68      |;
 
          CODE_9EEC4D:
                       STA.B $B9                            ;9EEC4D|85B9    |;
                       STA.W $0D05                          ;9EEC4F|8D050D  |;
                       LDX.B $E4                            ;9EEC52|A6E4    |;
                       LDA.W #$0010                         ;9EEC54|A91000  |;
                       SEC                                  ;9EEC57|38      |;
                       SBC.W $13A3,X                        ;9EEC58|FDA313  |;
                       JSL.L CODE_9BB3A4                    ;9EEC5B|22A4B39B|;
                       CLC                                  ;9EEC5F|18      |;
                       ADC.B $B9                            ;9EEC60|65B9    |;
                       STA.B $B9                            ;9EEC62|85B9    |;
                       LDX.B $AD                            ;9EEC64|A6AD    |;
                       JSL.L CODE_808FC9                    ;9EEC66|22C98F80|;
                       LDA.B $B5                            ;9EEC6A|A5B5    |;
                       STA.B $04                            ;9EEC6C|8504    |;
                       JSL.L CODE_8091FC                    ;9EEC6E|22FC9180|;
                       LDA.B $00                            ;9EEC72|A500    |;
                       XBA                                  ;9EEC74|EB      |;
                       AND.W #$FF00                         ;9EEC75|2900FF  |;
                       STA.W $0EDF                          ;9EEC78|8DDF0E  |;
                       LDA.B $B9                            ;9EEC7B|A5B9    |;
                       LDX.B $B1                            ;9EEC7D|A6B1    |;
                       JSL.L CODE_808FC9                    ;9EEC7F|22C98F80|;
                       LDA.B $B5                            ;9EEC83|A5B5    |;
                       STA.B $04                            ;9EEC85|8504    |;
                       JSL.L CODE_8091FC                    ;9EEC87|22FC9180|;
                       LDA.B $00                            ;9EEC8B|A500    |;
                       XBA                                  ;9EEC8D|EB      |;
                       AND.W #$FF00                         ;9EEC8E|2900FF  |;
                       STA.W $0EFF                          ;9EEC91|8DFF0E  |;
                       LDA.B $AD                            ;9EEC94|A5AD    |;
                       CLC                                  ;9EEC96|18      |;
                       ADC.W $0D71                          ;9EEC97|6D710D  |;
                       STA.W $0BA7                          ;9EEC9A|8DA70B  |;
                       LDA.B $B1                            ;9EEC9D|A5B1    |;
                       CLC                                  ;9EEC9F|18      |;
                       ADC.W $0DD3                          ;9EECA0|6DD30D  |;
                       STA.W $0BA9                          ;9EECA3|8DA90B  |;
                       LDA.B $B5                            ;9EECA6|A5B5    |;
                       ASL A                                ;9EECA8|0A      |;
                       ASL A                                ;9EECA9|0A      |;
                       ASL A                                ;9EECAA|0A      |;
                       STA.W $0E01                          ;9EECAB|8D010E  |;
                       LDA.W #$000A                         ;9EECAE|A90A00  |;
                       STA.W $121F                          ;9EECB1|8D1F12  |;
                       LDY.B $89                            ;9EECB4|A489    |;
                       LDA.B $BD                            ;9EECB6|A5BD    |;
                       CLC                                  ;9EECB8|18      |;
                       ADC.W #$0006                         ;9EECB9|690600  |;
                       STA.W $0BAD,Y                        ;9EECBC|99AD0B  |;
                       LDX.B $E4                            ;9EECBF|A6E4    |;
                       LDA.B $BD                            ;9EECC1|A5BD    |;
                       STA.W $1203,X                        ;9EECC3|9D0312  |;
                       LDY.B zpCurntTeamLoopVal             ;9EECC6|A491    |;
                       LDA.W $19D4,X                        ;9EECC8|BDD419  |;
                       STA.W $0B01,Y                        ;9EECCB|99010B  |;
                       LDA.W $0F43,X                        ;9EECCE|BD430F  |;
                       BNE CODE_9EECF5                      ;9EECD1|D022    |;
                       LDA.W $19D4,X                        ;9EECD3|BDD419  |;
                       BMI CODE_9EECF5                      ;9EECD6|301D    |;
                       STZ.W $0EC3,X                        ;9EECD8|9EC30E  |;
                       STZ.W $0EE3,X                        ;9EECDB|9EE30E  |;
                       LDA.W $19D4,X                        ;9EECDE|BDD419  |;
                       STA.B $B5                            ;9EECE1|85B5    |;
                       LDA.W $0D07                          ;9EECE3|AD070D  |;
                       STA.B $A5                            ;9EECE6|85A5    |;
                       JSL.L CODE_9FCB5C                    ;9EECE8|225CCB9F|;
                       LDA.W $19D4,X                        ;9EECEC|BDD419  |;
                       BMI CODE_9EECF5                      ;9EECEF|3004    |;
                       db $22,$B6,$CB,$9F                   ;9EECF1|        |;
 
          CODE_9EECF5:
                       RTL                                  ;9EECF5|6B      |;
 
          CODE_9EECF6:
                       STX.W $0BA3                          ;9EECF6|8EA30B  |;
                       LDA.W $0F43,X                        ;9EECF9|BD430F  |;
                       BEQ UNREACH_9EED6D                   ;9EECFC|F06F    |;
                       LDA.W $14C3,X                        ;9EECFE|BDC314  |;
                       BNE CODE_9EED38                      ;9EED01|D035    |;
                       LDA.W $0DB7,X                        ;9EED03|BDB70D  |;
                       CMP.W #$FFA8                         ;9EED06|C9A8FF  |;
                       BMI CODE_9EED24                      ;9EED09|3019    |;
                       db $A9,$04,$00,$8D,$03,$0D,$BD,$55   ;9EED0B|        |;
                       db $0D,$30,$07,$A9,$0A,$00,$8D,$A5   ;9EED13|        |;
                       db $0B,$6B,$A9,$06,$00,$8D,$A5,$0B   ;9EED1B|        |;
                       db $6B                               ;9EED23|        |;
 
          CODE_9EED24:
                       LDA.W $0B77                          ;9EED24|AD770B  |;
                       SEC                                  ;9EED27|38      |;
                       SBC.W #$0004                         ;9EED28|E90400  |;
                       AND.W #$0007                         ;9EED2B|290700  |;
                       STA.W $0D03                          ;9EED2E|8D030D  |;
                       LDA.W #$0008                         ;9EED31|A90800  |;
                       STA.W $0BA5                          ;9EED34|8DA50B  |;
                       RTL                                  ;9EED37|6B      |;
 
          CODE_9EED38:
                       LDA.W $0DB7,X                        ;9EED38|BDB70D  |;
                       CMP.W #$0058                         ;9EED3B|C95800  |;
                       BPL CODE_9EED59                      ;9EED3E|1019    |;
                       LDA.W #$0000                         ;9EED40|A90000  |;
                       STA.W $0D03                          ;9EED43|8D030D  |;
                       LDA.W $0D55,X                        ;9EED46|BD550D  |;
                       BMI UNREACH_9EED52                   ;9EED49|3007    |;
                       LDA.W #$0016                         ;9EED4B|A91600  |;
                       STA.W $0BA5                          ;9EED4E|8DA50B  |;
                       RTL                                  ;9EED51|6B      |;
 
       UNREACH_9EED52:
                       db $A9,$12,$00,$8D,$A5,$0B,$6B       ;9EED52|        |;
 
          CODE_9EED59:
                       LDA.W $0B75                          ;9EED59|AD750B  |;
                       SEC                                  ;9EED5C|38      |;
                       SBC.W #$0004                         ;9EED5D|E90400  |;
                       AND.W #$0007                         ;9EED60|290700  |;
                       STA.W $0D03                          ;9EED63|8D030D  |;
                       LDA.W #$0014                         ;9EED66|A91400  |;
                       STA.W $0BA5                          ;9EED69|8DA50B  |;
                       RTL                                  ;9EED6C|6B      |;
 
       UNREACH_9EED6D:
                       db $9C,$A5,$0B,$9C,$03,$0D,$BD,$C3   ;9EED6D|        |;
                       db $14,$D0,$0C,$A9,$0C,$00,$8D,$A5   ;9EED75|        |;
                       db $0B,$A9,$04,$00,$8D,$03,$0D,$6B   ;9EED7D|        |;
 
          CODE_9EED85:
                       LDA.W #$0014                         ;9EED85|A91400  |;
                       STA.B $A5                            ;9EED88|85A5    |;
                       JMP.W CODE_9E8C18                    ;9EED8A|4C188C  |;
                       CPX.W $0AD9                          ;9EED8D|ECD90A  |;
                       BNE UNREACH_9EEDBD                   ;9EED90|D02B    |;
                       LDA.W $1283,X                        ;9EED92|BD8312  |;
                       BIT.W #$0002                         ;9EED95|890200  |;
                       BEQ CODE_9EEDC0                      ;9EED98|F026    |;
                       JSL.L CODE_9EECF6                    ;9EED9A|22F6EC9E|;
                       LDA.W $1283,X                        ;9EED9E|BD8312  |;
                       AND.W #$FFFD                         ;9EEDA1|29FDFF  |;
                       STA.W $1283,X                        ;9EEDA4|9D8312  |;
                       LDA.W $19D4,X                        ;9EEDA7|BDD419  |;
                       BPL CODE_9EEDC0                      ;9EEDAA|1014    |;
                       LDA.W $0BA5                          ;9EEDAC|ADA50B  |;
                       CMP.W #$0014                         ;9EEDAF|C91400  |;
                       BEQ CODE_9EEDBA                      ;9EEDB2|F006    |;
                       CMP.W #$0008                         ;9EEDB4|C90800  |;
                       BEQ CODE_9EEDBA                      ;9EEDB7|F001    |;
                       db $6B                               ;9EEDB9|        |;
 
          CODE_9EEDBA:
                       JMP.W CODE_9EE10B                    ;9EEDBA|4C0BE1  |;
 
       UNREACH_9EEDBD:
                       db $4C,$E6,$8B                       ;9EEDBD|        |;
 
          CODE_9EEDC0:
                       LDY.W #$0000                         ;9EEDC0|A00000  |;
                       LDA.W $0D03                          ;9EEDC3|AD030D  |;
                       CMP.W $1163,X                        ;9EEDC6|DD6311  |;
                       BEQ CODE_9EEDEA                      ;9EEDC9|F01F    |;
                       INY                                  ;9EEDCB|C8      |;
                       DEC A                                ;9EEDCC|3A      |;
                       AND.W #$0007                         ;9EEDCD|290700  |;
                       CMP.W $1163,X                        ;9EEDD0|DD6311  |;
                       BEQ CODE_9EEDEA                      ;9EEDD3|F015    |;
                       INY                                  ;9EEDD5|C8      |;
                       INC A                                ;9EEDD6|1A      |;
                       INC A                                ;9EEDD7|1A      |;
                       AND.W #$0007                         ;9EEDD8|290700  |;
                       CMP.W $1163,X                        ;9EEDDB|DD6311  |;
                       BEQ CODE_9EEDEA                      ;9EEDDE|F00A    |;
                       LDA.W $0D03                          ;9EEDE0|AD030D  |;
                       STA.B $A5                            ;9EEDE3|85A5    |;
                       JSL.L CODE_9EDC06                    ;9EEDE5|2206DC9E|;
                       RTL                                  ;9EEDE9|6B      |;
 
          CODE_9EEDEA:
                       LDA.W $0F43,X                        ;9EEDEA|BD430F  |;
                       BNE CODE_9EEDFD                      ;9EEDED|D00E    |;
                       db $98,$0A,$6D,$A5,$0B,$8D,$A5,$0B   ;9EEDEF|        |;
                       db $BD,$63,$11,$8D,$03,$0D           ;9EEDF7|        |;
 
          CODE_9EEDFD:
                       JSL.L CODE_9EEE04                    ;9EEDFD|2204EE9E|;
                       JMP.W CODE_9E8BE6                    ;9EEE01|4CE68B  |;
 
          CODE_9EEE04:
                       PHK                                  ;9EEE04|4B      |;
                       PLB                                  ;9EEE05|AB      |;
                       LDA.W #$000F                         ;9EEE06|A90F00  |;
                       SEC                                  ;9EEE09|38      |;
                       SBC.W $13A3,X                        ;9EEE0A|FDA313  |;
                       ASL A                                ;9EEE0D|0A      |;
                       STA.B $B5                            ;9EEE0E|85B5    |;
                       LDY.W $0BA5                          ;9EEE10|ACA50B  |;
                       LDA.W UNREACH_9EEED4,Y               ;9EEE13|B9D4EE  |;
                       CLC                                  ;9EEE16|18      |;
                       ADC.B $B5                            ;9EEE17|65B5    |;
                       JSL.L CODE_9BB3A4                    ;9EEE19|22A4B39B|;
                       CLC                                  ;9EEE1D|18      |;
                       ADC.W UNREACH_9EEF04,Y               ;9EEE1E|7904EF  |;
                       SEC                                  ;9EEE21|38      |;
                       SBC.W $0D71                          ;9EEE22|ED710D  |;
                       STA.B $A5                            ;9EEE25|85A5    |;
                       LDA.W UNREACH_9EEEEC,Y               ;9EEE27|B9ECEE  |;
                       CLC                                  ;9EEE2A|18      |;
                       ADC.B $B5                            ;9EEE2B|65B5    |;
                       JSL.L CODE_9BB3A4                    ;9EEE2D|22A4B39B|;
                       CLC                                  ;9EEE31|18      |;
                       ADC.W UNREACH_9EEF1C,Y               ;9EEE32|791CEF  |;
                       SEC                                  ;9EEE35|38      |;
                       SBC.W $0DD3                          ;9EEE36|EDD30D  |;
                       STA.B $A9                            ;9EEE39|85A9    |;
                       LDY.B $A5                            ;9EEE3B|A4A5    |;
                       JSL.L CODE_9CA554                    ;9EEE3D|2254A59C|;
                       STA.B $AD                            ;9EEE41|85AD    |;
                       ASL A                                ;9EEE43|0A      |;
                       ASL A                                ;9EEE44|0A      |;
                       ASL A                                ;9EEE45|0A      |;
                       ASL A                                ;9EEE46|0A      |;
                       TAX                                  ;9EEE47|AA      |;
                       LDA.W #$0078                         ;9EEE48|A97800  |;
                       JSL.L CODE_809316                    ;9EEE4B|22169380|;
                       CMP.W #$0060                         ;9EEE4F|C96000  |;
                       BCC CODE_9EEE57                      ;9EEE52|9003    |;
                       db $A9,$60,$00                       ;9EEE54|        |;
 
          CODE_9EEE57:
                       LDX.B $E4                            ;9EEE57|A6E4    |;
                       LDY.W $0F43,X                        ;9EEE59|BC430F  |;
                       BEQ UNREACH_9EEE68                   ;9EEE5C|F00A    |;
                       CMP.W #$0010                         ;9EEE5E|C91000  |;
                       BCS CODE_9EEE66                      ;9EEE61|B003    |;
                       db $A9,$10,$00                       ;9EEE63|        |;
 
          CODE_9EEE66:
                       BRA CODE_9EEE70                      ;9EEE66|8008    |;
 
       UNREACH_9EEE68:
                       db $C9,$20,$00,$B0,$03,$A9,$20,$00   ;9EEE68|        |;
 
          CODE_9EEE70:
                       STA.B $B1                            ;9EEE70|85B1    |;
                       LDX.B $A5                            ;9EEE72|A6A5    |;
                       JSL.L CODE_808FC9                    ;9EEE74|22C98F80|;
                       LDA.B $AD                            ;9EEE78|A5AD    |;
                       STA.B $04                            ;9EEE7A|8504    |;
                       JSL.L CODE_8091FC                    ;9EEE7C|22FC9180|;
                       LDA.B $00                            ;9EEE80|A500    |;
                       XBA                                  ;9EEE82|EB      |;
                       AND.W #$FF00                         ;9EEE83|2900FF  |;
                       STA.W $0EDF                          ;9EEE86|8DDF0E  |;
                       LDA.B $B1                            ;9EEE89|A5B1    |;
                       LDX.B $A9                            ;9EEE8B|A6A9    |;
                       JSL.L CODE_808FC9                    ;9EEE8D|22C98F80|;
                       LDA.B $AD                            ;9EEE91|A5AD    |;
                       STA.B $04                            ;9EEE93|8504    |;
                       JSL.L CODE_8091FC                    ;9EEE95|22FC9180|;
                       LDA.B $00                            ;9EEE99|A500    |;
                       XBA                                  ;9EEE9B|EB      |;
                       AND.W #$FF00                         ;9EEE9C|2900FF  |;
                       STA.W $0EFF                          ;9EEE9F|8DFF0E  |;
                       ASL A                                ;9EEEA2|0A      |;
                       ASL A                                ;9EEEA3|0A      |;
                       ASL A                                ;9EEEA4|0A      |;
                       ASL A                                ;9EEEA5|0A      |;
                       LDA.W #$03C0                         ;9EEEA6|A9C003  |;
                       SEC                                  ;9EEEA9|38      |;
                       SBC.B $B5                            ;9EEEAA|E5B5    |;
                       JSL.L CODE_9BB370                    ;9EEEAC|2270B39B|;
                       CLC                                  ;9EEEB0|18      |;
                       ADC.W #$10E0                         ;9EEEB1|69E010  |;
                       STA.W $0E01                          ;9EEEB4|8D010E  |;
                       JSL.L CODE_9EDE5E                    ;9EEEB7|225EDE9E|;
                       LDX.B $E4                            ;9EEEBB|A6E4    |;
                       LDA.W #$FFFF                         ;9EEEBD|A9FFFF  |;
                       STA.W $0BA3                          ;9EEEC0|8DA30B  |;
                       STA.W $0AD9                          ;9EEEC3|8DD90A  |;
                       LDA.W #$001E                         ;9EEEC6|A91E00  |;
                       STA.W $1203,X                        ;9EEEC9|9D0312  |;
                       TXA                                  ;9EEECC|8A      |;
                       LSR A                                ;9EEECD|4A      |;
                       STA.W $0CF3                          ;9EEECE|8DF30C  |;
                       JMP.W CODE_9EEACC                    ;9EEED1|4CCCEA  |;
 
       UNREACH_9EEED4:
                       db $19,$00,$19,$00,$19,$00,$19,$00   ;9EEED4|        |;
                       db $14,$00,$19,$00,$19,$00,$19,$00   ;9EEEDC|        |;
                       db $19,$00,$19,$00,$14,$00,$19,$00   ;9EEEE4|        |;
 
       UNREACH_9EEEEC:
                       db $14,$00,$19,$00,$19,$00,$46,$00   ;9EEEEC|        |;
                       db $14,$00,$46,$00,$14,$00,$19,$00   ;9EEEF4|        |;
                       db $19,$00,$46,$00,$14,$00,$46,$00   ;9EEEFC|        |;
 
       UNREACH_9EEF04:
                       db $00,$00,$B0,$FF,$50,$00,$B0,$FF   ;9EEF04|        |;
                       db $00,$00,$50,$00,$00,$00,$50,$00   ;9EEF0C|        |;
                       db $B0,$FF,$B0,$FF,$00,$00,$50,$00   ;9EEF14|        |;
 
       UNREACH_9EEF1C:
                       db $97,$FF,$8D,$FF,$8D,$FF,$4C,$FF   ;9EEF1C|        |;
                       db $29,$FF,$4C,$FF,$69,$00,$73,$00   ;9EEF24|        |;
                       db $73,$00,$B4,$00,$D7,$00,$B4,$00   ;9EEF2C|        |;
                       LDA.W $0D97,X                        ;9EEF34|BD970D  |;
                       CMP.W #$018C                         ;9EEF37|C98C01  |;
                       BNE CODE_9EEF58                      ;9EEF3A|D01C    |;
                       LDA.W $0D71                          ;9EEF3C|AD710D  |;
                       STA.W $0D55,X                        ;9EEF3F|9D550D  |;
                       LDA.W $0DD3                          ;9EEF42|ADD30D  |;
                       STA.W $0DB7,X                        ;9EEF45|9DB70D  |;
                       STZ.W $0DFB                          ;9EEF48|9CFB0D  |;
                       LDA.W PauseScreenActive              ;9EEF4B|ADDA15  |;
                       BEQ CODE_9EEF54                      ;9EEF4E|F004    |;
                       INC.W $0D55,X                        ;9EEF50|FE550D  |;
                       RTL                                  ;9EEF53|6B      |;
 
          CODE_9EEF54:
                       INC.W $0DB7,X                        ;9EEF54|FEB70D  |;
                       RTL                                  ;9EEF57|6B      |;
 
          CODE_9EEF58:
                       TAY                                  ;9EEF58|A8      |;
                       BEQ CODE_9EEF7E                      ;9EEF59|F023    |;
                       STZ.W $0D55,X                        ;9EEF5B|9E550D  |;
                       LDA.W #$012C                         ;9EEF5E|A92C01  |;
                       STA.W $0DB7,X                        ;9EEF61|9DB70D  |;
                       LDA.W #$000E                         ;9EEF64|A90E00  |;
                       STA.W $0DFB                          ;9EEF67|8DFB0D  |;
                       LDA.W $0DD3                          ;9EEF6A|ADD30D  |;
                       BPL CODE_9EEF7E                      ;9EEF6D|100F    |;
                       db $A9,$00,$80,$9D,$03,$0E,$A9,$D4   ;9EEF6F|        |;
                       db $FE,$9D,$B7,$0D,$CE,$FB,$0D       ;9EEF77|        |;
 
          CODE_9EEF7E:
                       RTL                                  ;9EEF7E|6B      |;
 
          CODE_9EEF7F:
                       LDA.W $0DF9                          ;9EEF7F|ADF90D  |;
                       CMP.W #$0008                         ;9EEF82|C90800  |;
                       BPL CODE_9EEF91                      ;9EEF85|100A    |;
                       LDA.B $A5                            ;9EEF87|A5A5    |;
                       AND.W #$000F                         ;9EEF89|290F00  |;
                       BEQ CODE_9EEF91                      ;9EEF8C|F003    |;
                       JMP.W CODE_9EF02A                    ;9EEF8E|4C2AF0  |;
 
          CODE_9EEF91:
                       JSL.L CODE_9EC4F3                    ;9EEF91|22F3C49E|;
                       LDY.W $0DF9                          ;9EEF95|ACF90D  |;
                       CMP.W #$000E                         ;9EEF98|C90E00  |;
                       BMI CODE_9EEFA6                      ;9EEF9B|3009    |;
                       db $A9,$05,$00,$22,$7F,$9A,$9C,$80   ;9EEF9D|        |;
                       db $07                               ;9EEFA5|        |;
 
          CODE_9EEFA6:
                       LDA.W #$0008                         ;9EEFA6|A90800  |;
                       JSL.L CODE_9C9ABC                    ;9EEFA9|22BC9A9C|;
                       STZ.W $0E01                          ;9EEFAD|9C010E  |;
                       LDY.B zpCurntTeamLoopVal             ;9EEFB0|A491    |;
                       LDA.W #$0008                         ;9EEFB2|A90800  |;
                       STA.W $1203,Y                        ;9EEFB5|990312  |;
                       LDA.W $0D55,X                        ;9EEFB8|BD550D  |;
                       SEC                                  ;9EEFBB|38      |;
                       SBC.W $0D55,Y                        ;9EEFBC|F9550D  |;
                       STA.B $A5                            ;9EEFBF|85A5    |;
                       LDA.W $0DB7,X                        ;9EEFC1|BDB70D  |;
                       SEC                                  ;9EEFC4|38      |;
                       SBC.W $0DB7,Y                        ;9EEFC5|F9B70D  |;
                       STA.B $A9                            ;9EEFC8|85A9    |;
                       BNE CODE_9EEFD1                      ;9EEFCA|D005    |;
                       TYA                                  ;9EEFCC|98      |;
                       JSL.L CODE_9BC002                    ;9EEFCD|2202C09B|;
 
          CODE_9EEFD1:
                       LDA.W $0EC3,X                        ;9EEFD1|BDC30E  |;
                       STA.B $AD                            ;9EEFD4|85AD    |;
                       LDA.W $0EE3,X                        ;9EEFD6|BDE30E  |;
                       STA.B $B1                            ;9EEFD9|85B1    |;
                       SEP #$20                             ;9EEFDB|E220    |;
                       LDA.B $A5                            ;9EEFDD|A5A5    |;
                       STA.W $0EC4,X                        ;9EEFDF|9DC40E  |;
                       LDA.B $A9                            ;9EEFE2|A5A9    |;
                       STA.W $0EE4,X                        ;9EEFE4|9DE40E  |;
                       REP #$30                             ;9EEFE7|C230    |;
                       JSL.L CODE_9EDE5E                    ;9EEFE9|225EDE9E|;
                       LDA.W $0DF9                          ;9EEFED|ADF90D  |;
                       CMP.W #$0008                         ;9EEFF0|C90800  |;
                       BMI CODE_9EF02A                      ;9EEFF3|3035    |;
                       LDA.B $AD                            ;9EEFF5|A5AD    |;
                       TAX                                  ;9EEFF7|AA      |;
                       JSL.L CODE_809062                    ;9EEFF8|22629080|;
                       LDA.B $0A                            ;9EEFFC|A50A    |;
                       STA.B $AF                            ;9EEFFE|85AF    |;
                       LDA.B $08                            ;9EF000|A508    |;
                       STA.B $AD                            ;9EF002|85AD    |;
                       LDA.B $B1                            ;9EF004|A5B1    |;
                       TAX                                  ;9EF006|AA      |;
                       JSL.L CODE_809062                    ;9EF007|22629080|;
                       LDX.B $95                            ;9EF00B|A695    |;
                       LDA.B $08                            ;9EF00D|A508    |;
                       CLC                                  ;9EF00F|18      |;
                       ADC.B $AD                            ;9EF010|65AD    |;
                       STA.B $AD                            ;9EF012|85AD    |;
                       LDA.B $0A                            ;9EF014|A50A    |;
                       ADC.B $AF                            ;9EF016|65AF    |;
                       STA.B $AF                            ;9EF018|85AF    |;
                       CMP.W #$0900                         ;9EF01A|C90009  |;
                       BCC CODE_9EF02B                      ;9EF01D|900C    |;
                       LDA.W $0DF9                          ;9EF01F|ADF90D  |;
                       CMP.W #$000C                         ;9EF022|C90C00  |;
                       BMI CODE_9EF02A                      ;9EF025|3003    |;
                       JMP.W CODE_9E9B52                    ;9EF027|4C529B  |;
 
          CODE_9EF02A:
                       RTL                                  ;9EF02A|6B      |;
 
          CODE_9EF02B:
                       LDY.B zpCurntTeamLoopVal             ;9EF02B|A491    |;
                       LDA.W $14E3,Y                        ;9EF02D|B9E314  |;
                       BNE CODE_9EF02A                      ;9EF030|D0F8    |;
                       INC A                                ;9EF032|1A      |;
                       STA.W $1543,Y                        ;9EF033|994315  |;
                       LDA.W #$F896                         ;9EF036|A996F8  |;
                       LDX.B zpCurntTeamLoopVal             ;9EF039|A691    |;
                       JSL.L CODE_9EA3F1                    ;9EF03B|22F1A39E|;
                       LDX.B $95                            ;9EF03F|A695    |;
                       RTL                                  ;9EF041|6B      |;
 
          CODE_9EF042:
                       LDA.W $15D4                          ;9EF042|ADD415  |;
                       BIT.W #$0010                         ;9EF045|891000  |;
                       BEQ CODE_9EF04D                      ;9EF048|F003    |;
                       db $4C,$CA,$F1                       ;9EF04A|        |;
 
          CODE_9EF04D:
                       STZ.B $AD                            ;9EF04D|64AD    |;
                       LDA.W $0DF9                          ;9EF04F|ADF90D  |;
                       CMP.W #$0008                         ;9EF052|C90800  |;
                       BPL CODE_9EF05B                      ;9EF055|1004    |;
                       INC.B $AD                            ;9EF057|E6AD    |;
                       INC.B $AD                            ;9EF059|E6AD    |;
 
          CODE_9EF05B:
                       LDA.W #$0000                         ;9EF05B|A90000  |;
                       SEC                                  ;9EF05E|38      |;
                       SBC.B $A5                            ;9EF05F|E5A5    |;
                       STA.B $A5                            ;9EF061|85A5    |;
                       LDA.W #$0000                         ;9EF063|A90000  |;
                       SEC                                  ;9EF066|38      |;
                       SBC.B $A9                            ;9EF067|E5A9    |;
                       STA.B $A9                            ;9EF069|85A9    |;
                       JSL.L CODE_9BB445                    ;9EF06B|2245B49B|;
                       LDY.B zpCurntTeamLoopVal             ;9EF06F|A491    |;
                       LDA.B $A5                            ;9EF071|A5A5    |;
                       SEC                                  ;9EF073|38      |;
                       SBC.W $1163,Y                        ;9EF074|F96311  |;
                       AND.W #$0007                         ;9EF077|290700  |;
                       STA.B $A5                            ;9EF07A|85A5    |;
                       AND.W #$0003                         ;9EF07C|290300  |;
                       STA.B $A9                            ;9EF07F|85A9    |;
                       BNE CODE_9EF088                      ;9EF081|D005    |;
                       LDA.W $0792                          ;9EF083|AD9207  |;
                       STA.B $A5                            ;9EF086|85A5    |;
 
          CODE_9EF088:
                       LDA.B $A5                            ;9EF088|A5A5    |;
                       AND.W #$0004                         ;9EF08A|290400  |;
                       LSR A                                ;9EF08D|4A      |;
                       LSR A                                ;9EF08E|4A      |;
                       EOR.W #$0001                         ;9EF08F|490100  |;
                       CLC                                  ;9EF092|18      |;
                       ADC.B $AD                            ;9EF093|65AD    |;
                       ASL A                                ;9EF095|0A      |;
                       STA.B $AD                            ;9EF096|85AD    |;
                       LDA.W $1443,Y                        ;9EF098|B94314  |;
                       STA.B $A9                            ;9EF09B|85A9    |;
                       LDA.B $AD                            ;9EF09D|A5AD    |;
                       BEQ CODE_9EF0BE                      ;9EF09F|F01D    |;
                       LDA.W $13A3,Y                        ;9EF0A1|B9A313  |;
                       STA.B $A9                            ;9EF0A4|85A9    |;
                       LDA.B $AD                            ;9EF0A6|A5AD    |;
                       CMP.W #$0002                         ;9EF0A8|C90200  |;
                       BEQ CODE_9EF0BE                      ;9EF0AB|F011    |;
                       LDA.W $13E3,Y                        ;9EF0AD|B9E313  |;
                       STA.B $A9                            ;9EF0B0|85A9    |;
                       LDA.B $AD                            ;9EF0B2|A5AD    |;
                       CMP.W #$0004                         ;9EF0B4|C90400  |;
                       BEQ CODE_9EF0BE                      ;9EF0B7|F005    |;
                       LDA.W $1423,Y                        ;9EF0B9|B92314  |;
                       STA.B $A9                            ;9EF0BC|85A9    |;
 
          CODE_9EF0BE:
                       LDA.B $A9                            ;9EF0BE|A5A9    |;
                       CLC                                  ;9EF0C0|18      |;
                       ADC.W #$000F                         ;9EF0C1|690F00  |;
                       STA.B $A9                            ;9EF0C4|85A9    |;
                       LDA.W $0E03,Y                        ;9EF0C6|B9030E  |;
                       BIT.W #$0800                         ;9EF0C9|890008  |;
                       BEQ CODE_9EF0D5                      ;9EF0CC|F007    |;
                       db $A5,$AD,$49,$02,$00,$85,$AD       ;9EF0CE|        |;
 
          CODE_9EF0D5:
                       LDA.W $0D97,Y                        ;9EF0D5|B9970D  |;
                       SEC                                  ;9EF0D8|38      |;
                       SBC.W #$0296                         ;9EF0D9|E99602  |;
                       CMP.W #$0010                         ;9EF0DC|C91000  |;
                       BCS CODE_9EF0EC                      ;9EF0DF|B00B    |;
                       db $AD,$F9,$0D,$C9,$05,$00,$30,$03   ;9EF0E1|        |;
                       db $4C,$CA,$F1                       ;9EF0E9|        |;
 
          CODE_9EF0EC:
                       JSL.L CODE_9EF213                    ;9EF0EC|2213F29E|;
                       JSL.L CODE_9EC4F3                    ;9EF0F0|22F3C49E|;
                       LDA.W #$0006                         ;9EF0F4|A90600  |;
                       JSL.L CODE_9C9ABC                    ;9EF0F7|22BC9A9C|;
                       LDA.W $0EFF                          ;9EF0FB|ADFF0E  |;
                       CMP.W #$3000                         ;9EF0FE|C90030  |;
                       BPL CODE_9EF108                      ;9EF101|1005    |;
                       CMP.W #$D000                         ;9EF103|C900D0  |;
                       BPL CODE_9EF135                      ;9EF106|102D    |;
 
          CODE_9EF108:
                       LDA.W $19BE                          ;9EF108|ADBE19  |;
                       CLC                                  ;9EF10B|18      |;
                       ADC.W #$000A                         ;9EF10C|690A00  |;
                       BMI CODE_9EF114                      ;9EF10F|3003    |;
                       STA.W $19BE                          ;9EF111|8DBE19  |;
 
          CODE_9EF114:
                       LDY.B zpCurntTeamLoopVal             ;9EF114|A491    |;
                       LDA.W $1503,Y                        ;9EF116|B90315  |;
                       BEQ CODE_9EF124                      ;9EF119|F009    |;
                       LDA.W #$0004                         ;9EF11B|A90400  |;
                       JSL.L CODE_9C9A7F                    ;9EF11E|227F9A9C|;
                       BRA CODE_9EF135                      ;9EF122|8011    |;
 
          CODE_9EF124:
                       LDA.L $7E35E0                        ;9EF124|AFE0357E|;
                       CLC                                  ;9EF128|18      |;
                       ADC.W #$0258                         ;9EF129|695802  |;
                       STA.L $7E35E0                        ;9EF12C|8FE0357E|;
                       LDA.W #$003C                         ;9EF130|A93C00  |;
                       STA.B $81                            ;9EF133|8581    |;
 
          CODE_9EF135:
                       LDA.W $0AD9                          ;9EF135|ADD90A  |;
                       BMI CODE_9EF13B                      ;9EF138|3001    |;
                       LSR A                                ;9EF13A|4A      |;
 
          CODE_9EF13B:
                       STA.B $AD                            ;9EF13B|85AD    |;
                       BPL CODE_9EF142                      ;9EF13D|1003    |;
                       JMP.W CODE_9EF1CE                    ;9EF13F|4CCEF1  |;
 
          CODE_9EF142:
                       CPX.W $0AD9                          ;9EF142|ECD90A  |;
                       BNE CODE_9EF14A                      ;9EF145|D003    |;
                       db $4C,$CE,$F1                       ;9EF147|        |;
 
          CODE_9EF14A:
                       LDA.W #$FF00                         ;9EF14A|A900FF  |;
                       TSB.W $0AD9                          ;9EF14D|0CD90A  |;
                       ASL.B $AD                            ;9EF150|06AD    |;
                       LDA.B $AD                            ;9EF152|A5AD    |;
                       STA.B $89                            ;9EF154|8589    |;
                       TAY                                  ;9EF156|A8      |;
                       LDA.W #$0014                         ;9EF157|A91400  |;
                       STA.W $1203,Y                        ;9EF15A|990312  |;
                       TYA                                  ;9EF15D|98      |;
                       LSR A                                ;9EF15E|4A      |;
                       STA.W $0CF3                          ;9EF15F|8DF30C  |;
                       LDA.W #$000C                         ;9EF162|A90C00  |;
                       TRB.W $15D8                          ;9EF165|1CD815  |;
 
          CODE_9EF168:
                       STZ.W $0E01                          ;9EF168|9C010E  |;
                       LDY.B zpCurntTeamLoopVal             ;9EF16B|A491    |;
                       LDA.W #$000A                         ;9EF16D|A90A00  |;
                       STA.W $1203,Y                        ;9EF170|990312  |;
                       LDA.W #$0004                         ;9EF173|A90400  |;
                       STA.W $1063,Y                        ;9EF176|996310  |;
                       LDA.W $0D55,X                        ;9EF179|BD550D  |;
                       SEC                                  ;9EF17C|38      |;
                       SBC.W $0D55,Y                        ;9EF17D|F9550D  |;
                       STA.B $A5                            ;9EF180|85A5    |;
                       LDA.W $0DB7,X                        ;9EF182|BDB70D  |;
                       SEC                                  ;9EF185|38      |;
                       SBC.W $0DB7,Y                        ;9EF186|F9B70D  |;
                       STA.B $A9                            ;9EF189|85A9    |;
                       BNE CODE_9EF193                      ;9EF18B|D006    |;
                       db $A5,$91,$22,$02,$C0,$9B           ;9EF18D|        |;
 
          CODE_9EF193:
                       LDA.B $A9                            ;9EF193|A5A9    |;
                       AND.W #$00FF                         ;9EF195|29FF00  |;
                       BIT.W #$0080                         ;9EF198|898000  |;
                       BEQ CODE_9EF1A0                      ;9EF19B|F003    |;
                       ORA.W #$FF00                         ;9EF19D|0900FF  |;
 
          CODE_9EF1A0:
                       STA.B $A9                            ;9EF1A0|85A9    |;
                       LDA.B $A9                            ;9EF1A2|A5A9    |;
                       BEQ CODE_9EF1A8                      ;9EF1A4|F002    |;
                       INC.B $A9                            ;9EF1A6|E6A9    |;
 
          CODE_9EF1A8:
                       LDY.B zpCurntTeamLoopVal             ;9EF1A8|A491    |;
                       LDA.W $0EE3,Y                        ;9EF1AA|B9E30E  |;
                       EOR.B $A9                            ;9EF1AD|45A9    |;
                       BMI CODE_9EF1B9                      ;9EF1AF|3008    |;
                       LDA.W #$0000                         ;9EF1B1|A90000  |;
                       SEC                                  ;9EF1B4|38      |;
                       SBC.B $A9                            ;9EF1B5|E5A9    |;
                       STA.B $A9                            ;9EF1B7|85A9    |;
 
          CODE_9EF1B9:
                       SEP #$20                             ;9EF1B9|E220    |;
                       LDA.B $A5                            ;9EF1BB|A5A5    |;
                       STA.W $0EC4,X                        ;9EF1BD|9DC40E  |;
                       LDA.B $A9                            ;9EF1C0|A5A9    |;
                       STA.W $0EE4,X                        ;9EF1C2|9DE40E  |;
                       REP #$20                             ;9EF1C5|C220    |;
                       JMP.W CODE_9EDE5E                    ;9EF1C7|4C5EDE  |;
                       db $6B                               ;9EF1CA|        |;
 
          CODE_9EF1CB:
                       JMP.W CODE_9EF168                    ;9EF1CB|4C68F1  |;
 
          CODE_9EF1CE:
                       LDA.W #$0002                         ;9EF1CE|A90200  |;
                       CLC                                  ;9EF1D1|18      |;
                       ADC.W $1363,Y                        ;9EF1D2|796313  |;
                       XBA                                  ;9EF1D5|EB      |;
                       AND.W #$FF00                         ;9EF1D6|2900FF  |;
                       ASL A                                ;9EF1D9|0A      |;
                       JSL.L CODE_9BB370                    ;9EF1DA|2270B39B|;
                       ADC.W #$2000                         ;9EF1DE|690020  |;
                       STA.B $A5                            ;9EF1E1|85A5    |;
                       CMP.W $0EDF                          ;9EF1E3|CDDF0E  |;
                       BMI CODE_9EF1CB                      ;9EF1E6|30E3    |;
                       LDA.B $A5                            ;9EF1E8|A5A5    |;
                       CMP.W $0EFF                          ;9EF1EA|CDFF0E  |;
                       BMI CODE_9EF1CB                      ;9EF1ED|30DC    |;
                       LDA.W #$0000                         ;9EF1EF|A90000  |;
                       SEC                                  ;9EF1F2|38      |;
                       SBC.B $A5                            ;9EF1F3|E5A5    |;
                       STA.B $A5                            ;9EF1F5|85A5    |;
                       CMP.W $0EDF                          ;9EF1F7|CDDF0E  |;
                       BPL CODE_9EF1CB                      ;9EF1FA|10CF    |;
                       LDA.B $A5                            ;9EF1FC|A5A5    |;
                       CMP.W $0EFF                          ;9EF1FE|CDFF0E  |;
                       BPL CODE_9EF1CB                      ;9EF201|10C8    |;
                       LDY.B zpCurntTeamLoopVal             ;9EF203|A491    |;
                       LDA.W $1283,Y                        ;9EF205|B98312  |;
                       BIT.W #$1000                         ;9EF208|890010  |;
                       BNE CODE_9EF1CB                      ;9EF20B|D0BE    |;
                       STZ.W $0E01                          ;9EF20D|9C010E  |;
                       JMP.W CODE_9E9A49                    ;9EF210|4C499A  |;
 
          CODE_9EF213:
                       LDA.W #$1000                         ;9EF213|A90010  |;
                       TRB.W $15D8                          ;9EF216|1CD815  |;
                       BNE CODE_9EF21E                      ;9EF219|D003    |;
                       JMP.W CODE_9EF318                    ;9EF21B|4C18F3  |;
 
          CODE_9EF21E:
                       LDA.W $15D6                          ;9EF21E|ADD615  |;
                       BEQ CODE_9EF226                      ;9EF221|F003    |;
                       db $4C,$18,$F3                       ;9EF223|        |;
 
          CODE_9EF226:
                       LDA.B $8D                            ;9EF226|A58D    |;
                       PHA                                  ;9EF228|48      |;
                       LDA.B $8F                            ;9EF229|A58F    |;
                       PHA                                  ;9EF22B|48      |;
                       LDA.B zpCurntTeamLoopVal             ;9EF22C|A591    |;
                       PHA                                  ;9EF22E|48      |;
                       LDA.B $93                            ;9EF22F|A593    |;
                       PHA                                  ;9EF231|48      |;
                       LDA.B $95                            ;9EF232|A595    |;
                       PHA                                  ;9EF234|48      |;
                       LDA.B $97                            ;9EF235|A597    |;
                       PHA                                  ;9EF237|48      |;
                       LDA.B $A5                            ;9EF238|A5A5    |;
                       PHA                                  ;9EF23A|48      |;
                       LDA.B $A7                            ;9EF23B|A5A7    |;
                       PHA                                  ;9EF23D|48      |;
                       PHX                                  ;9EF23E|DA      |;
                       LDX.W $0D29                          ;9EF23F|AE290D  |;
                       STX.B $95                            ;9EF242|8695    |;
                       STZ.B zpCurntTeamLoopVal             ;9EF244|6491    |;
                       LDA.W #$0002                         ;9EF246|A90200  |;
                       STA.B $8D                            ;9EF249|858D    |;
                       TXA                                  ;9EF24B|8A      |;
                       CMP.W #$000C                         ;9EF24C|C90C00  |;
                       BMI CODE_9EF258                      ;9EF24F|3007    |;
                       LDA.W #$0002                         ;9EF251|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9EF254|8591    |;
                       STZ.B $8D                            ;9EF256|648D    |;
 
          CODE_9EF258:
                       LDY.W #$177A                         ;9EF258|A07A17  |;
                       LDA.W $1503,X                        ;9EF25B|BD0315  |;
                       BEQ CODE_9EF262                      ;9EF25E|F002    |;
                       INY                                  ;9EF260|C8      |;
                       INY                                  ;9EF261|C8      |;
 
          CODE_9EF262:
                       LDA.W $0000,Y                        ;9EF262|B90000  |;
                       INC A                                ;9EF265|1A      |; Shot On Net
                       STA.W $0000,Y                        ;9EF266|990000  |;
                       LDY.B zpCurntTeamLoopVal             ;9EF269|A491    |;
                       BNE CODE_9EF28A                      ;9EF26B|D01D    |;
                       LDA.W PlyrsOnIceCountHm              ;9EF26D|ADA617  |;
                       SEC                                  ;9EF270|38      |;
                       SBC.W PlyrsOnIceCountAwy             ;9EF271|EDA817  |;
                       BEQ CODE_9EF2A5                      ;9EF274|F02F    |;
                       db $30,$09,$AD,$5A,$17,$1A,$8D,$5A   ;9EF276|        |;
                       db $17,$80,$24,$AD,$5E,$17,$1A,$8D   ;9EF27E|        |;
                       db $5E,$17,$80,$1B                   ;9EF286|        |;
 
          CODE_9EF28A:
                       LDA.W PlyrsOnIceCountAwy             ;9EF28A|ADA817  |;
                       SEC                                  ;9EF28D|38      |;
                       SBC.W PlyrsOnIceCountHm              ;9EF28E|EDA617  |;
                       BEQ CODE_9EF2A5                      ;9EF291|F012    |;
                       BMI CODE_9EF29E                      ;9EF293|3009    |;
                       db $AD,$5C,$17,$1A,$8D,$5C,$17,$80   ;9EF295|        |;
                       db $07                               ;9EF29D|        |;
 
          CODE_9EF29E:
                       LDA.W $1760                          ;9EF29E|AD6017  |;
                       INC A                                ;9EF2A1|1A      |;
                       STA.W $1760                          ;9EF2A2|8D6017  |;
 
          CODE_9EF2A5:
                       LDA.W period                         ;9EF2A5|AD3016  |;
                       ASL A                                ;9EF2A8|0A      |;
                       ASL A                                ;9EF2A9|0A      |;
                       TAX                                  ;9EF2AA|AA      |;
                       LDA.B zpCurntTeamLoopVal             ;9EF2AB|A591    |;
                       BEQ CODE_9EF2B1                      ;9EF2AD|F002    |;
                       INX                                  ;9EF2AF|E8      |;
                       INX                                  ;9EF2B0|E8      |;
 
          CODE_9EF2B1:
                       LDA.W $176A,X                        ;9EF2B1|BD6A17  |;
                       INC A                                ;9EF2B4|1A      |;
                       STA.W $176A,X                        ;9EF2B5|9D6A17  |;
                       LDX.B $95                            ;9EF2B8|A695    |;
                       LDA.W $12A3,X                        ;9EF2BA|BDA312  |;
                       STA.B $A5                            ;9EF2BD|85A5    |;
                       LDA.B zpCurntTeamLoopVal             ;9EF2BF|A591    |;
                       BEQ CODE_9EF2C6                      ;9EF2C1|F003    |;
                       LDA.W #$001A                         ;9EF2C3|A91A00  |;
 
          CODE_9EF2C6:
                       CLC                                  ;9EF2C6|18      |;
                       ADC.B $A5                            ;9EF2C7|65A5    |;
                       LDX.B zpCurntTeamLoopVal             ;9EF2C9|A691    |;
                       CMP.W GoalieInNetHmAw,X              ;9EF2CB|DDAA17  |;
                       BEQ CODE_9EF2D8                      ;9EF2CE|F008    |;
                       TAX                                  ;9EF2D0|AA      |;
                       SEP #$20                             ;9EF2D1|E220    |;
                       INC.W $1956,X                        ;9EF2D3|FE5619  |;
                       REP #$20                             ;9EF2D6|C220    |;
 
          CODE_9EF2D8:
                       LDX.B $8D                            ;9EF2D8|A68D    |;
                       LDA.W GoalieInNetHmAw,X              ;9EF2DA|BDAA17  |;
                       STA.B $A5                            ;9EF2DD|85A5    |;
                       BMI CODE_9EF2F3                      ;9EF2DF|3012    |;
                       LDA.B $8D                            ;9EF2E1|A58D    |;
                       BEQ CODE_9EF2E8                      ;9EF2E3|F003    |;
                       LDA.W #$001A                         ;9EF2E5|A91A00  |;
 
          CODE_9EF2E8:
                       CLC                                  ;9EF2E8|18      |;
                       ADC.B $A5                            ;9EF2E9|65A5    |;
                       TAX                                  ;9EF2EB|AA      |;
                       SEP #$20                             ;9EF2EC|E220    |;
                       INC.W $1956,X                        ;9EF2EE|FE5619  |;
                       REP #$20                             ;9EF2F1|C220    |;
 
          CODE_9EF2F3:
                       PLX                                  ;9EF2F3|FA      |;
                       PLA                                  ;9EF2F4|68      |;
                       STA.B $A7                            ;9EF2F5|85A7    |;
                       PLA                                  ;9EF2F7|68      |;
                       STA.B $A5                            ;9EF2F8|85A5    |;
                       PLA                                  ;9EF2FA|68      |;
                       STA.B $97                            ;9EF2FB|8597    |;
                       PLA                                  ;9EF2FD|68      |;
                       STA.B $95                            ;9EF2FE|8595    |;
                       PLA                                  ;9EF300|68      |;
                       STA.B $93                            ;9EF301|8593    |;
                       PLA                                  ;9EF303|68      |;
                       STA.B zpCurntTeamLoopVal             ;9EF304|8591    |;
                       PLA                                  ;9EF306|68      |;
                       STA.B $8F                            ;9EF307|858F    |;
                       PLA                                  ;9EF309|68      |;
                       STA.B $8D                            ;9EF30A|858D    |;
                       LDA.W $19BE                          ;9EF30C|ADBE19  |;
                       CLC                                  ;9EF30F|18      |;
                       ADC.W #$000A                         ;9EF310|690A00  |;
                       BMI CODE_9EF318                      ;9EF313|3003    |;
                       STA.W $19BE                          ;9EF315|8DBE19  |;
 
          CODE_9EF318:
                       RTL                                  ;9EF318|6B      |;
 
          CODE_9EF319:
                       LDA.W $15D6                          ;9EF319|ADD615  |;
                       BEQ CODE_9EF328                      ;9EF31C|F00A    |;
                       STZ.W $0E01                          ;9EF31E|9C010E  |;
                       STZ.W $0EDF                          ;9EF321|9CDF0E  |;
                       STZ.W $0EFF                          ;9EF324|9CFF0E  |;
                       RTL                                  ;9EF327|6B      |;
 
          CODE_9EF328:
                       LDA.W $163A                          ;9EF328|AD3A16  |;
                       BEQ CODE_9EF357                      ;9EF32B|F02A    |;
                       LDA.W $0DD3                          ;9EF32D|ADD30D  |;
                       BPL CODE_9EF33C                      ;9EF330|100A    |;
                       db $AD,$D4,$15,$89,$02,$00,$F0,$18   ;9EF332|        |;
                       db $80,$0A                           ;9EF33A|        |;
 
          CODE_9EF33C:
                       LDA.W $15D4                          ;9EF33C|ADD415  |;
                       BIT.W #$0002                         ;9EF33F|890200  |;
                       BEQ UNREACH_9EF346                   ;9EF342|F002    |;
                       BRA CODE_9EF352                      ;9EF344|800C    |;
 
       UNREACH_9EF346:
                       db $AD,$91,$1E,$F0,$0C               ;9EF346|        |;
 
       UNREACH_9EF34B:
                       db $22,$91,$C7,$9E,$4C,$D9,$F5       ;9EF34B|        |;
 
          CODE_9EF352:
                       LDA.W $1E91                          ;9EF352|AD911E  |;
                       BEQ UNREACH_9EF34B                   ;9EF355|F0F4    |;
 
          CODE_9EF357:
                       JSL.L CODE_9EF213                    ;9EF357|2213F29E|;
                       JSL.L CODE_9FBA97                    ;9EF35B|2297BA9F|;
                       LDA.W #$001E                         ;9EF35F|A91E00  |;
                       STA.W $0CA9                          ;9EF362|8DA90C  |;
                       STZ.B zpCurntTeamLoopVal             ;9EF365|6491    |;
                       LDA.W #$0002                         ;9EF367|A90200  |;
                       STA.B $8D                            ;9EF36A|858D    |;
                       LDA.W $0DD3                          ;9EF36C|ADD30D  |;
                       BPL CODE_9EF378                      ;9EF36F|1007    |;
                       db $64,$8D,$A9,$02,$00,$85,$91       ;9EF371|        |;
 
          CODE_9EF378:
                       LDA.W $15D4                          ;9EF378|ADD415  |;
                       BIT.W #$0002                         ;9EF37B|890200  |;
                       BEQ CODE_9EF389                      ;9EF37E|F009    |;
                       LDA.B $8D                            ;9EF380|A58D    |;
                       STA.B zpCurntTeamLoopVal             ;9EF382|8591    |;
                       EOR.W #$0002                         ;9EF384|490200  |;
                       STA.B $8D                            ;9EF387|858D    |;
 
          CODE_9EF389:
                       LDY.B zpCurntTeamLoopVal             ;9EF389|A491    |;
                       LDA.W Score_HmAw,Y                   ;9EF38B|B98E17  |;
                       INC A                                ;9EF38E|1A      |;
                       STA.W Score_HmAw,Y                   ;9EF38F|998E17  |;
                       LDA.W PlyrsOnIceCountHm              ;9EF392|ADA617  |;
                       SEC                                  ;9EF395|38      |;
                       SBC.W PlyrsOnIceCountAwy             ;9EF396|EDA817  |;
                       BEQ CODE_9EF3AE                      ;9EF399|F013    |;
                       BMI CODE_9EF3A3                      ;9EF39B|3006    |;
                       LDY.B zpCurntTeamLoopVal             ;9EF39D|A491    |;
                       BEQ CODE_9EF3AE                      ;9EF39F|F00D    |;
                       BRA CODE_9EF3A7                      ;9EF3A1|8004    |;
          CODE_9EF3A3:
                       LDY.B zpCurntTeamLoopVal             ;9EF3A3|A491    |;
                       BNE CODE_9EF3AE                      ;9EF3A5|D007    |;
          CODE_9EF3A7:
                       LDA.W GmStat_SHGoals,Y               ;9EF3A7|B96217  |;
                       INC A                                ;9EF3AA|1A      |;
                       STA.W GmStat_SHGoals,Y               ;9EF3AB|996217  |;
 
          CODE_9EF3AE:
                       LDA.W IsPenaltyShot                  ;9EF3AE|AD9B1E  |;
                       BNE CODE_9EF3C3                      ;9EF3B1|D010    |; Penalty Shot so Branch to F3C3
                       LDA.W BreakAwayActive_flg            ;9EF3B3|AD8B1E  |;
                       BEQ CODE_9EF3CC                      ;9EF3B6|F014    |; If its not a BreakAway Branch to F3CC
                       LDY.B zpCurntTeamLoopVal             ;9EF3B8|A491    |;
                       LDA.W GmStat_BrkAwayMade,Y           ;9EF3BA|B9C617  |;
                       INC A                                ;9EF3BD|1A      |; Add 1 to the Break Away Made Stat
                       STA.W GmStat_BrkAwayMade,Y           ;9EF3BE|99C617  |;
                       BRA CODE_9EF3CC                      ;9EF3C1|8009    |;
 
          CODE_9EF3C3:
                       LDY.B zpCurntTeamLoopVal             ;9EF3C3|A491    |;
                       LDA.W GmStat_PnltyShotMade,Y         ;9EF3C5|B9CE17  |;
                       INC A                                ;9EF3C8|1A      |; Add 1 to Penalty Shot Made Game Stat
                       STA.W GmStat_PnltyShotMade,Y         ;9EF3C9|99CE17  |;
          CODE_9EF3CC:
                       LDA.W OneTimerFlg                    ;9EF3CC|AD891E  |;
                       BEQ CODE_9EF3DA                      ;9EF3CF|F009    |;
                       LDY.B zpCurntTeamLoopVal             ;9EF3D1|A491    |;
                       LDA.W GmStat_OneTimrMade,Y           ;9EF3D3|B9DA17  |;
                       INC A                                ;9EF3D6|1A      |;Add 1 to One Timers Made
                       STA.W GmStat_OneTimrMade,Y           ;9EF3D7|99DA17  |;
 
          CODE_9EF3DA:
                       JSL.L CODE_80A349                    ;9EF3DA|2249A380|;
                       LDA.W #$0002                         ;9EF3DE|A90200  |;
                       JSL.L CODE_9C9A7F                    ;9EF3E1|227F9A9C|;
                       STZ.W $0C23                          ;9EF3E5|9C230C  |;
                       LDY.B zpCurntTeamLoopVal             ;9EF3E8|A491    |;
                       BEQ UNREACH_9EF406                   ;9EF3EA|F01A    |;
                       LDA.W #$0004                         ;9EF3EC|A90400  |;
                       JSL.L CODE_9C9FD5                    ;9EF3EF|22D59F9C|;
                       LDA.L $7E35E0                        ;9EF3F3|AFE0357E|;
                       SEC                                  ;9EF3F7|38      |;
                       SBC.W #$0300                         ;9EF3F8|E90003  |;
                       BPL CODE_9EF400                      ;9EF3FB|1003    |;
                       db $A9,$00,$00                       ;9EF3FD|        |;
 
          CODE_9EF400:
                       STA.L $7E35E0                        ;9EF400|8FE0357E|;
                       BRA CODE_9EF424                      ;9EF404|801E    |;
 
       UNREACH_9EF406:
                       db $1A,$1A,$22,$D5,$9F,$9C,$AF,$E0   ;9EF406|        |;
                       db $35,$7E,$18,$69,$F4,$01,$8F,$E0   ;9EF40E|        |;
                       db $35,$7E,$A9,$78,$00,$85,$81,$A9   ;9EF416|        |;
                       db $03,$00,$22,$5F,$9B,$9C           ;9EF41E|        |;
 
          CODE_9EF424:
                       LDA.B $83                            ;9EF424|A583    |;
                       STA.W $0D2B                          ;9EF426|8D2B0D  |;
                       JSL.L CODE_9EC791                    ;9EF429|2291C79E|;
                       STZ.W BreakAwayActive_flg            ;9EF42D|9C8B1E  |;
                       STZ.W OneTimerFlg                    ;9EF430|9C891E  |;
                       PHX                                  ;9EF433|DA      |;
                       LDA.W period                         ;9EF434|AD3016  |;
                       ASL A                                ;9EF437|0A      |;
                       ASL A                                ;9EF438|0A      |;
                       TAX                                  ;9EF439|AA      |;
                       LDA.W $19BE                          ;9EF43A|ADBE19  |;
                       CLC                                  ;9EF43D|18      |;
                       ADC.W #$001E                         ;9EF43E|691E00  |;
                       BMI CODE_9EF446                      ;9EF441|3003    |;
                       STA.W $19BE                          ;9EF443|8DBE19  |;
 
          CODE_9EF446:
                       LDA.B zpCurntTeamLoopVal             ;9EF446|A591    |;
                       BEQ CODE_9EF458                      ;9EF448|F00E    |;
                       INX                                  ;9EF44A|E8      |;
                       INX                                  ;9EF44B|E8      |;
                       LDA.W $19BE                          ;9EF44C|ADBE19  |;
                       CLC                                  ;9EF44F|18      |;
                       ADC.W #$FFCE                         ;9EF450|69CEFF  |;
                       BMI CODE_9EF458                      ;9EF453|3003    |;
                       STA.W $19BE                          ;9EF455|8DBE19  |;
 
          CODE_9EF458:
                       LDA.W $177E,X                        ;9EF458|BD7E17  |;
                       INC A                                ;9EF45B|1A      |;
                       STA.W $177E,X                        ;9EF45C|9D7E17  |;
                       PLX                                  ;9EF45F|FA      |;
                       LDA.L $7E313A                        ;9EF460|AF3A317E|;
                       CMP.W #$0258                         ;9EF464|C95802  |;
                       BNE CODE_9EF471                      ;9EF467|D008    |;
                       db $38,$E9,$06,$00,$8F,$3A,$31,$7E   ;9EF469|        |;
 
          CODE_9EF471:
                       LDA.W #$007E                         ;9EF471|A97E00  |;
                       STA.B $8B                            ;9EF474|858B    |;
                       LDA.W #$313C                         ;9EF476|A93C31  |;
                       CLC                                  ;9EF479|18      |;
                       ADC.L $7E313A                        ;9EF47A|6F3A317E|;
                       STA.B $89                            ;9EF47E|8589    |;
                       LDA.L $7E313A                        ;9EF480|AF3A317E|;
                       ADC.W #$0006                         ;9EF484|690600  |;
                       STA.L $7E313A                        ;9EF487|8F3A317E|;
                       JSL.L CODE_9F9B08                    ;9EF48B|22089B9F|;
                       LDA.B $A5                            ;9EF48F|A5A5    |;
                       STA.B [$89]                          ;9EF491|8789    |;
                       INC.B $89                            ;9EF493|E689    |;
                       INC.B $89                            ;9EF495|E689    |;
                       LDA.W #$0002                         ;9EF497|A90200  |;
                       CLC                                  ;9EF49A|18      |;
                       LDY.B zpCurntTeamLoopVal             ;9EF49B|A491    |;
                       ADC.W PlyrsOnIceCountHm,Y            ;9EF49D|79A617  |;
                       LDY.B $8D                            ;9EF4A0|A48D    |;
                       SEC                                  ;9EF4A2|38      |;
                       SBC.W PlyrsOnIceCountHm,Y            ;9EF4A3|F9A617  |;
                       LDY.B zpCurntTeamLoopVal             ;9EF4A6|A491    |;
                       BEQ CODE_9EF4AD                      ;9EF4A8|F003    |;
                       ORA.W #$0080                         ;9EF4AA|098000  |;
 
          CODE_9EF4AD:
                       STA.B [$89]                          ;9EF4AD|8789    |;
                       INC.B $89                            ;9EF4AF|E689    |;
                       LDA.W $179A,Y                        ;9EF4B1|B99A17  |;
                       STA.B $A5                            ;9EF4B4|85A5    |;
                       STA.B [$89]                          ;9EF4B6|8789    |;
                       INC.B $89                            ;9EF4B8|E689    |;
                       LDA.W #$FFFF                         ;9EF4BA|A9FFFF  |;
                       STA.B [$89]                          ;9EF4BD|8789    |;
                       LDX.B zpCurntTeamLoopVal             ;9EF4BF|A691    |;
                       LDA.W GoalieInNetHmAw,X              ;9EF4C1|BDAA17  |;
                       CMP.B $A5                            ;9EF4C4|C5A5    |;
                       BEQ CODE_9EF4DA                      ;9EF4C6|F012    |;
                       LDA.B zpCurntTeamLoopVal             ;9EF4C8|A591    |;
                       BEQ CODE_9EF4CF                      ;9EF4CA|F003    |;
                       LDA.W #$001A                         ;9EF4CC|A91A00  |;
 
          CODE_9EF4CF:
                       CLC                                  ;9EF4CF|18      |;
                       ADC.B $A5                            ;9EF4D0|65A5    |;
                       TAX                                  ;9EF4D2|AA      |;
                       SEP #$20                             ;9EF4D3|E220    |;
                       INC.W $18EE,X                        ;9EF4D5|FEEE18  |;
                       REP #$20                             ;9EF4D8|C220    |;
 
          CODE_9EF4DA:
                       LDY.B zpCurntTeamLoopVal             ;9EF4DA|A491    |;
                       LDA.W $179E,Y                        ;9EF4DC|B99E17  |;
                       STA.B $A5                            ;9EF4DF|85A5    |;
                       BMI CODE_9EF51C                      ;9EF4E1|3039    |;
                       db $E2,$20,$87,$89,$C2,$20,$A5,$91   ;9EF4E3|        |;
                       db $F0,$03,$A9,$1A,$00,$18,$65,$A5   ;9EF4EB|        |;
                       db $AA,$E2,$20,$FE,$22,$19,$C2,$20   ;9EF4F3|        |;
                       db $E6,$89,$B9,$A2,$17,$85,$A5,$30   ;9EF4FB|        |;
                       db $18,$E2,$20,$87,$89,$C2,$20,$A5   ;9EF503|        |;
                       db $91,$F0,$03,$A9,$1A,$00,$18,$65   ;9EF50B|        |;
                       db $A5,$AA,$E2,$20,$FE,$22,$19,$C2   ;9EF513|        |;
                       db $20                               ;9EF51B|        |;
 
          CODE_9EF51C:
                       LDY.B $8D                            ;9EF51C|A48D    |;
                       LDA.W GoalieInNetHmAw,Y              ;9EF51E|B9AA17  |;
                       STA.B $A5                            ;9EF521|85A5    |;
                       BMI CODE_9EF533                      ;9EF523|300E    |;
                       LDA.B $8D                            ;9EF525|A58D    |;
                       BEQ CODE_9EF52C                      ;9EF527|F003    |;
                       db $A9,$1A,$00                       ;9EF529|        |;
 
          CODE_9EF52C:
                       CLC                                  ;9EF52C|18      |;
                       ADC.B $A5                            ;9EF52D|65A5    |;
                       TAX                                  ;9EF52F|AA      |;
                       INC.W $18EE,X                        ;9EF530|FEEE18  |;
 
          CODE_9EF533:
                       JSL.L CODE_9EB94C                    ;9EF533|224CB99E|;
                       JSL.L CODE_9F9B36                    ;9EF537|22369B9F|;
                       LDA.W #$0008                         ;9EF53B|A90800  |;
                       STA.B $A5                            ;9EF53E|85A5    |;
                       JSL.L CODE_9EF5B8                    ;9EF540|22B8F59E|;
                       LDA.B zpCurntTeamLoopVal             ;9EF544|A591    |;
                       BNE CODE_9EF556                      ;9EF546|D00E    |;
                       db $AD,$90,$17,$38,$ED,$8E,$17,$30   ;9EF548|        |;
                       db $05,$C9,$03,$00,$B0,$00           ;9EF550|        |;
 
          CODE_9EF556:
                       STZ.W $0CDB                          ;9EF556|9CDB0C  |;
                       STZ.W $0EDF                          ;9EF559|9CDF0E  |;
                       STZ.W $0EFF                          ;9EF55C|9CFF0E  |;
                       LDY.W #$0006                         ;9EF55F|A00600  |;
                       LDA.W $0D71                          ;9EF562|AD710D  |;
                       BPL CODE_9EF56A                      ;9EF565|1003    |;
                       LDY.W #$FFFA                         ;9EF567|A0FAFF  |;
 
          CODE_9EF56A:
                       STY.W $0D71                          ;9EF56A|8C710D  |;
                       LDY.W #$0110                         ;9EF56D|A01001  |;
                       LDA.W $0DD3                          ;9EF570|ADD30D  |;
                       BPL CODE_9EF578                      ;9EF573|1003    |;
                       db $A0,$F0,$FE                       ;9EF575|        |;
 
          CODE_9EF578:
                       STY.W $0DD3                          ;9EF578|8CD30D  |;
                       LDA.W #$0600                         ;9EF57B|A90006  |;
                       STA.W $0E01                          ;9EF57E|8D010E  |;
                       STZ.W $0DF9                          ;9EF581|9CF90D  |;
                       LDA.W #$FFFF                         ;9EF584|A9FFFF  |;
                       STA.W $0D19                          ;9EF587|8D190D  |;
                       STA.W $0D1D                          ;9EF58A|8D1D0D  |;
                       STA.W $157F                          ;9EF58D|8D7F15  |;
                       LDA.W #$001A                         ;9EF590|A91A00  |;
                       STA.B $A5                            ;9EF593|85A5    |;
                       JSL.L CODE_9E8C18                    ;9EF595|22188C9E|;
                       INX                                  ;9EF599|E8      |;
                       INX                                  ;9EF59A|E8      |;
                       LDA.W #$F644                         ;9EF59B|A944F6  |;
                       JSL.L CODE_9EA3F1                    ;9EF59E|22F1A39E|;
                       LDY.B zpCurntTeamLoopVal             ;9EF5A2|A491    |;
                       LDX.W $1766,Y                        ;9EF5A4|BE6617  |;
                       STX.B $95                            ;9EF5A7|8695    |;
                       LDA.W #$000E                         ;9EF5A9|A90E00  |;
                       STA.B $A5                            ;9EF5AC|85A5    |;
                       JSL.L CODE_9EB88A                    ;9EF5AE|228AB89E|;
                       LDX.W #$001C                         ;9EF5B2|A21C00  |;
                       STX.B $95                            ;9EF5B5|8695    |;
                       RTL                                  ;9EF5B7|6B      |;
 
          CODE_9EF5B8:
                       PHX                                  ;9EF5B8|DA      |;
                       LDY.B zpCurntTeamLoopVal             ;9EF5B9|A491    |;
                       LDA.W $1766,Y                        ;9EF5BB|B96617  |;
                       TAX                                  ;9EF5BE|AA      |;
                       LDA.W #$0005                         ;9EF5BF|A90500  |;
                       STA.B $B1                            ;9EF5C2|85B1    |;
 
          CODE_9EF5C4:
                       LDA.W $0F43,X                        ;9EF5C4|BD430F  |;
                       BMI CODE_9EF5D2                      ;9EF5C7|3009    |;
                       BEQ CODE_9EF5D2                      ;9EF5C9|F007    |;
                       STZ.W $1563,X                        ;9EF5CB|9E6315  |;
                       JSL.L CODE_9E8C0E                    ;9EF5CE|220E8C9E|;
 
          CODE_9EF5D2:
                       INX                                  ;9EF5D2|E8      |;
                       INX                                  ;9EF5D3|E8      |;
                       DEC.B $B1                            ;9EF5D4|C6B1    |;
                       BPL CODE_9EF5C4                      ;9EF5D6|10EC    |;
                       PLX                                  ;9EF5D8|FA      |;
                       RTL                                  ;9EF5D9|6B      |;
 
          CODE_9EF5DA:
                       LDY.B zpCurntTeamLoopVal             ;9EF5DA|A491    |;
                       LDA.W $0F43,Y                        ;9EF5DC|B9430F  |;
                       BNE CODE_9EF5EA                      ;9EF5DF|D009    |;
                       LDA.W $15D4                          ;9EF5E1|ADD415  |;
                       BIT.W #$0010                         ;9EF5E4|891000  |;
                       BEQ CODE_9EF5EA                      ;9EF5E7|F001    |;
 
          CODE_9EF5E9:
                       RTL                                  ;9EF5E9|6B      |;
 
          CODE_9EF5EA:
                       LDA.W $1283,Y                        ;9EF5EA|B98312  |;
                       AND.W #$FFFE                         ;9EF5ED|29FEFF  |;
                       STA.W $1283,Y                        ;9EF5F0|998312  |;
                       LDY.W $0AD9                          ;9EF5F3|ACD90A  |;
                       BPL CODE_9EF5FB                      ;9EF5F6|1003    |;
                       JMP.W CODE_9EF69A                    ;9EF5F8|4C9AF6  |;
 
          CODE_9EF5FB:
                       LDA.W $1503,Y                        ;9EF5FB|B90315  |;
                       LDY.B zpCurntTeamLoopVal             ;9EF5FE|A491    |;
                       CMP.W $1503,Y                        ;9EF600|D90315  |;
                       BEQ CODE_9EF5E9                      ;9EF603|F0E4    |;
                       LDA.B $A5                            ;9EF605|A5A5    |;
                       CMP.W #$0025                         ;9EF607|C92500  |;
                       BCS CODE_9EF5E9                      ;9EF60A|B0DD    |;
                       LDA.W $0F43,Y                        ;9EF60C|B9430F  |;
                       BEQ CODE_9EF64C                      ;9EF60F|F03B    |;
                       LDY.B $89                            ;9EF611|A489    |;
                       LDA.W $0F43,Y                        ;9EF613|B9430F  |;
                       BEQ CODE_9EF5E9                      ;9EF616|F0D1    |;
                       LDA.W $1403,Y                        ;9EF618|B90314  |;
                       JSL.L CODE_9FDCEB                    ;9EF61B|22EBDC9F|;
                       LDA.B $A5                            ;9EF61F|A5A5    |;
                       PHA                                  ;9EF621|48      |;
                       LDA.B $89                            ;9EF622|A589    |;
                       LDY.B zpCurntTeamLoopVal             ;9EF624|A491    |;
                       STY.B $89                            ;9EF626|8489    |;
                       STA.B zpCurntTeamLoopVal             ;9EF628|8591    |;
                       LDA.W $1403,Y                        ;9EF62A|B90314  |;
                       STA.B $A5                            ;9EF62D|85A5    |;
                       JSL.L CODE_9FDCEB                    ;9EF62F|22EBDC9F|;
                       LDA.B $89                            ;9EF633|A589    |;
                       LDY.B zpCurntTeamLoopVal             ;9EF635|A491    |;
                       STY.B $89                            ;9EF637|8489    |;
                       STA.B zpCurntTeamLoopVal             ;9EF639|8591    |;
                       PLA                                  ;9EF63B|68      |;
                       SEC                                  ;9EF63C|38      |;
                       SBC.B $A5                            ;9EF63D|E5A5    |;
                       CLC                                  ;9EF63F|18      |;
                       ADC.W #$0024                         ;9EF640|692400  |;
                       JSL.L CODE_9BB370                    ;9EF643|2270B39B|;
                       CMP.W #$0003                         ;9EF647|C90300  |;
                       BCS CODE_9EF5E9                      ;9EF64A|B09D    |;
 
          CODE_9EF64C:
                       LDY.B $89                            ;9EF64C|A489    |;
                       LDA.W $1403,Y                        ;9EF64E|B90314  |;
                       JSL.L CODE_9FDCEB                    ;9EF651|22EBDC9F|;
                       LDA.B $A5                            ;9EF655|A5A5    |;
                       ADC.W #$0014                         ;9EF657|691400  |;
                       LDY.B $89                            ;9EF65A|A489    |;
                       STA.W $1203,Y                        ;9EF65C|990312  |;
                       LDA.B $89                            ;9EF65F|A589    |;
                       LDY.B zpCurntTeamLoopVal             ;9EF661|A491    |;
                       STY.B $89                            ;9EF663|8489    |;
                       STA.B zpCurntTeamLoopVal             ;9EF665|8591    |;
                       LDA.W $1403,Y                        ;9EF667|B90314  |;
                       JSL.L CODE_9FDCEB                    ;9EF66A|22EBDC9F|;
                       LDA.B $A5                            ;9EF66E|A5A5    |;
                       ADC.W #$0014                         ;9EF670|691400  |;
                       LDY.B $89                            ;9EF673|A489    |;
                       STA.W $1203,Y                        ;9EF675|990312  |;
                       LDA.B $89                            ;9EF678|A589    |;
                       LDY.B zpCurntTeamLoopVal             ;9EF67A|A491    |;
                       STY.B $89                            ;9EF67C|8489    |;
                       STA.B zpCurntTeamLoopVal             ;9EF67E|8591    |;
                       TYA                                  ;9EF680|98      |;
                       LSR A                                ;9EF681|4A      |;
                       STA.W $0CF3                          ;9EF682|8DF30C  |;
                       LDA.W #$000C                         ;9EF685|A90C00  |;
                       TRB.W $15D8                          ;9EF688|1CD815  |;
 
          CODE_9EF68B:
                       LDA.W #$0003                         ;9EF68B|A90300  |;
                       JSL.L CODE_9C9ABC                    ;9EF68E|22BC9A9C|;
                       JSL.L CODE_9EC4F3                    ;9EF692|22F3C49E|;
                       JMP.W CODE_9EF722                    ;9EF696|4C22F7  |;
                       db $6B                               ;9EF699|        |;
 
          CODE_9EF69A:
                       LDA.B $A5                            ;9EF69A|A5A5    |;
                       STA.B $AD                            ;9EF69C|85AD    |;
                       LDA.W $0EDF                          ;9EF69E|ADDF0E  |;
                       PHX                                  ;9EF6A1|DA      |;
                       TAX                                  ;9EF6A2|AA      |;
                       JSL.L CODE_809062                    ;9EF6A3|22629080|;
                       LDA.B $0A                            ;9EF6A7|A50A    |;
                       STA.B $A7                            ;9EF6A9|85A7    |;
                       LDA.B $08                            ;9EF6AB|A508    |;
                       STA.B $A5                            ;9EF6AD|85A5    |;
                       LDA.W $0EFF                          ;9EF6AF|ADFF0E  |;
                       TAX                                  ;9EF6B2|AA      |;
                       JSL.L CODE_809062                    ;9EF6B3|22629080|;
                       PLX                                  ;9EF6B7|FA      |;
                       LDA.B $08                            ;9EF6B8|A508    |;
                       CLC                                  ;9EF6BA|18      |;
                       ADC.B $A5                            ;9EF6BB|65A5    |;
                       STA.B $A5                            ;9EF6BD|85A5    |;
                       LDA.B $0A                            ;9EF6BF|A50A    |;
                       ADC.B $A7                            ;9EF6C1|65A7    |;
                       STA.B $A7                            ;9EF6C3|85A7    |;
                       STZ.B $A9                            ;9EF6C5|64A9    |;
                       LDA.W $15D8                          ;9EF6C7|ADD815  |;
                       BIT.W #$1000                         ;9EF6CA|890010  |;
                       BNE CODE_9EF6E1                      ;9EF6CD|D012    |;
                       LDY.B zpCurntTeamLoopVal             ;9EF6CF|A491    |;
                       LDA.W $1403,Y                        ;9EF6D1|B90314  |;
                       PHX                                  ;9EF6D4|DA      |;
                       LDX.W #$02BC                         ;9EF6D5|A2BC02  |;
                       JSL.L CODE_808F98                    ;9EF6D8|22988F80|;
                       LDA.B $08                            ;9EF6DC|A508    |;
                       STA.B $A9                            ;9EF6DE|85A9    |;
                       PLX                                  ;9EF6E0|FA      |;
 
          CODE_9EF6E1:
                       LDA.B $A9                            ;9EF6E1|A5A9    |;
                       CLC                                  ;9EF6E3|18      |;
                       ADC.W #$2710                         ;9EF6E4|691027  |;
                       LDY.W $0F43,X                        ;9EF6E7|BC430F  |;
                       BEQ CODE_9EF6F1                      ;9EF6EA|F005    |;
                       db $EC,$07,$0D,$D0,$03               ;9EF6EC|        |;
 
          CODE_9EF6F1:
                       ADC.W #$0BB8                         ;9EF6F1|69B80B  |;
                       PHX                                  ;9EF6F4|DA      |;
                       TAX                                  ;9EF6F5|AA      |;
                       JSL.L CODE_809099                    ;9EF6F6|22999080|;
                       PLX                                  ;9EF6FA|FA      |;
                       LDA.B $08                            ;9EF6FB|A508    |;
                       CMP.B $A5                            ;9EF6FD|C5A5    |;
                       LDA.B $0A                            ;9EF6FF|A50A    |;
                       SBC.B $A7                            ;9EF701|E5A7    |;
                       BCS CODE_9EF71F                      ;9EF703|B01A    |;
                       LDA.W $0F43,X                        ;9EF705|BD430F  |;
                       BEQ CODE_9EF714                      ;9EF708|F00A    |;
                       db $A5,$AD,$C9,$25,$00,$90,$03,$4C   ;9EF70A|        |;
                       db $99,$F6                           ;9EF712|        |;
 
          CODE_9EF714:
                       LDY.B zpCurntTeamLoopVal             ;9EF714|A491    |;
                       LDA.W #$0008                         ;9EF716|A90800  |;
                       STA.W $1203,Y                        ;9EF719|990312  |;
                       JMP.W CODE_9EF68B                    ;9EF71C|4C8BF6  |;
 
          CODE_9EF71F:
                       JMP.W CODE_9E9A49                    ;9EF71F|4C499A  |;
 
          CODE_9EF722:
                       LDA.W #$FFFF                         ;9EF722|A9FFFF  |;
                       STA.W $0AD9                          ;9EF725|8DD90A  |;
                       JSL.L CODE_808658                    ;9EF728|22588680|;
                       AND.W #$1FFF                         ;9EF72C|29FF1F  |;
                       SEC                                  ;9EF72F|38      |;
                       SBC.W #$1000                         ;9EF730|E90010  |;
                       STA.W $0EFF                          ;9EF733|8DFF0E  |;
                       JSL.L CODE_808658                    ;9EF736|22588680|;
                       AND.W #$1FFF                         ;9EF73A|29FF1F  |;
                       SEC                                  ;9EF73D|38      |;
                       SBC.W #$1000                         ;9EF73E|E90010  |;
                       STA.W $0EDF                          ;9EF741|8DDF0E  |;
                       JSL.L CODE_808658                    ;9EF744|22588680|;
                       AND.W #$0FFF                         ;9EF748|29FF0F  |;
                       STA.W $0E01                          ;9EF74B|8D010E  |;
                       JMP.W CODE_9EDE5E                    ;9EF74E|4C5EDE  |;
 
          CODE_9EF751:
                       LDA.W $0CF1                          ;9EF751|ADF10C  |;
                       BIT.W #$0004                         ;9EF754|890400  |;
                       BEQ CODE_9EF779                      ;9EF757|F020    |;
                       BIT.W #$0001                         ;9EF759|890100  |;
                       BNE CODE_9EF779                      ;9EF75C|D01B    |;
                       LDA.W $0AD9                          ;9EF75E|ADD90A  |;
                       BPL CODE_9EF779                      ;9EF761|1016    |;
                       LDA.W #$0108                         ;9EF763|A90801  |;
                       STA.B $A5                            ;9EF766|85A5    |;
                       LDA.W $0CF1                          ;9EF768|ADF10C  |;
                       BIT.W #$0002                         ;9EF76B|890200  |;
                       BNE CODE_9EF77A                      ;9EF76E|D00A    |;
                       LDA.W #$FEF8                         ;9EF770|A9F8FE  |;
                       SEC                                  ;9EF773|38      |;
                       SBC.W $0DD3                          ;9EF774|EDD30D  |;
                       BPL CODE_9EF783                      ;9EF777|100A    |;
 
          CODE_9EF779:
                       RTL                                  ;9EF779|6B      |;
 
          CODE_9EF77A:
                       LDA.W #$0108                         ;9EF77A|A90801  |;
                       SEC                                  ;9EF77D|38      |;
                       SBC.W $0DD3                          ;9EF77E|EDD30D  |;
                       BPL CODE_9EF779                      ;9EF781|10F6    |;
 
          CODE_9EF783:
                       LDA.W #$0001                         ;9EF783|A90100  |;
                       TSB.W $0CF1                          ;9EF786|0CF10C  |;
                       RTL                                  ;9EF789|6B      |;
 
          CODE_9EF78A:
                       STZ.B $8D                            ;9EF78A|648D    |;
                       LDA.W #$0002                         ;9EF78C|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9EF78F|8591    |;
                       JSL.L CODE_9EF8C4                    ;9EF791|22C4F89E|;
                       STZ.B zpCurntTeamLoopVal             ;9EF795|6491    |;
                       LDA.W #$0002                         ;9EF797|A90200  |;
                       STA.B $8D                            ;9EF79A|858D    |;
                       JSL.L CODE_9EF8C4                    ;9EF79C|22C4F89E|;
                       LDA.W #$0054                         ;9EF7A0|A95400  |;
                       STA.B $A5                            ;9EF7A3|85A5    |;
                       LDA.W $0DD3                          ;9EF7A5|ADD30D  |;
                       BPL CODE_9EF7AD                      ;9EF7A8|1003    |;
                       JMP.W CODE_9EF833                    ;9EF7AA|4C33F8  |;
 
          CODE_9EF7AD:
                       LDA.B $A5                            ;9EF7AD|A5A5    |;
                       SEC                                  ;9EF7AF|38      |;
                       SBC.W $0DD3                          ;9EF7B0|EDD30D  |;
                       BMI CODE_9EF7BF                      ;9EF7B3|300A    |;
                       LDA.B $A5                            ;9EF7B5|A5A5    |;
                       SEC                                  ;9EF7B7|38      |;
                       SBC.W $0E9F                          ;9EF7B8|ED9F0E  |;
                       BPL CODE_9EF829                      ;9EF7BB|106C    |;
                       BRA CODE_9EF7C7                      ;9EF7BD|8008    |;
 
          CODE_9EF7BF:
                       LDA.B $A5                            ;9EF7BF|A5A5    |;
                       SEC                                  ;9EF7C1|38      |;
                       SBC.W $0E9F                          ;9EF7C2|ED9F0E  |;
                       BMI CODE_9EF829                      ;9EF7C5|3062    |;
 
          CODE_9EF7C7:
                       JSL.L fn_BreakawayLogic              ;9EF7C7|22E7C69E|;
                       LDA.W $15D4                          ;9EF7CB|ADD415  |;
                       BIT.W #$0020                         ;9EF7CE|892000  |;
                       BNE UNREACH_9EF7D6                   ;9EF7D1|D003    |;
                       JMP.W CODE_9EF829                    ;9EF7D3|4C29F8  |;
 
       UNREACH_9EF7D6:
                       db $A9,$5E,$00,$85,$A5,$AD,$D4,$15   ;9EF7D6|        |;
                       db $89,$02,$00,$F0,$08,$A5,$91,$A4   ;9EF7DE|        |;
                       db $8D,$84,$91,$85,$8D,$AD,$D9,$0A   ;9EF7E6|        |;
                       db $10,$04,$AD,$F3,$0C,$0A,$C9,$0C   ;9EF7EE|        |;
                       db $00,$10,$06,$A5,$91,$F0,$06,$80   ;9EF7F6|        |;
                       db $2A,$A5,$91,$F0,$26,$A9,$05,$00   ;9EF7FE|        |;
                       db $85,$AD,$A4,$91,$B9,$66,$17,$85   ;9EF806|        |;
                       db $89,$A4,$89,$B9,$43,$0F,$30,$14   ;9EF80E|        |;
                       db $A5,$A5,$38,$F9,$B7,$0D,$10,$0C   ;9EF816|        |;
                       db $A4,$91,$B9,$DE,$17,$09,$10,$00   ;9EF81E|        |;
                       db $99,$DE,$17                       ;9EF826|        |;
 
          CODE_9EF829:
                       RTL                                  ;9EF829|6B      |;
                       db $E6,$89,$E6,$89,$C6,$AD,$10,$DD   ;9EF82A|        |;
                       db $6B                               ;9EF832|        |;
 
          CODE_9EF833:
                       LDA.W #$0000                         ;9EF833|A90000  |;
                       SEC                                  ;9EF836|38      |;
                       SBC.B $A5                            ;9EF837|E5A5    |;
                       STA.B $A5                            ;9EF839|85A5    |;
                       LDA.B $A5                            ;9EF83B|A5A5    |;
                       SEC                                  ;9EF83D|38      |;
                       SBC.W $0DD3                          ;9EF83E|EDD30D  |;
                       BMI CODE_9EF84D                      ;9EF841|300A    |;
                       LDA.B $A5                            ;9EF843|A5A5    |;
                       SEC                                  ;9EF845|38      |;
                       SBC.W $0E9F                          ;9EF846|ED9F0E  |;
                       BPL CODE_9EF829                      ;9EF849|10DE    |;
                       BRA CODE_9EF855                      ;9EF84B|8008    |;
 
          CODE_9EF84D:
                       LDA.B $A5                            ;9EF84D|A5A5    |;
                       SEC                                  ;9EF84F|38      |;
                       SBC.W $0E9F                          ;9EF850|ED9F0E  |;
                       BMI CODE_9EF829                      ;9EF853|30D4    |;
 
          CODE_9EF855:
                       JSL.L fn_BreakawayLogic              ;9EF855|22E7C69E|;
                       LDA.W $15D4                          ;9EF859|ADD415  |;
                       BIT.W #$0020                         ;9EF85C|892000  |;
                       BNE UNREACH_9EF864                   ;9EF85F|D003    |;
                       JMP.W CODE_9EF829                    ;9EF861|4C29F8  |;
 
       UNREACH_9EF864:
                       db $A5,$A5,$38,$E9,$0A,$00,$85,$A5   ;9EF864|        |;
                       db $AD,$D4,$15,$89,$02,$00,$D0,$08   ;9EF86C|        |;
                       db $A5,$91,$A4,$8D,$84,$91,$85,$8D   ;9EF874|        |;
                       db $AD,$D9,$0A,$10,$04,$AD,$F3,$0C   ;9EF87C|        |;
                       db $0A,$C9,$0C,$00,$10,$06,$A5,$91   ;9EF884|        |;
                       db $F0,$06,$80,$99,$A5,$91,$F0,$95   ;9EF88C|        |;
                       db $A9,$05,$00,$85,$AD,$A4,$91,$B9   ;9EF894|        |;
                       db $66,$17,$85,$89,$A4,$89,$B9,$43   ;9EF89C|        |;
                       db $0F,$30,$14,$A5,$A5,$38,$F9,$B7   ;9EF8A4|        |;
                       db $0D,$30,$0C,$A4,$91,$B9,$DE,$17   ;9EF8AC|        |;
                       db $09,$10,$00,$99,$DE,$17,$6B,$E6   ;9EF8B4|        |;
                       db $89,$E6,$89,$C6,$AD,$10,$DD,$6B   ;9EF8BC|        |;
 
          CODE_9EF8C4:
                       LDY.B zpCurntTeamLoopVal             ;9EF8C4|A491    |;
                       LDA.W $17DE,Y                        ;9EF8C6|B9DE17  |;
                       BIT.W #$0010                         ;9EF8C9|891000  |;
                       BNE UNREACH_9EF8D1                   ;9EF8CC|D003    |;
                       JMP.W CODE_9EF829                    ;9EF8CE|4C29F8  |;
 
       UNREACH_9EF8D1:
                       db $B9,$66,$17,$85,$89,$A9,$05,$00   ;9EF8D1|        |;
                       db $85,$A9,$A4,$89,$B9,$43,$0F,$30   ;9EF8D9|        |;
                       db $12,$B9,$B7,$0D,$85,$A5,$B9,$C3   ;9EF8E1|        |;
                       db $14,$D0,$08,$A9,$00,$00,$38,$E5   ;9EF8E9|        |;
                       db $A5,$85,$A5,$E6,$89,$E6,$89,$A5   ;9EF8F1|        |;
                       db $A5,$38,$E9,$58,$00,$30,$03,$4C   ;9EF8F9|        |;
                       db $29,$F8,$C6,$A9,$10,$D4,$A4,$91   ;9EF901|        |;
                       db $B9,$DE,$17,$29,$EF,$FF,$99,$DE   ;9EF909|        |;
                       db $17,$6B                           ;9EF911|        |;
 
          CODE_9EF913:
                       LDA.W $162A                          ;9EF913|AD2A16  |;
                       BMI CODE_9EF968                      ;9EF916|3050    |;
                       SEC                                  ;9EF918|38      |;
                       SBC.B $C1                            ;9EF919|E5C1    |;
                       STA.W $162A                          ;9EF91B|8D2A16  |;
                       BPL CODE_9EF924                      ;9EF91E|1004    |;
                       JSL.L CODE_9EF991                    ;9EF920|2291F99E|;
 
          CODE_9EF924:
                       LDA.W $1628                          ;9EF924|AD2816  |;
                       SEC                                  ;9EF927|38      |;
                       SBC.B $C1                            ;9EF928|E5C1    |;
                       STA.W $1628                          ;9EF92A|8D2816  |;
                       BPL CODE_9EF968                      ;9EF92D|1039    |;
                       LDA.W #$7FFF                         ;9EF92F|A9FF7F  |;
                       STA.W $1628                          ;9EF932|8D2816  |;
                       JSL.L CODE_9EC913                    ;9EF935|2213C99E|;
                       LDA.B $8F                            ;9EF939|A58F    |;
                       PHA                                  ;9EF93B|48      |;
                       LDA.B $8D                            ;9EF93C|A58D    |;
                       PHA                                  ;9EF93E|48      |;
                       LDA.W #$009C                         ;9EF93F|A99C00  |;
                       STA.B $8F                            ;9EF942|858F    |;
                       LDA.W #$F7A0                         ;9EF944|A9A0F7  |;
                       STA.B $8D                            ;9EF947|858D    |;
                       JSL.L CODE_9EC7BE                    ;9EF949|22BEC79E|;
                       PLA                                  ;9EF94D|68      |;
                       STA.B $8D                            ;9EF94E|858D    |;
                       PLA                                  ;9EF950|68      |;
                       STA.B $8F                            ;9EF951|858F    |;
                       JSL.L CODE_9FC3F8                    ;9EF953|22F8C39F|;
                       LDA.B [$8D]                          ;9EF957|A78D    |;
                       LSR A                                ;9EF959|4A      |;
                       STA.B $A5                            ;9EF95A|85A5    |;
                       LDA.W $0D0F                          ;9EF95C|AD0F0D  |;
                       SEC                                  ;9EF95F|38      |;
                       SBC.B $A5                            ;9EF960|E5A5    |;
                       STA.W $0D0F                          ;9EF962|8D0F0D  |;
                       JMP.W CODE_9EC7BE                    ;9EF965|4CBEC7  |;
 
          CODE_9EF968:
                       RTL                                  ;9EF968|6B      |;
 
          CODE_9EF969:
                       LDA.B $A5                            ;9EF969|A5A5    |;
                       STA.W $162E                          ;9EF96B|8D2E16  |;
                       STZ.W $162C                          ;9EF96E|9C2C16  |;
                       JSL.L CODE_9EC160                    ;9EF971|2260C19E|;
                       LDA.B $A5                            ;9EF975|A5A5    |;
                       CMP.W #$000E                         ;9EF977|C90E00  |;
                       BNE CODE_9EF980                      ;9EF97A|D004    |;
                       JSL.L CODE_9FA697                    ;9EF97C|2297A69F|;
 
          CODE_9EF980:
                       LDA.W #$7FFF                         ;9EF980|A9FF7F  |;
                       STA.W $1628                          ;9EF983|8D2816  |;
                       LDA.W PauseScreenActive              ;9EF986|ADDA15  |;
                       BEQ CODE_9EF991                      ;9EF989|F006    |;
                       LDA.W #$003C                         ;9EF98B|A93C00  |;
                       STA.W $1628                          ;9EF98E|8D2816  |;
 
          CODE_9EF991:
                       PHX                                  ;9EF991|DA      |;
                       LDA.B $A5                            ;9EF992|A5A5    |;
                       PHA                                  ;9EF994|48      |;
                       LDA.B $A7                            ;9EF995|A5A7    |;
                       PHA                                  ;9EF997|48      |;
                       LDA.B $A9                            ;9EF998|A5A9    |;
                       PHA                                  ;9EF99A|48      |;
                       LDA.B $AB                            ;9EF99B|A5AB    |;
                       PHA                                  ;9EF99D|48      |;
                       LDA.B $AD                            ;9EF99E|A5AD    |;
                       PHA                                  ;9EF9A0|48      |;
                       LDA.B $AF                            ;9EF9A1|A5AF    |;
                       PHA                                  ;9EF9A3|48      |;
                       LDA.B $89                            ;9EF9A4|A589    |;
                       PHA                                  ;9EF9A6|48      |;
                       LDA.B $8B                            ;9EF9A7|A58B    |;
                       PHA                                  ;9EF9A9|48      |;
                       LDA.B $8D                            ;9EF9AA|A58D    |;
                       PHA                                  ;9EF9AC|48      |;
                       LDA.B $8F                            ;9EF9AD|A58F    |;
                       PHA                                  ;9EF9AF|48      |;
                       LDA.W $162C                          ;9EF9B0|AD2C16  |;
                       BPL CODE_9EF9C5                      ;9EF9B3|1010    |;
                       LDA.W $1D81                          ;9EF9B5|AD811D  |;
                       BEQ CODE_9EF9C0                      ;9EF9B8|F006    |;
                       LDA.W #$0001                         ;9EF9BA|A90100  |;
                       STA.W $1D83                          ;9EF9BD|8D831D  |;
 
          CODE_9EF9C0:
                       LDA.W $162C                          ;9EF9C0|AD2C16  |;
                       BRA CODE_9EFA0F                      ;9EF9C3|804A    |;
 
          CODE_9EF9C5:
                       STA.B $A5                            ;9EF9C5|85A5    |;
                       INC.W $162C                          ;9EF9C7|EE2C16  |;
                       INC.W $162C                          ;9EF9CA|EE2C16  |;
                       LDA.W $162E                          ;9EF9CD|AD2E16  |;
                       STA.B $A9                            ;9EF9D0|85A9    |;
                       TAX                                  ;9EF9D2|AA      |;
                       LDA.L DATA8_80D3EB,X                 ;9EF9D3|BFEBD380|;
                       INC A                                ;9EF9D7|1A      |;
                       INC A                                ;9EF9D8|1A      |;
                       TAX                                  ;9EF9D9|AA      |;
                       CLC                                  ;9EF9DA|18      |;
                       ADC.L DATA8_80D3EB,X                 ;9EF9DB|7FEBD380|;
                       ADC.B $A5                            ;9EF9DF|65A5    |;
                       TAX                                  ;9EF9E1|AA      |;
                       LDA.L DATA8_80D3EB,X                 ;9EF9E2|BFEBD380|;
                       STA.B $A5                            ;9EF9E6|85A5    |;
                       BPL CODE_9EF9F6                      ;9EF9E8|100C    |;
                       EOR.W #$FFFF                         ;9EF9EA|49FFFF  |;
                       INC A                                ;9EF9ED|1A      |;
                       STA.B $A5                            ;9EF9EE|85A5    |;
                       LDA.W #$FFFF                         ;9EF9F0|A9FFFF  |;
                       STA.W $162C                          ;9EF9F3|8D2C16  |;
 
          CODE_9EF9F6:
                       LDA.B $A5                            ;9EF9F6|A5A5    |;
                       AND.W #$00FF                         ;9EF9F8|29FF00  |;
                       ASL A                                ;9EF9FB|0A      |;
                       ASL A                                ;9EF9FC|0A      |;
                       ASL A                                ;9EF9FD|0A      |;
                       STA.B $A9                            ;9EF9FE|85A9    |;
                       STA.W $162A                          ;9EFA00|8D2A16  |;
                       LDA.B $A5                            ;9EFA03|A5A5    |;
                       XBA                                  ;9EFA05|EB      |;
                       AND.W #$00FF                         ;9EFA06|29FF00  |;
                       STA.B $A5                            ;9EFA09|85A5    |;
                       JSL.L CODE_9EFA36                    ;9EFA0B|2236FA9E|;
 
          CODE_9EFA0F:
                       PLA                                  ;9EFA0F|68      |;
                       STA.B $8F                            ;9EFA10|858F    |;
                       PLA                                  ;9EFA12|68      |;
                       STA.B $8D                            ;9EFA13|858D    |;
                       PLA                                  ;9EFA15|68      |;
                       STA.B $8B                            ;9EFA16|858B    |;
                       PLA                                  ;9EFA18|68      |;
                       STA.B $89                            ;9EFA19|8589    |;
                       PLA                                  ;9EFA1B|68      |;
                       STA.B $AF                            ;9EFA1C|85AF    |;
                       PLA                                  ;9EFA1E|68      |;
                       STA.B $AD                            ;9EFA1F|85AD    |;
                       PLA                                  ;9EFA21|68      |;
                       STA.B $AB                            ;9EFA22|85AB    |;
                       PLA                                  ;9EFA24|68      |;
                       STA.B $A9                            ;9EFA25|85A9    |;
                       PLA                                  ;9EFA27|68      |;
                       STA.B $A7                            ;9EFA28|85A7    |;
                       PLA                                  ;9EFA2A|68      |;
                       STA.B $A5                            ;9EFA2B|85A5    |;
                       PLX                                  ;9EFA2D|FA      |;
                       RTL                                  ;9EFA2E|6B      |;
 
          CODE_9EFA2F:
                       LDA.W #$0200                         ;9EFA2F|A90002  |;
                       TRB.W $15D8                          ;9EFA32|1CD815  |;
                       RTL                                  ;9EFA35|6B      |;
 
          CODE_9EFA36:
                       PHX                                  ;9EFA36|DA      |;
                       LDA.B $A5                            ;9EFA37|A5A5    |;
                       PHA                                  ;9EFA39|48      |;
                       LDA.B $A7                            ;9EFA3A|A5A7    |;
                       PHA                                  ;9EFA3C|48      |;
                       LDA.B $A9                            ;9EFA3D|A5A9    |;
                       PHA                                  ;9EFA3F|48      |;
                       LDA.B $AB                            ;9EFA40|A5AB    |;
                       PHA                                  ;9EFA42|48      |;
                       LDA.B $AD                            ;9EFA43|A5AD    |;
                       PHA                                  ;9EFA45|48      |;
                       LDA.B $AF                            ;9EFA46|A5AF    |;
                       PHA                                  ;9EFA48|48      |;
                       LDA.B $89                            ;9EFA49|A589    |;
                       PHA                                  ;9EFA4B|48      |;
                       LDA.B $8B                            ;9EFA4C|A58B    |;
                       PHA                                  ;9EFA4E|48      |;
                       LDA.B $8D                            ;9EFA4F|A58D    |;
                       PHA                                  ;9EFA51|48      |;
                       LDA.B $8F                            ;9EFA52|A58F    |;
                       PHA                                  ;9EFA54|48      |;
                       LDA.B $A5                            ;9EFA55|A5A5    |;
                       CMP.W #$0040                         ;9EFA57|C94000  |;
                       BNE CODE_9EFA5F                      ;9EFA5A|D003    |;
                       JMP.W CODE_9EFAF7                    ;9EFA5C|4CF7FA  |;
 
          CODE_9EFA5F:
                       CMP.W #$0006                         ;9EFA5F|C90600  |;
                       BEQ CODE_9EFA6B                      ;9EFA62|F007    |;
                       LDA.W #$0001                         ;9EFA64|A90100  |;
                       STA.L $7E344A                        ;9EFA67|8F4A347E|;
 
          CODE_9EFA6B:
                       LDA.B $A5                            ;9EFA6B|A5A5    |;
                       LDX.W #$0070                         ;9EFA6D|A27000  |;
                       JSL.L CODE_808F4C                    ;9EFA70|224C8F80|;
                       STA.B $A5                            ;9EFA74|85A5    |;
                       LDA.W #$0096                         ;9EFA76|A99600  |;
                       STA.B $8B                            ;9EFA79|858B    |;
                       LDA.W #$F15D                         ;9EFA7B|A95DF1  |;
                       STA.B $89                            ;9EFA7E|8589    |;
                       LDA.W #$0084                         ;9EFA80|A98400  |;
                       STA.B $C7                            ;9EFA83|85C7    |;
                       LDA.L $7E35CA                        ;9EFA85|AFCA357E|;
                       ORA.W #$2000                         ;9EFA89|090020  |;
                       STA.B $C5                            ;9EFA8C|85C5    |;
                       LDA.W PauseScreenActive              ;9EFA8E|ADDA15  |;
                       BEQ CODE_9EFAA8                      ;9EFA91|F015    |;
                       LDA.L $7E35C8                        ;9EFA93|AFC8357E|;
                       STA.B $C5                            ;9EFA97|85C5    |;
                       LDA.W #$03DA                         ;9EFA99|A9DA03  |;
                       STA.B $C7                            ;9EFA9C|85C7    |;
                       LDA.W #$0095                         ;9EFA9E|A99500  |;
                       STA.B $8B                            ;9EFAA1|858B    |;
                       LDA.W #$DB94                         ;9EFAA3|A994DB  |;
                       STA.B $89                            ;9EFAA6|8589    |;
 
          CODE_9EFAA8:
                       LDA.B $89                            ;9EFAA8|A589    |;
                       CLC                                  ;9EFAAA|18      |;
                       ADC.B $A5                            ;9EFAAB|65A5    |;
                       STA.B $89                            ;9EFAAD|8589    |;
                       LDA.W #$0008                         ;9EFAAF|A90800  |;
                       STA.B $C9                            ;9EFAB2|85C9    |;
 
          CODE_9EFAB4:
                       LDY.W #$0007                         ;9EFAB4|A00700  |;
 
          CODE_9EFAB7:
                       LDA.B [$89]                          ;9EFAB7|A789    |;
                       CLC                                  ;9EFAB9|18      |;
                       ADC.B $C5                            ;9EFABA|65C5    |;
                       ADC.L $7E35AA                        ;9EFABC|6FAA357E|;
                       LDX.B $C7                            ;9EFAC0|A6C7    |;
                       STA.L $7E37F4,X                      ;9EFAC2|9FF4377E|;
                       TXA                                  ;9EFAC6|8A      |;
                       LSR A                                ;9EFAC7|4A      |;
                       CMP.W $0CD5                          ;9EFAC8|CDD50C  |;
                       BCS CODE_9EFAD0                      ;9EFACB|B003    |;
                       STA.W $0CD5                          ;9EFACD|8DD50C  |;
 
          CODE_9EFAD0:
                       CMP.W $0CD7                          ;9EFAD0|CDD70C  |;
                       BCC CODE_9EFAD8                      ;9EFAD3|9003    |;
                       STA.W $0CD7                          ;9EFAD5|8DD70C  |;
 
          CODE_9EFAD8:
                       INC.B $89                            ;9EFAD8|E689    |;
                       INC.B $89                            ;9EFADA|E689    |;
                       INC.B $C7                            ;9EFADC|E6C7    |;
                       INC.B $C7                            ;9EFADE|E6C7    |;
                       DEY                                  ;9EFAE0|88      |;
                       BNE CODE_9EFAB7                      ;9EFAE1|D0D4    |;
                       LDA.B $C7                            ;9EFAE3|A5C7    |;
                       CLC                                  ;9EFAE5|18      |;
                       ADC.W #$0032                         ;9EFAE6|693200  |;
                       STA.B $C7                            ;9EFAE9|85C7    |;
                       DEC.B $C9                            ;9EFAEB|C6C9    |;
                       BNE CODE_9EFAB4                      ;9EFAED|D0C5    |;
                       LDA.W #$0200                         ;9EFAEF|A90002  |;
                       TSB.W $15D8                          ;9EFAF2|0CD815  |;
                       BRA CODE_9EFB3B                      ;9EFAF5|8044    |;
 
          CODE_9EFAF7:
                       LDA.W #$0007                         ;9EFAF7|A90700  |;
                       STA.B $A5                            ;9EFAFA|85A5    |;
                       LDA.W #$0008                         ;9EFAFC|A90800  |;
                       STA.B $A9                            ;9EFAFF|85A9    |;
                       LDA.L $7E35D0                        ;9EFB01|AFD0357E|;
                       STA.B $AD                            ;9EFB05|85AD    |;
                       LDA.W #$0002                         ;9EFB07|A90200  |;
                       STA.W $0D0F                          ;9EFB0A|8D0F0D  |;
                       STA.W $0D11                          ;9EFB0D|8D110D  |;
                       LDA.W PauseScreenActive              ;9EFB10|ADDA15  |;
                       BEQ CODE_9EFB21                      ;9EFB13|F00C    |;
                       db $A9,$0D,$00,$8D,$0F,$0D,$A9,$0F   ;9EFB15|        |;
                       db $00,$8D,$11,$0D                   ;9EFB1D|        |;
 
          CODE_9EFB21:
                       JSL.L CODE_9FBD9C                    ;9EFB21|229CBD9F|;
                       LDA.W #$0200                         ;9EFB25|A90002  |;
                       TSB.W $15D8                          ;9EFB28|0CD815  |;
                       LDA.W #$FFFF                         ;9EFB2B|A9FFFF  |;
                       STA.B $A5                            ;9EFB2E|85A5    |;
                       JSL.L CODE_9EC160                    ;9EFB30|2260C19E|;
                       LDA.W #$0000                         ;9EFB34|A90000  |;
                       STA.L $7E344A                        ;9EFB37|8F4A347E|;
 
          CODE_9EFB3B:
                       PLA                                  ;9EFB3B|68      |;
                       STA.B $8F                            ;9EFB3C|858F    |;
                       PLA                                  ;9EFB3E|68      |;
                       STA.B $8D                            ;9EFB3F|858D    |;
                       PLA                                  ;9EFB41|68      |;
                       STA.B $8B                            ;9EFB42|858B    |;
                       PLA                                  ;9EFB44|68      |;
                       STA.B $89                            ;9EFB45|8589    |;
                       PLA                                  ;9EFB47|68      |;
                       STA.B $AF                            ;9EFB48|85AF    |;
                       PLA                                  ;9EFB4A|68      |;
                       STA.B $AD                            ;9EFB4B|85AD    |;
                       PLA                                  ;9EFB4D|68      |;
                       STA.B $AB                            ;9EFB4E|85AB    |;
                       PLA                                  ;9EFB50|68      |;
                       STA.B $A9                            ;9EFB51|85A9    |;
                       PLA                                  ;9EFB53|68      |;
                       STA.B $A7                            ;9EFB54|85A7    |;
                       PLA                                  ;9EFB56|68      |;
                       STA.B $A5                            ;9EFB57|85A5    |;
                       PLX                                  ;9EFB59|FA      |;
                       RTL                                  ;9EFB5A|6B      |;
 
          One_Min_Pen:                       
                       CMP.W #$0401                         ;9EFB5B|C90104  |; Compare to #0401 Value for 1 min penalties
                       BEQ .hit                             ;9EFB5E|F005    |; 1 min pen jump to hit
                       CMP.W #$0A01                         ;9EFB60|C9010A  |; Cmp to #0A01 Roughing Pen is different
                       BNE .done                            ;9EFB63|D003    |; Not a penalty so were done
                       .hit:
                       JMP.W CODE_9EB421                    ;9EFB65|4C21B4  |; 1 min Penalty so JMP to B421
 
            .done:                       
                       AND.W #$00FF                         ;9EFB68|29FF00  |; Run hijacked code
 
                       JMP.W CODE_9EB41A                    ;9EFB6B|4C1AB4  |; Jmp to next instruction B41A

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
                       JSL.L CODE_9FD407                    ;9EFBAB|2207D49F|; Call the subroutine at $9FD407 To start the goalie animation                                                                      
                       LDA.W #$7000                         ;9EFBAF|A90070  |; Setup for SFX fnc
                       STA.B $64                            ;9EFBB2|8564    |;
                       LDA.W #$0005                         ;9EFBB4|A90500  |; #05 Sets Beep SFX
                       JSL.L fn_PlaySFX                     ;9EFBB7|227DA180|; Call To SFX Routine - Play Beep When L+R Pressed

            Done:
                       LDY.B zpCurntTeamLoopVal             ;9EFBBB|A491    |; Run Original Hijacked code & RTS
                       LDA.W GoalieInNetHmAw,Y              ;9EFBBD|B9AA17  |;
                       RTS                                  ;9EFBC0|60      |;
JyPadHmAwyLookupTable:
                       dw $0001                             ;9EFBC1|        |;
                       dw $0002                             ;9EFBC3|        |;
            
             padbyte $FF
             pad $9F8000
