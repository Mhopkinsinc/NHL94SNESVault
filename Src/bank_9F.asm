 
                       ORG $9F8000
 
 
          CODE_9F8000:
                       LDA.W $1C9A                          ;9F8000|AD9A1C  |;
                       STA.L $7E3454                        ;9F8003|8F54347E|;
                       LDA.W $1C98                          ;9F8007|AD981C  |;
                       STA.L $7E3452                        ;9F800A|8F52347E|;
                       JSL.L CODE_9DD9AD                    ;9F800E|22ADD99D|;
                       JSL.L CODE_80AFDE                    ;9F8012|22DEAF80|;
                       JSL.L CODE_9DE0D4                    ;9F8016|22D4E09D|;
                       STZ.W $1DBD                          ;9F801A|9CBD1D  |;
                       LDA.W #$0006                         ;9F801D|A90600  |;
                       STA.W $1DC5                          ;9F8020|8DC51D  |;
                       STZ.W $1DB9                          ;9F8023|9CB91D  |;
                       JSL.L CODE_9DDFF6                    ;9F8026|22F6DF9D|;
                       JSL.L CODE_8086BD                    ;9F802A|22BD8680|;
                       JSL.L CODE_9F8064                    ;9F802E|2264809F|;
 
          CODE_9F8032:
                       JSL.L CODE_9DD923                    ;9F8032|2223D99D|;
                       JSL.L CODE_808583                    ;9F8036|22838580|;
                       JSL.L CODE_9B8017                    ;9F803A|2217809B|;
                       JSL.L CODE_9B851F                    ;9F803E|221F859B|;
                       JSL.L CODE_9B852C                    ;9F8042|222C859B|;
                       LDA.B $A9                            ;9F8046|A5A9    |;
                       BIT.W #$1000                         ;9F8048|890010  |;
                       BNE CODE_9F8054                      ;9F804B|D007    |;
                       BIT.W #$4000                         ;9F804D|890040  |;
                       BNE UNREACH_9F8055                   ;9F8050|D003    |;
                       BRA CODE_9F8032                      ;9F8052|80DE    |;
 
          CODE_9F8054:
                       RTL                                  ;9F8054|6B      |;
 
       UNREACH_9F8055:
                       db $AD,$B9,$1D,$49,$01,$00,$8D,$B9   ;9F8055|        |;
                       db $1D,$22,$64,$80,$9F,$80,$CE       ;9F805D|        |;
 
          CODE_9F8064:
                       JSL.L CODE_80AF7B                    ;9F8064|227BAF80|;
                       JSL.L CODE_9DDDB3                    ;9F8068|22B3DD9D|;
                       JSL.L CODE_80859A                    ;9F806C|229A8580|;
                       LDX.W #$004C                         ;9F8070|A24C00  |;
                       LDY.W #$0018                         ;9F8073|A01800  |;
                       LDA.W #$009C                         ;9F8076|A99C00  |;
                       STA.B $8F                            ;9F8079|858F    |;
                       LDA.W #$F7A5                         ;9F807B|A9A5F7  |;
                       STA.B $8D                            ;9F807E|858D    |;
                       JSL.L CODE_9C936C                    ;9F8080|226C939C|;
                       LDA.B $8F                            ;9F8084|A58F    |;
                       PHA                                  ;9F8086|48      |;
                       LDA.B $8D                            ;9F8087|A58D    |;
                       PHA                                  ;9F8089|48      |;
                       LDA.W #$009C                         ;9F808A|A99C00  |;
                       STA.B $8F                            ;9F808D|858F    |;
                       LDA.W #$F7B3                         ;9F808F|A9B3F7  |;
                       STA.B $8D                            ;9F8092|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F8094|22BEC79E|;
                       PLA                                  ;9F8098|68      |;
                       STA.B $8D                            ;9F8099|858D    |;
                       PLA                                  ;9F809B|68      |;
                       STA.B $8F                            ;9F809C|858F    |;
                       LDA.W #$0020                         ;9F809E|A92000  |;
                       STA.B $A5                            ;9F80A1|85A5    |;
                       LDA.W #$0013                         ;9F80A3|A91300  |;
                       STA.B $A9                            ;9F80A6|85A9    |;
                       LDA.L $7E35B6                        ;9F80A8|AFB6357E|;
                       STA.B $AD                            ;9F80AC|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9F80AE|229CBD9F|;
                       LDA.B $8F                            ;9F80B2|A58F    |;
                       PHA                                  ;9F80B4|48      |;
                       LDA.B $8D                            ;9F80B5|A58D    |;
                       PHA                                  ;9F80B7|48      |;
                       LDA.W #$009C                         ;9F80B8|A99C00  |;
                       STA.B $8F                            ;9F80BB|858F    |;
                       LDA.W #$F7B8                         ;9F80BD|A9B8F7  |;
                       STA.B $8D                            ;9F80C0|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F80C2|22BEC79E|;
                       PLA                                  ;9F80C6|68      |;
                       STA.B $8D                            ;9F80C7|858D    |;
                       PLA                                  ;9F80C9|68      |;
                       STA.B $8F                            ;9F80CA|858F    |;
                       LDA.W $1C9A                          ;9F80CC|AD9A1C  |;
                       STA.B $A9                            ;9F80CF|85A9    |;
                       JSL.L CODE_9FBE08                    ;9F80D1|2208BE9F|;
                       LDA.B $8F                            ;9F80D5|A58F    |;
                       PHA                                  ;9F80D7|48      |;
                       LDA.B $8D                            ;9F80D8|A58D    |;
                       PHA                                  ;9F80DA|48      |;
                       LDA.W #$009C                         ;9F80DB|A99C00  |;
                       STA.B $8F                            ;9F80DE|858F    |;
                       LDA.W #$F7BD                         ;9F80E0|A9BDF7  |;
                       STA.B $8D                            ;9F80E3|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F80E5|22BEC79E|;
                       PLA                                  ;9F80E9|68      |;
                       STA.B $8D                            ;9F80EA|858D    |;
                       PLA                                  ;9F80EC|68      |;
                       STA.B $8F                            ;9F80ED|858F    |;
                       LDA.W $1C98                          ;9F80EF|AD981C  |;
                       STA.B $A9                            ;9F80F2|85A9    |;
                       JSL.L CODE_9FBE08                    ;9F80F4|2208BE9F|;
                       LDA.W #$000A                         ;9F80F8|A90A00  |;
                       STA.W $0D0F                          ;9F80FB|8D0F0D  |;
                       LDX.W #$0000                         ;9F80FE|A20000  |;
                       JSL.L CODE_9F813E                    ;9F8101|223E819F|;
                       LDA.W #$000E                         ;9F8105|A90E00  |;
                       STA.W $0D0F                          ;9F8108|8D0F0D  |;
                       LDX.W #$0001                         ;9F810B|A20100  |;
                       JSL.L CODE_9F813E                    ;9F810E|223E819F|;
                       LDA.W #$0012                         ;9F8112|A91200  |;
                       STA.W $0D0F                          ;9F8115|8D0F0D  |;
                       LDX.W #$0002                         ;9F8118|A20200  |;
                       JSL.L CODE_9F813E                    ;9F811B|223E819F|;
                       LDA.W #$0016                         ;9F811F|A91600  |;
                       STA.W $0D0F                          ;9F8122|8D0F0D  |;
                       LDX.W #$0003                         ;9F8125|A20300  |;
                       JSL.L CODE_9F813E                    ;9F8128|223E819F|;
                       LDA.W #$001A                         ;9F812C|A91A00  |;
                       STA.W $0D0F                          ;9F812F|8D0F0D  |;
                       LDX.W #$0004                         ;9F8132|A20400  |;
                       JSL.L CODE_9F813E                    ;9F8135|223E819F|;
                       JSL.L CODE_80AFDE                    ;9F8139|22DEAF80|;
                       RTL                                  ;9F813D|6B      |;
 
          CODE_9F813E:
                       LDA.W $0D0F                          ;9F813E|AD0F0D  |;
                       STA.B $B5                            ;9F8141|85B5    |;
                       LDA.W #$2400                         ;9F8143|A90024  |;
                       STA.W $0D0D                          ;9F8146|8D0D0D  |;
                       LDA.W #$000C                         ;9F8149|A90C00  |;
                       STA.W $0D11                          ;9F814C|8D110D  |;
                       INC.W $0D0F                          ;9F814F|EE0F0D  |;
                       CPX.W #$0004                         ;9F8152|E00400  |;
                       BNE CODE_9F8179                      ;9F8155|D022    |;
                       DEC.W $0D0F                          ;9F8157|CE0F0D  |;
                       LDA.B $8F                            ;9F815A|A58F    |;
                       PHA                                  ;9F815C|48      |;
                       LDA.B $8D                            ;9F815D|A58D    |;
                       PHA                                  ;9F815F|48      |;
                       LDA.W #$009C                         ;9F8160|A99C00  |;
                       STA.B $8F                            ;9F8163|858F    |;
                       LDA.W #$F7C2                         ;9F8165|A9C2F7  |;
                       STA.B $8D                            ;9F8168|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F816A|22BEC79E|;
                       PLA                                  ;9F816E|68      |;
                       STA.B $8D                            ;9F816F|858D    |;
                       PLA                                  ;9F8171|68      |;
                       STA.B $8F                            ;9F8172|858F    |;
                       INC.W $0D11                          ;9F8174|EE110D  |;
                       BRA CODE_9F8197                      ;9F8177|801E    |;
 
          CODE_9F8179:
                       CPX.W $1EAD                          ;9F8179|ECAD1E  |;
                       BEQ CODE_9F8183                      ;9F817C|F005    |;
                       BMI CODE_9F8183                      ;9F817E|3003    |;
                       JMP.W CODE_9F8281                    ;9F8180|4C8182  |;
 
          CODE_9F8183:
                       LDA.W #$0080                         ;9F8183|A98000  |;
                       STA.B $8F                            ;9F8186|858F    |;
                       LDA.W #$D6E1                         ;9F8188|A9E1D6  |;
                       STA.B $8D                            ;9F818B|858D    |;
                       STX.B $A5                            ;9F818D|86A5    |;
                       JSL.L CODE_9ED323                    ;9F818F|2223D39E|;
                       JSL.L CODE_9EC7BE                    ;9F8193|22BEC79E|;
 
          CODE_9F8197:
                       TXA                                  ;9F8197|8A      |;
                       ASL A                                ;9F8198|0A      |;
                       ASL A                                ;9F8199|0A      |;
                       TAX                                  ;9F819A|AA      |;
                       LDA.W #$2000                         ;9F819B|A90020  |;
                       STA.W $0D0D                          ;9F819E|8D0D0D  |;
                       LDA.W $1DB9                          ;9F81A1|ADB91D  |;
                       BEQ CODE_9F8219                      ;9F81A4|F073    |;
                       db $A5,$B5,$8D,$0F,$0D,$A9,$0F,$00   ;9F81A6|        |;
                       db $8D,$11,$0D,$BD,$6C,$17,$85,$A5   ;9F81AE|        |;
                       db $A9,$03,$00,$85,$A9,$22,$23,$C6   ;9F81B6|        |;
                       db $9F,$22,$BE,$C7,$9E,$A5,$B5,$8D   ;9F81BE|        |;
                       db $0F,$0D,$A9,$14,$00,$8D,$11,$0D   ;9F81C6|        |;
                       db $BD,$6A,$17,$85,$A5,$A9,$03,$00   ;9F81CE|        |;
                       db $85,$A9,$22,$23,$C6,$9F,$22,$BE   ;9F81D6|        |;
                       db $C7,$9E,$EE,$11,$0D,$A9,$00,$24   ;9F81DE|        |;
                       db $8D,$0D,$0D,$A2,$68,$00,$A0,$40   ;9F81E6|        |;
                       db $00,$A9,$9C,$00,$85,$8F,$A9,$C9   ;9F81EE|        |;
                       db $F7,$85,$8D,$22,$6C,$93,$9C,$A5   ;9F81F6|        |;
                       db $8F,$48,$A5,$8D,$48,$A9,$9C,$00   ;9F81FE|        |;
                       db $85,$8F,$A9,$D0,$F7,$85,$8D,$22   ;9F8206|        |;
                       db $BE,$C7,$9E,$68,$85,$8D,$68,$85   ;9F820E|        |;
                       db $8F,$80,$68                       ;9F8216|        |;
 
          CODE_9F8219:
                       LDA.B $B5                            ;9F8219|A5B5    |;
                       STA.W $0D0F                          ;9F821B|8D0F0D  |;
                       LDA.W #$000F                         ;9F821E|A90F00  |;
                       STA.W $0D11                          ;9F8221|8D110D  |;
                       LDA.W $1780,X                        ;9F8224|BD8017  |;
                       STA.B $A5                            ;9F8227|85A5    |;
                       LDA.W #$0003                         ;9F8229|A90300  |;
                       STA.B $A9                            ;9F822C|85A9    |;
                       JSL.L CODE_9FC623                    ;9F822E|2223C69F|;
                       JSL.L CODE_9EC7BE                    ;9F8232|22BEC79E|;
                       LDA.B $B5                            ;9F8236|A5B5    |;
                       STA.W $0D0F                          ;9F8238|8D0F0D  |;
                       LDA.W #$0014                         ;9F823B|A91400  |;
                       STA.W $0D11                          ;9F823E|8D110D  |;
                       LDA.W PerStat_GoalsPerPeriod,X       ;9F8241|BD7E17  |;
                       STA.B $A5                            ;9F8244|85A5    |;
                       LDA.W #$0003                         ;9F8246|A90300  |;
                       STA.B $A9                            ;9F8249|85A9    |;
                       JSL.L CODE_9FC623                    ;9F824B|2223C69F|;
                       JSL.L CODE_9EC7BE                    ;9F824F|22BEC79E|;
                       LDX.W #$0068                         ;9F8253|A26800  |;
                       LDY.W #$0040                         ;9F8256|A04000  |;
                       LDA.W #$009C                         ;9F8259|A99C00  |;
                       STA.B $8F                            ;9F825C|858F    |;
                       LDA.W #$F7DE                         ;9F825E|A9DEF7  |;
                       STA.B $8D                            ;9F8261|858D    |;
                       JSL.L CODE_9C936C                    ;9F8263|226C939C|;
                       LDA.B $8F                            ;9F8267|A58F    |;
                       PHA                                  ;9F8269|48      |;
                       LDA.B $8D                            ;9F826A|A58D    |;
                       PHA                                  ;9F826C|48      |;
                       LDA.W #$009C                         ;9F826D|A99C00  |;
                       STA.B $8F                            ;9F8270|858F    |;
                       LDA.W #$F7E5                         ;9F8272|A9E5F7  |;
                       STA.B $8D                            ;9F8275|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F8277|22BEC79E|;
                       PLA                                  ;9F827B|68      |;
                       STA.B $8D                            ;9F827C|858D    |;
                       PLA                                  ;9F827E|68      |;
                       STA.B $8F                            ;9F827F|858F    |;
 
          CODE_9F8281:
                       RTL                                  ;9F8281|6B      |;
 
          CODE_9F8282:
                       RTL                                  ;9F8282|6B      |;
 
          CODE_9F8283:
                       REP #$30                             ;9F8283|C230    |;
                       JSL.L CODE_9B8358                    ;9F8285|2258839B|;
                       JSL.L Intro_EA                       ;9F8289|2236F49F|;
                       JSL.L CODE_8086A9                    ;9F828D|22A98680|;
                       LDA.W #$0000                         ;9F8291|A90000  |;
                       TAX                                  ;9F8294|AA      |;
 
          CODE_9F8295:
                       STA.L $7F0000,X                      ;9F8295|9F00007F|;
                       DEX                                  ;9F8299|CA      |;
                       DEX                                  ;9F829A|CA      |;
                       BNE CODE_9F8295                      ;9F829B|D0F8    |;
                       LDA.W #$005C                         ;9F829D|A95C00  |;
                       STA.W $1D59                          ;9F82A0|8D591D  |;
                       JSL.L CODE_9B8000                    ;9F82A3|2200809B|;
                       JSL.L CODE_9BCDE2                    ;9F82A7|22E2CD9B|;
                       JSL.L CODE_9D9C97                    ;9F82AB|22979C9D|;
                       JSL.L CODE_9B8526                    ;9F82AF|2226859B|;
                       LDA.W #$0000                         ;9F82B3|A90000  |;
                       STA.W $0AD3                          ;9F82B6|8DD30A  |;
                       JSL.L CODE_9B8526                    ;9F82B9|2226859B|;
                       STZ.W $1D68                          ;9F82BD|9C681D  |;
                       JSL.L Intro_Fly_Pck                  ;9F82C0|2218B19D|;
                       JSL.L CODE_9C9786                    ;9F82C4|2286979C|;
 
          CODE_9F82C8:
                       LDA.W $0AD3                          ;9F82C8|ADD30A  |;
                       BNE CODE_9F82C8                      ;9F82CB|D0FB    |;
                       LDA.W $07F3                          ;9F82CD|ADF307  |;
                       BNE CODE_9F82C8                      ;9F82D0|D0F6    |;
 
          CODE_9F82D2:
                       LDA.W #$0000                         ;9F82D2|A90000  |;
                       STA.L $7E35D4                        ;9F82D5|8FD4357E|;
                       REP #$30                             ;9F82D9|C230    |;
                       LDA.W #$1FFF                         ;9F82DB|A9FF1F  |;
                       TCS                                  ;9F82DE|1B      |;
                       PHK                                  ;9F82DF|4B      |;
                       PLB                                  ;9F82E0|AB      |;
                       JSL.L CODE_9C978E                    ;9F82E1|228E979C|;
                       LDA.W $07F3                          ;9F82E5|ADF307  |;
                       BEQ CODE_9F82FB                      ;9F82E8|F011    |;
                       LDA.W $07ED                          ;9F82EA|ADED07  |;
                       CMP.W #$C20C                         ;9F82ED|C90CC2  |;
                       BEQ CODE_9F8309                      ;9F82F0|F017    |;
                       db $22,$86,$97,$9C,$AD,$F3,$07,$D0   ;9F82F2|        |;
                       db $FB                               ;9F82FA|        |;
 
          CODE_9F82FB:
                       LDA.W #$0090                         ;9F82FB|A99000  |;
                       STA.B $0E                            ;9F82FE|850E    |;
                       LDA.W #$C20C                         ;9F8300|A90CC2  |;
                       STA.B $0C                            ;9F8303|850C    |;
                       JSL.L CODE_80A2E0                    ;9F8305|22E0A280|;
 
          CODE_9F8309:
                       STZ.W $15DA                          ;9F8309|9CDA15  |;
                       LDA.W #$005C                         ;9F830C|A95C00  |;
                       STA.W $1D59                          ;9F830F|8D591D  |;
                       JSL.L CODE_9B8000                    ;9F8312|2200809B|;
                       JSL.L CODE_9DA5CA                    ;9F8316|22CAA59D|;
                       STZ.W $1D81                          ;9F831A|9C811D  |;
                       LDA.L $7E34BC                        ;9F831D|AFBC347E|;
                       CMP.W #$0004                         ;9F8321|C90400  |;
                       BNE CODE_9F8330                      ;9F8324|D00A    |;
                       JSL.L CODE_80C81C                    ;9F8326|221CC880|;
                       STZ.W $07C6                          ;9F832A|9CC607  |;
                       JMP.W CODE_9F82D2                    ;9F832D|4CD282  |;
 
          CODE_9F8330:
                       JSL.L CODE_9D8BBF                    ;9F8330|22BF8B9D|;
                       JSL.L CODE_9FE0E8                    ;9F8334|22E8E09F|;
                       JSL.L CODE_9D8129                    ;9F8338|2229819D|;
 
          CODE_9F833C:
                       LDA.W #$FFFF                         ;9F833C|A9FFFF  |;
                       STA.W $07C6                          ;9F833F|8DC607  |;
                       JSL.L CODE_9F96F7                    ;9F8342|22F7969F|;
                       LDX.W #$0AD7                         ;9F8346|A2D70A  |;
                       LDA.W #$0000                         ;9F8349|A90000  |;
 
          CODE_9F834C:
                       STA.B $00,X                          ;9F834C|9500    |;
                       INX                                  ;9F834E|E8      |;
                       CPX.W #$1A11                         ;9F834F|E0111A  |;
                       BNE CODE_9F834C                      ;9F8352|D0F8    |;
                       LDX.W #$30F4                         ;9F8354|A2F430  |;
 
          CODE_9F8357:
                       STA.L $7E0000,X                      ;9F8357|9F00007E|;
                       INX                                  ;9F835B|E8      |;
                       CPX.W #$3479                         ;9F835C|E07934  |;
                       BNE CODE_9F8357                      ;9F835F|D0F6    |;
                       LDA.L $7E347A                        ;9F8361|AF7A347E|;
                       INC A                                ;9F8365|1A      |;
                       STA.L $7E347A                        ;9F8366|8F7A347E|;
                       STZ.W $15D4                          ;9F836A|9CD415  |;
                       LDA.L PenaltiesOnOff                 ;9F836D|AFC4347E|;
                       CMP.W #$0001                         ;9F8371|C90100  |;
                       BNE CODE_9F837C                      ;9F8374|D006    |; Penalties Off or Offsieds On Branch to 837C
                       db $A9,$20,$00,$0C,$D4,$15           ;9F8376|        |;
 
          CODE_9F837C:
                       JSR.W Enable_DefControl              ;9F837C|2024FB  |; hijack to call our def control code
                       NOP                                  ;9F837F|EA      |;
                       JSL.L CODE_9FC702                    ;9F8380|2202C79F|;
                       JSL.L CODE_9FC833                    ;9F8384|2233C89F|;
                       LDA.W #$007E                         ;9F8388|A97E00  |;
                       STA.W $0D21                          ;9F838B|8D210D  |;
                       LDA.W #$577E                         ;9F838E|A97E57  |;
                       STA.W $0D1F                          ;9F8391|8D1F0D  |;
                       LDA.W #$0010                         ;9F8394|A91000  |;
                       TRB.W $15D8                          ;9F8397|1CD815  |;
                       LDA.B zpCurntTeamLoopVal             ;9F839A|A591    |;
                       PHA                                  ;9F839C|48      |;
                       LDA.W #$0000                         ;9F839D|A90000  |;
                       STA.B zpCurntTeamLoopVal             ;9F83A0|8591    |;
                       JSL.L CODE_9B9334                    ;9F83A2|2234939B|;
                       LDA.W #$0002                         ;9F83A6|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9F83A9|8591    |;
                       JSL.L CODE_9B9334                    ;9F83AB|2234939B|;
                       PLA                                  ;9F83AF|68      |;
                       STA.B zpCurntTeamLoopVal             ;9F83B0|8591    |;
                       LDA.L $7E34C8                        ;9F83B2|AFC8347E|;
                       STA.W $1C90                          ;9F83B6|8D901C  |;
                       STA.W $1C92                          ;9F83B9|8D921C  |;
                       LDA.W #$0001                         ;9F83BC|A90100  |;
                       STA.W $17E2                          ;9F83BF|8DE217  |;
                       STA.W $17E4                          ;9F83C2|8DE417  |;
                       STZ.W $1E9B                          ;9F83C5|9C9B1E  |;
                       STZ.W $1E9D                          ;9F83C8|9C9D1E  |;
                       STZ.W $1EAD                          ;9F83CB|9CAD1E  |;
                       LDA.W #$0001                         ;9F83CE|A90100  |;
                       STA.L $7E344E                        ;9F83D1|8F4E347E|;
                       STZ.W $19D0                          ;9F83D5|9CD019  |;
                       STZ.W $19D2                          ;9F83D8|9CD219  |;
                       LDX.W #$0008                         ;9F83DB|A20800  |;
 
          CODE_9F83DE:
                       LDA.W $1C84,X                        ;9F83DE|BD841C  |;
                       CMP.W #$0001                         ;9F83E1|C90100  |;
                       BNE CODE_9F83EB                      ;9F83E4|D005    |;
                       INC.W $19D0                          ;9F83E6|EED019  |;
                       BRA CODE_9F83F3                      ;9F83E9|8008    |;
 
          CODE_9F83EB:
                       CMP.W #$0002                         ;9F83EB|C90200  |;
                       BNE CODE_9F83F3                      ;9F83EE|D003    |;
                       INC.W $19D2                          ;9F83F0|EED219  |;
 
          CODE_9F83F3:
                       DEX                                  ;9F83F3|CA      |;
                       DEX                                  ;9F83F4|CA      |;
                       BPL CODE_9F83DE                      ;9F83F5|10E7    |;
                       JSL.L CODE_9FB69E                    ;9F83F7|229EB69F|;
                       STZ.W $1EBB                          ;9F83FB|9CBB1E  |;
                       LDX.W #$0000                         ;9F83FE|A20000  |;
 
          CODE_9F8401:
                       LDA.W $1C84,X                        ;9F8401|BD841C  |;
                       DEC A                                ;9F8404|3A      |;
                       ASL A                                ;9F8405|0A      |;
                       STA.W $19F6,X                        ;9F8406|9DF619  |;
                       INX                                  ;9F8409|E8      |;
                       INX                                  ;9F840A|E8      |;
                       CPX.W #$000A                         ;9F840B|E00A00  |;
                       BCC CODE_9F8401                      ;9F840E|90F1    |;
                       LDX.W #$0000                         ;9F8410|A20000  |;
                       LDA.W $1C84,X                        ;9F8413|BD841C  |;
                       BNE CODE_9F8421                      ;9F8416|D009    |;
                       db $E8,$E8,$E0,$0A,$00,$90,$F4,$80   ;9F8418|        |;
                       db $06                               ;9F8420|        |;
 
          CODE_9F8421:
                       LDA.W #$0001                         ;9F8421|A90100  |;
                       STA.W $1EBB                          ;9F8424|8DBB1E  |;
                       LDA.W #$FFFF                         ;9F8427|A9FFFF  |;
                       STA.W $1E8D                          ;9F842A|8D8D1E  |;
                       LDA.W $1D81                          ;9F842D|AD811D  |;
                       BEQ CODE_9F8433                      ;9F8430|F001    |;
                       RTL                                  ;9F8432|6B      |;
 
          CODE_9F8433:
                       LDA.W $1D81                          ;9F8433|AD811D  |;
                       BNE CODE_9F843C                      ;9F8436|D004    |;
                       LDA.W #$1FFF                         ;9F8438|A9FF1F  |;
                       TCS                                  ;9F843B|1B      |;
 
          CODE_9F843C:
                       STZ.B zpCurntTeamLoopVal             ;9F843C|6491    |;
                       JSL.L CODE_9FDD9D                    ;9F843E|229DDD9F|;
                       LDA.W #$0002                         ;9F8442|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9F8445|8591    |;
                       JSL.L CODE_9FDD9D                    ;9F8447|229DDD9F|;
                       STZ.W $0CC7                          ;9F844B|9CC70C  |;
                       JSL.L CODE_8086A9                    ;9F844E|22A98680|;
                       JSL.L CODE_9FB8B4                    ;9F8452|22B4B89F|;
                       JSL.L CODE_9FC683                    ;9F8456|2283C69F|;
                       JSL.L CODE_9B9B6B                    ;9F845A|226B9B9B|;
                       LDA.W $1EBB                          ;9F845E|ADBB1E  |;
                       BEQ CODE_9F8497                      ;9F8461|F034    |;
                       LDA.W #$FFFF                         ;9F8463|A9FFFF  |;
                       STA.W $0AC6                          ;9F8466|8DC60A  |;
                       LDY.W #$FFFE                         ;9F8469|A0FEFF  |;
 
          CODE_9F846C:
                       INY                                  ;9F846C|C8      |;
                       INY                                  ;9F846D|C8      |;
                       CPY.W #$000A                         ;9F846E|C00A00  |;
                       BCS CODE_9F847F                      ;9F8471|B00C    |;
                       LDA.W $1C84,Y                        ;9F8473|B9841C  |;
                       BEQ CODE_9F846C                      ;9F8476|F0F4    |;
                       EOR.W #$FFFF                         ;9F8478|49FFFF  |;
                       INC A                                ;9F847B|1A      |;
                       STA.W $0AC6                          ;9F847C|8DC60A  |;
 
          CODE_9F847F:
                       LDA.W $1C84                          ;9F847F|AD841C  |;
                       ORA.W $1C86                          ;9F8482|0D861C  |;
                       ORA.W $1C88                          ;9F8485|0D881C  |;
                       ORA.W $1C8A                          ;9F8488|0D8A1C  |;
                       ORA.W $1C8C                          ;9F848B|0D8C1C  |;
                       BNE CODE_9F8493                      ;9F848E|D003    |;
                       db $9C,$C6,$0A                       ;9F8490|        |;
 
          CODE_9F8493:
                       JSL.L CODE_9F9365                    ;9F8493|2265939F|;
 
          CODE_9F8497:
                       LDX.W #$001C                         ;9F8497|A21C00  |;
                       STX.B $95                            ;9F849A|8695    |;
                       LDA.W #$0000                         ;9F849C|A90000  |;
                       STA.L $7E3136                        ;9F849F|8F36317E|;
                       STA.L $7E3138                        ;9F84A3|8F38317E|;
                       LDA.W #$001B                         ;9F84A7|A91B00  |;
                       STA.B $A5                            ;9F84AA|85A5    |;
                       JSL.L CODE_9E8C18                    ;9F84AC|22188C9E|;
                       JSL.L CODE_9DD977                    ;9F84B0|2277D99D|;
                       LDA.W #$0400                         ;9F84B4|A90004  |;
                       TSB.W $15D8                          ;9F84B7|0CD815  |;
                       LDA.W #$FFFF                         ;9F84BA|A9FFFF  |;
                       STA.W $0CAD                          ;9F84BD|8DAD0C  |;
                       STA.W $0CB3                          ;9F84C0|8DB30C  |;
                       STA.W $0CC1                          ;9F84C3|8DC10C  |;
                       LDA.L $7E34BC                        ;9F84C6|AFBC347E|;
                       CMP.W #$0004                         ;9F84CA|C90400  |;
                       BEQ CODE_9F84E3                      ;9F84CD|F014    |;
                       LDA.W #$0010                         ;9F84CF|A91000  |;
                       TRB.W $15D8                          ;9F84D2|1CD815  |;
                       LDA.W #$007E                         ;9F84D5|A97E00  |;
                       STA.W $0D21                          ;9F84D8|8D210D  |;
                       LDA.W #$577E                         ;9F84DB|A97E57  |;
                       STA.W $0D1F                          ;9F84DE|8D1F0D  |;
                       BRA CODE_9F84EB                      ;9F84E1|8008    |;
 
          CODE_9F84E3:
                       LDA.W $1EBB                          ;9F84E3|ADBB1E  |;
                       BNE CODE_9F84EB                      ;9F84E6|D003    |;
                       STZ.W $0CC1                          ;9F84E8|9CC10C  |;
 
          CODE_9F84EB:
                       LDA.W #$FFFF                         ;9F84EB|A9FFFF  |;
                       STA.W $0CD5                          ;9F84EE|8DD50C  |;
                       STZ.W $0CD7                          ;9F84F1|9CD70C  |;
                       STZ.B $83                            ;9F84F4|6483    |;
                       STZ.B $85                            ;9F84F6|6485    |;
                       STZ.W $0D35                          ;9F84F8|9C350D  |;
                       STZ.W $0D01                          ;9F84FB|9C010D  |;
                       LDX.W #$0000                         ;9F84FE|A20000  |;
                       LDY.W #$01C0                         ;9F8501|A0C001  |;
                       LDA.W #$6000                         ;9F8504|A90060  |;
                       JSL.L CODE_80AEE1                    ;9F8507|22E1AE80|;
                       LDA.W $1D81                          ;9F850B|AD811D  |;
                       BEQ CODE_9F8511                      ;9F850E|F001    |;
                       RTL                                  ;9F8510|6B      |;
 
          CODE_9F8511:
                       LDA.B $83                            ;9F8511|A583    |;
                       SEC                                  ;9F8513|38      |;
                       SBC.W $0D01                          ;9F8514|ED010D  |;
                       BEQ CODE_9F8511                      ;9F8517|F0F8    |;
                       INC.W $1D6D                          ;9F8519|EE6D1D  |;
                       LDA.W #$003C                         ;9F851C|A93C00  |;
                       LDX.W $1D6D                          ;9F851F|AE6D1D  |;
                       JSL.L CODE_808F98                    ;9F8522|22988F80|;
                       LDA.W $0764                          ;9F8526|AD6407  |;
                       STA.B $04                            ;9F8529|8504    |;
                       JSL.L CODE_80923F                    ;9F852B|223F9280|;
                       LDA.B $00                            ;9F852F|A500    |;
                       STA.W $0A98                          ;9F8531|8D980A  |;
                       LDA.W period                         ;9F8534|AD3016  |;
                       CMP.W #$0002                         ;9F8537|C90200  |;
                       BNE CODE_9F8551                      ;9F853A|D015    |;
                       LDA.W $07F3                          ;9F853C|ADF307  |;
                       BNE CODE_9F8551                      ;9F853F|D010    |;
                       JSL.L CODE_808658                    ;9F8541|22588680|;
                       AND.W #$0FFF                         ;9F8545|29FF0F  |;
                       BNE CODE_9F8551                      ;9F8548|D007    |;
                       db $A9,$05,$00,$22,$5F,$9B,$9C       ;9F854A|        |;
 
          CODE_9F8551:
                       JSL.L CODE_808658                    ;9F8551|22588680|;
                       LDA.B $83                            ;9F8555|A583    |;
                       TAX                                  ;9F8557|AA      |;
                       SEC                                  ;9F8558|38      |;
                       SBC.W $0D01                          ;9F8559|ED010D  |;
                       STA.B $C1                            ;9F855C|85C1    |;
                       STA.W $0ADB                          ;9F855E|8DDB0A  |;
                       ASL A                                ;9F8561|0A      |;
                       STA.W $0CDD                          ;9F8562|8DDD0C  |;
                       ASL A                                ;9F8565|0A      |;
                       ASL A                                ;9F8566|0A      |;
                       ASL A                                ;9F8567|0A      |;
                       STA.W $0CDF                          ;9F8568|8DDF0C  |;
                       ASL A                                ;9F856B|0A      |;
                       STA.W $0CE1                          ;9F856C|8DE10C  |;
                       ASL A                                ;9F856F|0A      |;
                       ADC.W $0CE1                          ;9F8570|6DE10C  |;
                       STA.W $0CE1                          ;9F8573|8DE10C  |;
                       STX.W $0D35                          ;9F8576|8E350D  |;
                       STX.W $0D01                          ;9F8579|8E010D  |;
                       JSL.L CODE_9B8017                    ;9F857C|2217809B|;
                       LDA.W $15D8                          ;9F8580|ADD815  |;
                       BIT.W #$0001                         ;9F8583|890100  |;
                       BNE CODE_9F85D3                      ;9F8586|D04B    |;
                       LDA.W $15D6                          ;9F8588|ADD615  |;
                       BNE CODE_9F85D3                      ;9F858B|D046    |;
                       LDA.W $1D81                          ;9F858D|AD811D  |;
                       BNE CODE_9F85AA                      ;9F8590|D018    |;
                       LDA.W $163A                          ;9F8592|AD3A16  |;
                       BEQ CODE_9F85AA                      ;9F8595|F013    |;
                       db $A6,$C1,$AD,$9F,$1E,$38,$E5,$C1   ;9F8597|        |;
                       db $8D,$9F,$1E,$D0,$04,$22,$91,$C7   ;9F859F|        |;
                       db $9E,$80,$29                       ;9F85A7|        |;
 
          CODE_9F85AA:
                       LDX.B $C1                            ;9F85AA|A6C1    |;
 
          CODE_9F85AC:
                       LDA.W clock_remaining_time           ;9F85AC|AD3216  |;
                       BEQ CODE_9F85D0                      ;9F85AF|F01F    |;
                       LDA.W $1634                          ;9F85B1|AD3416  |;
                       SEC                                  ;9F85B4|38      |;
Real_Time_Clock_Speed:
                       SBC.W #$0AAA                         ;9F85B5|E9AA0A  |; 0444 makes this real time
                       STA.W $1634                          ;9F85B8|8D3416  |;
                       BCS CODE_9F85D0                      ;9F85BB|B013    |;
                       DEC.W clock_remaining_time           ;9F85BD|CE3216  |; Decrease Period Timer by 1 second
                       LDA.W $19BE                          ;9F85C0|ADBE19  |;
                       CLC                                  ;9F85C3|18      |;
                       ADC.W #$FFFD                         ;9F85C4|69FDFF  |;
                       BMI CODE_9F85CC                      ;9F85C7|3003    |;
                       STA.W $19BE                          ;9F85C9|8DBE19  |;
 
          CODE_9F85CC:
                       JSL.L CODE_9B9BF8                    ;9F85CC|22F89B9B|;
 
          CODE_9F85D0:
                       DEX                                  ;9F85D0|CA      |;
                       BNE CODE_9F85AC                      ;9F85D1|D0D9    |;
 
          CODE_9F85D3:
                       LDA.W $0CE7                          ;9F85D3|ADE70C  |;
                       BEQ CODE_9F85F0                      ;9F85D6|F018    |;
                       LDA.B $83                            ;9F85D8|A583    |;
                       SEC                                  ;9F85DA|38      |;
                       SBC.W $0CE9                          ;9F85DB|EDE90C  |;
                       CMP.W #$0096                         ;9F85DE|C99600  |;
                       BCC CODE_9F85F0                      ;9F85E1|900D    |;
                       DEC.W $0CE7                          ;9F85E3|CEE70C  |;
                       LDA.W $0CE9                          ;9F85E6|ADE90C  |;
                       CLC                                  ;9F85E9|18      |;
                       ADC.W #$0096                         ;9F85EA|699600  |;
                       STA.W $0CE9                          ;9F85ED|8DE90C  |;
 
          CODE_9F85F0:
                       JSL.L CODE_9F8625                    ;9F85F0|2225869F|;
                       JSL.L CODE_9F967B                    ;9F85F4|227B969F|;
                       LDA.W $15D8                          ;9F85F8|ADD815  |;
                       BIT.W #$0001                         ;9F85FB|890100  |;
                       BNE CODE_9F8613                      ;9F85FE|D013    |;
                       LDA.W $1A0E                          ;9F8600|AD0E1A  |;
                       BEQ CODE_9F8617                      ;9F8603|F012    |;
                       db $AD,$D4,$15,$89,$10,$00,$D0,$0A   ;9F8605|        |;
                       db $A9,$01,$00,$0C,$D8,$15           ;9F860D|        |;
 
          CODE_9F8613:
                       JSL.L CODE_9F937B                    ;9F8613|227B939F|;
 
          CODE_9F8617:
                       LDA.W $1D81                          ;9F8617|AD811D  |;
                       BEQ CODE_9F8622                      ;9F861A|F006    |;
                       LDA.W $1D87                          ;9F861C|AD871D  |;
                       BEQ CODE_9F8622                      ;9F861F|F001    |;
                       RTL                                  ;9F8621|6B      |;
 
          CODE_9F8622:
                       JMP.W CODE_9F8511                    ;9F8622|4C1185  |;
 
          CODE_9F8625:
                       JSL.L CODE_80AF7B                    ;9F8625|227BAF80|;
                       JSL.L CODE_9C9FED                    ;9F8629|22ED9F9C|;
                       JSL.L CODE_9F8646                    ;9F862D|2246869F|;
                       JSL.L CODE_9F8686                    ;9F8631|2286869F|;
                       JSL.L CODE_9FC090                    ;9F8635|2290C09F|;
                       JSL.L CODE_9BA8DB                    ;9F8639|22DBA89B|;
                       JSL.L CODE_9FBAAA                    ;9F863D|22AABA9F|;
                       JSL.L CODE_80AFDE                    ;9F8641|22DEAF80|;
                       RTL                                  ;9F8645|6B      |;
 
          CODE_9F8646:
                       JSL.L CODE_9EB188                    ;9F8646|2288B19E|;
                       JSL.L CODE_9B9F7A                    ;9F864A|227A9F9B|;
                       JSL.L CODE_9C9930                    ;9F864E|2230999C|;
                       JSL.L CODE_9FA626                    ;9F8652|2226A69F|;
                       LDA.W PauseScreenActive              ;9F8656|ADDA15  |;
                       BNE CODE_9F8685                      ;9F8659|D02A    |;
                       LDA.W $0CF7                          ;9F865B|ADF70C  |;
                       SEC                                  ;9F865E|38      |;
                       SBC.B $C1                            ;9F865F|E5C1    |;
                       STA.W $0CF7                          ;9F8661|8DF70C  |;
                       BPL CODE_9F8685                      ;9F8664|101F    |;
                       CLC                                  ;9F8666|18      |;
Real_Time_Pen_Clock_2:
                       ADC.W #$0018                         ;9F8667|691800  |; 003C makes this real time
                       STA.W $0CF7                          ;9F866A|8DF70C  |;
                       JSL.L CODE_9ED0A8                    ;9F866D|22A8D09E|;
                       JSL.L CODE_80D322                    ;9F8671|2222D380|;
                       JSL.L CODE_80D323                    ;9F8675|2223D380|;
                       JSL.L CODE_9FDDCD                    ;9F8679|22CDDD9F|;
                       JSL.L CODE_9EC2C7                    ;9F867D|22C7C29E|;
                       JSL.L CODE_9EB735                    ;9F8681|2235B79E|;
 
          CODE_9F8685:
                       RTL                                  ;9F8685|6B      |;
 
          CODE_9F8686:
                       LDA.W #$FFFF                         ;9F8686|A9FFFF  |;
                       STA.W $0B9D                          ;9F8689|8D9D0B  |;
                       STA.W $0B9F                          ;9F868C|8D9F0B  |;
                       STA.W $17AE                          ;9F868F|8DAE17  |;
                       STA.W $17B0                          ;9F8692|8DB017  |;
                       STA.W $17B2                          ;9F8695|8DB217  |;
                       STA.W $17B4                          ;9F8698|8DB417  |;
                       LDA.W PucVertVeloc                   ;9F869B|ADF90D  |;
                       STA.W $0DFF                          ;9F869E|8DFF0D  |;
                       LDX.W #$001E                         ;9F86A1|A21E00  |;
 
          CODE_9F86A4:
                       STX.B $E4                            ;9F86A4|86E4    |;
                       LDA.W $0D55,X                        ;9F86A6|BD550D  |;
                       STA.W $0E43,X                        ;9F86A9|9D430E  |;
                       LDA.W $0D77,X                        ;9F86AC|BD770D  |;
                       STA.W $0E63,X                        ;9F86AF|9D630E  |;
                       LDA.W $0DB7,X                        ;9F86B2|BDB70D  |;
                       STA.W $0E83,X                        ;9F86B5|9D830E  |;
                       LDA.W $0DD9,X                        ;9F86B8|BDD90D  |;
                       STA.W $0EA3,X                        ;9F86BB|9DA30E  |;
                       CPX.W #$0018                         ;9F86BE|E01800  |;
                       BEQ CODE_9F86C8                      ;9F86C1|F005    |;
                       CPX.W #$001A                         ;9F86C3|E01A00  |;
                       BNE CODE_9F86CB                      ;9F86C6|D003    |;
 
          CODE_9F86C8:
                       JMP.W CODE_9F875F                    ;9F86C8|4C5F87  |;
 
          CODE_9F86CB:
                       LDA.W PStructPosition,X              ;9F86CB|BD430F  |;
                       BPL CODE_9F86D3                      ;9F86CE|1003    |;
                       JMP.W CODE_9F8834                    ;9F86D0|4C3488  |;
 
          CODE_9F86D3:
                       BNE CODE_9F86E2                      ;9F86D3|D00D    |;
                       LDA.W $0DB7,X                        ;9F86D5|BDB70D  |;
                       BPL CODE_9F86DF                      ;9F86D8|1005    |;
                       STX.W $0B9F                          ;9F86DA|8E9F0B  |;
                       BRA CODE_9F86E2                      ;9F86DD|8003    |;
 
          CODE_9F86DF:
                       STX.W $0B9D                          ;9F86DF|8E9D0B  |;
 
          CODE_9F86E2:
                       JSL.L CODE_9EA419                    ;9F86E2|2219A49E|;
                       LDA.W $1203,X                        ;9F86E6|BD0312  |;
                       SEC                                  ;9F86E9|38      |;
                       SBC.W $0ADB                          ;9F86EA|EDDB0A  |;
                       BPL CODE_9F86F2                      ;9F86ED|1003    |;
                       LDA.W #$0000                         ;9F86EF|A90000  |;
 
          CODE_9F86F2:
                       STA.W $1203,X                        ;9F86F2|9D0312  |;
                       LDA.W $1223,X                        ;9F86F5|BD2312  |;
                       SEC                                  ;9F86F8|38      |;
                       SBC.W $0ADB                          ;9F86F9|EDDB0A  |;
                       BPL CODE_9F8701                      ;9F86FC|1003    |;
                       LDA.W #$0000                         ;9F86FE|A90000  |;
 
          CODE_9F8701:
                       STA.W $1223,X                        ;9F8701|9D2312  |;
                       LDA.W $15DC                          ;9F8704|ADDC15  |;
                       BIT.W #$0020                         ;9F8707|892000  |;
                       BEQ CODE_9F8727                      ;9F870A|F01B    |;
                       LDA.W $12A3,X                        ;9F870C|BDA312  |;
                       AND.W #$00FF                         ;9F870F|29FF00  |;
                       CMP.W #$0080                         ;9F8712|C98000  |;
                       BCC CODE_9F871A                      ;9F8715|9003    |;
                       ORA.W #$FF00                         ;9F8717|0900FF  |;
 
          CODE_9F871A:
                       STA.B $A5                            ;9F871A|85A5    |;
                       CMP.W #$0000                         ;9F871C|C90000  |;
                       BMI CODE_9F8727                      ;9F871F|3006    |;
                       ASL.B $A5                            ;9F8721|06A5    |;
                       JSL.L CODE_9FC757                    ;9F8723|2257C79F|;
 
          CODE_9F8727:
                       LDA.W $0BEB,X                        ;9F8727|BDEB0B  |;
                       BEQ CODE_9F8738                      ;9F872A|F00C    |;
                       SEC                                  ;9F872C|38      |;
                       SBC.W $0ADB                          ;9F872D|EDDB0A  |;
                       BPL CODE_9F8735                      ;9F8730|1003    |;
                       db $A9,$00,$00                       ;9F8732|        |;
 
          CODE_9F8735:
                       STA.W $0BEB,X                        ;9F8735|9DEB0B  |;
 
          CODE_9F8738:
                       CPX.W $0D07                          ;9F8738|EC070D  |;
                       BNE CODE_9F8742                      ;9F873B|D005    |;
                       LDA.W OneTimerFlg                    ;9F873D|AD891E  |;
                       BNE CODE_9F8796                      ;9F8740|D054    |;
 
          CODE_9F8742:
                       LDA.W $11A3,X                        ;9F8742|BDA311  |;
                       CMP.W #$F90E                         ;9F8745|C90EF9  |;
                       BNE CODE_9F874D                      ;9F8748|D003    |;
                       db $4C,$34,$88                       ;9F874A|        |;
 
          CODE_9F874D:
                       CMP.W #$FC76                         ;9F874D|C976FC  |;
                       BCC CODE_9F8755                      ;9F8750|9003    |;
                       JMP.W CODE_9F8834                    ;9F8752|4C3488  |;
 
          CODE_9F8755:
                       CPX.W #$001C                         ;9F8755|E01C00  |;
                       BNE CODE_9F875F                      ;9F8758|D005    |;
                       LDA.W PucVertVeloc                   ;9F875A|ADF90D  |;
                       BNE CODE_9F8796                      ;9F875D|D037    |;
 
          CODE_9F875F:
                       TXY                                  ;9F875F|9B      |;
                       LDX.W $0ADB                          ;9F8760|AEDB0A  |;
                       LDA.L CODE_9F8B64,X                  ;9F8763|BF648B9F|;
                       AND.W #$00FF                         ;9F8767|29FF00  |;
                       STA.B $AD                            ;9F876A|85AD    |;
                       LDA.W $1283,Y                        ;9F876C|B98312  |;
                       BIT.W #$0001                         ;9F876F|890100  |;
                       BEQ CODE_9F877D                      ;9F8772|F009    |;
                       LDA.L UNREACH_9F8B6E,X               ;9F8774|BF6E8B9F|;
                       AND.W #$00FF                         ;9F8778|29FF00  |;
                       STA.B $AD                            ;9F877B|85AD    |;
 
          CODE_9F877D:
                       LDX.W $0EC3,Y                        ;9F877D|BEC30E  |;
                       LDA.B $AD                            ;9F8780|A5AD    |;
                       JSL.L CODE_809032                    ;9F8782|22329080|;
                       STA.W $0EC3,Y                        ;9F8786|99C30E  |;
                       LDX.W $0EE3,Y                        ;9F8789|BEE30E  |;
                       LDA.B $AD                            ;9F878C|A5AD    |;
                       JSL.L CODE_809032                    ;9F878E|22329080|;
                       STA.W $0EE3,Y                        ;9F8792|99E30E  |;
                       TYX                                  ;9F8795|BB      |;
 
          CODE_9F8796:
                       LDA.W $0CDF                          ;9F8796|ADDF0C  |;
                       STA.B $0C                            ;9F8799|850C    |;
                       LDA.W $0EC3,X                        ;9F879B|BDC30E  |;
                       BEQ CODE_9F87BA                      ;9F879E|F01A    |;
                       TAX                                  ;9F87A0|AA      |;
                       LDA.B $0C                            ;9F87A1|A50C    |;
                       JSL.L CODE_808FC9                    ;9F87A3|22C98F80|;
                       LDX.B $E4                            ;9F87A7|A6E4    |;
                       LDA.B $08                            ;9F87A9|A508    |;
                       CLC                                  ;9F87AB|18      |;
                       ADC.W $0D77,X                        ;9F87AC|7D770D  |;
                       STA.W $0D77,X                        ;9F87AF|9D770D  |;
                       LDA.B $0A                            ;9F87B2|A50A    |;
                       ADC.W $0D55,X                        ;9F87B4|7D550D  |;
                       STA.W $0D55,X                        ;9F87B7|9D550D  |;
 
          CODE_9F87BA:
                       LDA.W $0EE3,X                        ;9F87BA|BDE30E  |;
                       BEQ CODE_9F87D9                      ;9F87BD|F01A    |;
                       TAX                                  ;9F87BF|AA      |;
                       LDA.B $0C                            ;9F87C0|A50C    |;
                       JSL.L CODE_808FC9                    ;9F87C2|22C98F80|;
                       LDX.B $E4                            ;9F87C6|A6E4    |;
                       LDA.B $08                            ;9F87C8|A508    |;
                       CLC                                  ;9F87CA|18      |;
                       ADC.W $0DD9,X                        ;9F87CB|7DD90D  |;
                       STA.W $0DD9,X                        ;9F87CE|9DD90D  |;
                       LDA.B $0A                            ;9F87D1|A50A    |;
                       ADC.W $0DB7,X                        ;9F87D3|7DB70D  |;
                       STA.W $0DB7,X                        ;9F87D6|9DB70D  |;
 
          CODE_9F87D9:
                       CPX.W #$001C                         ;9F87D9|E01C00  |;
                       BNE CODE_9F8834                      ;9F87DC|D056    |;
                       LDA.W PucVertVeloc                   ;9F87DE|ADF90D  |;
                       BMI CODE_9F8834                      ;9F87E1|3051    |;
                       BNE CODE_9F87EA                      ;9F87E3|D005    |;
                       LDA.W $0E01                          ;9F87E5|AD010E  |;
                       BEQ CODE_9F8834                      ;9F87E8|F04A    |;
 
          CODE_9F87EA:
                       LDA.W $0E01                          ;9F87EA|AD010E  |;
                       SEC                                  ;9F87ED|38      |;
                       SBC.W $0CE1                          ;9F87EE|EDE10C  |;
                       STA.W $0E01                          ;9F87F1|8D010E  |;
                       TAX                                  ;9F87F4|AA      |;
                       LDA.W $0CDF                          ;9F87F5|ADDF0C  |;
                       JSL.L CODE_808FC9                    ;9F87F8|22C98F80|;
                       LDX.B $E4                            ;9F87FC|A6E4    |;
                       LDA.B $08                            ;9F87FE|A508    |;
                       CLC                                  ;9F8800|18      |;
                       ADC.W $0DFD                          ;9F8801|6DFD0D  |;
                       STA.W $0DFD                          ;9F8804|8DFD0D  |;
                       LDA.B $0A                            ;9F8807|A50A    |;
                       ADC.W PucVertVeloc                   ;9F8809|6DF90D  |;
                       STA.W PucVertVeloc                   ;9F880C|8DF90D  |;
                       BPL CODE_9F8834                      ;9F880F|1023    |;
                       STZ.W PucVertVeloc                   ;9F8811|9CF90D  |;
                       STZ.W $0DFD                          ;9F8814|9CFD0D  |;
                       LDA.W $0E01                          ;9F8817|AD010E  |;
                       EOR.W #$FFFF                         ;9F881A|49FFFF  |;
                       INC A                                ;9F881D|1A      |;
                       LSR A                                ;9F881E|4A      |;
                       STA.W $0E01                          ;9F881F|8D010E  |;
                       CMP.W #$0200                         ;9F8822|C90002  |;
                       BMI CODE_9F8834                      ;9F8825|300D    |;
                       ASL A                                ;9F8827|0A      |;
                       ASL A                                ;9F8828|0A      |;
                       STA.B $0C                            ;9F8829|850C    |;
                       STZ.B $0E                            ;9F882B|640E    |;
                       LDA.W #$0007                         ;9F882D|A90700  |;
                       JSL.L CODE_9C9AD0                    ;9F8830|22D09A9C|;
 
          CODE_9F8834:
                       LDA.W $0D71                          ;9F8834|AD710D  |;
                       SEC                                  ;9F8837|38      |;
                       SBC.W $0D55,X                        ;9F8838|FD550D  |;
                       STA.B $A5                            ;9F883B|85A5    |;
                       BPL CODE_9F8843                      ;9F883D|1004    |;
                       EOR.W #$FFFF                         ;9F883F|49FFFF  |;
                       INC A                                ;9F8842|1A      |;
 
          CODE_9F8843:
                       PHA                                  ;9F8843|48      |;
                       LSR A                                ;9F8844|4A      |;
                       LSR A                                ;9F8845|4A      |;
                       TAX                                  ;9F8846|AA      |;
                       JSL.L CODE_808F4C                    ;9F8847|224C8F80|;
                       LDX.B $E4                            ;9F884B|A6E4    |;
                       STA.W $0B3D,X                        ;9F884D|9D3D0B  |;
                       LDA.W $0DD3                          ;9F8850|ADD30D  |;
                       SEC                                  ;9F8853|38      |;
                       SBC.W $0DB7,X                        ;9F8854|FDB70D  |;
                       STA.B $A9                            ;9F8857|85A9    |;
                       BPL CODE_9F885F                      ;9F8859|1004    |;
                       EOR.W #$FFFF                         ;9F885B|49FFFF  |;
                       INC A                                ;9F885E|1A      |;
 
          CODE_9F885F:
                       PHA                                  ;9F885F|48      |;
                       LSR A                                ;9F8860|4A      |;
                       LSR A                                ;9F8861|4A      |;
                       TAX                                  ;9F8862|AA      |;
                       JSL.L CODE_808F4C                    ;9F8863|224C8F80|;
                       LDX.B $E4                            ;9F8867|A6E4    |;
                       CLC                                  ;9F8869|18      |;
                       ADC.W $0B3D,X                        ;9F886A|7D3D0B  |;
                       STA.W $0B3D,X                        ;9F886D|9D3D0B  |;
                       CPX.W #$0018                         ;9F8870|E01800  |;
                       BCS CODE_9F88A8                      ;9F8873|B033    |;
                       STA.B $14                            ;9F8875|8514    |;
                       LDA.W PStructPosition,X              ;9F8877|BD430F  |;
                       BMI CODE_9F88A8                      ;9F887A|302C    |;
                       BEQ CODE_9F88A8                      ;9F887C|F02A    |;
                       LDA.W $1283,X                        ;9F887E|BD8312  |;
                       AND.W #$1000                         ;9F8881|290010  |;
                       ORA.W $14E3,X                        ;9F8884|1DE314  |;
                       BNE CODE_9F88A8                      ;9F8887|D01F    |;
                       LDA.B $14                            ;9F8889|A514    |;
                       CPX.W #$000C                         ;9F888B|E00C00  |;
                       BCS CODE_9F889D                      ;9F888E|B00D    |;
                       CMP.W $17AE                          ;9F8890|CDAE17  |;
                       BCS CODE_9F88A8                      ;9F8893|B013    |;
                       STA.W $17AE                          ;9F8895|8DAE17  |;
                       STX.W $17B2                          ;9F8898|8EB217  |;
                       BRA CODE_9F88A8                      ;9F889B|800B    |;
 
          CODE_9F889D:
                       CMP.W $17B0                          ;9F889D|CDB017  |;
                       BCS CODE_9F88A8                      ;9F88A0|B006    |;
                       STA.W $17B0                          ;9F88A2|8DB017  |;
                       STX.W $17B4                          ;9F88A5|8EB417  |;
 
          CODE_9F88A8:
                       PLY                                  ;9F88A8|7A      |;
                       PLA                                  ;9F88A9|68      |;
                       JSL.L CODE_9CA568                    ;9F88AA|2268A59C|;
                       LDX.B $E4                            ;9F88AE|A6E4    |;
                       STA.W $0B1D,X                        ;9F88B0|9D1D0B  |;
                       CPX.W #$0018                         ;9F88B3|E01800  |;
                       BCS CODE_9F88F6                      ;9F88B6|B03E    |;
                       CMP.W #$001E                         ;9F88B8|C91E00  |;
                       BCS CODE_9F88F6                      ;9F88BB|B039    |;
                       LDA.W $0CF1                          ;9F88BD|ADF10C  |;
                       BIT.W #$0004                         ;9F88C0|890400  |;
                       BEQ CODE_9F88F6                      ;9F88C3|F031    |;
                       BIT.W #$0001                         ;9F88C5|890100  |;
                       BNE CODE_9F88F6                      ;9F88C8|D02C    |;
                       AND.W #$0002                         ;9F88CA|290200  |;
                       BEQ CODE_9F88D6                      ;9F88CD|F007    |;
                       LDA.W $14C3,X                        ;9F88CF|BDC314  |;
                       BNE CODE_9F88F6                      ;9F88D2|D022    |;
                       BRA CODE_9F88DB                      ;9F88D4|8005    |;
 
          CODE_9F88D6:
                       LDA.W $14C3,X                        ;9F88D6|BDC314  |;
                       BEQ CODE_9F88F6                      ;9F88D9|F01B    |;
 
          CODE_9F88DB:
                       LDA.W PucVertVeloc                   ;9F88DB|ADF90D  |;
                       CMP.W #$000D                         ;9F88DE|C90D00  |;
                       BCS CODE_9F88F6                      ;9F88E1|B013    |;
                       LDA.W $0EFF                          ;9F88E3|ADFF0E  |;
                       CMP.W #$2400                         ;9F88E6|C90024  |;
                       BCS CODE_9F88F6                      ;9F88E9|B00B    |;
                       CMP.W #$DC00                         ;9F88EB|C900DC  |;
                       BMI CODE_9F88F6                      ;9F88EE|3006    |;
                       LDA.W #$0005                         ;9F88F0|A90500  |;
                       TRB.W $0CF1                          ;9F88F3|1CF10C  |;
 
          CODE_9F88F6:
                       JSL.L CODE_9BB445                    ;9F88F6|2245B49B|;
                       STA.W $0B5D,X                        ;9F88FA|9D5D0B  |;
                       DEX                                  ;9F88FD|CA      |;
                       DEX                                  ;9F88FE|CA      |;
                       BMI CODE_9F8904                      ;9F88FF|3003    |;
                       JMP.W CODE_9F86A4                    ;9F8901|4CA486  |;
 
          CODE_9F8904:
                       LDA.W $0DCF                          ;9F8904|ADCF0D  |;
                       CMP.W #$011F                         ;9F8907|C91F01  |;
                       BMI CODE_9F890F                      ;9F890A|3003    |;
                       db $A9,$1F,$01                       ;9F890C|        |;
 
          CODE_9F890F:
                       STA.W $0DCF                          ;9F890F|8DCF0D  |;
                       LDA.W $0DD1                          ;9F8912|ADD10D  |;
                       CMP.W #$FED2                         ;9F8915|C9D2FE  |;
                       BPL CODE_9F891D                      ;9F8918|1003    |;
                       db $A9,$D2,$FE                       ;9F891A|        |;
 
          CODE_9F891D:
                       STA.W $0DD1                          ;9F891D|8DD10D  |;
                       LDY.W #$000C                         ;9F8920|A00C00  |;
                       LDA.W #$000F                         ;9F8923|A90F00  |;
 
          CODE_9F8926:
                       STA.W $0AE7,Y                        ;9F8926|99E70A  |;
                       DEY                                  ;9F8929|88      |;
                       DEY                                  ;9F892A|88      |;
                       BPL CODE_9F8926                      ;9F892B|10F9    |;
                       LDX.W #$0008                         ;9F892D|A20800  |;
                       LDA.W #$0000                         ;9F8930|A90000  |;
 
          CODE_9F8933:
                       STA.W $0ADD,X                        ;9F8933|9DDD0A  |;
                       DEX                                  ;9F8936|CA      |;
                       DEX                                  ;9F8937|CA      |;
                       BPL CODE_9F8933                      ;9F8938|10F9    |;
                       LDA.W #$0000                         ;9F893A|A90000  |;
                       STA.B $EA                            ;9F893D|85EA    |;
                       LDA.W #$0002                         ;9F893F|A90200  |;
                       STA.B $EC                            ;9F8942|85EC    |;
                       LDX.W #$0000                         ;9F8944|A20000  |;
 
          CODE_9F8947:
                       STX.B $95                            ;9F8947|8695    |;
                       STX.B $E4                            ;9F8949|86E4    |;
                       CPX.W #$000C                         ;9F894B|E00C00  |;
                       BNE CODE_9F895A                      ;9F894E|D00A    |;
                       LDA.W #$0002                         ;9F8950|A90200  |;
                       STA.B $EA                            ;9F8953|85EA    |;
                       LDA.W #$0000                         ;9F8955|A90000  |;
                       STA.B $EC                            ;9F8958|85EC    |;
 
          CODE_9F895A:
                       LDA.W #$FFFF                         ;9F895A|A9FFFF  |;
                       STA.B $E6                            ;9F895D|85E6    |;
                       LDA.W PStructPosition,X              ;9F895F|BD430F  |;
                       BPL CODE_9F8967                      ;9F8962|1003    |;
                       JMP.W CODE_9F8ADD                    ;9F8964|4CDD8A  |;
 
          CODE_9F8967:
                       TXA                                  ;9F8967|8A      |;
                       LSR A                                ;9F8968|4A      |;
                       STA.B $BD                            ;9F8969|85BD    |;
                       CPX.W $0AD9                          ;9F896B|ECD90A  |;
                       BNE CODE_9F897E                      ;9F896E|D00E    |;
                       LDA.W PauseScreenActive              ;9F8970|ADDA15  |;
                       BNE CODE_9F897E                      ;9F8973|D009    |;
                       LDA.W #$0000                         ;9F8975|A90000  |;
                       STA.B $B5                            ;9F8978|85B5    |;
                       JSL.L CODE_9BC174                    ;9F897A|2274C19B|;
 
          CODE_9F897E:
                       CPX.W #$0018                         ;9F897E|E01800  |;
                       BCS CODE_9F89B2                      ;9F8981|B02F    |;
                       LDA.W $19D4,X                        ;9F8983|BDD419  |;
                       BMI CODE_9F89B2                      ;9F8986|302A    |;
                       TAY                                  ;9F8988|A8      |;
                       LDA.W $0ADD,Y                        ;9F8989|B9DD0A  |;
                       BNE CODE_9F89B2                      ;9F898C|D024    |;
                       LDA.W #$0001                         ;9F898E|A90100  |;
                       STA.W $0ADD,Y                        ;9F8991|99DD0A  |;
                       LDA.W JoyPad,Y                       ;9F8994|B97607  |;
                       STA.B $B1                            ;9F8997|85B1    |;
                       LDA.W $0AAE,Y                        ;9F8999|B9AE0A  |;
                       STA.B $AD                            ;9F899C|85AD    |;
                       LDA.W $0AB8,Y                        ;9F899E|B9B80A  |;
                       STA.B $A9                            ;9F89A1|85A9    |;
                       LDA.W $0AA4,Y                        ;9F89A3|B9A40A  |;
                       STA.B $A5                            ;9F89A6|85A5    |;
                       INY                                  ;9F89A8|C8      |;
                       INY                                  ;9F89A9|C8      |;
                       STY.B $B5                            ;9F89AA|84B5    |;
                       JSL.L CODE_9FC1B9                    ;9F89AC|22B9C19F|;
                       BRA CODE_9F89B2                      ;9F89B0|8000    |;
 
          CODE_9F89B2:
                       LDA.W $14E3,X                        ;9F89B2|BDE314  |;
                       BNE CODE_9F89D5                      ;9F89B5|D01E    |;
                       LDA.W $0B7D,X                        ;9F89B7|BD7D0B  |;
                       ASL A                                ;9F89BA|0A      |;
                       ASL A                                ;9F89BB|0A      |;
                       TAX                                  ;9F89BC|AA      |;
                       LDA.L DATA8_80D324,X                 ;9F89BD|BF24D380|;
                       STA.W $1D5A                          ;9F89C1|8D5A1D  |;
                       LDA.L DATA8_80D325,X                 ;9F89C4|BF25D380|;
                       STA.W $1D5B                          ;9F89C8|8D5B1D  |;
                       LDX.B $E4                            ;9F89CB|A6E4    |;
                       JSL.L CODE_9FC757                    ;9F89CD|2257C79F|;
                       JSL.L $001D59                        ;9F89D1|22591D00|;
 
          CODE_9F89D5:
                       LDA.W PStructPosition,X              ;9F89D5|BD430F  |;
                       ORA.W $15D6                          ;9F89D8|0DD615  |;
                       BNE CODE_9F8A44                      ;9F89DB|D067    |;
                       CPX.W #$0018                         ;9F89DD|E01800  |;
                       BCS CODE_9F8A44                      ;9F89E0|B062    |;
                       CPX.W $0AD9                          ;9F89E2|ECD90A  |;
                       BEQ CODE_9F8A44                      ;9F89E5|F05D    |;
                       LDA.W $0B05,X                        ;9F89E7|BD050B  |;
                       BIT.W #$0001                         ;9F89EA|890100  |;
                       BNE CODE_9F8A44                      ;9F89ED|D055    |;
                       LDA.W $0D55,X                        ;9F89EF|BD550D  |;
                       CMP.W #$FFD5                         ;9F89F2|C9D5FF  |;
                       BPL CODE_9F8A04                      ;9F89F5|100D    |;
                       CMP.W #$FFCF                         ;9F89F7|C9CFFF  |;
                       BMI CODE_9F8A14                      ;9F89FA|3018    |;
                       LDA.W #$FFD5                         ;9F89FC|A9D5FF  |;
                       STZ.W $0EC3,X                        ;9F89FF|9EC30E  |;
                       BRA CODE_9F8A14                      ;9F8A02|8010    |;
 
          CODE_9F8A04:
                       CMP.W #$002C                         ;9F8A04|C92C00  |;
                       BMI CODE_9F8A14                      ;9F8A07|300B    |;
                       db $C9,$31,$00,$10,$06,$A9,$2B,$00   ;9F8A09|        |;
                       db $9E,$C3,$0E                       ;9F8A11|        |;
 
          CODE_9F8A14:
                       STA.W $0D55,X                        ;9F8A14|9D550D  |;
                       LDA.W $0DB7,X                        ;9F8A17|BDB70D  |;
                       BPL CODE_9F8A31                      ;9F8A1A|1015    |;
                       CMP.W #$FF1C                         ;9F8A1C|C91CFF  |;
                       BMI CODE_9F8A44                      ;9F8A1F|3023    |;
                       CMP.W #$FF21                         ;9F8A21|C921FF  |;
                       BPL CODE_9F8A44                      ;9F8A24|101E    |;
                       LDA.W #$FF1B                         ;9F8A26|A91BFF  |;
                       STA.W $0DB7,X                        ;9F8A29|9DB70D  |;
                       STZ.W $0EE3,X                        ;9F8A2C|9EE30E  |;
                       BRA CODE_9F8A44                      ;9F8A2F|8013    |;
 
          CODE_9F8A31:
                       CMP.W #$00E5                         ;9F8A31|C9E500  |;
                       BPL CODE_9F8A44                      ;9F8A34|100E    |;
                       CMP.W #$00E0                         ;9F8A36|C9E000  |;
                       BMI CODE_9F8A44                      ;9F8A39|3009    |;
                       LDA.W #$00E5                         ;9F8A3B|A9E500  |;
                       STA.W $0DB7,X                        ;9F8A3E|9DB70D  |;
                       STZ.W $0EE3,X                        ;9F8A41|9EE30E  |;
 
          CODE_9F8A44:
                       STZ.W $1103,X                        ;9F8A44|9E0311  |;
                       STZ.W $1123,X                        ;9F8A47|9E2311  |;
                       LDA.W $0DB7,X                        ;9F8A4A|BDB70D  |;
                       STA.B $B1                            ;9F8A4D|85B1    |;
                       LDA.W $0D55,X                        ;9F8A4F|BD550D  |;
                       STA.B $AD                            ;9F8A52|85AD    |;
                       CMP.W $0E43,X                        ;9F8A54|DD430E  |;
                       BNE CODE_9F8A63                      ;9F8A57|D00A    |;
                       LDA.B $B1                            ;9F8A59|A5B1    |;
                       CMP.W $0E83,X                        ;9F8A5B|DD830E  |;
                       BNE CODE_9F8A63                      ;9F8A5E|D003    |;
                       JMP.W CODE_9F8AD1                    ;9F8A60|4CD18A  |;
 
          CODE_9F8A63:
                       JSL.L CODE_9E8C35                    ;9F8A63|22358C9E|;
                       CPX.W #$0018                         ;9F8A67|E01800  |;
                       BCS CODE_9F8AD1                      ;9F8A6A|B065    |;
                       LDA.W PStructPosition,X              ;9F8A6C|BD430F  |;
                       BEQ CODE_9F8AD1                      ;9F8A6F|F060    |;
                       LDA.W $1283,X                        ;9F8A71|BD8312  |;
                       AND.W #$8000                         ;9F8A74|290080  |;
                       ORA.W PauseScreenActive              ;9F8A77|0DDA15  |;
                       BNE CODE_9F8AD1                      ;9F8A7A|D055    |;
                       LDA.W $0D55,X                        ;9F8A7C|BD550D  |;
                       CMP.W #$FFE7                         ;9F8A7F|C9E7FF  |;
                       BMI CODE_9F8AD1                      ;9F8A82|304D    |;
                       CMP.W #$0019                         ;9F8A84|C91900  |;
                       BPL CODE_9F8AD1                      ;9F8A87|1048    |;
                       LDA.W $0DB7,X                        ;9F8A89|BDB70D  |;
                       BIT.W #$8000                         ;9F8A8C|890080  |;
                       BEQ CODE_9F8A95                      ;9F8A8F|F004    |;
                       EOR.W #$FFFF                         ;9F8A91|49FFFF  |;
                       INC A                                ;9F8A94|1A      |;
 
          CODE_9F8A95:
                       SEC                                  ;9F8A95|38      |;
                       SBC.W #$010D                         ;9F8A96|E90D01  |;
                       STA.B $00                            ;9F8A99|8500    |;
                       LDA.W $0E83,X                        ;9F8A9B|BD830E  |;
                       BIT.W #$8000                         ;9F8A9E|890080  |;
                       BEQ CODE_9F8AA7                      ;9F8AA1|F004    |;
                       EOR.W #$FFFF                         ;9F8AA3|49FFFF  |;
                       INC A                                ;9F8AA6|1A      |;
 
          CODE_9F8AA7:
                       SEC                                  ;9F8AA7|38      |;
                       SBC.W #$010D                         ;9F8AA8|E90D01  |;
                       EOR.B $00                            ;9F8AAB|4500    |;
                       BMI CODE_9F8AC5                      ;9F8AAD|3016    |;
                       LDA.W $0DB7,X                        ;9F8AAF|BDB70D  |;
                       BIT.W #$8000                         ;9F8AB2|890080  |;
                       BEQ CODE_9F8ABB                      ;9F8AB5|F004    |;
                       EOR.W #$FFFF                         ;9F8AB7|49FFFF  |;
                       INC A                                ;9F8ABA|1A      |;
 
          CODE_9F8ABB:
                       CMP.W #$0103                         ;9F8ABB|C90301  |;
                       BCC CODE_9F8AD1                      ;9F8ABE|9011    |;
                       CMP.W #$0117                         ;9F8AC0|C91701  |;
                       BCS CODE_9F8AD1                      ;9F8AC3|B00C    |;
 
          CODE_9F8AC5:
                       LDA.W $0E43,X                        ;9F8AC5|BD430E  |;
                       STA.W $0D55,X                        ;9F8AC8|9D550D  |;
                       LDA.W $0E83,X                        ;9F8ACB|BD830E  |;
                       STA.W $0DB7,X                        ;9F8ACE|9DB70D  |;
 
          CODE_9F8AD1:
                       LDA.W $0F23,X                        ;9F8AD1|BD230F  |;
                       SEC                                  ;9F8AD4|38      |;
                       SBC.W $0CDD                          ;9F8AD5|EDDD0C  |;
                       BPL CODE_9F8ADD                      ;9F8AD8|1003    |;
                       LDA.W #$0000                         ;9F8ADA|A90000  |;
 
          CODE_9F8ADD:
                       STA.W $0F23,X                        ;9F8ADD|9D230F  |;
                       INX                                  ;9F8AE0|E8      |;
                       INX                                  ;9F8AE1|E8      |;
                       CPX.W #$0020                         ;9F8AE2|E02000  |;
                       BEQ CODE_9F8AEA                      ;9F8AE5|F003    |;
                       JMP.W CODE_9F8947                    ;9F8AE7|4C4789  |;
 
          CODE_9F8AEA:
                       LDA.W PucVertVeloc                   ;9F8AEA|ADF90D  |;
                       CMP.W #$0018                         ;9F8AED|C91800  |;
                       BCS CODE_9F8B24                      ;9F8AF0|B032    |;
                       LDA.W $0D71                          ;9F8AF2|AD710D  |;
                       CMP.W #$FF78                         ;9F8AF5|C978FF  |;
                       BPL CODE_9F8B0B                      ;9F8AF8|1011    |;
                       db $A9,$78,$FF,$8D,$71,$0D,$AE,$B3   ;9F8AFA|        |;
                       db $0D,$E0,$8C,$01,$D0,$03,$8D,$73   ;9F8B02|        |;
                       db $0D                               ;9F8B0A|        |;
 
          CODE_9F8B0B:
                       LDA.W $0D71                          ;9F8B0B|AD710D  |;
                       CMP.W #$0088                         ;9F8B0E|C98800  |;
                       BMI CODE_9F8B24                      ;9F8B11|3011    |;
                       db $A9,$88,$00,$8D,$71,$0D,$AE,$B3   ;9F8B13|        |;
                       db $0D,$E0,$8C,$01,$D0,$03,$8D,$73   ;9F8B1B|        |;
                       db $0D                               ;9F8B23|        |;
 
          CODE_9F8B24:
                       LDA.W PucVertVeloc                   ;9F8B24|ADF90D  |;
                       BNE CODE_9F8B58                      ;9F8B27|D02F    |;
                       LDA.W $0DD3                          ;9F8B29|ADD30D  |;
                       CMP.W #$FEC2                         ;9F8B2C|C9C2FE  |;
                       BMI CODE_9F8B58                      ;9F8B2F|3027    |;
                       CMP.W #$013E                         ;9F8B31|C93E01  |;
                       BPL CODE_9F8B58                      ;9F8B34|1022    |;
                       LDA.W $0DD3                          ;9F8B36|ADD30D  |;
                       CMP.W #$FEDB                         ;9F8B39|C9DBFE  |;
                       BPL CODE_9F8B47                      ;9F8B3C|1009    |;
                       LDA.W #$FEDB                         ;9F8B3E|A9DBFE  |;
                       STA.W $0DD3                          ;9F8B41|8DD30D  |;
                       STA.W $0DD5                          ;9F8B44|8DD50D  |;
 
          CODE_9F8B47:
                       LDA.W $0DD3                          ;9F8B47|ADD30D  |;
                       CMP.W #$012A                         ;9F8B4A|C92A01  |;
                       BMI CODE_9F8B58                      ;9F8B4D|3009    |;
                       db $A9,$2A,$01,$8D,$D3,$0D,$8D,$D5   ;9F8B4F|        |;
                       db $0D                               ;9F8B57|        |;
 
          CODE_9F8B58:
                       LDA.W $0AD9                          ;9F8B58|ADD90A  |;
                       BMI CODE_9F8B64                      ;9F8B5B|3007    |;
                       LDA.W $0DD3                          ;9F8B5D|ADD30D  |;
                       STA.L $7E30F4                        ;9F8B60|8FF4307E|;
 
          CODE_9F8B64:
                       RTL                                  ;9F8B64|6B      |;
                       db $FD,$FA,$F7,$F4,$F1               ;9F8B65|        |;
                       db $EE,$EB,$E8,$E6                   ;9F8B6A|        |;
 
       UNREACH_9F8B6E:
                       db $E3                               ;9F8B6E|        |;
                       db $FF,$FF,$FE,$FE                   ;9F8B6F|        |;
                       db $FE,$FD,$FD,$FD,$FC,$FC           ;9F8B73|        |;
 
          CODE_9F8B79:
                       LDX.W #$001C                         ;9F8B79|A21C00  |;
                       STX.B $95                            ;9F8B7C|8695    |;
                       LDA.W #$0018                         ;9F8B7E|A91800  |;
                       STA.B $A5                            ;9F8B81|85A5    |;
                       JSL.L CODE_9E8C0E                    ;9F8B83|220E8C9E|;
                       LDA.W #$0001                         ;9F8B87|A90100  |;
                       JSL.L CODE_9C9A7F                    ;9F8B8A|227F9A9C|;
                       STZ.B $0C                            ;9F8B8E|640C    |;
                       LDA.W period                         ;9F8B90|AD3016  |;
                       CMP.W #$0002                         ;9F8B93|C90200  |;
                       BCS CODE_9F8B9B                      ;9F8B96|B003    |;
                       db $4C,$96,$8C                       ;9F8B98|        |;
          CODE_9F8B9B:
                       LDA.W #$0008                         ;9F8B9B|A90800  |;
                       STA.B $A5                            ;9F8B9E|85A5    |;
                       LDX.W #$0000                         ;9F8BA0|A20000  |;
                       STX.B $95                            ;9F8BA3|8695    |;
                       LDA.L $7E35D4                        ;9F8BA5|AFD4357E|;
                       CMP.W #$0003                         ;9F8BA9|C90300  |;
                       BNE CODE_9F8C17                      ;9F8BAC|D069    |;
                       db $AD,$CF,$0A,$C9,$07,$00,$F0,$38   ;9F8BAE|        |;
                       db $AF,$D6,$35,$7E,$0A,$85,$89,$AA   ;9F8BB6|        |;
                       db $64,$B1,$BF,$98,$35,$7E,$89,$01   ;9F8BBE|        |;
                       db $00,$F0,$05,$A9,$10,$00,$85,$B1   ;9F8BC6|        |;
                       db $AD,$8E,$17,$CD,$90,$17,$10,$07   ;9F8BCE|        |;
                       db $A5,$B1,$49,$10,$00,$85,$B1,$A5   ;9F8BD6|        |;
                       db $89,$18,$65,$B1,$DA,$AA,$BF,$48   ;9F8BDE|        |;
                       db $35,$7E,$FA,$C9,$03,$00,$D0,$29   ;9F8BE6|        |;
                       db $AF,$BC,$34,$7E,$C9,$00,$00,$F0   ;9F8BEE|        |;
                       db $20,$E6,$0C,$A9,$09,$00,$85,$A5   ;9F8BF6|        |;
                       db $A9,$0B,$00,$85,$AD,$BD,$83,$12   ;9F8BFE|        |;
                       db $29,$F7,$FF,$9D,$83,$12,$E8,$E8   ;9F8C06|        |;
                       db $C6,$AD,$10,$F1,$A2,$00,$00,$86   ;9F8C0E|        |;
                       db $95                               ;9F8C16|        |;
          CODE_9F8C17:
                       LDA.W #$0005                         ;9F8C17|A90500  |;
                       STA.B $AD                            ;9F8C1A|85AD    |;
                       LDA.W Score_HmAw                     ;9F8C1C|AD8E17  |;
                       CMP.W $1790                          ;9F8C1F|CD9017  |;
                       BEQ UNREACH_9F8C96                   ;9F8C22|F072    |;
                       BPL CODE_9F8C2B                      ;9F8C24|1005    |;
                       db $A2,$0C,$00,$86,$95               ;9F8C26|        |;
          CODE_9F8C2B:
                       LDA.W PStructPosition,X              ;9F8C2B|BD430F  |;
                       BEQ CODE_9F8C3B                      ;9F8C2E|F00B    |;
                       BMI CODE_9F8C3B                      ;9F8C30|3009    |;
                       JSL.L CODE_9E8C0E                    ;9F8C32|220E8C9E|;
                       LDA.W #$0008                         ;9F8C36|A90800  |;
                       STA.B $A5                            ;9F8C39|85A5    |;
          CODE_9F8C3B:
                       INX                                  ;9F8C3B|E8      |;
                       INX                                  ;9F8C3C|E8      |;
                       STX.B $95                            ;9F8C3D|8695    |;
                       DEC.B $AD                            ;9F8C3F|C6AD    |;
                       BPL CODE_9F8C2B                      ;9F8C41|10E8    |;
                       JSL.L CODE_9EC107                    ;9F8C43|2207C19E|;
                       LDA.L $7E35E0                        ;9F8C47|AFE0357E|;
                       CLC                                  ;9F8C4B|18      |;
                       ADC.W #$03E8                         ;9F8C4C|69E803  |;
                       STA.L $7E35E0                        ;9F8C4F|8FE0357E|;
                       LDA.W #$003C                         ;9F8C53|A93C00  |;
                       STA.B $81                            ;9F8C56|8581    |;
                       LDA.W #$0040                         ;9F8C58|A94000  |;
                       STA.W $15D6                          ;9F8C5B|8DD615  |;
                       TSB.W $15D4                          ;9F8C5E|0CD415  |;
                       LDA.W Score_HmAw                     ;9F8C61|AD8E17  |;
                       CMP.W $1790                          ;9F8C64|CD9017  |;
                       BMI CODE_9F8C7F                      ;9F8C67|3016    |;
                       LDA.W #$0000                         ;9F8C69|A90000  |;
                       STA.L $7E35E0                        ;9F8C6C|8FE0357E|;
                       LDA.W #$0003                         ;9F8C70|A90300  |;
                       STA.W $0CE7                          ;9F8C73|8DE70C  |;
                       LDA.B $83                            ;9F8C76|A583    |;
                       SEC                                  ;9F8C78|38      |;
                       SBC.W #$0096                         ;9F8C79|E99600  |;
                       STA.W $0CE9                          ;9F8C7C|8DE90C  |;
          CODE_9F8C7F:
                       LDA.W #$0004                         ;9F8C7F|A90400  |;
                       STA.B $A5                            ;9F8C82|85A5    |;
                       JSL.L CODE_9EB88A                    ;9F8C84|228AB89E|;
                       LDA.B $0C                            ;9F8C88|A50C    |;
                       BEQ CODE_9F8C95                      ;9F8C8A|F009    |;
                       db $A9,$32,$00,$85,$A5,$22,$8A,$B8   ;9F8C8C|        |;
                       db $9E                               ;9F8C94|        |;
          CODE_9F8C95:
                       RTL                                  ;9F8C95|6B      |;
       UNREACH_9F8C96:
                       db $AD,$30,$16,$C9,$03,$00,$D0,$06   ;9F8C96|        |;
                       db $AF,$BC,$34,$7E,$F0,$9F,$22,$91   ;9F8C9E|        |;
                       db $C7,$9E,$A9,$02,$00,$85,$A5,$5C   ;9F8CA6|        |;
                       db $43,$C9,$80,$22,$F7,$96,$9F,$22   ;9F8CAE|        |;
                       db $86,$97,$9C,$22,$83,$85,$80,$22   ;9F8CB6|        |;
                       db $83,$85,$80,$AD,$D3,$0A,$D0,$FB   ;9F8CBE|        |;
                       db $AD,$F9,$07,$D0,$F6,$22,$A9,$86   ;9F8CC6|        |;
                       db $80,$AD,$81,$1D,$D0,$37,$22,$8E   ;9F8CCE|        |;
                       db $97,$9C,$AF,$BC,$34,$7E,$F0,$1F   ;9F8CD6|        |;
                       db $C9,$04,$00,$F0,$1A,$AF,$D4,$35   ;9F8CDE|        |;
                       db $7E,$C9,$02,$00,$90,$11,$A9,$93   ;9F8CE6|        |;
                       db $00,$85,$0E,$A9,$31,$ED,$85,$0C   ;9F8CEE|        |;
                       db $22,$E0,$A2,$80,$4C,$0B,$8D,$A9   ;9F8CF6|        |;
                       db $90,$00,$85,$0E,$A9,$0C,$C2,$85   ;9F8CFE|        |;
                       db $0C,$22,$E0,$A2,$80,$AD,$D4,$15   ;9F8D06|        |;
                       db $49,$02,$00,$8D,$D4,$15,$A0,$00   ;9F8D0E|        |;
                       db $00,$B9,$52,$18,$C9,$FD,$FF,$D0   ;9F8D16|        |;
                       db $06,$A9,$FE,$FF,$99,$52,$18,$C8   ;9F8D1E|        |;
                       db $C8,$C0,$68,$00,$90,$EB,$22,$17   ;9F8D26|        |;
                       db $BA,$9F,$A2,$00,$00,$A0,$C0,$01   ;9F8D2E|        |;
                       db $A9,$00,$60,$22,$E1,$AE,$80,$22   ;9F8D36|        |;
                       db $E6,$96,$9F,$22,$BD,$86,$80,$22   ;9F8D3E|        |;
                       db $7B,$AF,$80,$22,$AA,$BA,$9F,$22   ;9F8D46|        |;
                       db $DE,$AF,$80,$EE,$30,$16,$AD,$30   ;9F8D4E|        |;
                       db $16,$C9,$03,$00,$F0,$14,$90,$20   ;9F8D56|        |;
                       db $A9,$03,$00,$8D,$30,$16,$AF,$BC   ;9F8D5E|        |;
                       db $34,$7E,$D0,$06,$A9,$04,$00,$8D   ;9F8D66|        |;
                       db $30,$16,$AD,$8E,$17,$CD,$90,$17   ;9F8D6E|        |;
                       db $F0,$06,$A9,$04,$00,$8D,$30,$16   ;9F8D76|        |;
                       db $22,$83,$C6,$9F,$22,$12,$97,$9F   ;9F8D7E|        |;
                       db $22,$A6,$A2,$9F                   ;9F8D86|        |;
                       LDA.W period                         ;9F8D8A|AD3016  |;
                       CMP.W #$0004                         ;9F8D8D|C90400  |;
                       BNE CODE_9F8D96                      ;9F8D90|D004    |;
                       db $5C,$B6,$8D,$9F                   ;9F8D92|        |;
          CODE_9F8D96:
                       LDA.W period                         ;9F8D96|AD3016  |;
                       STA.W $1EAD                          ;9F8D99|8DAD1E  |;
                       JSL.L CODE_9C9786                    ;9F8D9C|2286979C|;
                       JSL.L CODE_9F96F7                    ;9F8DA0|22F7969F|;
          CODE_9F8DA4:
                       LDA.W $07F9                          ;9F8DA4|ADF907  |;
                       BNE CODE_9F8DA4                      ;9F8DA7|D0FB    |;
                       JSL.L CODE_9C98DF                    ;9F8DA9|22DF989C|;
                       LDA.W #$FFFF                         ;9F8DAD|A9FFFF  |;
                       STA.W $1E8D                          ;9F8DB0|8D8D1E  |;
                       JMP.W CODE_9F8433                    ;9F8DB3|4C3384  |;
                       db $9C,$C6,$07,$22,$5E,$C7,$9B,$22   ;9F8DB6|        |;
                       db $BF,$8B,$9D,$AF,$BC,$34,$7E,$C9   ;9F8DBE|        |;
                       db $01,$00,$F0,$04,$5C,$D2,$82,$9F   ;9F8DC6|        |;
                       db $AF,$D6,$35,$7E,$10,$04,$5C,$D2   ;9F8DCE|        |;
                       db $82,$9F,$AF,$F4,$34,$7E,$29,$7F   ;9F8DD6|        |;
                       db $7F,$8F,$F4,$34,$7E,$22,$28,$CD   ;9F8DDE|        |;
                       db $9B,$22,$83,$97,$9D,$A9,$04,$00   ;9F8DE6|        |;
                       db $1C,$DC,$15,$F0,$03,$4C,$30,$83   ;9F8DEE|        |;
                       db $5C,$34,$83,$9F,$86,$87,$A2,$00   ;9F8DF6|        |;
                       db $00,$B5,$A5,$48,$E8,$E8,$E0,$20   ;9F8DFE|        |;
                       db $00,$D0,$F6,$A6,$87,$86,$87,$A2   ;9F8E06|        |;
                       db $00,$00,$B5,$89,$48,$E8,$E8,$E0   ;9F8E0E|        |;
                       db $1C,$00,$D0,$F6,$A6,$87,$AD,$DC   ;9F8E16|        |;
                       db $15,$89,$08,$00,$F0,$03,$4C,$76   ;9F8E1E|        |;
                       db $92,$22,$CB,$92,$9F,$A5,$A9,$85   ;9F8E26|        |;
                       db $B1,$22,$76,$A4,$9F,$AD,$DC,$15   ;9F8E2E|        |;
                       db $89,$08,$00,$F0,$03,$4C,$43,$92   ;9F8E36|        |;
                       db $A9,$04,$00,$8D,$0F,$0D,$A9,$14   ;9F8E3E|        |;
                       db $00,$8D,$11,$0D,$A9,$18,$00,$85   ;9F8E46|        |;
                       db $A5,$A9,$03,$00,$85,$A9,$22,$00   ;9F8E4E|        |;
                       db $80,$9D,$EE,$0F,$0D,$CE,$11,$0D   ;9F8E56|        |;
                       db $CE,$11,$0D,$A5,$8F,$48,$A5,$8D   ;9F8E5E|        |;
                       db $48,$A9,$9C,$00,$85,$8F,$A9,$F3   ;9F8E66|        |;
                       db $F7,$85,$8D,$22,$BE,$C7,$9E,$68   ;9F8E6E|        |;
                       db $85,$8D,$68,$85,$8F,$A9,$B4,$00   ;9F8E76|        |;
                       db $85,$A5,$22,$EA,$A5,$9F,$A5,$B1   ;9F8E7E|        |;
                       db $89,$00,$10,$F0,$03,$4C,$43,$92   ;9F8E86|        |;
                       db $9C,$C2,$0A,$22,$F7,$96,$9F,$22   ;9F8E8E|        |;
                       db $08,$97,$9F,$22,$A9,$86,$80,$22   ;9F8E96|        |;
                       db $86,$97,$9C,$AD,$68,$1D,$C9,$01   ;9F8E9E|        |;
                       db $00,$F0,$04,$22,$DF,$98,$9C,$A6   ;9F8EA6|        |;
                       db $89,$BF,$28,$35,$7E,$8D,$98,$1C   ;9F8EAE|        |;
                       db $BF,$38,$35,$7E,$8D,$9A,$1C,$A5   ;9F8EB6|        |;
                       db $89,$48,$A5,$8B,$48               ;9F8EBE|        |;
                       JSL.L Set_Default_Goalie             ;9F8EC3|22B2C69F|;
                       JSL.L CODE_9FC702                    ;9F8EC7|2202C79F|;
                       db $A9,$00,$00,$85,$91,$22,$34,$93   ;9F8ECB|        |;
                       db $9B,$A9,$02,$00,$85,$91,$22,$34   ;9F8ED3|        |;
                       db $93,$9B,$64,$91,$22,$9D,$DD,$9F   ;9F8EDB|        |;
                       db $A9,$02,$00,$85,$91,$22,$9D,$DD   ;9F8EE3|        |;
                       db $9F,$22,$7C,$C1,$9B,$A2,$08,$00   ;9F8EEB|        |;
                       db $A9,$FF,$FF,$9D,$EC,$19,$9D,$F6   ;9F8EF3|        |;
                       db $19,$CA,$CA,$10,$F6,$9C,$84,$1C   ;9F8EFB|        |;
                       db $9C,$86,$1C,$9C,$88,$1C,$9C,$8A   ;9F8F03|        |;
                       db $1C,$9C,$8C,$1C,$A9,$78,$00,$22   ;9F8F0B|        |;
                       db $85,$B3,$9B,$69,$78,$00,$8D,$32   ;9F8F13|        |;
                       db $16,$68,$85,$8B,$68,$85,$89,$A5   ;9F8F1B|        |;
                       db $89,$48,$A5,$8B,$48,$A6,$89,$BF   ;9F8F23|        |;
                       db $68,$35,$7E,$3A,$8D,$30,$16,$BF   ;9F8F2B|        |;
                       db $78,$35,$7E,$8D,$8E,$17,$BF,$88   ;9F8F33|        |;
                       db $35,$7E,$8D,$90,$17,$A9,$10,$00   ;9F8F3B|        |;
                       db $8D,$D4,$15,$9C,$D6,$15,$AD,$30   ;9F8F43|        |;
                       db $16,$4A,$90,$06,$A9,$02,$00,$0C   ;9F8F4B|        |;
                       db $D4,$15,$9C,$DC,$15,$A9,$00,$04   ;9F8F53|        |;
                       db $8D,$D8,$15,$9C,$DA,$15,$9C,$F1   ;9F8F5B|        |;
                       db $0C,$A9,$FF,$FF,$8D,$2A,$16,$8D   ;9F8F63|        |;
                       db $19,$0D,$8D,$1D,$0D,$22,$B4,$B8   ;9F8F6B|        |;
                       db $9F,$22,$A4,$B9,$9F,$9C,$37,$0D   ;9F8F73|        |;
                       db $9C,$EB,$0C,$22,$AC,$CD,$9F,$64   ;9F8F7B|        |;
                       db $91,$22,$7D,$92,$9F,$A9,$02,$00   ;9F8F83|        |;
                       db $85,$91,$22,$7D,$92,$9F,$22,$52   ;9F8F8B|        |;
                       db $D2,$9F,$A9,$00,$00,$8F,$48,$34   ;9F8F93|        |;
                       db $7E,$A9,$0B,$00,$85,$A5,$A9,$9F   ;9F8F9B|        |;
                       db $00,$85,$8B,$A9,$23,$93,$85,$89   ;9F8FA3|        |;
                       db $64,$8D,$A6,$8D,$BD,$43,$0F,$85   ;9F8FAB|        |;
                       db $A9,$BD,$C3,$14,$D0,$08,$A5,$A9   ;9F8FB3|        |;
                       db $18,$69,$06,$00,$85,$A9,$06,$A9   ;9F8FBB|        |;
                       db $06,$A9,$A4,$A9,$B7,$89,$9D,$55   ;9F8FC3|        |;
                       db $0D,$C8,$C8,$B7,$89,$9D,$B7,$0D   ;9F8FCB|        |;
                       db $9E,$C3,$0E,$9E,$E3,$0E,$E6,$8D   ;9F8FD3|        |;
                       db $E6,$8D,$C6,$A5,$10,$CC,$AD,$D9   ;9F8FDB|        |;
                       db $0A,$10,$0B,$A9,$0C,$00,$22,$70   ;9F8FE3|        |;
                       db $B3,$9B,$0A,$8D,$D9,$0A,$AA,$BD   ;9F8FEB|        |;
                       db $43,$0F,$D0,$06,$CA,$CA,$8A,$8D   ;9F8FF3|        |;
                       db $D9,$0A,$22,$9B,$A1,$9C,$A9,$B4   ;9F8FFB|        |;
                       db $00,$48,$A5,$83,$8D,$01,$0D,$A5   ;9F9003|        |;
                       db $83,$CD,$01,$0D,$F0,$F9,$AA,$38   ;9F900B|        |;
                       db $ED,$01,$0D,$85,$C1,$8D,$DB,$0A   ;9F9013|        |;
                       db $0A,$8D,$DD,$0C,$0A,$0A,$0A,$8D   ;9F901B|        |;
                       db $DF,$0C,$0A,$8D,$E1,$0C,$0A,$6D   ;9F9023|        |;
                       db $E1,$0C,$8D,$E1,$0C,$8E,$35,$0D   ;9F902B|        |;
                       db $8E,$01,$0D,$22,$17,$80,$9B,$AD   ;9F9033|        |;
                       db $D8,$15,$89,$01,$00,$D0,$1E,$AD   ;9F903B|        |;
                       db $D6,$15,$D0,$19,$A6,$C1,$AD,$32   ;9F9043|        |;
                       db $16,$F0,$0F,$AD,$34,$16,$38,$E9   ;9F904B|        |;
                       db $AA,$0A,$8D,$34,$16,$B0,$03,$CE   ;9F9053|        |;
                       db $32,$16,$CA,$D0,$E9,$A5,$C1,$48   ;9F905B|        |;
                       db $22,$25,$86,$9F,$68,$85,$C1,$8D   ;9F9063|        |;
                       db $DB,$0A,$AD,$D6,$15,$F0,$07,$68   ;9F906B|        |;
                       db $38,$E5,$C1,$48,$30,$1E,$22,$26   ;9F9073|        |;
                       db $85,$9B,$A5,$A9,$89,$80,$90,$F0   ;9F907B|        |;
                       db $86,$AD,$8E,$17,$CD,$90,$17,$D0   ;9F9083|        |;
                       db $0B,$22,$58,$86,$80,$29,$02,$00   ;9F908B|        |;
                       db $AA,$FE,$8E,$17,$68,$68,$85,$8B   ;9F9093|        |;
                       db $68,$85,$89,$22,$86,$97,$9C,$A6   ;9F909B|        |;
                       db $89,$AD,$8E,$17,$9F,$78,$35,$7E   ;9F90A3|        |;
                       db $AD,$90,$17,$9F,$88,$35,$7E,$22   ;9F90AB|        |;
                       db $3F,$E0,$9F,$A2,$00,$00,$A9,$10   ;9F90B3|        |;
                       db $FF,$9D,$55,$0D,$9E,$B7,$0D,$A9   ;9F90BB|        |;
                       db $01,$00,$9D,$97,$0D,$E8,$E8,$E0   ;9F90C3|        |;
                       db $18,$00,$90,$EA,$22,$F7,$96,$9F   ;9F90CB|        |;
                       db $22,$08,$97,$9F,$22,$A9,$86,$80   ;9F90D3|        |;
                       db $22,$07,$93,$9F,$22,$01,$B9,$9F   ;9F90DB|        |;
                       db $22,$17,$BA,$9F,$22,$7B,$AF,$80   ;9F90E3|        |;
                       db $22,$AA,$BA,$9F,$22,$DE,$AF,$80   ;9F90EB|        |;
                       db $AD,$F9,$07,$D0,$FB,$AD,$F3,$07   ;9F90F3|        |;
                       db $D0,$F6,$22,$8E,$97,$9C,$AF,$BC   ;9F90FB|        |;
                       db $34,$7E,$F0,$1E,$C9,$04,$00,$F0   ;9F9103|        |;
                       db $19,$AF,$D4,$35,$7E,$C9,$02,$00   ;9F910B|        |;
                       db $90,$10,$A9,$93,$00,$85,$0E,$A9   ;9F9113|        |;
                       db $31,$ED,$85,$0C,$22,$E0,$A2,$80   ;9F911B|        |;
                       db $80,$0E,$A9,$90,$00,$85,$0E,$A9   ;9F9123|        |;
                       db $0C,$C2,$85,$0C,$22,$E0,$A2,$80   ;9F912B|        |;
                       db $A5,$8F,$48,$A5,$8D,$48,$A9,$9C   ;9F9133|        |;
                       db $00,$85,$8F,$A9,$09,$F8,$85,$8D   ;9F913B|        |;
                       db $22,$BE,$C7,$9E,$68,$85,$8D,$68   ;9F9143|        |;
                       db $85,$8F,$A9,$16,$00,$85,$A5,$A9   ;9F914B|        |;
                       db $07,$00,$85,$A9,$22,$00,$80,$9D   ;9F9153|        |;
                       db $22,$36,$9B,$9F,$22,$24,$EA,$9F   ;9F915B|        |;
                       db $22,$E6,$96,$9F,$22,$BD,$86,$80   ;9F9163|        |;
                       db $86,$87,$A2,$1A,$00,$68,$95,$89   ;9F916B|        |;
                       db $CA,$CA,$10,$F9,$A6,$87,$86,$87   ;9F9173|        |;
                       db $A2,$1E,$00,$68,$95,$A5,$CA,$CA   ;9F917B|        |;
                       db $10,$F9,$A6,$87,$A6,$95,$86,$87   ;9F9183|        |;
                       db $A2,$00,$00,$B5,$A5,$48,$E8,$E8   ;9F918B|        |;
                       db $E0,$20,$00,$D0,$F6,$A6,$87,$86   ;9F9193|        |;
                       db $87,$A2,$00,$00,$B5,$89,$48,$E8   ;9F919B|        |;
                       db $E8,$E0,$1C,$00,$D0,$F6,$A6,$87   ;9F91A3|        |;
                       db $A6,$89,$A9,$04,$00,$9F,$68,$35   ;9F91AB|        |;
                       db $7E,$BF,$78,$35,$7E,$DF,$88,$35   ;9F91B3|        |;
                       db $7E,$D0,$03,$4C,$1C,$8E,$A9,$05   ;9F91BB|        |;
                       db $00,$9F,$68,$35,$7E,$A5,$A9,$85   ;9F91C3|        |;
                       db $B1,$22,$76,$A4,$9F,$A9,$B4,$00   ;9F91CB|        |;
                       db $85,$A5,$22,$EA,$A5,$9F,$A5,$A9   ;9F91D3|        |;
                       db $89,$00,$10,$F0,$08,$A9,$08,$00   ;9F91DB|        |;
                       db $0C,$DC,$15,$80,$06,$A9,$08,$00   ;9F91E3|        |;
                       db $1C,$DC,$15,$22,$7C,$C1,$9B,$A9   ;9F91EB|        |;
                       db $96,$00,$85,$0E,$A9,$CF,$B2,$85   ;9F91F3|        |;
                       db $0C,$A9,$7F,$00,$85,$12,$A9,$00   ;9F91FB|        |;
                       db $00,$85,$10,$22,$73,$C3,$80,$A9   ;9F9203|        |;
                       db $7F,$00,$85,$0E,$A9,$00,$00,$85   ;9F920B|        |;
                       db $0C,$AF,$BA,$35,$7E,$0A,$0A,$0A   ;9F9213|        |;
                       db $0A,$69,$00,$10,$A8,$22,$1F,$89   ;9F921B|        |;
                       db $80,$86,$87,$A2,$1A,$00,$68,$95   ;9F9223|        |;
                       db $89,$CA,$CA,$10,$F9,$A6,$87,$86   ;9F922B|        |;
                       db $87,$A2,$1E,$00,$68,$95,$A5,$CA   ;9F9233|        |;
                       db $CA,$10,$F9,$A6,$87,$A6,$95,$6B   ;9F923B|        |;
                       db $A9,$04,$00,$8D,$0F,$0D,$A9,$14   ;9F9243|        |;
                       db $00,$8D,$11,$0D,$A9,$18,$00,$85   ;9F924B|        |;
                       db $A5,$A9,$03,$00,$85,$A9,$AF,$D0   ;9F9253|        |;
                       db $35,$7E,$85,$AD,$22,$9C,$BD,$9F   ;9F925B|        |;
                       db $22,$23,$D9,$9D,$22,$83,$85,$80   ;9F9263|        |;
                       db $22,$07,$93,$9F,$22,$98,$92,$9F   ;9F926B|        |;
                       db $4C,$E0,$91,$22,$98,$92,$9F,$4C   ;9F9273|        |;
                       db $E8,$91,$22,$9D,$DD,$9F,$22,$07   ;9F927B|        |;
                       db $D4,$9F,$22,$1D,$CE,$9F,$A4,$91   ;9F9283|        |;
                       db $A9,$FF,$FF,$99,$9A,$17,$99,$9E   ;9F928B|        |;
                       db $17,$99,$A2,$17,$6B,$A6,$89,$BF   ;9F9293|        |;
                       db $78,$35,$7E,$DF,$88,$35,$7E,$D0   ;9F929B|        |;
                       db $1F,$22,$58,$86,$80,$29,$01,$00   ;9F92A3|        |;
                       db $A6,$89,$48,$18,$7F,$78,$35,$7E   ;9F92AB|        |;
                       db $9F,$78,$35,$7E,$68,$49,$01,$00   ;9F92B3|        |;
                       db $7F,$88,$35,$7E,$9F,$88,$35,$7E   ;9F92BB|        |;
                       db $A9,$05,$00,$9F,$68,$35,$7E,$6B   ;9F92C3|        |;
                       db $A2,$00,$00,$BD,$D3,$15,$9F,$F4   ;9F92CB|        |;
                       db $47,$7E,$E8,$E8,$E0,$81,$07,$90   ;9F92D3|        |;
                       db $F2,$AF,$3A,$31,$7E,$9F,$F4,$47   ;9F92DB|        |;
                       db $7E,$E8,$E8,$9C,$AA,$17,$9C,$AC   ;9F92E3|        |;
                       db $17,$9C,$D0,$19,$9C,$D2,$19,$A9   ;9F92EB|        |;
                       db $FF,$FF,$A2,$00,$00,$9D,$D4,$19   ;9F92F3|        |;
                       db $E8,$E8,$E0,$18,$00,$90,$F6,$22   ;9F92FB|        |;
                       db $07,$C1,$9E,$6B,$A2,$00,$00,$BF   ;9F9303|        |;
                       db $F4,$47,$7E,$9D,$D3,$15,$E8,$E8   ;9F930B|        |;
                       db $E0,$81,$07,$90,$F2,$BF,$F4,$47   ;9F9313|        |;
                       db $7E,$E8,$E8,$8F,$3A,$31,$7E,$6B   ;9F931B|        |;
                       db $00,$00,$10,$FF,$BA,$FF,$74,$FF   ;9F9323|        |;
                       db $14,$00,$92,$FF,$9C,$FF,$C4,$FF   ;9F932B|        |;
                       db $19,$00,$D8,$FF,$46,$00,$B0,$FF   ;9F9333|        |;
                       db $00,$00,$F0,$00,$22,$00,$5A,$00   ;9F933B|        |;
                       db $C9,$FF,$50,$00,$64,$00,$28,$00   ;9F9343|        |;
                       db $F6,$FF,$0A,$00,$CE,$FF,$00,$00   ;9F934B|        |;
 
          CODE_9F9353:
                       CMP.W $0CD5                          ;9F9353|CDD50C  |;
                       BCS CODE_9F935B                      ;9F9356|B003    |;
                       db $8D,$D5,$0C                       ;9F9358|        |;
 
          CODE_9F935B:
                       RTL                                  ;9F935B|6B      |;
 
          CODE_9F935C:
                       CMP.W $0CD7                          ;9F935C|CDD70C  |;
                       BCC CODE_9F9364                      ;9F935F|9003    |;
                       db $8D,$D7,$0C                       ;9F9361|        |;
 
          CODE_9F9364:
                       RTL                                  ;9F9364|6B      |;
 
          CODE_9F9365:
                       LDA.W #$0001                         ;9F9365|A90100  |;
                       TSB.W $15D8                          ;9F9368|0CD815  |;
                       RTL                                  ;9F936B|6B      |;
 
          CODE_9F936C:
                       STA.W $0AC6                          ;9F936C|8DC60A  |;
                       JMP.W CODE_9F9365                    ;9F936F|4C6593  |;
                       db $9C,$C6,$0A,$4C,$65,$93,$4C,$65   ;9F9372|        |;
                       db $93                               ;9F937A|        |;
 
          CODE_9F937B:
                       PHX                                  ;9F937B|DA      |;
                       LDA.W #$007E                         ;9F937C|A97E00  |;
                       STA.B $0E                            ;9F937F|850E    |;
                       LDA.W #$37F4                         ;9F9381|A9F437  |;
                       STA.B $0C                            ;9F9384|850C    |;
                       LDA.W #$007E                         ;9F9386|A97E00  |;
                       STA.B $12                            ;9F9389|8512    |;
                       LDA.W #$4F7E                         ;9F938B|A97E4F  |;
                       STA.B $10                            ;9F938E|8510    |;
                       LDX.W #$0800                         ;9F9390|A20008  |;
                       JSL.L CODE_808F2F                    ;9F9393|222F8F80|;
                       PLX                                  ;9F9397|FA      |;
                       JSL.L CODE_9C9786                    ;9F9398|2286979C|;
                       LDA.W PauseScreenActive              ;9F939C|ADDA15  |;
                       PHA                                  ;9F939F|48      |;
                       LDA.W $15D8                          ;9F93A0|ADD815  |;
                       PHA                                  ;9F93A3|48      |;
                       JSL.L CODE_9F96F7                    ;9F93A4|22F7969F|;
                       JSL.L CODE_9F9708                    ;9F93A8|2208979F|;
                       JSL.L CODE_8086A9                    ;9F93AC|22A98680|;
                       JSL.L CODE_9FBA17                    ;9F93B0|2217BA9F|;
                       LDX.W #$0000                         ;9F93B4|A20000  |;
                       LDY.W #$01C0                         ;9F93B7|A0C001  |;
                       LDA.W #$6000                         ;9F93BA|A90060  |;
                       JSL.L CODE_80AEE1                    ;9F93BD|22E1AE80|;
                       JSL.L CODE_9F96E6                    ;9F93C1|22E6969F|;
                       JSL.L CODE_8086BD                    ;9F93C5|22BD8680|;
                       JSL.L CODE_80AF7B                    ;9F93C9|227BAF80|;
                       JSL.L CODE_9FBAAA                    ;9F93CD|22AABA9F|;
                       JSL.L CODE_80AFDE                    ;9F93D1|22DEAF80|;
                       STZ.W $0D13                          ;9F93D5|9C130D  |;
                       STZ.W $0D15                          ;9F93D8|9C150D  |;
 
          CODE_9F93DB:
                       LDA.B $8F                            ;9F93DB|A58F    |;
                       PHA                                  ;9F93DD|48      |;
                       LDA.B $8D                            ;9F93DE|A58D    |;
                       PHA                                  ;9F93E0|48      |;
                       LDA.W #$009C                         ;9F93E1|A99C00  |;
                       STA.B $8F                            ;9F93E4|858F    |;
                       LDA.W #$F80E                         ;9F93E6|A90EF8  |;
                       STA.B $8D                            ;9F93E9|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F93EB|22BEC79E|;
                       PLA                                  ;9F93EF|68      |;
                       STA.B $8D                            ;9F93F0|858D    |;
                       PLA                                  ;9F93F2|68      |;
                       STA.B $8F                            ;9F93F3|858F    |;
                       LDA.W #$0016                         ;9F93F5|A91600  |;
                       STA.B $A5                            ;9F93F8|85A5    |;
                       LDA.W #$0007                         ;9F93FA|A90700  |;
                       STA.B $A9                            ;9F93FD|85A9    |;
                       JSL.L CODE_9D8000                    ;9F93FF|2200809D|;
                       JSL.L CODE_9F9B36                    ;9F9403|22369B9F|;
                       JSL.L CODE_9FE11D                    ;9F9407|221DE19F|;
                       BNE CODE_9F93DB                      ;9F940B|D0CE    |;
                       LDA.W #$0000                         ;9F940D|A90000  |;
                       STA.L $7E3476                        ;9F9410|8F76347E|;
                       STZ.W $1EBB                          ;9F9414|9CBB1E  |;
                       STZ.W $1D60                          ;9F9417|9C601D  |;
                       JSL.L CODE_9F96F7                    ;9F941A|22F7969F|;
                       JSL.L CODE_9F9708                    ;9F941E|2208979F|;
                       JSL.L CODE_8086A9                    ;9F9422|22A98680|;
                       JSL.L CODE_80A380                    ;9F9426|2280A380|;
                       PHX                                  ;9F942A|DA      |;
                       LDA.W #$007E                         ;9F942B|A97E00  |;
                       STA.B $0E                            ;9F942E|850E    |;
                       LDA.W #$4F7E                         ;9F9430|A97E4F  |;
                       STA.B $0C                            ;9F9433|850C    |;
                       LDA.W #$007E                         ;9F9435|A97E00  |;
                       STA.B $12                            ;9F9438|8512    |;
                       LDA.W #$37F4                         ;9F943A|A9F437  |;
                       STA.B $10                            ;9F943D|8510    |;
                       LDX.W #$0800                         ;9F943F|A20008  |;
                       JSL.L CODE_808F2F                    ;9F9442|222F8F80|;
                       PLX                                  ;9F9446|FA      |;
                       STZ.W $0CD5                          ;9F9447|9CD50C  |;
                       LDA.W #$03FF                         ;9F944A|A9FF03  |;
                       STA.W $0CD7                          ;9F944D|8DD70C  |;
                       PLA                                  ;9F9450|68      |;
                       STA.W $15D8                          ;9F9451|8DD815  |;
                       PLA                                  ;9F9454|68      |;
                       STA.W $15DA                          ;9F9455|8DDA15  |;
                       BNE CODE_9F945E                      ;9F9458|D004    |;
                       JSL.L CODE_9FB9A4                    ;9F945A|22A4B99F|;
 
          CODE_9F945E:
                       LDA.W #$0001                         ;9F945E|A90100  |;
                       TRB.W $15D8                          ;9F9461|1CD815  |;
                       JSL.L CODE_9F9B36                    ;9F9464|22369B9F|;
                       LDX.W #$0000                         ;9F9468|A20000  |;
                       LDY.W #$01C0                         ;9F946B|A0C001  |;
                       LDA.W #$6000                         ;9F946E|A90060  |;
                       JSL.L CODE_80AEE1                    ;9F9471|22E1AE80|;
                       JSL.L CODE_9F96E6                    ;9F9475|22E6969F|;
                       JSL.L CODE_8086BD                    ;9F9479|22BD8680|;
                       JSL.L CODE_80AF7B                    ;9F947D|227BAF80|;
                       JSL.L CODE_9FBAAA                    ;9F9481|22AABA9F|;
                       JSL.L CODE_80AFDE                    ;9F9485|22DEAF80|;
                       LDA.W #$7000                         ;9F9489|A90070  |;
                       STA.B $64                            ;9F948C|8564    |;
                       LDA.W #$0012                         ;9F948E|A91200  |;
                       JSL.L fn_PlaySFX                     ;9F9491|227DA180|;
                       LDA.W #$0013                         ;9F9495|A91300  |;
                       JSL.L fn_PlaySFX                     ;9F9498|227DA180|;
                       LDA.W #$FFFF                         ;9F949C|A9FFFF  |;
                       STA.W $0CAD                          ;9F949F|8DAD0C  |;
                       STA.W $0CB3                          ;9F94A2|8DB30C  |;
                       LDA.B $83                            ;9F94A5|A583    |;
                       STA.W $0D35                          ;9F94A7|8D350D  |;
                       STA.W $0D01                          ;9F94AA|8D010D  |;
                       RTL                                  ;9F94AD|6B      |;
                       db $AF,$D6,$35,$7E,$0A,$85,$A5,$64   ;9F94AE|        |;
                       db $89,$AA,$AD,$8E,$17,$9F,$78,$35   ;9F94B6|        |;
                       db $7E,$AD,$90,$17,$9F,$88,$35,$7E   ;9F94BE|        |;
                       db $22,$B5,$98,$9D,$A5,$A9,$0A,$85   ;9F94C6|        |;
                       db $89,$AD,$CF,$0A,$C9,$07,$00,$D0   ;9F94CE|        |;
                       db $03,$4C,$1F,$96,$A6,$89,$A9,$04   ;9F94D6|        |;
                       db $00,$DF,$48,$35,$7E,$F0,$36,$DF   ;9F94DE|        |;
                       db $58,$35,$7E,$F0,$30,$64,$B1,$BF   ;9F94E6|        |;
                       db $98,$35,$7E,$89,$01,$00,$F0,$05   ;9F94EE|        |;
                       db $A9,$10,$00,$85,$B1,$BF,$78,$35   ;9F94F6|        |;
                       db $7E,$DF,$88,$35,$7E,$10,$07,$A5   ;9F94FE|        |;
                       db $B1,$49,$10,$00,$85,$B1,$A5,$89   ;9F9506|        |;
                       db $18,$65,$B1,$AA,$BF,$48,$35,$7E   ;9F950E|        |;
                       db $1A,$9F,$48,$35,$7E,$C6,$89,$C6   ;9F9516|        |;
                       db $89,$C6,$A9,$10,$B7,$EE,$CF,$0A   ;9F951E|        |;
                       db $AD,$CF,$0A,$C9,$07,$00,$D0,$03   ;9F9526|        |;
                       db $4C,$C2,$95,$AF,$D6,$35,$7E,$0A   ;9F952E|        |;
                       db $85,$89,$AA,$A9,$04,$00,$DF,$48   ;9F9536|        |;
                       db $35,$7E,$F0,$09,$DF,$58,$35,$7E   ;9F953E|        |;
                       db $F0,$03,$4C,$1E,$96,$AF,$D4,$35   ;9F9546|        |;
                       db $7E,$38,$E9,$03,$00,$30,$04,$70   ;9F954E|        |;
                       db $04,$80,$69,$70,$67,$22,$B5,$98   ;9F9556|        |;
                       db $9D,$A5,$A9,$0A,$85,$89,$A6,$89   ;9F955E|        |;
                       db $A5,$A9,$CF,$D6,$35,$7E,$F0,$33   ;9F9566|        |;
                       db $A9,$04,$00,$DF,$48,$35,$7E,$F0   ;9F956E|        |;
                       db $2A,$DF,$58,$35,$7E,$F0,$24,$BF   ;9F9576|        |;
                       db $48,$35,$7E,$1A,$9F,$48,$35,$7E   ;9F957E|        |;
                       db $22,$58,$86,$80,$4A,$90,$D7,$BF   ;9F9586|        |;
                       db $48,$35,$7E,$3A,$9F,$48,$35,$7E   ;9F958E|        |;
                       db $BF,$58,$35,$7E,$1A,$9F,$58,$35   ;9F9596|        |;
                       db $7E,$80,$C3,$C6,$89,$C6,$89,$C6   ;9F959E|        |;
                       db $A9,$10,$BB,$22,$23,$C6,$9B,$A2   ;9F95A6|        |;
                       db $0E,$00,$BF,$08,$35,$7E,$9F,$18   ;9F95AE|        |;
                       db $35,$7E,$CA,$CA,$10,$F4,$A9,$04   ;9F95B6|        |;
                       db $00,$0C,$DC,$15,$9C,$CF,$0A,$22   ;9F95BE|        |;
                       db $B5,$98,$9D,$A5,$A9,$0A,$85,$89   ;9F95C6|        |;
                       db $64,$B1,$A6,$89,$BF,$48,$35,$7E   ;9F95CE|        |;
                       db $C9,$04,$00,$F0,$0A,$A5,$A9,$0A   ;9F95D6|        |;
                       db $AA,$BF,$26,$DA,$80,$04,$B1,$A5   ;9F95DE|        |;
                       db $89,$A9,$00,$00,$9F,$48,$35,$7E   ;9F95E6|        |;
                       db $9F,$58,$35,$7E,$C6,$89,$C6,$89   ;9F95EE|        |;
                       db $C6,$A9,$10,$D6,$A5,$AD,$0A,$AA   ;9F95F6|        |;
                       db $BF,$26,$DA,$80,$AA,$3A,$2D,$D5   ;9F95FE|        |;
                       db $0A,$8D,$D5,$0A,$A5,$B1,$22,$99   ;9F9606|        |;
                       db $90,$80,$A5,$08,$0C,$D5,$0A,$AF   ;9F960E|        |;
                       db $D4,$35,$7E,$1A,$8F,$D4,$35,$7E   ;9F9616|        |;
                       db $6B,$64,$B1,$A6,$89,$BF,$88,$35   ;9F961E|        |;
                       db $7E,$DF,$78,$35,$7E,$90,$0A,$A5   ;9F9626|        |;
                       db $A9,$0A,$AA,$BF,$26,$DA,$80,$04   ;9F962E|        |;
                       db $B1,$A6,$89,$BF,$98,$35,$7E,$89   ;9F9636|        |;
                       db $01,$00,$F0,$0C,$A5,$A9,$0A,$AA   ;9F963E|        |;
                       db $BF,$26,$DA,$80,$45,$B1,$85,$B1   ;9F9646|        |;
                       db $C6,$89,$C6,$89,$C6,$A9,$10,$CB   ;9F964E|        |;
                       db $A5,$AD,$0A,$AA,$BF,$26,$DA,$80   ;9F9656|        |;
                       db $AA,$3A,$2D,$D5,$0A,$8D,$D5,$0A   ;9F965E|        |;
                       db $A5,$B1,$22,$99,$90,$80,$A5,$08   ;9F9666|        |;
                       db $0C,$D5,$0A,$AF,$D4,$35,$7E,$1A   ;9F966E|        |;
                       db $8F,$D4,$35,$7E,$6B               ;9F9676|        |;
 
          CODE_9F967B:
                       LDA.L $7E34BC                        ;9F967B|AFBC347E|;
                       CMP.W #$0004                         ;9F967F|C90400  |;
                       BNE CODE_9F96B8                      ;9F9682|D034    |;
                       LDA.W JyPadHmAwy                     ;9F9684|AD841C  |;
                       ORA.W $1C86                          ;9F9687|0D861C  |;
                       ORA.W $1C88                          ;9F968A|0D881C  |;
                       ORA.W $1C8A                          ;9F968D|0D8A1C  |;
                       ORA.W $1C8C                          ;9F9690|0D8C1C  |;
                       BEQ CODE_9F96B8                      ;9F9693|F023    |;
                       LDX.W #$0000                         ;9F9695|A20000  |;
 
          CODE_9F9698:
                       PHX                                  ;9F9698|DA      |;
                       LDA.W JyPadHmAwy,X                   ;9F9699|BD841C  |;
                       BEQ CODE_9F96AF                      ;9F969C|F011    |;
                       TXA                                  ;9F969E|8A      |;
                       LSR A                                ;9F969F|4A      |;
                       JSL.L CODE_9B84DC                    ;9F96A0|22DC849B|;
                       LDA.B $B1                            ;9F96A4|A5B1    |;
                       BIT.W #$1000                         ;9F96A6|890010  |;
                       BEQ CODE_9F96AF                      ;9F96A9|F004    |;
                       PLA                                  ;9F96AB|68      |;
                       JMP.W CODE_9F936C                    ;9F96AC|4C6C93  |;
 
          CODE_9F96AF:
                       PLX                                  ;9F96AF|FA      |;
                       INX                                  ;9F96B0|E8      |;
                       INX                                  ;9F96B1|E8      |;
                       CPX.W #$000A                         ;9F96B2|E00A00  |;
                       BCC CODE_9F9698                      ;9F96B5|90E1    |;
                       RTL                                  ;9F96B7|6B      |;
 
          CODE_9F96B8:
                       LDA.W JyPadHmAwy                     ;9F96B8|AD841C  |;
                       ORA.W $1C86                          ;9F96BB|0D861C  |;
                       ORA.W $1C88                          ;9F96BE|0D881C  |;
                       ORA.W $1C8A                          ;9F96C1|0D8A1C  |;
                       ORA.W $1C8C                          ;9F96C4|0D8C1C  |;
                       BNE CODE_9F96DB                      ;9F96C7|D012    |;
                       db $22,$F5,$84,$9B,$A5,$A9,$89,$00   ;9F96C9|        |;
                       db $10,$F0,$03,$4C,$72,$93,$A5,$A9   ;9F96D1|        |;
                       db $D0,$01                           ;9F96D9|        |;
 
          CODE_9F96DB:
                       RTL                                  ;9F96DB|6B      |;
                       db $9C,$D1,$0A,$9C,$C6,$07,$5C,$D2   ;9F96DC|        |;
                       db $82,$9F                           ;9F96E4|        |;
 
          CODE_9F96E6:
                       LDA.W #$0005                         ;9F96E6|A90500  |;
                       STA.W $0AD1                          ;9F96E9|8DD10A  |;
                       LDX.W #$009C                         ;9F96EC|A29C00  |;
                       LDA.W #$9971                         ;9F96EF|A97199  |;
                       JSL.L CODE_80855E                    ;9F96F2|225E8580|;
                       RTL                                  ;9F96F6|6B      |;
 
          CODE_9F96F7:
                       LDA.W #$FFFF                         ;9F96F7|A9FFFF  |;
                       STA.W $0AD1                          ;9F96FA|8DD10A  |;
                       LDX.W #$009C                         ;9F96FD|A29C00  |;
                       LDA.W #$9971                         ;9F9700|A97199  |;
                       JSL.L CODE_80855E                    ;9F9703|225E8580|;
                       RTL                                  ;9F9707|6B      |;
 
          CODE_9F9708:
                       JSL.L CODE_808583                    ;9F9708|22838580|;
                       LDA.W $0AD3                          ;9F970C|ADD30A  |;
                       BNE CODE_9F9708                      ;9F970F|D0F7    |;
                       RTL                                  ;9F9711|6B      |;
                       db $22,$B5,$98,$9D,$A5,$A9,$8D,$31   ;9F9712|        |;
                       db $0D,$0A,$85,$89,$A5,$A9,$CF,$D6   ;9F971A|        |;
                       db $35,$7E,$F0,$16,$A6,$89,$BF,$98   ;9F9722|        |;
                       db $35,$7E,$29,$FD,$FF,$9F,$98,$35   ;9F972A|        |;
                       db $7E,$89,$04,$00,$D0,$04,$22,$B7   ;9F9732|        |;
                       db $9E,$9F,$C6,$89,$C6,$89,$C6,$A9   ;9F973A|        |;
                       db $10,$DA,$6B                       ;9F9742|        |;
 
          CODE_9F9745:
                       STX.B $87                            ;9F9745|8687    |;
                       LDX.W #$0000                         ;9F9747|A20000  |;
 
          CODE_9F974A:
                       LDA.B $A5,X                          ;9F974A|B5A5    |;
                       PHA                                  ;9F974C|48      |;
                       INX                                  ;9F974D|E8      |;
                       INX                                  ;9F974E|E8      |;
                       CPX.W #$0014                         ;9F974F|E01400  |;
                       BNE CODE_9F974A                      ;9F9752|D0F6    |;
                       LDX.B $87                            ;9F9754|A687    |;
                       LDA.B $89                            ;9F9756|A589    |;
                       PHA                                  ;9F9758|48      |;
                       LDA.B $8B                            ;9F9759|A58B    |;
                       PHA                                  ;9F975B|48      |;
                       LDA.B $8D                            ;9F975C|A58D    |;
                       PHA                                  ;9F975E|48      |;
                       LDA.B $8F                            ;9F975F|A58F    |;
                       PHA                                  ;9F9761|48      |;
                       LDA.B $08                            ;9F9762|A508    |;
                       PHA                                  ;9F9764|48      |;
                       JSL.L CODE_9FC372                    ;9F9765|2272C39F|;
                       JSL.L CODE_9EC7BE                    ;9F9769|22BEC79E|;
                       PLA                                  ;9F976D|68      |;
                       STA.B $08                            ;9F976E|8508    |;
                       LDA.W #$0019                         ;9F9770|A91900  |;
                       STA.W $0D0F                          ;9F9773|8D0F0D  |;
                       LDA.L $7E346A                        ;9F9776|AF6A347E|;
                       BNE CODE_9F977F                      ;9F977A|D003    |;
                       INC.W $0D0F                          ;9F977C|EE0F0D  |;
 
          CODE_9F977F:
                       LDA.B $B5                            ;9F977F|A5B5    |;
                       CMP.W #$0003                         ;9F9781|C90300  |;
                       BCS CODE_9F9789                      ;9F9784|B003    |;
                       JMP.W CODE_9F9794                    ;9F9786|4C9497  |;
 
          CODE_9F9789:
                       LDA.W #$0001                         ;9F9789|A90100  |;
                       STA.L $7E35F2                        ;9F978C|8FF2357E|;
                       JSL.L CODE_9F992E                    ;9F9790|222E999F|;
 
          CODE_9F9794:
                       LDA.W #$009F                         ;9F9794|A99F00  |;
                       STA.B $8B                            ;9F9797|858B    |;
                       LDA.W #$97CE                         ;9F9799|A9CE97  |;
                       STA.B $89                            ;9F979C|8589    |;
                       LDY.B $B5                            ;9F979E|A4B5    |;
                       LDA.B [$89],Y                        ;9F97A0|B789    |;
                       CLC                                  ;9F97A2|18      |;
                       ADC.B $89                            ;9F97A3|6589    |;
                       STA.B $89                            ;9F97A5|8589    |;
                       STA.W $1D5A                          ;9F97A7|8D5A1D  |;
                       LDA.B $8A                            ;9F97AA|A58A    |;
                       STA.W $1D5B                          ;9F97AC|8D5B1D  |;
                       JSL.L $001D59                        ;9F97AF|22591D00|;
                       PLA                                  ;9F97B3|68      |;
                       STA.B $8F                            ;9F97B4|858F    |;
                       PLA                                  ;9F97B6|68      |;
                       STA.B $8D                            ;9F97B7|858D    |;
                       PLA                                  ;9F97B9|68      |;
                       STA.B $8B                            ;9F97BA|858B    |;
                       PLA                                  ;9F97BC|68      |;
                       STA.B $89                            ;9F97BD|8589    |;
                       STX.B $87                            ;9F97BF|8687    |;
                       LDX.W #$0012                         ;9F97C1|A21200  |;
 
          CODE_9F97C4:
                       PLA                                  ;9F97C4|68      |;
                       STA.B $A5,X                          ;9F97C5|95A5    |;
                       DEX                                  ;9F97C7|CA      |;
                       DEX                                  ;9F97C8|CA      |;
                       BPL CODE_9F97C4                      ;9F97C9|10F9    |;
                       LDX.B $87                            ;9F97CB|A687    |;
                       RTL                                  ;9F97CD|6B      |;
                       db $0C,$00,$A2,$00,$0B,$01,$33,$01   ;9F97CE|        |;
                       db $DA,$00                           ;9F97D6|        |;
                       db $E3,$00                           ;9F97D8|        |;
                       ASL.B $A5                            ;9F97DA|06A5    |;
                       LDA.B zpCurntTeamLoopVal             ;9F97DC|A591    |;
                       BEQ CODE_9F97E3                      ;9F97DE|F003    |;
                       LDA.W #$0034                         ;9F97E0|A93400  |;
 
          CODE_9F97E3:
                       ADC.B $A5                            ;9F97E3|65A5    |;
                       TAY                                  ;9F97E5|A8      |;
                       LDA.W $1852,Y                        ;9F97E6|B95218  |;
                       STA.B $A5                            ;9F97E9|85A5    |;
                       BPL UNREACH_9F9811                   ;9F97EB|1024    |;
                       EOR.W #$FFFF                         ;9F97ED|49FFFF  |;
                       STA.B $A5                            ;9F97F0|85A5    |;
                       CMP.W #$0004                         ;9F97F2|C90400  |;
                       BCC CODE_9F9803                      ;9F97F5|900C    |;
                       db $A9,$01,$00,$85,$A5,$80,$05,$A9   ;9F97F7|        |;
                       db $03,$00,$85,$A5                   ;9F97FF|        |;
 
          CODE_9F9803:
                       LDA.W #$009F                         ;9F9803|A99F00  |;
                       STA.B $8F                            ;9F9806|858F    |;
                       LDA.W #$9848                         ;9F9808|A94898  |;
                       STA.B $8D                            ;9F980B|858D    |;
                       JML.L CODE_9ECFC6                    ;9F980D|5CC6CF9E|;
 
       UNREACH_9F9811:
                       db $A5,$A5,$89,$00,$10,$D0,$E6,$A5   ;9F9811|        |;
                       db $A5,$85,$A9,$29,$FF,$0F,$85,$A5   ;9F9819|        |;
                       db $22,$D7,$A3,$9F,$22,$BE,$C7,$9E   ;9F9821|        |;
                       db $A9,$04,$00,$85,$A5,$A9,$00,$40   ;9F9829|        |;
                       db $14,$A9,$F0,$05,$A9,$05,$00,$85   ;9F9831|        |;
                       db $A5,$A9,$9F,$00,$85,$8F,$A9,$48   ;9F9839|        |;
                       db $98,$85,$8D,$5C,$C6,$CF,$9E       ;9F9841|        |;
                       db $08,$00,$49,$63,$65,$20,$20,$20   ;9F9848|        |;
                       db $08,$00,$42,$65,$6E,$63,$68,$20   ;9F9850|        |;
                       db $08                               ;9F9858|        |;
                       db $00,$49,$6E,$6A,$20,$50,$20,$08   ;9F9859|        |;
                       db $00,$49,$6E,$6A,$20,$47,$20,$04   ;9F9861|        |;
                       db $00,$20,$20,$04,$00,$20,$43       ;9F9869|        |;
                       ASL.B $A5                            ;9F9870|06A5    |;
                       LDA.B zpCurntTeamLoopVal             ;9F9872|A591    |;
                       BEQ CODE_9F9879                      ;9F9874|F003    |;
                       LDA.W #$0034                         ;9F9876|A93400  |;
 
          CODE_9F9879:
                       ADC.B $A5                            ;9F9879|65A5    |;
                       TAY                                  ;9F987B|A8      |;
                       LDA.W $17EA,Y                        ;9F987C|B9EA17  |;
                       STA.B $08                            ;9F987F|8508    |;
                       LDA.L $7E34C6                        ;9F9881|AFC6347E|;
                       CMP.W #$0002                         ;9F9885|C90200  |;
                       BNE CODE_9F988F                      ;9F9888|D005    |;
                       db $A9,$00,$10,$85,$08               ;9F988A|        |;
 
          CODE_9F988F:
                       LDA.W #$0028                         ;9F988F|A92800  |;
                       STA.B $04                            ;9F9892|8504    |;
                       PHX                                  ;9F9894|DA      |;
                       JSL.L CODE_8092FD                    ;9F9895|22FD9280|;
                       PLX                                  ;9F9899|FA      |;
                       LDA.B $00                            ;9F989A|A500    |;
                       CMP.W #$0065                         ;9F989C|C96500  |;
                       BCC CODE_9F98A4                      ;9F989F|9003    |;
                       LDA.W #$0064                         ;9F98A1|A96400  |;
 
          CODE_9F98A4:
                       STA.B $A5                            ;9F98A4|85A5    |;
                       BRA CODE_9F98B1                      ;9F98A6|8009    |;
                       db $A5,$A5,$29,$0E,$00,$85,$A5,$C6   ;9F98A8|        |;
                       db $A9                               ;9F98B0|        |;
 
          CODE_9F98B1:
                       LDA.W #$0004                         ;9F98B1|A90400  |;
                       STA.B $A9                            ;9F98B4|85A9    |;
                       JSL.L CODE_9FC623                    ;9F98B6|2223C69F|;
                       JSL.L CODE_9EC7BE                    ;9F98BA|22BEC79E|;
                       LDA.B $8F                            ;9F98BE|A58F    |;
                       PHA                                  ;9F98C0|48      |;
                       LDA.B $8D                            ;9F98C1|A58D    |;
                       PHA                                  ;9F98C3|48      |;
                       LDA.W #$009C                         ;9F98C4|A99C00  |;
                       STA.B $8F                            ;9F98C7|858F    |;
                       LDA.W #$F813                         ;9F98C9|A913F8  |;
                       STA.B $8D                            ;9F98CC|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F98CE|22BEC79E|;
                       PLA                                  ;9F98D2|68      |;
                       STA.B $8D                            ;9F98D3|858D    |;
                       PLA                                  ;9F98D5|68      |;
                       STA.B $8F                            ;9F98D6|858F    |;
                       RTL                                  ;9F98D8|6B      |;
                       LDA.B $A5                            ;9F98D9|A5A5    |;
                       AND.W #$0001                         ;9F98DB|290100  |;
                       EOR.W #$0001                         ;9F98DE|490100  |;
                       STA.B $A5                            ;9F98E1|85A5    |;
                       LDA.W #$009F                         ;9F98E3|A99F00  |;
                       STA.B $8F                            ;9F98E6|858F    |;
                       LDA.W #$98F1                         ;9F98E8|A9F198  |;
                       STA.B $8D                            ;9F98EB|858D    |;
                       JML.L CODE_9ECFC6                    ;9F98ED|5CC6CF9E|;
                       db $08,$00,$52,$69,$67,$68,$74,$20   ;9F98F1|        |;
                       db $08,$00,$4C,$65,$66,$74,$20,$20   ;9F98F9|        |;
                       LDA.B $A5                            ;9F9901|A5A5    |;
                       ASL A                                ;9F9903|0A      |;
                       ASL A                                ;9F9904|0A      |;
                       ASL A                                ;9F9905|0A      |;
                       ADC.W #$008C                         ;9F9906|698C00  |;
                       STA.B $A5                            ;9F9909|85A5    |;
                       JSL.L CODE_9FC5EB                    ;9F990B|22EBC59F|;
                       JSL.L CODE_9EC7BE                    ;9F990F|22BEC79E|;
                       LDA.B $8F                            ;9F9913|A58F    |;
                       PHA                                  ;9F9915|48      |;
                       LDA.B $8D                            ;9F9916|A58D    |;
                       PHA                                  ;9F9918|48      |;
                       LDA.W #$009C                         ;9F9919|A99C00  |;
                       STA.B $8F                            ;9F991C|858F    |;
                       LDA.W #$F817                         ;9F991E|A917F8  |;
                       STA.B $8D                            ;9F9921|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F9923|22BEC79E|;
                       PLA                                  ;9F9927|68      |;
                       STA.B $8D                            ;9F9928|858D    |;
                       PLA                                  ;9F992A|68      |;
                       STA.B $8F                            ;9F992B|858F    |;
                       RTL                                  ;9F992D|6B      |;
 
          CODE_9F992E:
                       LDA.B $A5                            ;9F992E|A5A5    |;
                       ASL A                                ;9F9930|0A      |;
                       ADC.B $A5                            ;9F9931|65A5    |;
                       ASL A                                ;9F9933|0A      |;
                       ASL A                                ;9F9934|0A      |;
                       STA.B $00                            ;9F9935|8500    |;
                       STZ.B $A7                            ;9F9937|64A7    |;
                       LDY.B zpCurntTeamLoopVal             ;9F9939|A491    |;
                       BEQ CODE_9F9945                      ;9F993B|F008    |;
                       LDA.B $00                            ;9F993D|A500    |;
                       CLC                                  ;9F993F|18      |;
                       ADC.W #$0138                         ;9F9940|693801  |;
                       STA.B $00                            ;9F9943|8500    |;
 
          CODE_9F9945:
                       LDA.W #$009C                         ;9F9945|A99C00  |;
                       STA.B $8B                            ;9F9948|858B    |;
                       LDA.W $1CDC,Y                        ;9F994A|B9DC1C  |;
                       STA.B $89                            ;9F994D|8589    |;
                       CLC                                  ;9F994F|18      |;
                       LDY.W #$0000                         ;9F9950|A00000  |;
                       ADC.B [$89],Y                        ;9F9953|7789    |; Loads Team Header Data during Matchups Screen
                       STA.B $89                            ;9F9955|8589    |;
                       DEC.B $A5                            ;9F9957|C6A5    |;
                       BMI CODE_9F9969                      ;9F9959|300E    |;
 
          CODE_9F995B:
                       LDA.B $89                            ;9F995B|A589    |;
                       CLC                                  ;9F995D|18      |;
                       ADC.B [$89]                          ;9F995E|6789    |;
                       ADC.W #$0008                         ;9F9960|690800  |;
                       STA.B $89                            ;9F9963|8589    |;
                       DEC.B $A5                            ;9F9965|C6A5    |;
                       BPL CODE_9F995B                      ;9F9967|10F2    |;
 
          CODE_9F9969:
                       LDA.B [$89]                          ;9F9969|A789    |;
                       CLC                                  ;9F996B|18      |;
                       ADC.B $89                            ;9F996C|6589    |;
                       STA.B $89                            ;9F996E|8589    |;
                       STZ.B $A5                            ;9F9970|64A5    |;
                       STZ.B $A9                            ;9F9972|64A9    |;
                       PHX                                  ;9F9974|DA      |;
                       LDA.W #$0000                         ;9F9975|A90000  |;
 
          CODE_9F9978:
                       STA.B $AD                            ;9F9978|85AD    |;
                       ASL A                                ;9F997A|0A      |;
                       TAX                                  ;9F997B|AA      |;
                       LDA.L DATA8_80DA26,X                 ;9F997C|BF26DA80|;
                       BIT.B $B7                            ;9F9980|24B7    |;
                       BNE CODE_9F9987                      ;9F9982|D003    |;
                       JMP.W CODE_9F9A5C                    ;9F9984|4C5C9A  |;
 
          CODE_9F9987:
                       CPX.W #$000C                         ;9F9987|E00C00  |;
                       BEQ CODE_9F9991                      ;9F998A|F005    |;
                       CPX.W #$001A                         ;9F998C|E01A00  |;
                       BNE CODE_9F9993                      ;9F998F|D002    |;
 
          CODE_9F9991:
                       INC.B $A7                            ;9F9991|E6A7    |;
 
          CODE_9F9993:
                       LDA.W #$000F                         ;9F9993|A90F00  |;
                       SEC                                  ;9F9996|38      |;
                       SBC.B $AD                            ;9F9997|E5AD    |;
                       STA.B $10                            ;9F9999|8510    |;
                       LSR A                                ;9F999B|4A      |;
                       CLC                                  ;9F999C|18      |;
                       ADC.B $89                            ;9F999D|6589    |;
                       STA.B $0C                            ;9F999F|850C    |;
                       LDA.B $8B                            ;9F99A1|A58B    |;
                       STA.B $0E                            ;9F99A3|850E    |;
                       LDA.B [$0C]                          ;9F99A5|A70C    |;
                       STA.B $B1                            ;9F99A7|85B1    |;
                       LDA.B $AD                            ;9F99A9|A5AD    |;
                       LSR A                                ;9F99AB|4A      |;
                       BCC CODE_9F99B6                      ;9F99AC|9008    |;
                       LDA.B $B1                            ;9F99AE|A5B1    |;
                       LSR A                                ;9F99B0|4A      |;
                       LSR A                                ;9F99B1|4A      |;
                       LSR A                                ;9F99B2|4A      |;
                       LSR A                                ;9F99B3|4A      |;
                       STA.B $B1                            ;9F99B4|85B1    |;
 
          CODE_9F99B6:
                       LDA.B $B1                            ;9F99B6|A5B1    |;
                       AND.W #$000F                         ;9F99B8|290F00  |;
                       STA.B $B1                            ;9F99BB|85B1    |;
                       LDA.B $10                            ;9F99BD|A510    |;
                       DEC A                                ;9F99BF|3A      |;
                       DEC A                                ;9F99C0|3A      |;
                       DEC A                                ;9F99C1|3A      |;
                       CMP.W #$0006                         ;9F99C2|C90600  |;
                       BCC CODE_9F99C8                      ;9F99C5|9001    |;
                       DEC A                                ;9F99C7|3A      |;
 
          CODE_9F99C8:
                       CLC                                  ;9F99C8|18      |;
                       ADC.B $00                            ;9F99C9|6500    |;
                       TAX                                  ;9F99CB|AA      |;
                       LDA.L $7E35F2                        ;9F99CC|AFF2357E|;
                       BEQ CODE_9F99D8                      ;9F99D0|F006    |;
                       LDA.W $1A12,X                        ;9F99D2|BD121A  |;
                       AND.W #$00FF                         ;9F99D5|29FF00  |;
 
          CODE_9F99D8:
                       STA.B $16                            ;9F99D8|8516    |;
                       CMP.W #$0080                         ;9F99DA|C98000  |;
                       BCC CODE_9F99E4                      ;9F99DD|9005    |;
                       LDA.W #$0100                         ;9F99DF|A90001  |;
                       SBC.B $16                            ;9F99E2|E516    |;
 
          CODE_9F99E4:
                       STA.B $14                            ;9F99E4|8514    |;
                       ASL A                                ;9F99E6|0A      |;
                       CLC                                  ;9F99E7|18      |;
                       ADC.B $14                            ;9F99E8|6514    |;
                       LSR A                                ;9F99EA|4A      |;
                       LSR A                                ;9F99EB|4A      |;
                       BIT.W #$2000                         ;9F99EC|890020  |;
                       BEQ CODE_9F99F4                      ;9F99EF|F003    |;
                       db $09,$00,$C0                       ;9F99F1|        |;
 
          CODE_9F99F4:
                       STA.B $14                            ;9F99F4|8514    |;
                       LDA.B $16                            ;9F99F6|A516    |;
                       BIT.W #$0080                         ;9F99F8|898000  |;
                       BEQ CODE_9F9A05                      ;9F99FB|F008    |;
                       LDA.W #$0000                         ;9F99FD|A90000  |;
                       SEC                                  ;9F9A00|38      |;
                       SBC.B $14                            ;9F9A01|E514    |;
                       STA.B $14                            ;9F9A03|8514    |;
 
          CODE_9F9A05:
                       LDA.B $B7                            ;9F9A05|A5B7    |;
                       BMI CODE_9F9A3B                      ;9F9A07|3032    |;
                       LDX.B $10                            ;9F9A09|A610    |;
                       LDA.L DATA8_9F9AF8,X                 ;9F9A0B|BFF89A9F|;
                       AND.W #$00FF                         ;9F9A0F|29FF00  |;
                       BEQ CODE_9F9A33                      ;9F9A12|F01F    |;
                       LDA.W #$0012                         ;9F9A14|A91200  |;
                       LDX.B $B1                            ;9F9A17|A6B1    |;
                       JSL.L CODE_808F4C                    ;9F9A19|224C8F80|;
                       CLC                                  ;9F9A1D|18      |;
                       ADC.B $14                            ;9F9A1E|6514    |;
                       BPL CODE_9F9A25                      ;9F9A20|1003    |;
                       LDA.W #$0000                         ;9F9A22|A90000  |;
 
          CODE_9F9A25:
                       CMP.W #$0064                         ;9F9A25|C96400  |;
                       BCC CODE_9F9A2D                      ;9F9A28|9003    |;
                       LDA.W #$0064                         ;9F9A2A|A96400  |;
 
          CODE_9F9A2D:
                       STA.B $A5                            ;9F9A2D|85A5    |; Edit Lines Current Attribute Temp Value. Loops for all players displayred. Except Weight, Handed, Overall
                       PLX                                  ;9F9A2F|FA      |;
                       ;JMP.W CODE_9F9ABD                    ;9F9A30|4CBD9A  |; HIJACK To Show Max Boost if RNG is Negative
                       JMP.W ShowMaxBoost                   ;9F9A30|4C3A9A  |; HIJACK To Show Max Boost if RNG is Negative
 
          CODE_9F9A33:
                       LDA.B $B1                            ;9F9A33|A5B1    |;
                       STA.B $A5                            ;9F9A35|85A5    |;
                       PLX                                  ;9F9A37|FA      |;
                       JMP.W CODE_9F9ABD                    ;9F9A38|4CBD9A  |;
 
          CODE_9F9A3B:
                       LDA.B $10                            ;9F9A3B|A510    |;
                       CLC                                  ;9F9A3D|18      |;
                       ADC.B $08                            ;9F9A3E|6508    |;
                       TAX                                  ;9F9A40|AA      |;
                       LDA.L UNREACH_9F9AD8,X               ;9F9A41|BFD89A9F|;
                       LDX.B $B1                            ;9F9A45|A6B1    |;
                       JSL.L CODE_808F4C                    ;9F9A47|224C8F80|;
                       CLC                                  ;9F9A4B|18      |;
                       ADC.B $A5                            ;9F9A4C|65A5    |;
                       STA.B $A5                            ;9F9A4E|85A5    |;
                       LDA.B $14                            ;9F9A50|A514    |;
                       LDY.B $08                            ;9F9A52|A408    |;
                       BEQ CODE_9F9A57                      ;9F9A54|F001    |;
                       ASL A                                ;9F9A56|0A      |;
 
          CODE_9F9A57:
                       CLC                                  ;9F9A57|18      |;
                       ADC.B $A9                            ;9F9A58|65A9    |;
                       STA.B $A9                            ;9F9A5A|85A9    |;
 
          CODE_9F9A5C:
                       LDA.B $AD                            ;9F9A5C|A5AD    |;
                       INC A                                ;9F9A5E|1A      |;
                       CMP.W #$000F                         ;9F9A5F|C90F00  |;
                       BPL CODE_9F9A67                      ;9F9A62|1003    |;
                       JMP.W CODE_9F9978                    ;9F9A64|4C7899  |;
 
          CODE_9F9A67:
                       LDA.B $A9                            ;9F9A67|A5A9    |;
                       BPL CODE_9F9A94                      ;9F9A69|1029    |;
                       EOR.W #$FFFF                         ;9F9A6B|49FFFF  |;
                       INC A                                ;9F9A6E|1A      |;
                       LDX.B $08                            ;9F9A6F|A608    |;
                       BNE CODE_9F9A79                      ;9F9A71|D006    |;
                       TAX                                  ;9F9A73|AA      |;
                       LDA.W #$000A                         ;9F9A74|A90A00  |;
                       BRA CODE_9F9A7D                      ;9F9A77|8004    |;
 
          CODE_9F9A79:
                       TAX                                  ;9F9A79|AA      |;
                       LDA.W #$0007                         ;9F9A7A|A90700  |;
 
          CODE_9F9A7D:
                       JSL.L CODE_809316                    ;9F9A7D|22169380|;
                       SEC                                  ;9F9A81|38      |;
                       EOR.W #$FFFF                         ;9F9A82|49FFFF  |;
                       ADC.B $A5                            ;9F9A85|65A5    |;
                       STA.B $A5                            ;9F9A87|85A5    |;
                       LDA.B $A5                            ;9F9A89|A5A5    |;
                       BPL CODE_9F9AB4                      ;9F9A8B|1027    |;
                       db $64,$A5,$A9,$00,$00,$80,$20       ;9F9A8D|        |;
 
          CODE_9F9A94:
                       LDX.B $08                            ;9F9A94|A608    |;
                       BNE CODE_9F9A9E                      ;9F9A96|D006    |;
                       TAX                                  ;9F9A98|AA      |;
                       LDA.W #$000A                         ;9F9A99|A90A00  |;
                       BRA CODE_9F9AA2                      ;9F9A9C|8004    |;
 
          CODE_9F9A9E:
                       TAX                                  ;9F9A9E|AA      |;
                       LDA.W #$0007                         ;9F9A9F|A90700  |;
 
          CODE_9F9AA2:
                       JSL.L CODE_809316                    ;9F9AA2|22169380|;
                       CLC                                  ;9F9AA6|18      |;
                       ADC.B $A5                            ;9F9AA7|65A5    |;
                       STA.B $A5                            ;9F9AA9|85A5    |;
                       LDA.B $A5                            ;9F9AAB|A5A5    |;
                       BPL CODE_9F9AB4                      ;9F9AAD|1005    |;
                       db $64,$A5,$A9,$00,$00               ;9F9AAF|        |;
 
          CODE_9F9AB4:
                       STA.B $A5                            ;9F9AB4|85A5    |;
                       PLX                                  ;9F9AB6|FA      |;
                       LDA.B $08                            ;9F9AB7|A508    |;
                       BEQ CODE_9F9ABD                      ;9F9AB9|F002    |;
                       LSR.B $A5                            ;9F9ABB|46A5    |;
 
          CODE_9F9ABD:
                       LDA.B $A7                            ;9F9ABD|A5A7    |;
                       BNE CODE_9F9AD7                      ;9F9ABF|D016    |;
                       LDA.B $A5                            ;9F9AC1|A5A5    |;
                       CMP.W #$0064                         ;9F9AC3|C96400  |;
                       BCC CODE_9F9ACB                      ;9F9AC6|9003    |;
                       LDA.W #$0064                         ;9F9AC8|A96400  |;
 
          CODE_9F9ACB:
                       CMP.W #$0032                         ;9F9ACB|C93200  |;
                       BCS CODE_9F9AD5                      ;9F9ACE|B005    |;
                       LSR A                                ;9F9AD0|4A      |;
                       CLC                                  ;9F9AD1|18      |;
                       ADC.W #$0019                         ;9F9AD2|691900  |;
 
          CODE_9F9AD5:
                       STA.B $A5                            ;9F9AD5|85A5    |;
 
          CODE_9F9AD7:
                       RTL                                  ;9F9AD7|6B      |;
 
       UNREACH_9F9AD8:
                       db $00,$00,$01                       ;9F9AD8|        |;
                       db $02,$03,$03,$02,$01,$02,$01,$03   ;9F9ADB|        |;
                       db $02,$01,$01,$01,$01               ;9F9AE3|        |;
                       db $00,$00,$00                       ;9F9AE8|        |;
                       db $09,$02                           ;9F9AEB|        |;
                       db $02                               ;9F9AED|        |;
                       db $09,$09,$02                       ;9F9AEE|        |;
                       db $02,$02,$02                       ;9F9AF1|        |;
                       db $02,$02,$02,$02                   ;9F9AF4|        |;
 
         DATA8_9F9AF8:
                       db $00                               ;9F9AF8|        |;
                       db $00                               ;9F9AF9|        |;
                       db $00,$01,$01,$01,$01,$01,$01,$00   ;9F9AFA|        |;
                       db $01,$01,$01,$01,$01,$01           ;9F9B02|        |;
 
          CODE_9F9B08:
                       LDA.W period                         ;9F9B08|AD3016  |;
                       XBA                                  ;9F9B0B|EB      |;
                       AND.W #$FF00                         ;9F9B0C|2900FF  |;
                       ASL A                                ;9F9B0F|0A      |;
                       ASL A                                ;9F9B10|0A      |;
                       ASL A                                ;9F9B11|0A      |;
                       ASL A                                ;9F9B12|0A      |;
                       ASL A                                ;9F9B13|0A      |;
                       ASL A                                ;9F9B14|0A      |;
                       ORA.W $1C82                          ;9F9B15|0D821C  |;
                       SEC                                  ;9F9B18|38      |;
                       SBC.W clock_remaining_time           ;9F9B19|ED3216  |;
                       STA.B $A5                            ;9F9B1C|85A5    |;
                       RTL                                  ;9F9B1E|6B      |;
 
          CODE_9F9B1F:
                       PHX                                  ;9F9B1F|DA      |;
                       LDA.L $7E34C2                        ;9F9B20|AFC2347E|;
                       ASL A                                ;9F9B24|0A      |;
                       TAX                                  ;9F9B25|AA      |;
                       LDA.L Period_Length_Arry,X           ;9F9B26|BF2E9B9F|;
                       STA.B $A5                            ;9F9B2A|85A5    |;
                       PLX                                  ;9F9B2C|FA      |;
                       RTL                                  ;9F9B2D|6B      |;
 
   Period_Length_Arry:
                       dw $012C                             ;9F9B2E|        |; 5 minute period length
 
          Ten_min_per:
                       dw $0258                             ;9F9B30|        |; 10 min period length
 
       Twenty_Min_Per:
                       dw $04B0                             ;9F9B32|        |; 20 min period length
 
       Thirty_Sec_Per:
                       dw $001E                             ;9F9B34|        |; 30 second period length
 
          CODE_9F9B36:
                       LDA.B $A5                            ;9F9B36|A5A5    |;
                       PHA                                  ;9F9B38|48      |;
                       LDA.B $A7                            ;9F9B39|A5A7    |;
                       PHA                                  ;9F9B3B|48      |;
                       LDA.B $A9                            ;9F9B3C|A5A9    |;
                       PHA                                  ;9F9B3E|48      |;
                       LDA.B $AB                            ;9F9B3F|A5AB    |;
                       PHA                                  ;9F9B41|48      |;
                       LDA.B $AD                            ;9F9B42|A5AD    |;
                       PHA                                  ;9F9B44|48      |;
                       LDA.B $AF                            ;9F9B45|A5AF    |;
                       PHA                                  ;9F9B47|48      |;
                       STX.B $87                            ;9F9B48|8687    |;
                       LDX.W #$0000                         ;9F9B4A|A20000  |;
 
          CODE_9F9B4D:
                       LDA.B $89,X                          ;9F9B4D|B589    |;
                       PHA                                  ;9F9B4F|48      |;
                       INX                                  ;9F9B50|E8      |;
                       INX                                  ;9F9B51|E8      |;
                       CPX.W #$0010                         ;9F9B52|E01000  |;
                       BNE CODE_9F9B4D                      ;9F9B55|D0F6    |;
                       LDX.B $87                            ;9F9B57|A687    |;
                       LDA.W $15DA                          ;9F9B59|ADDA15  |;
                       BEQ CODE_9F9B61                      ;9F9B5C|F003    |;
                       JMP.W CODE_9F9CFB                    ;9F9B5E|4CFB9C  |;
 
          CODE_9F9B61:
                       LDA.B $8F                            ;9F9B61|A58F    |;
                       PHA                                  ;9F9B63|48      |;
                       LDA.B $8D                            ;9F9B64|A58D    |;
                       PHA                                  ;9F9B66|48      |;
                       LDA.W #$009C                         ;9F9B67|A99C00  |;
                       STA.B $8F                            ;9F9B6A|858F    |;
                       LDA.W #$F81C                         ;9F9B6C|A91CF8  |;
                       STA.B $8D                            ;9F9B6F|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F9B71|22BEC79E|;
                       PLA                                  ;9F9B75|68      |;
                       STA.B $8D                            ;9F9B76|858D    |;
                       PLA                                  ;9F9B78|68      |;
                       STA.B $8F                            ;9F9B79|858F    |;
                       LDA.W #$0009                         ;9F9B7B|A90900  |;
                       STA.B $A5                            ;9F9B7E|85A5    |;
                       LDA.W #$0005                         ;9F9B80|A90500  |;
                       STA.B $A9                            ;9F9B83|85A9    |;
                       JSL.L CODE_9D8000                    ;9F9B85|2200809D|;
                       LDA.L $7E34BC                        ;9F9B89|AFBC347E|;
                       CMP.W #$0004                         ;9F9B8D|C90400  |;
                       BEQ CODE_9F9BD3                      ;9F9B90|F041    |;
                       LDA.B $8F                            ;9F9B92|A58F    |;
                       PHA                                  ;9F9B94|48      |;
                       LDA.B $8D                            ;9F9B95|A58D    |;
                       PHA                                  ;9F9B97|48      |;
                       LDA.W #$009C                         ;9F9B98|A99C00  |;
                       STA.B $8F                            ;9F9B9B|858F    |;
                       LDA.W #$F821                         ;9F9B9D|A921F8  |;
                       STA.B $8D                            ;9F9BA0|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F9BA2|22BEC79E|;
                       PLA                                  ;9F9BA6|68      |;
                       STA.B $8D                            ;9F9BA7|858D    |;
                       PLA                                  ;9F9BA9|68      |;
                       STA.B $8F                            ;9F9BAA|858F    |;
                       LDA.W period                         ;9F9BAC|AD3016  |;
                       STA.B $A5                            ;9F9BAF|85A5    |;
                       CMP.W #$0004                         ;9F9BB1|C90400  |;
                       BNE CODE_9F9BBB                      ;9F9BB4|D005    |;
                       db $CE,$0F,$0D,$E6,$A5               ;9F9BB6|        |;
 
          CODE_9F9BBB:
                       LDA.W #$0080                         ;9F9BBB|A98000  |;
                       STA.B $8F                            ;9F9BBE|858F    |;
                       LDA.W #$D6E1                         ;9F9BC0|A9E1D6  |;
                       STA.B $8D                            ;9F9BC3|858D    |;
                       JSL.L CODE_9ECFC6                    ;9F9BC5|22C6CF9E|;
                       JSL.L CODE_9FBEFD                    ;9F9BC9|22FDBE9F|;
                       JSL.L CODE_9EB735                    ;9F9BCD|2235B79E|;
                       BRA CODE_9F9C05                      ;9F9BD1|8032    |;
 
          CODE_9F9BD3:
                       LDA.B $8F                            ;9F9BD3|A58F    |;
                       PHA                                  ;9F9BD5|48      |;
                       LDA.B $8D                            ;9F9BD6|A58D    |;
                       PHA                                  ;9F9BD8|48      |;
                       LDA.W #$009C                         ;9F9BD9|A99C00  |;
                       STA.B $8F                            ;9F9BDC|858F    |;
                       LDA.W #$F826                         ;9F9BDE|A926F8  |;
                       STA.B $8D                            ;9F9BE1|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F9BE3|22BEC79E|;
                       PLA                                  ;9F9BE7|68      |;
                       STA.B $8D                            ;9F9BE8|858D    |;
                       PLA                                  ;9F9BEA|68      |;
                       STA.B $8F                            ;9F9BEB|858F    |;
                       LDA.W #$0006                         ;9F9BED|A90600  |;
                       STA.W $0D0F                          ;9F9BF0|8D0F0D  |;
                       LDA.W $1D85                          ;9F9BF3|AD851D  |;
                       STA.B $A5                            ;9F9BF6|85A5    |;
                       LDA.W #$0002                         ;9F9BF8|A90200  |;
                       STA.B $A9                            ;9F9BFB|85A9    |;
                       JSL.L CODE_9FC623                    ;9F9BFD|2223C69F|;
                       JSL.L CODE_9EC7BE                    ;9F9C01|22BEC79E|;
 
          CODE_9F9C05:
                       LDA.W $15DC                          ;9F9C05|ADDC15  |;
                       BIT.W #$0001                         ;9F9C08|890100  |;
                       BEQ CODE_9F9C10                      ;9F9C0B|F003    |;
                       db $4C,$D8,$9C                       ;9F9C0D|        |;
 
          CODE_9F9C10:
                       LDA.B $8F                            ;9F9C10|A58F    |;
                       PHA                                  ;9F9C12|48      |;
                       LDA.B $8D                            ;9F9C13|A58D    |;
                       PHA                                  ;9F9C15|48      |;
                       LDA.W #$009C                         ;9F9C16|A99C00  |;
                       STA.B $8F                            ;9F9C19|858F    |;
                       LDA.W #$F830                         ;9F9C1B|A930F8  |;
                       STA.B $8D                            ;9F9C1E|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F9C20|22BEC79E|;
                       PLA                                  ;9F9C24|68      |;
                       STA.B $8D                            ;9F9C25|858D    |;
                       PLA                                  ;9F9C27|68      |;
                       STA.B $8F                            ;9F9C28|858F    |;
                       LDA.W #$0009                         ;9F9C2A|A90900  |;
                       STA.B $A5                            ;9F9C2D|85A5    |;
                       LDA.W #$0005                         ;9F9C2F|A90500  |;
                       STA.B $A9                            ;9F9C32|85A9    |;
                       JSL.L CODE_9D8000                    ;9F9C34|2200809D|;
                       LDA.B $8F                            ;9F9C38|A58F    |;
                       PHA                                  ;9F9C3A|48      |;
                       LDA.B $8D                            ;9F9C3B|A58D    |;
                       PHA                                  ;9F9C3D|48      |;
                       LDA.W #$009C                         ;9F9C3E|A99C00  |;
                       STA.B $8F                            ;9F9C41|858F    |;
                       LDA.W #$F835                         ;9F9C43|A935F8  |;
                       STA.B $8D                            ;9F9C46|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F9C48|22BEC79E|;
                       PLA                                  ;9F9C4C|68      |;
                       STA.B $8D                            ;9F9C4D|858D    |;
                       PLA                                  ;9F9C4F|68      |;
                       STA.B $8F                            ;9F9C50|858F    |;
                       STZ.B $B1                            ;9F9C52|64B1    |;
                       STZ.B zpCurntTeamLoopVal             ;9F9C54|6491    |;
                       JSL.L CODE_9F9DB0                    ;9F9C56|22B09D9F|;
                       LDA.B $8F                            ;9F9C5A|A58F    |;
                       PHA                                  ;9F9C5C|48      |;
                       LDA.B $8D                            ;9F9C5D|A58D    |;
                       PHA                                  ;9F9C5F|48      |;
                       LDA.W #$009C                         ;9F9C60|A99C00  |;
                       STA.B $8F                            ;9F9C63|858F    |;
                       LDA.W #$F83A                         ;9F9C65|A93AF8  |;
                       STA.B $8D                            ;9F9C68|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F9C6A|22BEC79E|;
                       PLA                                  ;9F9C6E|68      |;
                       STA.B $8D                            ;9F9C6F|858D    |;
                       PLA                                  ;9F9C71|68      |;
                       STA.B $8F                            ;9F9C72|858F    |;
                       INC.B $B1                            ;9F9C74|E6B1    |;
                       INC.B zpCurntTeamLoopVal             ;9F9C76|E691    |;
                       INC.B zpCurntTeamLoopVal             ;9F9C78|E691    |;
                       JSL.L CODE_9F9DB0                    ;9F9C7A|22B09D9F|;
                       STZ.B zpCurntTeamLoopVal             ;9F9C7E|6491    |;
                       LDA.W #$0002                         ;9F9C80|A90200  |;
                       STA.B $95                            ;9F9C83|8595    |;
                       LDA.W $15D4                          ;9F9C85|ADD415  |;
                       BIT.W #$0002                         ;9F9C88|890200  |;
                       BNE CODE_9F9C94                      ;9F9C8B|D007    |;
                       STZ.B $95                            ;9F9C8D|6495    |;
                       LDA.W #$0002                         ;9F9C8F|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9F9C92|8591    |;
 
          CODE_9F9C94:
                       LDA.B $8F                            ;9F9C94|A58F    |;
                       PHA                                  ;9F9C96|48      |;
                       LDA.B $8D                            ;9F9C97|A58D    |;
                       PHA                                  ;9F9C99|48      |;
                       LDA.W #$009C                         ;9F9C9A|A99C00  |;
                       STA.B $8F                            ;9F9C9D|858F    |;
                       LDA.W #$F83F                         ;9F9C9F|A93FF8  |;
                       STA.B $8D                            ;9F9CA2|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F9CA4|22BEC79E|;
                       PLA                                  ;9F9CA8|68      |;
                       STA.B $8D                            ;9F9CA9|858D    |;
                       PLA                                  ;9F9CAB|68      |;
                       STA.B $8F                            ;9F9CAC|858F    |;
                       JSL.L CODE_9F9DFA                    ;9F9CAE|22FA9D9F|;
                       LDX.B zpCurntTeamLoopVal             ;9F9CB2|A691    |;
                       LDA.B $95                            ;9F9CB4|A595    |;
                       STA.B zpCurntTeamLoopVal             ;9F9CB6|8591    |;
                       STX.B $95                            ;9F9CB8|8695    |;
                       LDA.B $8F                            ;9F9CBA|A58F    |;
                       PHA                                  ;9F9CBC|48      |;
                       LDA.B $8D                            ;9F9CBD|A58D    |;
                       PHA                                  ;9F9CBF|48      |;
                       LDA.W #$009C                         ;9F9CC0|A99C00  |;
                       STA.B $8F                            ;9F9CC3|858F    |;
                       LDA.W #$F844                         ;9F9CC5|A944F8  |;
                       STA.B $8D                            ;9F9CC8|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F9CCA|22BEC79E|;
                       PLA                                  ;9F9CCE|68      |;
                       STA.B $8D                            ;9F9CCF|858D    |;
                       PLA                                  ;9F9CD1|68      |;
                       STA.B $8F                            ;9F9CD2|858F    |;
                       JSL.L CODE_9F9DFA                    ;9F9CD4|22FA9D9F|;
 
          CODE_9F9CD8:
                       STX.B $87                            ;9F9CD8|8687    |;
                       LDX.W #$000E                         ;9F9CDA|A20E00  |;
 
          CODE_9F9CDD:
                       PLA                                  ;9F9CDD|68      |;
                       STA.B $89,X                          ;9F9CDE|9589    |;
                       DEX                                  ;9F9CE0|CA      |;
                       DEX                                  ;9F9CE1|CA      |;
                       BPL CODE_9F9CDD                      ;9F9CE2|10F9    |;
                       LDX.B $87                            ;9F9CE4|A687    |;
                       PLA                                  ;9F9CE6|68      |;
                       STA.B $AF                            ;9F9CE7|85AF    |;
                       PLA                                  ;9F9CE9|68      |;
                       STA.B $AD                            ;9F9CEA|85AD    |;
                       PLA                                  ;9F9CEC|68      |;
                       STA.B $AB                            ;9F9CED|85AB    |;
                       PLA                                  ;9F9CEF|68      |;
                       STA.B $A9                            ;9F9CF0|85A9    |;
                       PLA                                  ;9F9CF2|68      |;
                       STA.B $A7                            ;9F9CF3|85A7    |;
                       PLA                                  ;9F9CF5|68      |;
                       STA.B $A5                            ;9F9CF6|85A5    |;
                       LDX.B $95                            ;9F9CF8|A695    |;
                       RTL                                  ;9F9CFA|6B      |;
 
          CODE_9F9CFB:
                       LDA.B $8F                            ;9F9CFB|A58F    |;
                       PHA                                  ;9F9CFD|48      |;
                       LDA.B $8D                            ;9F9CFE|A58D    |;
                       PHA                                  ;9F9D00|48      |;
                       LDA.W #$009C                         ;9F9D01|A99C00  |;
                       STA.B $8F                            ;9F9D04|858F    |;
                       LDA.W #$F849                         ;9F9D06|A949F8  |;
                       STA.B $8D                            ;9F9D09|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F9D0B|22BEC79E|;
                       PLA                                  ;9F9D0F|68      |;
                       STA.B $8D                            ;9F9D10|858D    |;
                       PLA                                  ;9F9D12|68      |;
                       STA.B $8F                            ;9F9D13|858F    |;
                       JSL.L CODE_9F9D80                    ;9F9D15|22809D9F|;
                       LDA.B $A9                            ;9F9D19|A5A9    |;
                       PHA                                  ;9F9D1B|48      |;
                       LDA.B $8F                            ;9F9D1C|A58F    |;
                       PHA                                  ;9F9D1E|48      |;
                       LDA.B $8D                            ;9F9D1F|A58D    |;
                       PHA                                  ;9F9D21|48      |;
                       LDA.W #$009C                         ;9F9D22|A99C00  |;
                       STA.B $8F                            ;9F9D25|858F    |;
                       LDA.W #$F84E                         ;9F9D27|A94EF8  |;
                       STA.B $8D                            ;9F9D2A|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F9D2C|22BEC79E|;
                       PLA                                  ;9F9D30|68      |;
                       STA.B $8D                            ;9F9D31|858D    |;
                       PLA                                  ;9F9D33|68      |;
                       STA.B $8F                            ;9F9D34|858F    |;
                       LDA.W $178E                          ;9F9D36|AD8E17  |;
                       STA.B $A5                            ;9F9D39|85A5    |;
                       JSL.L CODE_9F9E15                    ;9F9D3B|22159E9F|;
                       JSL.L CODE_9FC5EB                    ;9F9D3F|22EBC59F|;
                       JSL.L CODE_9F9DFB                    ;9F9D43|22FB9D9F|;
                       JSL.L CODE_9ECE15                    ;9F9D47|2215CE9E|;
                       LDA.B $8F                            ;9F9D4B|A58F    |;
                       PHA                                  ;9F9D4D|48      |;
                       LDA.B $8D                            ;9F9D4E|A58D    |;
                       PHA                                  ;9F9D50|48      |;
                       LDA.W #$009C                         ;9F9D51|A99C00  |;
                       STA.B $8F                            ;9F9D54|858F    |;
                       LDA.W #$F853                         ;9F9D56|A953F8  |;
                       STA.B $8D                            ;9F9D59|858D    |;
                       JSL.L CODE_9EC7BE                    ;9F9D5B|22BEC79E|;
                       PLA                                  ;9F9D5F|68      |;
                       STA.B $8D                            ;9F9D60|858D    |;
                       PLA                                  ;9F9D62|68      |;
                       STA.B $8F                            ;9F9D63|858F    |;
                       LDA.W $1790                          ;9F9D65|AD9017  |;
                       STA.B $A5                            ;9F9D68|85A5    |;
                       JSL.L CODE_9F9E15                    ;9F9D6A|22159E9F|;
                       JSL.L CODE_9FC5EB                    ;9F9D6E|22EBC59F|;
                       JSL.L CODE_9F9DFB                    ;9F9D72|22FB9D9F|;
                       JSL.L CODE_9ECE15                    ;9F9D76|2215CE9E|;
                       PLA                                  ;9F9D7A|68      |;
                       STA.B $A9                            ;9F9D7B|85A9    |;
                       JMP.W CODE_9F9CD8                    ;9F9D7D|4CD89C  |;
 
          CODE_9F9D80:
                       LDA.W $1630                          ;9F9D80|AD3016  |;
                       STA.B $A5                            ;9F9D83|85A5    |;
                       CMP.W #$0004                         ;9F9D85|C90400  |;
                       BNE CODE_9F9D8F                      ;9F9D88|D005    |;
                       db $CE,$0F,$0D,$E6,$A5               ;9F9D8A|        |;
 
          CODE_9F9D8F:
                       LDA.W #$0080                         ;9F9D8F|A98000  |;
                       STA.B $8B                            ;9F9D92|858B    |;
                       LDA.W #$D6E1                         ;9F9D94|A9E1D6  |;
                       STA.B $89                            ;9F9D97|8589    |;
 
          CODE_9F9D99:
                       LDA.B $8B                            ;9F9D99|A58B    |;
                       STA.B $8F                            ;9F9D9B|858F    |;
                       LDA.B $89                            ;9F9D9D|A589    |;
                       STA.B $8D                            ;9F9D9F|858D    |;
                       LDA.B [$89]                          ;9F9DA1|A789    |;
                       CLC                                  ;9F9DA3|18      |;
                       ADC.B $89                            ;9F9DA4|6589    |;
                       STA.B $89                            ;9F9DA6|8589    |;
                       DEC.B $A5                            ;9F9DA8|C6A5    |;
                       BPL CODE_9F9D99                      ;9F9DAA|10ED    |;
                       JML.L CODE_9EC7BE                    ;9F9DAC|5CBEC79E|;
 
          CODE_9F9DB0:
                       JSL.L CODE_9FBD66                    ;9F9DB0|2266BD9F|;
                       LDY.B zpCurntTeamLoopVal             ;9F9DB4|A491    |;
                       LDA.W Score_HmAw,Y                   ;9F9DB6|B98E17  |;
                       STA.B $A5                            ;9F9DB9|85A5    |;
                       JSL.L CODE_9F9E15                    ;9F9DBB|22159E9F|;
                       LDA.W #$0000                         ;9F9DBF|A90000  |;
                       STA.B $8F                            ;9F9DC2|858F    |;
                       LDA.W #$0A2A                         ;9F9DC4|A92A0A  |;
                       STA.B $8D                            ;9F9DC7|858D    |;
                       LDA.W #$0004                         ;9F9DC9|A90400  |;
                       STA.B [$8D]                          ;9F9DCC|878D    |;
                       LDA.W #$0020                         ;9F9DCE|A92000  |;
                       STA.W $0A2C                          ;9F9DD1|8D2C0A  |;
                       LDA.B $A5                            ;9F9DD4|A5A5    |;
                       STA.B $08                            ;9F9DD6|8508    |;
                       LDA.W #$000A                         ;9F9DD8|A90A00  |;
                       STA.B $04                            ;9F9DDB|8504    |;
                       PHX                                  ;9F9DDD|DA      |;
                       JSL.L CODE_8092FD                    ;9F9DDE|22FD9280|;
                       PLX                                  ;9F9DE2|FA      |;
                       LDA.B $00                            ;9F9DE3|A500    |;
                       BEQ CODE_9F9DED                      ;9F9DE5|F006    |;
                       db $69,$30,$00,$8D,$2C,$0A           ;9F9DE7|        |;
 
          CODE_9F9DED:
                       LDA.W $4216                          ;9F9DED|AD1642  |;
                       ADC.W #$0030                         ;9F9DF0|693000  |;
                       STA.W $0A2D                          ;9F9DF3|8D2D0A  |;
                       JML.L CODE_9EC7BE                    ;9F9DF6|5CBEC79E|;
 
          CODE_9F9DFA:
                       RTL                                  ;9F9DFA|6B      |;
 
          CODE_9F9DFB:
                       LDY.W #$0002                         ;9F9DFB|A00200  |;
 
          CODE_9F9DFE:
                       DEC.W $0D0F                          ;9F9DFE|CE0F0D  |;
                       LDA.B [$8D],Y                        ;9F9E01|B78D    |;
                       AND.W #$00FF                         ;9F9E03|29FF00  |;
                       CMP.W #$0031                         ;9F9E06|C93100  |;
                       BEQ CODE_9F9E0E                      ;9F9E09|F003    |;
                       DEC.W $0D0F                          ;9F9E0B|CE0F0D  |;
 
          CODE_9F9E0E:
                       INY                                  ;9F9E0E|C8      |;
                       TYA                                  ;9F9E0F|98      |;
                       CMP.B [$8D]                          ;9F9E10|C78D    |;
                       BCC CODE_9F9DFE                      ;9F9E12|90EA    |;
                       RTL                                  ;9F9E14|6B      |;
 
          CODE_9F9E15:
                       LDA.B $A5                            ;9F9E15|A5A5    |;
                       CMP.W #$0064                         ;9F9E17|C96400  |;
                       BCC CODE_9F9E21                      ;9F9E1A|9005    |;
                       db $E9,$64,$00,$80,$F6               ;9F9E1C|        |;
 
          CODE_9F9E21:
                       STA.B $A5                            ;9F9E21|85A5    |;
                       RTL                                  ;9F9E23|6B      |;
 
          CODE_9F9E24:
                       LDA.W #$0001                         ;9F9E24|A90100  |;
                       STA.L $7E3462                        ;9F9E27|8F62347E|;
                       LDA.B zpCurntTeamLoopVal             ;9F9E2B|A591    |;
                       PHA                                  ;9F9E2D|48      |;
                       STZ.B zpCurntTeamLoopVal             ;9F9E2E|6491    |;
                       LDA.W $1C98                          ;9F9E30|AD981C  |;
                       STA.B $A9                            ;9F9E33|85A9    |;
                       LDA.W #$0014                         ;9F9E35|A91400  |;
                       STA.W $0D0F                          ;9F9E38|8D0F0D  |;
                       LDA.W #$0002                         ;9F9E3B|A90200  |;
                       STA.W $0D11                          ;9F9E3E|8D110D  |;
                       JSL.L CODE_9FBE08                    ;9F9E41|2208BE9F|;
                       LDA.W #$0002                         ;9F9E45|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9F9E48|8591    |;
                       LDA.W #$0003                         ;9F9E4A|A90300  |;
                       STA.W $0D0F                          ;9F9E4D|8D0F0D  |;
                       LDA.W $1C9A                          ;9F9E50|AD9A1C  |;
                       STA.B $A9                            ;9F9E53|85A9    |;
                       JSL.L CODE_9FBE08                    ;9F9E55|2208BE9F|;
                       PLA                                  ;9F9E59|68      |;
                       STA.B zpCurntTeamLoopVal             ;9F9E5A|8591    |;
                       LDA.W #$0000                         ;9F9E5C|A90000  |;
                       STA.L $7E3462                        ;9F9E5F|8F62347E|;
                       LDA.W #$0000                         ;9F9E63|A90000  |;
                       STA.L $7E3460                        ;9F9E66|8F60347E|;
                       LDA.W #$1D47                         ;9F9E6A|A9471D  |;
                       STA.L $7F76C2                        ;9F9E6D|8FC2767F|;
                       STA.L $7F76E2                        ;9F9E71|8FE2767F|;
                       LDA.L $7E3476                        ;9F9E75|AF76347E|;
                       BNE CODE_9F9E86                      ;9F9E79|D00B    |;
                       LDA.W #$FFFF                         ;9F9E7B|A9FFFF  |;
                       STA.L $7F76DE                        ;9F9E7E|8FDE767F|;
                       STA.L $7F76FE                        ;9F9E82|8FFE767F|;
 
          CODE_9F9E86:
                       LDA.W #$007F                         ;9F9E86|A97F00  |;
                       STA.B $0E                            ;9F9E89|850E    |;
                       LDA.W #$75C0                         ;9F9E8B|A9C075  |;
                       STA.B $0C                            ;9F9E8E|850C    |;
                       LDY.W #$0060                         ;9F9E90|A06000  |;
                       LDX.W #$0020                         ;9F9E93|A22000  |;
                       JSL.L CODE_808723                    ;9F9E96|22238780|;
                       LDA.W #$007F                         ;9F9E9A|A97F00  |;
                       STA.B $0E                            ;9F9E9D|850E    |;
                       LDA.W #$76C0                         ;9F9E9F|A9C076  |;
                       STA.B $0C                            ;9F9EA2|850C    |;
                       LDY.W #$00E0                         ;9F9EA4|A0E000  |;
                       LDX.W #$0020                         ;9F9EA7|A22000  |;
                       JSL.L CODE_808583                    ;9F9EAA|22838580|;
                       JSL.L CODE_808723                    ;9F9EAE|22238780|;
                       JSL.L CODE_9DD923                    ;9F9EB2|2223D99D|;
                       RTL                                  ;9F9EB6|6B      |;
 
          CODE_9F9EB7:
                       PHX                                  ;9F9EB7|DA      |;
                       LDX.B $89                            ;9F9EB8|A689    |;
                       LDA.L $7E3568,X                      ;9F9EBA|BF68357E|;
                       CMP.W #$0004                         ;9F9EBE|C90400  |;
                       BCC CODE_9F9EC6                      ;9F9EC1|9003    |;
                       db $4C,$8F,$9F                       ;9F9EC3|        |;
 
          CODE_9F9EC6:
                       LDA.B $A5                            ;9F9EC6|A5A5    |;
                       PHA                                  ;9F9EC8|48      |;
                       LDA.B $A7                            ;9F9EC9|A5A7    |;
                       PHA                                  ;9F9ECB|48      |;
                       LDA.B $A9                            ;9F9ECC|A5A9    |;
                       PHA                                  ;9F9ECE|48      |;
                       LDA.B $AB                            ;9F9ECF|A5AB    |;
                       PHA                                  ;9F9ED1|48      |;
                       LDA.B $89                            ;9F9ED2|A589    |;
                       PHA                                  ;9F9ED4|48      |;
                       LDA.B $8B                            ;9F9ED5|A58B    |;
                       PHA                                  ;9F9ED7|48      |;
                       LDA.B $8D                            ;9F9ED8|A58D    |;
                       PHA                                  ;9F9EDA|48      |;
                       LDA.B $8F                            ;9F9EDB|A58F    |;
                       PHA                                  ;9F9EDD|48      |;
                       LDX.B $89                            ;9F9EDE|A689    |;
                       LDA.L $7E3568,X                      ;9F9EE0|BF68357E|;
                       CMP.W #$0003                         ;9F9EE4|C90300  |;
                       BNE CODE_9F9F34                      ;9F9EE7|D04B    |;
                       db $A9,$05,$00,$9F,$68,$35,$7E,$BF   ;9F9EE9|        |;
                       db $78,$35,$7E,$38,$FF,$88,$35,$7E   ;9F9EF1|        |;
                       db $89,$00,$80,$F0,$04,$49,$FF,$FF   ;9F9EF9|        |;
                       db $1A,$C9,$02,$00,$B0,$70,$AD,$30   ;9F9F01|        |;
                       db $16,$C9,$04,$00,$D0,$11,$BF,$78   ;9F9F09|        |;
                       db $35,$7E,$DF,$88,$35,$7E,$D0,$5E   ;9F9F11|        |;
                       db $1A,$9F,$78,$35,$7E,$80,$57,$A9   ;9F9F19|        |;
                       db $03,$00,$9F,$68,$35,$7E,$BF,$98   ;9F9F21|        |;
                       db $35,$7E,$09,$02,$00,$9F,$98,$35   ;9F9F29|        |;
                       db $7E,$80,$43                       ;9F9F31|        |;
 
          CODE_9F9F34:
                       LDA.L $7E3568,X                      ;9F9F34|BF68357E|;
                       INC A                                ;9F9F38|1A      |;
                       STA.L $7E3568,X                      ;9F9F39|9F68357E|;
                       LDA.L $7E3528,X                      ;9F9F3D|BF28357E|;
                       STA.B $A5                            ;9F9F41|85A5    |;
                       LDA.L $7E3538,X                      ;9F9F43|BF38357E|;
                       STA.B $A9                            ;9F9F47|85A9    |;
                       JSL.L CODE_9F9F91                    ;9F9F49|22919F9F|;
                       LDX.B $89                            ;9F9F4D|A689    |;
                       LDA.L $7E3578,X                      ;9F9F4F|BF78357E|;
                       CLC                                  ;9F9F53|18      |;
                       ADC.B $A5                            ;9F9F54|65A5    |;
                       STA.L $7E3578,X                      ;9F9F56|9F78357E|;
                       LDA.L $7E3538,X                      ;9F9F5A|BF38357E|;
                       STA.B $A5                            ;9F9F5E|85A5    |;
                       LDA.L $7E3528,X                      ;9F9F60|BF28357E|;
                       STA.B $A9                            ;9F9F64|85A9    |;
                       JSL.L CODE_9F9F91                    ;9F9F66|22919F9F|;
                       LDX.B $89                            ;9F9F6A|A689    |;
                       LDA.L $7E3588,X                      ;9F9F6C|BF88357E|;
                       CLC                                  ;9F9F70|18      |;
                       ADC.B $A5                            ;9F9F71|65A5    |;
                       STA.L $7E3588,X                      ;9F9F73|9F88357E|;
                       PLA                                  ;9F9F77|68      |;
                       STA.B $8F                            ;9F9F78|858F    |;
                       PLA                                  ;9F9F7A|68      |;
                       STA.B $8D                            ;9F9F7B|858D    |;
                       PLA                                  ;9F9F7D|68      |;
                       STA.B $8B                            ;9F9F7E|858B    |;
                       PLA                                  ;9F9F80|68      |;
                       STA.B $89                            ;9F9F81|8589    |;
                       PLA                                  ;9F9F83|68      |;
                       STA.B $AB                            ;9F9F84|85AB    |;
                       PLA                                  ;9F9F86|68      |;
                       STA.B $A9                            ;9F9F87|85A9    |;
                       PLA                                  ;9F9F89|68      |;
                       STA.B $A7                            ;9F9F8A|85A7    |;
                       PLA                                  ;9F9F8C|68      |;
                       STA.B $A5                            ;9F9F8D|85A5    |;
                       PLX                                  ;9F9F8F|FA      |;
                       RTL                                  ;9F9F90|6B      |;
 
          CODE_9F9F91:
                       ASL.B $A5                            ;9F9F91|06A5    |;
                       ASL.B $A5                            ;9F9F93|06A5    |;
                       LDA.W #$009C                         ;9F9F95|A99C00  |;
                       STA.B $8F                            ;9F9F98|858F    |;
                       LDA.W #$A5E7                         ;9F9F9A|A9E7A5  |;
                       STA.B $8D                            ;9F9F9D|858D    |;
                       LDY.B $A5                            ;9F9F9F|A4A5    |;
                       LDA.B [$8D],Y                        ;9F9FA1|B78D    |;
                       STA.B $8D                            ;9F9FA3|858D    |;
                       LDY.W #$0008                         ;9F9FA5|A00800  |;
                       ADC.B [$8D],Y                        ;9F9FA8|778D    |;
                       STA.B $8D                            ;9F9FAA|858D    |;
                       LDA.B [$8D]                          ;9F9FAC|A78D    |;
                       AND.W #$0070                         ;9F9FAE|297000  |;
                       LSR A                                ;9F9FB1|4A      |;
                       ADC.W #$A038                         ;9F9FB2|6938A0  |;
                       STA.B $8D                            ;9F9FB5|858D    |;
                       LDA.W #$009F                         ;9F9FB7|A99F00  |;
                       STA.B $8F                            ;9F9FBA|858F    |;
                       LDA.B [$8D]                          ;9F9FBC|A78D    |;
                       STA.W $0CF9                          ;9F9FBE|8DF90C  |;
                       LDY.W #$0002                         ;9F9FC1|A00200  |;
                       LDA.B [$8D],Y                        ;9F9FC4|B78D    |;
                       STA.W $0CFB                          ;9F9FC6|8DFB0C  |;
                       LDY.W #$0004                         ;9F9FC9|A00400  |;
                       LDA.B [$8D],Y                        ;9F9FCC|B78D    |;
                       STA.W $0CFD                          ;9F9FCE|8DFD0C  |;
                       LDY.W #$0006                         ;9F9FD1|A00600  |;
                       LDA.B [$8D],Y                        ;9F9FD4|B78D    |;
                       STA.W $0CFF                          ;9F9FD6|8DFF0C  |;
                       ASL.B $A9                            ;9F9FD9|06A9    |;
                       ASL.B $A9                            ;9F9FDB|06A9    |;
                       LDA.W #$009C                         ;9F9FDD|A99C00  |;
                       STA.B $8F                            ;9F9FE0|858F    |;
                       LDA.W #$A5E7                         ;9F9FE2|A9E7A5  |;
                       STA.B $8D                            ;9F9FE5|858D    |;
                       LDY.B $A9                            ;9F9FE7|A4A9    |;
                       LDA.B [$8D],Y                        ;9F9FE9|B78D    |;
                       STA.B $8D                            ;9F9FEB|858D    |;
                       LDY.W #$0008                         ;9F9FED|A00800  |;
                       ADC.B [$8D],Y                        ;9F9FF0|778D    |;
                       STA.B $8D                            ;9F9FF2|858D    |;
                       LDA.B [$8D]                          ;9F9FF4|A78D    |;
                       AND.W #$0007                         ;9F9FF6|290700  |;
                       ASL A                                ;9F9FF9|0A      |;
                       ASL A                                ;9F9FFA|0A      |;
                       ASL A                                ;9F9FFB|0A      |;
                       ADC.W #$A038                         ;9F9FFC|6938A0  |;
                       STA.B $8D                            ;9F9FFF|858D    |;
                       LDA.W #$009F                         ;9FA001|A99F00  |;
                       STA.B $8F                            ;9FA004|858F    |;
                       LDA.B [$8D]                          ;9FA006|A78D    |;
                       ADC.W $0CF9                          ;9FA008|6DF90C  |;
                       STA.W $0CF9                          ;9FA00B|8DF90C  |;
                       LDY.W #$0002                         ;9FA00E|A00200  |;
                       LDA.B [$8D],Y                        ;9FA011|B78D    |;
                       ADC.W $0CFB                          ;9FA013|6DFB0C  |;
                       STA.W $0CFB                          ;9FA016|8DFB0C  |;
                       LDY.W #$0004                         ;9FA019|A00400  |;
                       LDA.B [$8D],Y                        ;9FA01C|B78D    |;
                       ADC.W $0CFD                          ;9FA01E|6DFD0C  |;
                       STA.W $0CFD                          ;9FA021|8DFD0C  |;
                       LDY.W #$0006                         ;9FA024|A00600  |;
                       LDA.B [$8D],Y                        ;9FA027|B78D    |;
                       ADC.W $0CFF                          ;9FA029|6DFF0C  |;
                       STA.W $0CFF                          ;9FA02C|8DFF0C  |;
                       LDA.W #$0004                         ;9FA02F|A90400  |;
                       STA.B $A5                            ;9FA032|85A5    |;
                       JML.L CODE_9D9CD2                    ;9FA034|5CD29C9D|;
                       db $2B,$00,$1E,$00,$17,$00,$04,$00   ;9FA038|        |;
                       db $27,$00,$20,$00,$18,$00,$05,$00   ;9FA040|        |;
                       db $23,$00,$21,$00,$1A,$00,$06,$00   ;9FA048|        |;
                       db $1E,$00,$22,$00,$1E,$00,$06,$00   ;9FA050|        |;
                       db $1A,$00,$24,$00,$1E,$00,$08,$00   ;9FA058|        |;
                       db $16,$00,$25,$00,$1F,$00,$0A,$00   ;9FA060|        |;
                       db $13,$00,$26,$00,$1F,$00,$0C,$00   ;9FA068|        |;
                       db $0F,$00,$26,$00,$20,$00,$0F,$00   ;9FA070|        |;
 
          CODE_9FA078:
                       LDA.W $15D8                          ;9FA078|ADD815  |;
                       BIT.W #$0800                         ;9FA07B|890008  |;
                       BEQ CODE_9FA083                      ;9FA07E|F003    |;
                       JMP.W CODE_9FA12F                    ;9FA080|4C2FA1  |;
 
          CODE_9FA083:
                       LDA.W #$0007                         ;9FA083|A90700  |;
                       STA.W $0A2A                          ;9FA086|8D2A0A  |;
                       LDA.W #$0020                         ;9FA089|A92000  |;
                       STA.W $0A2C                          ;9FA08C|8D2C0A  |;
                       LDA.W #$003A                         ;9FA08F|A93A00  |;
                       STA.W $0A2E                          ;9FA092|8D2E0A  |;
                       LDA.W $1632                          ;9FA095|AD3216  |;
                       STA.B $08                            ;9FA098|8508    |;
                       LDA.W #$000A                         ;9FA09A|A90A00  |;
                       STA.B $04                            ;9FA09D|8504    |;
                       JSL.L CODE_8092FD                    ;9FA09F|22FD9280|;
                       LDA.W $4216                          ;9FA0A3|AD1642  |;
                       CLC                                  ;9FA0A6|18      |;
                       ADC.W #$0030                         ;9FA0A7|693000  |;
                       SEP #$20                             ;9FA0AA|E220    |;
                       STA.W $0A30                          ;9FA0AC|8D300A  |;
                       REP #$20                             ;9FA0AF|C220    |;
                       LDA.B $00                            ;9FA0B1|A500    |;
                       STA.B $08                            ;9FA0B3|8508    |;
                       LDA.W #$0006                         ;9FA0B5|A90600  |;
                       STA.B $04                            ;9FA0B8|8504    |;
                       JSL.L CODE_8092FD                    ;9FA0BA|22FD9280|;
                       LDA.W $4216                          ;9FA0BE|AD1642  |;
                       CLC                                  ;9FA0C1|18      |;
                       ADC.W #$0030                         ;9FA0C2|693000  |;
                       SEP #$20                             ;9FA0C5|E220    |;
                       STA.W $0A2F                          ;9FA0C7|8D2F0A  |;
                       REP #$20                             ;9FA0CA|C220    |;
                       LDA.B $00                            ;9FA0CC|A500    |;
                       STA.B $08                            ;9FA0CE|8508    |;
                       LDA.W #$000A                         ;9FA0D0|A90A00  |;
                       STA.B $04                            ;9FA0D3|8504    |;
                       JSL.L CODE_8092FD                    ;9FA0D5|22FD9280|;
                       LDA.W $4216                          ;9FA0D9|AD1642  |;
                       CLC                                  ;9FA0DC|18      |;
                       ADC.W #$0030                         ;9FA0DD|693000  |;
                       SEP #$20                             ;9FA0E0|E220    |;
                       STA.W $0A2D                          ;9FA0E2|8D2D0A  |;
                       REP #$20                             ;9FA0E5|C220    |;
                       LDA.B $00                            ;9FA0E7|A500    |;
                       BEQ CODE_9FA0F6                      ;9FA0E9|F00B    |;
                       CLC                                  ;9FA0EB|18      |;
                       ADC.W #$0030                         ;9FA0EC|693000  |;
                       SEP #$20                             ;9FA0EF|E220    |;
                       STA.W $0A2C                          ;9FA0F1|8D2C0A  |;
                       REP #$20                             ;9FA0F4|C220    |;
 
          CODE_9FA0F6:
                       LDA.W #$2000                         ;9FA0F6|A90020  |;
                       STA.W $0D0D                          ;9FA0F9|8D0D0D  |;
                       LDA.W #$0003                         ;9FA0FC|A90300  |;
                       STA.W $0D0F                          ;9FA0FF|8D0F0D  |;
                       LDA.W #$0018                         ;9FA102|A91800  |;
                       STA.W $0D11                          ;9FA105|8D110D  |;
                       LDA.W $15DA                          ;9FA108|ADDA15  |;
                       BEQ CODE_9FA121                      ;9FA10B|F014    |;
                       LDA.W #$000D                         ;9FA10D|A90D00  |;
                       STA.W $0D0F                          ;9FA110|8D0F0D  |;
                       LDA.W #$000B                         ;9FA113|A90B00  |;
                       STA.W $0D11                          ;9FA116|8D110D  |;
                       LDA.W $1630                          ;9FA119|AD3016  |;
                       CMP.W #$0004                         ;9FA11C|C90400  |;
                       BEQ CODE_9FA12F                      ;9FA11F|F00E    |;
 
          CODE_9FA121:
                       LDA.W #$0000                         ;9FA121|A90000  |;
                       STA.B $8F                            ;9FA124|858F    |;
                       LDA.W #$0A2A                         ;9FA126|A92A0A  |;
                       STA.B $8D                            ;9FA129|858D    |;
                       JML.L CODE_9EC7BE                    ;9FA12B|5CBEC79E|;
 
          CODE_9FA12F:
                       RTL                                  ;9FA12F|6B      |;
 
          CODE_9FA130:
                       STX.B $87                            ;9FA130|8687    |;
                       LDX.W #$0000                         ;9FA132|A20000  |;
 
          CODE_9FA135:
                       LDA.B $A5,X                          ;9FA135|B5A5    |;
                       PHA                                  ;9FA137|48      |;
                       INX                                  ;9FA138|E8      |;
                       INX                                  ;9FA139|E8      |;
                       CPX.W #$0020                         ;9FA13A|E02000  |;
                       BNE CODE_9FA135                      ;9FA13D|D0F6    |;
                       LDX.B $87                            ;9FA13F|A687    |;
                       STX.B $87                            ;9FA141|8687    |;
                       LDX.W #$0000                         ;9FA143|A20000  |;
 
          CODE_9FA146:
                       LDA.B $89,X                          ;9FA146|B589    |;
                       PHA                                  ;9FA148|48      |;
                       INX                                  ;9FA149|E8      |;
                       INX                                  ;9FA14A|E8      |;
                       CPX.W #$0010                         ;9FA14B|E01000  |;
                       BNE CODE_9FA146                      ;9FA14E|D0F6    |;
                       LDX.B $87                            ;9FA150|A687    |;
                       JSL.L CODE_9F9B36                    ;9FA152|22369B9F|;
                       LDA.B $8F                            ;9FA156|A58F    |;
                       PHA                                  ;9FA158|48      |;
                       LDA.B $8D                            ;9FA159|A58D    |;
                       PHA                                  ;9FA15B|48      |;
                       LDA.W #$009C                         ;9FA15C|A99C00  |;
                       STA.B $8F                            ;9FA15F|858F    |;
                       LDA.W #$F858                         ;9FA161|A958F8  |;
                       STA.B $8D                            ;9FA164|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FA166|22BEC79E|;
                       PLA                                  ;9FA16A|68      |;
                       STA.B $8D                            ;9FA16B|858D    |;
                       PLA                                  ;9FA16D|68      |;
                       STA.B $8F                            ;9FA16E|858F    |;
                       STZ.B zpCurntTeamLoopVal             ;9FA170|6491    |;
                       JSL.L CODE_9FA1B8                    ;9FA172|22B8A19F|;
                       LDA.B $8F                            ;9FA176|A58F    |;
                       PHA                                  ;9FA178|48      |;
                       LDA.B $8D                            ;9FA179|A58D    |;
                       PHA                                  ;9FA17B|48      |;
                       LDA.W #$009C                         ;9FA17C|A99C00  |;
                       STA.B $8F                            ;9FA17F|858F    |;
                       LDA.W #$F85D                         ;9FA181|A95DF8  |;
                       STA.B $8D                            ;9FA184|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FA186|22BEC79E|;
                       PLA                                  ;9FA18A|68      |;
                       STA.B $8D                            ;9FA18B|858D    |;
                       PLA                                  ;9FA18D|68      |;
                       STA.B $8F                            ;9FA18E|858F    |;
                       LDA.W #$0002                         ;9FA190|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9FA193|8591    |;
                       JSL.L CODE_9FA1B8                    ;9FA195|22B8A19F|;
                       STX.B $87                            ;9FA199|8687    |;
                       LDX.W #$000E                         ;9FA19B|A20E00  |;
 
          CODE_9FA19E:
                       PLA                                  ;9FA19E|68      |;
                       STA.B $89,X                          ;9FA19F|9589    |;
                       DEX                                  ;9FA1A1|CA      |;
                       DEX                                  ;9FA1A2|CA      |;
                       BPL CODE_9FA19E                      ;9FA1A3|10F9    |;
                       LDX.B $87                            ;9FA1A5|A687    |;
                       STX.B $87                            ;9FA1A7|8687    |;
                       LDX.W #$001E                         ;9FA1A9|A21E00  |;
 
          CODE_9FA1AC:
                       PLA                                  ;9FA1AC|68      |;
                       STA.B $A5,X                          ;9FA1AD|95A5    |;
                       DEX                                  ;9FA1AF|CA      |;
                       DEX                                  ;9FA1B0|CA      |;
                       BPL CODE_9FA1AC                      ;9FA1B1|10F9    |;
                       LDX.B $87                            ;9FA1B3|A687    |;
                       LDX.B $95                            ;9FA1B5|A695    |;
 
          CODE_9FA1B7:
                       RTL                                  ;9FA1B7|6B      |;
 
          CODE_9FA1B8:
                       LDA.B zpCurntTeamLoopVal             ;9FA1B8|A591    |;
                       BEQ CODE_9FA1BF                      ;9FA1BA|F003    |;
                       LDA.W #$001A                         ;9FA1BC|A91A00  |;
 
          CODE_9FA1BF:
                       STA.B $89                            ;9FA1BF|8589    |;
 
          CODE_9FA1C1:
                       LDY.B $89                            ;9FA1C1|A489    |;
                       LDA.W $18BA,Y                        ;9FA1C3|B9BA18  |;
                       INC.B $89                            ;9FA1C6|E689    |;
                       AND.W #$00FF                         ;9FA1C8|29FF00  |;
                       STA.B $A5                            ;9FA1CB|85A5    |;
                       BIT.W #$0080                         ;9FA1CD|898000  |;
                       BNE CODE_9FA1EB                      ;9FA1D0|D019    |;
                       LDA.B zpCurntTeamLoopVal             ;9FA1D2|A591    |;
                       BEQ CODE_9FA1D9                      ;9FA1D4|F003    |;
                       LDA.W #$0034                         ;9FA1D6|A93400  |;
 
          CODE_9FA1D9:
                       CLC                                  ;9FA1D9|18      |;
                       ADC.B $A5                            ;9FA1DA|65A5    |;
                       TAY                                  ;9FA1DC|A8      |;
                       LDA.W $1852,Y                        ;9FA1DD|B95218  |;
                       BIT.W #$4000                         ;9FA1E0|890040  |;
                       BNE CODE_9FA1C1                      ;9FA1E3|D0DC    |;
                       JSL.L CODE_9FA21E                    ;9FA1E5|221EA29F|;
                       BRA CODE_9FA1C1                      ;9FA1E9|80D6    |;
 
          CODE_9FA1EB:
                       LDA.B zpCurntTeamLoopVal             ;9FA1EB|A591    |;
                       BEQ CODE_9FA1F2                      ;9FA1ED|F003    |;
                       LDA.W #$001A                         ;9FA1EF|A91A00  |;
 
          CODE_9FA1F2:
                       STA.B $89                            ;9FA1F2|8589    |;
 
          CODE_9FA1F4:
                       LDY.B $89                            ;9FA1F4|A489    |;
                       LDA.W $18BA,Y                        ;9FA1F6|B9BA18  |;
                       INC.B $89                            ;9FA1F9|E689    |;
                       AND.W #$00FF                         ;9FA1FB|29FF00  |;
                       STA.B $A5                            ;9FA1FE|85A5    |;
                       BIT.W #$0080                         ;9FA200|898000  |;
                       BNE CODE_9FA1B7                      ;9FA203|D0B2    |;
                       LDA.B zpCurntTeamLoopVal             ;9FA205|A591    |;
                       BEQ CODE_9FA20C                      ;9FA207|F003    |;
                       LDA.W #$0034                         ;9FA209|A93400  |;
 
          CODE_9FA20C:
                       CLC                                  ;9FA20C|18      |;
                       ADC.B $A5                            ;9FA20D|65A5    |;
                       TAY                                  ;9FA20F|A8      |;
                       LDA.W $1852,Y                        ;9FA210|B95218  |;
                       BIT.W #$4000                         ;9FA213|890040  |;
                       BEQ CODE_9FA1F4                      ;9FA216|F0DC    |;
                       db $22,$1E,$A2,$9F,$80,$D6           ;9FA218|        |;
 
          CODE_9FA21E:
                       LDA.W $0D11                          ;9FA21E|AD110D  |;
                       CMP.W #$000B                         ;9FA221|C90B00  |;
                       BCS CODE_9FA1B7                      ;9FA224|B091    |;
                       LDA.B zpCurntTeamLoopVal             ;9FA226|A591    |;
                       BEQ CODE_9FA22D                      ;9FA228|F003    |;
                       LDA.W #$0034                         ;9FA22A|A93400  |;
 
          CODE_9FA22D:
                       ADC.B $A5                            ;9FA22D|65A5    |;
                       TAY                                  ;9FA22F|A8      |;
                       LDA.W $1852,Y                        ;9FA230|B95218  |;
                       AND.W #$07FF                         ;9FA233|29FF07  |;
                       STA.B $AD                            ;9FA236|85AD    |;
                       LDA.W #$009C                         ;9FA238|A99C00  |;
                       STA.B $8F                            ;9FA23B|858F    |;
                       LDY.B zpCurntTeamLoopVal             ;9FA23D|A491    |;
                       LDA.W $1CDC,Y                        ;9FA23F|B9DC1C  |;
                       STA.B $8D                            ;9FA242|858D    |;
                       LDY.W #$0000                         ;9FA244|A00000  |;
                       ADC.B [$8D],Y                        ;9FA247|778D    |;
                       STA.B $8D                            ;9FA249|858D    |;
                       LSR.B $A5                            ;9FA24B|46A5    |;
 
          CODE_9FA24D:
                       LDA.B [$8D]                          ;9FA24D|A78D    |;
                       CLC                                  ;9FA24F|18      |;
                       ADC.B $8D                            ;9FA250|658D    |;
                       ADC.W #$0008                         ;9FA252|690800  |;
                       STA.B $8D                            ;9FA255|858D    |;
                       DEC.B $A5                            ;9FA257|C6A5    |;
                       BPL CODE_9FA24D                      ;9FA259|10F2    |;
                       LDA.B $8D                            ;9FA25B|A58D    |;
                       SEC                                  ;9FA25D|38      |;
                       SBC.W #$0008                         ;9FA25E|E90800  |;
                       STA.B $8D                            ;9FA261|858D    |;
                       LDA.B [$8D]                          ;9FA263|A78D    |;
                       AND.W #$00FF                         ;9FA265|29FF00  |;
                       STA.B $A5                            ;9FA268|85A5    |;
                       LDA.W $0D0F                          ;9FA26A|AD0F0D  |;
                       PHA                                  ;9FA26D|48      |;
                       LDA.W #$0000                         ;9FA26E|A90000  |;
                       STA.B $8F                            ;9FA271|858F    |;
                       LDA.W #$0A2C                         ;9FA273|A92C0A  |;
                       STA.B $8D                            ;9FA276|858D    |;
                       JSL.L CODE_9FC5BE                    ;9FA278|22BEC59F|;
                       LDA.W #$0000                         ;9FA27C|A90000  |;
                       STA.B $8F                            ;9FA27F|858F    |;
                       LDA.W #$0A2A                         ;9FA281|A92A0A  |;
                       STA.B $8D                            ;9FA284|858D    |;
                       LDA.W #$0004                         ;9FA286|A90400  |;
                       STA.B [$8D]                          ;9FA289|878D    |;
                       JSL.L CODE_9EC7BE                    ;9FA28B|22BEC79E|;
                       LDA.B $AD                            ;9FA28F|A5AD    |;
                       STA.B $A5                            ;9FA291|85A5    |;
                       JSL.L CODE_9FA3D7                    ;9FA293|22D7A39F|;
                       INC.W $0D0F                          ;9FA297|EE0F0D  |;
                       JSL.L CODE_9EC7BE                    ;9FA29A|22BEC79E|;
                       PLA                                  ;9FA29E|68      |;
                       STA.W $0D0F                          ;9FA29F|8D0F0D  |;
                       INC.W $0D11                          ;9FA2A2|EE110D  |;
                       RTL                                  ;9FA2A5|6B      |;
                       db $22,$3F,$E0,$9F,$A9,$00,$00,$A0   ;9FA2A6|        |;
                       db $1E,$00,$99,$55,$0D,$88,$88,$10   ;9FA2AE|        |;
                       db $F9,$A5,$83,$A4,$85,$8D,$51,$0D   ;9FA2B6|        |;
                       db $8C,$53,$0D,$A9,$01,$00,$1C,$D8   ;9FA2BE|        |;
                       db $15,$AD,$30,$16,$C9,$04,$00,$F0   ;9FA2C6|        |;
                       db $02,$80,$00,$A9,$08,$07,$8D,$E3   ;9FA2CE|        |;
                       db $0C,$A9,$01,$00,$8D,$2F,$0D,$A5   ;9FA2D6|        |;
                       db $83,$38,$E9,$50,$01,$8D,$33,$0D   ;9FA2DE|        |;
                       db $22,$7A,$A3,$9F,$AD,$31,$0D,$8F   ;9FA2E6|        |;
                       db $DC,$35,$7E,$9C,$13,$0D,$9C,$15   ;9FA2EE|        |;
                       db $0D,$A9,$FF,$FF,$8D,$C6,$0A,$A0   ;9FA2F6|        |;
                       db $FE,$FF,$C8,$C8,$C0,$0A,$00,$B0   ;9FA2FE|        |;
                       db $0C,$B9,$84,$1C,$F0,$F4,$49,$FF   ;9FA306|        |;
                       db $FF,$1A,$8D,$C6,$0A,$AD,$84,$1C   ;9FA30E|        |;
                       db $0D,$86,$1C,$0D,$88,$1C,$0D,$8A   ;9FA316|        |;
                       db $1C,$0D,$8C,$1C,$D0,$03,$9C,$C6   ;9FA31E|        |;
                       db $0A,$A9,$01,$00,$8D,$10,$1A       ;9FA326|        |;
       UNREACH_9FA32D:
                       db $A9,$00,$00,$A0,$1E,$00,$99,$55   ;9FA32D|        |;
                       db $0D,$88,$88,$10,$F9,$A5,$8F,$48   ;9FA335|        |;
                       db $A5,$8D,$48,$A9,$9C,$00,$85,$8F   ;9FA33D|        |;
                       db $A9,$62,$F8,$85,$8D,$22,$BE,$C7   ;9FA345|        |;
                       db $9E,$68,$85,$8D,$68,$85,$8F,$A9   ;9FA34D|        |;
                       db $16,$00,$85,$A5,$A9,$07,$00,$85   ;9FA355|        |;
                       db $A9,$22,$00,$80,$9D,$22,$36,$9B   ;9FA35D|        |;
                       db $9F,$22,$1D,$E1,$9F               ;9FA365|        |;
                       BNE UNREACH_9FA32D                   ;9FA36A|D0C1    |;
                       LDA.W #$0000                         ;9FA36C|A90000  |;
                       STA.L $7E3476                        ;9FA36F|8F76347E|;
                       STZ.W $1A10                          ;9FA373|9C101A  |;
                       STZ.W $0D2F                          ;9FA376|9C2F0D  |;
                       RTL                                  ;9FA379|6B      |;
                       db $AD,$31,$0D,$30,$06,$0F,$D6,$35   ;9FA37A|        |;
                       db $7E,$D0,$0B,$22,$B5,$98,$9D,$A5   ;9FA382|        |;
                       db $A9,$8D,$31,$0D,$30,$E9,$4C,$61   ;9FA38A|        |;
                       db $A4                               ;9FA392|        |;
 
          CODE_9FA393:
                       LDA.W $0D2F                          ;9FA393|AD2F0D  |;
                       BEQ CODE_9FA3BA                      ;9FA396|F022    |;
                       LDA.B $83                            ;9FA398|A583    |;
                       SEC                                  ;9FA39A|38      |;
                       SBC.W $0D33                          ;9FA39B|ED330D  |;
                       CMP.W #$0150                         ;9FA39E|C95001  |;
                       BCC CODE_9FA3BA                      ;9FA3A1|9017    |;
                       JSL.L CODE_9FA3BE                    ;9FA3A3|22BEA39F|;
                       LDA.L $7E35DC                        ;9FA3A7|AFDC357E|;
                       CMP.W $0D31                          ;9FA3AB|CD310D  |;
                       BNE CODE_9FA393                      ;9FA3AE|D0E3    |;
                       db $22,$36,$A6,$9F,$A9,$08,$00,$1C   ;9FA3B0|        |;
                       db $DC,$15                           ;9FA3B8|        |;
 
          CODE_9FA3BA:
                       LDA.W #$0000                         ;9FA3BA|A90000  |;
                       RTL                                  ;9FA3BD|6B      |;
          CODE_9FA3BE:
                       LDA.W $0D31                          ;9FA3BE|AD310D  |;
                       BMI UNREACH_9FA3C9                   ;9FA3C1|3006    |;
                       ORA.L $7E35D6                        ;9FA3C3|0FD6357E|;
                       BNE CODE_9FA3D4                      ;9FA3C7|D00B    |;
       UNREACH_9FA3C9:
                       db $22,$B5,$98,$9D,$A5,$A9,$8D,$31   ;9FA3C9|        |;
                       db $0D,$30,$E6                       ;9FA3D1|        |;
          CODE_9FA3D4:
                       JMP.W CODE_9FA461                    ;9FA3D4|4C61A4  |;
 
          CODE_9FA3D7:
                       LDA.W #$0000                         ;9FA3D7|A90000  |;
                       STA.B $8F                            ;9FA3DA|858F    |;
                       LDA.W #$0A48                         ;9FA3DC|A9480A  |;
                       STA.B $8D                            ;9FA3DF|858D    |;
                       LDA.B $A5                            ;9FA3E1|A5A5    |;
                       STA.B $08                            ;9FA3E3|8508    |;
                       LDA.W #$000A                         ;9FA3E5|A90A00  |;
                       STA.B $04                            ;9FA3E8|8504    |;
                       JSL.L CODE_8092FD                    ;9FA3EA|22FD9280|;
                       DEC.B $8D                            ;9FA3EE|C68D    |;
                       SEP #$20                             ;9FA3F0|E220    |;
                       LDA.W $4216                          ;9FA3F2|AD1642  |;
                       CLC                                  ;9FA3F5|18      |;
                       ADC.B #$30                           ;9FA3F6|6930    |;
                       STA.B [$8D]                          ;9FA3F8|878D    |;
                       REP #$30                             ;9FA3FA|C230    |;
                       LDA.B $00                            ;9FA3FC|A500    |;
                       STA.B $08                            ;9FA3FE|8508    |;
                       LDA.W #$0006                         ;9FA400|A90600  |;
                       STA.B $04                            ;9FA403|8504    |;
                       JSL.L CODE_8092FD                    ;9FA405|22FD9280|;
                       DEC.B $8D                            ;9FA409|C68D    |;
                       SEP #$20                             ;9FA40B|E220    |;
                       LDA.W $4216                          ;9FA40D|AD1642  |;
                       CLC                                  ;9FA410|18      |;
                       ADC.B #$30                           ;9FA411|6930    |;
                       STA.B [$8D]                          ;9FA413|878D    |;
                       REP #$20                             ;9FA415|C220    |;
                       DEC.B $8D                            ;9FA417|C68D    |;
                       SEP #$20                             ;9FA419|E220    |;
                       LDA.B #$3A                           ;9FA41B|A93A    |;
                       STA.B [$8D]                          ;9FA41D|878D    |;
                       REP #$30                             ;9FA41F|C230    |;
                       LDA.B $00                            ;9FA421|A500    |;
                       STA.B $08                            ;9FA423|8508    |;
                       LDA.W #$000A                         ;9FA425|A90A00  |;
                       STA.B $04                            ;9FA428|8504    |;
                       JSL.L CODE_8092FD                    ;9FA42A|22FD9280|;
                       DEC.B $8D                            ;9FA42E|C68D    |;
                       SEP #$20                             ;9FA430|E220    |;
                       LDA.W $4216                          ;9FA432|AD1642  |;
                       CLC                                  ;9FA435|18      |;
                       ADC.B #$30                           ;9FA436|6930    |;
                       STA.B [$8D]                          ;9FA438|878D    |;
                       REP #$30                             ;9FA43A|C230    |;
                       LDA.B $00                            ;9FA43C|A500    |;
                       BEQ CODE_9FA44B                      ;9FA43E|F00B    |;
                       db $C6,$8D,$E2,$20,$18,$69,$30,$87   ;9FA440|        |;
                       db $8D,$C2,$30                       ;9FA448|        |;
 
          CODE_9FA44B:
                       DEC.B $8D                            ;9FA44B|C68D    |;
                       DEC.B $8D                            ;9FA44D|C68D    |;
                       LDA.W #$0A48                         ;9FA44F|A9480A  |;
                       SEC                                  ;9FA452|38      |;
                       SBC.B $8D                            ;9FA453|E58D    |;
                       STA.B [$8D]                          ;9FA455|878D    |;
                       RTL                                  ;9FA457|6B      |;
                       db $AD,$32,$16,$C9,$E1,$01,$90,$01   ;9FA458|        |;
                       db $6B                               ;9FA460|        |;
          CODE_9FA461:
                       LDA.W $0D31                          ;9FA461|AD310D  |;
                       STA.B $B1                            ;9FA464|85B1    |;
                       BMI UNREACH_9FA475                   ;9FA466|300D    |;
                       DEC.W $0D31                          ;9FA468|CE310D  |;
                       LDA.B $B1                            ;9FA46B|A5B1    |;
                       CMP.L $7E35D6                        ;9FA46D|CFD6357E|;
                       BEQ CODE_9FA461                      ;9FA471|F0EE    |;
                       BRA CODE_9FA476                      ;9FA473|8001    |;
       UNREACH_9FA475:
                       db $6B                               ;9FA475|        |;
          CODE_9FA476:
                       LDA.B $B1                            ;9FA476|A5B1    |;
                       ASL A                                ;9FA478|0A      |;
                       STA.B $89                            ;9FA479|8589    |;
                       TAX                                  ;9FA47B|AA      |;
                       LDA.L $7E3598,X                      ;9FA47C|BF98357E|;
                       BIT.W #$0006                         ;9FA480|890600  |;
                       BNE CODE_9FA461                      ;9FA483|D0DC    |;
                       LDA.B $8F                            ;9FA485|A58F    |;
                       PHA                                  ;9FA487|48      |;
                       LDA.B $8D                            ;9FA488|A58D    |;
                       PHA                                  ;9FA48A|48      |;
                       LDA.W #$009C                         ;9FA48B|A99C00  |;
                       STA.B $8F                            ;9FA48E|858F    |;
                       LDA.W #$F867                         ;9FA490|A967F8  |;
                       STA.B $8D                            ;9FA493|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FA495|22BEC79E|;
                       PLA                                  ;9FA499|68      |;
                       STA.B $8D                            ;9FA49A|858D    |;
                       PLA                                  ;9FA49C|68      |;
                       STA.B $8F                            ;9FA49D|858F    |;
                       LDA.W $15D8                          ;9FA49F|ADD815  |;
                       BIT.W #$0001                         ;9FA4A2|890100  |;
                       BNE CODE_9FA4C1                      ;9FA4A5|D01A    |;
                       LDA.B $8F                            ;9FA4A7|A58F    |;
                       PHA                                  ;9FA4A9|48      |;
                       LDA.B $8D                            ;9FA4AA|A58D    |;
                       PHA                                  ;9FA4AC|48      |;
                       LDA.W #$009C                         ;9FA4AD|A99C00  |;
                       STA.B $8F                            ;9FA4B0|858F    |;
                       LDA.W #$F86C                         ;9FA4B2|A96CF8  |;
                       STA.B $8D                            ;9FA4B5|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FA4B7|22BEC79E|;
                       PLA                                  ;9FA4BB|68      |;
                       STA.B $8D                            ;9FA4BC|858D    |;
                       PLA                                  ;9FA4BE|68      |;
                       STA.B $8F                            ;9FA4BF|858F    |;
          CODE_9FA4C1:
                       LDA.W PauseScreenActive              ;9FA4C1|ADDA15  |;
                       BNE CODE_9FA4D0                      ;9FA4C4|D00A    |;
                       db $AD,$11,$0D,$38,$E9,$05,$00,$8D   ;9FA4C6|        |;
                       db $11,$0D                           ;9FA4CE|        |;
          CODE_9FA4D0:
                       LDA.W #$001C                         ;9FA4D0|A91C00  |;
                       STA.B $A5                            ;9FA4D3|85A5    |;
                       LDA.W #$0005                         ;9FA4D5|A90500  |;
                       STA.B $A9                            ;9FA4D8|85A9    |;
                       JSL.L CODE_9D8000                    ;9FA4DA|2200809D|;
                       LDA.B $83                            ;9FA4DE|A583    |;
                       STA.W $0D33                          ;9FA4E0|8D330D  |;
                       INC.W $0D0F                          ;9FA4E3|EE0F0D  |;
                       LDA.W $0D11                          ;9FA4E6|AD110D  |;
                       SEC                                  ;9FA4E9|38      |;
                       SBC.W #$0004                         ;9FA4EA|E90400  |;
                       STA.W $0D11                          ;9FA4ED|8D110D  |;
                       LDA.W $0D0F                          ;9FA4F0|AD0F0D  |;
                       PHA                                  ;9FA4F3|48      |;
                       JSL.L CODE_9D98B5                    ;9FA4F4|22B5989D|;
                       LDA.W #$2400                         ;9FA4F8|A90024  |;
                       STA.W $0D0D                          ;9FA4FB|8D0D0D  |;
                       LDA.B $8F                            ;9FA4FE|A58F    |;
                       PHA                                  ;9FA500|48      |;
                       LDA.B $8D                            ;9FA501|A58D    |;
                       PHA                                  ;9FA503|48      |;
                       LDA.W #$009C                         ;9FA504|A99C00  |;
                       STA.B $8F                            ;9FA507|858F    |;
                       LDA.W #$F871                         ;9FA509|A971F8  |;
                       STA.B $8D                            ;9FA50C|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FA50E|22BEC79E|;
                       PLA                                  ;9FA512|68      |;
                       STA.B $8D                            ;9FA513|858D    |;
                       PLA                                  ;9FA515|68      |;
                       STA.B $8F                            ;9FA516|858F    |;
                       LDA.B $01,S                          ;9FA518|A301    |;
                       STA.W $0D0F                          ;9FA51A|8D0F0D  |;
                       LDA.L $7E35D4                        ;9FA51D|AFD4357E|;
                       INC A                                ;9FA521|1A      |;
                       STA.B $A5                            ;9FA522|85A5    |;
                       LDA.L $7E34BC                        ;9FA524|AFBC347E|;
                       BNE CODE_9FA52C                      ;9FA528|D002    |;
                       STZ.B $A5                            ;9FA52A|64A5    |;
          CODE_9FA52C:
                       LDA.W #$0080                         ;9FA52C|A98000  |;
                       STA.B $8F                            ;9FA52F|858F    |;
                       LDA.W #$D739                         ;9FA531|A939D7  |;
                       STA.B $8D                            ;9FA534|858D    |;
                       JSL.L CODE_9ECFC6                    ;9FA536|22C6CF9E|;
                       LDA.B $01,S                          ;9FA53A|A301    |;
                       CLC                                  ;9FA53C|18      |;
                       ADC.W #$0015                         ;9FA53D|691500  |;
                       STA.W $0D0F                          ;9FA540|8D0F0D  |;
                       LDX.B $89                            ;9FA543|A689    |;
                       LDA.L $7E3568,X                      ;9FA545|BF68357E|;
                       DEC A                                ;9FA549|3A      |;
                       STA.B $A5                            ;9FA54A|85A5    |;
                       LDA.W #$0080                         ;9FA54C|A98000  |;
                       STA.B $8F                            ;9FA54F|858F    |;
                       LDA.W #$D6E1                         ;9FA551|A9E1D6  |;
                       STA.B $8D                            ;9FA554|858D    |;
                       JSL.L CODE_9ECFC6                    ;9FA556|22C6CF9E|;
                       LDA.W #$2000                         ;9FA55A|A90020  |;
                       STA.W $0D0D                          ;9FA55D|8D0D0D  |;
                       LDX.B $89                            ;9FA560|A689    |;
                       LDA.L $7E3528,X                      ;9FA562|BF28357E|;
                       STA.B $A5                            ;9FA566|85A5    |;
                       LDA.L $7E3578,X                      ;9FA568|BF78357E|;
                       STA.B $A9                            ;9FA56C|85A9    |;
                       JSL.L CODE_9FA586                    ;9FA56E|2286A59F|;
                       LDX.B $89                            ;9FA572|A689    |;
                       LDA.L $7E3538,X                      ;9FA574|BF38357E|;
                       STA.B $A5                            ;9FA578|85A5    |;
                       LDA.L $7E3588,X                      ;9FA57A|BF88357E|;
                       STA.B $A9                            ;9FA57E|85A9    |;
                       JSL.L CODE_9FA586                    ;9FA580|2286A59F|;
                       PLA                                  ;9FA584|68      |;
                       RTL                                  ;9FA585|6B      |;
          CODE_9FA586:
                       LDA.B $04,S                          ;9FA586|A304    |;
                       STA.W $0D0F                          ;9FA588|8D0F0D  |;
                       INC.W $0D11                          ;9FA58B|EE110D  |;
                       LDA.B $A5                            ;9FA58E|A5A5    |;
                       JSL.L CODE_9BC5AB                    ;9FA590|22ABC59B|;
                       JSL.L CODE_9EC7BE                    ;9FA594|22BEC79E|;
                       LDA.B $04,S                          ;9FA598|A304    |;
                       CLC                                  ;9FA59A|18      |;
                       ADC.W #$0017                         ;9FA59B|691700  |;
                       STA.W $0D0F                          ;9FA59E|8D0F0D  |;
                       LDA.B $A9                            ;9FA5A1|A5A9    |;
                       STA.B $A5                            ;9FA5A3|85A5    |;
                       JSL.L CODE_9FC5EB                    ;9FA5A5|22EBC59F|;
                       JML.L CODE_9EC7BE                    ;9FA5A9|5CBEC79E|;
 
          CODE_9FA5AD:
                       LDA.B $83                            ;9FA5AD|A583    |;
                       LDY.B $85                            ;9FA5AF|A485    |;
                       SBC.W $0D51                          ;9FA5B1|ED510D  |;
                       STA.B $C5                            ;9FA5B4|85C5    |;
                       TYA                                  ;9FA5B6|98      |;
                       SBC.W $0D53                          ;9FA5B7|ED530D  |;
                       BNE CODE_9FA5E9                      ;9FA5BA|D02D    |;
                       LDA.W PauseScreenActive              ;9FA5BC|ADDA15  |;
                       BEQ CODE_9FA5E9                      ;9FA5BF|F028    |;
                       LDA.W $1A10                          ;9FA5C1|AD101A  |;
                       BEQ CODE_9FA5E9                      ;9FA5C4|F023    |;
                       STZ.W $0CC5                          ;9FA5C6|9CC50C  |;
                       STZ.W $0CD3                          ;9FA5C9|9CD30C  |;
                       LDA.W #$2000                         ;9FA5CC|A90020  |;
                       STA.W $0CC9                          ;9FA5CF|8DC90C  |;
                       LDA.B $C5                            ;9FA5D2|A5C5    |;
                       LSR A                                ;9FA5D4|4A      |;
                       LSR A                                ;9FA5D5|4A      |;
                       STA.W $0CCF                          ;9FA5D6|8DCF0C  |;
                       LDA.W #$00C8                         ;9FA5D9|A9C800  |;
                       STA.W $0CD1                          ;9FA5DC|8DD10C  |;
                       LDA.W #$01C0                         ;9FA5DF|A9C001  |;
                       STA.W $0CCD                          ;9FA5E2|8DCD0C  |;
                       JSL.L CODE_9BBFB9                    ;9FA5E5|22B9BF9B|;
 
          CODE_9FA5E9:
                       RTL                                  ;9FA5E9|6B      |;
                       db $DA,$A5,$A5,$48,$A2,$00,$00,$8A   ;9FA5EA|        |;
                       db $0A,$A8,$B9,$84,$1C,$F0,$09,$8A   ;9FA5F2|        |;
                       db $22,$DC,$84,$9B,$A5,$B1,$D0,$21   ;9FA5FA|        |;
                       db $E8,$E0,$05,$00,$90,$E9,$22,$7B   ;9FA602|        |;
                       db $AF,$80,$22,$AA,$BA,$9F,$22,$DE   ;9FA60A|        |;
                       db $AF,$80,$A5,$83,$C5,$83,$F0,$FC   ;9FA612|        |;
                       db $22,$17,$80,$9B,$68,$3A,$48,$10   ;9FA61A|        |;
                       db $CB,$68,$FA,$6B                   ;9FA622|        |;
 
          CODE_9FA626:
                       LDA.W $15D6                          ;9FA626|ADD615  |;
                       ORA.W clock_remaining_time           ;9FA629|0D3216  |;
                       BNE CODE_9FA635                      ;9FA62C|D007    |;
                       JSL.L CODE_9FBA97                    ;9FA62E|2297BA9F|;
                       JMP.W CODE_9F8B79                    ;9FA632|4C798B  |;
 
          CODE_9FA635:
                       RTL                                  ;9FA635|6B      |;
                       db $AF,$BC,$34,$7E,$F0,$2C,$22,$B5   ;9FA636|        |;
                       db $98,$9D,$A5,$A9,$0A,$85,$89,$A6   ;9FA63E|        |;
                       db $89,$BF,$98,$35,$7E,$89,$04,$00   ;9FA646|        |;
                       db $D0,$10,$89,$02,$00,$F0,$0B,$29   ;9FA64E|        |;
                       db $FD,$FF,$9F,$98,$35,$7E,$22,$FA   ;9FA656|        |;
                       db $8D,$9F,$C6,$89,$C6,$89,$C6,$A9   ;9FA65E|        |;
                       db $10,$DD,$6B,$A5,$8F,$48,$A5,$8D   ;9FA666|        |;
                       db $48,$A9,$9C,$00,$85,$8F,$A9,$8D   ;9FA66E|        |;
                       db $F8,$85,$8D,$22,$BE,$C7,$9E,$68   ;9FA676|        |;
                       db $85,$8D,$68,$85,$8F,$A9,$13,$00   ;9FA67E|        |;
                       db $85,$A5,$A9,$09,$00,$85,$A9,$AF   ;9FA686|        |;
                       db $D0,$35,$7E,$85,$AD,$5C,$9C,$BD   ;9FA68E|        |;
                       db $9F                               ;9FA696|        |;
 
          CODE_9FA697:
                       LDA.B $A5                            ;9FA697|A5A5    |;
                       PHA                                  ;9FA699|48      |;
                       LDA.B $A7                            ;9FA69A|A5A7    |;
                       PHA                                  ;9FA69C|48      |;
                       LDA.B $A9                            ;9FA69D|A5A9    |;
                       PHA                                  ;9FA69F|48      |;
                       LDA.B $AB                            ;9FA6A0|A5AB    |;
                       PHA                                  ;9FA6A2|48      |;
                       LDA.B $AD                            ;9FA6A3|A5AD    |;
                       PHA                                  ;9FA6A5|48      |;
                       LDA.B $AF                            ;9FA6A6|A5AF    |;
                       PHA                                  ;9FA6A8|48      |;
                       STX.B $87                            ;9FA6A9|8687    |;
                       LDX.W #$0000                         ;9FA6AB|A20000  |;
 
          CODE_9FA6AE:
                       LDA.B $89,X                          ;9FA6AE|B589    |;
                       PHA                                  ;9FA6B0|48      |;
                       INX                                  ;9FA6B1|E8      |;
                       INX                                  ;9FA6B2|E8      |;
                       CPX.W #$0014                         ;9FA6B3|E01400  |;
                       BNE CODE_9FA6AE                      ;9FA6B6|D0F6    |;
                       LDX.B $87                            ;9FA6B8|A687    |;
                       LDA.W #$FFFF                         ;9FA6BA|A9FFFF  |;
                       STA.W $1D55                          ;9FA6BD|8D551D  |;
                       STA.W $1D57                          ;9FA6C0|8D571D  |;
                       STZ.B zpCurntTeamLoopVal             ;9FA6C3|6491    |;
                       JSL.L CODE_9FDE13                    ;9FA6C5|2213DE9F|;
                       INC.B zpCurntTeamLoopVal             ;9FA6C9|E691    |;
                       INC.B zpCurntTeamLoopVal             ;9FA6CB|E691    |;
                       JSL.L CODE_9FDE13                    ;9FA6CD|2213DE9F|;
                       LDA.W #$007E                         ;9FA6D1|A97E00  |;
                       STA.B $9B                            ;9FA6D4|859B    |;
                       LDA.W #$3136                         ;9FA6D6|A93631  |;
                       CLC                                  ;9FA6D9|18      |;
                       ADC.L $7E313A                        ;9FA6DA|6F3A317E|;
                       STA.B $99                            ;9FA6DE|8599    |;
                       LDA.B $8F                            ;9FA6E0|A58F    |;
                       PHA                                  ;9FA6E2|48      |;
                       LDA.B $8D                            ;9FA6E3|A58D    |;
                       PHA                                  ;9FA6E5|48      |;
                       LDA.W #$009C                         ;9FA6E6|A99C00  |;
                       STA.B $8F                            ;9FA6E9|858F    |;
                       LDA.W #$F892                         ;9FA6EB|A992F8  |;
                       STA.B $8D                            ;9FA6EE|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FA6F0|22BEC79E|;
                       PLA                                  ;9FA6F4|68      |;
                       STA.B $8D                            ;9FA6F5|858D    |;
                       PLA                                  ;9FA6F7|68      |;
                       STA.B $8F                            ;9FA6F8|858F    |;
                       LDA.W #$0013                         ;9FA6FA|A91300  |;
                       STA.B $A5                            ;9FA6FD|85A5    |;
                       LDA.W #$0005                         ;9FA6FF|A90500  |;
                       STA.B $A9                            ;9FA702|85A9    |;
                       LDY.W #$0004                         ;9FA704|A00400  |;
                       LDA.B [$99],Y                        ;9FA707|B799    |;
                       BIT.W #$0080                         ;9FA709|898000  |;
                       BNE CODE_9FA718                      ;9FA70C|D00A    |;
                       db $E6,$A9,$E6,$A9,$B7,$99,$30,$02   ;9FA70E|        |;
                       db $E6,$A9                           ;9FA716|        |;
 
          CODE_9FA718:
                       JSL.L CODE_9D8000                    ;9FA718|2200809D|;
                       STZ.B zpCurntTeamLoopVal             ;9FA71C|6491    |;
                       LDY.W #$0002                         ;9FA71E|A00200  |;
                       LDA.B [$99],Y                        ;9FA721|B799    |;
                       BIT.W #$0080                         ;9FA723|898000  |;
                       BEQ CODE_9FA72C                      ;9FA726|F004    |;
                       INC.B zpCurntTeamLoopVal             ;9FA728|E691    |;
                       INC.B zpCurntTeamLoopVal             ;9FA72A|E691    |;
 
          CODE_9FA72C:
                       LDA.W #$009F                         ;9FA72C|A99F00  |;
                       STA.B $8F                            ;9FA72F|858F    |;
                       LDA.W #$A816                         ;9FA731|A916A8  |;
                       STA.B $8D                            ;9FA734|858D    |;
                       LDY.W #$0003                         ;9FA736|A00300  |;
                       LDA.B [$99],Y                        ;9FA739|B799    |;
                       AND.W #$00FF                         ;9FA73B|29FF00  |;
                       LDY.B zpCurntTeamLoopVal             ;9FA73E|A491    |;
                       BEQ CODE_9FA746                      ;9FA740|F004    |;
                       CLC                                  ;9FA742|18      |;
                       ADC.W #$001A                         ;9FA743|691A00  |;
 
          CODE_9FA746:
                       TAY                                  ;9FA746|A8      |;
                       LDA.W $18EE,Y                        ;9FA747|B9EE18  |;
                       AND.W #$00FF                         ;9FA74A|29FF00  |;
                       CMP.W #$0003                         ;9FA74D|C90300  |;
                       BNE CODE_9FA77B                      ;9FA750|D029    |;
                       db $22,$00,$D3,$9E,$A0,$03,$00,$B7   ;9FA752|        |;
                       db $99,$29,$FF,$00,$C5,$A5,$30,$19   ;9FA75A|        |;
                       db $A5,$8D,$18,$67,$8D,$85,$8D,$A4   ;9FA762|        |;
                       db $91,$D0,$0E,$22,$89,$A1,$9B,$AD   ;9FA76A|        |;
                       db $20,$16,$18,$69,$0A,$00,$8D,$20   ;9FA772|        |;
                       db $16                               ;9FA77A|        |;
 
          CODE_9FA77B:
                       JSL.L CODE_9ECE15                    ;9FA77B|2215CE9E|;
                       LDY.W #$0003                         ;9FA77F|A00300  |;
                       LDA.B [$99],Y                        ;9FA782|B799    |;
                       AND.W #$00FF                         ;9FA784|29FF00  |;
                       STA.B $A5                            ;9FA787|85A5    |;
                       JSL.L CODE_9FC4D0                    ;9FA789|22D0C49F|;
                       JSL.L CODE_9EC7BE                    ;9FA78D|22BEC79E|;
                       LDY.W #$0004                         ;9FA791|A00400  |;
                       LDA.B [$99],Y                        ;9FA794|B799    |;
                       AND.W #$00FF                         ;9FA796|29FF00  |;
                       STA.B $A5                            ;9FA799|85A5    |;
                       BIT.W #$0080                         ;9FA79B|898000  |;
                       BNE CODE_9FA7F3                      ;9FA79E|D053    |;
                       db $A5,$8F,$48,$A5,$8D,$48,$A9,$9C   ;9FA7A0|        |;
                       db $00,$85,$8F,$A9,$97,$F8,$85,$8D   ;9FA7A8|        |;
                       db $22,$BE,$C7,$9E,$68,$85,$8D,$68   ;9FA7B0|        |;
                       db $85,$8F,$22,$D0,$C4,$9F,$22,$BE   ;9FA7B8|        |;
                       db $C7,$9E,$A0,$05,$00,$B7,$99,$29   ;9FA7C0|        |;
                       db $FF,$00,$85,$A5,$89,$80,$00,$D0   ;9FA7C8|        |;
                       db $22,$A5,$8F,$48,$A5,$8D,$48,$A9   ;9FA7D0|        |;
                       db $9C,$00,$85,$8F,$A9,$A9,$F8,$85   ;9FA7D8|        |;
                       db $8D,$22,$BE,$C7,$9E,$68,$85,$8D   ;9FA7E0|        |;
                       db $68,$85,$8F,$22,$D0,$C4,$9F,$22   ;9FA7E8|        |;
                       db $BE,$C7,$9E                       ;9FA7F0|        |;
 
          CODE_9FA7F3:
                       STX.B $87                            ;9FA7F3|8687    |;
                       LDX.W #$0012                         ;9FA7F5|A21200  |;
 
          CODE_9FA7F8:
                       PLA                                  ;9FA7F8|68      |;
                       STA.B $89,X                          ;9FA7F9|9589    |;
                       DEX                                  ;9FA7FB|CA      |;
                       DEX                                  ;9FA7FC|CA      |;
                       BPL CODE_9FA7F8                      ;9FA7FD|10F9    |;
                       LDX.B $87                            ;9FA7FF|A687    |;
                       PLA                                  ;9FA801|68      |;
                       STA.B $AF                            ;9FA802|85AF    |;
                       PLA                                  ;9FA804|68      |;
                       STA.B $AD                            ;9FA805|85AD    |;
                       PLA                                  ;9FA807|68      |;
                       STA.B $AB                            ;9FA808|85AB    |;
                       PLA                                  ;9FA80A|68      |;
                       STA.B $A9                            ;9FA80B|85A9    |;
                       PLA                                  ;9FA80D|68      |;
                       STA.B $A7                            ;9FA80E|85A7    |;
                       PLA                                  ;9FA810|68      |;
                       STA.B $A5                            ;9FA811|85A5    |;
                       LDX.B $95                            ;9FA813|A695    |;
                       RTL                                  ;9FA815|6B      |;
                       db $0D,$00,$BF,$0F,$03               ;9FA816|        |;
                       db "GOAL"                            ;9FA81B|        |;
                       db $21,$BF,$0C,$05,$12,$00,$BF,$0C   ;9FA81F|        |;
                       db $03                               ;9FA827|        |;
                       db "HAT TRICK"                       ;9FA828|        |;
                       db $21,$BF,$0C,$05                   ;9FA831|        |;
                       LDA.W $1283,X                        ;9FA835|BD8312  |;
                       BIT.W #$0002                         ;9FA838|890200  |;
                       BNE CODE_9FA840                      ;9FA83B|D003    |;
                       JMP.W CODE_9FAEB1                    ;9FA83D|4CB1AE  |;
 
          CODE_9FA840:
                       AND.W #$FFFD                         ;9FA840|29FDFF  |;
                       STA.W $1283,X                        ;9FA843|9D8312  |;
                       STX.B $87                            ;9FA846|8687    |;
                       LDX.W #$0000                         ;9FA848|A20000  |;
 
          CODE_9FA84B:
                       LDA.B $A5,X                          ;9FA84B|B5A5    |;
                       PHA                                  ;9FA84D|48      |;
                       INX                                  ;9FA84E|E8      |;
                       INX                                  ;9FA84F|E8      |;
                       CPX.W #$0020                         ;9FA850|E02000  |;
                       BNE CODE_9FA84B                      ;9FA853|D0F6    |;
                       LDX.B $87                            ;9FA855|A687    |;
                       STX.B $87                            ;9FA857|8687    |;
                       LDX.W #$0000                         ;9FA859|A20000  |;
 
          CODE_9FA85C:
                       LDA.B $89,X                          ;9FA85C|B589    |;
                       PHA                                  ;9FA85E|48      |;
                       INX                                  ;9FA85F|E8      |;
                       INX                                  ;9FA860|E8      |;
                       CPX.W #$001C                         ;9FA861|E01C00  |;
                       BNE CODE_9FA85C                      ;9FA864|D0F6    |;
                       LDX.B $87                            ;9FA866|A687    |;
                       LDA.W #$7000                         ;9FA868|A90070  |;
                       STA.B $64                            ;9FA86B|8564    |;
                       LDA.W #$0012                         ;9FA86D|A91200  |;
                       JSL.L fn_PlaySFX                     ;9FA870|227DA180|;
                       LDA.W #$0013                         ;9FA874|A91300  |;
                       JSL.L fn_PlaySFX                     ;9FA877|227DA180|;
                       LDA.W #$FFFF                         ;9FA87B|A9FFFF  |;
                       STA.W $0CAD                          ;9FA87E|8DAD0C  |;
                       STA.W $0CB3                          ;9FA881|8DB30C  |;
                       LDA.W #$0000                         ;9FA884|A90000  |;
                       STA.L $7E3448                        ;9FA887|8F48347E|;
                       LDA.L $7E35E0                        ;9FA88B|AFE0357E|;
                       CMP.W #$0258                         ;9FA88F|C95802  |;
                       BCC CODE_9FA89B                      ;9FA892|9007    |;
                       LDA.W #$0258                         ;9FA894|A95802  |;
                       STA.L $7E35E0                        ;9FA897|8FE0357E|;
 
          CODE_9FA89B:
                       LDA.W $0AD3                          ;9FA89B|ADD30A  |;
                       BEQ CODE_9FA8AB                      ;9FA89E|F00B    |;
                       JSL.L CODE_9F96F7                    ;9FA8A0|22F7969F|;
                       JSL.L CODE_9F9708                    ;9FA8A4|2208979F|;
                       STZ.W $0AD3                          ;9FA8A8|9CD30A  |;
 
          CODE_9FA8AB:
                       JSL.L CODE_9F96E6                    ;9FA8AB|22E6969F|;
                       LDA.W #$000A                         ;9FA8AF|A90A00  |;
                       STA.W $0AD1                          ;9FA8B2|8DD10A  |;
                       LDA.W $07F3                          ;9FA8B5|ADF307  |;
                       BNE CODE_9FA90C                      ;9FA8B8|D052    |;
                       LDA.W $1624                          ;9FA8BA|AD2416  |;
                       BEQ CODE_9FA8E3                      ;9FA8BD|F024    |;
                       LSR A                                ;9FA8BF|4A      |;
                       LSR A                                ;9FA8C0|4A      |;
                       LSR A                                ;9FA8C1|4A      |;
                       LSR A                                ;9FA8C2|4A      |;
                       STA.B $14                            ;9FA8C3|8514    |;
                       LDA.W $1624                          ;9FA8C5|AD2416  |;
                       AND.W #$000F                         ;9FA8C8|290F00  |;
                       CMP.B $14                            ;9FA8CB|C514    |;
                       BEQ CODE_9FA8E3                      ;9FA8CD|F014    |;
                       BCS CODE_9FA8DA                      ;9FA8CF|B009    |;
                       db $A9,$04,$00,$22,$5F,$9B,$9C,$80   ;9FA8D1|        |;
                       db $32                               ;9FA8D9|        |;
 
          CODE_9FA8DA:
                       LDA.W #$0001                         ;9FA8DA|A90100  |;
                       JSL.L CODE_9C9B5F                    ;9FA8DD|225F9B9C|;
                       BRA CODE_9FA90C                      ;9FA8E1|8029    |;
 
          CODE_9FA8E3:
                       LDY.W $0CC1                          ;9FA8E3|ACC10C  |;
                       BNE CODE_9FA8FA                      ;9FA8E6|D012    |;
                       LDA.L $7E34BC                        ;9FA8E8|AFBC347E|;
                       CMP.W #$0004                         ;9FA8EC|C90400  |;
                       BEQ CODE_9FA90C                      ;9FA8EF|F01B    |;
                       JSL.L CODE_808658                    ;9FA8F1|22588680|;
                       AND.W #$0003                         ;9FA8F5|290300  |;
                       BNE CODE_9FA90C                      ;9FA8F8|D012    |;
 
          CODE_9FA8FA:
                       LDA.W #$0000                         ;9FA8FA|A90000  |;
                       LDY.W $0CC1                          ;9FA8FD|ACC10C  |;
                       BNE CODE_9FA905                      ;9FA900|D003    |;
                       db $A9,$02,$00                       ;9FA902|        |;
 
          CODE_9FA905:
                       JSL.L CODE_9C9B5F                    ;9FA905|225F9B9C|;
                       STZ.W $0CC1                          ;9FA909|9CC10C  |;
 
          CODE_9FA90C:
                       LDA.W #$000D                         ;9FA90C|A90D00  |;
                       TRB.W $15D8                          ;9FA90F|1CD815  |;
                       LDA.W #$0001                         ;9FA912|A90100  |;
                       TRB.W $15DC                          ;9FA915|1CDC15  |;
                       STZ.W $0CF1                          ;9FA918|9CF10C  |;
                       STZ.W $0CA9                          ;9FA91B|9CA90C  |;
                       LDA.W #$FFFF                         ;9FA91E|A9FFFF  |;
                       STA.W $162A                          ;9FA921|8D2A16  |;
                       STA.W $0D19                          ;9FA924|8D190D  |;
                       STA.W $0D1D                          ;9FA927|8D1D0D  |;
                       STA.W PucVertVeloc                   ;9FA92A|8DF90D  |;
                       STA.W $0D07                          ;9FA92D|8D070D  |;
                       ASL A                                ;9FA930|0A      |;
                       STA.W $0AD9                          ;9FA931|8DD90A  |;
                       LDA.W #$8200                         ;9FA934|A90082  |;
                       TRB.W $15D8                          ;9FA937|1CD815  |;
                       LDA.W #$0000                         ;9FA93A|A90000  |;
                       STA.L $7E344A                        ;9FA93D|8F4A347E|;
                       STA.L $7E344C                        ;9FA941|8F4C347E|;
                       LDA.W #$0500                         ;9FA945|A90005  |;
                       TSB.W $15D8                          ;9FA948|0CD815  |;
                       JSL.L CODE_9FB9A4                    ;9FA94B|22A4B99F|;
                       STZ.W $0D37                          ;9FA94F|9C370D  |;
                       STZ.W $0CEB                          ;9FA952|9CEB0C  |;
                       LDA.L $7E3136                        ;9FA955|AF36317E|;
                       STA.W $0D71                          ;9FA959|8D710D  |;
                       LDA.L $7E3138                        ;9FA95C|AF38317E|;
                       STA.W $0DD3                          ;9FA960|8DD30D  |;
                       STZ.W $0EDF                          ;9FA963|9CDF0E  |;
                       STZ.W $0EFF                          ;9FA966|9CFF0E  |;
                       STZ.W $0E01                          ;9FA969|9C010E  |;
                       STZ.W $0EDB                          ;9FA96C|9CDB0E  |;
                       STZ.W $0EFB                          ;9FA96F|9CFB0E  |;
                       STZ.W $0D6D                          ;9FA972|9C6D0D  |;
                       LDA.W #$010C                         ;9FA975|A90C01  |;
                       STA.W $0DCF                          ;9FA978|8DCF0D  |;
                       STZ.W $0EDD                          ;9FA97B|9CDD0E  |;
                       STZ.W $0EFD                          ;9FA97E|9CFD0E  |;
                       STZ.W $0D6F                          ;9FA981|9C6F0D  |;
                       LDA.W #$FEF4                         ;9FA984|A9F4FE  |;
                       STA.W $0DD1                          ;9FA987|8DD10D  |;
                       LDA.W #$018C                         ;9FA98A|A98C01  |;
                       STA.W $0DB5                          ;9FA98D|8DB50D  |;
                       STZ.W $11C1                          ;9FA990|9CC111  |;
                       STZ.W $0E21                          ;9FA993|9C210E  |;
                       STZ.W $0E1F                          ;9FA996|9C1F0E  |;
                       LDA.W #$0040                         ;9FA999|A94000  |;
                       TRB.W $15D8                          ;9FA99C|1CD815  |;
                       LDA.W #$0064                         ;9FA99F|A96400  |;
                       STA.B $B5                            ;9FA9A2|85B5    |;
 
          CODE_9FA9A4:
                       JSL.L CODE_9FC090                    ;9FA9A4|2290C09F|;
                       DEC.B $B5                            ;9FA9A8|C6B5    |;
                       BPL CODE_9FA9A4                      ;9FA9AA|10F8    |;
                       LDA.W #$003C                         ;9FA9AC|A93C00  |;
                       STA.W $0D4F                          ;9FA9AF|8D4F0D  |;
                       JSL.L CODE_9FCDAC                    ;9FA9B2|22ACCD9F|;
                       STZ.B zpCurntTeamLoopVal             ;9FA9B6|6491    |;
                       JSL.L CODE_9FD407                    ;9FA9B8|2207D49F|;
                       JSL.L CODE_9FCE1D                    ;9FA9BC|221DCE9F|;
                       INC.B zpCurntTeamLoopVal             ;9FA9C0|E691    |;
                       INC.B zpCurntTeamLoopVal             ;9FA9C2|E691    |;
                       JSL.L CODE_9FD407                    ;9FA9C4|2207D49F|;
                       JSL.L CODE_9FCE1D                    ;9FA9C8|221DCE9F|;
                       JSL.L CODE_9FD252                    ;9FA9CC|2252D29F|;
                       LDA.W #$FFFF                         ;9FA9D0|A9FFFF  |;
                       STA.W $179E                          ;9FA9D3|8D9E17  |;
                       STA.W $17A2                          ;9FA9D6|8DA217  |;
                       STA.W $17A0                          ;9FA9D9|8DA017  |;
                       STA.W $17A4                          ;9FA9DC|8DA417  |;
                       LDA.B $97                            ;9FA9DF|A597    |;
                       PHA                                  ;9FA9E1|48      |;
                       LDA.B $95                            ;9FA9E2|A595    |;
                       PHA                                  ;9FA9E4|48      |;
                       STZ.B $95                            ;9FA9E5|6495    |;
                       LDA.W #$000B                         ;9FA9E7|A90B00  |;
                       STA.B $AD                            ;9FA9EA|85AD    |;
                       LDA.B $AD                            ;9FA9EC|A5AD    |;
                       PHA                                  ;9FA9EE|48      |;
 
          CODE_9FA9EF:
                       LDX.B $95                            ;9FA9EF|A695    |;
                       CPX.W #$0018                         ;9FA9F1|E01800  |;
                       BCS CODE_9FAA07                      ;9FA9F4|B011    |;
                       LDA.W $1503,X                        ;9FA9F6|BD0315  |;
                       LSR A                                ;9FA9F9|4A      |;
                       EOR.W $15D4                          ;9FA9FA|4DD415  |;
                       AND.W #$0002                         ;9FA9FD|290200  |;
                       LSR A                                ;9FAA00|4A      |;
                       EOR.W #$0001                         ;9FAA01|490100  |;
                       STA.W $14C3,X                        ;9FAA04|9DC314  |;
 
          CODE_9FAA07:
                       LDA.W $12A3,X                        ;9FAA07|BDA312  |;
                       ASL A                                ;9FAA0A|0A      |;
                       CPX.W #$000C                         ;9FAA0B|E00C00  |;
                       BCC CODE_9FAA14                      ;9FAA0E|9004    |;
                       CLC                                  ;9FAA10|18      |;
                       ADC.W #$0034                         ;9FAA11|693400  |;
 
          CODE_9FAA14:
                       TAX                                  ;9FAA14|AA      |;
                       LDA.W $1852,X                        ;9FAA15|BD5218  |;
                       BMI CODE_9FAA22                      ;9FAA18|3008    |;
                       BIT.W #$1000                         ;9FAA1A|890010  |;
                       BNE CODE_9FAA22                      ;9FAA1D|D003    |;
                       JMP.W CODE_9FABA2                    ;9FAA1F|4CA2AB  |;
 
          CODE_9FAA22:
                       LDX.B $95                            ;9FAA22|A695    |;
                       LDA.W #$FF10                         ;9FAA24|A910FF  |;
                       STA.W $0D55,X                        ;9FAA27|9D550D  |;
                       STZ.W $0DB7,X                        ;9FAA2A|9EB70D  |;
                       LDA.W #$0001                         ;9FAA2D|A90100  |;
                       STA.W $0D97,X                        ;9FAA30|9D970D  |;
                       LDA.W PStructPosition,X              ;9FAA33|BD430F  |;
                       STA.B $A9                            ;9FAA36|85A9    |;
                       BPL CODE_9FAA3D                      ;9FAA38|1003    |;
                       JMP.W CODE_9FABA2                    ;9FAA3A|4CA2AB  |;
 
          CODE_9FAA3D:
                       BEQ CODE_9FAA8A                      ;9FAA3D|F04B    |;
                       LDA.W IsPenaltyShot                  ;9FAA3F|AD9B1E  |;
                       BEQ CODE_9FAA59                      ;9FAA42|F015    |;
                       PHX                                  ;9FAA44|DA      |;
                       LDX.W #$0008                         ;9FAA45|A20800  |;
                       LDA.W $1E91                          ;9FAA48|AD911E  |;
                       BEQ CODE_9FAA50                      ;9FAA4B|F003    |;
                       LDX.W #$0014                         ;9FAA4D|A21400  |;
 
          CODE_9FAA50:
                       LDA.W $1E8F                          ;9FAA50|AD8F1E  |;
                       STA.W $12A3,X                        ;9FAA53|9DA312  |;
                       STA.B $B1                            ;9FAA56|85B1    |;
                       PLX                                  ;9FAA58|FA      |;
 
          CODE_9FAA59:
                       LDA.W #$0016                         ;9FAA59|A91600  |;
                       STA.B $A5                            ;9FAA5C|85A5    |;
                       LDA.B $A9                            ;9FAA5E|A5A9    |;
                       CMP.W #$0004                         ;9FAA60|C90400  |;
                       BNE CODE_9FAA86                      ;9FAA63|D021    |;
                       STZ.B zpCurntTeamLoopVal             ;9FAA65|6491    |;
                       LDA.W $1503,X                        ;9FAA67|BD0315  |;
                       BEQ CODE_9FAA70                      ;9FAA6A|F004    |;
                       INC.B zpCurntTeamLoopVal             ;9FAA6C|E691    |;
                       INC.B zpCurntTeamLoopVal             ;9FAA6E|E691    |;
 
          CODE_9FAA70:
                       LDY.B zpCurntTeamLoopVal             ;9FAA70|A491    |;
                       LDA.W $12A3,X                        ;9FAA72|BDA312  |;
                       AND.W #$00FF                         ;9FAA75|29FF00  |;
                       STA.W $179A,Y                        ;9FAA78|999A17  |;
                       LDA.W #$0004                         ;9FAA7B|A90400  |;
                       STA.W $17DE,Y                        ;9FAA7E|99DE17  |;
                       LDA.W #$0017                         ;9FAA81|A91700  |;
                       STA.B $A5                            ;9FAA84|85A5    |;
 
          CODE_9FAA86:
                       JSL.L CODE_9E8C0E                    ;9FAA86|220E8C9E|;
 
          CODE_9FAA8A:
                       LDA.W PlyrsOnIceCountHm              ;9FAA8A|ADA617  |;
                       STA.B $B5                            ;9FAA8D|85B5    |;
                       LDX.B $95                            ;9FAA8F|A695    |;
                       LDA.W $1503,X                        ;9FAA91|BD0315  |;
                       BEQ CODE_9FAA9B                      ;9FAA94|F005    |;
                       LDA.W PlyrsOnIceCountAwy             ;9FAA96|ADA817  |;
                       STA.B $B5                            ;9FAA99|85B5    |;
 
          CODE_9FAA9B:
                       LDA.B $B5                            ;9FAA9B|A5B5    |;
                       EOR.W #$FFFF                         ;9FAA9D|49FFFF  |;
                       INC A                                ;9FAAA0|1A      |;
                       CLC                                  ;9FAAA1|18      |;
                       ADC.W #$0006                         ;9FAAA2|690600  |;
                       ASL A                                ;9FAAA5|0A      |;
                       ASL A                                ;9FAAA6|0A      |;
                       ASL A                                ;9FAAA7|0A      |;
                       STA.B $B5                            ;9FAAA8|85B5    |;
                       LDA.W #$009F                         ;9FAAAA|A99F00  |;
                       STA.B $8F                            ;9FAAAD|858F    |;
                       LDA.W #$AEE2                         ;9FAAAF|A9E2AE  |;
                       CLC                                  ;9FAAB2|18      |;
                       ADC.B $B5                            ;9FAAB3|65B5    |;
                       STA.B $8D                            ;9FAAB5|858D    |;
                       LDA.W IsPenaltyShot                  ;9FAAB7|AD9B1E  |;
                       BEQ CODE_9FAAC6                      ;9FAABA|F00A    |;
                       LDA.W #$009F                         ;9FAABC|A99F00  |;
                       STA.B $8F                            ;9FAABF|858F    |;
                       LDA.W #$AEFA                         ;9FAAC1|A9FAAE  |;
                       STA.B $8D                            ;9FAAC4|858D    |;
 
          CODE_9FAAC6:
                       LDY.B $A9                            ;9FAAC6|A4A9    |;
                       LDA.B [$8D],Y                        ;9FAAC8|B78D    |;
                       AND.W #$00FF                         ;9FAACA|29FF00  |;
                       ASL A                                ;9FAACD|0A      |;
                       ASL A                                ;9FAACE|0A      |;
                       STA.B $B5                            ;9FAACF|85B5    |;
                       LDA.W #$009F                         ;9FAAD1|A99F00  |;
                       STA.B $8F                            ;9FAAD4|858F    |;
                       LDA.W #$AF02                         ;9FAAD6|A902AF  |;
                       STA.B $8D                            ;9FAAD9|858D    |;
                       LDY.B $B5                            ;9FAADB|A4B5    |;
                       LDA.B [$8D],Y                        ;9FAADD|B78D    |;
                       STA.B $A5                            ;9FAADF|85A5    |;
                       INY                                  ;9FAAE1|C8      |;
                       INY                                  ;9FAAE2|C8      |;
                       LDA.B [$8D],Y                        ;9FAAE3|B78D    |;
                       STA.B $A9                            ;9FAAE5|85A9    |;
                       LDA.W $14C3,X                        ;9FAAE7|BDC314  |;
                       BNE CODE_9FAAFC                      ;9FAAEA|D010    |;
                       LDA.W #$0000                         ;9FAAEC|A90000  |;
                       SEC                                  ;9FAAEF|38      |;
                       SBC.B $A5                            ;9FAAF0|E5A5    |;
                       STA.B $A5                            ;9FAAF2|85A5    |;
                       LDA.W #$0000                         ;9FAAF4|A90000  |;
                       SEC                                  ;9FAAF7|38      |;
                       SBC.B $A9                            ;9FAAF8|E5A9    |;
                       STA.B $A9                            ;9FAAFA|85A9    |;
 
          CODE_9FAAFC:
                       LDA.W PStructPosition,X              ;9FAAFC|BD430F  |;
                       BEQ CODE_9FAB51                      ;9FAAFF|F050    |;
                       LDA.B $B5                            ;9FAB01|A5B5    |;
                       CMP.W #$0009                         ;9FAB03|C90900  |;
                       BPL CODE_9FAB3F                      ;9FAB06|1037    |;
                       LDA.L $7E3136                        ;9FAB08|AF36317E|;
                       EOR.B $A5                            ;9FAB0C|45A5    |;
                       BPL CODE_9FAB28                      ;9FAB0E|1018    |;
                       LDA.L $7E3138                        ;9FAB10|AF38317E|;
                       LSR A                                ;9FAB14|4A      |;
                       LSR A                                ;9FAB15|4A      |;
                       LSR A                                ;9FAB16|4A      |;
                       BIT.W #$1000                         ;9FAB17|890010  |;
                       BEQ CODE_9FAB1F                      ;9FAB1A|F003    |;
                       ORA.W #$E000                         ;9FAB1C|0900E0  |;
 
          CODE_9FAB1F:
                       EOR.W #$FFFF                         ;9FAB1F|49FFFF  |;
                       INC A                                ;9FAB22|1A      |;
                       CLC                                  ;9FAB23|18      |;
                       ADC.B $A9                            ;9FAB24|65A9    |;
                       STA.B $A9                            ;9FAB26|85A9    |;
 
          CODE_9FAB28:
                       LDA.L $7E3136                        ;9FAB28|AF36317E|;
                       LSR A                                ;9FAB2C|4A      |;
                       LSR A                                ;9FAB2D|4A      |;
                       BIT.W #$2000                         ;9FAB2E|890020  |;
                       BEQ CODE_9FAB36                      ;9FAB31|F003    |;
                       ORA.W #$C000                         ;9FAB33|0900C0  |;
 
          CODE_9FAB36:
                       STA.B $B1                            ;9FAB36|85B1    |;
                       LDA.B $A5                            ;9FAB38|A5A5    |;
                       SEC                                  ;9FAB3A|38      |;
                       SBC.B $B1                            ;9FAB3B|E5B1    |;
                       STA.B $A5                            ;9FAB3D|85A5    |;
 
          CODE_9FAB3F:
                       LDA.B $A5                            ;9FAB3F|A5A5    |;
                       CLC                                  ;9FAB41|18      |;
                       ADC.L $7E3136                        ;9FAB42|6F36317E|;
                       STA.B $A5                            ;9FAB46|85A5    |;
                       LDA.B $A9                            ;9FAB48|A5A9    |;
                       CLC                                  ;9FAB4A|18      |;
                       ADC.L $7E3138                        ;9FAB4B|6F38317E|;
                       STA.B $A9                            ;9FAB4F|85A9    |;
 
          CODE_9FAB51:
                       LDA.B $A5                            ;9FAB51|A5A5    |;
                       STA.W $0D55,X                        ;9FAB53|9D550D  |;
                       SEC                                  ;9FAB56|38      |;
                       SBC.W $0D71                          ;9FAB57|ED710D  |;
                       EOR.W #$FFFF                         ;9FAB5A|49FFFF  |;
                       INC A                                ;9FAB5D|1A      |;
                       STA.B $A5                            ;9FAB5E|85A5    |;
                       LDA.B $A9                            ;9FAB60|A5A9    |;
                       STA.W $0DB7,X                        ;9FAB62|9DB70D  |;
                       SEC                                  ;9FAB65|38      |;
                       SBC.W $0DD3                          ;9FAB66|EDD30D  |;
                       EOR.W #$FFFF                         ;9FAB69|49FFFF  |;
                       INC A                                ;9FAB6C|1A      |;
                       STA.B $A9                            ;9FAB6D|85A9    |;
                       STZ.W $0EC3,X                        ;9FAB6F|9EC30E  |;
                       STZ.W $0EE3,X                        ;9FAB72|9EE30E  |;
                       JSL.L CODE_9BB445                    ;9FAB75|2245B49B|;
                       LDA.B $A5                            ;9FAB79|A5A5    |;
                       STA.W $1163,X                        ;9FAB7B|9D6311  |;
                       LDA.W $1283,X                        ;9FAB7E|BD8312  |;
                       AND.W #$EFFF                         ;9FAB81|29FFEF  |;
                       STA.W $1283,X                        ;9FAB84|9D8312  |;
                       STZ.W $14E3,X                        ;9FAB87|9EE314  |;
                       STZ.W $11A3,X                        ;9FAB8A|9EA311  |;
                       LDA.W PStructPosition,X              ;9FAB8D|BD430F  |;
                       BNE CODE_9FAB97                      ;9FAB90|D005    |;
                       LDA.W #$E0FE                         ;9FAB92|A9FEE0  |;
                       BRA CODE_9FAB9A                      ;9FAB95|8003    |;
 
          CODE_9FAB97:
                       LDA.W #$EA1A                         ;9FAB97|A91AEA  |;
 
          CODE_9FAB9A:
                       JSL.L CODE_9EA3F1                    ;9FAB9A|22F1A39E|;
                       JSL.L CODE_9EA419                    ;9FAB9E|2219A49E|;
 
          CODE_9FABA2:
                       INC.B $95                            ;9FABA2|E695    |;
                       INC.B $95                            ;9FABA4|E695    |;
                       PLA                                  ;9FABA6|68      |;
                       STA.B $AD                            ;9FABA7|85AD    |;
                       DEC.B $AD                            ;9FABA9|C6AD    |;
                       LDA.B $AD                            ;9FABAB|A5AD    |;
                       PHA                                  ;9FABAD|48      |;
                       BMI CODE_9FABB3                      ;9FABAE|3003    |;
                       JMP.W CODE_9FA9EF                    ;9FABB0|4CEFA9  |;
 
          CODE_9FABB3:
                       PLA                                  ;9FABB3|68      |;
                       STA.B $AD                            ;9FABB4|85AD    |;
                       JSL.L CODE_9CA19B                    ;9FABB6|229BA19C|;
                       PLA                                  ;9FABBA|68      |;
                       STA.B $95                            ;9FABBB|8595    |;
                       PLA                                  ;9FABBD|68      |;
                       STA.B $97                            ;9FABBE|8597    |;
                       LDA.W IsPenaltyShot                  ;9FABC0|AD9B1E  |;
                       BEQ CODE_9FAC25                      ;9FABC3|F060    |;
                       LDX.W #$0008                         ;9FABC5|A20800  |;
 
          CODE_9FABC8:
                       LDA.W $19F6,X                        ;9FABC8|BDF619  |;
                       CMP.W $1E91                          ;9FABCB|CD911E  |;
                       BNE CODE_9FABDE                      ;9FABCE|D00E    |;
                       CPX.W $1E93                          ;9FABD0|EC931E  |;
                       BEQ CODE_9FABDE                      ;9FABD3|F009    |;
                       db $09,$00,$80,$9D,$F6,$19,$9E,$84   ;9FABD5|        |;
                       db $1C                               ;9FABDD|        |;
 
          CODE_9FABDE:
                       DEX                                  ;9FABDE|CA      |;
                       DEX                                  ;9FABDF|CA      |;
                       BPL CODE_9FABC8                      ;9FABE0|10E6    |;
                       LDA.W $1E91                          ;9FABE2|AD911E  |;
                       EOR.W #$0002                         ;9FABE5|490200  |;
                       STA.B $A5                            ;9FABE8|85A5    |;
                       TAX                                  ;9FABEA|AA      |;
                       LDA.W $19D0,X                        ;9FABEB|BDD019  |;
                       BEQ CODE_9FAC25                      ;9FABEE|F035    |;
                       LDY.W $0AFD,X                        ;9FABF0|BCFD0A  |;
 
          CODE_9FABF3:
                       INY                                  ;9FABF3|C8      |;
                       INY                                  ;9FABF4|C8      |;
                       CPY.W #$000A                         ;9FABF5|C00A00  |;
                       BNE CODE_9FABFD                      ;9FABF8|D003    |;
                       LDY.W #$0000                         ;9FABFA|A00000  |;
 
          CODE_9FABFD:
                       LDA.W $19F6,Y                        ;9FABFD|B9F619  |;
                       CMP.B $A5                            ;9FAC00|C5A5    |;
                       BNE CODE_9FABF3                      ;9FAC02|D0EF    |;
                       STY.B $A9                            ;9FAC04|84A9    |;
                       TYA                                  ;9FAC06|98      |;
                       STA.W $0AFD,X                        ;9FAC07|9DFD0A  |;
                       LDX.W #$0008                         ;9FAC0A|A20800  |;
 
          CODE_9FAC0D:
                       LDA.W $19F6,X                        ;9FAC0D|BDF619  |;
                       CMP.B $A5                            ;9FAC10|C5A5    |;
                       BNE CODE_9FAC21                      ;9FAC12|D00D    |;
                       CPX.B $A9                            ;9FAC14|E4A9    |;
                       BEQ CODE_9FAC21                      ;9FAC16|F009    |;
                       db $09,$00,$80,$9D,$F6,$19,$9E,$84   ;9FAC18|        |;
                       db $1C                               ;9FAC20|        |;
 
          CODE_9FAC21:
                       DEX                                  ;9FAC21|CA      |;
                       DEX                                  ;9FAC22|CA      |;
                       BPL CODE_9FAC0D                      ;9FAC23|10E8    |;
 
          CODE_9FAC25:
                       LDX.B $95                            ;9FAC25|A695    |;
                       JSL.L CODE_9FC988                    ;9FAC27|2288C99F|;
                       LDA.B $8F                            ;9FAC2B|A58F    |;
                       PHA                                  ;9FAC2D|48      |;
                       LDA.B $8D                            ;9FAC2E|A58D    |;
                       PHA                                  ;9FAC30|48      |;
                       LDA.W #$009C                         ;9FAC31|A99C00  |;
                       STA.B $8F                            ;9FAC34|858F    |;
                       LDA.W #$F8AE                         ;9FAC36|A9AEF8  |;
                       STA.B $8D                            ;9FAC39|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FAC3B|22BEC79E|;
                       PLA                                  ;9FAC3F|68      |;
                       STA.B $8D                            ;9FAC40|858D    |;
                       PLA                                  ;9FAC42|68      |;
                       STA.B $8F                            ;9FAC43|858F    |;
                       LDA.W #$0036                         ;9FAC45|A93600  |;
                       STA.B $A5                            ;9FAC48|85A5    |;
                       LDA.L $7E3136                        ;9FAC4A|AF36317E|;
                       BPL CODE_9FAC55                      ;9FAC4E|1005    |;
                       LDA.W #$00BE                         ;9FAC50|A9BE00  |;
                       STA.B $A5                            ;9FAC53|85A5    |;
 
          CODE_9FAC55:
                       LDA.B $A5                            ;9FAC55|A5A5    |;
                       STA.L $7E3126                        ;9FAC57|8F26317E|;
                       SEC                                  ;9FAC5B|38      |;
                       SBC.W #$002E                         ;9FAC5C|E92E00  |;
                       LSR A                                ;9FAC5F|4A      |;
                       LSR A                                ;9FAC60|4A      |;
                       LSR A                                ;9FAC61|4A      |;
                       STA.W $0D0F                          ;9FAC62|8D0F0D  |;
                       LDA.W #$005C                         ;9FAC65|A95C00  |;
                       STA.L $7E3128                        ;9FAC68|8F28317E|;
                       LDA.W #$0003                         ;9FAC6C|A90300  |;
                       STA.W $0D11                          ;9FAC6F|8D110D  |;
                       LDA.W $0D11                          ;9FAC72|AD110D  |;
                       ASL A                                ;9FAC75|0A      |;
                       ASL A                                ;9FAC76|0A      |;
                       ASL A                                ;9FAC77|0A      |;
                       ASL A                                ;9FAC78|0A      |;
                       ASL A                                ;9FAC79|0A      |;
                       ADC.W $0D0F                          ;9FAC7A|6D0F0D  |;
                       JSL.L CODE_9F9353                    ;9FAC7D|2253939F|;
                       LDA.W $0D11                          ;9FAC81|AD110D  |;
                       CLC                                  ;9FAC84|18      |;
                       ADC.L DATA8_9AD6A8                   ;9FAC85|6FA8D69A|;
                       DEC A                                ;9FAC89|3A      |;
                       ASL A                                ;9FAC8A|0A      |;
                       ASL A                                ;9FAC8B|0A      |;
                       ASL A                                ;9FAC8C|0A      |;
                       ASL A                                ;9FAC8D|0A      |;
                       ASL A                                ;9FAC8E|0A      |;
                       ADC.W $0D0F                          ;9FAC8F|6D0F0D  |;
                       ADC.L DATA8_9AD6A6                   ;9FAC92|6FA6D69A|;
                       DEC A                                ;9FAC96|3A      |;
                       JSL.L CODE_9F935C                    ;9FAC97|225C939F|;
                       JSL.L CODE_9EBF11                    ;9FAC9B|2211BF9E|;
                       LDA.W #$D6AC                         ;9FAC9F|A9ACD6  |;
                       STA.L $7E3120                        ;9FACA2|8F20317E|;
                       STA.B $C5                            ;9FACA6|85C5    |;
                       LDA.W #$009A                         ;9FACA8|A99A00  |;
                       STA.B $C7                            ;9FACAB|85C7    |;
                       LDA.W $0D11                          ;9FACAD|AD110D  |;
                       ASL A                                ;9FACB0|0A      |;
                       ASL A                                ;9FACB1|0A      |;
                       ASL A                                ;9FACB2|0A      |;
                       ASL A                                ;9FACB3|0A      |;
                       ASL A                                ;9FACB4|0A      |;
                       ADC.W $0D0F                          ;9FACB5|6D0F0D  |;
                       ASL A                                ;9FACB8|0A      |;
                       TAX                                  ;9FACB9|AA      |;
                       LDY.W #$0000                         ;9FACBA|A00000  |;
                       LDA.L DATA8_9AD6A8                   ;9FACBD|AFA8D69A|;
                       STA.B $C8                            ;9FACC1|85C8    |;
                       CLC                                  ;9FACC3|18      |;
                       LDA.W IsPenaltyShot                  ;9FACC4|AD9B1E  |;
                       BNE CODE_9FACFC                      ;9FACC7|D033    |;
 
          CODE_9FACC9:
                       LDA.L DATA8_9AD6A6                   ;9FACC9|AFA6D69A|;
                       STA.B $CA                            ;9FACCD|85CA    |;
 
          CODE_9FACCF:
                       LDA.B [$C5],Y                        ;9FACCF|B7C5    |;
                       CLC                                  ;9FACD1|18      |;
                       ADC.L $7E35BA                        ;9FACD2|6FBA357E|;
                       ADC.L $7E35AA                        ;9FACD6|6FAA357E|;
                       STA.L $7E37F4,X                      ;9FACDA|9FF4377E|;
                       INY                                  ;9FACDE|C8      |;
                       INY                                  ;9FACDF|C8      |;
                       INX                                  ;9FACE0|E8      |;
                       INX                                  ;9FACE1|E8      |;
                       DEC.B $CA                            ;9FACE2|C6CA    |;
                       BNE CODE_9FACCF                      ;9FACE4|D0E9    |;
                       TXA                                  ;9FACE6|8A      |;
                       CLC                                  ;9FACE7|18      |;
                       ADC.W #$0040                         ;9FACE8|694000  |;
                       SEC                                  ;9FACEB|38      |;
                       SBC.L DATA8_9AD6A6                   ;9FACEC|EFA6D69A|;
                       SBC.L DATA8_9AD6A6                   ;9FACF0|EFA6D69A|;
                       TAX                                  ;9FACF4|AA      |;
                       DEC.B $C8                            ;9FACF5|C6C8    |;
                       BNE CODE_9FACC9                      ;9FACF7|D0D0    |;
                       JMP.W CODE_9FADB5                    ;9FACF9|4CB5AD  |;
 
          CODE_9FACFC:
                       LDA.W #$0001                         ;9FACFC|A90100  |;
                       STA.W $0D11                          ;9FACFF|8D110D  |;
                       LDA.W #$0006                         ;9FAD02|A90600  |;
                       STA.W $0D0F                          ;9FAD05|8D0F0D  |;
                       LDA.W #$0014                         ;9FAD08|A91400  |;
                       STA.B $A5                            ;9FAD0B|85A5    |;
                       LDA.W #$0008                         ;9FAD0D|A90800  |;
                       STA.B $A9                            ;9FAD10|85A9    |;
                       JSL.L CODE_9D8000                    ;9FAD12|2200809D|;
                       LDA.W $1E91                          ;9FAD16|AD911E  |;
                       STA.B zpCurntTeamLoopVal             ;9FAD19|8591    |;
                       LDA.W #$0005                         ;9FAD1B|A90500  |;
                       STA.W $0D11                          ;9FAD1E|8D110D  |;
                       LDA.W $1E8F                          ;9FAD21|AD8F1E  |;
                       STA.B $A5                            ;9FAD24|85A5    |;
                       JSL.L CODE_9FC427                    ;9FAD26|2227C49F|;
                       LDA.W #$0014                         ;9FAD2A|A91400  |;
                       SEC                                  ;9FAD2D|38      |;
                       SBC.B [$8D]                          ;9FAD2E|E78D    |;
                       LSR A                                ;9FAD30|4A      |;
                       CLC                                  ;9FAD31|18      |;
                       ADC.W #$0007                         ;9FAD32|690700  |;
                       STA.W $0D0F                          ;9FAD35|8D0F0D  |;
                       JSL.L CODE_9EC7BE                    ;9FAD38|22BEC79E|;
                       INC.W $0D11                          ;9FAD3C|EE110D  |;
                       LDA.W #$000F                         ;9FAD3F|A90F00  |;
                       STA.W $0D0F                          ;9FAD42|8D0F0D  |;
                       LDA.B $8F                            ;9FAD45|A58F    |;
                       PHA                                  ;9FAD47|48      |;
                       LDA.B $8D                            ;9FAD48|A58D    |;
                       PHA                                  ;9FAD4A|48      |;
                       LDA.W #$009C                         ;9FAD4B|A99C00  |;
                       STA.B $8F                            ;9FAD4E|858F    |;
                       LDA.W #$F8B3                         ;9FAD50|A9B3F8  |;
                       STA.B $8D                            ;9FAD53|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FAD55|22BEC79E|;
                       PLA                                  ;9FAD59|68      |;
                       STA.B $8D                            ;9FAD5A|858D    |;
                       PLA                                  ;9FAD5C|68      |;
                       STA.B $8F                            ;9FAD5D|858F    |;
                       INC.W $0D11                          ;9FAD5F|EE110D  |;
                       LDA.W $1E91                          ;9FAD62|AD911E  |;
                       EOR.W #$0002                         ;9FAD65|490200  |;
                       STA.B zpCurntTeamLoopVal             ;9FAD68|8591    |;
                       TAY                                  ;9FAD6A|A8      |;
                       LDA.W GoalieInNetHmAw,Y              ;9FAD6B|B9AA17  |;
                       STA.B $A5                            ;9FAD6E|85A5    |;
                       JSL.L CODE_9FC427                    ;9FAD70|2227C49F|;
                       LDA.W #$0014                         ;9FAD74|A91400  |;
                       SEC                                  ;9FAD77|38      |;
                       SBC.B [$8D]                          ;9FAD78|E78D    |;
                       LSR A                                ;9FAD7A|4A      |;
                       CLC                                  ;9FAD7B|18      |;
                       ADC.W #$0007                         ;9FAD7C|690700  |;
                       STA.W $0D0F                          ;9FAD7F|8D0F0D  |;
                       JSL.L CODE_9EC7BE                    ;9FAD82|22BEC79E|;
                       LDA.W #$0007                         ;9FAD86|A90700  |;
                       STA.W $0D0F                          ;9FAD89|8D0F0D  |;
                       LDA.W #$0002                         ;9FAD8C|A90200  |;
                       STA.W $0D11                          ;9FAD8F|8D110D  |;
                       LDA.W $1D81                          ;9FAD92|AD811D  |;
                       BEQ UNREACH_9FADA7                   ;9FAD95|F010    |;
                       LDA.W #$009C                         ;9FAD97|A99C00  |;
                       STA.B $8F                            ;9FAD9A|858F    |;
                       LDA.W #$F8B8                         ;9FAD9C|A9B8F8  |;
                       STA.B $8D                            ;9FAD9F|858D    |;
                       JSL.L CODE_9ECE15                    ;9FADA1|2215CE9E|;
                       BRA CODE_9FADB5                      ;9FADA5|800E    |;
 
       UNREACH_9FADA7:
                       db $A9,$9C,$00,$85,$8F,$A9,$C2,$F8   ;9FADA7|        |;
                       db $85,$8D,$22,$15,$CE,$9E           ;9FADAF|        |;
 
          CODE_9FADB5:
                       LDX.B $95                            ;9FADB5|A695    |;
                       LDA.L $7E34C6                        ;9FADB7|AFC6347E|;
                       BEQ CODE_9FAE2E                      ;9FADBB|F071    |;
                       db $AD,$9B,$1E,$0D,$9D,$1E,$D0,$69   ;9FADBD|        |;
                       db $AD,$11,$0D,$18,$69,$0A,$00,$8D   ;9FADC5|        |;
                       db $11,$0D,$A9,$0C,$00,$85,$A5,$A9   ;9FADCD|        |;
                       db $03,$00,$85,$A9,$22,$00,$80,$9D   ;9FADD5|        |;
                       db $AD,$96,$17,$85,$A5,$AD,$98,$17   ;9FADDD|        |;
                       db $85,$A9,$AD,$D4,$15,$89,$02,$00   ;9FADE5|        |;
                       db $D0,$0A,$AD,$96,$17,$85,$A9,$AD   ;9FADED|        |;
                       db $98,$17,$85,$A5,$EE,$0F,$0D,$CE   ;9FADF5|        |;
                       db $11,$0D,$CE,$11,$0D,$A9,$80,$00   ;9FADFD|        |;
                       db $85,$8F,$A9,$BE,$D6,$85,$8D,$22   ;9FAE05|        |;
                       db $C6,$CF,$9E,$EE,$0F,$0D,$EE,$0F   ;9FAE0D|        |;
                       db $0D,$EE,$0F,$0D,$EE,$0F,$0D,$A5   ;9FAE15|        |;
                       db $A9,$85,$A5,$A9,$80,$00,$85,$8F   ;9FAE1D|        |;
                       db $A9,$BE,$D6,$85,$8D,$22,$C6,$CF   ;9FAE25|        |;
                       db $9E                               ;9FAE2D|        |;
 
          CODE_9FAE2E:
                       JSL.L CODE_808658                    ;9FAE2E|22588680|;
                       AND.W #$007F                         ;9FAE32|297F00  |;
                       ADC.W #$00B4                         ;9FAE35|69B400  |;
                       STA.B $A5                            ;9FAE38|85A5    |;
                       LDX.B $95                            ;9FAE3A|A695    |;
                       STA.W $1003,X                        ;9FAE3C|9D0310  |;
                       LDA.W IsPenaltyShot                  ;9FAE3F|AD9B1E  |;
                       BEQ CODE_9FAE4A                      ;9FAE42|F006    |;
                       LDA.W #$00B4                         ;9FAE44|A9B400  |;
                       STA.W $1003,X                        ;9FAE47|9D0310  |;
 
          CODE_9FAE4A:
                       LDA.W #$0001                         ;9FAE4A|A90100  |;
                       STA.L $7E312A                        ;9FAE4D|8F2A317E|;
                       LDA.W #$8000                         ;9FAE51|A90080  |;
                       STA.L $7E312C                        ;9FAE54|8F2C317E|;
                       STA.L $7E3134                        ;9FAE58|8F34317E|;
                       LDA.W #$0004                         ;9FAE5C|A90400  |;
                       STA.L $7E312E                        ;9FAE5F|8F2E317E|;
                       LDA.W #$A800                         ;9FAE63|A900A8  |;
                       STA.L $7E3130                        ;9FAE66|8F30317E|;
                       LDA.W #$0007                         ;9FAE6A|A90700  |;
                       STA.L $7E3132                        ;9FAE6D|8F32317E|;
                       LDA.W $15D4                          ;9FAE71|ADD415  |;
                       BIT.W #$0002                         ;9FAE74|890200  |;
                       BNE CODE_9FAE87                      ;9FAE77|D00E    |;
                       LDA.W #$8800                         ;9FAE79|A90088  |;
                       STA.L $7E312C                        ;9FAE7C|8F2C317E|;
                       LDA.W #$A000                         ;9FAE80|A900A0  |;
                       STA.L $7E3130                        ;9FAE83|8F30317E|;
 
          CODE_9FAE87:
                       LDA.W #$FFFF                         ;9FAE87|A9FFFF  |;
                       STA.L $7E3122                        ;9FAE8A|8F22317E|;
                       STA.L $7E3124                        ;9FAE8E|8F24317E|;
                       STX.B $87                            ;9FAE92|8687    |;
                       LDX.W #$001A                         ;9FAE94|A21A00  |;
 
          CODE_9FAE97:
                       PLA                                  ;9FAE97|68      |;
                       STA.B $89,X                          ;9FAE98|9589    |;
                       DEX                                  ;9FAE9A|CA      |;
                       DEX                                  ;9FAE9B|CA      |;
                       BPL CODE_9FAE97                      ;9FAE9C|10F9    |;
                       LDX.B $87                            ;9FAE9E|A687    |;
                       STX.B $87                            ;9FAEA0|8687    |;
                       LDX.W #$001E                         ;9FAEA2|A21E00  |;
 
          CODE_9FAEA5:
                       PLA                                  ;9FAEA5|68      |;
                       STA.B $A5,X                          ;9FAEA6|95A5    |;
                       DEX                                  ;9FAEA8|CA      |;
                       DEX                                  ;9FAEA9|CA      |;
                       BPL CODE_9FAEA5                      ;9FAEAA|10F9    |;
                       LDX.B $87                            ;9FAEAC|A687    |;
                       LDX.B $95                            ;9FAEAE|A695    |;
                       RTL                                  ;9FAEB0|6B      |;
 
          CODE_9FAEB1:
                       LDA.B $C1                            ;9FAEB1|A5C1    |;
                       STA.B $C5                            ;9FAEB3|85C5    |;
                       CMP.W $1003,X                        ;9FAEB5|DD0310  |;
                       BMI CODE_9FAEBF                      ;9FAEB8|3005    |;
                       LDA.W #$0001                         ;9FAEBA|A90100  |;
                       STA.B $C5                            ;9FAEBD|85C5    |;
 
          CODE_9FAEBF:
                       LDA.W $1003,X                        ;9FAEBF|BD0310  |;
                       SEC                                  ;9FAEC2|38      |;
                       SBC.B $C5                            ;9FAEC3|E5C5    |;
                       STA.W $1003,X                        ;9FAEC5|9D0310  |;
                       BPL CODE_9FAF1E                      ;9FAEC8|1054    |;
                       LDA.W IsPenaltyShot                  ;9FAECA|AD9B1E  |;
                       BEQ CODE_9FAED6                      ;9FAECD|F007    |;
                       JSL.L CODE_9FB092                    ;9FAECF|2292B09F|;
                       JMP.W CODE_9FAFBE                    ;9FAED3|4CBEAF  |;
 
          CODE_9FAED6:
                       STZ.W $163A                          ;9FAED6|9C3A16  |;
                       LDA.W #$FFFF                         ;9FAED9|A9FFFF  |;
                       STA.W $1E8D                          ;9FAEDC|8D8D1E  |;
                       JMP.W CODE_9FB092                    ;9FAEDF|4C92B0  |;
                       db $00,$01,$02,$03,$04,$05,$06       ;9FAEE2|        |;
                       db $00,$00,$01,$05,$03,$04,$02,$00   ;9FAEE9|        |;
                       db $00,$00,$03,$05,$01,$04,$00,$00   ;9FAEF1|        |;
                       db $00,$00,$04,$04,$04,$04,$04,$04   ;9FAEF9|        |;
                       db $00                               ;9FAF01|        |;
                       db $00,$00,$06,$FF,$DD,$FF,$CE,$FF   ;9FAF02|        |;
                       db $23,$00,$CE,$FF,$CE,$FF,$F6,$FF   ;9FAF0A|        |;
                       db $00,$00,$F1,$FF,$32,$00,$F6,$FF   ;9FAF12|        |;
                       db $00,$00,$C4,$FF                   ;9FAF1A|        |;
 
          CODE_9FAF1E:
                       LDA.W $1003,X                        ;9FAF1E|BD0310  |;
                       BEQ CODE_9FAF42                      ;9FAF21|F01F    |;
                       CLC                                  ;9FAF23|18      |;
                       ADC.W #$0006                         ;9FAF24|690600  |;
                       LSR A                                ;9FAF27|4A      |;
                       LSR A                                ;9FAF28|4A      |;
                       LSR A                                ;9FAF29|4A      |;
                       STA.B $A5                            ;9FAF2A|85A5    |;
                       CMP.W #$0003                         ;9FAF2C|C90300  |;
                       BPL CODE_9FAF41                      ;9FAF2F|1010    |;
                       LDA.B $A5                            ;9FAF31|A5A5    |;
                       EOR.W #$FFFF                         ;9FAF33|49FFFF  |;
                       INC A                                ;9FAF36|1A      |;
                       CLC                                  ;9FAF37|18      |;
                       ADC.W #$000A                         ;9FAF38|690A00  |;
                       STA.B $A5                            ;9FAF3B|85A5    |;
                       STA.L $7E3132                        ;9FAF3D|8F32317E|;
 
          CODE_9FAF41:
                       RTL                                  ;9FAF41|6B      |;
 
          CODE_9FAF42:
                       LDA.W IsPenaltyShot                  ;9FAF42|AD9B1E  |;
                       BNE CODE_9FAF97                      ;9FAF45|D050    |;
                       LDA.B $8F                            ;9FAF47|A58F    |;
                       PHA                                  ;9FAF49|48      |;
                       LDA.B $8D                            ;9FAF4A|A58D    |;
                       PHA                                  ;9FAF4C|48      |;
                       LDA.W #$009C                         ;9FAF4D|A99C00  |;
                       STA.B $8F                            ;9FAF50|858F    |;
                       LDA.W #$F8CD                         ;9FAF52|A9CDF8  |;
                       STA.B $8D                            ;9FAF55|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FAF57|22BEC79E|;
                       PLA                                  ;9FAF5B|68      |;
                       STA.B $8D                            ;9FAF5C|858D    |;
                       PLA                                  ;9FAF5E|68      |;
                       STA.B $8F                            ;9FAF5F|858F    |;
                       LDA.L $7E3126                        ;9FAF61|AF26317E|;
                       SEC                                  ;9FAF65|38      |;
                       SBC.W #$002E                         ;9FAF66|E92E00  |;
                       LSR A                                ;9FAF69|4A      |;
                       LSR A                                ;9FAF6A|4A      |;
                       LSR A                                ;9FAF6B|4A      |;
                       BIT.W #$1000                         ;9FAF6C|890010  |;
                       BEQ CODE_9FAF74                      ;9FAF6F|F003    |;
                       db $09,$00,$E0                       ;9FAF71|        |;
 
          CODE_9FAF74:
                       STA.W $0D0F                          ;9FAF74|8D0F0D  |;
                       LDA.L $7E3128                        ;9FAF77|AF28317E|;
                       SEC                                  ;9FAF7B|38      |;
                       SBC.W #$0044                         ;9FAF7C|E94400  |;
                       LSR A                                ;9FAF7F|4A      |;
                       LSR A                                ;9FAF80|4A      |;
                       LSR A                                ;9FAF81|4A      |;
                       BIT.W #$1000                         ;9FAF82|890010  |;
                       BEQ CODE_9FAF8A                      ;9FAF85|F003    |;
                       db $09,$00,$E0                       ;9FAF87|        |;
 
          CODE_9FAF8A:
                       STA.W $0D11                          ;9FAF8A|8D110D  |;
                       LDA.W #$000C                         ;9FAF8D|A90C00  |;
                       STA.B $A5                            ;9FAF90|85A5    |;
                       INC A                                ;9FAF92|1A      |;
                       STA.B $A9                            ;9FAF93|85A9    |;
                       BRA CODE_9FAFAD                      ;9FAF95|8016    |;
 
          CODE_9FAF97:
                       LDA.W #$0001                         ;9FAF97|A90100  |;
                       STA.W $0D11                          ;9FAF9A|8D110D  |;
                       LDA.W #$0006                         ;9FAF9D|A90600  |;
                       STA.W $0D0F                          ;9FAFA0|8D0F0D  |;
                       LDA.W #$0014                         ;9FAFA3|A91400  |;
                       STA.B $A5                            ;9FAFA6|85A5    |;
                       LDA.W #$0008                         ;9FAFA8|A90800  |;
                       STA.B $A9                            ;9FAFAB|85A9    |;
 
          CODE_9FAFAD:
                       LDA.L $7E35D0                        ;9FAFAD|AFD0357E|;
                       STA.B $AD                            ;9FAFB1|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9FAFB3|229CBD9F|;
                       STZ.W $0764                          ;9FAFB7|9C6407  |;
                       STZ.W $1D6D                          ;9FAFBA|9C6D1D  |;
                       RTL                                  ;9FAFBD|6B      |;
 
          CODE_9FAFBE:
                       STZ.W $0D71                          ;9FAFBE|9C710D  |;
                       STZ.W $0DD3                          ;9FAFC1|9CD30D  |;
                       STZ.W PucVertVeloc                   ;9FAFC4|9CF90D  |;
                       STZ.W $0EDF                          ;9FAFC7|9CDF0E  |;
                       STZ.W $0EFF                          ;9FAFCA|9CFF0E  |;
                       STZ.W $0E01                          ;9FAFCD|9C010E  |;
                       PHX                                  ;9FAFD0|DA      |;
                       LDX.W #$0000                         ;9FAFD1|A20000  |;
                       LDA.W #$0002                         ;9FAFD4|A90200  |;
                       STA.B $B5                            ;9FAFD7|85B5    |;
                       LDA.W $1E91                          ;9FAFD9|AD911E  |;
                       BEQ CODE_9FAFE6                      ;9FAFDC|F008    |;
                       LDX.W #$000C                         ;9FAFDE|A20C00  |;
                       LDA.W #$0000                         ;9FAFE1|A90000  |;
                       STA.B $B5                            ;9FAFE4|85B5    |;
 
          CODE_9FAFE6:
                       LDA.W #$0010                         ;9FAFE6|A91000  |;
                       STA.B $A5                            ;9FAFE9|85A5    |;
                       JSL.L CODE_9FB06C                    ;9FAFEB|226CB09F|;
                       JSL.L CODE_9FB06C                    ;9FAFEF|226CB09F|;
                       JSL.L CODE_9FB06C                    ;9FAFF3|226CB09F|;
                       JSL.L CODE_9FB06C                    ;9FAFF7|226CB09F|;
                       JSL.L CODE_9FB06C                    ;9FAFFB|226CB09F|;
                       JSL.L CODE_9FB06C                    ;9FAFFF|226CB09F|;
                       LDX.B $B5                            ;9FB003|A6B5    |;
                       LDA.W $19D0,X                        ;9FB005|BDD019  |;
                       BEQ CODE_9FB02A                      ;9FB008|F020    |;
                       LDA.W $1C90,X                        ;9FB00A|BD901C  |;
                       BEQ CODE_9FB02A                      ;9FB00D|F01B    |;
                       LDY.W #$0000                         ;9FB00F|A00000  |;
                       LDA.W $19F6,Y                        ;9FB012|B9F619  |;
                       BMI UNREACH_9FB01B                   ;9FB015|3004    |;
                       CMP.B $B5                            ;9FB017|C5B5    |;
                       BEQ CODE_9FB024                      ;9FB019|F009    |;
 
       UNREACH_9FB01B:
                       db $C8,$C8,$C0,$0A,$00,$90,$F0,$80   ;9FB01B|        |;
                       db $06                               ;9FB023|        |;
 
          CODE_9FB024:
                       STY.B $B5                            ;9FB024|84B5    |;
                       JSL.L CODE_9FCD2A                    ;9FB026|222ACD9F|;
 
          CODE_9FB02A:
                       PLX                                  ;9FB02A|FA      |;
                       LDY.W $1E91                          ;9FB02B|AC911E  |;
                       LDA.W #$FFFF                         ;9FB02E|A9FFFF  |;
                       STA.W $179A,Y                        ;9FB031|999A17  |;
                       STA.W $179E,Y                        ;9FB034|999E17  |;
                       STA.W $17A2,Y                        ;9FB037|99A217  |;
                       LDA.W $19BE                          ;9FB03A|ADBE19  |;
                       CLC                                  ;9FB03D|18      |;
                       ADC.W #$0014                         ;9FB03E|691400  |;
                       BMI CODE_9FB046                      ;9FB041|3003    |;
                       STA.W $19BE                          ;9FB043|8DBE19  |;
 
          CODE_9FB046:
                       LDA.W $1E8D                          ;9FB046|AD8D1E  |;
                       STA.W $0AD9                          ;9FB049|8DD90A  |;
                       TAY                                  ;9FB04C|A8      |;
                       LDA.W $1E93                          ;9FB04D|AD931E  |;
                       BMI CODE_9FB055                      ;9FB050|3003    |;
                       STA.W $19D4,Y                        ;9FB052|99D419  |;
 
          CODE_9FB055:
                       STZ.W $163A                          ;9FB055|9C3A16  |;
                       INC.W $163A                          ;9FB058|EE3A16  |;
                       LDA.W #$0001                         ;9FB05B|A90100  |;
                       STA.W $1E9D                          ;9FB05E|8D9D1E  |;
                       LDA.W #$03E8                         ;9FB061|A9E803  |;
                       STA.W $1E9F                          ;9FB064|8D9F1E  |;
                       JSL.L CODE_9EC107                    ;9FB067|2207C19E|;
                       RTL                                  ;9FB06B|6B      |;
 
          CODE_9FB06C:
                       STX.W $0AD9                          ;9FB06C|8ED90A  |;
                       JSL.L CODE_9E8C0E                    ;9FB06F|220E8C9E|;
                       JSL.L CODE_9E8C0E                    ;9FB073|220E8C9E|;
                       JSL.L CODE_9E8C0E                    ;9FB077|220E8C9E|;
                       JSL.L CODE_9E8C0E                    ;9FB07B|220E8C9E|;
                       JSL.L CODE_9E8C0E                    ;9FB07F|220E8C9E|;
                       JSL.L CODE_9E8C0E                    ;9FB083|220E8C9E|;
                       JSL.L CODE_9E8C0E                    ;9FB087|220E8C9E|;
                       JSL.L CODE_9E8C0E                    ;9FB08B|220E8C9E|;
                       INX                                  ;9FB08F|E8      |;
                       INX                                  ;9FB090|E8      |;
                       RTL                                  ;9FB091|6B      |;
 
          CODE_9FB092:
                       LDA.W #$2400                         ;9FB092|A90024  |;
                       STA.B $0C                            ;9FB095|850C    |;
                       STZ.B $0E                            ;9FB097|640E    |;
                       LDA.W #$0007                         ;9FB099|A90700  |;
                       JSL.L CODE_9C9AD0                    ;9FB09C|22D09A9C|;
                       LDA.W #$0100                         ;9FB0A0|A90001  |;
                       TRB.W $15D8                          ;9FB0A3|1CD815  |;
                       LDA.W #$0000                         ;9FB0A6|A90000  |;
                       STA.L $7E3120                        ;9FB0A9|8F20317E|;
                       LDA.W #$0400                         ;9FB0AD|A90004  |;
                       TRB.W $15D8                          ;9FB0B0|1CD815  |;
                       STZ.W $0CA9                          ;9FB0B3|9CA90C  |;
                       STZ.W $15D6                          ;9FB0B6|9CD615  |; Game Play Is In Progress
                       LDA.W #$0010                         ;9FB0B9|A91000  |;
                       TSB.W $15DC                          ;9FB0BC|0CDC15  |;
                       LDA.L $7E3122                        ;9FB0BF|AF22317E|;
                       STA.B $B1                            ;9FB0C3|85B1    |;
                       LDA.W #$0800                         ;9FB0C5|A90008  |;
                       STA.B $B5                            ;9FB0C8|85B5    |;
                       STZ.B $8D                            ;9FB0CA|648D    |;
                       LDA.W #$0010                         ;9FB0CC|A91000  |;
                       STA.B $AD                            ;9FB0CF|85AD    |;
                       LDA.L $7E312A                        ;9FB0D1|AF2A317E|;
                       TAX                                  ;9FB0D5|AA      |;
                       LDA.L CODE_9FB1F6,X                  ;9FB0D6|BFF6B19F|;
                       AND.W #$00FF                         ;9FB0DA|29FF00  |;
                       BIT.W #$0080                         ;9FB0DD|898000  |;
                       BEQ CODE_9FB0E5                      ;9FB0E0|F003    |;
                       db $09,$00,$FF                       ;9FB0E2|        |;
 
          CODE_9FB0E5:
                       EOR.W #$FFFF                         ;9FB0E5|49FFFF  |;
                       INC A                                ;9FB0E8|1A      |;
                       CLC                                  ;9FB0E9|18      |;
                       ADC.B $AD                            ;9FB0EA|65AD    |;
                       STA.B $AD                            ;9FB0EC|85AD    |;
                       LDA.L $7E312E                        ;9FB0EE|AF2E317E|;
                       TAX                                  ;9FB0F2|AA      |;
                       LDA.L CODE_9FB1F6,X                  ;9FB0F3|BFF6B19F|;
                       AND.W #$00FF                         ;9FB0F7|29FF00  |;
                       BIT.W #$0080                         ;9FB0FA|898000  |;
                       BEQ CODE_9FB102                      ;9FB0FD|F003    |;
                       db $09,$00,$FF                       ;9FB0FF|        |;
 
          CODE_9FB102:
                       CLC                                  ;9FB102|18      |;
                       ADC.B $AD                            ;9FB103|65AD    |;
                       STA.B $AD                            ;9FB105|85AD    |;
                       JSL.L CODE_808658                    ;9FB107|22588680|;
                       AND.W #$001F                         ;9FB10B|291F00  |;
                       INC A                                ;9FB10E|1A      |;
                       CMP.B $AD                            ;9FB10F|C5AD    |;
                       BCS CODE_9FB118                      ;9FB111|B005    |;
                       LDA.W #$0004                         ;9FB113|A90400  |;
                       STA.B $8D                            ;9FB116|858D    |;
 
          CODE_9FB118:
                       LDX.B $8D                            ;9FB118|A68D    |;
                       LDA.L $7E312C,X                      ;9FB11A|BF2C317E|;
                       BIT.W #$0800                         ;9FB11E|890008  |;
                       BEQ CODE_9FB12E                      ;9FB121|F00B    |;
                       LDA.L $7E3124                        ;9FB123|AF24317E|;
                       STA.B $B1                            ;9FB127|85B1    |;
                       LDA.W #$F800                         ;9FB129|A900F8  |;
                       STA.B $B5                            ;9FB12C|85B5    |;
 
          CODE_9FB12E:
                       LDA.B $B1                            ;9FB12E|A5B1    |;
                       BIT.W #$0008                         ;9FB130|890800  |;
                       BNE CODE_9FB142                      ;9FB133|D00D    |;
                       AND.W #$0007                         ;9FB135|290700  |;
                       STA.B $A5                            ;9FB138|85A5    |;
                       LDA.W $0792                          ;9FB13A|AD9207  |;
                       AND.W #$0003                         ;9FB13D|290300  |;
                       BNE CODE_9FB15B                      ;9FB140|D019    |;
 
          CODE_9FB142:
                       LDA.W #$0005                         ;9FB142|A90500  |;
                       JSL.L CODE_9BB385                    ;9FB145|2285B39B|;
                       DEC A                                ;9FB149|3A      |;
                       DEC A                                ;9FB14A|3A      |;
                       AND.W #$0007                         ;9FB14B|290700  |;
                       STA.B $A5                            ;9FB14E|85A5    |;
                       LDA.B $B5                            ;9FB150|A5B5    |;
                       BMI CODE_9FB15B                      ;9FB152|3007    |;
                       LDA.B $A5                            ;9FB154|A5A5    |;
                       EOR.W #$0004                         ;9FB156|490400  |;
                       STA.B $A5                            ;9FB159|85A5    |;
 
          CODE_9FB15B:
                       ASL.B $A5                            ;9FB15B|06A5    |;
                       ASL.B $A5                            ;9FB15D|06A5    |;
                       LDX.B $A5                            ;9FB15F|A6A5    |;
                       LDA.L DATA8_80DA06,X                 ;9FB161|BF06DA80|;
                       ASL A                                ;9FB165|0A      |;
                       ASL A                                ;9FB166|0A      |;
                       ASL A                                ;9FB167|0A      |;
                       ASL A                                ;9FB168|0A      |;
                       ASL A                                ;9FB169|0A      |;
                       LDX.B $95                            ;9FB16A|A695    |;
                       STA.W $0EC3,X                        ;9FB16C|9DC30E  |;
                       LDX.B $A5                            ;9FB16F|A6A5    |;
                       LDA.L DATA8_80DA08,X                 ;9FB171|BF08DA80|;
                       ASL A                                ;9FB175|0A      |;
                       ASL A                                ;9FB176|0A      |;
                       ASL A                                ;9FB177|0A      |;
                       ASL A                                ;9FB178|0A      |;
                       ASL A                                ;9FB179|0A      |;
                       CLC                                  ;9FB17A|18      |;
                       ADC.B $B5                            ;9FB17B|65B5    |;
                       LDX.B $95                            ;9FB17D|A695    |;
                       STA.W $0EE3,X                        ;9FB17F|9DE30E  |;
                       LDA.W #$0004                         ;9FB182|A90400  |;
                       LDY.W #$0000                         ;9FB185|A00000  |;
                       JSR.W CODE_9FB1DE                    ;9FB188|20DEB1  |;
                       BMI CODE_9FB1B1                      ;9FB18B|3024    |;
                       LDA.W $0EFF                          ;9FB18D|ADFF0E  |;
                       BPL CODE_9FB1A4                      ;9FB190|1012    |;
                       LDA.W $14C3,Y                        ;9FB192|B9C314  |;
                       BNE CODE_9FB1A9                      ;9FB195|D012    |;
 
          CODE_9FB197:
                       LDA.W #$0004                         ;9FB197|A90400  |;
                       LDY.W #$000C                         ;9FB19A|A00C00  |;
                       JSR.W CODE_9FB1DE                    ;9FB19D|20DEB1  |;
                       BMI CODE_9FB1B1                      ;9FB1A0|300F    |;
                       BRA CODE_9FB1A9                      ;9FB1A2|8005    |;
 
          CODE_9FB1A4:
                       LDA.W $14C3,Y                        ;9FB1A4|B9C314  |;
                       BNE CODE_9FB197                      ;9FB1A7|D0EE    |;
 
          CODE_9FB1A9:
                       STY.B zpCurntTeamLoopVal             ;9FB1A9|8491    |;
                       LDX.B $95                            ;9FB1AB|A695    |;
                       JSL.L CODE_9EC4F3                    ;9FB1AD|22F3C49E|;
 
          CODE_9FB1B1:
                       LDA.W $17DE                          ;9FB1B1|ADDE17  |;
                       AND.W #$FFFB                         ;9FB1B4|29FBFF  |;
                       STA.W $17DE                          ;9FB1B7|8DDE17  |;
                       LDA.W $17E0                          ;9FB1BA|ADE017  |;
                       AND.W #$FFFB                         ;9FB1BD|29FBFF  |;
                       STA.W $17E0                          ;9FB1C0|8DE017  |;
                       LDX.B $95                            ;9FB1C3|A695    |;
                       JSL.L CODE_808658                    ;9FB1C5|22588680|;
                       AND.W #$07FF                         ;9FB1C9|29FF07  |;
                       STA.W $0E01                          ;9FB1CC|8D010E  |;
                       STZ.W PucVertVeloc                   ;9FB1CF|9CF90D  |;
                       STZ.W $1563,X                        ;9FB1D2|9E6315  |;
                       LDA.W #$0018                         ;9FB1D5|A91800  |;
                       STA.B $A5                            ;9FB1D8|85A5    |;
                       JML.L CODE_9E8C18                    ;9FB1DA|5C188C9E|;
 
          CODE_9FB1DE:
                       PHA                                  ;9FB1DE|48      |;
                       LDA.W #$0006                         ;9FB1DF|A90600  |;
                       STA.B $A5                            ;9FB1E2|85A5    |;
                       PLA                                  ;9FB1E4|68      |;
 
          CODE_9FB1E5:
                       CMP.W PStructPosition,Y              ;9FB1E5|D9430F  |;
                       BEQ CODE_9FB1F3                      ;9FB1E8|F009    |;
                       INY                                  ;9FB1EA|C8      |;
                       INY                                  ;9FB1EB|C8      |;
                       DEC.B $A5                            ;9FB1EC|C6A5    |;
                       BNE CODE_9FB1E5                      ;9FB1EE|D0F5    |;
                       LDY.W #$FFFF                         ;9FB1F0|A0FFFF  |;
 
          CODE_9FB1F3:
                       CPY.W #$0000                         ;9FB1F3|C00000  |;
 
          CODE_9FB1F6:
                       RTS                                  ;9FB1F6|60      |;
                       db $00,$08,$10                       ;9FB1F7|        |;
                       db $00,$08,$10                       ;9FB1FA|        |;
 
          CODE_9FB1FD:
                       LDA.W $15DA                          ;9FB1FD|ADDA15  |;
                       BNE CODE_9FB269                      ;9FB200|D067    |;
                       LDA.W $1E9B                          ;9FB202|AD9B1E  |;
                       BNE CODE_9FB269                      ;9FB205|D062    |;
                       LDA.W $15D8                          ;9FB207|ADD815  |;
                       BIT.W #$0100                         ;9FB20A|890001  |;
                       BEQ CODE_9FB269                      ;9FB20D|F05A    |;
                       BIT.W #$0800                         ;9FB20F|890008  |;
                       BNE CODE_9FB269                      ;9FB212|D055    |;
                       STZ.W $0CD3                          ;9FB214|9CD30C  |;
                       LDA.W #$3000                         ;9FB217|A90030  |;
                       STA.W $0CCB                          ;9FB21A|8DCB0C  |;
                       LDX.W #$0000                         ;9FB21D|A20000  |;
 
          CODE_9FB220:
                       LDA.L $7E3126                        ;9FB220|AF26317E|;
                       STA.W $0CCF                          ;9FB224|8DCF0C  |;
                       LDA.L $7E3128                        ;9FB227|AF28317E|;
                       STA.W $0CD1                          ;9FB22B|8DD10C  |;
                       LDA.L $7E312A,X                      ;9FB22E|BF2A317E|;
                       CLC                                  ;9FB232|18      |;
                       ADC.W #$01A6                         ;9FB233|69A601  |;
                       STA.W $0CCD                          ;9FB236|8DCD0C  |;
                       LDA.L $7E312C,X                      ;9FB239|BF2C317E|;
                       AND.W #$0800                         ;9FB23D|290008  |;
                       STA.W $0CC5                          ;9FB240|8DC50C  |;
                       LDA.W #$0000                         ;9FB243|A90000  |;
                       CPX.W #$0004                         ;9FB246|E00400  |;
                       BNE CODE_9FB24E                      ;9FB249|D003    |;
                       LDA.W #$0200                         ;9FB24B|A90002  |;
 
          CODE_9FB24E:
                       ORA.W $0CCB                          ;9FB24E|0DCB0C  |;
                       STA.W $0CC9                          ;9FB251|8DC90C  |;
                       PHX                                  ;9FB254|DA      |;
                       JSL.L CODE_9BBFB9                    ;9FB255|22B9BF9B|;
                       PLX                                  ;9FB259|FA      |;
                       INX                                  ;9FB25A|E8      |;
                       INX                                  ;9FB25B|E8      |;
                       INX                                  ;9FB25C|E8      |;
                       INX                                  ;9FB25D|E8      |;
                       CPX.W #$000C                         ;9FB25E|E00C00  |;
                       BNE CODE_9FB220                      ;9FB261|D0BD    |;
                       LDA.W #$2000                         ;9FB263|A90020  |;
                       STA.W $0CCB                          ;9FB266|8DCB0C  |;
 
          CODE_9FB269:
                       RTL                                  ;9FB269|6B      |;
                       LDA.W $14E3,X                        ;9FB26A|BDE314  |;
                       BNE CODE_9FB27B                      ;9FB26D|D00C    |;
                       LDA.W $15D8                          ;9FB26F|ADD815  |;
                       BIT.W #$0100                         ;9FB272|890001  |;
                       BNE CODE_9FB27B                      ;9FB275|D004    |;
                       JML.L CODE_9E8BE6                    ;9FB277|5CE68B9E|;
 
          CODE_9FB27B:
                       RTL                                  ;9FB27B|6B      |;
                       LDA.W $14E3,X                        ;9FB27C|BDE314  |;
                       BEQ CODE_9FB284                      ;9FB27F|F003    |;
                       db $4C,$04,$B3                       ;9FB281|        |;
 
          CODE_9FB284:
                       LDA.W $15D8                          ;9FB284|ADD815  |;
                       BIT.W #$0100                         ;9FB287|890001  |;
                       BEQ CODE_9FB305                      ;9FB28A|F079    |;
                       LDA.W $1283,X                        ;9FB28C|BD8312  |;
                       BIT.W #$0002                         ;9FB28F|890200  |;
                       BEQ CODE_9FB29D                      ;9FB292|F009    |;
                       AND.W #$FFFD                         ;9FB294|29FDFF  |;
                       STA.W $1283,X                        ;9FB297|9D8312  |;
                       STZ.W $1003,X                        ;9FB29A|9E0310  |;
 
          CODE_9FB29D:
                       LDA.W #$007E                         ;9FB29D|A97E00  |;
                       STA.B $8B                            ;9FB2A0|858B    |;
                       LDA.W #$312A                         ;9FB2A2|A92A31  |;
                       STA.B $89                            ;9FB2A5|8589    |;
                       LDA.W $1503,X                        ;9FB2A7|BD0315  |;
                       BEQ CODE_9FB2B1                      ;9FB2AA|F005    |;
                       LDA.W #$312E                         ;9FB2AC|A92E31  |;
                       STA.B $89                            ;9FB2AF|8589    |;
 
          CODE_9FB2B1:
                       LDA.W $11C3,X                        ;9FB2B1|BDC311  |;
                       LSR A                                ;9FB2B4|4A      |;
                       LSR A                                ;9FB2B5|4A      |;
                       INC A                                ;9FB2B6|1A      |;
                       STA.B $A5                            ;9FB2B7|85A5    |;
                       LDA.W PStructHanded,X                ;9FB2B9|BDA314  |;
                       BNE CODE_9FB2C4                      ;9FB2BC|D006    |;
                       INC.B $A5                            ;9FB2BE|E6A5    |;
                       INC.B $A5                            ;9FB2C0|E6A5    |;
                       INC.B $A5                            ;9FB2C2|E6A5    |;
 
          CODE_9FB2C4:
                       LDA.B $A5                            ;9FB2C4|A5A5    |;
                       STA.B [$89]                          ;9FB2C6|8789    |;
                       LDA.W $19D4,X                        ;9FB2C8|BDD419  |;
                       BPL CODE_9FB304                      ;9FB2CB|1037    |;
                       LDA.W $1543,X                        ;9FB2CD|BD4315  |;
                       PHA                                  ;9FB2D0|48      |;
                       LDA.W #$0001                         ;9FB2D1|A90100  |;
                       STA.W $1543,X                        ;9FB2D4|9D4315  |;
                       PLA                                  ;9FB2D7|68      |;
                       CMP.W #$0000                         ;9FB2D8|C90000  |;
                       BNE CODE_9FB304                      ;9FB2DB|D027    |;
                       LDA.W #$F600                         ;9FB2DD|A900F6  |;
                       STA.B $A9                            ;9FB2E0|85A9    |;
                       LDA.W $101F                          ;9FB2E2|AD1F10  |;
                       CMP.W #$0011                         ;9FB2E5|C91100  |;
                       BCC CODE_9FB2FA                      ;9FB2E8|9010    |;
                       JSL.L CODE_808658                    ;9FB2EA|22588680|;
                       AND.W #$0007                         ;9FB2EE|290700  |;
                       STA.B $A5                            ;9FB2F1|85A5    |;
                       BEQ CODE_9FB2FA                      ;9FB2F3|F005    |;
                       LDA.W #$F62A                         ;9FB2F5|A92AF6  |;
                       STA.B $A9                            ;9FB2F8|85A9    |;
 
          CODE_9FB2FA:
                       LDA.W #$0001                         ;9FB2FA|A90100  |;
                       STA.W $1543,X                        ;9FB2FD|9D4315  |;
                       JML.L CODE_9EA3DD                    ;9FB300|5CDDA39E|;
 
          CODE_9FB304:
                       RTL                                  ;9FB304|6B      |;
 
          CODE_9FB305:
                       LDA.W #$0014                         ;9FB305|A91400  |;
                       STA.W $1203,X                        ;9FB308|9D0312  |;
                       JML.L CODE_9E8BE6                    ;9FB30B|5CE68B9E|;
 
          CODE_9FB30F:
                       LDA.W $0B7D,X                        ;9FB30F|BD7D0B  |;
                       CMP.W #$0017                         ;9FB312|C91700  |;
                       BNE CODE_9FB354                      ;9FB315|D03D    |;
                       LDA.W #$007E                         ;9FB317|A97E00  |;
                       STA.B $8B                            ;9FB31A|858B    |;
                       LDA.W #$3122                         ;9FB31C|A92231  |;
                       STA.B $89                            ;9FB31F|8589    |;
                       LDA.W $14C3,X                        ;9FB321|BDC314  |;
                       BEQ CODE_9FB330                      ;9FB324|F00A    |;
                       LDA.W #$007E                         ;9FB326|A97E00  |;
                       STA.B $8B                            ;9FB329|858B    |;
                       LDA.W #$3124                         ;9FB32B|A92431  |;
                       STA.B $89                            ;9FB32E|8589    |;
 
          CODE_9FB330:
                       LDA.B $A5                            ;9FB330|A5A5    |;
                       STA.B [$89]                          ;9FB332|8789    |;
                       LDA.W $1543,X                        ;9FB334|BD4315  |;
                       BNE CODE_9FB354                      ;9FB337|D01B    |;
                       LDA.B $A9                            ;9FB339|A5A9    |;
                       BIT.W #$8000                         ;9FB33B|890080  |;
                       BEQ CODE_9FB34D                      ;9FB33E|F00D    |;
                       LDA.W #$0001                         ;9FB340|A90100  |;
                       STA.W $1543,X                        ;9FB343|9D4315  |;
                       LDA.W #$F600                         ;9FB346|A900F6  |;
                       JML.L CODE_9EA3F1                    ;9FB349|5CF1A39E|;
 
          CODE_9FB34D:
                       LDA.W #$F62A                         ;9FB34D|A92AF6  |;
                       JML.L CODE_9EA3F1                    ;9FB350|5CF1A39E|;
 
          CODE_9FB354:
                       RTL                                  ;9FB354|6B      |;
                       STZ.W $19C0                          ;9FB355|9CC019  |;
                       LDA.W $1D81                          ;9FB358|AD811D  |;
                       BEQ CODE_9FB366                      ;9FB35B|F009    |;
                       LDA.W $1D83                          ;9FB35D|AD831D  |;
                       BEQ CODE_9FB366                      ;9FB360|F004    |;
                       INC.W $1D87                          ;9FB362|EE871D  |;
                       RTL                                  ;9FB365|6B      |;
 
          CODE_9FB366:
                       LDA.W #$FFFF                         ;9FB366|A9FFFF  |;
                       STA.W $0AD9                          ;9FB369|8DD90A  |;
                       JSL.L CODE_9EDCC3                    ;9FB36C|22C3DC9E|;
                       LDA.W $1283,X                        ;9FB370|BD8312  |;
                       BIT.W #$0002                         ;9FB373|890200  |;
                       BNE CODE_9FB37B                      ;9FB376|D003    |;
                       db $4C,$18,$B5                       ;9FB378|        |;
 
          CODE_9FB37B:
                       AND.W #$FFFD                         ;9FB37B|29FDFF  |;
                       STA.W $1283,X                        ;9FB37E|9D8312  |;
                       LDA.W clock_remaining_time           ;9FB381|AD3216  |;
                       BNE CODE_9FB38A                      ;9FB384|D004    |;
                       db $5C,$B1,$8C,$9F                   ;9FB386|        |;
 
          CODE_9FB38A:
                       LDA.W $15D4                          ;9FB38A|ADD415  |;
                       BIT.W #$0040                         ;9FB38D|894000  |;
                       BEQ CODE_9FB396                      ;9FB390|F004    |;
                       db $5C,$B1,$8C,$9F                   ;9FB392|        |;
 
          CODE_9FB396:
                       LDA.W period                         ;9FB396|AD3016  |;
                       CMP.W #$0003                         ;9FB399|C90300  |;
                       BNE CODE_9FB3AA                      ;9FB39C|D00C    |;
                       db $AD,$8E,$17,$CD,$90,$17,$F0,$04   ;9FB39E|        |;
                       db $5C,$79,$8B,$9F                   ;9FB3A6|        |;
 
          CODE_9FB3AA:
                       LDA.W $15D4                          ;9FB3AA|ADD415  |;
                       BIT.W #$0008                         ;9FB3AD|890800  |;
                       BEQ CODE_9FB3B6                      ;9FB3B0|F004    |;
                       db $5C,$C9,$B2,$9E                   ;9FB3B2|        |;
 
          CODE_9FB3B6:
                       JSL.L CODE_9ED0FD                    ;9FB3B6|22FDD09E|;
                       LDA.W #$FFFF                         ;9FB3BA|A9FFFF  |;
                       STA.W $1003,X                        ;9FB3BD|9D0310  |;
                       STA.W $1023,X                        ;9FB3C0|9D2310  |;
                       LDA.L $7E34C6                        ;9FB3C3|AFC6347E|;
                       BNE UNREACH_9FB3CC                   ;9FB3C7|D003    |;
                       JMP.W CODE_9FB518                    ;9FB3C9|4C18B5  |;
 
       UNREACH_9FB3CC:
                       db $AD,$9B,$1E,$0D,$9D,$1E,$F0,$03   ;9FB3CC|        |;
                       db $4C,$18,$B5,$A9,$FF,$FF,$8D,$55   ;9FB3D4|        |;
                       db $1D,$8D,$57,$1D,$A9,$08,$00,$1C   ;9FB3DC|        |;
                       db $DE,$17,$1C,$E0,$17,$AD,$84,$1C   ;9FB3E4|        |;
                       db $0D,$86,$1C,$0D,$88,$1C,$0D,$8A   ;9FB3EC|        |;
                       db $1C,$0D,$8C,$1C,$F0,$0F,$AD,$DA   ;9FB3F4|        |;
                       db $15,$F0,$0A,$A9,$40,$00,$0C,$D8   ;9FB3FC|        |;
                       db $15,$22,$A4,$B9,$9F,$AF,$4E,$34   ;9FB404|        |;
                       db $7E,$D0,$10,$AD,$D0,$19,$F0,$0B   ;9FB40C|        |;
                       db $22,$E5,$B5,$9F,$4A,$85,$A5,$22   ;9FB414|        |;
                       db $8B,$B4,$9F,$AF,$4E,$34,$7E,$D0   ;9FB41C|        |;
                       db $10,$AD,$D2,$19,$F0,$0B,$22,$F3   ;9FB424|        |;
                       db $B5,$9F,$4A,$85,$A5,$22,$A2,$B4   ;9FB42C|        |;
                       db $9F,$A9,$00,$00,$8F,$4E,$34,$7E   ;9FB434|        |;
                       db $64,$8D,$A9,$02,$00,$85,$91,$85   ;9FB43C|        |;
                       db $A5,$22,$4C,$B4,$9F,$4C,$18,$B5   ;9FB444|        |;
 
          CODE_9FB44C:
                       LDA.L $7E34C6                        ;9FB44C|AFC6347E|;
                       BNE UNREACH_9FB455                   ;9FB450|D003    |;
                       JMP.W CODE_9FB517                    ;9FB452|4C17B5  |;
 
       UNREACH_9FB455:
                       db $A5,$A5,$CD,$84,$1C,$D0,$03,$4C   ;9FB455|        |;
                       db $17,$B5,$CD,$86,$1C,$D0,$03,$4C   ;9FB45D|        |;
                       db $17,$B5,$CD,$88,$1C,$D0,$03,$4C   ;9FB465|        |;
                       db $17,$B5,$CD,$8A,$1C,$D0,$03,$4C   ;9FB46D|        |;
                       db $17,$B5,$CD,$8C,$1C,$D0,$03,$4C   ;9FB475|        |;
                       db $17,$B5,$22,$53,$DA,$9F,$22,$07   ;9FB47D|        |;
                       db $D4,$9F,$5C,$36,$9B,$9F,$AF,$C6   ;9FB485|        |;
                       db $34,$7E,$C9,$02,$00,$D0,$22,$64   ;9FB48D|        |;
                       db $91,$A9,$02,$00,$85,$8D,$A9,$01   ;9FB495|        |;
                       db $00,$85,$A5,$80,$DD,$AF,$C6,$34   ;9FB49D|        |;
                       db $7E,$C9,$02,$00,$D0,$0B,$64,$8D   ;9FB4A5|        |;
                       db $A9,$02,$00,$85,$91,$85,$A5,$80   ;9FB4AD|        |;
                       db $C9,$A4,$95,$84,$91,$A5,$A5,$0A   ;9FB4B5|        |;
                       db $85,$A5,$85,$95,$AA,$5A,$A0,$00   ;9FB4BD|        |;
                       db $00,$BD,$03,$15,$F0,$03,$A0,$02   ;9FB4C5|        |;
                       db $00,$A9,$FF,$FF,$99,$55,$1D,$22   ;9FB4CD|        |;
                       db $FE,$D2,$9F,$7A,$84,$91,$A6,$95   ;9FB4D5|        |;
                       db $5A,$A0,$00,$00,$BD,$03,$15,$F0   ;9FB4DD|        |;
                       db $03,$A0,$02,$00,$B9,$DE,$17,$7A   ;9FB4E5|        |;
                       db $89,$08,$00,$F0,$1D,$BD,$03,$15   ;9FB4ED|        |;
                       db $F0,$0D,$A9,$68,$01,$99,$23,$10   ;9FB4F5|        |;
                       db $8A,$4A,$99,$63,$10,$80,$0B,$A9   ;9FB4FD|        |;
                       db $58,$02,$99,$03,$10,$8A,$4A,$99   ;9FB505|        |;
                       db $43,$10,$A6,$91,$A4,$95,$84,$91   ;9FB50D|        |;
                       db $86,$95                           ;9FB515|        |;
 
          CODE_9FB517:
                       RTL                                  ;9FB517|6B      |;
 
          CODE_9FB518:
                       STZ.W $1E9D                          ;9FB518|9C9D1E  |;
                       STZ.B $A5                            ;9FB51B|64A5    |;
                       JSL.L CODE_9FB54F                    ;9FB51D|224FB59F|;
                       LDA.W #$0020                         ;9FB521|A92000  |;
                       STA.B $A5                            ;9FB524|85A5    |;
                       JSL.L CODE_9FB54F                    ;9FB526|224FB59F|;
                       LDX.B $95                            ;9FB52A|A695    |;
                       LDA.W $1003,X                        ;9FB52C|BD0310  |;
                       BPL CODE_9FB517                      ;9FB52F|10E6    |;
                       LDA.W $1023,X                        ;9FB531|BD2310  |;
                       BPL CODE_9FB517                      ;9FB534|10E1    |;
                       STZ.B zpCurntTeamLoopVal             ;9FB536|6491    |;
                       LDA.W #$0001                         ;9FB538|A90100  |;
                       STA.B $A5                            ;9FB53B|85A5    |;
                       INC A                                ;9FB53D|1A      |;
                       STA.B $8D                            ;9FB53E|858D    |;
                       JSL.L CODE_9FB44C                    ;9FB540|224CB49F|;
                       LDA.W #$001C                         ;9FB544|A91C00  |;
                       STA.B $A5                            ;9FB547|85A5    |;
                       LDX.B $95                            ;9FB549|A695    |;
                       JML.L CODE_9E8C18                    ;9FB54B|5C188C9E|;
 
          CODE_9FB54F:
                       LDA.B $95                            ;9FB54F|A595    |;
                       CLC                                  ;9FB551|18      |;
                       ADC.B $A5                            ;9FB552|65A5    |;
                       TAY                                  ;9FB554|A8      |;
                       LDA.W $1003,Y                        ;9FB555|B90310  |;
                       BMI CODE_9FB517                      ;9FB558|30BD    |;
                       db $B9,$43,$10,$0A,$85,$A9,$A8,$64   ;9FB55A|        |;
                       db $89,$64,$91,$B9,$03,$15,$F0,$05   ;9FB562|        |;
                       db $A9,$02,$00,$85,$91,$5A,$A4,$91   ;9FB56A|        |;
                       db $B9,$DE,$17,$7A,$89,$08,$00,$D0   ;9FB572|        |;
                       db $14,$A5,$95,$18,$65,$A5,$A8,$B9   ;9FB57A|        |;
                       db $03,$10,$09,$00,$FF,$99,$03,$10   ;9FB582|        |;
                       db $A6,$95,$4C,$25,$D3,$A5,$95,$18   ;9FB58A|        |;
                       db $65,$A5,$A8,$B9,$03,$10,$38,$E5   ;9FB592|        |;
                       db $C1,$99,$03,$10,$30,$03,$4C,$17   ;9FB59A|        |;
                       db $B5,$A6,$95,$DA,$A6,$A9,$86,$95   ;9FB5A2|        |;
                       db $5A,$A0,$00,$00,$BD,$03,$15,$F0   ;9FB5AA|        |;
                       db $03,$A0,$02,$00,$B9,$DE,$17,$7A   ;9FB5B2|        |;
                       db $89,$08,$00,$F0,$0A,$64,$AD,$22   ;9FB5BA|        |;
                       db $01,$E0,$9F,$22,$25,$D3,$9F,$FA   ;9FB5C2|        |;
                       db $86,$95,$6B,$A0,$00,$00,$B9,$F6   ;9FB5CA|        |;
                       db $19,$C5,$91,$F0,$0C,$C8,$C8,$C0   ;9FB5D2|        |;
                       db $0A,$00,$90,$F2,$A9,$FF,$FF,$80   ;9FB5DA|        |;
                       db $01,$98,$6B,$A9,$00,$00,$85,$91   ;9FB5E2|        |;
                       db $22,$CD,$B5,$9F,$A8,$B9,$EC,$19   ;9FB5EA|        |;
                       db $6B,$A9,$02,$00,$85,$91,$22,$CD   ;9FB5F2|        |;
                       db $B5,$9F,$A8,$B9,$EC,$19,$6B       ;9FB5FA|        |;
 
          CODE_9FB601:
                       LDA.B $A5                            ;9FB601|A5A5    |;
                       PHA                                  ;9FB603|48      |;
                       LDA.B $A7                            ;9FB604|A5A7    |;
                       PHA                                  ;9FB606|48      |;
                       LDA.B $A9                            ;9FB607|A5A9    |;
                       PHA                                  ;9FB609|48      |;
                       LDA.B $AB                            ;9FB60A|A5AB    |;
                       PHA                                  ;9FB60C|48      |;
                       LDA.B $89                            ;9FB60D|A589    |;
                       PHA                                  ;9FB60F|48      |;
                       LDA.B $8B                            ;9FB610|A58B    |;
                       PHA                                  ;9FB612|48      |;
                       LDA.B $8D                            ;9FB613|A58D    |;
                       PHA                                  ;9FB615|48      |;
                       LDA.B $8F                            ;9FB616|A58F    |;
                       PHA                                  ;9FB618|48      |;
                       LDA.W #$0000                         ;9FB619|A90000  |;
                       STA.B $8B                            ;9FB61C|858B    |;
                       LDA.W #$15DE                         ;9FB61E|A9DE15  |;
                       STA.B $89                            ;9FB621|8589    |;
 
          CODE_9FB623:
                       LDA.B [$89]                          ;9FB623|A789    |;
                       JSL.L CODE_9FB64A                    ;9FB625|224AB69F|;
                       INC.B $89                            ;9FB629|E689    |;
                       INC.B $89                            ;9FB62B|E689    |;
                       LDA.B [$89]                          ;9FB62D|A789    |;
                       BNE CODE_9FB623                      ;9FB62F|D0F2    |;
                       PLA                                  ;9FB631|68      |;
                       STA.B $8F                            ;9FB632|858F    |;
                       PLA                                  ;9FB634|68      |;
                       STA.B $8D                            ;9FB635|858D    |;
                       PLA                                  ;9FB637|68      |;
                       STA.B $8B                            ;9FB638|858B    |;
                       PLA                                  ;9FB63A|68      |;
                       STA.B $89                            ;9FB63B|8589    |;
                       PLA                                  ;9FB63D|68      |;
                       STA.B $AB                            ;9FB63E|85AB    |;
                       PLA                                  ;9FB640|68      |;
                       STA.B $A9                            ;9FB641|85A9    |;
                       PLA                                  ;9FB643|68      |;
                       STA.B $A7                            ;9FB644|85A7    |;
                       PLA                                  ;9FB646|68      |;
                       STA.B $A5                            ;9FB647|85A5    |;
                       RTL                                  ;9FB649|6B      |;
 
          CODE_9FB64A:
                       AND.W #$00FF                         ;9FB64A|29FF00  |;
                       CMP.W #$0034                         ;9FB64D|C93400  |;
                       BEQ CODE_9FB69D                      ;9FB650|F04B    |;
                       LDA.B [$89]                          ;9FB652|A789    |;
                       XBA                                  ;9FB654|EB      |;
                       AND.W #$007F                         ;9FB655|297F00  |;
                       ASL A                                ;9FB658|0A      |;
                       TAY                                  ;9FB659|A8      |;
                       LDA.W #$0058                         ;9FB65A|A95800  |;
                       STA.B $A9                            ;9FB65D|85A9    |;
                       LDA.W $14C3,Y                        ;9FB65F|B9C314  |;
                       BNE CODE_9FB678                      ;9FB662|D014    |;
                       LDA.W #$FFA8                         ;9FB664|A9A8FF  |;
                       STA.B $A9                            ;9FB667|85A9    |;
                       CMP.L $7E3138                        ;9FB669|CF38317E|;
                       BMI CODE_9FB69D                      ;9FB66D|302E    |;
                       LDA.W #$FFBF                         ;9FB66F|A9BFFF  |;
                       STA.L $7E3138                        ;9FB672|8F38317E|;
                       BRA CODE_9FB687                      ;9FB676|800F    |;
 
          CODE_9FB678:
                       LDA.B $A9                            ;9FB678|A5A9    |;
                       CMP.L $7E3138                        ;9FB67A|CF38317E|;
                       BPL CODE_9FB69D                      ;9FB67E|101D    |;
                       db $A9,$41,$00,$8F,$38,$31,$7E       ;9FB680|        |;
 
          CODE_9FB687:
                       LDA.W #$0046                         ;9FB687|A94600  |;
                       STA.B $A5                            ;9FB68A|85A5    |;
                       LDA.L $7E3136                        ;9FB68C|AF36317E|;
                       BPL CODE_9FB697                      ;9FB690|1005    |;
                       db $A9,$BA,$FF,$85,$A5               ;9FB692|        |;
 
          CODE_9FB697:
                       LDA.B $A5                            ;9FB697|A5A5    |;
                       STA.L $7E3136                        ;9FB699|8F36317E|;
 
          CODE_9FB69D:
                       RTL                                  ;9FB69D|6B      |;
 
          CODE_9FB69E:
                       LDA.W $0AD3                          ;9FB69E|ADD30A  |;
                       BNE CODE_9FB69E                      ;9FB6A1|D0FB    |;
                       JSL.L CODE_8086A9                    ;9FB6A3|22A98680|;
                       LDA.W #$FF00                         ;9FB6A7|A900FF  |;
                       STA.L $7E35AA                        ;9FB6AA|8FAA357E|;
                       LDA.W #$0000                         ;9FB6AE|A90000  |;
                       STA.L $7E35AC                        ;9FB6B1|8FAC357E|;
                       SEP #$20                             ;9FB6B5|E220    |;
                       LDA.B #$03                           ;9FB6B7|A903    |;
                       STA.W $2101                          ;9FB6B9|8D0121  |;
                       LDA.B #$01                           ;9FB6BC|A901    |;
                       STA.W $2105                          ;9FB6BE|8D0521  |;
                       LDA.B #$00                           ;9FB6C1|A900    |;
                       STA.W $2107                          ;9FB6C3|8D0721  |;
                       LDA.B #$05                           ;9FB6C6|A905    |;
                       STA.W $2108                          ;9FB6C8|8D0821  |;
                       LDA.B #$12                           ;9FB6CB|A912    |;
                       STA.W $210B                          ;9FB6CD|8D0B21  |;
                       LDA.B #$13                           ;9FB6D0|A913    |;
                       STA.W $212C                          ;9FB6D2|8D2C21  |;
                       REP #$30                             ;9FB6D5|C230    |;
                       LDX.W #$00FE                         ;9FB6D7|A2FE00  |;
 
          CODE_9FB6DA:
                       LDA.L DATA8_9AD0B6,X                 ;9FB6DA|BFB6D09A|;
                       STA.L $7E35F4,X                      ;9FB6DE|9FF4357E|;
                       STA.L $7E36F4,X                      ;9FB6E2|9FF4367E|;
                       DEX                                  ;9FB6E6|CA      |;
                       DEX                                  ;9FB6E7|CA      |;
                       BPL CODE_9FB6DA                      ;9FB6E8|10F0    |;
                       JSL.L CODE_9C9786                    ;9FB6EA|2286979C|;
 
          CODE_9FB6EE:
                       LDA.W $07F9                          ;9FB6EE|ADF907  |;
                       BNE CODE_9FB6EE                      ;9FB6F1|D0FB    |;
                       JSL.L CODE_9C98DF                    ;9FB6F3|22DF989C|;
                       LDA.W #$0081                         ;9FB6F7|A98100  |;
                       STA.B $0E                            ;9FB6FA|850E    |;
                       LDA.W #$8000                         ;9FB6FC|A90080  |;
                       STA.B $0C                            ;9FB6FF|850C    |;
                       LDA.W #$007F                         ;9FB701|A97F00  |;
                       STA.B $12                            ;9FB704|8512    |;
                       LDA.W #$0000                         ;9FB706|A90000  |;
                       STA.B $10                            ;9FB709|8510    |;
                       JSL.L CODE_80C373                    ;9FB70B|2273C380|;
                       TXA                                  ;9FB70F|8A      |;
                       LSR A                                ;9FB710|4A      |;
                       LSR A                                ;9FB711|4A      |;
                       LSR A                                ;9FB712|4A      |;
                       LSR A                                ;9FB713|4A      |;
                       LSR A                                ;9FB714|4A      |;
                       STA.L $7E35B8                        ;9FB715|8FB8357E|;
                       LDA.W #$007F                         ;9FB719|A97F00  |;
                       STA.B $0E                            ;9FB71C|850E    |;
                       LDA.W #$0000                         ;9FB71E|A90000  |;
                       STA.B $0C                            ;9FB721|850C    |;
                       LDY.W #$1000                         ;9FB723|A00010  |;
                       JSL.L CODE_80891F                    ;9FB726|221F8980|;
                       JSL.L CODE_9BC17C                    ;9FB72A|227CC19B|;
                       LDA.W #$0096                         ;9FB72E|A99600  |;
                       STA.B $0E                            ;9FB731|850E    |;
                       LDA.W #$B2CF                         ;9FB733|A9CFB2  |;
                       STA.B $0C                            ;9FB736|850C    |;
                       LDA.W #$007F                         ;9FB738|A97F00  |;
                       STA.B $12                            ;9FB73B|8512    |;
                       LDA.W #$0000                         ;9FB73D|A90000  |;
                       STA.B $10                            ;9FB740|8510    |;
                       JSL.L CODE_80C373                    ;9FB742|2273C380|;
                       TXA                                  ;9FB746|8A      |;
                       LSR A                                ;9FB747|4A      |;
                       LSR A                                ;9FB748|4A      |;
                       LSR A                                ;9FB749|4A      |;
                       LSR A                                ;9FB74A|4A      |;
                       LSR A                                ;9FB74B|4A      |;
                       ADC.L $7E35BA                        ;9FB74C|6FBA357E|;
                       STA.L $7E35B0                        ;9FB750|8FB0357E|;
                       LDA.W #$007F                         ;9FB754|A97F00  |;
                       STA.B $0E                            ;9FB757|850E    |;
                       LDA.W #$0000                         ;9FB759|A90000  |;
                       STA.B $0C                            ;9FB75C|850C    |;
                       LDY.W #$FFFF                         ;9FB75E|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9FB761|221F8980|;
                       LDA.W #$009A                         ;9FB765|A99A00  |;
                       STA.B $0E                            ;9FB768|850E    |;
                       LDA.W #$C98B                         ;9FB76A|A98BC9  |;
                       STA.B $0C                            ;9FB76D|850C    |;
                       JSL.L CODE_80C373                    ;9FB76F|2273C380|;
                       TXA                                  ;9FB773|8A      |;
                       LSR A                                ;9FB774|4A      |;
                       LSR A                                ;9FB775|4A      |;
                       LSR A                                ;9FB776|4A      |;
                       LSR A                                ;9FB777|4A      |;
                       LSR A                                ;9FB778|4A      |;
                       ADC.L $7E35B0                        ;9FB779|6FB0357E|;
                       STA.L $7E35C8                        ;9FB77D|8FC8357E|;
                       LDA.W #$007F                         ;9FB781|A97F00  |;
                       STA.B $0E                            ;9FB784|850E    |;
                       LDA.W #$0000                         ;9FB786|A90000  |;
                       STA.B $0C                            ;9FB789|850C    |;
                       LDY.W #$FFFF                         ;9FB78B|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9FB78E|221F8980|;
                       LDA.W #$0095                         ;9FB792|A99500  |;
                       STA.B $0E                            ;9FB795|850E    |;
                       LDA.W #$E304                         ;9FB797|A904E3  |;
                       STA.B $0C                            ;9FB79A|850C    |;
                       JSL.L CODE_80C373                    ;9FB79C|2273C380|;
                       TXA                                  ;9FB7A0|8A      |;
                       LSR A                                ;9FB7A1|4A      |;
                       LSR A                                ;9FB7A2|4A      |;
                       LSR A                                ;9FB7A3|4A      |;
                       LSR A                                ;9FB7A4|4A      |;
                       LSR A                                ;9FB7A5|4A      |;
                       ADC.L $7E35C8                        ;9FB7A6|6FC8357E|;
                       STA.L $7E35CA                        ;9FB7AA|8FCA357E|;
                       LDA.W #$007F                         ;9FB7AE|A97F00  |;
                       STA.B $0E                            ;9FB7B1|850E    |;
                       LDA.W #$0000                         ;9FB7B3|A90000  |;
                       STA.B $0C                            ;9FB7B6|850C    |;
                       LDY.W #$FFFF                         ;9FB7B8|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9FB7BB|221F8980|;
                       LDA.W #$0095                         ;9FB7BF|A99500  |;
                       STA.B $0E                            ;9FB7C2|850E    |;
                       LDA.W #$BA96                         ;9FB7C4|A996BA  |;
                       STA.B $0C                            ;9FB7C7|850C    |;
                       JSL.L CODE_80C373                    ;9FB7C9|2273C380|;
                       TXA                                  ;9FB7CD|8A      |;
                       LSR A                                ;9FB7CE|4A      |;
                       LSR A                                ;9FB7CF|4A      |;
                       LSR A                                ;9FB7D0|4A      |;
                       LSR A                                ;9FB7D1|4A      |;
                       LSR A                                ;9FB7D2|4A      |;
                       ADC.L $7E35CA                        ;9FB7D3|6FCA357E|;
                       STA.L $7E35D0                        ;9FB7D7|8FD0357E|;
                       INC A                                ;9FB7DB|1A      |;
                       STA.L $7E35B6                        ;9FB7DC|8FB6357E|;
                       LDA.W #$007F                         ;9FB7E0|A97F00  |;
                       STA.B $0E                            ;9FB7E3|850E    |;
                       LDA.W #$0000                         ;9FB7E5|A90000  |;
                       STA.B $0C                            ;9FB7E8|850C    |;
                       LDY.W #$FFFF                         ;9FB7EA|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9FB7ED|221F8980|;
                       LDA.W #$0000                         ;9FB7F1|A90000  |;
                       LDY.W #$FFFF                         ;9FB7F4|A0FFFF  |;
                       LDX.W #$0020                         ;9FB7F7|A22000  |;
                       JSL.L CODE_8087EA                    ;9FB7FA|22EA8780|;
                       LDA.W #$0096                         ;9FB7FE|A99600  |;
                       STA.B $0E                            ;9FB801|850E    |;
                       LDA.W #$A103                         ;9FB803|A903A1  |;
                       STA.B $0C                            ;9FB806|850C    |;
                       JSL.L CODE_80C373                    ;9FB808|2273C380|;
                       TXA                                  ;9FB80C|8A      |;
                       LSR A                                ;9FB80D|4A      |;
                       LSR A                                ;9FB80E|4A      |;
                       LSR A                                ;9FB80F|4A      |;
                       LSR A                                ;9FB810|4A      |;
                       LSR A                                ;9FB811|4A      |;
                       STA.B $A5                            ;9FB812|85A5    |;
                       ADC.L $7E35B6                        ;9FB814|6FB6357E|;
                       STA.L $7E35BC                        ;9FB818|8FBC357E|;
                       ADC.W #$0004                         ;9FB81C|690400  |;
                       STA.L $7E35AE                        ;9FB81F|8FAE357E|;
                       LDA.W #$007F                         ;9FB823|A97F00  |;
                       STA.B $8B                            ;9FB826|858B    |;
                       LDA.W #$0000                         ;9FB828|A90000  |;
                       STA.B $89                            ;9FB82B|8589    |;
                       LDA.W #$0080                         ;9FB82D|A98000  |;
                       STA.B $8F                            ;9FB830|858F    |;
                       LDA.W #$D3D0                         ;9FB832|A9D0D3  |;
                       STA.B $8D                            ;9FB835|858D    |;
                       JSL.L CODE_9B854B                    ;9FB837|224B859B|;
                       LDA.W #$009C                         ;9FB83B|A99C00  |;
                       STA.B $8B                            ;9FB83E|858B    |;
                       LDA.W #$8000                         ;9FB840|A90080  |;
                       STA.B $89                            ;9FB843|8589    |;
                       LDA.W #$0080                         ;9FB845|A98000  |;
                       STA.B $8F                            ;9FB848|858F    |;
                       LDA.W #$D3E7                         ;9FB84A|A9E7D3  |;
                       STA.B $8D                            ;9FB84D|858D    |;
                       LDA.W #$0004                         ;9FB84F|A90400  |;
                       STA.B $A5                            ;9FB852|85A5    |;
                       JSL.L CODE_9B854B                    ;9FB854|224B859B|;
                       LDA.W #$0096                         ;9FB858|A99600  |;
                       STA.B $0E                            ;9FB85B|850E    |;
                       LDA.W #$BABD                         ;9FB85D|A9BDBA  |;
                       STA.B $0C                            ;9FB860|850C    |;
                       JSL.L CODE_80C373                    ;9FB862|2273C380|;
                       TXA                                  ;9FB866|8A      |;
                       LSR A                                ;9FB867|4A      |;
                       LSR A                                ;9FB868|4A      |;
                       LSR A                                ;9FB869|4A      |;
                       LSR A                                ;9FB86A|4A      |;
                       LSR A                                ;9FB86B|4A      |;
                       STA.B $A5                            ;9FB86C|85A5    |;
                       ADC.L $7E35AE                        ;9FB86E|6FAE357E|;
                       STA.L $7E35CE                        ;9FB872|8FCE357E|;
                       LDA.W #$007F                         ;9FB876|A97F00  |;
                       STA.B $0E                            ;9FB879|850E    |;
                       LDA.W #$0000                         ;9FB87B|A90000  |;
                       STA.B $0C                            ;9FB87E|850C    |;
                       LDY.W #$FFFF                         ;9FB880|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9FB883|221F8980|;
                       LDA.W #$009A                         ;9FB887|A99A00  |;
                       STA.B $0E                            ;9FB88A|850E    |;
                       LDA.W #$C1F3                         ;9FB88C|A9F3C1  |;
                       STA.B $0C                            ;9FB88F|850C    |;
                       JSL.L CODE_80C373                    ;9FB891|2273C380|;
                       TXA                                  ;9FB895|8A      |;
                       LSR A                                ;9FB896|4A      |;
                       LSR A                                ;9FB897|4A      |;
                       LSR A                                ;9FB898|4A      |;
                       LSR A                                ;9FB899|4A      |;
                       LSR A                                ;9FB89A|4A      |;
                       ADC.L $7E35CE                        ;9FB89B|6FCE357E|;
                       STA.L $7E35C2                        ;9FB89F|8FC2357E|;
                       LDA.W #$007F                         ;9FB8A3|A97F00  |;
                       STA.B $0E                            ;9FB8A6|850E    |;
                       LDA.W #$0000                         ;9FB8A8|A90000  |;
                       STA.B $0C                            ;9FB8AB|850C    |;
                       LDY.W #$FFFF                         ;9FB8AD|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9FB8B0|221F8980|;
 
          CODE_9FB8B4:
                       JSL.L CODE_8086A9                    ;9FB8B4|22A98680|;
                       LDA.W #$03E7                         ;9FB8B8|A9E703  |;
                       STA.W $0D23                          ;9FB8BB|8D230D  |;
                       LDA.W #$0001                         ;9FB8BE|A90100  |;
                       TRB.W $15D8                          ;9FB8C1|1CD815  |;
                       STZ.W $0CEB                          ;9FB8C4|9CEB0C  |;
                       STZ.W $0D37                          ;9FB8C7|9C370D  |;
                       LDA.B $85                            ;9FB8CA|A585    |;
                       DEC A                                ;9FB8CC|3A      |;
                       DEC A                                ;9FB8CD|3A      |;
                       STA.W $0D53                          ;9FB8CE|8D530D  |;
                       JSL.L CODE_9CA227                    ;9FB8D1|2227A29C|;
                       JSL.L CODE_9FBD65                    ;9FB8D5|2265BD9F|;
                       LDA.W $15D4                          ;9FB8D9|ADD415  |;
                       BIT.W #$0002                         ;9FB8DC|890200  |;
                       BEQ CODE_9FB8F1                      ;9FB8DF|F010    |;
                       LDX.W #$0016                         ;9FB8E1|A21600  |;
 
          CODE_9FB8E4:
                       LDA.W $14C3,X                        ;9FB8E4|BDC314  |;
                       EOR.W #$0001                         ;9FB8E7|490100  |;
                       STA.W $14C3,X                        ;9FB8EA|9DC314  |;
                       DEX                                  ;9FB8ED|CA      |;
                       DEX                                  ;9FB8EE|CA      |;
                       BPL CODE_9FB8E4                      ;9FB8EF|10F3    |;
 
          CODE_9FB8F1:
                       JSL.L CODE_9FB901                    ;9FB8F1|2201B99F|;
                       STZ.W $0AD1                          ;9FB8F5|9CD10A  |;
                       JSL.L CODE_9F96E6                    ;9FB8F8|22E6969F|;
                       JSL.L CODE_8086BD                    ;9FB8FC|22BD8680|;
                       RTL                                  ;9FB900|6B      |;
 
          CODE_9FB901:
                       JSL.L CODE_9FB91A                    ;9FB901|221AB99F|;
                       LDA.W #$007E                         ;9FB905|A97E00  |;
                       STA.B $0E                            ;9FB908|850E    |;
                       LDA.W #$35F4                         ;9FB90A|A9F435  |;
                       STA.B $0C                            ;9FB90D|850C    |;
                       LDY.W #$0000                         ;9FB90F|A00000  |;
                       LDX.W #$0100                         ;9FB912|A20001  |;
                       JSL.L CODE_808723                    ;9FB915|22238780|;
                       RTL                                  ;9FB919|6B      |;
 
          CODE_9FB91A:
                       PHX                                  ;9FB91A|DA      |;
                       PHY                                  ;9FB91B|5A      |;
                       LDA.W $1C98                          ;9FB91C|AD981C  |;
                       ASL A                                ;9FB91F|0A      |;
                       ASL A                                ;9FB920|0A      |;
                       ASL A                                ;9FB921|0A      |;
                       ASL A                                ;9FB922|0A      |;
                       ASL A                                ;9FB923|0A      |;
                       CLC                                  ;9FB924|18      |;
                       ADC.W #$CD4E                         ;9FB925|694ECD  |;
                       STA.B $0C                            ;9FB928|850C    |;
                       LDA.W #$0096                         ;9FB92A|A99600  |;
                       STA.B $0E                            ;9FB92D|850E    |;
                       LDA.W #$007E                         ;9FB92F|A97E00  |;
                       STA.B $12                            ;9FB932|8512    |;
                       LDA.W #$3774                         ;9FB934|A97437  |;
                       STA.B $10                            ;9FB937|8510    |;
                       LDX.W #$0020                         ;9FB939|A22000  |;
                       JSL.L CODE_808F2F                    ;9FB93C|222F8F80|;
                       LDA.W #$007E                         ;9FB940|A97E00  |;
                       STA.B $12                            ;9FB943|8512    |;
                       LDA.W #$3634                         ;9FB945|A93436  |;
                       STA.B $10                            ;9FB948|8510    |;
                       LDX.W #$0020                         ;9FB94A|A22000  |;
                       JSL.L CODE_808F2F                    ;9FB94D|222F8F80|;
                       LDA.W $1C9A                          ;9FB951|AD9A1C  |;
                       ASL A                                ;9FB954|0A      |;
                       ASL A                                ;9FB955|0A      |;
                       ASL A                                ;9FB956|0A      |;
                       ASL A                                ;9FB957|0A      |;
                       ASL A                                ;9FB958|0A      |;
                       CLC                                  ;9FB959|18      |;
                       ADC.W #$C9CE                         ;9FB95A|69CEC9  |;
                       STA.B $0C                            ;9FB95D|850C    |;
                       LDA.W #$0096                         ;9FB95F|A99600  |;
                       STA.B $0E                            ;9FB962|850E    |;
                       LDA.W #$007E                         ;9FB964|A97E00  |;
                       STA.B $12                            ;9FB967|8512    |;
                       LDA.W #$3794                         ;9FB969|A99437  |;
                       STA.B $10                            ;9FB96C|8510    |;
                       LDX.W #$0020                         ;9FB96E|A22000  |;
                       JSL.L CODE_808F2F                    ;9FB971|222F8F80|;
                       LDA.W #$007E                         ;9FB975|A97E00  |;
                       STA.B $12                            ;9FB978|8512    |;
                       LDA.W #$3654                         ;9FB97A|A95436  |;
                       STA.B $10                            ;9FB97D|8510    |;
                       LDX.W #$0020                         ;9FB97F|A22000  |;
                       JSL.L CODE_808F2F                    ;9FB982|222F8F80|;
                       LDA.W #$009A                         ;9FB986|A99A00  |;
                       STA.B $0E                            ;9FB989|850E    |;
                       LDA.W #$CEB6                         ;9FB98B|A9B6CE  |;
                       STA.B $0C                            ;9FB98E|850C    |;
                       LDA.W #$007E                         ;9FB990|A97E00  |;
                       STA.B $12                            ;9FB993|8512    |;
                       LDA.W #$3734                         ;9FB995|A93437  |;
                       STA.B $10                            ;9FB998|8510    |;
                       LDX.W #$0020                         ;9FB99A|A22000  |;
                       JSL.L CODE_808F2F                    ;9FB99D|222F8F80|;
                       PLY                                  ;9FB9A1|7A      |;
                       PLX                                  ;9FB9A2|FA      |;
                       RTL                                  ;9FB9A3|6B      |;
 
          CODE_9FB9A4:
                       STX.B $87                            ;9FB9A4|8687    |;
                       LDX.W #$0000                         ;9FB9A6|A20000  |;
 
          CODE_9FB9A9:
                       LDA.B $89,X                          ;9FB9A9|B589    |;
                       PHA                                  ;9FB9AB|48      |;
                       INX                                  ;9FB9AC|E8      |;
                       INX                                  ;9FB9AD|E8      |;
                       CPX.W #$0038                         ;9FB9AE|E03800  |;
                       BNE CODE_9FB9A9                      ;9FB9B1|D0F6    |;
                       LDX.B $87                            ;9FB9B3|A687    |;
                       LDA.W $0AD3                          ;9FB9B5|ADD30A  |;
                       BEQ CODE_9FB9CC                      ;9FB9B8|F012    |;
                       db $22,$F7,$96,$9F,$22,$08,$97,$9F   ;9FB9BA|        |;
                       db $22,$E6,$96,$9F,$A9,$0A,$00,$8D   ;9FB9C2|        |;
                       db $D1,$0A                           ;9FB9CA|        |;
 
          CODE_9FB9CC:
                       STZ.W PauseScreenActive              ;9FB9CC|9CDA15  |;
                       LDA.W #$03E7                         ;9FB9CF|A9E703  |;
                       STA.W $0D23                          ;9FB9D2|8D230D  |;
                       JSL.L CODE_9CA19B                    ;9FB9D5|229BA19C|;
                       LDA.W $15D8                          ;9FB9D9|ADD815  |;
                       BIT.W #$0001                         ;9FB9DC|890100  |;
                       BNE CODE_9FB9F2                      ;9FB9DF|D011    |;
                       JSL.L CODE_9DD977                    ;9FB9E1|2277D99D|;
                       STZ.W $0CD5                          ;9FB9E5|9CD50C  |;
                       LDA.W #$03FF                         ;9FB9E8|A9FF03  |;
                       STA.W $0CD7                          ;9FB9EB|8DD70C  |;
                       JSL.L CODE_9F9B36                    ;9FB9EE|22369B9F|;
 
          CODE_9FB9F2:
                       LDA.W #$007E                         ;9FB9F2|A97E00  |;
                       STA.B $0E                            ;9FB9F5|850E    |;
                       LDA.W #$35F4                         ;9FB9F7|A9F435  |;
                       STA.B $0C                            ;9FB9FA|850C    |;
                       LDY.W #$0000                         ;9FB9FC|A00000  |;
                       LDX.W #$0080                         ;9FB9FF|A28000  |;
                       JSL.L CODE_808723                    ;9FBA02|22238780|;
                       STX.B $87                            ;9FBA06|8687    |;
                       LDX.W #$0036                         ;9FBA08|A23600  |;
 
          CODE_9FBA0B:
                       PLA                                  ;9FBA0B|68      |;
                       STA.B $89,X                          ;9FBA0C|9589    |;
                       DEX                                  ;9FBA0E|CA      |;
                       DEX                                  ;9FBA0F|CA      |;
                       BPL CODE_9FBA0B                      ;9FBA10|10F9    |;
                       LDX.B $87                            ;9FBA12|A687    |;
                       LDX.B $95                            ;9FBA14|A695    |;
                       RTL                                  ;9FBA16|6B      |;
 
          CODE_9FBA17:
                       STX.B $87                            ;9FBA17|8687    |;
                       LDX.W #$0000                         ;9FBA19|A20000  |;
 
          CODE_9FBA1C:
                       LDA.B $A5,X                          ;9FBA1C|B5A5    |;
                       PHA                                  ;9FBA1E|48      |;
                       INX                                  ;9FBA1F|E8      |;
                       INX                                  ;9FBA20|E8      |;
                       CPX.W #$001C                         ;9FBA21|E01C00  |;
                       BNE CODE_9FBA1C                      ;9FBA24|D0F6    |;
                       LDX.B $87                            ;9FBA26|A687    |;
                       STX.B $87                            ;9FBA28|8687    |;
                       LDX.W #$0000                         ;9FBA2A|A20000  |;
 
          CODE_9FBA2D:
                       LDA.B $89,X                          ;9FBA2D|B589    |;
                       PHA                                  ;9FBA2F|48      |;
                       INX                                  ;9FBA30|E8      |;
                       INX                                  ;9FBA31|E8      |;
                       CPX.W #$001C                         ;9FBA32|E01C00  |;
                       BNE CODE_9FBA2D                      ;9FBA35|D0F6    |;
                       LDX.B $87                            ;9FBA37|A687    |;
                       LDA.W $0EDF                          ;9FBA39|ADDF0E  |;
                       PHA                                  ;9FBA3C|48      |;
                       ASL A                                ;9FBA3D|0A      |;
                       PLA                                  ;9FBA3E|68      |;
                       ROR A                                ;9FBA3F|6A      |;
                       STA.W $0EDF                          ;9FBA40|8DDF0E  |;
                       LDA.W $0EFF                          ;9FBA43|ADFF0E  |;
                       PHA                                  ;9FBA46|48      |;
                       ASL A                                ;9FBA47|0A      |;
                       PLA                                  ;9FBA48|68      |;
                       ROR A                                ;9FBA49|6A      |;
                       STA.W $0EFF                          ;9FBA4A|8DFF0E  |;
                       LDA.W #$0001                         ;9FBA4D|A90100  |;
                       STA.L $7E3460                        ;9FBA50|8F60347E|;
                       JSL.L CODE_8086A9                    ;9FBA54|22A98680|;
                       LDA.W #$0001                         ;9FBA58|A90100  |;
                       STA.W $15DA                          ;9FBA5B|8DDA15  |;
                       STZ.W $0CED                          ;9FBA5E|9CED0C  |;
                       LDA.W #$FFFF                         ;9FBA61|A9FFFF  |;
                       STA.W $0D39                          ;9FBA64|8D390D  |;
                       LDA.W #$002E                         ;9FBA67|A92E00  |;
                       STA.W $0D23                          ;9FBA6A|8D230D  |;
                       STZ.W $0D25                          ;9FBA6D|9C250D  |;
                       JSL.L CODE_9CA19B                    ;9FBA70|229BA19C|;
                       JSL.L CODE_9FC896                    ;9FBA74|2296C89F|;
                       STX.B $87                            ;9FBA78|8687    |;
                       LDX.W #$001A                         ;9FBA7A|A21A00  |;
 
          CODE_9FBA7D:
                       PLA                                  ;9FBA7D|68      |;
                       STA.B $89,X                          ;9FBA7E|9589    |;
                       DEX                                  ;9FBA80|CA      |;
                       DEX                                  ;9FBA81|CA      |;
                       BPL CODE_9FBA7D                      ;9FBA82|10F9    |;
                       LDX.B $87                            ;9FBA84|A687    |;
                       STX.B $87                            ;9FBA86|8687    |;
                       LDX.W #$001A                         ;9FBA88|A21A00  |;
 
          CODE_9FBA8B:
                       PLA                                  ;9FBA8B|68      |;
                       STA.B $A5,X                          ;9FBA8C|95A5    |;
                       DEX                                  ;9FBA8E|CA      |;
                       DEX                                  ;9FBA8F|CA      |;
                       BPL CODE_9FBA8B                      ;9FBA90|10F9    |;
                       LDX.B $87                            ;9FBA92|A687    |;
                       LDX.B $95                            ;9FBA94|A695    |;
                       RTL                                  ;9FBA96|6B      |;
 
          CODE_9FBA97:
                       LDA.W $0D37                          ;9FBA97|AD370D  |;
                       STA.W $0D4D                          ;9FBA9A|8D4D0D  |;
                       LDA.W $0CEB                          ;9FBA9D|ADEB0C  |;
                       STA.W $0D4B                          ;9FBAA0|8D4B0D  |;
                       LDA.W #$0040                         ;9FBAA3|A94000  |;
                       TSB.W $15D8                          ;9FBAA6|0CD815  |;
                       RTL                                  ;9FBAA9|6B      |;
 
          CODE_9FBAAA:
                       STX.B $87                            ;9FBAAA|8687    |;
                       LDX.W #$0000                         ;9FBAAC|A20000  |;
 
          CODE_9FBAAF:
                       LDA.B $89,X                          ;9FBAAF|B589    |;
                       PHA                                  ;9FBAB1|48      |;
                       INX                                  ;9FBAB2|E8      |;
                       INX                                  ;9FBAB3|E8      |;
                       CPX.W #$0038                         ;9FBAB4|E03800  |;
                       BNE CODE_9FBAAF                      ;9FBAB7|D0F6    |;
                       LDX.B $87                            ;9FBAB9|A687    |;
                       JSL.L CODE_9FBC41                    ;9FBABB|2241BC9F|;
                       JSL.L CODE_9FB1FD                    ;9FBABF|22FDB19F|;
                       JSL.L CODE_9FBB01                    ;9FBAC3|2201BB9F|;
                       JSL.L CODE_9CA054                    ;9FBAC7|2254A09C|;
                       JSL.L CODE_9FBC5F                    ;9FBACB|225FBC9F|;
                       JSL.L CODE_9FA078                    ;9FBACF|2278A09F|;
                       JSL.L CODE_9FA5AD                    ;9FBAD3|22ADA59F|;
                       JSL.L CODE_9B9FAF                    ;9FBAD7|22AF9F9B|;
                       JSL.L CODE_9EFA2F                    ;9FBADB|222FFA9E|;
                       JSL.L CODE_9FBFA0                    ;9FBADF|22A0BF9F|;
                       LDA.W $15DA                          ;9FBAE3|ADDA15  |;
                       BEQ CODE_9FBAEC                      ;9FBAE6|F004    |;
                       JSL.L CODE_9F9E24                    ;9FBAE8|22249E9F|;
 
          CODE_9FBAEC:
                       JSL.L CODE_9FBF75                    ;9FBAEC|2275BF9F|;
                       STX.B $87                            ;9FBAF0|8687    |;
                       LDX.W #$0036                         ;9FBAF2|A23600  |;
 
          CODE_9FBAF5:
                       PLA                                  ;9FBAF5|68      |;
                       STA.B $89,X                          ;9FBAF6|9589    |;
                       DEX                                  ;9FBAF8|CA      |;
                       DEX                                  ;9FBAF9|CA      |;
                       BPL CODE_9FBAF5                      ;9FBAFA|10F9    |;
                       LDX.B $87                            ;9FBAFC|A687    |;
                       LDX.B $95                            ;9FBAFE|A695    |;
                       RTL                                  ;9FBB00|6B      |;
 
          CODE_9FBB01:
                       LDA.W $1EBB                          ;9FBB01|ADBB1E  |;
                       BNE CODE_9FBB4F                      ;9FBB04|D049    |;
                       LDA.W $15D8                          ;9FBB06|ADD815  |;
                       AND.W #$0800                         ;9FBB09|290008  |;
                       BNE CODE_9FBB4F                      ;9FBB0C|D041    |;
                       LDA.W #$0082                         ;9FBB0E|A98200  |;
                       STA.B $12                            ;9FBB11|8512    |;
                       LDA.W #$8000                         ;9FBB13|A90080  |;
                       STA.B $10                            ;9FBB16|8510    |;
                       LDY.W #$0000                         ;9FBB18|A00000  |;
                       LDA.W #$0175                         ;9FBB1B|A97501  |;
                       STA.B $00                            ;9FBB1E|8500    |;
                       JSR.W CODE_9FBB50                    ;9FBB20|2050BB  |;
                       LDY.W #$0002                         ;9FBB23|A00200  |;
                       LDA.W #$0178                         ;9FBB26|A97801  |;
                       STA.B $00                            ;9FBB29|8500    |;
                       JSR.W CODE_9FBB50                    ;9FBB2B|2050BB  |;
                       LDY.W #$0004                         ;9FBB2E|A00400  |;
                       LDA.W #$017B                         ;9FBB31|A97B01  |;
                       STA.B $00                            ;9FBB34|8500    |;
                       JSR.W CODE_9FBB50                    ;9FBB36|2050BB  |;
                       LDY.W #$0006                         ;9FBB39|A00600  |;
                       LDA.W #$017E                         ;9FBB3C|A97E01  |;
                       STA.B $00                            ;9FBB3F|8500    |;
                       JSR.W CODE_9FBB50                    ;9FBB41|2050BB  |;
                       LDY.W #$0008                         ;9FBB44|A00800  |;
                       LDA.W #$0181                         ;9FBB47|A98101  |;
                       STA.B $00                            ;9FBB4A|8500    |;
                       JSR.W CODE_9FBB50                    ;9FBB4C|2050BB  |;
 
          CODE_9FBB4F:
                       RTL                                  ;9FBB4F|6B      |;
 
          CODE_9FBB50:
                       LDA.W $19EC,Y                        ;9FBB50|B9EC19  |;
                       BPL CODE_9FBB56                      ;9FBB53|1001    |;
                       RTS                                  ;9FBB55|60      |;
 
          CODE_9FBB56:
                       TAY                                  ;9FBB56|A8      |;
                       LDA.W $0D55,Y                        ;9FBB57|B9550D  |;
                       STA.B $A5                            ;9FBB5A|85A5    |;
                       LDA.W $0DB7,Y                        ;9FBB5C|B9B70D  |;
                       STA.B $A9                            ;9FBB5F|85A9    |;
                       LDA.W $15DA                          ;9FBB61|ADDA15  |;
                       BEQ CODE_9FBB79                      ;9FBB64|F013    |;
                       LDA.B $A9                            ;9FBB66|A5A9    |;
                       EOR.W #$FFFF                         ;9FBB68|49FFFF  |;
                       INC A                                ;9FBB6B|1A      |;
                       STA.B $A5                            ;9FBB6C|85A5    |;
                       LDA.W $0D55,Y                        ;9FBB6E|B9550D  |;
                       SEC                                  ;9FBB71|38      |;
                       SBC.W #$00C5                         ;9FBB72|E9C500  |;
                       STA.B $A9                            ;9FBB75|85A9    |;
                       BRA CODE_9FBB89                      ;9FBB77|8010    |;
 
          CODE_9FBB79:
                       LDA.B $A5                            ;9FBB79|A5A5    |;
                       SEC                                  ;9FBB7B|38      |;
                       SBC.W $0CEB                          ;9FBB7C|EDEB0C  |;
                       STA.B $A5                            ;9FBB7F|85A5    |;
                       LDA.B $A9                            ;9FBB81|A5A9    |;
                       SEC                                  ;9FBB83|38      |;
                       SBC.W $0D37                          ;9FBB84|ED370D  |;
                       STA.B $A9                            ;9FBB87|85A9    |;
 
          CODE_9FBB89:
                       STZ.B $AD                            ;9FBB89|64AD    |;
                       LDA.B $A5                            ;9FBB8B|A5A5    |;
                       CMP.W #$0074                         ;9FBB8D|C97400  |;
                       BMI CODE_9FBB97                      ;9FBB90|3005    |;
                       LDA.W #$0008                         ;9FBB92|A90800  |;
                       STA.B $AD                            ;9FBB95|85AD    |;
 
          CODE_9FBB97:
                       LDA.B $A5                            ;9FBB97|A5A5    |;
                       CMP.W #$FF8D                         ;9FBB99|C98DFF  |;
                       BPL CODE_9FBBA3                      ;9FBB9C|1005    |;
                       LDA.W #$0004                         ;9FBB9E|A90400  |;
                       TSB.B $AD                            ;9FBBA1|04AD    |;
 
          CODE_9FBBA3:
                       LDA.B $A9                            ;9FBBA3|A5A9    |;
                       CMP.W #$0064                         ;9FBBA5|C96400  |;
                       BMI CODE_9FBBAC                      ;9FBBA8|3002    |;
                       INC.B $AD                            ;9FBBAA|E6AD    |;
 
          CODE_9FBBAC:
                       LDA.B $A9                            ;9FBBAC|A5A9    |;
                       CMP.W #$FF9D                         ;9FBBAE|C99DFF  |;
                       BPL CODE_9FBBB7                      ;9FBBB1|1004    |;
                       INC.B $AD                            ;9FBBB3|E6AD    |;
                       INC.B $AD                            ;9FBBB5|E6AD    |;
 
          CODE_9FBBB7:
                       LDX.B $AD                            ;9FBBB7|A6AD    |;
                       BEQ CODE_9FBC00                      ;9FBBB9|F045    |;
                       LDA.L UNREACH_80DA46,X               ;9FBBBB|BF46DA80|;
                       AND.W #$00FF                         ;9FBBBF|29FF00  |;
                       ASL A                                ;9FBBC2|0A      |;
                       ASL A                                ;9FBBC3|0A      |;
                       ASL A                                ;9FBBC4|0A      |;
                       TAX                                  ;9FBBC5|AA      |;
                       LDA.L DATA8_9FBC01,X                 ;9FBBC6|BF01BC9F|;
                       BEQ CODE_9FBBCE                      ;9FBBCA|F002    |;
                       STA.B $A5                            ;9FBBCC|85A5    |;
 
          CODE_9FBBCE:
                       LDA.L DATA8_9FBC03,X                 ;9FBBCE|BF03BC9F|;
                       BEQ CODE_9FBBD6                      ;9FBBD2|F002    |;
                       STA.B $A9                            ;9FBBD4|85A9    |;
 
          CODE_9FBBD6:
                       LDA.B $00                            ;9FBBD6|A500    |;
                       CLC                                  ;9FBBD8|18      |;
                       ADC.L DATA8_9FBC05,X                 ;9FBBD9|7F05BC9F|;
                       STA.B $00                            ;9FBBDD|8500    |;
                       LDA.L DATA8_9FBC07,X                 ;9FBBDF|BF07BC9F|;
                       STA.B $14                            ;9FBBE3|8514    |;
                       LDA.B $A5                            ;9FBBE5|A5A5    |;
                       CLC                                  ;9FBBE7|18      |;
                       ADC.W #$0080                         ;9FBBE8|698000  |;
                       TAX                                  ;9FBBEB|AA      |;
                       LDA.B $A9                            ;9FBBEC|A5A9    |;
                       EOR.W #$FFFF                         ;9FBBEE|49FFFF  |;
                       INC A                                ;9FBBF1|1A      |;
                       CLC                                  ;9FBBF2|18      |;
                       ADC.W #$0070                         ;9FBBF3|697000  |;
                       TAY                                  ;9FBBF6|A8      |;
                       LDA.W #$2000                         ;9FBBF7|A90020  |;
                       ORA.B $14                            ;9FBBFA|0514    |;
                       JSL.L CODE_80B08D                    ;9FBBFC|228DB080|;
 
          CODE_9FBC00:
                       RTS                                  ;9FBC00|60      |;
 
         DATA8_9FBC01:
                       db $00,$00                           ;9FBC01|        |;
 
         DATA8_9FBC03:
                       db $64,$00                           ;9FBC03|        |;
 
         DATA8_9FBC05:
                       db $00,$00                           ;9FBC05|        |;
 
         DATA8_9FBC07:
                       db $00,$00,$74,$00,$64,$00,$01,$00   ;9FBC07|        |;
                       db $00,$00                           ;9FBC0F|        |;
                       db $74,$00,$00,$00,$02,$00,$00,$00   ;9FBC11|        |;
                       db $74,$00,$9C,$FF,$01,$00,$00,$80   ;9FBC19|        |;
                       db $00,$00,$9C,$FF,$00,$00,$00,$80   ;9FBC21|        |;
                       db $8C,$FF,$9C,$FF,$01,$00,$00,$C0   ;9FBC29|        |;
                       db $8C,$FF,$00,$00,$02,$00,$00,$40   ;9FBC31|        |;
                       db $8C,$FF,$64,$00,$01,$00,$00,$40   ;9FBC39|        |;
 
          CODE_9FBC41:
                       LDA.W $15DA                          ;9FBC41|ADDA15  |;
                       BNE CODE_9FBC5E                      ;9FBC44|D018    |;
                       LDA.W $0CEB                          ;9FBC46|ADEB0C  |;
                       SEC                                  ;9FBC49|38      |;
                       SBC.W #$0080                         ;9FBC4A|E98000  |;
                       STA.W $0CED                          ;9FBC4D|8DED0C  |;
                       LDA.W $0D37                          ;9FBC50|AD370D  |;
                       EOR.W #$FFFF                         ;9FBC53|49FFFF  |;
                       INC A                                ;9FBC56|1A      |;
                       SEC                                  ;9FBC57|38      |;
                       SBC.W #$0070                         ;9FBC58|E97000  |;
                       STA.W $0D39                          ;9FBC5B|8D390D  |;
 
          CODE_9FBC5E:
                       RTL                                  ;9FBC5E|6B      |;
 
          CODE_9FBC5F:
                       LDA.W #$0082                         ;9FBC5F|A98200  |;
                       STA.B $12                            ;9FBC62|8512    |;
                       LDA.W #$8000                         ;9FBC64|A90080  |;
                       STA.B $10                            ;9FBC67|8510    |;
                       LDA.W #$000C                         ;9FBC69|A90C00  |;
                       STA.B zpCurntTeamLoopVal             ;9FBC6C|8591    |;
 
          CODE_9FBC6E:
                       LDY.B zpCurntTeamLoopVal             ;9FBC6E|A491    |;
                       LDA.W $0AE7,Y                        ;9FBC70|B9E70A  |;
                       CMP.W #$000F                         ;9FBC73|C90F00  |;
                       BNE CODE_9FBC7B                      ;9FBC76|D003    |;
 
          CODE_9FBC78:
                       JMP.W CODE_9FBD47                    ;9FBC78|4C47BD  |;
 
          CODE_9FBC7B:
                       TYX                                  ;9FBC7B|BB      |;
                       LDA.L DATA8_9FBD51,X                 ;9FBC7C|BF51BD9F|;
                       STA.B $00                            ;9FBC80|8500    |;
                       LDA.W $0AE7,Y                        ;9FBC82|B9E70A  |;
                       ASL A                                ;9FBC85|0A      |;
                       TAX                                  ;9FBC86|AA      |;
                       LDA.W $0D55,X                        ;9FBC87|BD550D  |;
                       STA.B $A5                            ;9FBC8A|85A5    |;
                       LDA.W $0DB7,X                        ;9FBC8C|BDB70D  |;
                       STA.B $A9                            ;9FBC8F|85A9    |;
                       STZ.B $AD                            ;9FBC91|64AD    |;
                       JSL.L CODE_9BC10F                    ;9FBC93|220FC19B|;
                       CMP.W #$4E20                         ;9FBC97|C9204E  |;
                       BEQ CODE_9FBC78                      ;9FBC9A|F0DC    |;
                       LDY.W PStructPosition,X              ;9FBC9C|BC430F  |;
                       BMI CODE_9FBC78                      ;9FBC9F|30D7    |;
                       PHX                                  ;9FBCA1|DA      |;
                       TAY                                  ;9FBCA2|A8      |;
                       CLC                                  ;9FBCA3|18      |;
                       ADC.W #$000A                         ;9FBCA4|690A00  |;
                       STA.B $A9                            ;9FBCA7|85A9    |;
                       LDX.B $A5                            ;9FBCA9|A6A5    |;
                       LDA.W #$2000                         ;9FBCAB|A90020  |;
                       JSL.L CODE_80B08D                    ;9FBCAE|228DB080|;
                       PLX                                  ;9FBCB2|FA      |;
                       CPX.W #$0020                         ;9FBCB3|E02000  |;
                       BEQ CODE_9FBC78                      ;9FBCB6|F0C0    |;
                       LDY.W #$0000                         ;9FBCB8|A00000  |;
                       LDA.W $13C3,X                        ;9FBCBB|BDC313  |;
                       LSR A                                ;9FBCBE|4A      |;
                       LSR A                                ;9FBCBF|4A      |;
                       LSR A                                ;9FBCC0|4A      |;
                       LSR A                                ;9FBCC1|4A      |;
                       AND.W #$000F                         ;9FBCC2|290F00  |;
                       BEQ CODE_9FBCD3                      ;9FBCC5|F00C    |;
                       STA.W $0A2C,Y                        ;9FBCC7|992C0A  |;
                       INY                                  ;9FBCCA|C8      |;
                       LDA.B $A5                            ;9FBCCB|A5A5    |;
                       SEC                                  ;9FBCCD|38      |;
                       SBC.W #$0004                         ;9FBCCE|E90400  |;
                       STA.B $A5                            ;9FBCD1|85A5    |;
 
          CODE_9FBCD3:
                       LDA.W $13C3,X                        ;9FBCD3|BDC313  |;
                       AND.W #$000F                         ;9FBCD6|290F00  |;
                       STA.W $0A2C,Y                        ;9FBCD9|992C0A  |;
                       INY                                  ;9FBCDC|C8      |;
                       LDA.B $A5                            ;9FBCDD|A5A5    |;
                       SEC                                  ;9FBCDF|38      |;
                       SBC.W #$0004                         ;9FBCE0|E90400  |;
                       STA.B $A5                            ;9FBCE3|85A5    |;
                       LDA.W $1D81                          ;9FBCE5|AD811D  |;
                       BNE CODE_9FBD0A                      ;9FBCE8|D020    |;
                       LDA.W PStructPosition,X              ;9FBCEA|BD430F  |;
                       AND.W #$0007                         ;9FBCED|290700  |;
                       BEQ CODE_9FBD0A                      ;9FBCF0|F018    |;
                       TAX                                  ;9FBCF2|AA      |;
                       LDA.W #$FFFF                         ;9FBCF3|A9FFFF  |;
                       STA.W $0A2C,Y                        ;9FBCF6|992C0A  |;
                       INY                                  ;9FBCF9|C8      |;
                       LDA.L UNREACH_9FBD5E,X               ;9FBCFA|BF5EBD9F|;
                       STA.W $0A2C,Y                        ;9FBCFE|992C0A  |;
                       INY                                  ;9FBD01|C8      |;
                       LDA.B $A5                            ;9FBD02|A5A5    |;
                       SEC                                  ;9FBD04|38      |;
                       SBC.W #$0006                         ;9FBD05|E90600  |;
                       STA.B $A5                            ;9FBD08|85A5    |;
 
          CODE_9FBD0A:
                       STY.W $0A2A                          ;9FBD0A|8C2A0A  |;
                       LDY.W #$0000                         ;9FBD0D|A00000  |;
 
          CODE_9FBD10:
                       STY.B $AD                            ;9FBD10|84AD    |;
                       LDA.W $0A2C,Y                        ;9FBD12|B92C0A  |;
                       AND.W #$00FF                         ;9FBD15|29FF00  |;
                       CMP.W #$00FF                         ;9FBD18|C9FF00  |;
                       BEQ CODE_9FBD37                      ;9FBD1B|F01A    |;
                       ADC.W #$01B0                         ;9FBD1D|69B001  |;
                       STA.B $00                            ;9FBD20|8500    |;
                       LDX.B $A5                            ;9FBD22|A6A5    |;
                       LDY.B $A9                            ;9FBD24|A4A9    |;
                       LDA.W #$2000                         ;9FBD26|A90020  |;
                       JSL.L CODE_80B08D                    ;9FBD29|228DB080|;
                       LDA.B $A5                            ;9FBD2D|A5A5    |;
                       CLC                                  ;9FBD2F|18      |;
                       ADC.W #$0008                         ;9FBD30|690800  |;
                       STA.B $A5                            ;9FBD33|85A5    |;
                       BRA CODE_9FBD3F                      ;9FBD35|8008    |;
 
          CODE_9FBD37:
                       LDA.B $A5                            ;9FBD37|A5A5    |;
                       CLC                                  ;9FBD39|18      |;
                       ADC.W #$0004                         ;9FBD3A|690400  |;
                       STA.B $A5                            ;9FBD3D|85A5    |;
 
          CODE_9FBD3F:
                       LDY.B $AD                            ;9FBD3F|A4AD    |;
                       INY                                  ;9FBD41|C8      |;
                       CPY.W $0A2A                          ;9FBD42|CC2A0A  |;
                       BNE CODE_9FBD10                      ;9FBD45|D0C9    |;
 
          CODE_9FBD47:
                       DEC.B zpCurntTeamLoopVal             ;9FBD47|C691    |;
                       DEC.B zpCurntTeamLoopVal             ;9FBD49|C691    |;
                       BMI CODE_9FBD50                      ;9FBD4B|3003    |;
                       JMP.W CODE_9FBC6E                    ;9FBD4D|4C6EBC  |;
 
          CODE_9FBD50:
                       RTL                                  ;9FBD50|6B      |;
 
         DATA8_9FBD51:
                       db $84,$01,$85,$01                   ;9FBD51|        |;
                       db $86,$01,$87,$01,$88,$01,$89,$01   ;9FBD55|        |;
                       db $8A                               ;9FBD5D|        |;
 
       UNREACH_9FBD5E:
                       db $01                               ;9FBD5E|        |;
                       db $0B,$0B,$0C,$0A,$0D,$0E           ;9FBD5F|        |;
 
          CODE_9FBD65:
                       RTL                                  ;9FBD65|6B      |;
 
          CODE_9FBD66:
                       LDA.W $0D0F                          ;9FBD66|AD0F0D  |;
                       PHA                                  ;9FBD69|48      |;
                       LDA.W $1CDC                          ;9FBD6A|ADDC1C  |;
                       STA.B $8D                            ;9FBD6D|858D    |;
                       LDA.W #$009C                         ;9FBD6F|A99C00  |;
                       STA.B $8F                            ;9FBD72|858F    |;
                       LDA.B $B1                            ;9FBD74|A5B1    |;
                       BEQ CODE_9FBD7D                      ;9FBD76|F005    |;
                       LDA.W $1CDE                          ;9FBD78|ADDE1C  |;
                       STA.B $8D                            ;9FBD7B|858D    |;
 
          CODE_9FBD7D:
                       LDY.W #$0004                         ;9FBD7D|A00400  |;
                       LDA.B [$8D],Y                        ;9FBD80|B78D    |;
                       CLC                                  ;9FBD82|18      |;
                       ADC.B $8D                            ;9FBD83|658D    |;
                       STA.B $8D                            ;9FBD85|858D    |;
                       LDA.B [$8D]                          ;9FBD87|A78D    |;
                       ADC.B $8D                            ;9FBD89|658D    |;
                       STA.B $8D                            ;9FBD8B|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FBD8D|22BEC79E|;
                       PLA                                  ;9FBD91|68      |;
                       STA.W $0D0F                          ;9FBD92|8D0F0D  |;
                       INC.W $0D11                          ;9FBD95|EE110D  |;
                       INC.W $0D11                          ;9FBD98|EE110D  |;
                       RTL                                  ;9FBD9B|6B      |;
 
          CODE_9FBD9C:
                       PHX                                  ;9FBD9C|DA      |;
                       LDA.B $AD                            ;9FBD9D|A5AD    |;
                       CLC                                  ;9FBD9F|18      |;
                       ADC.L $7E35A8                        ;9FBDA0|6FA8357E|;
                       STA.B $AD                            ;9FBDA4|85AD    |;
                       STZ.B $AB                            ;9FBDA6|64AB    |;
 
          CODE_9FBDA8:
                       LDA.W $0D11                          ;9FBDA8|AD110D  |;
                       CLC                                  ;9FBDAB|18      |;
                       ADC.B $AB                            ;9FBDAC|65AB    |;
                       ASL A                                ;9FBDAE|0A      |;
                       ASL A                                ;9FBDAF|0A      |;
                       ASL A                                ;9FBDB0|0A      |;
                       ASL A                                ;9FBDB1|0A      |;
                       ASL A                                ;9FBDB2|0A      |;
                       ADC.W $0D0F                          ;9FBDB3|6D0F0D  |;
                       ASL A                                ;9FBDB6|0A      |;
                       ADC.W $0CD9                          ;9FBDB7|6DD90C  |;
                       TAX                                  ;9FBDBA|AA      |;
                       LDY.B $A5                            ;9FBDBB|A4A5    |;
                       LDA.B $AD                            ;9FBDBD|A5AD    |;
 
          CODE_9FBDBF:
                       STA.L $7E37F4,X                      ;9FBDBF|9FF4377E|;
                       INX                                  ;9FBDC3|E8      |;
                       INX                                  ;9FBDC4|E8      |;
                       DEY                                  ;9FBDC5|88      |;
                       BNE CODE_9FBDBF                      ;9FBDC6|D0F7    |;
                       INC.B $AB                            ;9FBDC8|E6AB    |;
                       LDA.B $AB                            ;9FBDCA|A5AB    |;
                       CMP.B $A9                            ;9FBDCC|C5A9    |;
                       BNE CODE_9FBDA8                      ;9FBDCE|D0D8    |;
                       PLX                                  ;9FBDD0|FA      |;
                       LDA.W $0D11                          ;9FBDD1|AD110D  |;
                       ASL A                                ;9FBDD4|0A      |;
                       ASL A                                ;9FBDD5|0A      |;
                       ASL A                                ;9FBDD6|0A      |;
                       ASL A                                ;9FBDD7|0A      |;
                       ASL A                                ;9FBDD8|0A      |;
                       ADC.W $0D0F                          ;9FBDD9|6D0F0D  |;
                       CMP.W $0CD5                          ;9FBDDC|CDD50C  |;
                       BCS CODE_9FBDE4                      ;9FBDDF|B003    |;
                       STA.W $0CD5                          ;9FBDE1|8DD50C  |;
 
          CODE_9FBDE4:
                       LDA.W $0D11                          ;9FBDE4|AD110D  |;
                       CLC                                  ;9FBDE7|18      |;
                       ADC.B $A9                            ;9FBDE8|65A9    |;
                       AND.W #$001F                         ;9FBDEA|291F00  |;
                       STA.W $0D11                          ;9FBDED|8D110D  |;
                       DEC A                                ;9FBDF0|3A      |;
                       AND.W #$001F                         ;9FBDF1|291F00  |;
                       ASL A                                ;9FBDF4|0A      |;
                       ASL A                                ;9FBDF5|0A      |;
                       ASL A                                ;9FBDF6|0A      |;
                       ASL A                                ;9FBDF7|0A      |;
                       ASL A                                ;9FBDF8|0A      |;
                       ADC.W $0D0F                          ;9FBDF9|6D0F0D  |;
                       ADC.B $A5                            ;9FBDFC|65A5    |;
                       DEC A                                ;9FBDFE|3A      |;
                       CMP.W $0CD7                          ;9FBDFF|CDD70C  |;
                       BCC CODE_9FBE07                      ;9FBE02|9003    |;
                       STA.W $0CD7                          ;9FBE04|8DD70C  |;
 
          CODE_9FBE07:
                       RTL                                  ;9FBE07|6B      |;
 
          CODE_9FBE08:
                       LDA.B zpCurntTeamLoopVal             ;9FBE08|A591    |;
                       PHA                                  ;9FBE0A|48      |;
                       PHX                                  ;9FBE0B|DA      |;
                       LDA.W $0D0F                          ;9FBE0C|AD0F0D  |;
                       ASL A                                ;9FBE0F|0A      |;
                       ASL A                                ;9FBE10|0A      |;
                       ASL A                                ;9FBE11|0A      |;
                       CLC                                  ;9FBE12|18      |;
                       ADC.W #$0024                         ;9FBE13|692400  |;
                       TAX                                  ;9FBE16|AA      |;
                       LDA.L $7E3464                        ;9FBE17|AF64347E|;
                       BEQ CODE_9FBE23                      ;9FBE1B|F006    |;
                       TXA                                  ;9FBE1D|8A      |;
                       SEC                                  ;9FBE1E|38      |;
                       SBC.W #$0008                         ;9FBE1F|E90800  |;
                       TAX                                  ;9FBE22|AA      |;
 
          CODE_9FBE23:
                       LDA.W $0D11                          ;9FBE23|AD110D  |;
                       ASL A                                ;9FBE26|0A      |;
                       ASL A                                ;9FBE27|0A      |;
                       ASL A                                ;9FBE28|0A      |;
                       INC A                                ;9FBE29|1A      |;
                       INC A                                ;9FBE2A|1A      |;
                       INC A                                ;9FBE2B|1A      |;
                       TAY                                  ;9FBE2C|A8      |;
                       LDA.L $7E346A                        ;9FBE2D|AF6A347E|;
                       BNE CODE_9FBE3B                      ;9FBE31|D008    |;
                       LDA.L $7E3464                        ;9FBE33|AF64347E|;
                       BNE CODE_9FBE3B                      ;9FBE37|D002    |;
                       BRA CODE_9FBE43                      ;9FBE39|8008    |;
 
          CODE_9FBE3B:
                       INX                                  ;9FBE3B|E8      |;
                       INX                                  ;9FBE3C|E8      |;
                       INX                                  ;9FBE3D|E8      |;
                       INX                                  ;9FBE3E|E8      |;
                       INY                                  ;9FBE3F|C8      |;
                       INY                                  ;9FBE40|C8      |;
                       INY                                  ;9FBE41|C8      |;
                       INY                                  ;9FBE42|C8      |;
 
          CODE_9FBE43:
                       JSL.L CODE_9C943E                    ;9FBE43|223E949C|;
                       LDA.L $7E3462                        ;9FBE47|AF62347E|;
                       BEQ CODE_9FBE56                      ;9FBE4B|F009    |;
                       LDA.L $7E3460                        ;9FBE4D|AF60347E|;
                       BNE CODE_9FBE56                      ;9FBE51|D003    |;
                       JMP.W CODE_9FBEF8                    ;9FBE53|4CF8BE  |;
 
          CODE_9FBE56:
                       LDA.W #$1800                         ;9FBE56|A90018  |;
                       STA.B $14                            ;9FBE59|8514    |;
                       LDY.W #$0060                         ;9FBE5B|A06000  |;
                       LDA.B $A9                            ;9FBE5E|A5A9    |;
                       CMP.W $1C98                          ;9FBE60|CD981C  |;
                       BNE CODE_9FBE6D                      ;9FBE63|D008    |;
                       LDX.W #$1C00                         ;9FBE65|A2001C  |;
                       STX.B $14                            ;9FBE68|8614    |;
                       LDY.W #$0070                         ;9FBE6A|A07000  |;
 
          CODE_9FBE6D:
                       ASL A                                ;9FBE6D|0A      |;
                       ASL A                                ;9FBE6E|0A      |;
                       TAX                                  ;9FBE6F|AA      |;
                       LDA.L UNREACH_9C8511,X               ;9FBE70|BF11859C|;
                       STA.B $0E                            ;9FBE74|850E    |;
                       LDA.L UNREACH_9C850F,X               ;9FBE76|BF0F859C|;
                       STA.B $0C                            ;9FBE7A|850C    |;
                       LDX.W #$0010                         ;9FBE7C|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9FBE7F|22BDE09D|;
                       LDA.W $1C98                          ;9FBE83|AD981C  |;
                       CMP.W $1C9A                          ;9FBE86|CD9A1C  |;
                       BNE CODE_9FBE9E                      ;9FBE89|D013    |;
                       LDA.B $14                            ;9FBE8B|A514    |;
                       CMP.W #$1800                         ;9FBE8D|C90018  |;
                       BEQ CODE_9FBE9E                      ;9FBE90|F00C    |;
                       LDA.W #$1800                         ;9FBE92|A90018  |;
                       STA.B $14                            ;9FBE95|8514    |;
                       LDY.W #$0060                         ;9FBE97|A06000  |;
                       LDA.B $A9                            ;9FBE9A|A5A9    |;
                       BRA CODE_9FBE6D                      ;9FBE9C|80CF    |;
 
          CODE_9FBE9E:
                       LDY.W #$0000                         ;9FBE9E|A00000  |;
                       LDA.W #$009A                         ;9FBEA1|A99A00  |;
                       STA.B $93                            ;9FBEA4|8593    |;
                       LDA.W #$E9A3                         ;9FBEA6|A9A3E9  |;
                       STA.B zpCurntTeamLoopVal             ;9FBEA9|8591    |;
                       LDA.W $0D11                          ;9FBEAB|AD110D  |;
                       ASL A                                ;9FBEAE|0A      |;
                       ASL A                                ;9FBEAF|0A      |;
                       ASL A                                ;9FBEB0|0A      |;
                       ASL A                                ;9FBEB1|0A      |;
                       ASL A                                ;9FBEB2|0A      |;
                       ADC.W $0D0F                          ;9FBEB3|6D0F0D  |;
                       ASL A                                ;9FBEB6|0A      |;
                       ADC.W $0CD9                          ;9FBEB7|6DD90C  |;
                       TAX                                  ;9FBEBA|AA      |;
                       LDA.W #$0009                         ;9FBEBB|A90900  |;
                       STA.B $C5                            ;9FBEBE|85C5    |;
                       STA.B $C7                            ;9FBEC0|85C7    |;
 
          CODE_9FBEC2:
                       LDA.B [zpCurntTeamLoopVal],Y         ;9FBEC2|B791    |;
                       CLC                                  ;9FBEC4|18      |;
                       ADC.L $7E35CE                        ;9FBEC5|6FCE357E|;
                       CLC                                  ;9FBEC9|18      |;
                       ADC.L $7E35A8                        ;9FBECA|6FA8357E|;
                       CLC                                  ;9FBECE|18      |;
                       ADC.B $14                            ;9FBECF|6514    |;
                       STA.L $7E37F4,X                      ;9FBED1|9FF4377E|;
                       INY                                  ;9FBED5|C8      |;
                       INY                                  ;9FBED6|C8      |;
                       INX                                  ;9FBED7|E8      |;
                       INX                                  ;9FBED8|E8      |;
                       DEC.B $C5                            ;9FBED9|C6C5    |;
                       BNE CODE_9FBEC2                      ;9FBEDB|D0E5    |;
 
          CODE_9FBEDD:
                       LDA.B [zpCurntTeamLoopVal],Y         ;9FBEDD|B791    |;
                       CLC                                  ;9FBEDF|18      |;
                       ADC.L $7E35CE                        ;9FBEE0|6FCE357E|;
                       CLC                                  ;9FBEE4|18      |;
                       ADC.L $7E35A8                        ;9FBEE5|6FA8357E|;
                       CLC                                  ;9FBEE9|18      |;
                       ADC.B $14                            ;9FBEEA|6514    |;
                       STA.L $7E3822,X                      ;9FBEEC|9F22387E|;
                       INY                                  ;9FBEF0|C8      |;
                       INY                                  ;9FBEF1|C8      |;
                       INX                                  ;9FBEF2|E8      |;
                       INX                                  ;9FBEF3|E8      |;
                       DEC.B $C7                            ;9FBEF4|C6C7    |;
                       BNE CODE_9FBEDD                      ;9FBEF6|D0E5    |;
 
          CODE_9FBEF8:
                       PLX                                  ;9FBEF8|FA      |;
                       PLA                                  ;9FBEF9|68      |;
                       STA.B zpCurntTeamLoopVal             ;9FBEFA|8591    |;
                       RTL                                  ;9FBEFC|6B      |;
 
          CODE_9FBEFD:
                       LDA.W $15D8                          ;9FBEFD|ADD815  |;
                       BIT.W #$2000                         ;9FBF00|890020  |;
                       BNE CODE_9FBF74                      ;9FBF03|D06F    |;
                       LDA.B $8F                            ;9FBF05|A58F    |;
                       PHA                                  ;9FBF07|48      |;
                       LDA.B $8D                            ;9FBF08|A58D    |;
                       PHA                                  ;9FBF0A|48      |;
                       LDA.W #$009C                         ;9FBF0B|A99C00  |;
                       STA.B $8F                            ;9FBF0E|858F    |;
                       LDA.W #$F8D2                         ;9FBF10|A9D2F8  |;
                       STA.B $8D                            ;9FBF13|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FBF15|22BEC79E|;
                       PLA                                  ;9FBF19|68      |;
                       STA.B $8D                            ;9FBF1A|858D    |;
                       PLA                                  ;9FBF1C|68      |;
                       STA.B $8F                            ;9FBF1D|858F    |;
                       LDA.W #$009A                         ;9FBF1F|A99A00  |;
                       STA.B $0E                            ;9FBF22|850E    |;
                       LDA.W #$EA3A                         ;9FBF24|A93AEA  |;
                       STA.B $0C                            ;9FBF27|850C    |;
                       LDA.W #$007E                         ;9FBF29|A97E00  |;
                       STA.B $12                            ;9FBF2C|8512    |;
                       LDA.W #$37F4                         ;9FBF2E|A9F437  |;
                       STA.B $10                            ;9FBF31|8510    |;
                       LDA.W #$0020                         ;9FBF33|A92000  |;
                       STA.B $24                            ;9FBF36|8524    |;
                       LDX.W #$0001                         ;9FBF38|A20100  |;
                       LDY.W #$0019                         ;9FBF3B|A01900  |;
                       LDA.W #$2000                         ;9FBF3E|A90020  |;
                       CLC                                  ;9FBF41|18      |;
                       ADC.L $7E35B0                        ;9FBF42|6FB0357E|;
                       ADC.L $7E35AA                        ;9FBF46|6FAA357E|;
                       JSL.L CODE_808E2D                    ;9FBF4A|222D8E80|;
                       LDA.W #$0321                         ;9FBF4E|A92103  |;
                       CMP.W $0CD5                          ;9FBF51|CDD50C  |;
                       BCS CODE_9FBF59                      ;9FBF54|B003    |;
                       db $8D,$D5,$0C                       ;9FBF56|        |;
 
          CODE_9FBF59:
                       LDA.L DATA8_9AEA3C                   ;9FBF59|AF3CEA9A|;
                       CLC                                  ;9FBF5D|18      |;
                       ADC.W #$0019                         ;9FBF5E|691900  |;
                       DEC A                                ;9FBF61|3A      |;
                       ASL A                                ;9FBF62|0A      |;
                       ASL A                                ;9FBF63|0A      |;
                       ASL A                                ;9FBF64|0A      |;
                       ASL A                                ;9FBF65|0A      |;
                       ASL A                                ;9FBF66|0A      |;
                       CLC                                  ;9FBF67|18      |;
                       ADC.L DATA8_9AEA3A                   ;9FBF68|6F3AEA9A|;
                       CMP.W $0CD7                          ;9FBF6C|CDD70C  |;
                       BCC CODE_9FBF74                      ;9FBF6F|9003    |;
                       db $8D,$D7,$0C                       ;9FBF71|        |;
 
          CODE_9FBF74:
                       RTL                                  ;9FBF74|6B      |;
 
          CODE_9FBF75:
                       LDA.W $0CD5                          ;9FBF75|ADD50C  |;
                       BMI CODE_9FBF9F                      ;9FBF78|3025    |;
                       TAY                                  ;9FBF7A|A8      |;
                       ASL A                                ;9FBF7B|0A      |;
                       ADC.W #$37F4                         ;9FBF7C|69F437  |;
                       STA.B $0C                            ;9FBF7F|850C    |;
                       LDA.W #$007E                         ;9FBF81|A97E00  |;
                       STA.B $0E                            ;9FBF84|850E    |;
                       LDA.W $0CD7                          ;9FBF86|ADD70C  |;
                       BEQ CODE_9FBF9F                      ;9FBF89|F014    |;
                       SEC                                  ;9FBF8B|38      |;
                       SBC.W $0CD5                          ;9FBF8C|EDD50C  |;
                       INC A                                ;9FBF8F|1A      |;
                       ASL A                                ;9FBF90|0A      |;
                       TAX                                  ;9FBF91|AA      |;
                       JSL.L CODE_80891F                    ;9FBF92|221F8980|;
                       LDA.W #$FFFF                         ;9FBF96|A9FFFF  |;
                       STA.W $0CD5                          ;9FBF99|8DD50C  |;
                       STZ.W $0CD7                          ;9FBF9C|9CD70C  |;
 
          CODE_9FBF9F:
                       RTL                                  ;9FBF9F|6B      |;
 
          CODE_9FBFA0:
                       LDA.W $15DA                          ;9FBFA0|ADDA15  |;
                       BEQ CODE_9FBFA6                      ;9FBFA3|F001    |;
                       RTL                                  ;9FBFA5|6B      |;
 
          CODE_9FBFA6:
                       LDA.W $0D39                          ;9FBFA6|AD390D  |;
                       CLC                                  ;9FBFA9|18      |;
                       ADC.W #$0170                         ;9FBFAA|697001  |;
                       LSR A                                ;9FBFAD|4A      |;
                       LSR A                                ;9FBFAE|4A      |;
                       LSR A                                ;9FBFAF|4A      |;
                       TAX                                  ;9FBFB0|AA      |;
                       SEC                                  ;9FBFB1|38      |;
                       SBC.W $0D23                          ;9FBFB2|ED230D  |;
                       BNE CODE_9FBFBA                      ;9FBFB5|D003    |;
                       JMP.W CODE_9FC072                    ;9FBFB7|4C72C0  |;
 
          CODE_9FBFBA:
                       BPL CODE_9FBFE6                      ;9FBFBA|102A    |;
                       STX.W $0D23                          ;9FBFBC|8E230D  |;
                       EOR.W #$FFFF                         ;9FBFBF|49FFFF  |;
                       INC A                                ;9FBFC2|1A      |;
                       CMP.W #$0019                         ;9FBFC3|C91900  |;
                       BCS CODE_9FBFDA                      ;9FBFC6|B012    |;
                       STA.B $C7                            ;9FBFC8|85C7    |;
                       LDA.W $0D25                          ;9FBFCA|AD250D  |;
                       SEC                                  ;9FBFCD|38      |;
                       SBC.B $C7                            ;9FBFCE|E5C7    |;
                       AND.W #$001F                         ;9FBFD0|291F00  |;
                       STA.W $0D25                          ;9FBFD3|8D250D  |;
                       STA.B $C9                            ;9FBFD6|85C9    |;
                       BRA CODE_9FC00D                      ;9FBFD8|8033    |;
 
          CODE_9FBFDA:
                       LDA.W #$001D                         ;9FBFDA|A91D00  |;
                       STA.B $C7                            ;9FBFDD|85C7    |;
                       STZ.W $0D25                          ;9FBFDF|9C250D  |;
                       STZ.B $C9                            ;9FBFE2|64C9    |;
                       BRA CODE_9FC00D                      ;9FBFE4|8027    |;
 
          CODE_9FBFE6:
                       STX.W $0D23                          ;9FBFE6|8E230D  |;
                       CMP.W #$0019                         ;9FBFE9|C91900  |;
                       BCS CODE_9FBFDA                      ;9FBFEC|B0EC    |;
                       STA.B $C7                            ;9FBFEE|85C7    |;
                       ADC.W $0D25                          ;9FBFF0|6D250D  |;
                       AND.W #$001F                         ;9FBFF3|291F00  |;
                       STA.W $0D25                          ;9FBFF6|8D250D  |;
                       ADC.W #$001D                         ;9FBFF9|691D00  |;
                       SEC                                  ;9FBFFC|38      |;
                       SBC.B $C7                            ;9FBFFD|E5C7    |;
                       AND.W #$001F                         ;9FBFFF|291F00  |;
                       STA.B $C9                            ;9FC002|85C9    |;
                       TXA                                  ;9FC004|8A      |;
                       CLC                                  ;9FC005|18      |;
                       ADC.W #$001D                         ;9FC006|691D00  |;
                       SEC                                  ;9FC009|38      |;
                       SBC.B $C7                            ;9FC00A|E5C7    |;
                       TAX                                  ;9FC00C|AA      |;
 
          CODE_9FC00D:
                       TXA                                  ;9FC00D|8A      |;
                       ASL A                                ;9FC00E|0A      |;
                       ASL A                                ;9FC00F|0A      |;
                       ASL A                                ;9FC010|0A      |;
                       ASL A                                ;9FC011|0A      |;
                       ASL A                                ;9FC012|0A      |;
                       STA.B $C5                            ;9FC013|85C5    |;
                       ASL A                                ;9FC015|0A      |;
                       ADC.B $C5                            ;9FC016|65C5    |;
                       ADC.W #$C800                         ;9FC018|6900C8  |;
                       ADC.W #$0006                         ;9FC01B|690600  |;
                       STA.B $C5                            ;9FC01E|85C5    |;
                       LDA.B $C9                            ;9FC020|A5C9    |;
                       ASL A                                ;9FC022|0A      |;
                       ASL A                                ;9FC023|0A      |;
                       ASL A                                ;9FC024|0A      |;
                       ASL A                                ;9FC025|0A      |;
                       ASL A                                ;9FC026|0A      |;
                       ADC.W #$0400                         ;9FC027|690004  |;
                       STA.B $C9                            ;9FC02A|85C9    |;
                       LDA.B $C7                            ;9FC02C|A5C7    |;
                       STA.B $04                            ;9FC02E|8504    |;
 
          CODE_9FC030:
                       LDA.W #$007F                         ;9FC030|A97F00  |;
                       STA.B $0E                            ;9FC033|850E    |;
                       LDA.B $C5                            ;9FC035|A5C5    |;
                       STA.B $0C                            ;9FC037|850C    |;
                       LDY.B $C9                            ;9FC039|A4C9    |;
                       LDX.W #$0040                         ;9FC03B|A24000  |;
                       JSL.L CODE_80891F                    ;9FC03E|221F8980|;
                       LDA.B $C5                            ;9FC042|A5C5    |;
                       CLC                                  ;9FC044|18      |;
                       ADC.W #$0040                         ;9FC045|694000  |;
                       STA.B $0C                            ;9FC048|850C    |;
                       LDA.B $C9                            ;9FC04A|A5C9    |;
                       CLC                                  ;9FC04C|18      |;
                       ADC.W #$0400                         ;9FC04D|690004  |;
                       TAY                                  ;9FC050|A8      |;
                       LDX.W #$0020                         ;9FC051|A22000  |;
                       JSL.L CODE_80891F                    ;9FC054|221F8980|;
                       LDA.B $C5                            ;9FC058|A5C5    |;
                       CLC                                  ;9FC05A|18      |;
                       ADC.W #$0060                         ;9FC05B|696000  |;
                       STA.B $C5                            ;9FC05E|85C5    |;
                       LDA.B $C9                            ;9FC060|A5C9    |;
                       CLC                                  ;9FC062|18      |;
                       ADC.W #$0020                         ;9FC063|692000  |;
                       AND.W #$03FF                         ;9FC066|29FF03  |;
                       ORA.W #$0400                         ;9FC069|090004  |;
                       STA.B $C9                            ;9FC06C|85C9    |;
                       DEC.B $04                            ;9FC06E|C604    |;
                       BNE CODE_9FC030                      ;9FC070|D0BE    |;
 
          CODE_9FC072:
                       LDA.W $0CED                          ;9FC072|ADED0C  |;
                       CLC                                  ;9FC075|18      |;
                       ADC.W #$00C0                         ;9FC076|69C000  |;
                       STA.W $07DA                          ;9FC079|8DDA07  |;
                       LDA.W $0D39                          ;9FC07C|AD390D  |;
                       AND.W #$0007                         ;9FC07F|290700  |;
                       STA.B $14                            ;9FC082|8514    |;
                       LDA.W $0D25                          ;9FC084|AD250D  |;
                       ASL A                                ;9FC087|0A      |;
                       ASL A                                ;9FC088|0A      |;
                       ASL A                                ;9FC089|0A      |;
                       ORA.B $14                            ;9FC08A|0514    |;
                       STA.W $07DC                          ;9FC08C|8DDC07  |;
                       RTL                                  ;9FC08F|6B      |;
 
          CODE_9FC090:
                       LDA.W $0D4D                          ;9FC090|AD4D0D  |;
                       STA.B $AD                            ;9FC093|85AD    |;
                       LDA.W $0D4B                          ;9FC095|AD4B0D  |;
                       STA.B $B1                            ;9FC098|85B1    |;
                       LDA.W $15D8                          ;9FC09A|ADD815  |;
                       BIT.W #$0040                         ;9FC09D|894000  |;
                       BNE CODE_9FC102                      ;9FC0A0|D060    |;
                       LDX.W #$001C                         ;9FC0A2|A21C00  |;
                       LDA.W $0AD9                          ;9FC0A5|ADD90A  |;
                       BMI CODE_9FC0DB                      ;9FC0A8|3031    |;
                       TAX                                  ;9FC0AA|AA      |;
                       LDA.W $14C3,X                        ;9FC0AB|BDC314  |;
                       BEQ CODE_9FC0C6                      ;9FC0AE|F016    |;
                       LDA.W $0D4F                          ;9FC0B0|AD4F0D  |;
                       ADC.W $0CDD                          ;9FC0B3|6DDD0C  |;
                       STA.W $0D4F                          ;9FC0B6|8D4F0D  |;
                       CMP.W #$0032                         ;9FC0B9|C93200  |;
                       BMI CODE_9FC0DB                      ;9FC0BC|301D    |;
                       LDA.W #$0032                         ;9FC0BE|A93200  |;
                       STA.W $0D4F                          ;9FC0C1|8D4F0D  |;
                       BRA CODE_9FC0DB                      ;9FC0C4|8015    |;
 
          CODE_9FC0C6:
                       LDA.W $0D4F                          ;9FC0C6|AD4F0D  |;
                       SEC                                  ;9FC0C9|38      |;
                       SBC.W $0CDD                          ;9FC0CA|EDDD0C  |;
                       STA.W $0D4F                          ;9FC0CD|8D4F0D  |;
                       CMP.W #$FFCF                         ;9FC0D0|C9CFFF  |;
                       BPL CODE_9FC0DB                      ;9FC0D3|1006    |;
                       LDA.W #$FFCE                         ;9FC0D5|A9CEFF  |;
                       STA.W $0D4F                          ;9FC0D8|8D4F0D  |;
 
          CODE_9FC0DB:
                       LDA.W $0EE3,X                        ;9FC0DB|BDE30E  |;
                       LSR A                                ;9FC0DE|4A      |;
                       LSR A                                ;9FC0DF|4A      |;
                       LSR A                                ;9FC0E0|4A      |;
                       LSR A                                ;9FC0E1|4A      |;
                       LSR A                                ;9FC0E2|4A      |;
                       LSR A                                ;9FC0E3|4A      |;
                       LSR A                                ;9FC0E4|4A      |;
                       BIT.W #$0100                         ;9FC0E5|890001  |;
                       BEQ CODE_9FC0ED                      ;9FC0E8|F003    |;
                       ORA.W #$FE00                         ;9FC0EA|0900FE  |;
 
          CODE_9FC0ED:
                       CLC                                  ;9FC0ED|18      |;
                       ADC.W $0DB7,X                        ;9FC0EE|7DB70D  |;
                       CLC                                  ;9FC0F1|18      |;
                       ADC.W $0D4F                          ;9FC0F2|6D4F0D  |;
                       STA.B $AD                            ;9FC0F5|85AD    |;
                       STA.W $0D4D                          ;9FC0F7|8D4D0D  |;
                       LDA.W $0D55,X                        ;9FC0FA|BD550D  |;
                       STA.B $B1                            ;9FC0FD|85B1    |;
                       STA.W $0D4B                          ;9FC0FF|8D4B0D  |;
 
          CODE_9FC102:
                       LDA.B $AD                            ;9FC102|A5AD    |;
                       SEC                                  ;9FC104|38      |;
                       SBC.W $0D37                          ;9FC105|ED370D  |;
                       STA.B $A5                            ;9FC108|85A5    |;
                       CMP.W #$FFF7                         ;9FC10A|C9F7FF  |;
                       BPL CODE_9FC123                      ;9FC10D|1014    |;
                       LDA.B $AD                            ;9FC10F|A5AD    |;
                       SEC                                  ;9FC111|38      |;
                       SBC.W #$FFF6                         ;9FC112|E9F6FF  |;
                       STA.B $A9                            ;9FC115|85A9    |;
                       CMP.W #$FF39                         ;9FC117|C939FF  |;
                       BPL CODE_9FC13C                      ;9FC11A|1020    |;
                       LDA.W #$FF39                         ;9FC11C|A939FF  |;
                       STA.B $A9                            ;9FC11F|85A9    |;
                       BRA CODE_9FC13C                      ;9FC121|8019    |;
 
          CODE_9FC123:
                       LDA.B $A5                            ;9FC123|A5A5    |;
                       CMP.W #$000B                         ;9FC125|C90B00  |;
                       BMI CODE_9FC15D                      ;9FC128|3033    |;
                       LDA.B $AD                            ;9FC12A|A5AD    |;
                       SEC                                  ;9FC12C|38      |;
                       SBC.W #$000A                         ;9FC12D|E90A00  |;
                       STA.B $A9                            ;9FC130|85A9    |;
                       CMP.W #$0100                         ;9FC132|C90001  |;
                       BMI CODE_9FC13C                      ;9FC135|3005    |;
                       LDA.W #$0100                         ;9FC137|A90001  |;
                       STA.B $A9                            ;9FC13A|85A9    |;
 
          CODE_9FC13C:
                       LDA.B $A9                            ;9FC13C|A5A9    |;
                       SEC                                  ;9FC13E|38      |;
                       SBC.W $0D37                          ;9FC13F|ED370D  |;
                       BEQ CODE_9FC15D                      ;9FC142|F019    |;
                       LSR A                                ;9FC144|4A      |;
                       LSR A                                ;9FC145|4A      |;
                       LSR A                                ;9FC146|4A      |;
                       LSR A                                ;9FC147|4A      |;
                       BIT.W #$0800                         ;9FC148|890008  |;
                       BEQ CODE_9FC150                      ;9FC14B|F003    |;
                       ORA.W #$F000                         ;9FC14D|0900F0  |;
 
          CODE_9FC150:
                       CMP.W #$0000                         ;9FC150|C90000  |;
                       BNE CODE_9FC156                      ;9FC153|D001    |;
                       INC A                                ;9FC155|1A      |;
 
          CODE_9FC156:
                       CLC                                  ;9FC156|18      |;
                       ADC.W $0D37                          ;9FC157|6D370D  |;
                       STA.W $0D37                          ;9FC15A|8D370D  |;
 
          CODE_9FC15D:
                       LDA.B $B1                            ;9FC15D|A5B1    |;
                       SEC                                  ;9FC15F|38      |;
                       SBC.W $0CEB                          ;9FC160|EDEB0C  |;
                       STA.B $A5                            ;9FC163|85A5    |;
                       CMP.W #$FFD8                         ;9FC165|C9D8FF  |;
                       BPL CODE_9FC17E                      ;9FC168|1014    |;
                       LDA.B $B1                            ;9FC16A|A5B1    |;
                       SEC                                  ;9FC16C|38      |;
                       SBC.W #$FFD8                         ;9FC16D|E9D8FF  |;
                       STA.B $A9                            ;9FC170|85A9    |;
                       CMP.W #$FFC4                         ;9FC172|C9C4FF  |;
                       BPL CODE_9FC197                      ;9FC175|1020    |;
                       LDA.W #$FFC4                         ;9FC177|A9C4FF  |;
                       STA.B $A9                            ;9FC17A|85A9    |;
                       BRA CODE_9FC197                      ;9FC17C|8019    |;
 
          CODE_9FC17E:
                       LDA.B $A5                            ;9FC17E|A5A5    |;
                       CMP.W #$0029                         ;9FC180|C92900  |;
                       BMI CODE_9FC1B8                      ;9FC183|3033    |;
                       LDA.B $B1                            ;9FC185|A5B1    |;
                       SEC                                  ;9FC187|38      |;
                       SBC.W #$0028                         ;9FC188|E92800  |;
                       STA.B $A9                            ;9FC18B|85A9    |;
                       CMP.W #$003D                         ;9FC18D|C93D00  |;
                       BMI CODE_9FC197                      ;9FC190|3005    |;
                       LDA.W #$003C                         ;9FC192|A93C00  |;
                       STA.B $A9                            ;9FC195|85A9    |;
 
          CODE_9FC197:
                       LDA.B $A9                            ;9FC197|A5A9    |;
                       SEC                                  ;9FC199|38      |;
                       SBC.W $0CEB                          ;9FC19A|EDEB0C  |;
                       BEQ CODE_9FC1B8                      ;9FC19D|F019    |;
                       LSR A                                ;9FC19F|4A      |;
                       LSR A                                ;9FC1A0|4A      |;
                       LSR A                                ;9FC1A1|4A      |;
                       LSR A                                ;9FC1A2|4A      |;
                       BIT.W #$0800                         ;9FC1A3|890008  |;
                       BEQ CODE_9FC1AB                      ;9FC1A6|F003    |;
                       ORA.W #$F000                         ;9FC1A8|0900F0  |;
 
          CODE_9FC1AB:
                       CMP.W #$0000                         ;9FC1AB|C90000  |;
                       BNE CODE_9FC1B1                      ;9FC1AE|D001    |;
                       INC A                                ;9FC1B0|1A      |;
 
          CODE_9FC1B1:
                       CLC                                  ;9FC1B1|18      |;
                       ADC.W $0CEB                          ;9FC1B2|6DEB0C  |;
                       STA.W $0CEB                          ;9FC1B5|8DEB0C  |;
 
          CODE_9FC1B8:
                       RTL                                  ;9FC1B8|6B      |;
 
          CODE_9FC1B9:
                       JSL.L CODE_9BC174                    ;9FC1B9|2274C19B|;
                       DEC.B $B5                            ;9FC1BD|C6B5    |;
                       DEC.B $B5                            ;9FC1BF|C6B5    |;
                       LDA.B $B1                            ;9FC1C1|A5B1    |;
                       BIT.W #$1000                         ;9FC1C3|890010  |;
                       BEQ CODE_9FC1CE                      ;9FC1C6|F006    |;
                       LDA.B $B5                            ;9FC1C8|A5B5    |;
                       JMP.W CODE_9F936C                    ;9FC1CA|4C6C93  |;
 
       UNREACH_9FC1CD:
                       db $6B                               ;9FC1CD|        |;
 
          CODE_9FC1CE:
                       LDA.W PauseScreenActive              ;9FC1CE|ADDA15  |;
                       BEQ CODE_9FC1E1                      ;9FC1D1|F00E    |;
                       LDA.B $A5                            ;9FC1D3|A5A5    |;
                       BIT.W #$0008                         ;9FC1D5|890800  |;
                       BNE CODE_9FC1E1                      ;9FC1D8|D007    |;
                       db $1A,$1A,$29,$07,$00,$85,$A5       ;9FC1DA|        |;
 
          CODE_9FC1E1:
                       LDA.W $15D8                          ;9FC1E1|ADD815  |;
                       BIT.W #$0100                         ;9FC1E4|890001  |;
                       BEQ CODE_9FC1EC                      ;9FC1E7|F003    |;
                       JMP.W CODE_9FC26F                    ;9FC1E9|4C6FC2  |;
 
          CODE_9FC1EC:
                       LDA.W $0B7D,X                        ;9FC1EC|BD7D0B  |;
                       CMP.W #$BCC7                         ;9FC1EF|C9C7BC  |;
                       BEQ UNREACH_9FC1CD                   ;9FC1F2|F0D9    |;
                       PHY                                  ;9FC1F4|5A      |;
                       LDY.W #$0000                         ;9FC1F5|A00000  |;
                       LDA.W $1503,X                        ;9FC1F8|BD0315  |;
                       BEQ CODE_9FC200                      ;9FC1FB|F003    |;
                       LDY.W #$0002                         ;9FC1FD|A00200  |;
 
          CODE_9FC200:
                       LDA.W $1D55,Y                        ;9FC200|B9551D  |;
                       PLY                                  ;9FC203|7A      |;
                       CMP.W #$0000                         ;9FC204|C90000  |;
                       BMI CODE_9FC20D                      ;9FC207|3004    |;
                       CMP.B $B5                            ;9FC209|C5B5    |;
                       BNE CODE_9FC222                      ;9FC20B|D015    |;
 
          CODE_9FC20D:
                       PHY                                  ;9FC20D|5A      |;
                       LDY.W #$0000                         ;9FC20E|A00000  |;
                       LDA.W $1503,X                        ;9FC211|BD0315  |;
                       BEQ CODE_9FC219                      ;9FC214|F003    |;
                       LDY.W #$0002                         ;9FC216|A00200  |;
 
          CODE_9FC219:
                       LDA.W $17DE,Y                        ;9FC219|B9DE17  |;
                       PLY                                  ;9FC21C|7A      |;
                       BIT.W #$0008                         ;9FC21D|890800  |;
                       BNE CODE_9FC273                      ;9FC220|D051    |;
 
          CODE_9FC222:
                       LDA.B $A9                            ;9FC222|A5A9    |;
                       BIT.W #$2000                         ;9FC224|890020  |;
                       BNE UNREACH_9FC299                   ;9FC227|D070    |;
                       CPX.W $0AD9                          ;9FC229|ECD90A  |;
                       BNE CODE_9FC231                      ;9FC22C|D003    |;
                       JMP.W CODE_9FC2CE                    ;9FC22E|4CCEC2  |;
 
          CODE_9FC231:
                       LDA.B $A9                            ;9FC231|A5A9    |; Load button press into A
                       BIT.W #$4000                         ;9FC233|890040  |; Bitwise check if Y btn is pressed
                       BNE CODE_9FC277                      ;9FC236|D03F    |; Branch if Y btn is pressed
                       LDA.W $14E3,X                        ;9FC238|BDE314  |;
                       BNE CODE_9FC26C                      ;9FC23B|D02F    |;
                       LDA.B $A9                            ;9FC23D|A5A9    |;
                       BIT.W #$0040                         ;9FC23F|894000  |;
                       BNE CODE_9FC2BA                      ;9FC242|D076    |;
                       BIT.W #$8000                         ;9FC244|890080  |;
                       BNE CODE_9FC27B                      ;9FC247|D032    |;
                       LDA.W PStructPosition,X              ;9FC249|BD430F  |;
                       BEQ CODE_9FC287                      ;9FC24C|F039    |;
                       LDA.B $A9                            ;9FC24E|A5A9    |;
                       BIT.W #$0020                         ;9FC250|892000  |;
                       BNE CODE_9FC27F                      ;9FC253|D02A    |;
                       BIT.W #$0010                         ;9FC255|891000  |;
                       BNE CODE_9FC283                      ;9FC258|D029    |;
                       LDA.W $0D07                          ;9FC25A|AD070D  |;
                       CMP.B $E4                            ;9FC25D|C5E4    |;
                       BEQ CODE_9FC26C                      ;9FC25F|F00B    |;
                       LDA.B $A9                            ;9FC261|A5A9    |;
                       BIT.W #$0080                         ;9FC263|898000  |;
                       BNE CODE_9FC2B6                      ;9FC266|D04E    |;
                       JML.L CODE_9EA8A9                    ;9FC268|5CA9A89E|;
 
          CODE_9FC26C:
                       JMP.W CODE_9FC331                    ;9FC26C|4C31C3  |;
 
          CODE_9FC26F:
                       JML.L CODE_9FB30F                    ;9FC26F|5C0FB39F|;
 
          CODE_9FC273:
                       JML.L UNREACH_9FD733                 ;9FC273|5C33D79F|;
 
          CODE_9FC277:
                       JML.L CODE_9EA24C                    ;9FC277|5C4CA29E|;
 
          CODE_9FC27B:
                       JML.L CODE_9FCBB6                    ;9FC27B|5CB6CB9F|;
 
          CODE_9FC27F:
                       JML.L CODE_9FCD4D                    ;9FC27F|5C4DCD9F|;
 
          CODE_9FC283:
                       JML.L CODE_9FCD2F                    ;9FC283|5C2FCD9F|;
 
          CODE_9FC287:
                       LDA.W $0B05,X                        ;9FC287|BD050B  |;
                       BIT.W #$0001                         ;9FC28A|890100  |;
                       BNE CODE_9FC294                      ;9FC28D|D005    |;
                       AND.W #$0002                         ;9FC28F|290200  |;
                       BNE CODE_9FC298                      ;9FC292|D004    |;
 
          CODE_9FC294:
                       JML.L CODE_9EA8A9                    ;9FC294|5CA9A89E|;
 
          CODE_9FC298:
                       RTL                                  ;9FC298|6B      |;
 
       UNREACH_9FC299:
                       db $AD,$D6,$15,$D0,$FA,$A0,$00,$00   ;9FC299|        |;
                       db $BD,$03,$15,$F0,$03,$A0,$02,$00   ;9FC2A1|        |;
                       db $B9,$55,$1D,$10,$EA,$A5,$B5,$99   ;9FC2A9|        |;
                       db $55,$1D,$4C,$FE,$D2               ;9FC2B1|        |;
 
          CODE_9FC2B6:
                       JML.L CODE_9E81F9                    ;9FC2B6|5CF9819E|;
 
          CODE_9FC2BA:
                       LDY.W #$0000                         ;9FC2BA|A00000  |;
                       CPX.W #$000C                         ;9FC2BD|E00C00  |;
                       BMI CODE_9FC2C5                      ;9FC2C0|3003    |;
                       db $A0,$02,$00                       ;9FC2C2|        |;
 
          CODE_9FC2C5:
                       LDA.W $1C90,Y                        ;9FC2C5|B9901C  |;
                       BEQ CODE_9FC298                      ;9FC2C8|F0CE    |;
                       JML.L CODE_9FCD2A                    ;9FC2CA|5C2ACD9F|;
 
          CODE_9FC2CE:
                       LDA.W $14E3,X                        ;9FC2CE|BDE314  |;
                       BNE CODE_9FC26C                      ;9FC2D1|D099    |;
                       JSL.L CODE_9EC417                    ;9FC2D3|2217C49E|;
                       LDA.W PStructPosition,X              ;9FC2D7|BD430F  |;
                       BNE CODE_9FC2E1                      ;9FC2DA|D005    |;
                       LDA.W $1543,X                        ;9FC2DC|BD4315  |;
                       BNE CODE_9FC298                      ;9FC2DF|D0B7    |;
 
          CODE_9FC2E1:
                       LDA.W $15D8                          ;9FC2E1|ADD815  |;
                       BIT.W #$0004                         ;9FC2E4|890400  |;
                       BNE CODE_9FC311                      ;9FC2E7|D028    |;
                       BIT.W #$0008                         ;9FC2E9|890800  |;
                       BNE CODE_9FC315                      ;9FC2EC|D027    |;
                       LDA.W $0BA3                          ;9FC2EE|ADA30B  |;
                       CMP.B $E4                            ;9FC2F1|C5E4    |;
                       BEQ CODE_9FC371                      ;9FC2F3|F07C    |;
                       LDA.B $A9                            ;9FC2F5|A5A9    |;
                       BIT.W #$8000                         ;9FC2F7|890080  |;
                       BNE CODE_9FC322                      ;9FC2FA|D026    |;
                       BIT.W #$4000                         ;9FC2FC|890040  |;
                       BNE CODE_9FC319                      ;9FC2FF|D018    |;
                       LDA.W PStructPosition,X              ;9FC301|BD430F  |;
                       BEQ CODE_9FC32E                      ;9FC304|F028    |;
                       LDA.B $A9                            ;9FC306|A5A9    |;
                       BIT.W #$0080                         ;9FC308|898000  |;
                       BNE CODE_9FC32A                      ;9FC30B|D01D    |;
                       JML.L CODE_9EA8A9                    ;9FC30D|5CA9A89E|;
 
          CODE_9FC311:
                       JML.L CODE_9EE9A3                    ;9FC311|5CA3E99E|;
 
          CODE_9FC315:
                       JML.L CODE_9EE1C3                    ;9FC315|5CC3E19E|;
 
          CODE_9FC319:
                       LDA.W #$0014                         ;9FC319|A91400  |;
                       STA.B $A5                            ;9FC31C|85A5    |;
                       JML.L CODE_9E8C0E                    ;9FC31E|5C0E8C9E|;
 
          CODE_9FC322:
                       JML.L CODE_9EE6D2                    ;9FC322|5CD2E69E|;
 
          CODE_9FC326:
                       JML.L CODE_9FCBB6                    ;9FC326|5CB6CB9F|;
 
          CODE_9FC32A:
                       JML.L CODE_9EE17A                    ;9FC32A|5C7AE19E|;
 
          CODE_9FC32E:
                       JMP.W CODE_9FC287                    ;9FC32E|4C87C2  |;
 
          CODE_9FC331:
                       CPX.W $0AD9                          ;9FC331|ECD90A  |;
                       BEQ CODE_9FC371                      ;9FC334|F03B    |;
                       LDA.B $A9                            ;9FC336|A5A9    |;
                       BIT.W #$8000                         ;9FC338|890080  |;
                       BNE CODE_9FC326                      ;9FC33B|D0E9    |;
                       BIT.W #$0040                         ;9FC33D|894000  |;
                       BEQ CODE_9FC345                      ;9FC340|F003    |;
                       JMP.W CODE_9FC2BA                    ;9FC342|4CBAC2  |;
 
          CODE_9FC345:
                       BIT.W #$0080                         ;9FC345|898000  |;
                       BEQ CODE_9FC371                      ;9FC348|F027    |;
                       LDY.W $0D07                          ;9FC34A|AC070D  |;
                       BMI CODE_9FC371                      ;9FC34D|3022    |;
                       LDA.W $1283,Y                        ;9FC34F|B98312  |;
                       AND.W #$1000                         ;9FC352|290010  |;
                       ORA.W $14E3,Y                        ;9FC355|19E314  |;
                       BNE CODE_9FC371                      ;9FC358|D017    |;
                       LDA.W $19D4,Y                        ;9FC35A|B9D419  |;
                       BPL CODE_9FC371                      ;9FC35D|1012    |;
                       LDA.W $1503,Y                        ;9FC35F|B90315  |;
                       CMP.W $1503,X                        ;9FC362|DD0315  |;
                       BNE CODE_9FC371                      ;9FC365|D00A    |;
                       db $84,$A5,$EE,$AB,$0B,$22,$68,$CB   ;9FC367|        |;
                       db $9F,$6B                           ;9FC36F|        |;
 
          CODE_9FC371:
                       RTL                                  ;9FC371|6B      |;
 
          CODE_9FC372:
                       LDA.B $A5                            ;9FC372|A5A5    |;
                       PHA                                  ;9FC374|48      |;
                       LDA.B $A7                            ;9FC375|A5A7    |;
                       PHA                                  ;9FC377|48      |;
                       LDA.B zpCurntTeamLoopVal             ;9FC378|A591    |;
                       PHA                                  ;9FC37A|48      |;
                       LDA.B $93                            ;9FC37B|A593    |;
                       PHA                                  ;9FC37D|48      |;
                       LDA.B $95                            ;9FC37E|A595    |;
                       PHA                                  ;9FC380|48      |;
                       LDA.B $97                            ;9FC381|A597    |;
                       PHA                                  ;9FC383|48      |;
                       LDA.B $89                            ;9FC384|A589    |;
                       PHA                                  ;9FC386|48      |;
                       LDA.B $8B                            ;9FC387|A58B    |;
                       PHA                                  ;9FC389|48      |;
                       JSL.L CODE_9FC732                    ;9FC38A|2232C79F|;
                       LDA.B $89                            ;9FC38E|A589    |;
                       PHA                                  ;9FC390|48      |;
                       LDA.B $8B                            ;9FC391|A58B    |;
                       PHA                                  ;9FC393|48      |;
                       LDA.W #$0A2A                         ;9FC394|A92A0A  |;
                       STA.B $95                            ;9FC397|8595    |;
                       INC A                                ;9FC399|1A      |;
                       INC A                                ;9FC39A|1A      |;
                       STA.B $8D                            ;9FC39B|858D    |;
                       LDA.W #$0000                         ;9FC39D|A90000  |;
                       STA.B $97                            ;9FC3A0|8597    |;
                       STA.B $8F                            ;9FC3A2|858F    |;
                       LDA.W #$0004                         ;9FC3A4|A90400  |;
                       STA.B [$95]                          ;9FC3A7|8795    |;
                       LDA.B $89                            ;9FC3A9|A589    |;
                       CLC                                  ;9FC3AB|18      |;
                       ADC.B [$89]                          ;9FC3AC|6789    |;
                       STA.B $89                            ;9FC3AE|8589    |;
                       LDA.B [$89]                          ;9FC3B0|A789    |;
                       AND.W #$00FF                         ;9FC3B2|29FF00  |;
                       STA.B $A5                            ;9FC3B5|85A5    |;
                       JSL.L CODE_9FC5BE                    ;9FC3B7|22BEC59F|;
                       LDA.W #$009C                         ;9FC3BB|A99C00  |;
                       STA.B $8F                            ;9FC3BE|858F    |;
                       LDA.W #$F8D7                         ;9FC3C0|A9D7F8  |;
                       STA.B $8D                            ;9FC3C3|858D    |;
                       JSL.L CODE_9ECFA5                    ;9FC3C5|22A5CF9E|;
                       PLA                                  ;9FC3C9|68      |;
                       STA.B $8F                            ;9FC3CA|858F    |;
                       PLA                                  ;9FC3CC|68      |;
                       STA.B $8D                            ;9FC3CD|858D    |;
                       JSL.L CODE_9ECFA5                    ;9FC3CF|22A5CF9E|;
                       LDA.W #$0000                         ;9FC3D3|A90000  |;
                       STA.B $8F                            ;9FC3D6|858F    |;
                       LDA.W #$0A2A                         ;9FC3D8|A92A0A  |;
                       STA.B $8D                            ;9FC3DB|858D    |;
                       PLA                                  ;9FC3DD|68      |;
                       STA.B $8B                            ;9FC3DE|858B    |;
                       PLA                                  ;9FC3E0|68      |;
                       STA.B $89                            ;9FC3E1|8589    |;
                       PLA                                  ;9FC3E3|68      |;
                       STA.B $97                            ;9FC3E4|8597    |;
                       PLA                                  ;9FC3E6|68      |;
                       STA.B $95                            ;9FC3E7|8595    |;
                       PLA                                  ;9FC3E9|68      |;
                       STA.B $93                            ;9FC3EA|8593    |;
                       PLA                                  ;9FC3EC|68      |;
                       STA.B zpCurntTeamLoopVal             ;9FC3ED|8591    |;
                       PLA                                  ;9FC3EF|68      |;
                       STA.B $A7                            ;9FC3F0|85A7    |;
                       PLA                                  ;9FC3F2|68      |;
                       STA.B $A5                            ;9FC3F3|85A5    |;
                       LDX.B $95                            ;9FC3F5|A695    |;
                       RTL                                  ;9FC3F7|6B      |;
 
          CODE_9FC3F8:
                       LDA.B $A5                            ;9FC3F8|A5A5    |;
                       PHA                                  ;9FC3FA|48      |;
                       LDA.B $A7                            ;9FC3FB|A5A7    |;
                       PHA                                  ;9FC3FD|48      |;
                       LDA.B zpCurntTeamLoopVal             ;9FC3FE|A591    |;
                       PHA                                  ;9FC400|48      |;
                       LDA.B $93                            ;9FC401|A593    |;
                       PHA                                  ;9FC403|48      |;
                       STZ.B zpCurntTeamLoopVal             ;9FC404|6491    |;
                       LDA.W $1636                          ;9FC406|AD3616  |;
                       STA.B $A5                            ;9FC409|85A5    |;
                       BPL CODE_9FC416                      ;9FC40B|1009    |;
                       AND.W #$00FF                         ;9FC40D|29FF00  |;
                       STA.B $A5                            ;9FC410|85A5    |;
                       INC.B zpCurntTeamLoopVal             ;9FC412|E691    |;
                       INC.B zpCurntTeamLoopVal             ;9FC414|E691    |;
 
          CODE_9FC416:
                       JSL.L CODE_9FC372                    ;9FC416|2272C39F|;
                       PLA                                  ;9FC41A|68      |;
                       STA.B $93                            ;9FC41B|8593    |;
                       PLA                                  ;9FC41D|68      |;
                       STA.B zpCurntTeamLoopVal             ;9FC41E|8591    |;
                       PLA                                  ;9FC420|68      |;
                       STA.B $A7                            ;9FC421|85A7    |;
                       PLA                                  ;9FC423|68      |;
                       STA.B $A5                            ;9FC424|85A5    |;
                       RTL                                  ;9FC426|6B      |;
 
          CODE_9FC427:
                       LDA.B $A5                            ;9FC427|A5A5    |;
                       PHA                                  ;9FC429|48      |;
                       LDA.B $A7                            ;9FC42A|A5A7    |;
                       PHA                                  ;9FC42C|48      |;
                       LDA.B zpCurntTeamLoopVal             ;9FC42D|A591    |;
                       PHA                                  ;9FC42F|48      |;
                       LDA.B $93                            ;9FC430|A593    |;
                       PHA                                  ;9FC432|48      |;
                       LDA.B $89                            ;9FC433|A589    |;
                       PHA                                  ;9FC435|48      |;
                       LDA.B $8B                            ;9FC436|A58B    |;
                       PHA                                  ;9FC438|48      |;
                       JSL.L CODE_9FC732                    ;9FC439|2232C79F|;
                       LDA.W #$0000                         ;9FC43D|A90000  |;
                       STA.B $8F                            ;9FC440|858F    |;
                       LDA.W #$0A2A                         ;9FC442|A92A0A  |;
                       STA.B $8D                            ;9FC445|858D    |;
                       LDA.W #$0002                         ;9FC447|A90200  |;
                       STA.B [$8D]                          ;9FC44A|878D    |;
                       INC.B $8D                            ;9FC44C|E68D    |;
                       INC.B $8D                            ;9FC44E|E68D    |;
                       LDA.B [$89]                          ;9FC450|A789    |;
                       STA.B $A5                            ;9FC452|85A5    |;
                       CLC                                  ;9FC454|18      |;
                       ADC.B $89                            ;9FC455|6589    |;
                       STA.B zpCurntTeamLoopVal             ;9FC457|8591    |;
                       LDA.B $8B                            ;9FC459|A58B    |;
                       STA.B $93                            ;9FC45B|8593    |;
                       INC.B $89                            ;9FC45D|E689    |;
                       INC.B $89                            ;9FC45F|E689    |;
                       LDA.B [$89]                          ;9FC461|A789    |;
                       INC.B $89                            ;9FC463|E689    |;
                       STA.B [$8D]                          ;9FC465|878D    |;
                       INC.B $8D                            ;9FC467|E68D    |;
                       LDA.W #$002E                         ;9FC469|A92E00  |;
                       STA.B [$8D]                          ;9FC46C|878D    |;
                       INC.B $8D                            ;9FC46E|E68D    |;
 
          CODE_9FC470:
                       LDA.B [$89]                          ;9FC470|A789    |;
                       INC.B $89                            ;9FC472|E689    |;
                       AND.W #$00FF                         ;9FC474|29FF00  |;
                       CMP.W #$0020                         ;9FC477|C92000  |;
                       BNE CODE_9FC470                      ;9FC47A|D0F4    |;
 
          CODE_9FC47C:
                       LDA.B [$89]                          ;9FC47C|A789    |;
                       INC.B $89                            ;9FC47E|E689    |;
                       STA.B [$8D]                          ;9FC480|878D    |;
                       INC.B $8D                            ;9FC482|E68D    |;
                       LDA.B $89                            ;9FC484|A589    |;
                       CMP.B zpCurntTeamLoopVal             ;9FC486|C591    |;
                       BNE CODE_9FC47C                      ;9FC488|D0F2    |;
                       JSL.L CODE_9ECE06                    ;9FC48A|2206CE9E|;
                       PLA                                  ;9FC48E|68      |;
                       STA.B $8B                            ;9FC48F|858B    |;
                       PLA                                  ;9FC491|68      |;
                       STA.B $89                            ;9FC492|8589    |;
                       PLA                                  ;9FC494|68      |;
                       STA.B $93                            ;9FC495|8593    |;
                       PLA                                  ;9FC497|68      |;
                       STA.B zpCurntTeamLoopVal             ;9FC498|8591    |;
                       PLA                                  ;9FC49A|68      |;
                       STA.B $A7                            ;9FC49B|85A7    |;
                       PLA                                  ;9FC49D|68      |;
                       STA.B $A5                            ;9FC49E|85A5    |;
                       RTL                                  ;9FC4A0|6B      |;
                       db $A5,$A5,$48,$A5,$A7,$48,$A5,$91   ;9FC4A1|        |;
                       db $48,$A5,$93,$48,$64,$91,$AD,$36   ;9FC4A9|        |;
                       db $16,$85,$A5,$10,$09,$29,$FF,$00   ;9FC4B1|        |;
                       db $85,$A5,$E6,$91,$E6,$91,$22,$D0   ;9FC4B9|        |;
                       db $C4,$9F,$68,$85,$93,$68,$85,$91   ;9FC4C1|        |;
                       db $68,$85,$A7,$68,$85,$A5,$6B       ;9FC4C9|        |;
 
          CODE_9FC4D0:
                       LDA.B $A5                            ;9FC4D0|A5A5    |;
                       PHA                                  ;9FC4D2|48      |;
                       LDA.B $A7                            ;9FC4D3|A5A7    |;
                       PHA                                  ;9FC4D5|48      |;
                       LDA.B zpCurntTeamLoopVal             ;9FC4D6|A591    |;
                       PHA                                  ;9FC4D8|48      |;
                       LDA.B $93                            ;9FC4D9|A593    |;
                       PHA                                  ;9FC4DB|48      |;
                       LDA.B $89                            ;9FC4DC|A589    |;
                       PHA                                  ;9FC4DE|48      |;
                       LDA.B $8B                            ;9FC4DF|A58B    |;
                       PHA                                  ;9FC4E1|48      |;
                       JSL.L CODE_9FC732                    ;9FC4E2|2232C79F|;
                       LDA.W #$0000                         ;9FC4E6|A90000  |;
                       STA.B $8F                            ;9FC4E9|858F    |;
                       LDA.W #$0A2A                         ;9FC4EB|A92A0A  |;
                       STA.B $8D                            ;9FC4EE|858D    |;
                       LDA.W #$0002                         ;9FC4F0|A90200  |;
                       STA.B [$8D]                          ;9FC4F3|878D    |;
                       INC.B $8D                            ;9FC4F5|E68D    |;
                       INC.B $8D                            ;9FC4F7|E68D    |;
                       LDA.B $89                            ;9FC4F9|A589    |;
                       PHA                                  ;9FC4FB|48      |;
                       LDA.B $8B                            ;9FC4FC|A58B    |;
                       PHA                                  ;9FC4FE|48      |;
                       LDA.B $89                            ;9FC4FF|A589    |;
                       CLC                                  ;9FC501|18      |;
                       ADC.B [$89]                          ;9FC502|6789    |;
                       STA.B $89                            ;9FC504|8589    |;
                       LDA.B [$89]                          ;9FC506|A789    |;
                       AND.W #$00FF                         ;9FC508|29FF00  |;
                       STA.B $A5                            ;9FC50B|85A5    |;
                       JSL.L CODE_9FC5BE                    ;9FC50D|22BEC59F|;
                       LDA.W #$0020                         ;9FC511|A92000  |;
                       STA.B [$8D]                          ;9FC514|878D    |;
                       INC.B $8D                            ;9FC516|E68D    |;
                       PLA                                  ;9FC518|68      |;
                       STA.B $8B                            ;9FC519|858B    |;
                       PLA                                  ;9FC51B|68      |;
                       STA.B $89                            ;9FC51C|8589    |;
                       LDA.B [$89]                          ;9FC51E|A789    |;
                       STA.B $A5                            ;9FC520|85A5    |;
                       CLC                                  ;9FC522|18      |;
                       ADC.B $89                            ;9FC523|6589    |;
                       STA.B zpCurntTeamLoopVal             ;9FC525|8591    |;
                       LDA.B $8B                            ;9FC527|A58B    |;
                       STA.B $93                            ;9FC529|8593    |;
                       INC.B $89                            ;9FC52B|E689    |;
                       INC.B $89                            ;9FC52D|E689    |;
                       LDA.B [$89]                          ;9FC52F|A789    |;
                       INC.B $89                            ;9FC531|E689    |;
                       STA.B [$8D]                          ;9FC533|878D    |;
                       INC.B $8D                            ;9FC535|E68D    |;
                       LDA.W #$002E                         ;9FC537|A92E00  |;
                       STA.B [$8D]                          ;9FC53A|878D    |;
                       INC.B $8D                            ;9FC53C|E68D    |;
                       LDA.W #$0020                         ;9FC53E|A92000  |;
                       STA.B [$8D]                          ;9FC541|878D    |;
                       INC.B $8D                            ;9FC543|E68D    |;
 
          CODE_9FC545:
                       LDA.B [$89]                          ;9FC545|A789    |;
                       INC.B $89                            ;9FC547|E689    |;
                       AND.W #$00FF                         ;9FC549|29FF00  |;
                       CMP.W #$0020                         ;9FC54C|C92000  |;
                       BNE CODE_9FC545                      ;9FC54F|D0F4    |;
 
          CODE_9FC551:
                       LDA.B [$89]                          ;9FC551|A789    |;
                       INC.B $89                            ;9FC553|E689    |;
                       STA.B [$8D]                          ;9FC555|878D    |;
                       INC.B $8D                            ;9FC557|E68D    |;
                       LDA.B $89                            ;9FC559|A589    |;
                       CMP.B zpCurntTeamLoopVal             ;9FC55B|C591    |;
                       BNE CODE_9FC551                      ;9FC55D|D0F2    |;
                       JSL.L CODE_9ECE06                    ;9FC55F|2206CE9E|;
                       PLA                                  ;9FC563|68      |;
                       STA.B $8B                            ;9FC564|858B    |;
                       PLA                                  ;9FC566|68      |;
                       STA.B $89                            ;9FC567|8589    |;
                       PLA                                  ;9FC569|68      |;
                       STA.B $93                            ;9FC56A|8593    |;
                       PLA                                  ;9FC56C|68      |;
                       STA.B zpCurntTeamLoopVal             ;9FC56D|8591    |;
                       PLA                                  ;9FC56F|68      |;
                       STA.B $A7                            ;9FC570|85A7    |;
                       PLA                                  ;9FC572|68      |;
                       STA.B $A5                            ;9FC573|85A5    |;
                       RTL                                  ;9FC575|6B      |;
                       db $A5,$A5,$48,$A5,$A7,$48,$A5,$91   ;9FC576|        |;
                       db $48,$A5,$93,$48,$64,$91,$AD,$36   ;9FC57E|        |;
                       db $16,$85,$A5,$10,$0A,$29,$FF,$00   ;9FC586|        |;
                       db $85,$A5,$A9,$02,$00,$85,$91,$22   ;9FC58E|        |;
                       db $27,$C4,$9F,$68,$85,$93,$68,$85   ;9FC596|        |;
                       db $91,$68,$85,$A7,$68,$85,$A5,$6B   ;9FC59E|        |;
                       db $22,$E1,$CD,$9E,$A9,$0B,$00,$85   ;9FC5A6|        |;
                       db $A5,$A9,$02,$00,$85,$A9,$AF,$D0   ;9FC5AE|        |;
                       db $35,$7E,$85,$AD,$5C,$9C,$BD,$9F   ;9FC5B6|        |;
 
          CODE_9FC5BE:
                       LDA.W #$2020                         ;9FC5BE|A92020  |;
                       STA.B $C5                            ;9FC5C1|85C5    |;
                       LDA.B $A5                            ;9FC5C3|A5A5    |;
                       AND.W #$00FF                         ;9FC5C5|29FF00  |;
                       CMP.W #$000A                         ;9FC5C8|C90A00  |;
                       BCC CODE_9FC5D7                      ;9FC5CB|900A    |;
                       LSR A                                ;9FC5CD|4A      |;
                       LSR A                                ;9FC5CE|4A      |;
                       LSR A                                ;9FC5CF|4A      |;
                       LSR A                                ;9FC5D0|4A      |;
                       CLC                                  ;9FC5D1|18      |;
                       ADC.W #$0030                         ;9FC5D2|693000  |;
                       STA.B $C5                            ;9FC5D5|85C5    |;
 
          CODE_9FC5D7:
                       LDA.B $A5                            ;9FC5D7|A5A5    |;
                       AND.W #$000F                         ;9FC5D9|290F00  |;
                       CLC                                  ;9FC5DC|18      |;
                       ADC.W #$0030                         ;9FC5DD|693000  |;
                       STA.B $C6                            ;9FC5E0|85C6    |;
                       LDA.B $C5                            ;9FC5E2|A5C5    |;
                       STA.B [$8D]                          ;9FC5E4|878D    |;
                       INC.B $8D                            ;9FC5E6|E68D    |;
                       INC.B $8D                            ;9FC5E8|E68D    |;
                       RTL                                  ;9FC5EA|6B      |;
 
          CODE_9FC5EB:
                       PHX                                  ;9FC5EB|DA      |;
                       LDA.W #$0000                         ;9FC5EC|A90000  |;
                       STA.B $8F                            ;9FC5EF|858F    |;
                       LDA.W #$0A48                         ;9FC5F1|A9480A  |;
                       STA.B $8D                            ;9FC5F4|858D    |;
                       LDA.B $A5                            ;9FC5F6|A5A5    |;
 
          CODE_9FC5F8:
                       STA.B $08                            ;9FC5F8|8508    |;
                       LDA.W #$000A                         ;9FC5FA|A90A00  |;
                       STA.B $04                            ;9FC5FD|8504    |;
                       JSL.L CODE_8092FD                    ;9FC5FF|22FD9280|;
                       DEC.B $8D                            ;9FC603|C68D    |;
                       SEP #$20                             ;9FC605|E220    |;
                       LDA.W $4216                          ;9FC607|AD1642  |;
                       CLC                                  ;9FC60A|18      |;
                       ADC.B #$30                           ;9FC60B|6930    |;
                       STA.B [$8D]                          ;9FC60D|878D    |;
                       REP #$30                             ;9FC60F|C230    |;
                       LDA.B $00                            ;9FC611|A500    |;
                       BNE CODE_9FC5F8                      ;9FC613|D0E3    |;
                       DEC.B $8D                            ;9FC615|C68D    |;
                       DEC.B $8D                            ;9FC617|C68D    |;
                       LDA.W #$0A48                         ;9FC619|A9480A  |;
                       SEC                                  ;9FC61C|38      |;
                       SBC.B $8D                            ;9FC61D|E58D    |;
                       STA.B [$8D]                          ;9FC61F|878D    |;
                       PLX                                  ;9FC621|FA      |;
                       RTL                                  ;9FC622|6B      |;
 
          CODE_9FC623:
                       LDA.B $A5                            ;9FC623|A5A5    |;
                       PHA                                  ;9FC625|48      |;
                       LDA.B $A9                            ;9FC626|A5A9    |;
                       CMP.W #$0002                         ;9FC628|C90200  |;
                       BNE CODE_9FC63B                      ;9FC62B|D00E    |;
                       LDA.B $A5                            ;9FC62D|A5A5    |;
                       CMP.W #$0064                         ;9FC62F|C96400  |;
                       BCC CODE_9FC639                      ;9FC632|9005    |;
                       db $E9,$64,$00,$80,$F6               ;9FC634|        |;
 
          CODE_9FC639:
                       STA.B $A5                            ;9FC639|85A5    |;
 
          CODE_9FC63B:
                       LDA.W #$0000                         ;9FC63B|A90000  |;
                       STA.B $8F                            ;9FC63E|858F    |;
                       LDA.W #$0A8E                         ;9FC640|A98E0A  |;
                       STA.B $8D                            ;9FC643|858D    |;
                       LDA.B $A9                            ;9FC645|A5A9    |;
                       INC A                                ;9FC647|1A      |;
                       INC A                                ;9FC648|1A      |;
                       STA.W $0A8E                          ;9FC649|8D8E0A  |;
                       TAY                                  ;9FC64C|A8      |;
                       LDA.W #$2020                         ;9FC64D|A92020  |;
                       STA.W $0A90                          ;9FC650|8D900A  |;
                       STA.W $0A92                          ;9FC653|8D920A  |;
                       STA.W $0A94                          ;9FC656|8D940A  |;
                       STA.W $0A96                          ;9FC659|8D960A  |;
                       PHX                                  ;9FC65C|DA      |;
                       LDA.B $A5                            ;9FC65D|A5A5    |;
 
          CODE_9FC65F:
                       STA.B $08                            ;9FC65F|8508    |;
                       LDA.W #$000A                         ;9FC661|A90A00  |;
                       STA.B $04                            ;9FC664|8504    |;
                       DEY                                  ;9FC666|88      |;
                       JSL.L CODE_8092FD                    ;9FC667|22FD9280|;
                       LDA.W $4216                          ;9FC66B|AD1642  |;
                       SEP #$20                             ;9FC66E|E220    |;
                       CLC                                  ;9FC670|18      |;
                       ADC.B #$30                           ;9FC671|6930    |;
                       STA.W $0A8E,Y                        ;9FC673|998E0A  |;
                       REP #$20                             ;9FC676|C220    |;
                       LDA.B $00                            ;9FC678|A500    |;
                       BNE CODE_9FC65F                      ;9FC67A|D0E3    |;
                       PLX                                  ;9FC67C|FA      |;
                       PLA                                  ;9FC67D|68      |;
                       STA.B $A5                            ;9FC67E|85A5    |;
                       LDA.B $00                            ;9FC680|A500    |;
                       RTL                                  ;9FC682|6B      |;
 
          CODE_9FC683:
                       JSL.L CODE_9F9B1F                    ;9FC683|221F9B9F|;
                       LDA.W $1D81                          ;9FC687|AD811D  |;
                       BEQ CODE_9FC693                      ;9FC68A|F007    |;
                       LDA.W #$0019                         ;9FC68C|A91900  |;
                       STA.B $A5                            ;9FC68F|85A5    |;
                       BRA CODE_9FC6A6                      ;9FC691|8013    |;
 
          CODE_9FC693:
                       LDA.W period                         ;9FC693|AD3016  |;
                       CMP.W #$0003                         ;9FC696|C90300  |;
                       BMI CODE_9FC6A6                      ;9FC699|300B    |;
                       db $AF,$BC,$34,$7E,$D0,$05,$A9       ;9FC69B|        |;
                       dw $012C                             ;9FC6A2|        |; OT Period Length
                       db $85,$A5                           ;9FC6A4|        |;
 
          CODE_9FC6A6:
                       LDA.B $A5                            ;9FC6A6|A5A5    |;
                       STA.W clock_remaining_time           ;9FC6A8|8D3216  |;
                       STA.W $1C82                          ;9FC6AB|8D821C  |;
                       STA.W $15D6                          ;9FC6AE|8DD615  |;
                       RTL                                  ;9FC6B1|6B      |;
 
   Set_Default_Goalie:
                       LDA.W Selected_Goalie                ;9FC6B2|ADAA17  |; Called When Ron Barr Intro Screen Ends, Sets Starting Home + Away Goalie
                       PHA                                  ;9FC6B5|48      |; 0000 = 1st Goalie 0100 = 2nd Goalie 0200 = 3rd goalie FFFF = No Goalie
                       LDA.W Selected_Goalie_Awy            ;9FC6B6|ADAC17  |; 17AA Home 17AC Away
                       PHA                                  ;9FC6B9|48      |;
                       LDX.W #$0000                         ;9FC6BA|A20000  |;
 
          CODE_9FC6BD:
                       STZ.W $1742,X                        ;9FC6BD|9E4217  |;
                       INX                                  ;9FC6C0|E8      |;
                       INX                                  ;9FC6C1|E8      |;
                       CPX.W #$01AC                         ;9FC6C2|E0AC01  |;
                       BNE CODE_9FC6BD                      ;9FC6C5|D0F6    |;
                       PLA                                  ;9FC6C7|68      |;
                       STA.W $17AC                          ;9FC6C8|8DAC17  |;
                       PLA                                  ;9FC6CB|68      |;
                       STA.W $17AA                          ;9FC6CC|8DAA17  |;
                       LDA.W #$FFFF                         ;9FC6CF|A9FFFF  |;
                       STA.W $18BA                          ;9FC6D2|8DBA18  |;
                       STA.W $18D4                          ;9FC6D5|8DD418  |;
 
          CODE_9FC6D8:
                       STZ.W $1766                          ;9FC6D8|9C6617  |;
                       LDA.W #$000C                         ;9FC6DB|A90C00  |;
                       STA.W $1768                          ;9FC6DE|8D6817  |;
                       LDA.W $1C98                          ;9FC6E1|AD981C  |;
                       STA.W $1CE0                          ;9FC6E4|8DE01C  |;
                       ASL A                                ;9FC6E7|0A      |;
                       ASL A                                ;9FC6E8|0A      |;
                       TAX                                  ;9FC6E9|AA      |;
                       LDA.L Team_PTR,X                     ;9FC6EA|BFE7A59C|;
                       STA.W $1CDC                          ;9FC6EE|8DDC1C  |;
                       LDA.W $1C9A                          ;9FC6F1|AD9A1C  |;
                       STA.W $1CE2                          ;9FC6F4|8DE21C  |;
                       ASL A                                ;9FC6F7|0A      |;
                       ASL A                                ;9FC6F8|0A      |;
                       TAX                                  ;9FC6F9|AA      |;
                       LDA.L Team_PTR,X                     ;9FC6FA|BFE7A59C|;
                       STA.W $1CDE                          ;9FC6FE|8DDE1C  |;
                       RTL                                  ;9FC701|6B      |;
 
          CODE_9FC702:
                       STZ.B zpCurntTeamLoopVal             ;9FC702|6491    |;
                       JSL.L CODE_9FC70D                    ;9FC704|220DC79F|;
                       LDA.W #$0002                         ;9FC708|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9FC70B|8591    |;
 
          CODE_9FC70D:
                       LDY.B zpCurntTeamLoopVal             ;9FC70D|A491    |;
                       LDA.W #$0006                         ;9FC70F|A90600  |;
                       STA.W $17A6,Y                        ;9FC712|99A617  |;
                       LDA.W #$0032                         ;9FC715|A93200  |;
                       STA.B $A5                            ;9FC718|85A5    |;
 
          CODE_9FC71A:
                       LDA.B zpCurntTeamLoopVal             ;9FC71A|A591    |;
                       BEQ CODE_9FC721                      ;9FC71C|F003    |;
                       LDA.W #$0034                         ;9FC71E|A93400  |;
 
          CODE_9FC721:
                       CLC                                  ;9FC721|18      |;
                       ADC.B $A5                            ;9FC722|65A5    |;
                       TAY                                  ;9FC724|A8      |;
                       LDA.W #$FFFE                         ;9FC725|A9FEFF  |;
                       STA.W $1852,Y                        ;9FC728|995218  |;
                       DEC.B $A5                            ;9FC72B|C6A5    |;
                       DEC.B $A5                            ;9FC72D|C6A5    |;
                       BPL CODE_9FC71A                      ;9FC72F|10E9    |;
                       RTL                                  ;9FC731|6B      |;
 
          CODE_9FC732:
                       LDA.W #$009C                         ;9FC732|A99C00  |;
                       STA.B $8B                            ;9FC735|858B    |;
                       LDY.B zpCurntTeamLoopVal             ;9FC737|A491    |;
                       LDA.W $1CDC,Y                        ;9FC739|B9DC1C  |;
                       STA.B $89                            ;9FC73C|8589    |;
                       LDY.W #$0000                         ;9FC73E|A00000  |;
                       CLC                                  ;9FC741|18      |;
                       ADC.B [$89]                          ;9FC742|6789    |; Loads Team Header During Game Setup Screen + Edit Lines
                       STA.B $89                            ;9FC744|8589    |;
                       BRA CODE_9FC752                      ;9FC746|800A    |;
 
          CODE_9FC748:
                       LDA.B $89                            ;9FC748|A589    |;
                       CLC                                  ;9FC74A|18      |;
                       ADC.B [$89]                          ;9FC74B|6789    |;
                       ADC.W #$0008                         ;9FC74D|690800  |;
                       STA.B $89                            ;9FC750|8589    |;
 
          CODE_9FC752:
                       DEC.B $A5                            ;9FC752|C6A5    |;
                       BPL CODE_9FC748                      ;9FC754|10F2    |;
                       RTL                                  ;9FC756|6B      |;
 
          CODE_9FC757:
                       LDA.W $1503,X                        ;9FC757|BD0315  |;
                       BEQ CODE_9FC764                      ;9FC75A|F008    |;
                       STZ.B $8D                            ;9FC75C|648D    |;
                       LDA.W #$0002                         ;9FC75E|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9FC761|8591    |;
                       RTL                                  ;9FC763|6B      |;
 
          CODE_9FC764:
                       LDA.W #$0002                         ;9FC764|A90200  |;
                       STA.B $8D                            ;9FC767|858D    |;
                       STZ.B zpCurntTeamLoopVal             ;9FC769|6491    |;
                       RTL                                  ;9FC76B|6B      |;
 
          CODE_9FC76C:
                       STZ.B zpCurntTeamLoopVal             ;9FC76C|6491    |;
                       LDA.W #$0001                         ;9FC76E|A90100  |;
                       STA.B $93                            ;9FC771|8593    |;
                       LDX.W $0AC6                          ;9FC773|AEC60A  |;
                       BPL CODE_9FC792                      ;9FC776|101A    |;
                       TXA                                  ;9FC778|8A      |;
                       EOR.W #$FFFF                         ;9FC779|49FFFF  |;
                       INC A                                ;9FC77C|1A      |;
                       STA.B $93                            ;9FC77D|8593    |;
                       LDX.W #$0000                         ;9FC77F|A20000  |;
                       LDA.W $1C84,X                        ;9FC782|BD841C  |;
                       CMP.B $93                            ;9FC785|C593    |;
                       BEQ CODE_9FC792                      ;9FC787|F009    |;
                       db $E8,$E8,$E0,$0A,$00,$90,$F2,$80   ;9FC789|        |;
                       db $0C                               ;9FC791|        |;
 
          CODE_9FC792:
                       LDA.W $1C84,X                        ;9FC792|BD841C  |;
                       CMP.W #$0001                         ;9FC795|C90100  |;
                       BEQ CODE_9FC79E                      ;9FC798|F004    |;
                       INC.B zpCurntTeamLoopVal             ;9FC79A|E691    |;
                       INC.B zpCurntTeamLoopVal             ;9FC79C|E691    |;
 
          CODE_9FC79E:
                       RTL                                  ;9FC79E|6B      |;
 
          CODE_9FC79F:
                       LDA.W #$FFFF                         ;9FC79F|A9FFFF  |;
                       STA.L $7E35D6                        ;9FC7A2|8FD6357E|;
                       STZ.B $B1                            ;9FC7A6|64B1    |;
                       STZ.B $B3                            ;9FC7A8|64B3    |;
                       LDA.W $1C98                          ;9FC7AA|AD981C  |;
                       STA.B $A5                            ;9FC7AD|85A5    |;
                       JSR.W CODE_9FC7EC                    ;9FC7AF|20ECC7  |;
                       LDA.W $1C9A                          ;9FC7B2|AD9A1C  |;
                       STA.B $A5                            ;9FC7B5|85A5    |;
                       JSR.W CODE_9FC7EC                    ;9FC7B7|20ECC7  |;
                       LDX.W #$0000                         ;9FC7BA|A20000  |;
 
          CODE_9FC7BD:
                       JSR.W CODE_9FC7D7                    ;9FC7BD|20D7C7  |;
                       LDA.B $A5                            ;9FC7C0|A5A5    |;
                       STA.L $7E3528,X                      ;9FC7C2|9F28357E|;
                       JSR.W CODE_9FC7D7                    ;9FC7C6|20D7C7  |;
                       LDA.B $A5                            ;9FC7C9|A5A5    |;
                       STA.L $7E3538,X                      ;9FC7CB|9F38357E|;
                       INX                                  ;9FC7CF|E8      |;
                       INX                                  ;9FC7D0|E8      |;
                       CPX.W #$0010                         ;9FC7D1|E01000  |;
                       BNE CODE_9FC7BD                      ;9FC7D4|D0E7    |;
                       RTL                                  ;9FC7D6|6B      |;
 
          CODE_9FC7D7:
                       LDA.W #$001A                         ;9FC7D7|A91A00  |;
                       STA.B $A5                            ;9FC7DA|85A5    |;
                       JSL.L CODE_9BB39B                    ;9FC7DC|229BB39B|;
                       JSR.W CODE_9FC7EC                    ;9FC7E0|20ECC7  |;
                       LDA.W $1EAF                          ;9FC7E3|ADAF1E  |;
                       CMP.W #$0000                         ;9FC7E6|C90000  |;
                       BNE CODE_9FC7D7                      ;9FC7E9|D0EC    |;
                       RTS                                  ;9FC7EB|60      |;
 
          CODE_9FC7EC:
                       STZ.W $1EAF                          ;9FC7EC|9CAF1E  |;
                       LDA.B $A5                            ;9FC7EF|A5A5    |;
                       SEC                                  ;9FC7F1|38      |;
                       SBC.W #$0010                         ;9FC7F2|E91000  |;
                       BMI CODE_9FC80A                      ;9FC7F5|3013    |;
                       JSR.W CODE_9FC822                    ;9FC7F7|2022C8  |;
                       LDA.B $B3                            ;9FC7FA|A5B3    |;
                       BIT.W $1EB3                          ;9FC7FC|2CB31E  |;
                       BEQ CODE_9FC804                      ;9FC7FF|F003    |;
                       INC.W $1EAF                          ;9FC801|EEAF1E  |;
 
          CODE_9FC804:
                       ORA.W $1EB3                          ;9FC804|0DB31E  |;
                       STA.B $B3                            ;9FC807|85B3    |;
                       RTS                                  ;9FC809|60      |;
 
          CODE_9FC80A:
                       LDA.B $A5                            ;9FC80A|A5A5    |;
                       AND.W #$000F                         ;9FC80C|290F00  |;
                       JSR.W CODE_9FC822                    ;9FC80F|2022C8  |;
                       LDA.B $B1                            ;9FC812|A5B1    |;
                       BIT.W $1EB3                          ;9FC814|2CB31E  |;
                       BEQ CODE_9FC81C                      ;9FC817|F003    |;
                       INC.W $1EAF                          ;9FC819|EEAF1E  |;
 
          CODE_9FC81C:
                       ORA.W $1EB3                          ;9FC81C|0DB31E  |;
                       STA.B $B1                            ;9FC81F|85B1    |;
                       RTS                                  ;9FC821|60      |;
 
          CODE_9FC822:
                       TAY                                  ;9FC822|A8      |;
                       LDA.W #$0001                         ;9FC823|A90100  |;
 
          CODE_9FC826:
                       CPY.W #$0000                         ;9FC826|C00000  |;
                       BEQ CODE_9FC82F                      ;9FC829|F004    |;
                       ASL A                                ;9FC82B|0A      |;
                       DEY                                  ;9FC82C|88      |;
                       BRA CODE_9FC826                      ;9FC82D|80F7    |;
 
          CODE_9FC82F:
                       STA.W $1EB3                          ;9FC82F|8DB31E  |;
                       RTS                                  ;9FC832|60      |;
 
          CODE_9FC833:
                       LDA.L $7E35D4                        ;9FC833|AFD4357E|;
                       CMP.W #$0002                         ;9FC837|C90200  |;
                       BCS CODE_9FC87B                      ;9FC83A|B03F    |;
                       JSL.L CODE_9D98B5                    ;9FC83C|22B5989D|;
                       LDA.B $A9                            ;9FC840|A5A9    |;
                       ASL A                                ;9FC842|0A      |;
                       STA.B $89                            ;9FC843|8589    |;
 
          CODE_9FC845:
                       LDA.B $A9                            ;9FC845|A5A9    |;
                       CMP.L $7E35D6                        ;9FC847|CFD6357E|;
                       BEQ CODE_9FC873                      ;9FC84B|F026    |;
                       LDX.B $89                            ;9FC84D|A689    |;
                       LDA.L $7E3598,X                      ;9FC84F|BF98357E|;
                       BIT.W #$0004                         ;9FC853|890400  |;
                       BNE CODE_9FC873                      ;9FC856|D01B    |;
                       LDA.W #$0000                         ;9FC858|A90000  |;
                       STA.L $7E3568,X                      ;9FC85B|9F68357E|;
                       LDA.W #$0003                         ;9FC85F|A90300  |;
                       JSL.L CODE_9BB385                    ;9FC862|2285B39B|;
                       INC A                                ;9FC866|1A      |;
                       STA.B $A5                            ;9FC867|85A5    |;
                       BRA CODE_9FC86F                      ;9FC869|8004    |;
 
          CODE_9FC86B:
                       JSL.L CODE_9F9EB7                    ;9FC86B|22B79E9F|;
 
          CODE_9FC86F:
                       DEC.B $A5                            ;9FC86F|C6A5    |;
                       BPL CODE_9FC86B                      ;9FC871|10F8    |;
 
          CODE_9FC873:
                       DEC.B $89                            ;9FC873|C689    |;
                       DEC.B $89                            ;9FC875|C689    |;
                       DEC.B $A9                            ;9FC877|C6A9    |;
                       BPL CODE_9FC845                      ;9FC879|10CA    |;
 
          CODE_9FC87B:
                       RTL                                  ;9FC87B|6B      |;
 
          CODE_9FC87C:
                       LDA.W #$FFFF                         ;9FC87C|A9FFFF  |;
                       STA.W $0D49                          ;9FC87F|8D490D  |;
                       STA.W $0D3F                          ;9FC882|8D3F0D  |;
                       STZ.W EdLnSelLineIndx                ;9FC885|9C430D  |;
                       STZ.W $0D45                          ;9FC888|9C450D  |;
                       LDA.W #$007E                         ;9FC88B|A97E00  |;
                       STA.B $8B                            ;9FC88E|858B    |;
                       LDA.W #$347C                         ;9FC890|A97C34  |;
                       STA.B $89                            ;9FC893|8589    |;
                       RTL                                  ;9FC895|6B      |;
 
          CODE_9FC896:
                       LDA.B $8F                            ;9FC896|A58F    |;
                       PHA                                  ;9FC898|48      |;
                       LDA.B $8D                            ;9FC899|A58D    |;
                       PHA                                  ;9FC89B|48      |;
                       LDA.W #$009C                         ;9FC89C|A99C00  |;
                       STA.B $8F                            ;9FC89F|858F    |;
                       LDA.W #$F8DA                         ;9FC8A1|A9DAF8  |;
                       STA.B $8D                            ;9FC8A4|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FC8A6|22BEC79E|;
                       PLA                                  ;9FC8AA|68      |;
                       STA.B $8D                            ;9FC8AB|858D    |;
                       PLA                                  ;9FC8AD|68      |;
                       STA.B $8F                            ;9FC8AE|858F    |;
                       LDA.W #$0020                         ;9FC8B0|A92000  |;
                       STA.B $A5                            ;9FC8B3|85A5    |;
                       LDA.W #$001D                         ;9FC8B5|A91D00  |;
                       STA.B $A9                            ;9FC8B8|85A9    |;
                       LDA.L $7E35D0                        ;9FC8BA|AFD0357E|;
                       STA.B $AD                            ;9FC8BE|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9FC8C0|229CBD9F|;
                       LDA.B $8F                            ;9FC8C4|A58F    |;
                       PHA                                  ;9FC8C6|48      |;
                       LDA.B $8D                            ;9FC8C7|A58D    |;
                       PHA                                  ;9FC8C9|48      |;
                       LDA.W #$009C                         ;9FC8CA|A99C00  |;
                       STA.B $8F                            ;9FC8CD|858F    |;
                       LDA.W #$F8DF                         ;9FC8CF|A9DFF8  |;
                       STA.B $8D                            ;9FC8D2|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FC8D4|22BEC79E|;
                       PLA                                  ;9FC8D8|68      |;
                       STA.B $8D                            ;9FC8D9|858D    |;
                       PLA                                  ;9FC8DB|68      |;
                       STA.B $8F                            ;9FC8DC|858F    |;
                       LDA.W #$007F                         ;9FC8DE|A97F00  |;
                       STA.B $0E                            ;9FC8E1|850E    |;
                       LDA.W #$C800                         ;9FC8E3|A900C8  |;
                       STA.B $0C                            ;9FC8E6|850C    |;
                       LDA.W #$0000                         ;9FC8E8|A90000  |;
                       STA.B $24                            ;9FC8EB|8524    |;
                       LDA.W #$0055                         ;9FC8ED|A95500  |;
                       STA.B $26                            ;9FC8F0|8526    |;
                       LDA.W #$0020                         ;9FC8F2|A92000  |;
                       STA.B $18                            ;9FC8F5|8518    |;
                       LDA.W #$001C                         ;9FC8F7|A91C00  |;
                       STA.B $1A                            ;9FC8FA|851A    |;
                       LDA.W #$0400                         ;9FC8FC|A90004  |;
                       STA.W $079C                          ;9FC8FF|8D9C07  |;
                       LDX.W #$0000                         ;9FC902|A20000  |;
                       LDY.W #$0000                         ;9FC905|A00000  |;
                       JSL.L CODE_808BED                    ;9FC908|22ED8B80|;
                       LDA.W #$007F                         ;9FC90C|A97F00  |;
                       STA.B $0E                            ;9FC90F|850E    |;
                       LDA.W #$C800                         ;9FC911|A900C8  |;
                       STA.B $0C                            ;9FC914|850C    |;
                       LDA.W #$0010                         ;9FC916|A91000  |;
                       STA.B $24                            ;9FC919|8524    |;
                       LDA.W #$0055                         ;9FC91B|A95500  |;
                       STA.B $26                            ;9FC91E|8526    |;
                       LDA.W #$0020                         ;9FC920|A92000  |;
                       STA.B $18                            ;9FC923|8518    |;
                       LDA.W #$001C                         ;9FC925|A91C00  |;
                       STA.B $1A                            ;9FC928|851A    |;
                       LDA.W #$0800                         ;9FC92A|A90008  |;
                       STA.W $079C                          ;9FC92D|8D9C07  |;
                       LDX.W #$0000                         ;9FC930|A20000  |;
                       LDY.W #$0000                         ;9FC933|A00000  |;
                       JSL.L CODE_808BED                    ;9FC936|22ED8B80|;
                       JMP.W CODE_9FA130                    ;9FC93A|4C30A1  |;
 
          CODE_9FC93D:
                       LDA.B $89                            ;9FC93D|A589    |;
                       PHA                                  ;9FC93F|48      |;
                       LDA.B $8B                            ;9FC940|A58B    |;
                       PHA                                  ;9FC942|48      |;
                       LDY.B zpCurntTeamLoopVal             ;9FC943|A491    |;
                       LDA.W $1CDC,Y                        ;9FC945|B9DC1C  |;
                       STA.B $89                            ;9FC948|8589    |;
                       LDA.W #$009C                         ;9FC94A|A99C00  |;
                       STA.B $8B                            ;9FC94D|858B    |;
                       LDY.W #$0000                         ;9FC94F|A00000  |;
                       LDA.B [$89],Y                        ;9FC952|B789    |;
                       CLC                                  ;9FC954|18      |;
                       ADC.B $89                            ;9FC955|6589    |;
                       STA.B $89                            ;9FC957|8589    |;
                       STZ.B $A5                            ;9FC959|64A5    |;
 
          CODE_9FC95B:
                       INC.B $A5                            ;9FC95B|E6A5    |;
                       LDA.B [$89]                          ;9FC95D|A789    |;
                       CLC                                  ;9FC95F|18      |;
                       ADC.B $89                            ;9FC960|6589    |;
                       ADC.W #$0008                         ;9FC962|690800  |;
                       STA.B $89                            ;9FC965|8589    |;
                       LDA.B [$89]                          ;9FC967|A789    |;
                       CMP.W #$0002                         ;9FC969|C90200  |;
                       BNE CODE_9FC95B                      ;9FC96C|D0ED    |;
                       PLA                                  ;9FC96E|68      |;
                       STA.B $8B                            ;9FC96F|858B    |;
                       PLA                                  ;9FC971|68      |;
                       STA.B $89                            ;9FC972|8589    |;
                       RTL                                  ;9FC974|6B      |;
                       db $A4,$A9,$BD,$03,$15,$F0,$02,$C8   ;9FC975|        |;
                       db $C8,$B9,$00,$00,$18,$65,$A5,$99   ;9FC97D|        |;
                       db $00,$00,$6B                       ;9FC985|        |;
 
          CODE_9FC988:
                       JSL.L CODE_9CA58C                    ;9FC988|228CA59C|;
                       LDA.W IsPenaltyShot                  ;9FC98C|AD9B1E  |;
                       BNE CODE_9FC9B2                      ;9FC98F|D021    |;
                       LDY.W #$0008                         ;9FC991|A00800  |;
 
          CODE_9FC994:
                       LDA.W $19F6,Y                        ;9FC994|B9F619  |;
                       AND.W #$FF00                         ;9FC997|2900FF  |;
                       CMP.W #$8000                         ;9FC99A|C90080  |;
                       BNE CODE_9FC9AE                      ;9FC99D|D00F    |;
                       db $B9,$F6,$19,$29,$FF,$00,$99,$F6   ;9FC99F|        |;
                       db $19,$1A,$1A,$4A,$99,$84,$1C       ;9FC9A7|        |;
 
          CODE_9FC9AE:
                       DEY                                  ;9FC9AE|88      |;
                       DEY                                  ;9FC9AF|88      |;
                       BPL CODE_9FC994                      ;9FC9B0|10E2    |;
 
          CODE_9FC9B2:
                       LDA.W $19D0                          ;9FC9B2|ADD019  |;
                       CMP.W #$0004                         ;9FC9B5|C90400  |;
                       BCC CODE_9FCA12                      ;9FC9B8|9058    |;
                       db $A2,$0A,$00,$A0,$00,$00,$BD,$43   ;9FC9BA|        |;
                       db $0F,$F0,$03,$30,$01,$C8,$CA,$CA   ;9FC9C2|        |;
                       db $10,$F4,$84,$A5,$A2,$08,$00,$A0   ;9FC9CA|        |;
                       db $00,$00,$BD,$F6,$19,$C9,$00,$00   ;9FC9D2|        |;
                       db $D0,$01,$C8,$CA,$CA,$10,$F3,$C4   ;9FC9DA|        |;
                       db $A5,$B0,$2D,$CC,$D0,$19,$F0,$28   ;9FC9E2|        |;
                       db $AC,$F9,$0A,$C8,$C8,$C0,$0A,$00   ;9FC9EA|        |;
                       db $D0,$03,$A0,$00,$00,$B9,$F6,$19   ;9FC9F2|        |;
                       db $10,$F1,$29,$FF,$00,$C9,$80,$00   ;9FC9FA|        |;
                       db $F0,$E9,$C9,$00,$00,$D0,$E4,$99   ;9FCA02|        |;
                       db $F6,$19,$1A,$1A,$4A,$99,$84,$1C   ;9FCA0A|        |;
 
          CODE_9FCA12:
                       LDA.W $19D2                          ;9FCA12|ADD219  |;
                       CMP.W #$0004                         ;9FCA15|C90400  |;
                       BCC CODE_9FCA75                      ;9FCA18|905B    |;
                       db $A2,$16,$00,$A0,$00,$00,$BD,$43   ;9FCA1A|        |;
                       db $0F,$F0,$03,$30,$01,$C8,$CA,$CA   ;9FCA22|        |;
                       db $E0,$0C,$00,$10,$F1,$84,$A5,$A2   ;9FCA2A|        |;
                       db $08,$00,$A0,$00,$00,$BD,$F6,$19   ;9FCA32|        |;
                       db $C9,$02,$00,$D0,$01,$C8,$CA,$CA   ;9FCA3A|        |;
                       db $10,$F3,$C4,$A5,$B0,$2D,$CC,$D0   ;9FCA42|        |;
                       db $19,$F0,$28,$AC,$FB,$0A,$C8,$C8   ;9FCA4A|        |;
                       db $C0,$0A,$00,$D0,$03,$A0,$00,$00   ;9FCA52|        |;
                       db $B9,$F6,$19,$10,$F1,$29,$FF,$00   ;9FCA5A|        |;
                       db $C9,$80,$00,$F0,$E9,$C9,$02,$00   ;9FCA62|        |;
                       db $D0,$E4,$99,$F6,$19,$1A,$1A,$4A   ;9FCA6A|        |;
                       db $99,$84,$1C                       ;9FCA72|        |;
 
          CODE_9FCA75:
                       STZ.W $0C23                          ;9FCA75|9C230C  |;
                       LDX.W #$0016                         ;9FCA78|A21600  |;
                       LDA.W #$FFFF                         ;9FCA7B|A9FFFF  |;
 
          CODE_9FCA7E:
                       STA.W $19D4,X                        ;9FCA7E|9DD419  |;
                       STZ.W $0B05,X                        ;9FCA81|9E050B  |;
                       STZ.W $0BCB,X                        ;9FCA84|9ECB0B  |;
                       STZ.W $0BEB,X                        ;9FCA87|9EEB0B  |;
                       STZ.W $0C0B,X                        ;9FCA8A|9E0B0C  |;
                       DEX                                  ;9FCA8D|CA      |;
                       DEX                                  ;9FCA8E|CA      |;
                       BPL CODE_9FCA7E                      ;9FCA8F|10ED    |;
                       STA.W $0BA3                          ;9FCA91|8DA30B  |;
                       LDX.W #$0008                         ;9FCA94|A20800  |;
 
          CODE_9FCA97:
                       STA.W $19EC,X                        ;9FCA97|9DEC19  |;
                       DEX                                  ;9FCA9A|CA      |;
                       DEX                                  ;9FCA9B|CA      |;
                       BPL CODE_9FCA97                      ;9FCA9C|10F9    |;
                       LDA.W $19D0                          ;9FCA9E|ADD019  |;
                       BEQ CODE_9FCAD8                      ;9FCAA1|F035    |;
                       LDA.W #$0005                         ;9FCAA3|A90500  |;
                       STA.B $0C                            ;9FCAA6|850C    |;
                       LDX.W $0AF5                          ;9FCAA8|AEF50A  |;
                       LDA.W #$FFFF                         ;9FCAAB|A9FFFF  |;
                       STA.W $0AF5                          ;9FCAAE|8DF50A  |;
                       DEX                                  ;9FCAB1|CA      |;
                       DEX                                  ;9FCAB2|CA      |;
                       BPL CODE_9FCAB8                      ;9FCAB3|1003    |;
                       LDX.W #$0008                         ;9FCAB5|A20800  |;
 
          CODE_9FCAB8:
                       LDA.W $19F6,X                        ;9FCAB8|BDF619  |;
                       BNE CODE_9FCACD                      ;9FCABB|D010    |;
                       STX.B $B5                            ;9FCABD|86B5    |;
                       PHX                                  ;9FCABF|DA      |;
                       LDA.W $0AF5                          ;9FCAC0|ADF50A  |;
                       BPL CODE_9FCAC8                      ;9FCAC3|1003    |;
                       STX.W $0AF5                          ;9FCAC5|8EF50A  |;
 
          CODE_9FCAC8:
                       JSL.L CODE_9FCBB6                    ;9FCAC8|22B6CB9F|;
                       PLX                                  ;9FCACC|FA      |;
 
          CODE_9FCACD:
                       DEX                                  ;9FCACD|CA      |;
                       DEX                                  ;9FCACE|CA      |;
                       BPL CODE_9FCAD4                      ;9FCACF|1003    |;
                       LDX.W #$0008                         ;9FCAD1|A20800  |;
 
          CODE_9FCAD4:
                       DEC.B $0C                            ;9FCAD4|C60C    |;
                       BNE CODE_9FCAB8                      ;9FCAD6|D0E0    |;
 
          CODE_9FCAD8:
                       LDA.W $19D2                          ;9FCAD8|ADD219  |;
                       BEQ CODE_9FCB15                      ;9FCADB|F038    |;
                       LDA.W #$0005                         ;9FCADD|A90500  |;
                       STA.B $0C                            ;9FCAE0|850C    |;
                       LDX.W $0AF7                          ;9FCAE2|AEF70A  |;
                       LDA.W #$FFFF                         ;9FCAE5|A9FFFF  |;
                       STA.W $0AF7                          ;9FCAE8|8DF70A  |;
                       DEX                                  ;9FCAEB|CA      |;
                       DEX                                  ;9FCAEC|CA      |;
                       BPL CODE_9FCAF2                      ;9FCAED|1003    |;
                       LDX.W #$0008                         ;9FCAEF|A20800  |;
 
          CODE_9FCAF2:
                       LDA.W $19F6,X                        ;9FCAF2|BDF619  |;
                       CMP.W #$0002                         ;9FCAF5|C90200  |;
                       BNE CODE_9FCB0A                      ;9FCAF8|D010    |;
                       STX.B $B5                            ;9FCAFA|86B5    |;
                       PHX                                  ;9FCAFC|DA      |;
                       LDA.W $0AF7                          ;9FCAFD|ADF70A  |;
                       BPL CODE_9FCB05                      ;9FCB00|1003    |;
                       STX.W $0AF7                          ;9FCB02|8EF70A  |;
 
          CODE_9FCB05:
                       JSL.L CODE_9FCBB6                    ;9FCB05|22B6CB9F|;
                       PLX                                  ;9FCB09|FA      |;
 
          CODE_9FCB0A:
                       DEX                                  ;9FCB0A|CA      |;
                       DEX                                  ;9FCB0B|CA      |;
                       BPL CODE_9FCB11                      ;9FCB0C|1003    |;
                       LDX.W #$0008                         ;9FCB0E|A20800  |;
 
          CODE_9FCB11:
                       DEC.B $0C                            ;9FCB11|C60C    |;
                       BNE CODE_9FCAF2                      ;9FCB13|D0DD    |;
 
          CODE_9FCB15:
                       RTL                                  ;9FCB15|6B      |;
 
          CODE_9FCB16:
                       LDY.B $A5                            ;9FCB16|A4A5    |;
                       LDA.W $19D4,Y                        ;9FCB18|B9D419  |;
                       BPL CODE_9FCB5B                      ;9FCB1B|103E    |;
                       PHX                                  ;9FCB1D|DA      |;
                       LDX.W #$0000                         ;9FCB1E|A20000  |;
                       CPY.W #$000C                         ;9FCB21|C00C00  |;
                       BCC CODE_9FCB29                      ;9FCB24|9003    |;
                       LDX.W #$0002                         ;9FCB26|A20200  |;
 
          CODE_9FCB29:
                       LDA.W $19D0,X                        ;9FCB29|BDD019  |;
                       BEQ CODE_9FCB4D                      ;9FCB2C|F01F    |;
                       LDY.W $0AFD,X                        ;9FCB2E|BCFD0A  |;
                       DEY                                  ;9FCB31|88      |;
                       DEY                                  ;9FCB32|88      |;
                       BPL CODE_9FCB38                      ;9FCB33|1003    |;
                       LDY.W #$0008                         ;9FCB35|A00800  |;
 
          CODE_9FCB38:
                       LDA.W #$0005                         ;9FCB38|A90500  |;
                       STA.B $14                            ;9FCB3B|8514    |;
                       TXA                                  ;9FCB3D|8A      |;
 
          CODE_9FCB3E:
                       CMP.W $19F6,Y                        ;9FCB3E|D9F619  |;
                       BNE CODE_9FCB4F                      ;9FCB41|D00C    |;
                       STY.B $B5                            ;9FCB43|84B5    |;
                       TYA                                  ;9FCB45|98      |;
                       STA.W $0AFD,X                        ;9FCB46|9DFD0A  |; Used To swap goalie control when teammates
                       JSL.L CODE_9FCB68                    ;9FCB49|2268CB9F|;
 
          CODE_9FCB4D:
                       PLX                                  ;9FCB4D|FA      |;
                       RTL                                  ;9FCB4E|6B      |;
 
          CODE_9FCB4F:
                       DEY                                  ;9FCB4F|88      |;
                       DEY                                  ;9FCB50|88      |;
                       BPL CODE_9FCB56                      ;9FCB51|1003    |;
                       LDY.W #$0008                         ;9FCB53|A00800  |;
 
          CODE_9FCB56:
                       DEC.B $14                            ;9FCB56|C614    |;
                       BNE CODE_9FCB3E                      ;9FCB58|D0E4    |;
                       db $FA                               ;9FCB5A|        |;
 
          CODE_9FCB5B:
                       RTL                                  ;9FCB5B|6B      |;
 
          CODE_9FCB5C:
                       LDY.B $A5                            ;9FCB5C|A4A5    |;
                       LDA.W $19D4,Y                        ;9FCB5E|B9D419  |;
                       BPL CODE_9FCB67                      ;9FCB61|1004    |;
                       JSL.L CODE_9FCB68                    ;9FCB63|2268CB9F|;
 
          CODE_9FCB67:
                       RTL                                  ;9FCB67|6B      |;
 
          CODE_9FCB68:
                       LDA.W #$FFFF                         ;9FCB68|A9FFFF  |;
                       STA.W $0BA3                          ;9FCB6B|8DA30B  |;
                       LDY.B $B5                            ;9FCB6E|A4B5    |;
                       LDA.W $19EC,Y                        ;9FCB70|B9EC19  |;
                       CMP.B $A5                            ;9FCB73|C5A5    |;
                       BEQ CODE_9FCBB5                      ;9FCB75|F03E    |;
                       TAY                                  ;9FCB77|A8      |;
                       CPY.W #$0018                         ;9FCB78|C01800  |;
                       BCS CODE_9FCB9A                      ;9FCB7B|B01D    |;
                       LDA.W $1283,Y                        ;9FCB7D|B98312  |;
                       AND.W #$FFF7                         ;9FCB80|29F7FF  |;
                       ORA.W #$0002                         ;9FCB83|090200  |;
                       STA.W $1283,Y                        ;9FCB86|998312  |;
                       LDA.W #$FFFF                         ;9FCB89|A9FFFF  |;
                       STA.W $19D4,Y                        ;9FCB8C|99D419  |;
                       LDA.W PStructPosition,Y              ;9FCB8F|B9430F  |;
                       BNE CODE_9FCB9A                      ;9FCB92|D006    |;
                       LDA.W #$0000                         ;9FCB94|A90000  |;
                       STA.W $0B05,Y                        ;9FCB97|99050B  |;
 
          CODE_9FCB9A:
                       LDY.B $A5                            ;9FCB9A|A4A5    |;
                       CPY.W #$0018                         ;9FCB9C|C01800  |;
                       BCS CODE_9FCBB5                      ;9FCB9F|B014    |;
                       LDA.W $1283,Y                        ;9FCBA1|B98312  |;
                       ORA.W #$0008                         ;9FCBA4|090800  |;
                       STA.W $1283,Y                        ;9FCBA7|998312  |;
                       LDA.B $B5                            ;9FCBAA|A5B5    |;
                       STA.W $19D4,Y                        ;9FCBAC|99D419  |;
                       TAY                                  ;9FCBAF|A8      |;
                       LDA.B $A5                            ;9FCBB0|A5A5    |;
                       STA.W $19EC,Y                        ;9FCBB2|99EC19  |;
 
          CODE_9FCBB5:
                       RTL                                  ;9FCBB5|6B      |;
 
          CODE_9FCBB6:
                       STX.B $87                            ;9FCBB6|8687    |;
                       LDX.W #$0000                         ;9FCBB8|A20000  |;
 
          CODE_9FCBBB:
                       LDA.B $A5,X                          ;9FCBBB|B5A5    |;
                       PHA                                  ;9FCBBD|48      |;
                       INX                                  ;9FCBBE|E8      |;
                       INX                                  ;9FCBBF|E8      |;
                       CPX.W #$0010                         ;9FCBC0|E01000  |;
                       BNE CODE_9FCBBB                      ;9FCBC3|D0F6    |;
                       LDX.B $87                            ;9FCBC5|A687    |;
                       LDA.W #$0008                         ;9FCBC7|A90800  |;
                       STA.B $00                            ;9FCBCA|8500    |;
                       LDY.W $0AD9                          ;9FCBCC|ACD90A  |;
                       BMI CODE_9FCC06                      ;9FCBCF|3035    |;
                       LDA.W PStructPosition,X              ;9FCBD1|BD430F  |;
                       BEQ CODE_9FCBEB                      ;9FCBD4|F015    |;
                       LDA.W $19D4,X                        ;9FCBD6|BDD419  |;
                       BMI CODE_9FCBEB                      ;9FCBD9|3010    |;
                       LDA.W $14E3,X                        ;9FCBDB|BDE314  |;
                       BNE CODE_9FCBEB                      ;9FCBDE|D00B    |;
                       LDA.W $0B3D,X                        ;9FCBE0|BD3D0B  |;
                       CMP.W #$0064                         ;9FCBE3|C96400  |;
                       BCS CODE_9FCBEB                      ;9FCBE6|B003    |;
                       db $4C,$AE,$CC                       ;9FCBE8|        |;
 
          CODE_9FCBEB:
                       LDA.W $19D4,Y                        ;9FCBEB|B9D419  |;
                       BMI CODE_9FCBF9                      ;9FCBEE|3009    |;
                       db $A8,$B9,$F6,$19,$DD,$F6,$19,$F0   ;9FCBF0|        |;
                       db $0D                               ;9FCBF8|        |;
 
          CODE_9FCBF9:
                       LDY.W #$0000                         ;9FCBF9|A00000  |;
                       LDA.W $14C3,X                        ;9FCBFC|BDC314  |;
                       BNE CODE_9FCC04                      ;9FCBFF|D003    |;
                       LDY.W #$0004                         ;9FCC01|A00400  |;
 
          CODE_9FCC04:
                       STY.B $00                            ;9FCC04|8400    |;
 
          CODE_9FCC06:
                       LDA.W #$0006                         ;9FCC06|A90600  |;
                       STA.B $A9                            ;9FCC09|85A9    |;
                       LDY.B $B5                            ;9FCC0B|A4B5    |;
                       LDA.W #$FFFF                         ;9FCC0D|A9FFFF  |;
                       STA.B $AD                            ;9FCC10|85AD    |;
                       LDX.W #$0000                         ;9FCC12|A20000  |;
                       LDA.W JyPadHmAwy,Y                   ;9FCC15|B9841C  |;
                       CMP.W #$0001                         ;9FCC18|C90100  |;
                       BEQ CODE_9FCC20                      ;9FCC1B|F003    |;
                       LDX.W #$000C                         ;9FCC1D|A20C00  |;
 
          CODE_9FCC20:
                       LDA.W PStructPosition,X              ;9FCC20|BD430F  |;
                       BMI CODE_9FCC96                      ;9FCC23|3071    |;
                       BEQ CODE_9FCC96                      ;9FCC25|F06F    |;
                       LDA.W $1283,X                        ;9FCC27|BD8312  |;
                       BIT.W #$1000                         ;9FCC2A|890010  |;
                       BNE CODE_9FCC96                      ;9FCC2D|D067    |;
                       LDA.W $11A3,X                        ;9FCC2F|BDA311  |;
                       CMP.W #$EBB0                         ;9FCC32|C9B0EB  |;
                       BCC CODE_9FCC3C                      ;9FCC35|9005    |;
                       CMP.W #$EBE3                         ;9FCC37|C9E3EB  |;
                       BCC CODE_9FCC51                      ;9FCC3A|9015    |;
 
          CODE_9FCC3C:
                       CMP.W #$F196                         ;9FCC3C|C996F1  |;
                       BCC CODE_9FCC46                      ;9FCC3F|9005    |;
                       CMP.W #$F343                         ;9FCC41|C943F3  |;
                       BCC CODE_9FCC51                      ;9FCC44|900B    |;
 
          CODE_9FCC46:
                       LDA.W $1283,X                        ;9FCC46|BD8312  |;
                       AND.W #$1000                         ;9FCC49|290010  |;
                       ORA.W $14E3,X                        ;9FCC4C|1DE314  |;
                       BNE CODE_9FCC96                      ;9FCC4F|D045    |;
 
          CODE_9FCC51:
                       LDA.W $19D4,X                        ;9FCC51|BDD419  |;
                       BMI CODE_9FCC5A                      ;9FCC54|3004    |;
                       CMP.B $B5                            ;9FCC56|C5B5    |;
                       BNE CODE_9FCC96                      ;9FCC58|D03C    |;
 
          CODE_9FCC5A:
                       STZ.B $14                            ;9FCC5A|6414    |;
                       LDA.W $0AD9                          ;9FCC5C|ADD90A  |;
                       BMI CODE_9FCC86                      ;9FCC5F|3025    |;
                       LDA.B $00                            ;9FCC61|A500    |;
                       CMP.W #$0008                         ;9FCC63|C90800  |;
                       BEQ CODE_9FCC86                      ;9FCC66|F01E    |;
                       EOR.W $0B5D,X                        ;9FCC68|5D5D0B  |;
                       CMP.W #$0004                         ;9FCC6B|C90400  |;
                       BCC CODE_9FCC76                      ;9FCC6E|9006    |;
                       EOR.W #$FFFF                         ;9FCC70|49FFFF  |;
                       ADC.W #$0008                         ;9FCC73|690800  |;
 
          CODE_9FCC76:
                       CMP.W #$0000                         ;9FCC76|C90000  |;
                       BEQ CODE_9FCC86                      ;9FCC79|F00B    |;
                       DEC A                                ;9FCC7B|3A      |;
                       ASL A                                ;9FCC7C|0A      |;
                       ASL A                                ;9FCC7D|0A      |;
                       ASL A                                ;9FCC7E|0A      |;
                       ASL A                                ;9FCC7F|0A      |;
                       ASL A                                ;9FCC80|0A      |;
                       CLC                                  ;9FCC81|18      |;
                       ADC.B $14                            ;9FCC82|6514    |;
                       STA.B $14                            ;9FCC84|8514    |;
 
          CODE_9FCC86:
                       LDA.W $0B1D,X                        ;9FCC86|BD1D0B  |;
                       CLC                                  ;9FCC89|18      |;
                       ADC.B $14                            ;9FCC8A|6514    |;
                       BCS CODE_9FCC96                      ;9FCC8C|B008    |;
                       CMP.B $AD                            ;9FCC8E|C5AD    |;
                       BCS CODE_9FCC96                      ;9FCC90|B004    |;
                       STX.B $B1                            ;9FCC92|86B1    |;
                       STA.B $AD                            ;9FCC94|85AD    |;
 
          CODE_9FCC96:
                       INX                                  ;9FCC96|E8      |;
                       INX                                  ;9FCC97|E8      |;
                       DEC.B $A9                            ;9FCC98|C6A9    |;
                       BNE CODE_9FCC20                      ;9FCC9A|D084    |;
                       LDX.B $95                            ;9FCC9C|A695    |;
                       LDA.B $AD                            ;9FCC9E|A5AD    |;
                       CMP.W #$FFFF                         ;9FCCA0|C9FFFF  |;
                       BEQ CODE_9FCCFB                      ;9FCCA3|F056    |;
                       LDY.B $B5                            ;9FCCA5|A4B5    |;
                       LDA.B $B1                            ;9FCCA7|A5B1    |;
                       CMP.W $19EC,Y                        ;9FCCA9|D9EC19  |;
                       BNE CODE_9FCCF5                      ;9FCCAC|D047    |;
                       LDA.W $14E3,X                        ;9FCCAE|BDE314  |;
                       BNE CODE_9FCCFB                      ;9FCCB1|D048    |;
                       LDA.B $B5                            ;9FCCB3|A5B5    |;
                       PHA                                  ;9FCCB5|48      |;
                       LDA.B $B7                            ;9FCCB6|A5B7    |;
                       PHA                                  ;9FCCB8|48      |;
                       LDA.B $B9                            ;9FCCB9|A5B9    |;
                       PHA                                  ;9FCCBB|48      |;
                       LDA.B $BB                            ;9FCCBC|A5BB    |;
                       PHA                                  ;9FCCBE|48      |;
                       LDA.B $BD                            ;9FCCBF|A5BD    |;
                       PHA                                  ;9FCCC1|48      |;
                       LDA.B $BF                            ;9FCCC2|A5BF    |;
                       PHA                                  ;9FCCC4|48      |;
                       LDA.B $89                            ;9FCCC5|A589    |;
                       PHA                                  ;9FCCC7|48      |;
                       LDA.B $8B                            ;9FCCC8|A58B    |;
                       PHA                                  ;9FCCCA|48      |;
                       LDA.B $8D                            ;9FCCCB|A58D    |;
                       PHA                                  ;9FCCCD|48      |;
                       LDA.B $8F                            ;9FCCCE|A58F    |;
                       PHA                                  ;9FCCD0|48      |;
                       JSL.L CODE_9EA242                    ;9FCCD1|2242A29E|;
                       PLA                                  ;9FCCD5|68      |;
                       STA.B $8F                            ;9FCCD6|858F    |;
                       PLA                                  ;9FCCD8|68      |;
                       STA.B $8D                            ;9FCCD9|858D    |;
                       PLA                                  ;9FCCDB|68      |;
                       STA.B $8B                            ;9FCCDC|858B    |;
                       PLA                                  ;9FCCDE|68      |;
                       STA.B $89                            ;9FCCDF|8589    |;
                       PLA                                  ;9FCCE1|68      |;
                       STA.B $BF                            ;9FCCE2|85BF    |;
                       PLA                                  ;9FCCE4|68      |;
                       STA.B $BD                            ;9FCCE5|85BD    |;
                       PLA                                  ;9FCCE7|68      |;
                       STA.B $BB                            ;9FCCE8|85BB    |;
                       PLA                                  ;9FCCEA|68      |;
                       STA.B $B9                            ;9FCCEB|85B9    |;
                       PLA                                  ;9FCCED|68      |;
                       STA.B $B7                            ;9FCCEE|85B7    |;
                       PLA                                  ;9FCCF0|68      |;
                       STA.B $B5                            ;9FCCF1|85B5    |;
                       BRA CODE_9FCCFB                      ;9FCCF3|8006    |;
 
          CODE_9FCCF5:
                       STA.B $A5                            ;9FCCF5|85A5    |;
                       JSL.L CODE_9FCB68                    ;9FCCF7|2268CB9F|;
 
          CODE_9FCCFB:
                       STX.B $87                            ;9FCCFB|8687    |;
                       LDX.W #$000E                         ;9FCCFD|A20E00  |;
 
          CODE_9FCD00:
                       PLA                                  ;9FCD00|68      |;
                       STA.B $A5,X                          ;9FCD01|95A5    |;
                       DEX                                  ;9FCD03|CA      |;
                       DEX                                  ;9FCD04|CA      |;
                       BPL CODE_9FCD00                      ;9FCD05|10F9    |;
                       LDX.B $87                            ;9FCD07|A687    |;
                       RTL                                  ;9FCD09|6B      |;
                       LDY.W #$0000                         ;9FCD0A|A00000  |;
                       CPX.W #$000C                         ;9FCD0D|E00C00  |;
                       BCC CODE_9FCD15                      ;9FCD10|9003    |;
                       LDY.W #$000C                         ;9FCD12|A00C00  |;
          CODE_9FCD15:
                       LDA.W $19D4,Y                        ;9FCD15|B9D419  |;
                       BPL CODE_9FCD1F                      ;9FCD18|1005    |;
                       LDA.W PStructPosition,Y              ;9FCD1A|B9430F  |;
                       BPL CODE_9FCD23                      ;9FCD1D|1004    |;
          CODE_9FCD1F:
                       INY                                  ;9FCD1F|C8      |;
                       INY                                  ;9FCD20|C8      |;
                       BRA CODE_9FCD15                      ;9FCD21|80F2    |;
          CODE_9FCD23:
                       PHX                                  ;9FCD23|DA      |;
                       JSL.L CODE_9FCD69                    ;9FCD24|2269CD9F|;
                       PLX                                  ;9FCD28|FA      |;
                       RTL                                  ;9FCD29|6B      |;
 
          CODE_9FCD2A:
                       LDA.W #$0000                         ;9FCD2A|A90000  |;
                       BRA CODE_9FCD69                      ;9FCD2D|803A    |;
 
          CODE_9FCD2F:
                       LDY.W #$0000                         ;9FCD2F|A00000  |;
                       CPX.W #$000C                         ;9FCD32|E00C00  |;
                       BCC CODE_9FCD3A                      ;9FCD35|9003    |;
                       LDY.W #$0002                         ;9FCD37|A00200  |;
 
          CODE_9FCD3A:
                       LDA.W Def_Ctrl,Y                     ;9FCD3A|B9941C  |; Right Trigger Code
                       BNE CODE_9FCD40                      ;9FCD3D|D001    |;
                       RTL                                  ;9FCD3F|6B      |;
 
          CODE_9FCD40:
                       LDA.W #$0002                         ;9FCD40|A90200  |;
                       LDY.W $14C3,X                        ;9FCD43|BCC314  |;
                       BNE CODE_9FCD69                      ;9FCD46|D021    |;
                       LDA.W #$0001                         ;9FCD48|A90100  |;
                       BRA CODE_9FCD69                      ;9FCD4B|801C    |;
          CODE_9FCD4D:
                       LDY.W #$0000                         ;9FCD4D|A00000  |;
                       CPX.W #$000C                         ;9FCD50|E00C00  |;
                       BCC CODE_9FCD58                      ;9FCD53|9003    |;
                       LDY.W #$0002                         ;9FCD55|A00200  |;
          CODE_9FCD58:
                       LDA.W Def_Ctrl,Y                     ;9FCD58|B9941C  |; Left Trigger Code
                       BNE CODE_9FCD5E                      ;9FCD5B|D001    |;
                       RTL                                  ;9FCD5D|6B      |;
          CODE_9FCD5E:
                       LDA.W #$0001                         ;9FCD5E|A90100  |;
                       LDY.W $14C3,X                        ;9FCD61|BCC314  |;
                       BNE CODE_9FCD69                      ;9FCD64|D003    |;
                       LDA.W #$0002                         ;9FCD66|A90200  |;
 
          CODE_9FCD69:
                       STA.B $A9                            ;9FCD69|85A9    |;
                       PHX                                  ;9FCD6B|DA      |;
                       LDY.B $B5                            ;9FCD6C|A4B5    |;
                       LDX.W #$0000                         ;9FCD6E|A20000  |;
                       LDA.W JyPadHmAwy,Y                   ;9FCD71|B9841C  |;
                       CMP.W #$0001                         ;9FCD74|C90100  |;
                       BEQ CODE_9FCD7C                      ;9FCD77|F003    |;
                       LDX.W #$000C                         ;9FCD79|A20C00  |;
 
          CODE_9FCD7C:
                       LDA.W #$0005                         ;9FCD7C|A90500  |;
                       STA.B $A5                            ;9FCD7F|85A5    |;
 
          CODE_9FCD81:
                       LDA.W PStructPosition,X              ;9FCD81|BD430F  |;
                       CMP.B $A9                            ;9FCD84|C5A9    |;
                       BEQ CODE_9FCD90                      ;9FCD86|F008    |;
                       INX                                  ;9FCD88|E8      |;
                       INX                                  ;9FCD89|E8      |;
                       DEC.B $A5                            ;9FCD8A|C6A5    |;
                       BPL CODE_9FCD81                      ;9FCD8C|10F3    |;
                       db $80,$1A                           ;9FCD8E|        |;
 
          CODE_9FCD90:
                       LDA.W $19D4,X                        ;9FCD90|BDD419  |;
                       BPL CODE_9FCDAA                      ;9FCD93|1015    |;
                       LDA.W $1283,X                        ;9FCD95|BD8312  |;
                       BIT.W #$1000                         ;9FCD98|890010  |;
                       BNE CODE_9FCDAA                      ;9FCD9B|D00D    |;
                       LDA.W $0ADD,Y                        ;9FCD9D|B9DD0A  |;
                       INC A                                ;9FCDA0|1A      |;
                       STA.W $0ADD,Y                        ;9FCDA1|99DD0A  |;
                       STX.B $A5                            ;9FCDA4|86A5    |;
                       JSL.L CODE_9FCB68                    ;9FCDA6|2268CB9F|;
 
          CODE_9FCDAA:
                       PLX                                  ;9FCDAA|FA      |;
                       RTL                                  ;9FCDAB|6B      |;
 
          CODE_9FCDAC:
                       STZ.W $1624                          ;9FCDAC|9C2416  |;
                       LDA.W #$0010                         ;9FCDAF|A91000  |;
                       STA.B $A9                            ;9FCDB2|85A9    |;
                       STZ.B $89                            ;9FCDB4|6489    |;
                       JSL.L CODE_9FCDC4                    ;9FCDB6|22C4CD9F|;
                       LDA.W #$0001                         ;9FCDBA|A90100  |;
                       STA.B $A9                            ;9FCDBD|85A9    |;
                       LDA.W #$0002                         ;9FCDBF|A90200  |;
                       STA.B $89                            ;9FCDC2|8589    |;
 
          CODE_9FCDC4:
                       LDA.W #$0032                         ;9FCDC4|A93200  |;
                       STA.B $A5                            ;9FCDC7|85A5    |;
 
          CODE_9FCDC9:
                       LDA.W $1624                          ;9FCDC9|AD2416  |;
                       CLC                                  ;9FCDCC|18      |;
                       ADC.B $A9                            ;9FCDCD|65A9    |;
                       STA.W $1624                          ;9FCDCF|8D2416  |;
                       LDA.B $89                            ;9FCDD2|A589    |;
                       BEQ CODE_9FCDD9                      ;9FCDD4|F003    |;
                       LDA.W #$0034                         ;9FCDD6|A93400  |;
 
          CODE_9FCDD9:
                       ADC.B $A5                            ;9FCDD9|65A5    |;
                       TAY                                  ;9FCDDB|A8      |;
                       LDA.W $1852,Y                        ;9FCDDC|B95218  |;
                       BMI CODE_9FCDFA                      ;9FCDDF|3019    |;
                       BEQ CODE_9FCDFA                      ;9FCDE1|F017    |;
                       BIT.W #$1000                         ;9FCDE3|890010  |;
                       BEQ CODE_9FCE16                      ;9FCDE6|F02E    |;
                       db $29,$FF,$07,$85,$AD,$D0,$27,$AD   ;9FCDE8|        |;
                       db $24,$16,$38,$E5,$A9,$8D,$24,$16   ;9FCDF0|        |;
                       db $80,$1C                           ;9FCDF8|        |;
 
          CODE_9FCDFA:
                       LDA.W $1624                          ;9FCDFA|AD2416  |; PenCalled 5th (in the box)
                       SEC                                  ;9FCDFD|38      |;
                       SBC.B $A9                            ;9FCDFE|E5A9    |;
                       STA.W $1624                          ;9FCE00|8D2416  |;
                       LDA.W $1852,Y                        ;9FCE03|B95218  |;
                       CMP.W #$FFFD                         ;9FCE06|C9FDFF  |;
                       BEQ CODE_9FCE16                      ;9FCE09|F00B    |;
                       CMP.W #$FFFC                         ;9FCE0B|C9FCFF  |;
                       BEQ CODE_9FCE16                      ;9FCE0E|F006    |;
                       LDA.W #$FFFE                         ;9FCE10|A9FEFF  |;
                       STA.W $1852,Y                        ;9FCE13|995218  |;
 
          CODE_9FCE16:
                       DEC.B $A5                            ;9FCE16|C6A5    |;
                       DEC.B $A5                            ;9FCE18|C6A5    |;
                       BPL CODE_9FCDC9                      ;9FCE1A|10AD    |;
                       RTL                                  ;9FCE1C|6B      |;
 
          CODE_9FCE1D:
                       STX.B $87                            ;9FCE1D|8687    |;
                       LDX.W #$0000                         ;9FCE1F|A20000  |;
 
          CODE_9FCE22:
                       LDA.B $A5,X                          ;9FCE22|B5A5    |;
                       PHA                                  ;9FCE24|48      |;
                       INX                                  ;9FCE25|E8      |;
                       INX                                  ;9FCE26|E8      |;
                       CPX.W #$0014                         ;9FCE27|E01400  |;
                       BNE CODE_9FCE22                      ;9FCE2A|D0F6    |;
                       LDX.B $87                            ;9FCE2C|A687    |;
                       STX.B $87                            ;9FCE2E|8687    |;
                       LDX.W #$0000                         ;9FCE30|A20000  |;
 
          CODE_9FCE33:
                       LDA.B $89,X                          ;9FCE33|B589    |;
                       PHA                                  ;9FCE35|48      |;
                       INX                                  ;9FCE36|E8      |;
                       INX                                  ;9FCE37|E8      |;
                       CPX.W #$0010                         ;9FCE38|E01000  |;
                       BNE CODE_9FCE33                      ;9FCE3B|D0F6    |;
                       LDX.B $87                            ;9FCE3D|A687    |;
                       LDY.B zpCurntTeamLoopVal             ;9FCE3F|A491    |;
                       LDA.W $1766,Y                        ;9FCE41|B96617  |;
                       STA.B $95                            ;9FCE44|8595    |;
                       LDA.W #$0005                         ;9FCE46|A90500  |;
                       STA.B $B5                            ;9FCE49|85B5    |;
 
          CODE_9FCE4B:
                       LDX.B $95                            ;9FCE4B|A695    |;
                       LDA.W $1243,X                        ;9FCE4D|BD4312  |;
                       AND.W #$00FF                         ;9FCE50|29FF00  |;
                       BIT.W #$0080                         ;9FCE53|898000  |;
                       BEQ CODE_9FCE5B                      ;9FCE56|F003    |;
                       ORA.W #$FF00                         ;9FCE58|0900FF  |;
 
          CODE_9FCE5B:
                       STA.B $A5                            ;9FCE5B|85A5    |;
                       STA.W PStructPosition,X              ;9FCE5D|9D430F  |;
                       CMP.W #$0000                         ;9FCE60|C90000  |;
                       BMI CODE_9FCE9E                      ;9FCE63|3039    |;
                       JSL.L CODE_9FCED0                    ;9FCE65|22D0CE9F|;
                       LDX.B $95                            ;9FCE69|A695    |;
                       LDA.W PStructPosition,X              ;9FCE6B|BD430F  |;
                       CMP.W #$0004                         ;9FCE6E|C90400  |;
                       BNE CODE_9FCE7C                      ;9FCE71|D009    |;
                       LDA.W #$0012                         ;9FCE73|A91200  |;
                       STA.B $A5                            ;9FCE76|85A5    |;
                       JSL.L CODE_9E8C0E                    ;9FCE78|220E8C9E|;
 
          CODE_9FCE7C:
                       LDX.B $95                            ;9FCE7C|A695    |;
                       LDA.W $1263,X                        ;9FCE7E|BD6312  |;
                       AND.W #$00FF                         ;9FCE81|29FF00  |;
                       ASL A                                ;9FCE84|0A      |;
                       STA.B $B1                            ;9FCE85|85B1    |;
                       LDA.B zpCurntTeamLoopVal             ;9FCE87|A591    |;
                       BEQ CODE_9FCE8E                      ;9FCE89|F003    |;
                       LDA.W #$0034                         ;9FCE8B|A93400  |;
 
          CODE_9FCE8E:
                       CLC                                  ;9FCE8E|18      |; PenCalled 6th
                       ADC.B $B1                            ;9FCE8F|65B1    |;
                       TAY                                  ;9FCE91|A8      |;
                       LDA.W #$FFFF                         ;9FCE92|A9FFFF  |;
                       STA.W $1852,Y                        ;9FCE95|995218  |;
                       LSR.B $B1                            ;9FCE98|46B1    |;
                       JSL.L CODE_9FCEF6                    ;9FCE9A|22F6CE9F|;
 
          CODE_9FCE9E:
                       LDX.B $95                            ;9FCE9E|A695    |;
                       LDA.W #$FFFF                         ;9FCEA0|A9FFFF  |;
                       STA.W $1263,X                        ;9FCEA3|9D6312  |;
                       STA.W $1243,X                        ;9FCEA6|9D4312  |;
                       INC.B $95                            ;9FCEA9|E695    |;
                       INC.B $95                            ;9FCEAB|E695    |;
                       DEC.B $B5                            ;9FCEAD|C6B5    |;
                       BPL CODE_9FCE4B                      ;9FCEAF|109A    |;
                       STX.B $87                            ;9FCEB1|8687    |;
                       LDX.W #$000E                         ;9FCEB3|A20E00  |;
 
          CODE_9FCEB6:
                       PLA                                  ;9FCEB6|68      |;
                       STA.B $89,X                          ;9FCEB7|9589    |;
                       DEX                                  ;9FCEB9|CA      |;
                       DEX                                  ;9FCEBA|CA      |;
                       BPL CODE_9FCEB6                      ;9FCEBB|10F9    |;
                       LDX.B $87                            ;9FCEBD|A687    |;
                       STX.B $87                            ;9FCEBF|8687    |;
                       LDX.W #$0012                         ;9FCEC1|A21200  |;
 
          CODE_9FCEC4:
                       PLA                                  ;9FCEC4|68      |;
                       STA.B $A5,X                          ;9FCEC5|95A5    |;
                       DEX                                  ;9FCEC7|CA      |;
                       DEX                                  ;9FCEC8|CA      |;
                       BPL CODE_9FCEC4                      ;9FCEC9|10F9    |;
                       LDX.B $87                            ;9FCECB|A687    |;
                       LDX.B $95                            ;9FCECD|A695    |;
                       RTL                                  ;9FCECF|6B      |;
 
          CODE_9FCED0:
                       LDA.W PStructPosition,X              ;9FCED0|BD430F  |;
                       STA.B $A5                            ;9FCED3|85A5    |;
                       BMI CODE_9FCEEE                      ;9FCED5|3017    |;
                       LDA.W #$009F                         ;9FCED7|A99F00  |;
                       STA.B $8B                            ;9FCEDA|858B    |;
                       LDA.W #$CEEF                         ;9FCEDC|A9EFCE  |;
                       STA.B $89                            ;9FCEDF|8589    |;
                       LDY.B $A5                            ;9FCEE1|A4A5    |;
                       LDA.B [$89],Y                        ;9FCEE3|B789    |;
                       AND.W #$00FF                         ;9FCEE5|29FF00  |;
                       STA.B $A5                            ;9FCEE8|85A5    |;
                       JML.L CODE_9E8C18                    ;9FCEEA|5C188C9E|;
 
          CODE_9FCEEE:
                       RTL                                  ;9FCEEE|6B      |;
                       db $07,$02,$02,$03,$05,$03,$05       ;9FCEEF|        |;
 
          CODE_9FCEF6:
                       PHX                                  ;9FCEF6|DA      |;
                       PHY                                  ;9FCEF7|5A      |;
                       LDA.W $1283,X                        ;9FCEF8|BD8312  |;
                       AND.W #$FFFB                         ;9FCEFB|29FBFF  |;
                       STA.W $1283,X                        ;9FCEFE|9D8312  |;
                       STZ.B $89                            ;9FCF01|6489    |;
                       LDA.W $1503,X                        ;9FCF03|BD0315  |;
                       BEQ CODE_9FCF0C                      ;9FCF06|F004    |;
                       INC.B $89                            ;9FCF08|E689    |;
                       INC.B $89                            ;9FCF0A|E689    |;
 
          CODE_9FCF0C:
                       LDA.B $B1                            ;9FCF0C|A5B1    |;
                       AND.W #$00FF                         ;9FCF0E|29FF00  |;
                       STA.W $12A3,X                        ;9FCF11|9DA312  |;
                       ASL A                                ;9FCF14|0A      |;
                       STA.B $B1                            ;9FCF15|85B1    |;
                       LDA.W #$000B                         ;9FCF17|A90B00  |;
                       STA.B $A5                            ;9FCF1A|85A5    |;
                       LDA.B $89                            ;9FCF1C|A589    |;
                       BEQ CODE_9FCF23                      ;9FCF1E|F003    |;
                       LDA.W #$0034                         ;9FCF20|A93400  |;
 
          CODE_9FCF23:
                       ADC.B $B1                            ;9FCF23|65B1    |;
                       TAY                                  ;9FCF25|A8      |;
                       LDA.W $1852,Y                        ;9FCF26|B95218  |;
                       STA.B $A9                            ;9FCF29|85A9    |;
                       TYA                                  ;9FCF2B|98      |;
                       STA.B $14                            ;9FCF2C|8514    |;
                       ASL A                                ;9FCF2E|0A      |;
                       ADC.B $14                            ;9FCF2F|6514    |;
                       ASL A                                ;9FCF31|0A      |;
                       STA.B $14                            ;9FCF32|8514    |;
                       LDA.B $A9                            ;9FCF34|A5A9    |;
                       BPL CODE_9FCF44                      ;9FCF36|100C    |;
                       LDA.W #$000A                         ;9FCF38|A90A00  |;
                       STA.B $A5                            ;9FCF3B|85A5    |;
                       LDA.B $A9                            ;9FCF3D|A5A9    |;
                       CMP.W #$FFFE                         ;9FCF3F|C9FEFF  |;
                       BNE CODE_9FCF4E                      ;9FCF42|D00A    |;
 
          CODE_9FCF44:
                       JSL.L CODE_9E8C0E                    ;9FCF44|220E8C9E|;
                       STZ.W $14E3,X                        ;9FCF48|9EE314  |;
                       STZ.W $11A3,X                        ;9FCF4B|9EA311  |;
 
          CODE_9FCF4E:
                       LDA.B $89                            ;9FCF4E|A589    |;
                       BEQ CODE_9FCF55                      ;9FCF50|F003    |;
                       LDA.W #$0034                         ;9FCF52|A93400  |;
 
          CODE_9FCF55:
                       CLC                                  ;9FCF55|18      |; PenCalled 2nd
                       ADC.B $B1                            ;9FCF56|65B1    |;
                       TAY                                  ;9FCF58|A8      |;
                       LDA.W #$FFFF                         ;9FCF59|A9FFFF  |;
                       STA.W $1852,Y                        ;9FCF5C|995218  |;
                       LSR.B $B1                            ;9FCF5F|46B1    |;
                       LDY.B $89                            ;9FCF61|A489    |;
                       LDA.W $1CDC,Y                        ;9FCF63|B9DC1C  |;
                       STA.B $89                            ;9FCF66|8589    |;
                       LDA.W #$009C                         ;9FCF68|A99C00  |;
                       STA.B $8B                            ;9FCF6B|858B    |;
                       LDA.B $89                            ;9FCF6D|A589    |;
                       PHA                                  ;9FCF6F|48      |;
                       LDA.B $8B                            ;9FCF70|A58B    |;
                       PHA                                  ;9FCF72|48      |;
                       LDY.W #$0008                         ;9FCF73|A00800  |;
                       LDA.B [$89],Y                        ;9FCF76|B789    |;
                       CLC                                  ;9FCF78|18      |;
                       ADC.B $89                            ;9FCF79|6589    |;
                       STA.B $89                            ;9FCF7B|8589    |;
                       STZ.W PpAdvDis                       ;9FCF7D|9C0B0D  |;
                       STZ.W PKAdvDis                       ;9FCF80|9C090D  |;
                       STZ.W RubberBandBonus                ;9FCF83|9CE50C  |;
                       STZ.W HmAwAdvDis                     ;9FCF86|9CEF0C  |;
                       LDA.W PStructPosition,X              ;9FCF89|BD430F  |;
                       BNE CODE_9FCF91                      ;9FCF8C|D003    |;
                       JMP.W CODE_9FD01F                    ;9FCF8E|4C1FD0  |;
 
          CODE_9FCF91:
                       LDA.W $15D8                          ;9FCF91|ADD815  |;
                       BIT.W #$2000                         ;9FCF94|890020  |;
                       BEQ CODE_9FCFBF                      ;9FCF97|F026    |;
                       JSL.L CODE_9E827C                    ;9FCF99|227C829E|;
                       BEQ CODE_9FCFAC                      ;9FCF9D|F00D    |;
                       LDY.W #$0001                         ;9FCF9F|A00100  |;
                       LDA.B [$89],Y                        ;9FCFA2|B789    |; Loads PP Adv
                       AND.W #$000F                         ;9FCFA4|290F00  |; Isolate Low Nibble
                       STA.W PpAdvDis                       ;9FCFA7|8D0B0D  |; Store PP Adv
                       BRA CODE_9FCFBF                      ;9FCFAA|8013    |; Skip PK Disadv
 
          CODE_9FCFAC:
                       LDY.W #$0001                         ;9FCFAC|A00100  |;
                       LDA.B [$89],Y                        ;9FCFAF|B789    |; Loads PK Disadv
                       LSR A                                ;9FCFB1|4A      |; Start - Isolates High Nibble
                       LSR A                                ;9FCFB2|4A      |;
                       LSR A                                ;9FCFB3|4A      |;
                       LSR A                                ;9FCFB4|4A      |;
                       AND.W #$000F                         ;9FCFB5|290F00  |; End - Isolates High Nibble
                       EOR.W #$FFFF                         ;9FCFB8|49FFFF  |; EOR to get negative value
                       INC A                                ;9FCFBB|1A      |; Add one
                       STA.W PKAdvDis                       ;9FCFBC|8D090D  |; Store PK Dis
 
          CODE_9FCFBF:
                       LDY.W #$0002                         ;9FCFBF|A00200  |;
                       LDA.B [$89],Y                        ;9FCFC2|B789    |; Loads Road Team Disadvantage
                       AND.W #$000F                         ;9FCFC4|290F00  |; Isolates the Low Nibble
                       EOR.W #$FFFF                         ;9FCFC7|49FFFF  |; EOR with FFFF to get negative number
                       INC A                                ;9FCFCA|1A      |; Add 1
                       STA.B $A5                            ;9FCFCB|85A5    |; Store in $A5 of zero page
                       LDA.W $1503,X                        ;9FCFCD|BD0315  |; ?
                       BNE CODE_9FCFDD                      ;9FCFD0|D00B    |; Not Home Team Skip
                       LDA.B [$89],Y                        ;9FCFD2|B789    |; Loads Home Team Advantage
                       LSR A                                ;9FCFD4|4A      |; Start - Isolate High Nibble
                       LSR A                                ;9FCFD5|4A      |;
                       LSR A                                ;9FCFD6|4A      |;
                       LSR A                                ;9FCFD7|4A      |;
                       AND.W #$000F                         ;9FCFD8|290F00  |; End - Isolate High Nibble
                       STA.B $A5                            ;9FCFDB|85A5    |; Store Hm Team Adv in $A5 of zero page.
 
          CODE_9FCFDD:
                       LDA.B $A5                            ;9FCFDD|A5A5    |;
                       STA.W HmAwAdvDis                     ;9FCFDF|8DEF0C  |; Save HmAwAdvDis
                       LDA.W period                         ;9FCFE2|AD3016  |;
                       SEC                                  ;9FCFE5|38      |;
                       SBC.W #$0002                         ;9FCFE6|E90200  |;
                       BMI CODE_9FD01F                      ;9FCFE9|3034    |;
                       BNE CODE_9FCFFD                      ;9FCFEB|D010    |;
                       JSL.L CODE_9F9B1F                    ;9FCFED|221F9B9F|;
                       LSR.B $A5                            ;9FCFF1|46A5    |;
                       LDA.B $A5                            ;9FCFF3|A5A5    |;
                       SEC                                  ;9FCFF5|38      |;
                       SBC.W clock_remaining_time           ;9FCFF6|ED3216  |;
                       BEQ CODE_9FCFFD                      ;9FCFF9|F002    |;
                       BPL CODE_9FD01F                      ;9FCFFB|1022    |;
 
          CODE_9FCFFD:
                       LDA.W Score_HmAw                     ;9FCFFD|AD8E17  |;
                       SEC                                  ;9FD000|38      |;
                       SBC.W $1790                          ;9FD001|ED9017  |;
                       STA.B $C5                            ;9FD004|85C5    |;
                       BEQ CODE_9FD019                      ;9FD006|F011    |;
                       LDA.W $1503,X                        ;9FD008|BD0315  |;
                       BEQ CODE_9FD015                      ;9FD00B|F008    |;
                       LDA.W #$0000                         ;9FD00D|A90000  |;
                       SEC                                  ;9FD010|38      |;
                       SBC.B $C5                            ;9FD011|E5C5    |;
                       STA.B $C5                            ;9FD013|85C5    |;
          CODE_9FD015:
                       LDA.B $C5                            ;9FD015|A5C5    |;
                       BPL CODE_9FD01F                      ;9FD017|1006    |;
          CODE_9FD019:
                       LDA.W #$0002                         ;9FD019|A90200  |;
                       STA.W RubberBandBonus                ;9FD01C|8DE50C  |;
 
          CODE_9FD01F:
                       PLA                                  ;9FD01F|68      |;
                       STA.B $8B                            ;9FD020|858B    |;
                       PLA                                  ;9FD022|68      |;
                       STA.B $89                            ;9FD023|8589    |;
                       LDY.W #$0000                         ;9FD025|A00000  |;
                       LDA.B [$89],Y                        ;9FD028|B789    |;
                       CLC                                  ;9FD02A|18      |;
                       ADC.B $89                            ;9FD02B|6589    |;
                       STA.B $89                            ;9FD02D|8589    |;
 
   fn_LoadPlyrAttribs:
                       LDA.B [$89]                          ;9FD02F|A789    |;
                       CLC                                  ;9FD031|18      |;
                       ADC.B $89                            ;9FD032|6589    |;
                       ADC.W #$0008                         ;9FD034|690800  |;
                       STA.B $89                            ;9FD037|8589    |;
                       DEC.B $B1                            ;9FD039|C6B1    |;
                       BPL fn_LoadPlyrAttribs               ;9FD03B|10F2    |;
                       LDA.B $89                            ;9FD03D|A589    |;
                       SEC                                  ;9FD03F|38      |;
                       SBC.W #$0008                         ;9FD040|E90800  |;
                       STA.B $89                            ;9FD043|8589    |;
                       LDA.B [$89]                          ;9FD045|A789    |; Load Jersey Number
                       AND.W #$00FF                         ;9FD047|29FF00  |; Low Byte
                       STA.W PStructJerNum,X                ;9FD04A|9DC313  |; Store Jer Num
                       LDY.W #$0001                         ;9FD04D|A00100  |; Next Attribute
                       LDA.B [$89],Y                        ;9FD050|B789    |; Load Weight
                       AND.W #$00F0                         ;9FD052|29F000  |; High nibble of Low byte
                       LSR A                                ;9FD055|4A      |; Divide by 2
                       STA.W PStructWeight,X                ;9FD056|9DC312  |; Store Weight
                       LDA.B [$89],Y                        ;9FD059|B789    |; Agility
                       AND.W #$0007                         ;9FD05B|290700  |; Low nibble of next byte
                       STA.B $00                            ;9FD05E|8500    |; Store Agility in zero page
                       ASL A                                ;9FD060|0A      |; Start rescaling range from 0-6 to 0-15
                       ASL A                                ;9FD061|0A      |;
                       ADC.B $00                            ;9FD062|6500    |;
                       LSR A                                ;9FD064|4A      |; End rescaling range from 0-6 to 0-15
                       LDY.W #$0000                         ;9FD065|A00000  |;
                       JSL.L fn_HotColdCalc                 ;9FD068|222BD29F|; Calc Hot/Cold Adv/Dis
                       STA.W PStructAgility,X               ;9FD06C|9DE312  |; Store Agility in Player Struct
                       LDY.W #$0002                         ;9FD06F|A00200  |; Setup Speed Attribute
                       LDA.B [$89],Y                        ;9FD072|B789    |; Load Address for Speed Attribute
                       LSR A                                ;9FD074|4A      |; Start - Isolates High Nibble of Speed Byte
                       LSR A                                ;9FD075|4A      |;
                       LSR A                                ;9FD076|4A      |;
                       LSR A                                ;9FD077|4A      |;
                       AND.W #$0007                         ;9FD078|290700  |; End -Isolates High Nibble of Speed Byte
                       STA.B $00                            ;9FD07B|8500    |; Temp store speed in Zero Page
                       ASL A                                ;9FD07D|0A      |; Start rescaling range from 0-6 to 0-15
                       ASL A                                ;9FD07E|0A      |;
                       ADC.B $00                            ;9FD07F|6500    |;
                       LSR A                                ;9FD081|4A      |; End rescaling
                       LDY.W #$0001                         ;9FD082|A00100  |;
                       JSL.L fn_HotColdCalc                 ;9FD085|222BD29F|; Calc Hot/Cold Adv/Dis
                       STA.W PStructSpeed,X                 ;9FD089|9D0313  |; Store Speed in Player Struct
                       LDY.W #$0002                         ;9FD08C|A00200  |;
                       LDA.B [$89],Y                        ;9FD08F|B789    |; Load Address for Off Aware Attribute
                       AND.W #$0007                         ;9FD091|290700  |; Isolate Low Nibble
                       STA.B $00                            ;9FD094|8500    |; Temp Store Off Aware in Zero Page
                       ASL A                                ;9FD096|0A      |; Start rescaling range from 0-6 to 0-15
                       ASL A                                ;9FD097|0A      |;
                       ADC.B $00                            ;9FD098|6500    |;
                       LSR A                                ;9FD09A|4A      |; End rescaling range from 0-6 to 0-15
                       CLC                                  ;9FD09B|18      |;
                       ADC.W PpAdvDis                       ;9FD09C|6D0B0D  |; Add PP +/-
                       CLC                                  ;9FD09F|18      |;
                       ADC.W PKAdvDis                       ;9FD0A0|6D090D  |; Add PK +/-
                       CLC                                  ;9FD0A3|18      |;
                       ADC.W HmAwAdvDis                     ;9FD0A4|6DEF0C  |; Add Home/Away +/-
                       CLC                                  ;9FD0A7|18      |;
                       ADC.W RubberBandBonus                ;9FD0A8|6DE50C  |; Add RubberBand Bonus
                       LDY.W #$0002                         ;9FD0AB|A00200  |;
                       JSL.L fn_HotColdCalc                 ;9FD0AE|222BD29F|; Calc Hot/Cold Adv/Dis
                       EOR.W #$000F                         ;9FD0B2|490F00  |; EOR with Max of 0F
                       CLC                                  ;9FD0B5|18      |;
                       ADC.W #$000F                         ;9FD0B6|690F00  |; Add Upper Limit Back to Accum
                       LSR A                                ;9FD0B9|4A      |; Divide by 2
                       STA.W PStructOffAware,X              ;9FD0BA|9D2313  |; Store Off Aware in Player Struct
                       LDY.W #$0003                         ;9FD0BD|A00300  |;
                       LDA.B [$89],Y                        ;9FD0C0|B789    |; Load Address for Def Aware Attribute
                       LSR A                                ;9FD0C2|4A      |; Start - Isolates High Nibble of Def Aware Byte
                       LSR A                                ;9FD0C3|4A      |;
                       LSR A                                ;9FD0C4|4A      |;
                       LSR A                                ;9FD0C5|4A      |;
                       AND.W #$0007                         ;9FD0C6|290700  |; End - Isolates High Nibble of Def Aware Byte
                       STA.B $00                            ;9FD0C9|8500    |; Temp Store Def Aware in Zero Page
                       ASL A                                ;9FD0CB|0A      |; Start rescaling range from 0-6 to 0-15
                       ASL A                                ;9FD0CC|0A      |;
                       ADC.B $00                            ;9FD0CD|6500    |;
                       LSR A                                ;9FD0CF|4A      |; Endt rescaling range from 0-6 to 0-15
                       CLC                                  ;9FD0D0|18      |;
                       ADC.W HmAwAdvDis                     ;9FD0D1|6DEF0C  |; Add Home/Away +/-
                       LDY.W #$0003                         ;9FD0D4|A00300  |;
                       JSL.L fn_HotColdCalc                 ;9FD0D7|222BD29F|; Calc Hot/Cold Adv/Dis
                       PHA                                  ;9FD0DB|48      |; Push the result onto the stack for reterival later
                       LDA.W PStructPosition,X              ;9FD0DC|BD430F  |; Load The Players Position
                       BEQ CODE_9FD0EE                      ;9FD0DF|F00D    |; If Goalie Branch to goalie calc instead.
                       PLA                                  ;9FD0E1|68      |; Pull Def Aware from Stack
                       EOR.W #$000F                         ;9FD0E2|490F00  |; EOR with 15
                       CLC                                  ;9FD0E5|18      |;
                       ADC.W #$0007                         ;9FD0E6|690700  |; Add 7
                       STA.W PStructDefAware,X              ;9FD0E9|9D4313  |; Store Def Aware in Player Struct
                       BRA CODE_9FD0FA                      ;9FD0EC|800C    |; Skip the Goalie Calc
 
          CODE_9FD0EE:
                       PLA                                  ;9FD0EE|68      |;
                       EOR.W #$000F                         ;9FD0EF|490F00  |;
                       CLC                                  ;9FD0F2|18      |;
                       ADC.W #$000F                         ;9FD0F3|690F00  |;
                       LSR A                                ;9FD0F6|4A      |;
                       STA.W PStructDefAware,X              ;9FD0F7|9D4313  |; Store Def Aware in Player Struct For The Goalie
 
          CODE_9FD0FA:
                       LDY.W #$0003                         ;9FD0FA|A00300  |;
                       LDA.B [$89],Y                        ;9FD0FD|B789    |; Load Address for Shot Power Attribute
                       AND.W #$0007                         ;9FD0FF|290700  |; Isolate Low Nibble
                       STA.B $00                            ;9FD102|8500    |; Temp Store Shot Power in Zero Page
                       ASL A                                ;9FD104|0A      |; Start rescaling range from 0-6 to 0-15
                       ASL A                                ;9FD105|0A      |;
                       ADC.B $00                            ;9FD106|6500    |;
                       LSR A                                ;9FD108|4A      |; End rescaling range from 0-6 to 0-15
                       LDY.W #$0004                         ;9FD109|A00400  |;
                       JSL.L fn_HotColdCalc                 ;9FD10C|222BD29F|; Calc Hot/Cold Adv/Dis
                       STA.W PStructShotPower,X             ;9FD110|9D6313  |; Store Shot Power in Player Struct
                       LDY.W #$0004                         ;9FD113|A00400  |;
                       LDA.B [$89],Y                        ;9FD116|B789    |; Load Address for Checking Attribute
                       LSR A                                ;9FD118|4A      |; Start - Isolates High Nibble of Checking Byte
                       LSR A                                ;9FD119|4A      |;
                       LSR A                                ;9FD11A|4A      |;
                       LSR A                                ;9FD11B|4A      |;
                       AND.W #$0007                         ;9FD11C|290700  |; End - Isolates High Nibble of Checking Byte
                       STA.B $00                            ;9FD11F|8500    |; Temp Store Checking in Zero Page
                       ASL A                                ;9FD121|0A      |; Start rescaling range from 0-6 to 0-15
                       ASL A                                ;9FD122|0A      |;
                       ADC.B $00                            ;9FD123|6500    |;
                       LSR A                                ;9FD125|4A      |; End rescaling range from 0-6 to 0-15
                       CLC                                  ;9FD126|18      |;
                       ADC.W RubberBandBonus                ;9FD127|6DE50C  |; Add RubberBandBonus
                       LDY.W #$0005                         ;9FD12A|A00500  |;
                       JSL.L fn_HotColdCalc                 ;9FD12D|222BD29F|; Calc Hot/Cold Adv/Dis
                       STA.W PStructChecking,X              ;9FD131|9D8314  |; Store Checking in Player Struct
                       LDA.W $0E03,X                        ;9FD134|BD030E  |; ?
                       AND.W #$F7FF                         ;9FD137|29FFF7  |;
                       STA.W $0E03,X                        ;9FD13A|9D030E  |; ?
                       LDY.W #$0004                         ;9FD13D|A00400  |;
                       LDA.B [$89],Y                        ;9FD140|B789    |; Load Address for Handed Attribute
                       AND.W #$0001                         ;9FD142|290100  |; Isolate the Low Byte
                       EOR.W #$0001                         ;9FD145|490100  |; Check If Odd or Even and invert result
                       STA.W PStructHanded,X                ;9FD148|9DA314  |; Store Handed in Player Struct
                       BNE CODE_9FD156                      ;9FD14B|D009    |; Branch If Even Number
                       LDA.W $0E03,X                        ;9FD14D|BD030E  |; ?
                       ORA.W #$0800                         ;9FD150|090008  |;
                       STA.W $0E03,X                        ;9FD153|9D030E  |; ?
 
          CODE_9FD156:
                       LDA.B [$89],Y                        ;9FD156|B789    |; Load Address for Handed Attribute
                       AND.W #$000E                         ;9FD158|290E00  |; Isolate The Low Byte
                       STA.W PStructHandedActualValue,X     ;9FD15B|9D6314  |; Store the Actual Value of the byte (Not Used anywhere)
                       LDY.W #$0005                         ;9FD15E|A00500  |;
                       LDA.B [$89],Y                        ;9FD161|B789    |; Load Address for Stick Hanl Attribute
                       LSR A                                ;9FD163|4A      |; Start - Isolates High Nibble of Stick Hanl Byte
                       LSR A                                ;9FD164|4A      |;
                       LSR A                                ;9FD165|4A      |;
                       LSR A                                ;9FD166|4A      |;
                       AND.W #$0007                         ;9FD167|290700  |; End - Isolates High Nibble of Stick Hanl Byte
                       STA.B $00                            ;9FD16A|8500    |; Temp Store Stick Hanl in Zero Page
                       ASL A                                ;9FD16C|0A      |; Start rescaling range from 0-6 to 0-15
                       ASL A                                ;9FD16D|0A      |;
                       ADC.B $00                            ;9FD16E|6500    |;
                       LSR A                                ;9FD170|4A      |; End rescaling range from 0-6 to 0-15
                       CLC                                  ;9FD171|18      |;
                       ADC.W PpAdvDis                       ;9FD172|6D0B0D  |; Add PP +/-
                       CLC                                  ;9FD175|18      |;
                       ADC.W PKAdvDis                       ;9FD176|6D090D  |; Add PK +/-
                       CLC                                  ;9FD179|18      |;
                       ADC.W HmAwAdvDis                     ;9FD17A|6DEF0C  |; Add Home Away +/-
                       LDY.W #$0006                         ;9FD17D|A00600  |;
                       JSL.L fn_HotColdCalc                 ;9FD180|222BD29F|; Calc Hot/Cold Adv/Dis
                       STA.W PStructStickHanl,X             ;9FD184|9D0314  |; Store Stick Hanl In Player Struct
                       LDY.W #$0005                         ;9FD187|A00500  |;
                       LDA.B [$89],Y                        ;9FD18A|B789    |; Load Address for Shot Accur Attribute
                       AND.W #$0007                         ;9FD18C|290700  |; Isolate Low Nibble
                       STA.B $00                            ;9FD18F|8500    |; Temp Store Shot Accur in Zero Page
                       ASL A                                ;9FD191|0A      |; Start rescaling range from 0-6 to 0-15
                       ASL A                                ;9FD192|0A      |;
                       ADC.B $00                            ;9FD193|6500    |;
                       LSR A                                ;9FD195|4A      |; End rescaling range from 0-6 to 0-15
                       CLC                                  ;9FD196|18      |;
                       ADC.W PpAdvDis                       ;9FD197|6D0B0D  |; Add PP +/-
                       CLC                                  ;9FD19A|18      |;
                       ADC.W PKAdvDis                       ;9FD19B|6D090D  |; Add PK +/-
                       CLC                                  ;9FD19E|18      |;
                       ADC.W HmAwAdvDis                     ;9FD19F|6DEF0C  |; Add Home Away +/-
                       LDY.W #$0007                         ;9FD1A2|A00700  |;
                       JSL.L fn_HotColdCalc                 ;9FD1A5|222BD29F|; Calc Hot/Cold +/-
                       STA.W PStructShotAccur,X             ;9FD1A9|9D8313  |; Store Shot Accurl In Player Struct
                       LDY.W #$0006                         ;9FD1AC|A00600  |;
                       LDA.B [$89],Y                        ;9FD1AF|B789    |; Load Address for Endurance Attribute
                       LSR A                                ;9FD1B1|4A      |; Start - Isolates High Nibble of Endurance Byte
                       LSR A                                ;9FD1B2|4A      |;
                       LSR A                                ;9FD1B3|4A      |;
                       LSR A                                ;9FD1B4|4A      |;
                       AND.W #$0007                         ;9FD1B5|290700  |; End - Isolates High Nibble of Endurance Byte
                       STA.B $00                            ;9FD1B8|8500    |; Temp Store Endurance in Zero Page
                       ASL A                                ;9FD1BA|0A      |; Start rescaling range from 0-6 to 0-15
                       ASL A                                ;9FD1BB|0A      |;
                       ADC.B $00                            ;9FD1BC|6500    |;
                       LSR A                                ;9FD1BE|4A      |; End rescaling range from 0-6 to 0-15
                       LDY.W #$0008                         ;9FD1BF|A00800  |;
                       JSL.L fn_HotColdCalc                 ;9FD1C2|222BD29F|; Calc Hot/Cold +/-
                       STA.W PStructEndurance,X             ;9FD1C6|9D2314  |; Store Endurance in Player Struct
                       LDY.W #$0006                         ;9FD1C9|A00600  |;
                       LDA.B [$89],Y                        ;9FD1CC|B789    |; Load Address for Roughing Attribute
                       AND.W #$0007                         ;9FD1CE|290700  |; Isolate Low Nibble
                       STA.B $00                            ;9FD1D1|8500    |; Temp store Roughing in Zero Page
                       ASL A                                ;9FD1D3|0A      |; Start rescaling range from 0-6 to 0-15
                       ASL A                                ;9FD1D4|0A      |;
                       ADC.B $00                            ;9FD1D5|6500    |;
                       LSR A                                ;9FD1D7|4A      |; End rescaling range from 0-6 to 0-15
                       CLC                                  ;9FD1D8|18      |;
                       ADC.W RubberBandBonus                ;9FD1D9|6DE50C  |; Add Rubber Band Bonus
                       CLC                                  ;9FD1DC|18      |;
                       ADC.W RubberBandBonus                ;9FD1DD|6DE50C  |; Add Rubber Band Bonus Again
                       LDY.W #$0009                         ;9FD1E0|A00900  |;
                       JSL.L fn_HotColdCalc                 ;9FD1E3|222BD29F|; Calc Hot/Cold +/-
                       STA.W PStructRoughing,X              ;9FD1E7|9DE313  |; Store Roughing in Player Struct
                       LDY.W #$0007                         ;9FD1EA|A00700  |;
                       LDA.B [$89],Y                        ;9FD1ED|B789    |; Load Address for Pass Accuracy
                       LSR A                                ;9FD1EF|4A      |; Start - Isolates High Nibble of PassAccur Byte
                       LSR A                                ;9FD1F0|4A      |;
                       LSR A                                ;9FD1F1|4A      |;
                       LSR A                                ;9FD1F2|4A      |;
                       AND.W #$0007                         ;9FD1F3|290700  |; End - Isolates High Nibble of PassAccur Byte
                       STA.B $00                            ;9FD1F6|8500    |; Temp Store PassAccur in Zero Page
                       ASL A                                ;9FD1F8|0A      |; Start rescaling range from 0-6 to 0-15
                       ASL A                                ;9FD1F9|0A      |;
                       ADC.B $00                            ;9FD1FA|6500    |;
                       LSR A                                ;9FD1FC|4A      |; End rescaling range from 0-6 to 0-15
                       CLC                                  ;9FD1FD|18      |;
                       ADC.W PpAdvDis                       ;9FD1FE|6D0B0D  |; Add PP +/-
                       CLC                                  ;9FD201|18      |;
                       ADC.W HmAwAdvDis                     ;9FD202|6DEF0C  |; Add Home Away +/-
                       LDY.W #$000A                         ;9FD205|A00A00  |;
                       JSL.L fn_HotColdCalc                 ;9FD208|222BD29F|; Calc Hot/Cold +/-
                       STA.W PStructPassAccur,X             ;9FD20C|9DA313  |; Store Pass Accur in Player Struct
                       LDY.W #$0007                         ;9FD20F|A00700  |;
                       LDA.B [$89],Y                        ;9FD212|B789    |; Load Address for Aggression Attribute
                       AND.W #$0007                         ;9FD214|290700  |; Isolate The Low Byte
                       STA.B $00                            ;9FD217|8500    |; Temp Store Aggression in Zero Page
                       ASL A                                ;9FD219|0A      |; Start rescaling range from 0-6 to 0-15
                       ASL A                                ;9FD21A|0A      |;
                       ADC.B $00                            ;9FD21B|6500    |;
                       LSR A                                ;9FD21D|4A      |; End rescaling range from 0-6 to 0-15
                       LDY.W #$000B                         ;9FD21E|A00B00  |;
                       JSL.L fn_HotColdCalc                 ;9FD221|222BD29F|; Calc Hot/Cold +/-
                       STA.W PStructAggression,X            ;9FD225|9D4314  |; Store Agression Attribute in Player Struct
                       PLY                                  ;9FD228|7A      |;
                       PLX                                  ;9FD229|FA      |;
                       RTL                                  ;9FD22A|6B      |;
 
       fn_HotColdCalc:
                       STA.B $16                            ;9FD22B|8516    |; Store Orig Value in zero page
                       TYA                                  ;9FD22D|98      |; Transfer Y to A
                       CLC                                  ;9FD22E|18      |; Clear the carry flag
                       ADC.B $14                            ;9FD22F|6514    |; $14 index to players RNG
                       TAY                                  ;9FD231|A8      |; Transfer A to Y
                       SEP #$20                             ;9FD232|E220    |; Set Accum to 8 bit
                       JSR.W DivideBy2                      ;9FD234|2032FB  |; Hijack for Hot/Cold Divide by 2 error fix
                       NOP                                  ;9FD237|EA      |; Divide by 2 BUG: LSR treats as unsigned
                       NOP                                  ;9FD238|EA      |; Divide by 2 BUG: LSR treats as unsigned
                       BIT.B #$00                           ;9FD239|8900    |; Check if the result is zero
                       BEQ CODE_9FD23F                      ;9FD23B|F002    |; Jmp if result is zero
                       ORA.B #$00                           ;9FD23D|0900    |; Sets Processor status flags? Leaves A alone
 
          CODE_9FD23F:
                       CLC                                  ;9FD23F|18      |;
                       ADC.B $16                            ;9FD240|6516    |; Add original value back to A
                       BPL CODE_9FD246                      ;9FD242|1002    |; If Positive jump to cmp
                       LDA.B #$00                           ;9FD244|A900    |; Negative so set value to 00
 
          CODE_9FD246:
                       CMP.B #$0F                           ;9FD246|C90F    |; Compare to MAX 0F (15)
                       BCC CODE_9FD24C                      ;9FD248|9002    |; Branch if less than 0F (15)
                       LDA.B #$0F                           ;9FD24A|A90F    |; Set Max Value 0F(15)
 
          CODE_9FD24C:
                       REP #$20                             ;9FD24C|C220    |; Set Accumulator back to 16 bit
                       AND.W #$00FF                         ;9FD24E|29FF00  |; Set the Word to only include the byte
                       RTL                                  ;9FD251|6B      |; Exit and return to calling code
 
          CODE_9FD252:
                       LDA.B $A5                            ;9FD252|A5A5    |;
                       PHA                                  ;9FD254|48      |;
                       LDA.B $A7                            ;9FD255|A5A7    |;
                       PHA                                  ;9FD257|48      |;
                       LDA.B $A9                            ;9FD258|A5A9    |;
                       PHA                                  ;9FD25A|48      |;
                       LDA.B $AB                            ;9FD25B|A5AB    |;
                       PHA                                  ;9FD25D|48      |;
                       LDA.B $AD                            ;9FD25E|A5AD    |;
                       PHA                                  ;9FD260|48      |;
                       LDA.B $AF                            ;9FD261|A5AF    |;
                       PHA                                  ;9FD263|48      |;
                       STX.B $87                            ;9FD264|8687    |;
                       LDX.W #$0000                         ;9FD266|A20000  |;
 
          CODE_9FD269:
                       LDA.B $89,X                          ;9FD269|B589    |;
                       PHA                                  ;9FD26B|48      |;
                       INX                                  ;9FD26C|E8      |;
                       INX                                  ;9FD26D|E8      |;
                       CPX.W #$0010                         ;9FD26E|E01000  |;
                       BNE CODE_9FD269                      ;9FD271|D0F6    |;
                       LDX.B $87                            ;9FD273|A687    |;
                       STZ.B zpCurntTeamLoopVal             ;9FD275|6491    |;
                       JSL.L CODE_9FD2A7                    ;9FD277|22A7D29F|;
                       LDA.W #$0002                         ;9FD27B|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9FD27E|8591    |;
                       JSL.L CODE_9FD2A7                    ;9FD280|22A7D29F|;
                       STX.B $87                            ;9FD284|8687    |;
                       LDX.W #$000E                         ;9FD286|A20E00  |;
 
          CODE_9FD289:
                       PLA                                  ;9FD289|68      |;
                       STA.B $89,X                          ;9FD28A|9589    |;
                       DEX                                  ;9FD28C|CA      |;
                       DEX                                  ;9FD28D|CA      |;
                       BPL CODE_9FD289                      ;9FD28E|10F9    |;
                       LDX.B $87                            ;9FD290|A687    |;
                       PLA                                  ;9FD292|68      |;
                       STA.B $AF                            ;9FD293|85AF    |;
                       PLA                                  ;9FD295|68      |;
                       STA.B $AD                            ;9FD296|85AD    |;
                       PLA                                  ;9FD298|68      |;
                       STA.B $AB                            ;9FD299|85AB    |;
                       PLA                                  ;9FD29B|68      |;
                       STA.B $A9                            ;9FD29C|85A9    |;
                       PLA                                  ;9FD29E|68      |;
                       STA.B $A7                            ;9FD29F|85A7    |;
                       PLA                                  ;9FD2A1|68      |;
                       STA.B $A5                            ;9FD2A2|85A5    |;
                       LDX.B $95                            ;9FD2A4|A695    |;
                       RTL                                  ;9FD2A6|6B      |;
 
          CODE_9FD2A7:
                       LDY.B zpCurntTeamLoopVal             ;9FD2A7|A491    |;
                       LDA.W $17DE,Y                        ;9FD2A9|B9DE17  |;
                       AND.W #$FFEF                         ;9FD2AC|29EFFF  |;
                       STA.W $17DE,Y                        ;9FD2AF|99DE17  |;
                       LDA.W #$0005                         ;9FD2B2|A90500  |;
                       STA.B $AD                            ;9FD2B5|85AD    |;
                       LDX.W $1766,Y                        ;9FD2B7|BE6617  |;
                       STX.B $95                            ;9FD2BA|8695    |;
 
          CODE_9FD2BC:
                       STZ.W $1543,X                        ;9FD2BC|9E4315  |;
                       LDA.W $1283,X                        ;9FD2BF|BD8312  |;
                       AND.W #$2FFF                         ;9FD2C2|29FF2F  |;
                       STA.W $1283,X                        ;9FD2C5|9D8312  |;
                       LDA.W PStructPosition,X              ;9FD2C8|BD430F  |;
                       BMI CODE_9FD2F3                      ;9FD2CB|3026    |;
                       BNE CODE_9FD2D4                      ;9FD2CD|D005    |;
                       LDA.W #$E0FE                         ;9FD2CF|A9FEE0  |;
                       BRA CODE_9FD2D7                      ;9FD2D2|8003    |;
 
          CODE_9FD2D4:
                       LDA.W #$EA1A                         ;9FD2D4|A91AEA  |;
 
          CODE_9FD2D7:
                       JSL.L CODE_9EA3F1                    ;9FD2D7|22F1A39E|;
                       STZ.W $0F23,X                        ;9FD2DB|9E230F  |;
                       STZ.W $1203,X                        ;9FD2DE|9E0312  |;
                       LDA.W $1283,X                        ;9FD2E1|BD8312  |;
                       AND.W #$FFF6                         ;9FD2E4|29F6FF  |;
                       STA.W $1283,X                        ;9FD2E7|9D8312  |;
                       STZ.W $1563,X                        ;9FD2EA|9E6315  |;
                       STZ.W $1523,X                        ;9FD2ED|9E2315  |;
                       STZ.W $14E3,X                        ;9FD2F0|9EE314  |;
 
          CODE_9FD2F3:
                       INC.B $95                            ;9FD2F3|E695    |;
                       INC.B $95                            ;9FD2F5|E695    |;
                       LDX.B $95                            ;9FD2F7|A695    |;
                       DEC.B $AD                            ;9FD2F9|C6AD    |;
                       BPL CODE_9FD2BC                      ;9FD2FB|10BF    |;
                       RTL                                  ;9FD2FD|6B      |;
                       db $AF,$C6,$34,$7E,$C9,$01,$00,$D0   ;9FD2FE|        |;
                       db $1D,$22,$57,$C7,$9F,$A4,$91,$B9   ;9FD306|        |;
                       db $DE,$17,$89,$08,$00,$D0,$0F,$09   ;9FD30E|        |;
                       db $08,$00,$99,$DE,$17,$A9,$0C,$00   ;9FD316|        |;
                       db $1C,$D8,$15,$4C,$25,$D3,$6B,$22   ;9FD31E|        |;
                       db $89,$E0,$9F,$E6,$A5,$E6,$A9,$AF   ;9FD326|        |;
                       db $D0,$35,$7E,$85,$AD,$AF,$20,$31   ;9FD32E|        |;
                       db $7E,$D0,$04,$22,$9C,$BD,$9F,$22   ;9FD336|        |;
                       db $89,$E0,$9F,$AD,$11,$0D,$38,$E9   ;9FD33E|        |;
                       db $0F,$00,$30,$08,$A9,$01,$00,$0C   ;9FD346|        |;
                       db $DC,$15,$80,$08,$22,$69,$A6,$9F   ;9FD34E|        |;
                       db $22,$89,$E0,$9F,$22,$00,$80,$9D   ;9FD356|        |;
                       db $CE,$11,$0D,$CE,$11,$0D,$EE,$0F   ;9FD35E|        |;
                       db $0D,$A9,$02,$00,$85,$B5,$AD,$0F   ;9FD366|        |;
                       db $0D,$48,$A3,$01,$8D,$0F,$0D,$A5   ;9FD36E|        |;
                       db $B5,$85,$A5,$22,$B2,$D7,$9F,$A5   ;9FD376|        |;
                       db $A5,$30,$57,$A4,$91,$B9,$DE,$17   ;9FD37E|        |;
                       db $89,$08,$00,$D0,$0C,$A5,$B5,$D9   ;9FD386|        |;
                       db $E6,$17,$D0,$43,$B9,$96,$17,$85   ;9FD38E|        |;
                       db $A5,$A9,$00,$00,$85,$8F,$A9,$2A   ;9FD396|        |;
                       db $0A,$85,$8D,$A9,$04,$00,$87,$8D   ;9FD39E|        |;
                       db $DA,$A6,$B5,$BF,$04,$D4,$9F,$FA   ;9FD3A6|        |;
                       db $29,$FF,$00,$09,$00,$20,$A0,$02   ;9FD3AE|        |;
                       db $00,$97,$8D,$22,$BE,$C7,$9E,$A5   ;9FD3B6|        |;
                       db $A5,$48,$A9,$80,$00,$85,$8F,$A9   ;9FD3BE|        |;
                       db $BE,$D6,$85,$8D,$22,$C6,$CF,$9E   ;9FD3C6|        |;
                       db $68,$85,$A5,$22,$A6,$DF,$9F,$CE   ;9FD3CE|        |;
                       db $11,$0D,$C6,$B5,$10,$94,$68,$18   ;9FD3D6|        |;
                       db $69,$05,$00,$8D,$0F,$0D,$A4,$91   ;9FD3DE|        |;
                       db $B9,$98,$1C,$A9,$9C,$00,$85,$8F   ;9FD3E6|        |;
                       db $B9,$DC,$1C,$85,$8D,$A0,$04,$00   ;9FD3EE|        |;
                       db $18,$77,$8D,$85,$8D,$18,$67,$8D   ;9FD3F6|        |;
                       db $85,$8D,$5C,$BE,$C7,$9E,$59,$42   ;9FD3FE|        |;
                       db $41                               ;9FD406|        |;
 
          CODE_9FD407:
                       STX.B $87                            ;9FD407|8687    |;
                       LDX.W #$0000                         ;9FD409|A20000  |;
 
          CODE_9FD40C:
                       LDA.B $A5,X                          ;9FD40C|B5A5    |;
                       PHA                                  ;9FD40E|48      |;
                       INX                                  ;9FD40F|E8      |;
                       INX                                  ;9FD410|E8      |;
                       CPX.W #$0018                         ;9FD411|E01800  |;
                       BNE CODE_9FD40C                      ;9FD414|D0F6    |;
                       LDX.B $87                            ;9FD416|A687    |;
                       STX.B $87                            ;9FD418|8687    |;
                       LDX.W #$0000                         ;9FD41A|A20000  |;
 
          CODE_9FD41D:
                       LDA.B $89,X                          ;9FD41D|B589    |;
                       PHA                                  ;9FD41F|48      |;
                       INX                                  ;9FD420|E8      |;
                       INX                                  ;9FD421|E8      |;
                       CPX.W #$0014                         ;9FD422|E01400  |;
                       BNE CODE_9FD41D                      ;9FD425|D0F6    |;
                       LDX.B $87                            ;9FD427|A687    |;
                       LDY.B zpCurntTeamLoopVal             ;9FD429|A491    |;
                       LDX.W $1766,Y                        ;9FD42B|BE6617  |;
                       STX.B $95                            ;9FD42E|8695    |;
                       LDA.W #$0005                         ;9FD430|A90500  |;
                       STA.B $B5                            ;9FD433|85B5    |;
 
          CODE_9FD435:
                       LDA.W #$FFFF                         ;9FD435|A9FFFF  |;
                       STA.W $1243,X                        ;9FD438|9D4312  |;
                       STA.W $1263,X                        ;9FD43B|9D6312  |;
                       INX                                  ;9FD43E|E8      |;
                       INX                                  ;9FD43F|E8      |;
                       STX.B $95                            ;9FD440|8695    |;
                       DEC.B $B5                            ;9FD442|C6B5    |;
                       BPL CODE_9FD435                      ;9FD444|10EF    |;
                       JSL.L CODE_9FD55D                    ;9FD446|225DD59F|;
                       LDA.W #$0005                         ;9FD44A|A90500  |;
                       STA.B $B5                            ;9FD44D|85B5    |;
                       LDA.W #$007E                         ;9FD44F|A97E00  |;
                       STA.B $9B                            ;9FD452|859B    |;
                       LDA.W #$3114                         ;9FD454|A91431  |;
                       STA.B $99                            ;9FD457|8599    |;
 
          CODE_9FD459:
                       LDY.B $B5                            ;9FD459|A4B5    |;
                       LDA.B [$99],Y                        ;9FD45B|B799    |;
                       AND.W #$00FF                         ;9FD45D|29FF00  |;
                       STA.B $B9                            ;9FD460|85B9    |;
                       BEQ CODE_9FD4BE                      ;9FD462|F05A    |;
                       DEC.B $B9                            ;9FD464|C6B9    |;
                       LDA.W #$0005                         ;9FD466|A90500  |;
                       STA.B $B1                            ;9FD469|85B1    |;
                       LDY.B zpCurntTeamLoopVal             ;9FD46B|A491    |;
                       LDX.W $1766,Y                        ;9FD46D|BE6617  |;
                       DEX                                  ;9FD470|CA      |;
                       DEX                                  ;9FD471|CA      |;
 
          CODE_9FD472:
                       INX                                  ;9FD472|E8      |;
                       INX                                  ;9FD473|E8      |;
                       STX.B $95                            ;9FD474|8695    |;
                       LDA.W $12A3,X                        ;9FD476|BDA312  |;
                       AND.W #$00FF                         ;9FD479|29FF00  |;
                       STA.B $C5                            ;9FD47C|85C5    |;
                       LDA.B $B9                            ;9FD47E|A5B9    |;
                       AND.W #$00FF                         ;9FD480|29FF00  |;
                       CMP.B $C5                            ;9FD483|C5C5    |;
                       BEQ CODE_9FD48D                      ;9FD485|F006    |;
                       DEC.B $B1                            ;9FD487|C6B1    |;
                       BPL CODE_9FD472                      ;9FD489|10E7    |;
                       BRA CODE_9FD4BE                      ;9FD48B|8031    |;
 
          CODE_9FD48D:
                       LDA.B $B5                            ;9FD48D|A5B5    |;
                       CLC                                  ;9FD48F|18      |;
                       ADC.W #$0006                         ;9FD490|690600  |;
                       TAY                                  ;9FD493|A8      |;
                       LDA.B [$99],Y                        ;9FD494|B799    |;
                       AND.W #$00FF                         ;9FD496|29FF00  |;
                       BIT.W #$0080                         ;9FD499|898000  |;
                       BEQ CODE_9FD4A1                      ;9FD49C|F003    |;
                       db $09,$00,$FF                       ;9FD49E|        |;
 
          CODE_9FD4A1:
                       STA.W $1243,X                        ;9FD4A1|9D4312  |;
                       LDA.B $B9                            ;9FD4A4|A5B9    |;
                       AND.W #$00FF                         ;9FD4A6|29FF00  |;
                       BIT.W #$0080                         ;9FD4A9|898000  |;
                       BEQ CODE_9FD4B1                      ;9FD4AC|F003    |;
                       db $09,$00,$FF                       ;9FD4AE|        |;
 
          CODE_9FD4B1:
                       STA.W $1263,X                        ;9FD4B1|9D6312  |;
                       LDY.B $B5                            ;9FD4B4|A4B5    |;
                       SEP #$20                             ;9FD4B6|E220    |;
                       LDA.B #$00                           ;9FD4B8|A900    |;
                       STA.B [$99],Y                        ;9FD4BA|9799    |;
                       REP #$20                             ;9FD4BC|C220    |;
 
          CODE_9FD4BE:
                       DEC.B $B5                            ;9FD4BE|C6B5    |;
                       BPL CODE_9FD459                      ;9FD4C0|1097    |;
                       LDA.W #$0005                         ;9FD4C2|A90500  |;
                       STA.B $B5                            ;9FD4C5|85B5    |;
                       LDA.W #$007E                         ;9FD4C7|A97E00  |;
                       STA.B $9B                            ;9FD4CA|859B    |;
                       LDA.W #$3114                         ;9FD4CC|A91431  |;
                       STA.B $99                            ;9FD4CF|8599    |;
 
          CODE_9FD4D1:
                       LDY.B $B5                            ;9FD4D1|A4B5    |;
                       LDA.B [$99],Y                        ;9FD4D3|B799    |;
                       AND.W #$00FF                         ;9FD4D5|29FF00  |;
                       STA.B $B9                            ;9FD4D8|85B9    |;
                       BEQ CODE_9FD53A                      ;9FD4DA|F05E    |;
                       DEC.B $B9                            ;9FD4DC|C6B9    |;
                       LDA.W #$0005                         ;9FD4DE|A90500  |;
                       STA.B $B1                            ;9FD4E1|85B1    |;
                       LDY.B zpCurntTeamLoopVal             ;9FD4E3|A491    |;
                       LDX.W $1766,Y                        ;9FD4E5|BE6617  |;
                       DEX                                  ;9FD4E8|CA      |;
                       DEX                                  ;9FD4E9|CA      |;
 
          CODE_9FD4EA:
                       INX                                  ;9FD4EA|E8      |;
                       INX                                  ;9FD4EB|E8      |;
                       STX.B $95                            ;9FD4EC|8695    |;
                       LDA.W $1263,X                        ;9FD4EE|BD6312  |;
                       BIT.W #$0080                         ;9FD4F1|898000  |;
                       BNE CODE_9FD4FC                      ;9FD4F4|D006    |;
                       DEC.B $B1                            ;9FD4F6|C6B1    |;
                       BPL CODE_9FD4EA                      ;9FD4F8|10F0    |;
                       db $80,$02                           ;9FD4FA|        |;
 
          CODE_9FD4FC:
                       STX.B $89                            ;9FD4FC|8689    |;
                       LDA.W PStructPosition,X              ;9FD4FE|BD430F  |;
                       BPL CODE_9FD507                      ;9FD501|1004    |;
                       db $C6,$B1,$10,$E3                   ;9FD503|        |;
 
          CODE_9FD507:
                       LDA.B $B5                            ;9FD507|A5B5    |;
                       CLC                                  ;9FD509|18      |;
                       ADC.W #$0006                         ;9FD50A|690600  |;
                       TAY                                  ;9FD50D|A8      |;
                       LDA.B [$99],Y                        ;9FD50E|B799    |;
                       AND.W #$00FF                         ;9FD510|29FF00  |;
                       BIT.W #$0080                         ;9FD513|898000  |;
                       BEQ CODE_9FD51B                      ;9FD516|F003    |;
                       db $09,$00,$FF                       ;9FD518|        |;
 
          CODE_9FD51B:
                       LDY.B $89                            ;9FD51B|A489    |;
                       STA.W $1243,Y                        ;9FD51D|994312  |;
                       LDA.B $B9                            ;9FD520|A5B9    |;
                       AND.W #$00FF                         ;9FD522|29FF00  |;
                       BIT.W #$0080                         ;9FD525|898000  |;
                       BEQ CODE_9FD52D                      ;9FD528|F003    |;
                       db $09,$00,$FF                       ;9FD52A|        |;
 
          CODE_9FD52D:
                       STA.W $1263,Y                        ;9FD52D|996312  |;
                       LDY.B $B5                            ;9FD530|A4B5    |;
                       SEP #$20                             ;9FD532|E220    |;
                       LDA.B #$00                           ;9FD534|A900    |;
                       STA.B [$99],Y                        ;9FD536|9799    |;
                       REP #$20                             ;9FD538|C220    |;
 
          CODE_9FD53A:
                       DEC.B $B5                            ;9FD53A|C6B5    |;
                       BPL CODE_9FD4D1                      ;9FD53C|1093    |;
                       STX.B $87                            ;9FD53E|8687    |;
                       LDX.W #$0012                         ;9FD540|A21200  |;
 
          CODE_9FD543:
                       PLA                                  ;9FD543|68      |;
                       STA.B $89,X                          ;9FD544|9589    |;
                       DEX                                  ;9FD546|CA      |;
                       DEX                                  ;9FD547|CA      |;
                       BPL CODE_9FD543                      ;9FD548|10F9    |;
                       LDX.B $87                            ;9FD54A|A687    |;
                       STX.B $87                            ;9FD54C|8687    |;
                       LDX.W #$0016                         ;9FD54E|A21600  |;
 
          CODE_9FD551:
                       PLA                                  ;9FD551|68      |;
                       STA.B $A5,X                          ;9FD552|95A5    |;
                       DEX                                  ;9FD554|CA      |;
                       DEX                                  ;9FD555|CA      |;
                       BPL CODE_9FD551                      ;9FD556|10F9    |;
                       LDX.B $87                            ;9FD558|A687    |;
                       LDX.B $95                            ;9FD55A|A695    |;
                       RTL                                  ;9FD55C|6B      |;
 
          CODE_9FD55D:
                       LDA.W #$007E                         ;9FD55D|A97E00  |;
                       STA.B $9B                            ;9FD560|859B    |;
                       LDA.W #$3114                         ;9FD562|A91431  |;
                       STA.B $99                            ;9FD565|8599    |;
                       LDA.W #$0000                         ;9FD567|A90000  |;
                       STA.B [$99]                          ;9FD56A|8799    |;
                       LDY.W #$0002                         ;9FD56C|A00200  |;
                       STA.B [$99],Y                        ;9FD56F|9799    |;
                       LDY.W #$0004                         ;9FD571|A00400  |;
                       STA.B [$99],Y                        ;9FD574|9799    |;
                       LDA.W #$0080                         ;9FD576|A98000  |;
                       STA.B $8B                            ;9FD579|858B    |;
                       LDA.W #$D6B0                         ;9FD57B|A9B0D6  |;
                       STA.B $89                            ;9FD57E|8589    |;
                       LDA.W IsPenaltyShot                  ;9FD580|AD9B1E  |;
                       BEQ CODE_9FD59A                      ;9FD583|F015    |;
                       LDA.W #$0080                         ;9FD585|A98000  |;
                       STA.B $8B                            ;9FD588|858B    |;
                       LDA.W #$D6B7                         ;9FD58A|A9B7D6  |;
                       STA.B $89                            ;9FD58D|8589    |;
                       LDA.B zpCurntTeamLoopVal             ;9FD58F|A591    |;
                       CMP.W $1E91                          ;9FD591|CD911E  |;
                       BNE CODE_9FD5A3                      ;9FD594|D00D    |;
                       INC.B $89                            ;9FD596|E689    |;
                       BRA CODE_9FD5A3                      ;9FD598|8009    |;
 
          CODE_9FD59A:
                       LDY.B zpCurntTeamLoopVal             ;9FD59A|A491    |;
                       LDA.W GoalieInNetHmAw,Y              ;9FD59C|B9AA17  |;
                       BPL CODE_9FD5A3                      ;9FD59F|1002    |;
                       INC.B $89                            ;9FD5A1|E689    |;
 
          CODE_9FD5A3:
                       LDA.B $97                            ;9FD5A3|A597    |;
                       PHA                                  ;9FD5A5|48      |;
                       LDA.B $95                            ;9FD5A6|A595    |;
                       PHA                                  ;9FD5A8|48      |;
                       JSL.L fn_rtnEdtLinesStartIndx        ;9FD5A9|2220939B|;
                       LDA.B $97                            ;9FD5AD|A597    |;
                       STA.B $8F                            ;9FD5AF|858F    |;
                       LDA.B $95                            ;9FD5B1|A595    |;
                       STA.B $8D                            ;9FD5B3|858D    |;
                       PLA                                  ;9FD5B5|68      |;
                       STA.B $95                            ;9FD5B6|8595    |;
                       PLA                                  ;9FD5B8|68      |;
                       STA.B $97                            ;9FD5B9|8597    |;
                       LDY.B zpCurntTeamLoopVal             ;9FD5BB|A491    |;
                       LDA.W $1796,Y                        ;9FD5BD|B99617  |;
                       ASL A                                ;9FD5C0|0A      |;
                       ASL A                                ;9FD5C1|0A      |;
                       ASL A                                ;9FD5C2|0A      |;
                       STA.B $A5                            ;9FD5C3|85A5    |;
                       ADC.B $8D                            ;9FD5C5|658D    |;
                       STA.B $8D                            ;9FD5C7|858D    |;
                       LDA.W PlyrsOnIceCountHm,Y            ;9FD5C9|B9A617  |;
                       STA.B $B5                            ;9FD5CC|85B5    |;
                       BRA CODE_9FD61C                      ;9FD5CE|804C    |;
 
          CODE_9FD5D0:
                       LDY.B $B5                            ;9FD5D0|A4B5    |;
                       LDA.B [$89],Y                        ;9FD5D2|B789    |;
                       AND.W #$00FF                         ;9FD5D4|29FF00  |;
                       STA.B $B9                            ;9FD5D7|85B9    |;
                       TAY                                  ;9FD5D9|A8      |;
                       SEP #$20                             ;9FD5DA|E220    |;
                       LDA.B [$8D],Y                        ;9FD5DC|B78D    |; Loads Away Team Best Line Extra Attacker 1)When Goalie set to NONE
                       LDY.B $B5                            ;9FD5DE|A4B5    |;
                       STA.B [$99],Y                        ;9FD5E0|9799    |;
                       LDA.B $B9                            ;9FD5E2|A5B9    |;
                       BEQ CODE_9FD5F1                      ;9FD5E4|F00B    |;
                       LDA.W IsPenaltyShot                  ;9FD5E6|AD9B1E  |;
                       BEQ CODE_9FD5F1                      ;9FD5E9|F006    |;
                       LDA.W $1E8F                          ;9FD5EB|AD8F1E  |;
                       INC A                                ;9FD5EE|1A      |;
                       STA.B [$99],Y                        ;9FD5EF|9799    |;
 
          CODE_9FD5F1:
                       INY                                  ;9FD5F1|C8      |;
                       INY                                  ;9FD5F2|C8      |;
                       INY                                  ;9FD5F3|C8      |;
                       INY                                  ;9FD5F4|C8      |;
                       INY                                  ;9FD5F5|C8      |;
                       INY                                  ;9FD5F6|C8      |;
                       LDA.B $B9                            ;9FD5F7|A5B9    |;
                       STA.B [$99],Y                        ;9FD5F9|9799    |;
                       REP #$20                             ;9FD5FB|C220    |;
                       LDA.B $B9                            ;9FD5FD|A5B9    |;
                       BNE CODE_9FD61C                      ;9FD5FF|D01B    |;
                       LDY.B zpCurntTeamLoopVal             ;9FD601|A491    |;
                       LDA.W GoalieInNetHmAw,Y              ;9FD603|B9AA17  |;
                       INC A                                ;9FD606|1A      |;
                       STA.B $B1                            ;9FD607|85B1    |;
                       BNE CODE_9FD612                      ;9FD609|D007    |;
                       db $AD,$9B,$1E,$F0,$02,$E6,$B1       ;9FD60B|        |;
 
          CODE_9FD612:
                       LDY.B $B5                            ;9FD612|A4B5    |;
                       SEP #$20                             ;9FD614|E220    |;
                       LDA.B $B1                            ;9FD616|A5B1    |;
                       STA.B [$99],Y                        ;9FD618|9799    |;
                       REP #$20                             ;9FD61A|C220    |;
 
          CODE_9FD61C:
                       DEC.B $B5                            ;9FD61C|C6B5    |;
                       BPL CODE_9FD5D0                      ;9FD61E|10B0    |;
                       LDA.W #$0005                         ;9FD620|A90500  |;
                       STA.B $B5                            ;9FD623|85B5    |;
 
          CODE_9FD625:
                       LDY.B $B5                            ;9FD625|A4B5    |;
                       LDA.B [$99],Y                        ;9FD627|B799    |;
                       AND.W #$00FF                         ;9FD629|29FF00  |;
                       STA.B $B1                            ;9FD62C|85B1    |;
                       BNE CODE_9FD633                      ;9FD62E|D003    |;
                       JMP.W CODE_9FD6B8                    ;9FD630|4CB8D6  |;
 
          CODE_9FD633:
                       AND.W #$00FF                         ;9FD633|29FF00  |;
                       BIT.W #$0080                         ;9FD636|898000  |;
                       BEQ CODE_9FD63E                      ;9FD639|F003    |;
                       db $09,$00,$FF                       ;9FD63B|        |;
 
          CODE_9FD63E:
                       DEC A                                ;9FD63E|3A      |;
                       ASL A                                ;9FD63F|0A      |;
                       STA.B $B1                            ;9FD640|85B1    |;
                       LDA.B zpCurntTeamLoopVal             ;9FD642|A591    |;
                       BEQ CODE_9FD649                      ;9FD644|F003    |;
                       LDA.W #$0034                         ;9FD646|A93400  |;
 
          CODE_9FD649:
                       CLC                                  ;9FD649|18      |;
                       ADC.B $B1                            ;9FD64A|65B1    |;
                       TAY                                  ;9FD64C|A8      |;
                       LDA.W $1852,Y                        ;9FD64D|B95218  |;
                       CMP.W #$FFFD                         ;9FD650|C9FDFF  |;
                       BEQ CODE_9FD661                      ;9FD653|F00C    |;
                       CMP.W #$FFFC                         ;9FD655|C9FCFF  |;
                       BEQ CODE_9FD661                      ;9FD658|F007    |;
                       LDA.W $1852,Y                        ;9FD65A|B95218  |;
                       BMI CODE_9FD6B8                      ;9FD65D|3059    |;
                       BEQ CODE_9FD6B8                      ;9FD65F|F057    |;
 
          CODE_9FD661:
                       LDA.B $97                            ;9FD661|A597    |;
                       PHA                                  ;9FD663|48      |;
                       LDA.B $95                            ;9FD664|A595    |;
                       PHA                                  ;9FD666|48      |;
                       JSL.L fn_rtnEdtLinesStartIndx        ;9FD667|2220939B|;
                       LDA.B $97                            ;9FD66B|A597    |;
                       STA.B $8F                            ;9FD66D|858F    |;
                       LDA.B $95                            ;9FD66F|A595    |;
                       STA.B $8D                            ;9FD671|858D    |;
                       PLA                                  ;9FD673|68      |;
                       STA.B $95                            ;9FD674|8595    |;
                       PLA                                  ;9FD676|68      |;
                       STA.B $97                            ;9FD677|8597    |;
                       LDA.B $B5                            ;9FD679|A5B5    |;
                       CLC                                  ;9FD67B|18      |;
                       ADC.W #$0006                         ;9FD67C|690600  |;
                       TAY                                  ;9FD67F|A8      |;
                       LDA.B [$99],Y                        ;9FD680|B799    |;
                       AND.W #$00FF                         ;9FD682|29FF00  |;
                       ASL A                                ;9FD685|0A      |;
                       STA.B $A5                            ;9FD686|85A5    |;
                       LDA.W #$0080                         ;9FD688|A98000  |;
                       STA.B $8B                            ;9FD68B|858B    |;
                       LDA.W #$D646                         ;9FD68D|A946D6  |;
                       STA.B $89                            ;9FD690|8589    |;
                       LDY.B $A5                            ;9FD692|A4A5    |;
                       LDA.B [$89],Y                        ;9FD694|B789    |;
                       CLC                                  ;9FD696|18      |;
                       ADC.B $89                            ;9FD697|6589    |;
                       STA.B $89                            ;9FD699|8589    |;
 
          CODE_9FD69B:
                       LDA.B [$89]                          ;9FD69B|A789    |;
                       INC.B $89                            ;9FD69D|E689    |;
                       AND.W #$00FF                         ;9FD69F|29FF00  |;
                       STA.B $A5                            ;9FD6A2|85A5    |;
                       BIT.W #$0080                         ;9FD6A4|898000  |;
                       BNE UNREACH_9FD6C0                   ;9FD6A7|D017    |;
                       LDY.B $A5                            ;9FD6A9|A4A5    |;
                       LDA.B [$8D],Y                        ;9FD6AB|B78D    |;
                       AND.W #$00FF                         ;9FD6AD|29FF00  |;
                       STA.B $A5                            ;9FD6B0|85A5    |;
                       JSL.L CODE_9FD6D8                    ;9FD6B2|22D8D69F|;
                       BEQ CODE_9FD69B                      ;9FD6B6|F0E3    |;
 
          CODE_9FD6B8:
                       DEC.B $B5                            ;9FD6B8|C6B5    |;
                       BMI CODE_9FD6BF                      ;9FD6BA|3003    |;
                       JMP.W CODE_9FD625                    ;9FD6BC|4C25D6  |;
 
          CODE_9FD6BF:
                       RTL                                  ;9FD6BF|6B      |;
 
       UNREACH_9FD6C0:
                       db $22,$3D,$C9,$9F,$A5,$A5,$85,$B1   ;9FD6C0|        |;
                       db $A5,$B1,$85,$A5,$C6,$B1,$30,$E8   ;9FD6C8|        |;
                       db $22,$D8,$D6,$9F,$F0,$F2,$80,$E0   ;9FD6D0|        |;
 
          CODE_9FD6D8:
                       LDA.B $A5                            ;9FD6D8|A5A5    |;
                       STA.B $A9                            ;9FD6DA|85A9    |;
                       DEC.B $A5                            ;9FD6DC|C6A5    |;
                       ASL.B $A5                            ;9FD6DE|06A5    |;
                       LDA.B zpCurntTeamLoopVal             ;9FD6E0|A591    |;
                       BEQ CODE_9FD6E7                      ;9FD6E2|F003    |;
                       LDA.W #$0034                         ;9FD6E4|A93400  |;
 
          CODE_9FD6E7:
                       ADC.B $A5                            ;9FD6E7|65A5    |;
                       TAY                                  ;9FD6E9|A8      |;
                       LDA.W $1852,Y                        ;9FD6EA|B95218  |;
                       SEC                                  ;9FD6ED|38      |;
                       SBC.W #$0000                         ;9FD6EE|E90000  |;
                       BEQ CODE_9FD6F5                      ;9FD6F1|F002    |;
                       BPL CODE_9FD72D                      ;9FD6F3|1038    |;
 
          CODE_9FD6F5:
                       LDA.W $1852,Y                        ;9FD6F5|B95218  |;
                       CMP.W #$FFFD                         ;9FD6F8|C9FDFF  |;
                       BEQ CODE_9FD72D                      ;9FD6FB|F030    |;
                       CMP.W #$FFFC                         ;9FD6FD|C9FCFF  |;
                       BEQ CODE_9FD72D                      ;9FD700|F02B    |;
                       LDA.W #$0005                         ;9FD702|A90500  |;
                       STA.B $A5                            ;9FD705|85A5    |;
 
          CODE_9FD707:
                       LDY.B $A5                            ;9FD707|A4A5    |;
                       LDA.B [$99],Y                        ;9FD709|B799    |;
                       AND.W #$00FF                         ;9FD70B|29FF00  |;
                       STA.B $C5                            ;9FD70E|85C5    |;
                       LDA.B $A9                            ;9FD710|A5A9    |;
                       AND.W #$00FF                         ;9FD712|29FF00  |;
                       CMP.B $C5                            ;9FD715|C5C5    |;
                       BEQ CODE_9FD72D                      ;9FD717|F014    |;
                       DEC.B $A5                            ;9FD719|C6A5    |;
                       BPL CODE_9FD707                      ;9FD71B|10EA    |;
                       LDY.B $B5                            ;9FD71D|A4B5    |;
                       SEP #$20                             ;9FD71F|E220    |;
                       LDA.B $A9                            ;9FD721|A5A9    |;
                       STA.B [$99],Y                        ;9FD723|9799    |;
                       REP #$20                             ;9FD725|C220    |;
                       LDA.B $A9                            ;9FD727|A5A9    |;
                       AND.W #$00FF                         ;9FD729|29FF00  |;
                       RTL                                  ;9FD72C|6B      |;
 
          CODE_9FD72D:
                       LDA.W #$0000                         ;9FD72D|A90000  |;
                       STA.B $A9                            ;9FD730|85A9    |;
                       RTL                                  ;9FD732|6B      |;
       UNREACH_9FD733:
                       db $A5,$A9,$48,$64,$91,$BD,$03,$15   ;9FD733|        |;
                       db $F0,$04,$E6,$91,$E6,$91,$A4,$91   ;9FD73B|        |;
                       db $B9,$DE,$17,$89,$01,$00,$F0,$14   ;9FD743|        |;
                       db $29,$FE,$FF,$99,$DE,$17,$A9,$FF   ;9FD74B|        |;
                       db $FF,$99,$55,$1D,$22,$13,$DE,$9F   ;9FD753|        |;
                       db $22,$25,$D3,$9F,$68,$85,$A9,$64   ;9FD75B|        |;
                       db $AD,$89,$00,$40,$D0,$46,$E6,$AD   ;9FD763|        |;
                       db $89,$00,$80,$D0,$3F,$E6,$AD,$89   ;9FD76B|        |;
                       db $80,$00,$D0,$38,$89,$00,$20,$D0   ;9FD773|        |;
                       db $12,$BD,$83,$12,$89,$08,$00,$F0   ;9FD77B|        |;
                       db $09,$BD,$E3,$14,$D0,$04,$5C,$A9   ;9FD783|        |;
                       db $A8,$9E,$6B,$BD,$83,$12,$09,$08   ;9FD78B|        |;
                       db $00,$9D,$83,$12,$22,$57,$C7,$9F   ;9FD793|        |;
                       db $A4,$91,$B9,$DE,$17,$29,$F7,$FF   ;9FD79B|        |;
                       db $99,$DE,$17,$A9,$FF,$FF,$99,$55   ;9FD7A3|        |;
                       db $1D,$4C,$13,$DE,$4C,$01,$E0       ;9FD7AB|        |;
 
          CODE_9FD7B2:
                       LDA.B $A9                            ;9FD7B2|A5A9    |;
                       PHA                                  ;9FD7B4|48      |;
                       LDA.B $AB                            ;9FD7B5|A5AB    |;
                       PHA                                  ;9FD7B7|48      |;
                       LDA.B $AD                            ;9FD7B8|A5AD    |;
                       PHA                                  ;9FD7BA|48      |;
                       LDA.B $AF                            ;9FD7BB|A5AF    |;
                       PHA                                  ;9FD7BD|48      |;
                       LDA.B zpCurntTeamLoopVal             ;9FD7BE|A591    |;
                       EOR.W #$0002                         ;9FD7C0|490200  |;
                       TAY                                  ;9FD7C3|A8      |;
                       LDA.W PlyrsOnIceCountHm,Y            ;9FD7C4|B9A617  |;
                       LDY.B zpCurntTeamLoopVal             ;9FD7C7|A491    |;
                       SEC                                  ;9FD7C9|38      |;
                       SBC.W PlyrsOnIceCountHm,Y            ;9FD7CA|F9A617  |;
                       STA.B $AD                            ;9FD7CD|85AD    |;
                       BEQ CODE_9FD7E5                      ;9FD7CF|F014    |;
                       db $A5,$A5,$18,$69,$15,$00,$85,$A5   ;9FD7D1|        |;
                       db $A5,$AD,$30,$08,$A5,$A5,$18,$69   ;9FD7D9|        |;
                       db $15,$00,$85,$A5                   ;9FD7E1|        |;
 
          CODE_9FD7E5:
                       LDY.B zpCurntTeamLoopVal             ;9FD7E5|A491    |;
                       LDA.W $1796,Y                        ;9FD7E7|B99617  |;
                       STA.B $A9                            ;9FD7EA|85A9    |;
                       LDA.B $A5                            ;9FD7EC|A5A5    |;
                       CLC                                  ;9FD7EE|18      |;
                       ADC.B $A9                            ;9FD7EF|65A9    |;
                       CLC                                  ;9FD7F1|18      |;
                       ADC.B $A9                            ;9FD7F2|65A9    |;
                       CLC                                  ;9FD7F4|18      |;
                       ADC.B $A9                            ;9FD7F5|65A9    |;
                       STA.B $A5                            ;9FD7F7|85A5    |;
                       TAY                                  ;9FD7F9|A8      |;
                       LDA.W #$009F                         ;9FD7FA|A99F00  |;
                       STA.B $8B                            ;9FD7FD|858B    |;
                       LDA.W #$D820                         ;9FD7FF|A920D8  |;
                       STA.B $89                            ;9FD802|8589    |;
                       LDA.B [$89],Y                        ;9FD804|B789    |;
                       AND.W #$00FF                         ;9FD806|29FF00  |;
                       BIT.W #$0080                         ;9FD809|898000  |;
                       BEQ CODE_9FD811                      ;9FD80C|F003    |;
                       db $09,$00,$FF                       ;9FD80E|        |;
 
          CODE_9FD811:
                       STA.B $A5                            ;9FD811|85A5    |;
                       PLA                                  ;9FD813|68      |;
                       STA.B $AF                            ;9FD814|85AF    |;
                       PLA                                  ;9FD816|68      |;
                       STA.B $AD                            ;9FD817|85AD    |;
                       PLA                                  ;9FD819|68      |;
                       STA.B $AB                            ;9FD81A|85AB    |;
                       PLA                                  ;9FD81C|68      |;
                       STA.B $A9                            ;9FD81D|85A9    |;
                       RTL                                  ;9FD81F|6B      |;
                       db $00,$01,$02,$01,$02,$00,$02,$00   ;9FD820|        |;
                       db $01,$00,$01,$02,$00,$01,$02,$00   ;9FD828|        |;
                       db $01,$02,$00,$01,$02,$03,$04,$FF   ;9FD830|        |;
                       db $03,$04,$FF,$03,$04,$FF,$03,$04   ;9FD838|        |;
                       db $FF,$04,$03,$FF,$03,$04,$FF,$03   ;9FD840|        |;
                       db $04,$FF,$05,$06,$FF,$05,$06,$FF   ;9FD848|        |;
                       db $05,$06,$FF,$05,$06,$FF,$05,$06   ;9FD850|        |;
                       db $FF,$05,$06,$FF,$06,$05,$FF       ;9FD858|        |;
                       LDA.W $1003,X                        ;9FD85F|BD0310  |;
                       CMP.W #$0064                         ;9FD862|C96400  |;
                       BNE CODE_9FD86A                      ;9FD865|D003    |;
                       JMP.W CODE_9FD96E                    ;9FD867|4C6ED9  |;
 
          CODE_9FD86A:
                       JSL.L CODE_9FDC4C                    ;9FD86A|224CDC9F|;
                       LDA.W $1283,X                        ;9FD86E|BD8312  |;
                       BIT.W #$4000                         ;9FD871|890040  |;
                       BEQ CODE_9FD87A                      ;9FD874|F004    |;
                       db $5C,$E6,$8B,$9E                   ;9FD876|        |;
 
          CODE_9FD87A:
                       BIT.W #$0002                         ;9FD87A|890200  |;
                       BEQ CODE_9FD8AB                      ;9FD87D|F02C    |;
                       AND.W #$FFFD                         ;9FD87F|29FDFF  |;
                       STA.W $1283,X                        ;9FD882|9D8312  |;
                       STZ.W $1023,X                        ;9FD885|9E2310  |;
                       LDA.W #$0008                         ;9FD888|A90800  |;
                       STA.W $10A3,X                        ;9FD88B|9DA310  |;
                       LDA.W #$0050                         ;9FD88E|A95000  |;
                       STA.B $A5                            ;9FD891|85A5    |;
                       LDA.W $1503,X                        ;9FD893|BD0315  |;
                       BNE CODE_9FD89D                      ;9FD896|D005    |;
                       LDA.W #$FFB0                         ;9FD898|A9B0FF  |;
                       STA.B $A5                            ;9FD89B|85A5    |;
 
          CODE_9FD89D:
                       LDA.B $A5                            ;9FD89D|A5A5    |;
                       STA.W $1063,X                        ;9FD89F|9D6310  |;
                       LDA.W #$FF70                         ;9FD8A2|A970FF  |;
                       STA.W $1043,X                        ;9FD8A5|9D4310  |;
                       STZ.W $1003,X                        ;9FD8A8|9E0310  |;
 
          CODE_9FD8AB:
                       LDA.W $1263,X                        ;9FD8AB|BD6312  |;
                       CMP.W $12A3,X                        ;9FD8AE|DDA312  |;
                       BNE CODE_9FD8B6                      ;9FD8B1|D003    |;
                       db $4C,$C2,$D9                       ;9FD8B3|        |;
 
          CODE_9FD8B6:
                       LDA.W PStructPosition,X              ;9FD8B6|BD430F  |;
                       BNE CODE_9FD8C4                      ;9FD8B9|D009    |;
                       LDA.W $0B05,X                        ;9FD8BB|BD050B  |;
                       ORA.W #$0003                         ;9FD8BE|090300  |;
                       STA.W $0B05,X                        ;9FD8C1|9D050B  |;
 
          CODE_9FD8C4:
                       LDA.W $1003,X                        ;9FD8C4|BD0310  |;
                       SEC                                  ;9FD8C7|38      |;
                       SBC.B $C1                            ;9FD8C8|E5C1    |;
                       STA.W $1003,X                        ;9FD8CA|9D0310  |;
                       BMI CODE_9FD8D2                      ;9FD8CD|3003    |;
                       JMP.W CODE_9FD99D                    ;9FD8CF|4C9DD9  |;
 
          CODE_9FD8D2:
                       LDA.W $1003,X                        ;9FD8D2|BD0310  |;
                       ADC.W #$0008                         ;9FD8D5|690800  |;
                       STA.W $1003,X                        ;9FD8D8|9D0310  |;
                       LDA.W $0DB7,X                        ;9FD8DB|BDB70D  |;
                       SEC                                  ;9FD8DE|38      |;
                       SBC.W $1063,X                        ;9FD8DF|FD6310  |;
                       BIT.W #$8000                         ;9FD8E2|890080  |;
                       BEQ CODE_9FD8EB                      ;9FD8E5|F004    |;
                       db $49,$FF,$FF,$1A                   ;9FD8E7|        |;
 
          CODE_9FD8EB:
                       CMP.W #$0029                         ;9FD8EB|C92900  |;
                       BCC CODE_9FD8F3                      ;9FD8EE|9003    |;
                       JMP.W CODE_9FD99D                    ;9FD8F0|4C9DD9  |;
 
          CODE_9FD8F3:
                       LDA.W $0D55,X                        ;9FD8F3|BD550D  |;
                       SEC                                  ;9FD8F6|38      |;
                       SBC.W $1043,X                        ;9FD8F7|FD4310  |;
                       STA.B $A5                            ;9FD8FA|85A5    |;
                       SEC                                  ;9FD8FC|38      |;
                       SBC.W #$0020                         ;9FD8FD|E92000  |;
                       BEQ CODE_9FD907                      ;9FD900|F005    |;
                       BMI CODE_9FD907                      ;9FD902|3003    |;
                       JMP.W CODE_9FD99D                    ;9FD904|4C9DD9  |;
 
          CODE_9FD907:
                       LDA.W #$EA1A                         ;9FD907|A91AEA  |;
                       LDY.W PStructPosition,X              ;9FD90A|BC430F  |;
                       BNE CODE_9FD912                      ;9FD90D|D003    |;
                       LDA.W #$E0FE                         ;9FD90F|A9FEE0  |;
 
          CODE_9FD912:
                       JSL.L CODE_9EA3F1                    ;9FD912|22F1A39E|;
                       LDA.W #$0001                         ;9FD916|A90100  |;
                       STA.W $1563,X                        ;9FD919|9D6315  |;
                       LDA.W $1163,X                        ;9FD91C|BD6311  |;
                       CMP.W #$0004                         ;9FD91F|C90400  |;
                       BEQ CODE_9FD92B                      ;9FD922|F007    |;
                       INC A                                ;9FD924|1A      |;
                       AND.W #$0007                         ;9FD925|290700  |;
                       STA.W $1163,X                        ;9FD928|9D6311  |;
 
          CODE_9FD92B:
                       STZ.W $0EE3,X                        ;9FD92B|9EE30E  |;
                       LDA.W #$F800                         ;9FD92E|A900F8  |;
                       STA.W $0EC3,X                        ;9FD931|9DC30E  |;
                       LDA.B $A5                            ;9FD934|A5A5    |;
                       SEC                                  ;9FD936|38      |;
                       SBC.W #$0010                         ;9FD937|E91000  |;
                       BEQ CODE_9FD93E                      ;9FD93A|F002    |;
                       BPL CODE_9FD96D                      ;9FD93C|102F    |;
 
          CODE_9FD93E:
                       STZ.W $0EC3,X                        ;9FD93E|9EC30E  |;
                       LDA.W $1163,X                        ;9FD941|BD6311  |;
                       CMP.W #$0004                         ;9FD944|C90400  |;
                       BNE CODE_9FD96D                      ;9FD947|D024    |;
                       LDA.W #$F800                         ;9FD949|A900F8  |;
                       STA.W $0EC3,X                        ;9FD94C|9DC30E  |;
                       LDA.W #$0002                         ;9FD94F|A90200  |;
                       STA.W $1163,X                        ;9FD952|9D6311  |;
                       LDA.W #$E936                         ;9FD955|A936E9  |;
                       LDY.W PStructPosition,X              ;9FD958|BC430F  |;
                       BNE CODE_9FD960                      ;9FD95B|D003    |;
                       LDA.W #$E484                         ;9FD95D|A984E4  |;
 
          CODE_9FD960:
                       JSL.L CODE_9EA3F1                    ;9FD960|22F1A39E|;
                       LDA.W #$0064                         ;9FD964|A96400  |;
                       STA.W $1003,X                        ;9FD967|9D0310  |;
                       STA.W $14E3,X                        ;9FD96A|9DE314  |;
 
          CODE_9FD96D:
                       RTL                                  ;9FD96D|6B      |;
 
          CODE_9FD96E:
                       LDA.W $12A3,X                        ;9FD96E|BDA312  |;
                       ASL A                                ;9FD971|0A      |;
                       STA.B $A5                            ;9FD972|85A5    |;
                       STZ.B $89                            ;9FD974|6489    |;
                       LDA.W $1503,X                        ;9FD976|BD0315  |;
                       BEQ CODE_9FD980                      ;9FD979|F005    |;
                       LDA.W #$0002                         ;9FD97B|A90200  |;
                       STA.B $89                            ;9FD97E|8589    |;
 
          CODE_9FD980:
                       LDA.B $89                            ;9FD980|A589    |;
                       BEQ CODE_9FD987                      ;9FD982|F003    |;
                       LDA.W #$0034                         ;9FD984|A93400  |;
 
          CODE_9FD987:
                       CLC                                  ;9FD987|18      |;
                       ADC.B $A5                            ;9FD988|65A5    |;
                       TAY                                  ;9FD98A|A8      |;
                       LDA.W #$FFFE                         ;9FD98B|A9FEFF  |;
                       STA.W $1852,Y                        ;9FD98E|995218  |;
                       LDA.W $1263,X                        ;9FD991|BD6312  |;
                       STA.B $B1                            ;9FD994|85B1    |;
                       JSL.L CODE_9FD9CB                    ;9FD996|22CBD99F|;
                       JMP.W CODE_9FCEF6                    ;9FD99A|4CF6CE  |;
 
          CODE_9FD99D:
                       LDA.W $1563,X                        ;9FD99D|BD6315  |;
                       BNE CODE_9FD96D                      ;9FD9A0|D0CB    |;
                       LDA.W $1283,X                        ;9FD9A2|BD8312  |;
                       BIT.W #$4008                         ;9FD9A5|890840  |;
                       BNE CODE_9FD96D                      ;9FD9A8|D0C3    |;
                       LDA.W $1043,X                        ;9FD9AA|BD4310  |;
                       STA.B $A5                            ;9FD9AD|85A5    |;
                       LDA.W $1063,X                        ;9FD9AF|BD6310  |;
                       STA.B $A9                            ;9FD9B2|85A9    |;
                       LDA.W #$009E                         ;9FD9B4|A99E00  |;
                       STA.B $8B                            ;9FD9B7|858B    |;
                       LDA.W #$8904                         ;9FD9B9|A90489  |;
                       STA.B $89                            ;9FD9BC|8589    |;
                       JML.L CODE_9EA5A4                    ;9FD9BE|5CA4A59E|;
                       db $BD,$83,$12,$29,$FF,$EF,$9D,$83   ;9FD9C2|        |;
                       db $12                               ;9FD9CA|        |;
 
          CODE_9FD9CB:
                       LDA.W $1243,X                        ;9FD9CB|BD4312  |;
                       STA.B $A5                            ;9FD9CE|85A5    |;
                       STA.W PStructPosition,X              ;9FD9D0|9D430F  |;
                       JSL.L CODE_9FCED0                    ;9FD9D3|22D0CE9F|;
                       LDA.W #$FFFF                         ;9FD9D7|A9FFFF  |;
                       STA.W $1263,X                        ;9FD9DA|9D6312  |;
                       STA.W $1243,X                        ;9FD9DD|9D4312  |;
                       RTL                                  ;9FD9E0|6B      |;
                       LDA.W $14E3,X                        ;9FD9E1|BDE314  |;
                       BNE UNREACH_9FDA33                   ;9FD9E4|D04D    |;
                       LDA.W $1283,X                        ;9FD9E6|BD8312  |;
                       BIT.W #$0002                         ;9FD9E9|890200  |;
                       BEQ CODE_9FDA34                      ;9FD9EC|F046    |;
                       AND.W #$FFFD                         ;9FD9EE|29FDFF  |;
                       STA.W $1283,X                        ;9FD9F1|9D8312  |;
                       STZ.W $0EC3,X                        ;9FD9F4|9EC30E  |;
                       STZ.W $0EE3,X                        ;9FD9F7|9EE30E  |;
                       STZ.W $0B05,X                        ;9FD9FA|9E050B  |;
                       TXA                                  ;9FD9FD|8A      |;
                       LSR A                                ;9FD9FE|4A      |;
                       SEC                                  ;9FD9FF|38      |;
                       SBC.W #$0006                         ;9FDA00|E90600  |;
                       BMI CODE_9FDA06                      ;9FDA03|3001    |;
                       INC A                                ;9FDA05|1A      |;
 
          CODE_9FDA06:
                       PHX                                  ;9FDA06|DA      |;
                       TAX                                  ;9FDA07|AA      |;
                       LDA.W #$000E                         ;9FDA08|A90E00  |;
                       JSL.L CODE_808FC9                    ;9FDA0B|22C98F80|;
                       PLX                                  ;9FDA0F|FA      |;
                       LDA.B $08                            ;9FDA10|A508    |;
                       STA.W $0DB7,X                        ;9FDA12|9DB70D  |;
                       LDA.W #$FF78                         ;9FDA15|A978FF  |;
                       STA.W $0D55,X                        ;9FDA18|9D550D  |;
                       LDA.W #$0002                         ;9FDA1B|A90200  |;
                       STA.W $1163,X                        ;9FDA1E|9D6311  |;
                       STA.W $14E3,X                        ;9FDA21|9DE314  |;
                       LDA.W #$E8F4                         ;9FDA24|A9F4E8  |;
                       LDY.W PStructPosition,X              ;9FDA27|BC430F  |;
                       BNE CODE_9FDA2F                      ;9FDA2A|D003    |;
                       db $A9,$52,$E4                       ;9FDA2C|        |;
 
          CODE_9FDA2F:
                       JML.L CODE_9EA403                    ;9FDA2F|5C03A49E|;
 
       UNREACH_9FDA33:
                       db $6B                               ;9FDA33|        |;
 
          CODE_9FDA34:
                       LDA.W #$0004                         ;9FDA34|A90400  |;
                       STA.W $1163,X                        ;9FDA37|9D6311  |;
                       LDA.W $1283,X                        ;9FDA3A|BD8312  |;
                       AND.W #$6FFF                         ;9FDA3D|29FF6F  |;
                       STA.W $1283,X                        ;9FDA40|9D8312  |;
                       STZ.W $1563,X                        ;9FDA43|9E6315  |;
                       STZ.W $11A3,X                        ;9FDA46|9EA311  |;
                       LDA.W #$1000                         ;9FDA49|A90010  |;
                       STA.W $0EC3,X                        ;9FDA4C|9DC30E  |;
                       JML.L CODE_9E8BE6                    ;9FDA4F|5CE68B9E|;
                       db $A5,$A5,$48,$A5,$A7,$48,$A5,$A9   ;9FDA53|        |;
                       db $48,$A5,$AB,$48,$A5,$AD,$48,$A5   ;9FDA5B|        |;
                       db $AF,$48,$A5,$89,$48,$A5,$8B,$48   ;9FDA63|        |;
                       db $A9,$03,$00,$85,$A5,$A4,$91,$B9   ;9FDA6B|        |;
                       db $A6,$17,$A4,$8D,$D9,$A6,$17,$F0   ;9FDA73|        |;
                       db $43,$10,$04,$E6,$A5,$E6,$A5,$A5   ;9FDA7B|        |;
                       db $A5,$48,$22,$0C,$DF,$9F,$A5,$A5   ;9FDA83|        |;
                       db $85,$A9,$A3,$01,$1A,$85,$A5,$22   ;9FDA8B|        |;
                       db $0C,$DF,$9F,$A5,$A9,$38,$E5,$A5   ;9FDA93|        |;
                       db $10,$03,$68,$1A,$48,$68,$A4,$91   ;9FDA9B|        |;
                       db $99,$96,$17,$68,$85,$8B,$68,$85   ;9FDAA3|        |;
                       db $89,$68,$85,$AF,$68,$85,$AD,$68   ;9FDAAB|        |;
                       db $85,$AB,$68,$85,$A9,$68,$85,$A7   ;9FDAB3|        |;
                       db $68,$85,$A5,$6B,$A4,$91,$F0,$03   ;9FDABB|        |;
                       db $4C,$5E,$DB,$AF,$C6,$34,$7E,$C9   ;9FDAC3|        |;
                       db $02,$00,$D0,$08,$B9,$EC,$19,$30   ;9FDACB|        |;
                       db $03,$4C,$5E,$DB,$A9,$02,$00,$85   ;9FDAD3|        |;
                       db $A9,$A9,$9F,$00,$85,$8B,$A9,$34   ;9FDADB|        |;
                       db $DB,$85,$89,$AD,$30,$16,$C9,$02   ;9FDAE3|        |;
                       db $00,$D0,$22,$B9,$8E,$17,$A4,$8D   ;9FDAEB|        |;
                       db $D9,$8E,$17,$F0,$18,$08,$A9,$9F   ;9FDAF3|        |;
                       db $00,$85,$8B,$A9,$42,$DB,$85,$89   ;9FDAFB|        |;
                       db $28,$10,$0A,$A9,$9F,$00,$85,$8B   ;9FDB03|        |;
                       db $A9,$50,$DB,$85,$89,$A4,$8D,$B9   ;9FDB0B|        |;
                       db $96,$17,$0A,$85,$A9,$A8,$B7,$89   ;9FDB13|        |;
                       db $85,$A5,$22,$0C,$DF,$9F,$A5,$A5   ;9FDB1B|        |;
                       db $C9,$01,$0C,$90,$36,$A4,$A9,$B7   ;9FDB23|        |;
                       db $89,$A4,$91,$99,$96,$17,$4C,$A6   ;9FDB2B|        |;
                       db $DA,$00,$00,$01,$00,$02,$00,$00   ;9FDB33|        |;
                       db $00,$01,$00,$00,$00,$01,$00,$02   ;9FDB3B|        |;
                       db $00,$00,$00,$01,$00,$02,$00,$00   ;9FDB43|        |;
                       db $00,$02,$00,$00,$00,$00,$00,$01   ;9FDB4B|        |;
                       db $00,$00,$00,$00,$00,$01,$00,$00   ;9FDB53|        |;
                       db $00,$01,$00,$A9,$02,$00,$85,$A9   ;9FDB5B|        |;
                       db $A9,$9F,$00,$85,$8B,$A9,$BE,$DB   ;9FDB63|        |;
                       db $85,$89,$AD,$30,$16,$C9,$02,$00   ;9FDB6B|        |;
                       db $D0,$24,$A4,$91,$B9,$8E,$17,$A4   ;9FDB73|        |;
                       db $8D,$D9,$8E,$17,$F0,$18,$08,$A9   ;9FDB7B|        |;
                       db $9F,$00,$85,$8B,$A9,$C4,$DB,$85   ;9FDB83|        |;
                       db $89,$28,$10,$0A,$A9,$9F,$00,$85   ;9FDB8B|        |;
                       db $8B,$A9,$CA,$DB,$85,$89,$A7,$89   ;9FDB93|        |;
                       db $E6,$89,$E6,$89,$85,$A5,$22,$0C   ;9FDB9B|        |;
                       db $DF,$9F,$A5,$A5,$C9,$34,$0F,$B0   ;9FDBA3|        |;
                       db $04,$C6,$A9,$10,$E9,$C6,$89,$C6   ;9FDBAB|        |;
                       db $89,$A4,$91,$A7,$89,$99,$96,$17   ;9FDBB3|        |;
                       db $4C,$A6,$DA,$00,$00,$01,$00,$02   ;9FDBBB|        |;
                       db $00,$00,$00,$02,$00,$01,$00,$00   ;9FDBC3|        |;
                       db $00,$01,$00,$00,$00               ;9FDBCB|        |;
 
          CODE_9FDBD0:
                       LDA.L $7E34C6                        ;9FDBD0|AFC6347E|;
                       CMP.W #$0002                         ;9FDBD4|C90200  |;
                       BEQ CODE_9FDC4B                      ;9FDBD7|F072    |;
                       LDA.W $0DD3                          ;9FDBD9|ADD30D  |;
                       STA.B $A5                            ;9FDBDC|85A5    |;
                       LDA.W $14C3,X                        ;9FDBDE|BDC314  |;
                       BNE CODE_9FDBEB                      ;9FDBE1|D008    |;
                       LDA.W #$0000                         ;9FDBE3|A90000  |;
                       SEC                                  ;9FDBE6|38      |;
                       SBC.B $A5                            ;9FDBE7|E5A5    |;
                       STA.B $A5                            ;9FDBE9|85A5    |;
 
          CODE_9FDBEB:
                       LDA.B $A5                            ;9FDBEB|A5A5    |;
                       BMI CODE_9FDC4B                      ;9FDBED|305C    |;
                       SEC                                  ;9FDBEF|38      |;
                       SBC.W #$0058                         ;9FDBF0|E95800  |;
                       BPL CODE_9FDC4B                      ;9FDBF3|1056    |;
                       LDA.W $0792                          ;9FDBF5|AD9207  |;
                       AND.W #$0003                         ;9FDBF8|290300  |;
                       BNE CODE_9FDC4B                      ;9FDBFB|D04E    |;
                       PHY                                  ;9FDBFD|5A      |;
                       LDY.W #$0000                         ;9FDBFE|A00000  |;
                       LDA.W $1503,X                        ;9FDC01|BD0315  |;
                       BEQ CODE_9FDC09                      ;9FDC04|F003    |;
                       LDY.W #$0002                         ;9FDC06|A00200  |;
 
          CODE_9FDC09:
                       LDA.W $17DE,Y                        ;9FDC09|B9DE17  |;
                       PLY                                  ;9FDC0C|7A      |;
                       BIT.W #$0008                         ;9FDC0D|890800  |;
                       BNE CODE_9FDC4B                      ;9FDC10|D039    |;
                       STZ.B zpCurntTeamLoopVal             ;9FDC12|6491    |;
                       LDA.W #$0002                         ;9FDC14|A90200  |;
                       STA.B $8D                            ;9FDC17|858D    |;
                       LDA.W $1503,X                        ;9FDC19|BD0315  |;
                       BEQ CODE_9FDC25                      ;9FDC1C|F007    |;
                       STZ.B $8D                            ;9FDC1E|648D    |;
                       LDA.W #$0002                         ;9FDC20|A90200  |;
                       STA.B zpCurntTeamLoopVal             ;9FDC23|8591    |;
 
          CODE_9FDC25:
                       JSL.L CODE_9FDD19                    ;9FDC25|2219DD9F|;
                       LDA.B $A5                            ;9FDC29|A5A5    |;
                       CMP.W #$0C01                         ;9FDC2B|C9010C  |;
                       BCS CODE_9FDC4B                      ;9FDC2E|B01B    |;
                       db $AD,$3A,$16,$D0,$16,$AF,$C6,$34   ;9FDC30|        |;
                       db $7E,$F0,$10,$22,$53,$DA,$9F,$22   ;9FDC38|        |;
                       db $07,$D4,$9F,$22,$36,$9B,$9F,$5C   ;9FDC40|        |;
                       db $0B,$E1,$9E                       ;9FDC48|        |;
 
          CODE_9FDC4B:
                       RTL                                  ;9FDC4B|6B      |;
 
          CODE_9FDC4C:
                       LDA.W $1283,X                        ;9FDC4C|BD8312  |;
                       BIT.W #$4000                         ;9FDC4F|890040  |;
                       BNE CODE_9FDC8E                      ;9FDC52|D03A    |;
                       LDA.W $1243,X                        ;9FDC54|BD4312  |;
                       BPL CODE_9FDC5E                      ;9FDC57|1005    |;
                       LDA.W $1263,X                        ;9FDC59|BD6312  |;
                       BMI CODE_9FDC8E                      ;9FDC5C|3030    |;
 
          CODE_9FDC5E:
                       LDA.W $1263,X                        ;9FDC5E|BD6312  |;
                       CMP.W $12A3,X                        ;9FDC61|DDA312  |;
                       BEQ CODE_9FDC8F                      ;9FDC64|F029    |;
                       LDA.W $0B7D,X                        ;9FDC66|BD7D0B  |;
                       CMP.W #$000C                         ;9FDC69|C90C00  |;
                       BEQ CODE_9FDC8E                      ;9FDC6C|F020    |;
                       CPX.W $0AD9                          ;9FDC6E|ECD90A  |;
                       BEQ CODE_9FDC8E                      ;9FDC71|F01B    |;
                       SEP #$20                             ;9FDC73|E220    |;
                       PLA                                  ;9FDC75|68      |;
                       REP #$30                             ;9FDC76|C230    |;
                       PLA                                  ;9FDC78|68      |;
                       LDA.W $1283,X                        ;9FDC79|BD8312  |;
                       ORA.W #$1000                         ;9FDC7C|090010  |;
                       STA.W $1283,X                        ;9FDC7F|9D8312  |;
                       STZ.W $1003,X                        ;9FDC82|9E0310  |;
                       LDA.W #$000C                         ;9FDC85|A90C00  |;
                       STA.B $A5                            ;9FDC88|85A5    |;
                       JML.L CODE_9E8C18                    ;9FDC8A|5C188C9E|;
 
          CODE_9FDC8E:
                       RTL                                  ;9FDC8E|6B      |;
 
          CODE_9FDC8F:
                       SEP #$20                             ;9FDC8F|E220    |;
                       PLA                                  ;9FDC91|68      |;
                       REP #$30                             ;9FDC92|C230    |;
                       PLA                                  ;9FDC94|68      |;
                       LDA.W $1283,X                        ;9FDC95|BD8312  |;
                       AND.W #$EFFF                         ;9FDC98|29FFEF  |;
                       STA.W $1283,X                        ;9FDC9B|9D8312  |;
                       STZ.W $1563,X                        ;9FDC9E|9E6315  |;
                       LDA.W #$FFFF                         ;9FDCA1|A9FFFF  |;
                       STA.W $1263,X                        ;9FDCA4|9D6312  |;
                       STA.W $1243,X                        ;9FDCA7|9D4312  |;
                       LDA.W PStructPosition                ;9FDCAA|AD430F  |;
                       STA.B $A5                            ;9FDCAD|85A5    |;
                       JMP.W CODE_9FCED0                    ;9FDCAF|4CD0CE  |;
 
          CODE_9FDCB2:
                       LDA.W $12A3,X                        ;9FDCB2|BDA312  |;
                       AND.W #$00FF                         ;9FDCB5|29FF00  |;
                       ASL A                                ;9FDCB8|0A      |;
                       STA.B $A9                            ;9FDCB9|85A9    |;
                       LDA.W $1503,X                        ;9FDCBB|BD0315  |;
                       BEQ CODE_9FDCC3                      ;9FDCBE|F003    |;
                       LDA.W #$0002                         ;9FDCC0|A90200  |;
 
          CODE_9FDCC3:
                       STA.B zpCurntTeamLoopVal             ;9FDCC3|8591    |;
                       BEQ CODE_9FDCCA                      ;9FDCC5|F003    |;
                       LDA.W #$0034                         ;9FDCC7|A93400  |;
 
          CODE_9FDCCA:
                       ADC.B $A9                            ;9FDCCA|65A9    |;
                       TAY                                  ;9FDCCC|A8      |;
                       LDA.W $17EA,Y                        ;9FDCCD|B9EA17  |;
                       STA.B $A5                            ;9FDCD0|85A5    |;
                       RTL                                  ;9FDCD2|6B      |;
                       db $A5,$91,$F0,$03,$A9,$34,$00,$18   ;9FDCD3|        |;
                       db $65,$A9,$A8,$A5,$A5,$10,$05,$A9   ;9FDCDB|        |;
                       db $00,$00,$85,$A5,$99,$EA,$17,$6B   ;9FDCE3|        |;
 
          CODE_9FDCEB:
                       PHA                                  ;9FDCEB|48      |;
                       LDA.B $A9                            ;9FDCEC|A5A9    |;
                       PHA                                  ;9FDCEE|48      |;
                       LDA.B zpCurntTeamLoopVal             ;9FDCEF|A591    |;
                       PHA                                  ;9FDCF1|48      |;
                       LDX.B $89                            ;9FDCF2|A689    |;
                       JSL.L CODE_9FDCB2                    ;9FDCF4|22B2DC9F|;
                       PLA                                  ;9FDCF8|68      |;
                       STA.B zpCurntTeamLoopVal             ;9FDCF9|8591    |;
                       PLA                                  ;9FDCFB|68      |;
                       STA.B $A9                            ;9FDCFC|85A9    |;
                       PLA                                  ;9FDCFE|68      |;
                       LDX.B $A5                            ;9FDCFF|A6A5    |;
                       JSL.L CODE_809062                    ;9FDD01|22629080|;
                       LDA.B $0A                            ;9FDD05|A50A    |;
                       ASL.B $08                            ;9FDD07|0608    |;
                       ROL A                                ;9FDD09|2A      |;
                       ASL.B $08                            ;9FDD0A|0608    |;
                       ROL A                                ;9FDD0C|2A      |;
                       ASL.B $08                            ;9FDD0D|0608    |;
                       ROL A                                ;9FDD0F|2A      |;
                       ASL.B $08                            ;9FDD10|0608    |;
                       ROL A                                ;9FDD12|2A      |;
                       STA.B $A5                            ;9FDD13|85A5    |;
                       LDX.B $95                            ;9FDD15|A695    |;
                       CLC                                  ;9FDD17|18      |;
                       RTL                                  ;9FDD18|6B      |;
 
          CODE_9FDD19:
                       LDA.B $A9                            ;9FDD19|A5A9    |;
                       PHA                                  ;9FDD1B|48      |;
                       LDA.B $AB                            ;9FDD1C|A5AB    |;
                       PHA                                  ;9FDD1E|48      |;
                       LDA.B $AD                            ;9FDD1F|A5AD    |;
                       PHA                                  ;9FDD21|48      |;
                       LDA.B $AF                            ;9FDD22|A5AF    |;
                       PHA                                  ;9FDD24|48      |;
                       LDA.B $B1                            ;9FDD25|A5B1    |;
                       PHA                                  ;9FDD27|48      |;
                       LDA.B $B3                            ;9FDD28|A5B3    |;
                       PHA                                  ;9FDD2A|48      |;
                       LDA.B $89                            ;9FDD2B|A589    |;
                       PHA                                  ;9FDD2D|48      |;
                       LDA.B $8B                            ;9FDD2E|A58B    |;
                       PHA                                  ;9FDD30|48      |;
                       STZ.B $A5                            ;9FDD31|64A5    |;
                       STZ.B $A9                            ;9FDD33|64A9    |;
                       LDA.W #$0005                         ;9FDD35|A90500  |;
                       STA.B $AD                            ;9FDD38|85AD    |;
                       STA.B $AD                            ;9FDD3A|85AD    |;
                       LDY.B zpCurntTeamLoopVal             ;9FDD3C|A491    |;
                       LDA.W $1766,Y                        ;9FDD3E|B96617  |;
                       STA.B $89                            ;9FDD41|8589    |;
 
          CODE_9FDD43:
                       LDY.B $89                            ;9FDD43|A489    |;
                       LDA.W PStructPosition,Y              ;9FDD45|B9430F  |;
                       BEQ CODE_9FDD68                      ;9FDD48|F01E    |;
                       BMI CODE_9FDD68                      ;9FDD4A|301C    |;
                       LDA.W $12A3,Y                        ;9FDD4C|B9A312  |;
                       AND.W #$00FF                         ;9FDD4F|29FF00  |;
                       ASL A                                ;9FDD52|0A      |;
                       STA.B $B1                            ;9FDD53|85B1    |;
                       LDA.B zpCurntTeamLoopVal             ;9FDD55|A591    |;
                       BEQ CODE_9FDD5C                      ;9FDD57|F003    |;
                       LDA.W #$0034                         ;9FDD59|A93400  |;
 
          CODE_9FDD5C:
                       ADC.B $B1                            ;9FDD5C|65B1    |;
                       TAY                                  ;9FDD5E|A8      |;
                       LDA.W $17EA,Y                        ;9FDD5F|B9EA17  |;
                       ADC.B $A5                            ;9FDD62|65A5    |;
                       STA.B $A5                            ;9FDD64|85A5    |;
                       INC.B $A9                            ;9FDD66|E6A9    |;
 
          CODE_9FDD68:
                       INC.B $89                            ;9FDD68|E689    |;
                       INC.B $89                            ;9FDD6A|E689    |;
                       DEC.B $AD                            ;9FDD6C|C6AD    |;
                       BPL CODE_9FDD43                      ;9FDD6E|10D3    |;
                       LDA.B $A9                            ;9FDD70|A5A9    |;
                       BEQ CODE_9FDD84                      ;9FDD72|F010    |;
                       STA.B $04                            ;9FDD74|8504    |;
                       PHX                                  ;9FDD76|DA      |;
                       LDA.B $A5                            ;9FDD77|A5A5    |;
                       STA.B $08                            ;9FDD79|8508    |;
                       JSL.L CODE_8092AA                    ;9FDD7B|22AA9280|;
                       LDA.B $00                            ;9FDD7F|A500    |;
                       STA.B $A5                            ;9FDD81|85A5    |;
                       PLX                                  ;9FDD83|FA      |;
 
          CODE_9FDD84:
                       PLA                                  ;9FDD84|68      |;
                       STA.B $8B                            ;9FDD85|858B    |;
                       PLA                                  ;9FDD87|68      |;
                       STA.B $89                            ;9FDD88|8589    |;
                       PLA                                  ;9FDD8A|68      |;
                       STA.B $B3                            ;9FDD8B|85B3    |;
                       PLA                                  ;9FDD8D|68      |;
                       STA.B $B1                            ;9FDD8E|85B1    |;
                       PLA                                  ;9FDD90|68      |;
                       STA.B $AF                            ;9FDD91|85AF    |;
                       PLA                                  ;9FDD93|68      |;
                       STA.B $AD                            ;9FDD94|85AD    |;
                       PLA                                  ;9FDD96|68      |;
                       STA.B $AB                            ;9FDD97|85AB    |;
                       PLA                                  ;9FDD99|68      |;
                       STA.B $A9                            ;9FDD9A|85A9    |;
                       RTL                                  ;9FDD9C|6B      |;
 
          CODE_9FDD9D:
                       LDA.W #$0032                         ;9FDD9D|A93200  |;
                       STA.B $A5                            ;9FDDA0|85A5    |;
 
          CODE_9FDDA2:
                       LDA.B zpCurntTeamLoopVal             ;9FDDA2|A591    |;
                       BEQ CODE_9FDDA9                      ;9FDDA4|F003    |;
                       LDA.W #$0034                         ;9FDDA6|A93400  |;
 
          CODE_9FDDA9:
                       CLC                                  ;9FDDA9|18      |;
                       ADC.B $A5                            ;9FDDAA|65A5    |;
                       TAY                                  ;9FDDAC|A8      |;
                       LDA.W #$1000                         ;9FDDAD|A90010  |;
                       STA.W $17EA,Y                        ;9FDDB0|99EA17  |;
                       LDA.W $1852,Y                        ;9FDDB3|B95218  |;
                       CMP.W #$FFFD                         ;9FDDB6|C9FDFF  |;
                       BNE CODE_9FDDC6                      ;9FDDB9|D00B    |;
                       db $C9,$FC,$FF,$D0,$06,$A9,$FE,$FF   ;9FDDBB|        |;
                       db $99,$52,$18                       ;9FDDC3|        |;
 
          CODE_9FDDC6:
                       DEC.B $A5                            ;9FDDC6|C6A5    |;
                       DEC.B $A5                            ;9FDDC8|C6A5    |;
                       BPL CODE_9FDDA2                      ;9FDDCA|10D6    |;
                       RTL                                  ;9FDDCC|6B      |;
 
          CODE_9FDDCD:
                       LDA.L $7E34C6                        ;9FDDCD|AFC6347E|;
                       BEQ CODE_9FDE12                      ;9FDDD1|F03F    |;
                       db $64,$91,$22,$DE,$DD,$9F,$A9,$02   ;9FDDD3|        |;
                       db $00,$85,$91,$A9,$32,$00,$85,$A5   ;9FDDDB|        |;
                       db $A5,$91,$F0,$03,$A9,$34,$00,$18   ;9FDDE3|        |;
                       db $65,$A5,$A8,$B9,$52,$18,$C9,$FE   ;9FDDEB|        |;
                       db $FF,$D0,$16,$B9,$EA,$17,$18,$69   ;9FDDF3|        |;
                       db $0A,$00,$99,$EA,$17,$38,$E9,$00   ;9FDDFB|        |;
                       db $10,$30,$06,$A9,$00,$10,$99,$EA   ;9FDE03|        |;
                       db $17,$C6,$A5,$C6,$A5,$10,$D1       ;9FDE0B|        |;
 
          CODE_9FDE12:
                       RTL                                  ;9FDE12|6B      |;
 
          CODE_9FDE13:
                       JSL.L CODE_9FE089                    ;9FDE13|2289E09F|;
                       LDA.W $0D11                          ;9FDE17|AD110D  |;
                       SEC                                  ;9FDE1A|38      |;
                       SBC.W #$000F                         ;9FDE1B|E90F00  |;
                       BMI CODE_9FDE26                      ;9FDE1E|3006    |;
                       LDA.W #$0001                         ;9FDE20|A90100  |;
                       TRB.W $15DC                          ;9FDE23|1CDC15  |;
 
          CODE_9FDE26:
                       INC.B $A9                            ;9FDE26|E6A9    |;
                       LDA.L $7E35D0                        ;9FDE28|AFD0357E|;
                       STA.B $AD                            ;9FDE2C|85AD    |;
                       LDA.L $7E3120                        ;9FDE2E|AF20317E|;
                       BNE CODE_9FDE38                      ;9FDE32|D004    |;
                       JSL.L CODE_9FBD9C                    ;9FDE34|229CBD9F|;
 
          CODE_9FDE38:
                       JML.L CODE_9F9B36                    ;9FDE38|5C369B9F|;
                       db $86,$87,$A2,$00,$00,$B5,$A5,$48   ;9FDE3C|        |;
                       db $E8,$E8,$E0,$10,$00,$D0,$F6,$A6   ;9FDE44|        |;
                       db $87,$A5,$8D,$48,$A5,$8F,$48,$A9   ;9FDE4C|        |;
                       db $00,$20,$8D,$0D,$0D,$A5,$A5,$4A   ;9FDE54|        |;
                       db $4A,$4A,$4A,$4A,$4A,$4A,$C9,$20   ;9FDE5C|        |;
                       db $00,$90,$03,$A9,$1F,$00,$85,$A5   ;9FDE64|        |;
                       db $A0,$02,$00,$A9,$06,$00,$8D,$2A   ;9FDE6C|        |;
                       db $0A,$A9,$03,$00,$85,$B1,$A9,$FF   ;9FDE74|        |;
                       db $FF,$85,$AD,$A5,$A5,$30,$0C,$85   ;9FDE7C|        |;
                       db $AD,$C9,$08,$00,$90,$05,$A9,$07   ;9FDE84|        |;
                       db $00,$85,$AD,$A5,$AD,$38,$65,$A9   ;9FDE8C|        |;
                       db $29,$FF,$00,$D0,$03,$A9,$20,$00   ;9FDE94|        |;
                       db $99,$2A,$0A,$C8,$A5,$A5,$38,$E9   ;9FDE9C|        |;
                       db $08,$00,$85,$A5,$C6,$B1,$10,$CE   ;9FDEA4|        |;
                       db $A5,$A9,$F0,$06,$A9,$00,$0C,$0C   ;9FDEAC|        |;
                       db $0D,$0D,$A9,$00,$00,$85,$8F,$A9   ;9FDEB4|        |;
                       db $2A,$0A,$85,$8D,$AD,$0F,$0D,$38   ;9FDEBC|        |;
                       db $E9,$0B,$00,$8D,$0F,$0D,$A9,$00   ;9FDEC4|        |;
                       db $40,$0C,$0D,$0D,$A9,$00,$00,$85   ;9FDECC|        |;
                       db $8F,$A9,$2A,$0A,$85,$8D,$E2,$20   ;9FDED4|        |;
                       db $AD,$2F,$0A,$AC,$2C,$0A,$8C,$2F   ;9FDEDC|        |;
                       db $0A,$8D,$2C,$0A,$C2,$30,$AD,$2D   ;9FDEE4|        |;
                       db $0A,$EB,$8D,$2D,$0A,$A9,$00,$40   ;9FDEEC|        |;
                       db $1C,$0D,$0D,$68,$85,$8F,$68,$85   ;9FDEF4|        |;
                       db $8D,$86,$87,$A2,$0E,$00,$68,$95   ;9FDEFC|        |;
                       db $A5,$CA,$CA,$10,$F9,$A6,$87,$6B   ;9FDF04|        |;
                       db $A5,$B1,$48,$A5,$B3,$48,$A5,$B5   ;9FDF0C|        |;
                       db $48,$A5,$B7,$48,$A5,$89,$48,$A5   ;9FDF14|        |;
                       db $8B,$48,$A5,$8D,$48,$A5,$8F,$48   ;9FDF1C|        |;
                       db $A4,$91,$B9,$DC,$1C,$85,$8D,$A9   ;9FDF24|        |;
                       db $9C,$00,$85,$8F,$A0,$06,$00,$B7   ;9FDF2C|        |;
                       db $8D,$18,$65,$8D,$85,$8D,$A5,$A5   ;9FDF34|        |;
                       db $0A,$0A,$0A,$65,$8D,$85,$8D,$64   ;9FDF3C|        |;
                       db $08,$64,$04,$A9,$80,$00,$85,$8B   ;9FDF44|        |;
                       db $A9,$B0,$D6,$85,$89,$A4,$91,$B9   ;9FDF4C|        |;
                       db $A6,$17,$85,$B5,$80,$25,$A4,$B5   ;9FDF54|        |;
                       db $B7,$89,$29,$FF,$00,$F0,$1C,$A8   ;9FDF5C|        |;
                       db $B7,$8D,$29,$FF,$00,$0A,$85,$B1   ;9FDF64|        |;
                       db $E6,$04,$A5,$91,$F0,$03,$A9,$34   ;9FDF6C|        |;
                       db $00,$65,$B1,$A8,$B9,$E8,$17,$65   ;9FDF74|        |;
                       db $08,$85,$08,$C6,$B5,$10,$D7,$DA   ;9FDF7C|        |;
                       db $22,$AA,$92,$80,$FA,$A5,$00,$85   ;9FDF84|        |;
                       db $A5,$68,$85,$8F,$68,$85,$8D,$68   ;9FDF8C|        |;
                       db $85,$8B,$68,$85,$89,$68,$85,$B7   ;9FDF94|        |;
                       db $68,$85,$B5,$68,$85,$B3,$68,$85   ;9FDF9C|        |;
                       db $B1,$6B,$22,$0C,$DF,$9F,$AD,$0D   ;9FDFA4|        |;
                       db $0D,$48,$DA,$A9,$00,$30,$8D,$0D   ;9FDFAC|        |;
                       db $0D,$A5,$A5,$C9,$00,$10,$90,$03   ;9FDFB4|        |;
                       db $A9,$00,$10,$85,$A5,$AA,$A9,$2F   ;9FDFBC|        |;
                       db $00,$22,$98,$8F,$80,$A5,$0A,$18   ;9FDFC4|        |;
                       db $69,$1D,$00,$8D,$2C,$0A,$8D,$2D   ;9FDFCC|        |;
                       db $0A,$8D,$2E,$0A,$8D,$2F,$0A,$8D   ;9FDFD4|        |;
                       db $30,$0A,$A9,$00,$00,$85,$8F,$A9   ;9FDFDC|        |;
                       db $2A,$0A,$85,$8D,$A6,$A5,$A9,$54   ;9FDFE4|        |;
                       db $00,$22,$98,$8F,$80,$FA,$A5,$0A   ;9FDFEC|        |;
                       db $1A,$1A,$87,$8D,$22,$BE,$C7,$9E   ;9FDFF4|        |;
                       db $68,$8D,$0D,$0D,$6B,$A6,$95,$A4   ;9FDFFC|        |;
                       db $91,$A5,$AD,$85,$A5,$99,$E6,$17   ;9FE004|        |;
                       db $22,$B2,$D7,$9F,$A5,$A5,$30,$2A   ;9FE00C|        |;
                       db $BD,$83,$12,$09,$08,$00,$9D,$83   ;9FE014|        |;
                       db $12,$22,$57,$C7,$9F,$A4,$91,$B9   ;9FE01C|        |;
                       db $DE,$17,$29,$F7,$FF,$99,$DE,$17   ;9FE024|        |;
                       db $A5,$A5,$99,$96,$17,$A9,$FF,$FF   ;9FE02C|        |;
                       db $99,$55,$1D,$22,$07,$D4,$9F,$4C   ;9FE034|        |;
                       db $13,$DE,$6B,$22,$AC,$CD,$9F,$A9   ;9FE03C|        |;
                       db $01,$00,$8F,$4E,$34,$7E,$64,$91   ;9FE044|        |;
                       db $A9,$02,$00,$85,$95,$22,$5C,$E0   ;9FE04C|        |;
                       db $9F,$64,$95,$A9,$02,$00,$85,$91   ;9FE054|        |;
                       db $22,$9D,$DD,$9F,$A6,$95,$A4,$91   ;9FE05C|        |;
                       db $9E,$96,$17,$AF,$C6,$34,$7E,$F0   ;9FE064|        |;
                       db $1B,$BD,$A6,$17,$38,$F9,$A6,$17   ;9FE06C|        |;
                       db $85,$A5,$F0,$10,$A9,$03,$00,$9D   ;9FE074|        |;
                       db $96,$17,$A5,$A5,$10,$06,$A9,$05   ;9FE07C|        |;
                       db $00,$9D,$96,$17,$6B               ;9FE084|        |;
 
          CODE_9FE089:
                       STZ.B $A5                            ;9FE089|64A5    |;
                       LDA.B zpCurntTeamLoopVal             ;9FE08B|A591    |;
                       BNE CODE_9FE091                      ;9FE08D|D002    |;
                       INC.B $A5                            ;9FE08F|E6A5    |;
 
          CODE_9FE091:
                       LDA.B $8F                            ;9FE091|A58F    |;
                       PHA                                  ;9FE093|48      |;
                       LDA.B $8D                            ;9FE094|A58D    |;
                       PHA                                  ;9FE096|48      |;
                       LDA.W #$009C                         ;9FE097|A99C00  |;
                       STA.B $8F                            ;9FE09A|858F    |;
                       LDA.W #$F8E4                         ;9FE09C|A9E4F8  |;
                       STA.B $8D                            ;9FE09F|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FE0A1|22BEC79E|;
                       PLA                                  ;9FE0A5|68      |;
                       STA.B $8D                            ;9FE0A6|858D    |;
                       PLA                                  ;9FE0A8|68      |;
                       STA.B $8F                            ;9FE0A9|858F    |;
                       LDA.W $15D4                          ;9FE0AB|ADD415  |;
                       BIT.W #$0002                         ;9FE0AE|890200  |;
                       BEQ CODE_9FE0BA                      ;9FE0B1|F007    |;
                       LDA.B $A5                            ;9FE0B3|A5A5    |;
                       EOR.W #$0001                         ;9FE0B5|490100  |;
                       STA.B $A5                            ;9FE0B8|85A5    |;
 
          CODE_9FE0BA:
                       PHX                                  ;9FE0BA|DA      |;
                       LDA.W #$0015                         ;9FE0BB|A91500  |;
                       LDX.B $A5                            ;9FE0BE|A6A5    |;
                       JSL.L CODE_808F4C                    ;9FE0C0|224C8F80|;
                       PLX                                  ;9FE0C4|FA      |;
                       ADC.W $0D11                          ;9FE0C5|6D110D  |;
                       STA.W $0D11                          ;9FE0C8|8D110D  |;
                       LDA.W #$0002                         ;9FE0CB|A90200  |;
                       STA.B $A5                            ;9FE0CE|85A5    |;
                       JSL.L CODE_9FD7B2                    ;9FE0D0|22B2D79F|;
                       LDA.W #$0006                         ;9FE0D4|A90600  |;
                       STA.B $A9                            ;9FE0D7|85A9    |;
                       LDA.B $A5                            ;9FE0D9|A5A5    |;
                       BPL CODE_9FE0E2                      ;9FE0DB|1005    |;
                       db $C6,$A9,$EE,$11,$0D               ;9FE0DD|        |;
 
          CODE_9FE0E2:
                       LDA.W #$000C                         ;9FE0E2|A90C00  |;
                       STA.B $A5                            ;9FE0E5|85A5    |;
                       RTL                                  ;9FE0E7|6B      |;
 
          CODE_9FE0E8:
                       LDX.W #$026F                         ;9FE0E8|A26F02  |;
 
          CODE_9FE0EB:
                       LDA.W #$000E                         ;9FE0EB|A90E00  |;
                       JSL.L CODE_9BB385                    ;9FE0EE|2285B39B|;
                       CMP.W #$000C                         ;9FE0F2|C90C00  |;
                       BCC CODE_9FE0FA                      ;9FE0F5|9003    |;
                       LDA.W #$000C                         ;9FE0F7|A90C00  |;
 
          CODE_9FE0FA:
                       STA.B $14                            ;9FE0FA|8514    |;
                       LDA.W $0792                          ;9FE0FC|AD9207  |;
                       AND.W #$0010                         ;9FE0FF|291000  |;
                       BEQ CODE_9FE111                      ;9FE102|F00D    |;
                       SEP #$20                             ;9FE104|E220    |;
                       LDA.B $14                            ;9FE106|A514    |;
                       STA.W $1A12,X                        ;9FE108|9D121A  |;
 
          CODE_9FE10B:
                       REP #$20                             ;9FE10B|C220    |;
                       DEX                                  ;9FE10D|CA      |;
                       BPL CODE_9FE0EB                      ;9FE10E|10DB    |;
                       RTL                                  ;9FE110|6B      |;
 
          CODE_9FE111:
                       SEP #$20                             ;9FE111|E220    |;
                       LDA.B #$00                           ;9FE113|A900    |;
                       SEC                                  ;9FE115|38      |;
                       SBC.B $14                            ;9FE116|E514    |;
                       STA.W $1A12,X                        ;9FE118|9D121A  |;
                       BRA CODE_9FE10B                      ;9FE11B|80EE    |;
 
          CODE_9FE11D:
                       LDA.W #$FFFF                         ;9FE11D|A9FFFF  |; Load Pause Game Menu
                       STA.L $7E3476                        ;9FE120|8F76347E|;
                       LDA.W $1D81                          ;9FE124|AD811D  |;
                       BEQ CODE_9FE130                      ;9FE127|F007    |;
                       LDA.W $1EBB                          ;9FE129|ADBB1E  |;
                       BNE CODE_9FE161                      ;9FE12C|D033    |;
                       BRA CODE_9FE16F                      ;9FE12E|803F    |;
 
          CODE_9FE130:
                       LDA.W $1630                          ;9FE130|AD3016  |;
                       CMP.W #$0004                         ;9FE133|C90400  |;
                       BEQ UNREACH_9FE145                   ;9FE136|F00D    |;
                       LDA.W $1EBB                          ;9FE138|ADBB1E  |;
                       BNE CODE_9FE153                      ;9FE13B|D016    |;
                       BRA CODE_9FE13F                      ;9FE13D|8000    |;
 
          CODE_9FE13F:
                       JSL.L CODE_9FE4BF                    ;9FE13F|22BFE49F|;
                       BRA CODE_9FE17D                      ;9FE143|8038    |;
 
       UNREACH_9FE145:
                       db $A9,$0F,$00,$8D,$B9,$1E,$A9,$01   ;9FE145|        |;
                       db $00,$8D,$B7,$1E,$80,$2A           ;9FE14D|        |;
 
          CODE_9FE153:
                       LDA.W #$0009                         ;9FE153|A90900  |;
                       STA.W $1EB9                          ;9FE156|8DB91E  |;
                       LDA.W #$0002                         ;9FE159|A90200  |;
                       STA.W $1EB7                          ;9FE15C|8DB71E  |;
                       BRA CODE_9FE17D                      ;9FE15F|801C    |;
 
          CODE_9FE161:
                       LDA.W #$0006                         ;9FE161|A90600  |;
                       STA.W $1EB9                          ;9FE164|8DB91E  |;
                       LDA.W #$0003                         ;9FE167|A90300  |;
                       STA.W $1EB7                          ;9FE16A|8DB71E  |;
                       BRA CODE_9FE17D                      ;9FE16D|800E    |;
 
          CODE_9FE16F:
                       LDA.W #$0006                         ;9FE16F|A90600  |;
                       STA.W $1EB9                          ;9FE172|8DB91E  |;
                       LDA.W #$0004                         ;9FE175|A90400  |;
                       STA.W $1EB7                          ;9FE178|8DB71E  |;
                       BRA CODE_9FE17D                      ;9FE17B|8000    |;
 
          CODE_9FE17D:
                       JSL.L CODE_80AF7B                    ;9FE17D|227BAF80|;
                       JSL.L CODE_9FBAAA                    ;9FE181|22AABA9F|;
                       JSL.L CODE_808583                    ;9FE185|22838580|;
                       JSL.L CODE_80AFDE                    ;9FE189|22DEAF80|;
                       LDA.W #$0002                         ;9FE18D|A90200  |;
                       STA.W $0ADB                          ;9FE190|8DDB0A  |;
                       LDA.W #$FFFF                         ;9FE193|A9FFFF  |;
                       STA.L $7F76DE                        ;9FE196|8FDE767F|;
                       STA.L $7F76FE                        ;9FE19A|8FFE767F|;
 
          CODE_9FE19E:
                       JSL.L CODE_9FEA24                    ;9FE19E|2224EA9F|;
                       JSL.L CODE_9FE618                    ;9FE1A2|2218E69F|;
                       LDA.B $B1                            ;9FE1A6|A5B1    |;
                       BIT.W #$1000                         ;9FE1A8|890010  |;
                       BEQ CODE_9FE1B0                      ;9FE1AB|F003    |;
                       JMP.W CODE_9FE73D                    ;9FE1AD|4C3DE7  |;
 
          CODE_9FE1B0:
                       LDA.B $A9                            ;9FE1B0|A5A9    |;
                       BIT.W #$8080                         ;9FE1B2|898080  |;
                       BNE CODE_9FE1FA                      ;9FE1B5|D043    |;
                       BIT.W #$0400                         ;9FE1B7|890004  |;
                       BEQ CODE_9FE1DD                      ;9FE1BA|F021    |;
                       INC.W $0D15                          ;9FE1BC|EE150D  |;
                       LDA.W $1EB9                          ;9FE1BF|ADB91E  |;
                       CMP.W $0D15                          ;9FE1C2|CD150D  |;
                       BEQ CODE_9FE1D8                      ;9FE1C5|F011    |;
                       LDA.W $0D15                          ;9FE1C7|AD150D  |;
                       SEC                                  ;9FE1CA|38      |;
                       SBC.W #$0005                         ;9FE1CB|E90500  |;
                       CMP.W $0D13                          ;9FE1CE|CD130D  |;
                       BMI CODE_9FE19E                      ;9FE1D1|30CB    |;
                       INC.W $0D13                          ;9FE1D3|EE130D  |;
                       BRA CODE_9FE19E                      ;9FE1D6|80C6    |;
 
          CODE_9FE1D8:
                       DEC.W $0D15                          ;9FE1D8|CE150D  |;
                       BRA CODE_9FE19E                      ;9FE1DB|80C1    |;
 
          CODE_9FE1DD:
                       BIT.W #$0800                         ;9FE1DD|890008  |;
                       BEQ CODE_9FE1FA                      ;9FE1E0|F018    |;
                       DEC.W $0D15                          ;9FE1E2|CE150D  |;
                       LDA.W $0D15                          ;9FE1E5|AD150D  |;
                       CMP.W $0D13                          ;9FE1E8|CD130D  |;
                       BPL CODE_9FE19E                      ;9FE1EB|10B1    |;
                       DEC.W $0D13                          ;9FE1ED|CE130D  |;
                       BPL CODE_9FE19E                      ;9FE1F0|10AC    |;
                       STZ.W $0D13                          ;9FE1F2|9C130D  |;
                       STZ.W $0D15                          ;9FE1F5|9C150D  |;
                       BRA CODE_9FE19E                      ;9FE1F8|80A4    |;
 
          CODE_9FE1FA:
                       LDA.W $0D15                          ;9FE1FA|AD150D  |;
                       ASL A                                ;9FE1FD|0A      |;
                       ASL A                                ;9FE1FE|0A      |;
                       STA.B $A5                            ;9FE1FF|85A5    |;
                       TAY                                  ;9FE201|A8      |;
                       LDA.W $1EB7                          ;9FE202|ADB71E  |;
                       BEQ CODE_9FE21D                      ;9FE205|F016    |;
                       CMP.W #$0001                         ;9FE207|C90100  |;
                       BEQ UNREACH_9FE235                   ;9FE20A|F029    |;
                       CMP.W #$0002                         ;9FE20C|C90200  |;
                       BEQ CODE_9FE241                      ;9FE20F|F030    |;
                       CMP.W #$0003                         ;9FE211|C90300  |;
                       BEQ CODE_9FE24D                      ;9FE214|F037    |;
                       CMP.W #$0004                         ;9FE216|C90400  |;
                       BEQ CODE_9FE259                      ;9FE219|F03E    |;
                       BRA CODE_9FE229                      ;9FE21B|800C    |;
 
          CODE_9FE21D:
                       LDA.W #$009F                         ;9FE21D|A99F00  |;
                       STA.B $8B                            ;9FE220|858B    |;
                       LDA.W #$E504                         ;9FE222|A904E5  |;
                       STA.B $89                            ;9FE225|8589    |;
                       BRA CODE_9FE263                      ;9FE227|803A    |;
 
          CODE_9FE229:
                       LDA.W #$009F                         ;9FE229|A99F00  |;
                       STA.B $8B                            ;9FE22C|858B    |;
                       LDA.W #$E544                         ;9FE22E|A944E5  |;
                       STA.B $89                            ;9FE231|8589    |;
                       BRA CODE_9FE263                      ;9FE233|802E    |;
 
       UNREACH_9FE235:
                       db $A9,$9F,$00,$85,$8B,$A9,$88,$E5   ;9FE235|        |;
                       db $85,$89,$80,$22                   ;9FE23D|        |;
 
          CODE_9FE241:
                       LDA.W #$009F                         ;9FE241|A99F00  |;
                       STA.B $8B                            ;9FE244|858B    |;
                       LDA.W #$E5C4                         ;9FE246|A9C4E5  |;
                       STA.B $89                            ;9FE249|8589    |;
                       BRA CODE_9FE263                      ;9FE24B|8016    |;
 
          CODE_9FE24D:
                       LDA.W #$009F                         ;9FE24D|A99F00  |;
                       STA.B $8B                            ;9FE250|858B    |;
                       LDA.W #$E5E8                         ;9FE252|A9E8E5  |;
                       STA.B $89                            ;9FE255|8589    |;
                       BRA CODE_9FE263                      ;9FE257|800A    |;
 
          CODE_9FE259:
                       LDA.W #$009F                         ;9FE259|A99F00  |;
                       STA.B $8B                            ;9FE25C|858B    |;
                       LDA.W #$E600                         ;9FE25E|A900E6  |;
                       STA.B $89                            ;9FE261|8589    |;
 
          CODE_9FE263:
                       LDA.B [$89],Y                        ;9FE263|B789    |;
                       STA.W $1D5A                          ;9FE265|8D5A1D  |;
                       INY                                  ;9FE268|C8      |;
                       LDA.B [$89],Y                        ;9FE269|B789    |;
                       STA.W $1D5B                          ;9FE26B|8D5B1D  |;
                       JML.L $001D59                        ;9FE26E|5C591D00|;
                       LDA.B $A9                            ;9FE272|A5A9    |;
                       BIT.W #$8080                         ;9FE274|898080  |;
                       BNE CODE_9FE27C                      ;9FE277|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE279|4C9EE1  |;
 
          CODE_9FE27C:
                       LDA.W $07F3                          ;9FE27C|ADF307  |;
                       STA.W $0CBB                          ;9FE27F|8DBB0C  |;
                       JSL.L CODE_9F96F7                    ;9FE282|22F7969F|;
                       JSL.L CODE_9C9786                    ;9FE286|2286979C|;
                       JSL.L CODE_9F9708                    ;9FE28A|2208979F|;
                       JSL.L CODE_8086A9                    ;9FE28E|22A98680|;
                       LDA.B $C1                            ;9FE292|A5C1    |;
                       PHA                                  ;9FE294|48      |;
                       LDA.B $85                            ;9FE295|A585    |;
                       DEC A                                ;9FE297|3A      |;
                       DEC A                                ;9FE298|3A      |;
                       STA.W $0D53                          ;9FE299|8D530D  |;
                       JSL.L CODE_9BAA60                    ;9FE29C|2260AA9B|;
                       JSL.L CODE_9F96E6                    ;9FE2A0|22E6969F|;
                       JSL.L CODE_8086BD                    ;9FE2A4|22BD8680|;
                       PLA                                  ;9FE2A8|68      |;
                       STA.B $C1                            ;9FE2A9|85C1    |;
                       STA.W $0ADB                          ;9FE2AB|8DDB0A  |;
 
          CODE_9FE2AE:
                       STZ.W $0CD5                          ;9FE2AE|9CD50C  |;
                       LDA.W #$03FF                         ;9FE2B1|A9FF03  |;
                       STA.W $0CD7                          ;9FE2B4|8DD70C  |;
                       LDA.W #$0001                         ;9FE2B7|A90100  |;
                       RTL                                  ;9FE2BA|6B      |;
                       LDA.B $A9                            ;9FE2BB|A5A9    |;
                       BIT.W #$8080                         ;9FE2BD|898080  |;
                       BNE CODE_9FE2C5                      ;9FE2C0|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE2C2|4C9EE1  |;
 
          CODE_9FE2C5:
                       JSL.L CODE_9C8D2E                    ;9FE2C5|222E8D9C|;
                       JSL.L CODE_9FE79F                    ;9FE2C9|229FE79F|;
                       BRA CODE_9FE2AE                      ;9FE2CD|80DF    |;
                       LDA.B $A9                            ;9FE2CF|A5A9    |;
                       BIT.W #$8080                         ;9FE2D1|898080  |;
                       BNE CODE_9FE2D9                      ;9FE2D4|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE2D6|4C9EE1  |;
 
          CODE_9FE2D9:
                       LDA.W #$0001                         ;9FE2D9|A90100  |;
                       STA.L $7E346A                        ;9FE2DC|8F6A347E|;
                       JSL.L CODE_80CA0B                    ;9FE2E0|220BCA80|;
                       LDA.W #$0000                         ;9FE2E4|A90000  |;
                       STA.L $7E346A                        ;9FE2E7|8F6A347E|;
                       JSL.L CODE_9FE79F                    ;9FE2EB|229FE79F|;
                       BRA CODE_9FE2AE                      ;9FE2EF|80BD    |;
                       LDA.B $A9                            ;9FE2F1|A5A9    |;
                       BIT.W #$8080                         ;9FE2F3|898080  |;
                       BNE CODE_9FE2FB                      ;9FE2F6|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE2F8|4C9EE1  |;
 
          CODE_9FE2FB:
                       JSL.L CODE_9D9D26                    ;9FE2FB|22269D9D|;
                       JSL.L CODE_9FE79F                    ;9FE2FF|229FE79F|;
                       BRA CODE_9FE2AE                      ;9FE303|80A9    |;
                       LDA.B $A9                            ;9FE305|A5A9    |;
                       BIT.W #$8080                         ;9FE307|898080  |;
                       BNE CODE_9FE30F                      ;9FE30A|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE30C|4C9EE1  |;
 
          CODE_9FE30F:
                       LDA.W #$0001                         ;9FE30F|A90100  |;
                       STA.L $7E346A                        ;9FE312|8F6A347E|;
                       JSL.L CODE_9B869B                    ;9FE316|229B869B|;
                       LDA.W #$0000                         ;9FE31A|A90000  |;
                       STA.L $7E346A                        ;9FE31D|8F6A347E|;
                       JSL.L CODE_9FE79F                    ;9FE321|229FE79F|;
                       BRA CODE_9FE2AE                      ;9FE325|8087    |;
                       LDA.B $A9                            ;9FE327|A5A9    |;
                       BIT.W #$8080                         ;9FE329|898080  |;
                       BNE CODE_9FE331                      ;9FE32C|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE32E|4C9EE1  |;
 
          CODE_9FE331:
                       JSL.L CODE_9C8583                    ;9FE331|2283859C|;
                       JSL.L CODE_9FE79F                    ;9FE335|229FE79F|;
                       JMP.W CODE_9FE2AE                    ;9FE339|4CAEE2  |;
                       LDA.B $A9                            ;9FE33C|A5A9    |;
                       BIT.W #$8080                         ;9FE33E|898080  |;
                       BNE CODE_9FE346                      ;9FE341|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE343|4C9EE1  |;
 
          CODE_9FE346:
                       JSL.L CODE_9B93F3                    ;9FE346|22F3939B|;
                       JSL.L CODE_9FE79F                    ;9FE34A|229FE79F|;
                       JMP.W CODE_9FE2AE                    ;9FE34E|4CAEE2  |;
                       LDA.B $A9                            ;9FE351|A5A9    |;
                       BIT.W #$8080                         ;9FE353|898080  |;
                       BNE CODE_9FE35B                      ;9FE356|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE358|4C9EE1  |;
 
          CODE_9FE35B:
                       JSL.L CODE_9B9768                    ;9FE35B|2268979B|;
                       JSL.L CODE_9FE79F                    ;9FE35F|229FE79F|;
                       JMP.W CODE_9FE2AE                    ;9FE363|4CAEE2  |;
                       LDA.B $A9                            ;9FE366|A5A9    |;
                       BIT.W #$8080                         ;9FE368|898080  |;
                       BNE CODE_9FE370                      ;9FE36B|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE36D|4C9EE1  |;
 
          CODE_9FE370:
                       JSL.L CODE_9DBD4F                    ;9FE370|224FBD9D|;
                       JSL.L CODE_9FE79F                    ;9FE374|229FE79F|;
                       JMP.W CODE_9FE2AE                    ;9FE378|4CAEE2  |;
                       LDA.B $A9                            ;9FE37B|A5A9    |;
                       BIT.W #$8080                         ;9FE37D|898080  |;
                       BNE CODE_9FE385                      ;9FE380|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE382|4C9EE1  |;
 
          CODE_9FE385:
                       JSL.L CODE_9BC25A                    ;9FE385|225AC29B|;
                       JSL.L CODE_9FE79F                    ;9FE389|229FE79F|;
                       JMP.W CODE_9FE2AE                    ;9FE38D|4CAEE2  |;
                       LDA.B $A9                            ;9FE390|A5A9    |;
                       BIT.W #$8080                         ;9FE392|898080  |;
                       BNE CODE_9FE39A                      ;9FE395|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE397|4C9EE1  |;
 
          CODE_9FE39A:
                       JSL.L CODE_9F8000                    ;9FE39A|2200809F|;
                       JSL.L CODE_9FE79F                    ;9FE39E|229FE79F|;
                       JMP.W CODE_9FE2AE                    ;9FE3A2|4CAEE2  |;
                       LDA.B $A9                            ;9FE3A5|A5A9    |;
                       BIT.W #$8080                         ;9FE3A7|898080  |;
                       BNE CODE_9FE3AF                      ;9FE3AA|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE3AC|4C9EE1  |;
 
          CODE_9FE3AF:
                       JSL.L CODE_9BA428                    ;9FE3AF|2228A49B|;
                       JSL.L CODE_9FE79F                    ;9FE3B3|229FE79F|;
                       JMP.W CODE_9FE2AE                    ;9FE3B7|4CAEE2  |;
                       JSL.L CODE_9FC76C                    ;9FE3BA|226CC79F|;
                       JSL.L fn_RtnTeamGoalieCount          ;9FE3BE|2200D39E|;
                       JSL.L CODE_9FC76C                    ;9FE3C2|226CC79F|;
                       LDY.B zpCurntTeamLoopVal             ;9FE3C6|A491    |;
                       LDA.B $A9                            ;9FE3C8|A5A9    |;
                       BIT.W #$8180                         ;9FE3CA|898081  |;
                       BNE CODE_9FE3EB                      ;9FE3CD|D01C    |;
                       BIT.W #$0200                         ;9FE3CF|890002  |;
                       BNE UNREACH_9FE3D7                   ;9FE3D2|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE3D4|4C9EE1  |;
 
       UNREACH_9FE3D7:
                       db $B9,$AA,$17,$30,$0B,$3A           ;9FE3D7|        |;
 
          CODE_9FE3DD:
                       STA.W $17AA,Y                        ;9FE3DD|99AA17  |;
                       JSL.L CODE_9FD407                    ;9FE3E0|2207D49F|;
                       JMP.W CODE_9FE19E                    ;9FE3E4|4C9EE1  |;
                       db $A5,$A5,$80,$F1                   ;9FE3E7|        |;
 
          CODE_9FE3EB:
                       LDA.W $17AA,Y                        ;9FE3EB|B9AA17  |;
                       BMI CODE_9FE3FA                      ;9FE3EE|300A    |;
                       INC A                                ;9FE3F0|1A      |;
                       CMP.B $A5                            ;9FE3F1|C5A5    |;
                       BCC CODE_9FE3DD                      ;9FE3F3|90E8    |;
                       LDA.W #$FFFF                         ;9FE3F5|A9FFFF  |;
                       BRA CODE_9FE3DD                      ;9FE3F8|80E3    |;
 
          CODE_9FE3FA:
                       LDA.W #$0000                         ;9FE3FA|A90000  |;
                       BRA CODE_9FE3DD                      ;9FE3FD|80DE    |;
                       LDA.B $A9                            ;9FE3FF|A5A9    |;
                       BIT.W #$8380                         ;9FE401|898083  |;
                       BEQ CODE_9FE415                      ;9FE404|F00F    |;
                       JSL.L CODE_9FC76C                    ;9FE406|226CC79F|;
                       LDY.B zpCurntTeamLoopVal             ;9FE40A|A491    |;
                       LDA.W $1C90,Y                        ;9FE40C|B9901C  |;
                       EOR.W #$0001                         ;9FE40F|490100  |;
                       STA.W $1C90,Y                        ;9FE412|99901C  |;
 
          CODE_9FE415:
                       JMP.W CODE_9FE19E                    ;9FE415|4C9EE1  |;
                       LDA.B $A9                            ;9FE418|A5A9    |;
                       BIT.W #$8380                         ;9FE41A|898083  |;
                       BEQ CODE_9FE42E                      ;9FE41D|F00F    |;
                       JSL.L CODE_9FC76C                    ;9FE41F|226CC79F|;
                       LDY.B zpCurntTeamLoopVal             ;9FE423|A491    |;
                       LDA.W Def_Ctrl,Y                     ;9FE425|B9941C  |;
                       EOR.W #$0001                         ;9FE428|490100  |; Turns Def Control On or Off with EOR of current value
                       STA.W Def_Ctrl,Y                     ;9FE42B|99941C  |;
 
          CODE_9FE42E:
                       JMP.W CODE_9FE19E                    ;9FE42E|4C9EE1  |;
                       LDA.B $A9                            ;9FE431|A5A9    |;
                       BIT.W #$8080                         ;9FE433|898080  |;
                       BEQ CODE_9FE42E                      ;9FE436|F0F6    |;
                       JSL.L CODE_9FC76C                    ;9FE438|226CC79F|;
                       LDY.B zpCurntTeamLoopVal             ;9FE43C|A491    |;
                       LDA.W $17E2,Y                        ;9FE43E|B9E217  |;
                       DEC A                                ;9FE441|3A      |;
                       BMI CODE_9FE4BC                      ;9FE442|3078    |;
                       STA.W $17E2,Y                        ;9FE444|99E217  |;
                       JSL.L CODE_9FDD9D                    ;9FE447|229DDD9F|;
                       LDA.B $8F                            ;9FE44B|A58F    |;
                       PHA                                  ;9FE44D|48      |;
                       LDA.B $8D                            ;9FE44E|A58D    |;
                       PHA                                  ;9FE450|48      |;
                       LDA.W #$009C                         ;9FE451|A99C00  |;
                       STA.B $8F                            ;9FE454|858F    |;
                       LDA.W #$F8E9                         ;9FE456|A9E9F8  |;
                       STA.B $8D                            ;9FE459|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FE45B|22BEC79E|;
                       PLA                                  ;9FE45F|68      |;
                       STA.B $8D                            ;9FE460|858D    |;
                       PLA                                  ;9FE462|68      |;
                       STA.B $8F                            ;9FE463|858F    |;
                       LDA.W #$0016                         ;9FE465|A91600  |;
                       STA.B $A5                            ;9FE468|85A5    |;
                       LDA.W #$0007                         ;9FE46A|A90700  |;
                       STA.B $A9                            ;9FE46D|85A9    |;
                       JSL.L CODE_9D8000                    ;9FE46F|2200809D|;
                       LDA.B $8F                            ;9FE473|A58F    |;
                       PHA                                  ;9FE475|48      |;
                       LDA.B $8D                            ;9FE476|A58D    |;
                       PHA                                  ;9FE478|48      |;
                       LDA.W #$009C                         ;9FE479|A99C00  |;
                       STA.B $8F                            ;9FE47C|858F    |;
                       LDA.W #$F8EE                         ;9FE47E|A9EEF8  |;
                       STA.B $8D                            ;9FE481|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FE483|22BEC79E|;
                       PLA                                  ;9FE487|68      |;
                       STA.B $8D                            ;9FE488|858D    |;
                       PLA                                  ;9FE48A|68      |;
                       STA.B $8F                            ;9FE48B|858F    |;
                       LDY.B zpCurntTeamLoopVal             ;9FE48D|A491    |;
                       LDA.W $1C98,Y                        ;9FE48F|B9981C  |;
                       JSL.L CODE_9BC5AB                    ;9FE492|22ABC59B|;
                       LDA.B [$8D]                          ;9FE496|A78D    |;
                       DEC A                                ;9FE498|3A      |;
                       DEC A                                ;9FE499|3A      |;
                       LSR A                                ;9FE49A|4A      |;
                       EOR.W #$FFFF                         ;9FE49B|49FFFF  |;
                       INC A                                ;9FE49E|1A      |;
                       CLC                                  ;9FE49F|18      |;
                       ADC.W #$0010                         ;9FE4A0|691000  |;
                       STA.W $0D0F                          ;9FE4A3|8D0F0D  |;
                       JSL.L CODE_9EC7BE                    ;9FE4A6|22BEC79E|;
                       JSL.L CODE_9DD923                    ;9FE4AA|2223D99D|;
                       LDX.W #$0096                         ;9FE4AE|A29600  |;
                       LDY.W #$0000                         ;9FE4B1|A00000  |;
                       JSL.L CODE_80858E                    ;9FE4B4|228E8580|;
                       JSL.L CODE_9FE4BF                    ;9FE4B8|22BFE49F|;
 
          CODE_9FE4BC:
                       JMP.W CODE_9FE19E                    ;9FE4BC|4C9EE1  |;
 
          CODE_9FE4BF:
                       LDX.W $0AC6                          ;9FE4BF|AEC60A  |;
                       BMI CODE_9FE4E8                      ;9FE4C2|3024    |;
                       LDA.W $15D6                          ;9FE4C4|ADD615  |;
                       BEQ CODE_9FE4E8                      ;9FE4C7|F01F    |;
                       LDA.W $1A10                          ;9FE4C9|AD101A  |;
                       BNE CODE_9FE4E8                      ;9FE4CC|D01A    |;
                       LDA.W $1C84,X                        ;9FE4CE|BD841C  |;
                       AND.W #$0002                         ;9FE4D1|290200  |;
                       TAY                                  ;9FE4D4|A8      |;
                       LDA.W $17E2,Y                        ;9FE4D5|B9E217  |;
                       BEQ CODE_9FE4E8                      ;9FE4D8|F00E    |;
                       LDA.W #$0011                         ;9FE4DA|A91100  |;
                       STA.W $1EB9                          ;9FE4DD|8DB91E  |;
                       LDA.W #$0005                         ;9FE4E0|A90500  |;
                       STA.W $1EB7                          ;9FE4E3|8DB71E  |;
                       BRA CODE_9FE4F4                      ;9FE4E6|800C    |;
 
          CODE_9FE4E8:
                       LDA.W #$0010                         ;9FE4E8|A91000  |;
                       STA.W $1EB9                          ;9FE4EB|8DB91E  |;
                       LDA.W #$0000                         ;9FE4EE|A90000  |;
                       STA.W $1EB7                          ;9FE4F1|8DB71E  |;
 
          CODE_9FE4F4:
                       LDA.W $0D13                          ;9FE4F4|AD130D  |;
                       CLC                                  ;9FE4F7|18      |;
                       ADC.W #$0005                         ;9FE4F8|690500  |;
                       CMP.W $1EB9                          ;9FE4FB|CDB91E  |;
                       BCC CODE_9FE503                      ;9FE4FE|9003    |;
                       db $CE,$13,$0D                       ;9FE500|        |;
 
          CODE_9FE503:
                       RTL                                  ;9FE503|6B      |;
                       db $33,$E7,$9F                       ;9FE504|        |;
                       db $00                               ;9FE507|        |;
                       db $72,$E2,$9F                       ;9FE508|        |;
                       db $00                               ;9FE50B|        |;
                       db $BB,$E2,$9F                       ;9FE50C|        |;
                       db $00                               ;9FE50F|        |;
                       db $F1,$E2,$9F                       ;9FE510|        |;
                       db $00                               ;9FE513|        |;
                       db $05,$E3,$9F                       ;9FE514|        |;
                       db $00                               ;9FE517|        |;
                       db $27,$E3,$9F                       ;9FE518|        |;
                       db $00                               ;9FE51B|        |;
                       db $3C,$E3,$9F                       ;9FE51C|        |;
                       db $00                               ;9FE51F|        |;
                       db $51,$E3,$9F                       ;9FE520|        |;
                       db $00                               ;9FE523|        |;
                       db $90,$E3,$9F                       ;9FE524|        |;
                       db $00                               ;9FE527|        |;
                       db $BA,$E3,$9F                       ;9FE528|        |;
                       db $00                               ;9FE52B|        |;
                       db $FF,$E3,$9F                       ;9FE52C|        |;
                       db $00                               ;9FE52F|        |;
                       db $18,$E4,$9F                       ;9FE530|        |;
                       db $00                               ;9FE533|        |;
                       db $66,$E3,$9F                       ;9FE534|        |;
                       db $00                               ;9FE537|        |;
                       db $7B,$E3,$9F                       ;9FE538|        |;
                       db $00                               ;9FE53B|        |;
                       db $A5,$E3,$9F                       ;9FE53C|        |;
                       db $00                               ;9FE53F|        |;
                       db $41,$E7,$9F                       ;9FE540|        |;
                       db $00                               ;9FE543|        |;
                       db $33,$E7,$9F                       ;9FE544|        |;
                       db $00                               ;9FE547|        |;
                       db $72,$E2,$9F                       ;9FE548|        |;
                       db $00                               ;9FE54B|        |;
                       db $BB,$E2,$9F                       ;9FE54C|        |;
                       db $00                               ;9FE54F|        |;
                       db $F1,$E2,$9F                       ;9FE550|        |;
                       db $00                               ;9FE553|        |;
                       db $05,$E3,$9F                       ;9FE554|        |;
                       db $00                               ;9FE557|        |;
                       db $31,$E4,$9F                       ;9FE558|        |;
                       db $00,$27,$E3,$9F,$00,$3C,$E3,$9F   ;9FE55B|        |;
                       db $00,$51,$E3,$9F,$00,$90,$E3,$9F   ;9FE563|        |;
                       db $00,$BA,$E3,$9F,$00,$FF,$E3,$9F   ;9FE56B|        |;
                       db $00,$18,$E4,$9F,$00,$66,$E3,$9F   ;9FE573|        |;
                       db $00,$7B,$E3,$9F,$00,$A5,$E3,$9F   ;9FE57B|        |;
                       db $00,$41,$E7,$9F,$00,$33,$E7,$9F   ;9FE583|        |;
                       db $00,$72,$E2,$9F,$00,$BB,$E2,$9F   ;9FE58B|        |;
                       db $00,$F1,$E2,$9F,$00,$05,$E3,$9F   ;9FE593|        |;
                       db $00,$27,$E3,$9F,$00,$3C,$E3,$9F   ;9FE59B|        |;
                       db $00,$51,$E3,$9F,$00,$90,$E3,$9F   ;9FE5A3|        |;
                       db $00,$BA,$E3,$9F,$00,$FF,$E3,$9F   ;9FE5AB|        |;
                       db $00,$18,$E4,$9F,$00,$66,$E3,$9F   ;9FE5B3|        |;
                       db $00,$7B,$E3,$9F,$00,$A5,$E3,$9F   ;9FE5BB|        |;
                       db $00                               ;9FE5C3|        |;
                       db $33,$E7,$9F                       ;9FE5C4|        |;
                       db $00                               ;9FE5C7|        |;
                       db $F1,$E2,$9F                       ;9FE5C8|        |;
                       db $00                               ;9FE5CB|        |;
                       db $05,$E3,$9F                       ;9FE5CC|        |;
                       db $00                               ;9FE5CF|        |;
                       db $BA,$E3,$9F                       ;9FE5D0|        |;
                       db $00                               ;9FE5D3|        |;
                       db $FF,$E3,$9F                       ;9FE5D4|        |;
                       db $00                               ;9FE5D7|        |;
                       db $18,$E4,$9F                       ;9FE5D8|        |;
                       db $00                               ;9FE5DB|        |;
                       db $66,$E3,$9F                       ;9FE5DC|        |;
                       db $00                               ;9FE5DF|        |;
                       db $7B,$E3,$9F                       ;9FE5E0|        |;
                       db $00                               ;9FE5E3|        |;
                       db $41,$E7,$9F                       ;9FE5E4|        |;
                       db $00,$33,$E7,$9F,$00,$CF,$E2,$9F   ;9FE5E7|        |;
                       db $00,$F1,$E2,$9F,$00,$FF,$E3,$9F   ;9FE5EF|        |;
                       db $00,$66,$E3,$9F,$00,$41,$E7,$9F   ;9FE5F7|        |;
                       db $00,$33,$E7,$9F,$00,$72,$E2,$9F   ;9FE5FF|        |;
                       db $00,$F1,$E2,$9F,$00,$FF,$E3,$9F   ;9FE607|        |;
                       db $00,$66,$E3,$9F,$00,$41,$E7,$9F   ;9FE60F|        |;
                       db $00                               ;9FE617|        |;
 
          CODE_9FE618:
                       JSL.L CODE_9FF1D1                    ;9FE618|22D1F19F|;
                       JSR.W CODE_9FE75E                    ;9FE61C|205EE7  |;
                       JSL.L CODE_9FA393                    ;9FE61F|2293A39F|;
                       BEQ CODE_9FE628                      ;9FE623|F003    |;
                       db $4C,$0D,$E7                       ;9FE625|        |;
 
          CODE_9FE628:
                       JSL.L CODE_80AF7B                    ;9FE628|227BAF80|;
                       JSL.L CODE_9FBAAA                    ;9FE62C|22AABA9F|;
                       JSL.L CODE_808583                    ;9FE630|22838580|;
                       JSL.L CODE_80AFDE                    ;9FE634|22DEAF80|;
                       JSL.L CODE_9B8017                    ;9FE638|2217809B|;
                       LDA.W $0AC6                          ;9FE63C|ADC60A  |;
                       BPL CODE_9FE6B8                      ;9FE63F|1077    |;
                       LDA.W #$0000                         ;9FE641|A90000  |;
                       PHA                                  ;9FE644|48      |;
 
          CODE_9FE645:
                       LDA.B $01,S                          ;9FE645|A301    |;
                       ASL A                                ;9FE647|0A      |;
                       TAX                                  ;9FE648|AA      |;
                       LDA.W $0776,X                        ;9FE649|BD7607  |;
                       BIT.W #$000F                         ;9FE64C|890F00  |;
                       BNE CODE_9FE660                      ;9FE64F|D00F    |;
                       LDA.W $1C84,X                        ;9FE651|BD841C  |;
                       BEQ CODE_9FE660                      ;9FE654|F00A    |;
                       LDA.B $01,S                          ;9FE656|A301    |;
                       JSL.L CODE_9B84DC                    ;9FE658|22DC849B|;
                       LDA.B $B1                            ;9FE65C|A5B1    |;
                       BNE CODE_9FE66E                      ;9FE65E|D00E    |;
 
          CODE_9FE660:
                       LDA.B $01,S                          ;9FE660|A301    |;
                       INC A                                ;9FE662|1A      |;
                       STA.B $01,S                          ;9FE663|8301    |;
                       CMP.W #$0005                         ;9FE665|C90500  |;
                       BCC CODE_9FE645                      ;9FE668|90DB    |;
                       PLA                                  ;9FE66A|68      |;
                       JMP.W CODE_9FE6F2                    ;9FE66B|4CF2E6  |;
 
          CODE_9FE66E:
                       PLA                                  ;9FE66E|68      |;
                       ASL A                                ;9FE66F|0A      |;
                       TAX                                  ;9FE670|AA      |;
                       LDA.W JyPadHmAwy,X                   ;9FE671|BD841C  |;
                       EOR.W #$FFFF                         ;9FE674|49FFFF  |;
                       INC A                                ;9FE677|1A      |;
                       CMP.W $0AC6                          ;9FE678|CDC60A  |;
                       BEQ CODE_9FE6AE                      ;9FE67B|F031    |;
                       db $8E,$C6,$0A,$9C,$15,$0D,$9C,$13   ;9FE67D|        |;
                       db $0D,$22,$24,$EA,$9F,$22,$23,$D9   ;9FE685|        |;
                       db $9D,$20,$FD,$E9,$A9,$3C,$00,$8D   ;9FE68D|        |;
                       db $C8,$0A,$A9,$14,$00,$8D,$C4,$0A   ;9FE695|        |;
                       db $AD,$B7,$1E,$F0,$07,$C9,$05,$00   ;9FE69D|        |;
                       db $F0,$02,$80,$04,$22,$BF,$E4,$9F   ;9FE6A5|        |;
                       db $6B                               ;9FE6AD|        |;
 
          CODE_9FE6AE:
                       STX.W $0AC6                          ;9FE6AE|8EC60A  |;
                       LDA.W #$003C                         ;9FE6B1|A93C00  |;
                       STA.W $0AC8                          ;9FE6B4|8DC80A  |;
                       TXA                                  ;9FE6B7|8A      |;
 
          CODE_9FE6B8:
                       LSR A                                ;9FE6B8|4A      |;
                       JSL.L CODE_9B84DC                    ;9FE6B9|22DC849B|;
                       DEC.W $0AC4                          ;9FE6BD|CEC40A  |;
                       DEC.W $0AC4                          ;9FE6C0|CEC40A  |;
                       JSL.L CODE_9B852C                    ;9FE6C3|222C859B|;
                       LDA.B $B1                            ;9FE6C7|A5B1    |;
                       BNE CODE_9FE6EC                      ;9FE6C9|D021    |;
                       LDA.W $0AC8                          ;9FE6CB|ADC80A  |;
                       BEQ CODE_9FE6F2                      ;9FE6CE|F022    |;
                       SEC                                  ;9FE6D0|38      |;
                       SBC.W #$0003                         ;9FE6D1|E90300  |;
                       STA.W $0AC8                          ;9FE6D4|8DC80A  |;
                       BEQ CODE_9FE6DB                      ;9FE6D7|F002    |;
                       BPL CODE_9FE6F2                      ;9FE6D9|1017    |;
 
          CODE_9FE6DB:
                       STZ.W $0AC8                          ;9FE6DB|9CC80A  |;
                       LDX.W $0AC6                          ;9FE6DE|AEC60A  |;
                       LDA.W $1C84,X                        ;9FE6E1|BD841C  |;
                       EOR.W #$FFFF                         ;9FE6E4|49FFFF  |;
                       INC A                                ;9FE6E7|1A      |;
                       STA.W $0AC6                          ;9FE6E8|8DC60A  |;
                       RTL                                  ;9FE6EB|6B      |;
 
          CODE_9FE6EC:
                       LDA.W #$003C                         ;9FE6EC|A93C00  |;
                       STA.W $0AC8                          ;9FE6EF|8DC80A  |;
 
          CODE_9FE6F2:
                       LDA.W $0D2F                          ;9FE6F2|AD2F0D  |;
                       BEQ CODE_9FE712                      ;9FE6F5|F01B    |;
                       LDA.W JyPadHmAwy                     ;9FE6F7|AD841C  |;
                       ORA.W $1C86                          ;9FE6FA|0D861C  |;
                       ORA.W $1C88                          ;9FE6FD|0D881C  |;
                       ORA.W $1C8A                          ;9FE700|0D8A1C  |;
                       ORA.W $1C8C                          ;9FE703|0D8C1C  |;
                       BNE CODE_9FE712                      ;9FE706|D00A    |;
                       db $CE,$E3,$0C,$D0,$05,$A9,$00,$10   ;9FE708|        |;
                       db $04,$B1                           ;9FE710|        |;
 
          CODE_9FE712:
                       LDA.B $A9                            ;9FE712|A5A9    |;
                       ORA.B $B1                            ;9FE714|05B1    |;
                       BNE CODE_9FE71B                      ;9FE716|D003    |;
                       JMP.W CODE_9FE618                    ;9FE718|4C18E6  |;
 
          CODE_9FE71B:
                       LDA.W JyPadHmAwy                     ;9FE71B|AD841C  |;
                       ORA.W $1C86                          ;9FE71E|0D861C  |;
                       ORA.W $1C88                          ;9FE721|0D881C  |;
                       ORA.W $1C8A                          ;9FE724|0D8A1C  |;
                       ORA.W $1C8C                          ;9FE727|0D8C1C  |;
                       BEQ CODE_9FE732                      ;9FE72A|F006    |;
                       LDA.W #$EA60                         ;9FE72C|A960EA  |;
                       STA.W $0CE3                          ;9FE72F|8DE30C  |;
 
          CODE_9FE732:
                       RTL                                  ;9FE732|6B      |;
                       LDA.B $A9                            ;9FE733|A5A9    |;
                       BIT.W #$9080                         ;9FE735|898090  |;
                       BNE CODE_9FE73D                      ;9FE738|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE73A|4C9EE1  |;
 
          CODE_9FE73D:
                       LDA.W #$0000                         ;9FE73D|A90000  |;
                       RTL                                  ;9FE740|6B      |;
                       LDA.B $A9                            ;9FE741|A5A9    |;
                       BIT.W #$8080                         ;9FE743|898080  |;
                       BNE CODE_9FE74B                      ;9FE746|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE748|4C9EE1  |;
 
          CODE_9FE74B:
                       JSL.L CODE_9FF00B                    ;9FE74B|220BF09F|;
                       CMP.W #$0000                         ;9FE74F|C90000  |;
                       BNE CODE_9FE757                      ;9FE752|D003    |;
                       JMP.W CODE_9FE19E                    ;9FE754|4C9EE1  |;
 
          CODE_9FE757:
                       STZ.W $07C6                          ;9FE757|9CC607  |;
                       JML.L CODE_9F82D2                    ;9FE75A|5CD2829F|;
 
          CODE_9FE75E:
                       LDA.L $7E34CC                        ;9FE75E|AFCC347E|;
                       BEQ CODE_9FE793                      ;9FE762|F02F    |;
                       LDX.W $0AC6                          ;9FE764|AEC60A  |;
                       BMI CODE_9FE793                      ;9FE767|302A    |;
                       LDA.W $1C84,X                        ;9FE769|BD841C  |;
                       BEQ CODE_9FE793                      ;9FE76C|F025    |;
                       DEC A                                ;9FE76E|3A      |;
                       BEQ CODE_9FE780                      ;9FE76F|F00F    |;
                       LDX.W #$76DE                         ;9FE771|A2DE76  |;
                       LDY.W #$007F                         ;9FE774|A07F00  |;
                       LDA.W #$FFFF                         ;9FE777|A9FFFF  |;
                       STA.L $7F76FE                        ;9FE77A|8FFE767F|;
                       BRA CODE_9FE78D                      ;9FE77E|800D    |;
 
          CODE_9FE780:
                       LDX.W #$76FE                         ;9FE780|A2FE76  |;
                       LDY.W #$007F                         ;9FE783|A07F00  |;
                       LDA.W #$FFFF                         ;9FE786|A9FFFF  |;
                       STA.L $7F76DE                        ;9FE789|8FDE767F|;
 
          CODE_9FE78D:
                       JSL.L CODE_9D96A9                    ;9FE78D|22A9969D|;
                       BRA CODE_9FE79E                      ;9FE791|800B    |;
 
          CODE_9FE793:
                       LDA.W #$FFFF                         ;9FE793|A9FFFF  |;
                       STA.L $7F76DE                        ;9FE796|8FDE767F|;
                       STA.L $7F76FE                        ;9FE79A|8FFE767F|;
 
          CODE_9FE79E:
                       RTS                                  ;9FE79E|60      |;
 
          CODE_9FE79F:
                       JSL.L CODE_9F96F7                    ;9FE79F|22F7969F|;
                       LDA.W #$FFFF                         ;9FE7A3|A9FFFF  |;
                       STA.W $07C6                          ;9FE7A6|8DC607  |;
                       JSL.L CODE_9BC1D5                    ;9FE7A9|22D5C19B|;
                       LDA.W #$0081                         ;9FE7AD|A98100  |;
                       STA.B $0E                            ;9FE7B0|850E    |;
                       LDA.W #$8000                         ;9FE7B2|A90080  |;
                       STA.B $0C                            ;9FE7B5|850C    |;
                       LDA.W #$007F                         ;9FE7B7|A97F00  |;
                       STA.B $12                            ;9FE7BA|8512    |;
                       LDA.W #$0000                         ;9FE7BC|A90000  |;
                       STA.B $10                            ;9FE7BF|8510    |;
                       JSL.L CODE_80C373                    ;9FE7C1|2273C380|;
                       PHX                                  ;9FE7C5|DA      |;
                       JSL.L CODE_9F9708                    ;9FE7C6|2208979F|;
                       JSL.L CODE_8086A9                    ;9FE7CA|22A98680|;
                       JSL.L CODE_80AF7B                    ;9FE7CE|227BAF80|;
                       JSL.L CODE_80AFDE                    ;9FE7D2|22DEAF80|;
                       JSL.L CODE_9FB901                    ;9FE7D6|2201B99F|;
                       SEP #$20                             ;9FE7DA|E220    |;
                       LDA.B #$00                           ;9FE7DC|A900    |;
                       STA.W $2107                          ;9FE7DE|8D0721  |;
                       LDA.B #$05                           ;9FE7E1|A905    |;
                       STA.W $2108                          ;9FE7E3|8D0821  |;
                       LDA.B #$12                           ;9FE7E6|A912    |;
                       STA.W $210B                          ;9FE7E8|8D0B21  |;
                       LDA.B #$13                           ;9FE7EB|A913    |;
                       STA.W $212C                          ;9FE7ED|8D2C21  |;
                       LDA.B #$03                           ;9FE7F0|A903    |;
                       STA.W $2101                          ;9FE7F2|8D0121  |;
                       REP #$20                             ;9FE7F5|C220    |;
                       LDA.W #$007E                         ;9FE7F7|A97E00  |;
                       STA.B $0E                            ;9FE7FA|850E    |;
                       LDA.W #$35F4                         ;9FE7FC|A9F435  |;
                       STA.B $0C                            ;9FE7FF|850C    |;
                       LDY.W #$0000                         ;9FE801|A00000  |;
                       LDX.W #$0040                         ;9FE804|A24000  |;
                       JSL.L CODE_808723                    ;9FE807|22238780|;
                       LDA.W #$FF00                         ;9FE80B|A900FF  |;
                       STA.L $7E35AA                        ;9FE80E|8FAA357E|;
                       LDA.W #$0000                         ;9FE812|A90000  |;
                       STA.L $7E35AC                        ;9FE815|8FAC357E|;
                       PLX                                  ;9FE819|FA      |;
                       LDA.W #$007F                         ;9FE81A|A97F00  |;
                       STA.B $0E                            ;9FE81D|850E    |;
                       LDA.W #$0000                         ;9FE81F|A90000  |;
                       STA.B $0C                            ;9FE822|850C    |;
                       LDY.W #$1000                         ;9FE824|A00010  |;
                       JSL.L CODE_80891F                    ;9FE827|221F8980|;
                       LDA.W $1C98                          ;9FE82B|AD981C  |;
                       ASL A                                ;9FE82E|0A      |;
                       ASL A                                ;9FE82F|0A      |;
                       ASL A                                ;9FE830|0A      |;
                       TAX                                  ;9FE831|AA      |;
                       LDA.L UNREACH_9C83B9,X               ;9FE832|BFB9839C|;
                       STA.B $0E                            ;9FE836|850E    |;
                       LDA.L UNREACH_9C83B7,X               ;9FE838|BFB7839C|;
                       STA.B $0C                            ;9FE83C|850C    |;
                       LDA.W #$007F                         ;9FE83E|A97F00  |;
                       STA.B $12                            ;9FE841|8512    |;
                       LDA.W #$0000                         ;9FE843|A90000  |;
                       STA.B $10                            ;9FE846|8510    |;
                       JSL.L CODE_80C373                    ;9FE848|2273C380|;
                       STX.B $10                            ;9FE84C|8610    |;
                       STX.B $00                            ;9FE84E|8600    |;
                       LDA.W #$007F                         ;9FE850|A97F00  |;
                       STA.B $0E                            ;9FE853|850E    |;
                       STA.B $12                            ;9FE855|8512    |;
                       STZ.B $0C                            ;9FE857|640C    |;
                       JSL.L CODE_9B85C2                    ;9FE859|22C2859B|;
                       LDX.B $10                            ;9FE85D|A610    |;
                       STX.B $0C                            ;9FE85F|860C    |;
                       LDA.L $7E35B8                        ;9FE861|AFB8357E|;
                       ASL A                                ;9FE865|0A      |;
                       ASL A                                ;9FE866|0A      |;
                       ASL A                                ;9FE867|0A      |;
                       ASL A                                ;9FE868|0A      |;
                       ADC.W #$1000                         ;9FE869|690010  |;
                       TAY                                  ;9FE86C|A8      |;
                       JSL.L CODE_80891F                    ;9FE86D|221F8980|;
                       LDA.W #$0096                         ;9FE871|A99600  |;
                       STA.B $0E                            ;9FE874|850E    |;
                       LDA.W #$B2CF                         ;9FE876|A9CFB2  |;
                       STA.B $0C                            ;9FE879|850C    |;
                       LDA.W #$007F                         ;9FE87B|A97F00  |;
                       STA.B $12                            ;9FE87E|8512    |;
                       LDA.W #$0000                         ;9FE880|A90000  |;
                       STA.B $10                            ;9FE883|8510    |;
                       JSL.L CODE_80C373                    ;9FE885|2273C380|;
                       LDA.W #$007F                         ;9FE889|A97F00  |;
                       STA.B $0E                            ;9FE88C|850E    |;
                       LDA.W #$0000                         ;9FE88E|A90000  |;
                       STA.B $0C                            ;9FE891|850C    |;
                       LDA.L $7E35BA                        ;9FE893|AFBA357E|;
                       ASL A                                ;9FE897|0A      |;
                       ASL A                                ;9FE898|0A      |;
                       ASL A                                ;9FE899|0A      |;
                       ASL A                                ;9FE89A|0A      |;
                       ADC.W #$1000                         ;9FE89B|690010  |;
                       TAY                                  ;9FE89E|A8      |;
                       JSL.L CODE_80891F                    ;9FE89F|221F8980|;
                       LDA.W #$009A                         ;9FE8A3|A99A00  |;
                       STA.B $0E                            ;9FE8A6|850E    |;
                       LDA.W #$C98B                         ;9FE8A8|A98BC9  |;
                       STA.B $0C                            ;9FE8AB|850C    |;
                       JSL.L CODE_80C373                    ;9FE8AD|2273C380|;
                       LDA.W #$007F                         ;9FE8B1|A97F00  |;
                       STA.B $0E                            ;9FE8B4|850E    |;
                       LDA.W #$0000                         ;9FE8B6|A90000  |;
                       STA.B $0C                            ;9FE8B9|850C    |;
                       LDY.W #$FFFF                         ;9FE8BB|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9FE8BE|221F8980|;
                       LDA.W #$0095                         ;9FE8C2|A99500  |;
                       STA.B $0E                            ;9FE8C5|850E    |;
                       LDA.W #$E304                         ;9FE8C7|A904E3  |;
                       STA.B $0C                            ;9FE8CA|850C    |;
                       JSL.L CODE_80C373                    ;9FE8CC|2273C380|;
                       LDA.W #$007F                         ;9FE8D0|A97F00  |;
                       STA.B $0E                            ;9FE8D3|850E    |;
                       LDA.W #$0000                         ;9FE8D5|A90000  |;
                       STA.B $0C                            ;9FE8D8|850C    |;
                       LDY.W #$FFFF                         ;9FE8DA|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9FE8DD|221F8980|;
                       LDA.W #$0095                         ;9FE8E1|A99500  |;
                       STA.B $0E                            ;9FE8E4|850E    |;
                       LDA.W #$BA96                         ;9FE8E6|A996BA  |;
                       STA.B $0C                            ;9FE8E9|850C    |;
                       JSL.L CODE_80C373                    ;9FE8EB|2273C380|;
                       LDA.W #$007F                         ;9FE8EF|A97F00  |;
                       STA.B $0E                            ;9FE8F2|850E    |;
                       LDA.W #$0000                         ;9FE8F4|A90000  |;
                       STA.B $0C                            ;9FE8F7|850C    |;
                       LDY.W #$FFFF                         ;9FE8F9|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9FE8FC|221F8980|;
                       LDA.W #$0096                         ;9FE900|A99600  |;
                       STA.B $0E                            ;9FE903|850E    |;
                       LDA.W #$A103                         ;9FE905|A903A1  |;
                       STA.B $0C                            ;9FE908|850C    |;
                       LDA.W #$007F                         ;9FE90A|A97F00  |;
                       STA.B $12                            ;9FE90D|8512    |;
                       LDA.W #$0000                         ;9FE90F|A90000  |;
                       STA.B $10                            ;9FE912|8510    |;
                       JSL.L CODE_80C373                    ;9FE914|2273C380|;
                       TXA                                  ;9FE918|8A      |;
                       LSR A                                ;9FE919|4A      |;
                       LSR A                                ;9FE91A|4A      |;
                       LSR A                                ;9FE91B|4A      |;
                       LSR A                                ;9FE91C|4A      |;
                       LSR A                                ;9FE91D|4A      |;
                       STA.B $A5                            ;9FE91E|85A5    |;
                       LDA.L $7E35B6                        ;9FE920|AFB6357E|;
                       ASL A                                ;9FE924|0A      |;
                       ASL A                                ;9FE925|0A      |;
                       ASL A                                ;9FE926|0A      |;
                       ASL A                                ;9FE927|0A      |;
                       ADC.W #$1000                         ;9FE928|690010  |;
                       STA.W $2116                          ;9FE92B|8D1621  |;
                       LDA.W #$007F                         ;9FE92E|A97F00  |;
                       STA.B $8B                            ;9FE931|858B    |;
                       LDA.W #$0000                         ;9FE933|A90000  |;
                       STA.B $89                            ;9FE936|8589    |;
                       LDA.W #$0080                         ;9FE938|A98000  |;
                       STA.B $8F                            ;9FE93B|858F    |;
                       LDA.W #$D3D0                         ;9FE93D|A9D0D3  |;
                       STA.B $8D                            ;9FE940|858D    |;
                       JSL.L CODE_9B854B                    ;9FE942|224B859B|;
                       LDA.W #$009C                         ;9FE946|A99C00  |;
                       STA.B $8B                            ;9FE949|858B    |;
                       LDA.W #$8000                         ;9FE94B|A90080  |;
                       STA.B $89                            ;9FE94E|8589    |;
                       LDA.W #$0080                         ;9FE950|A98000  |;
                       STA.B $8F                            ;9FE953|858F    |;
                       LDA.W #$D3E7                         ;9FE955|A9E7D3  |;
                       STA.B $8D                            ;9FE958|858D    |;
                       LDA.W #$0004                         ;9FE95A|A90400  |;
                       STA.B $A5                            ;9FE95D|85A5    |;
                       JSL.L CODE_9B854B                    ;9FE95F|224B859B|;
                       LDA.W #$0096                         ;9FE963|A99600  |;
                       STA.B $0E                            ;9FE966|850E    |;
                       LDA.W #$BABD                         ;9FE968|A9BDBA  |;
                       STA.B $0C                            ;9FE96B|850C    |;
                       LDA.W #$007F                         ;9FE96D|A97F00  |;
                       STA.B $12                            ;9FE970|8512    |;
                       LDA.W #$0000                         ;9FE972|A90000  |;
                       STA.B $10                            ;9FE975|8510    |;
                       JSL.L CODE_80C373                    ;9FE977|2273C380|;
                       TXA                                  ;9FE97B|8A      |;
                       LSR A                                ;9FE97C|4A      |;
                       LSR A                                ;9FE97D|4A      |;
                       LSR A                                ;9FE97E|4A      |;
                       LSR A                                ;9FE97F|4A      |;
                       LSR A                                ;9FE980|4A      |;
                       STA.B $A5                            ;9FE981|85A5    |;
                       ADC.L $7E35AE                        ;9FE983|6FAE357E|;
                       STA.L $7E35CE                        ;9FE987|8FCE357E|;
                       LDA.W #$007F                         ;9FE98B|A97F00  |;
                       STA.B $0E                            ;9FE98E|850E    |;
                       LDA.W #$0000                         ;9FE990|A90000  |;
                       STA.B $0C                            ;9FE993|850C    |;
                       LDY.W #$FFFF                         ;9FE995|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9FE998|221F8980|;
                       LDA.W #$009A                         ;9FE99C|A99A00  |;
                       STA.B $0E                            ;9FE99F|850E    |;
                       LDA.W #$C1F3                         ;9FE9A1|A9F3C1  |;
                       STA.B $0C                            ;9FE9A4|850C    |;
                       JSL.L CODE_80C373                    ;9FE9A6|2273C380|;
                       TXA                                  ;9FE9AA|8A      |;
                       LSR A                                ;9FE9AB|4A      |;
                       LSR A                                ;9FE9AC|4A      |;
                       LSR A                                ;9FE9AD|4A      |;
                       LSR A                                ;9FE9AE|4A      |;
                       LSR A                                ;9FE9AF|4A      |;
                       ADC.L $7E35CE                        ;9FE9B0|6FCE357E|;
                       LDA.W #$007F                         ;9FE9B4|A97F00  |;
                       STA.B $0E                            ;9FE9B7|850E    |;
                       LDA.W #$0000                         ;9FE9B9|A90000  |;
                       STA.B $0C                            ;9FE9BC|850C    |;
                       LDY.W #$FFFF                         ;9FE9BE|A0FFFF  |;
                       JSL.L CODE_80891F                    ;9FE9C1|221F8980|;
                       LDA.W $0CC7                          ;9FE9C5|ADC70C  |;
                       ADC.W #$003C                         ;9FE9C8|693C00  |;
                       STA.W $0CC7                          ;9FE9CB|8DC70C  |;
                       LDA.W #$FFFF                         ;9FE9CE|A9FFFF  |;
                       STA.W $0CD5                          ;9FE9D1|8DD50C  |;
                       STZ.W $0CD7                          ;9FE9D4|9CD70C  |;
                       JSL.L CODE_9FBA17                    ;9FE9D7|2217BA9F|;
                       LDX.W #$0000                         ;9FE9DB|A20000  |;
                       LDY.W #$01C0                         ;9FE9DE|A0C001  |;
                       LDA.W #$6000                         ;9FE9E1|A90060  |;
                       JSL.L CODE_80AEE1                    ;9FE9E4|22E1AE80|;
                       JSL.L CODE_80AF7B                    ;9FE9E8|227BAF80|;
                       JSL.L CODE_9FBAAA                    ;9FE9EC|22AABA9F|;
                       JSL.L CODE_80AFDE                    ;9FE9F0|22DEAF80|;
                       JSL.L CODE_9F96E6                    ;9FE9F4|22E6969F|;
                       JSL.L CODE_8086BD                    ;9FE9F8|22BD8680|;
                       RTL                                  ;9FE9FC|6B      |;
                       db $20,$5E,$E7,$A9,$7F,$00,$85,$0E   ;9FE9FD|        |;
                       db $A9,$C0,$76,$85,$0C,$A0,$E0,$00   ;9FEA05|        |;
                       db $A2,$20,$00,$22,$83,$85,$80,$22   ;9FEA0D|        |;
                       db $23,$87,$80,$AE,$C6,$0A,$BD,$76   ;9FEA15|        |;
                       db $07,$89,$80,$80,$D0,$DA,$60       ;9FEA1D|        |;
 
          CODE_9FEA24:
                       LDA.B $8F                            ;9FEA24|A58F    |;
                       PHA                                  ;9FEA26|48      |;
                       LDA.B $8D                            ;9FEA27|A58D    |;
                       PHA                                  ;9FEA29|48      |;
                       LDA.W #$009C                         ;9FEA2A|A99C00  |;
                       STA.B $8F                            ;9FEA2D|858F    |;
                       LDA.W #$F8FD                         ;9FEA2F|A9FDF8  |;
                       STA.B $8D                            ;9FEA32|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FEA34|22BEC79E|;
                       PLA                                  ;9FEA38|68      |;
                       STA.B $8D                            ;9FEA39|858D    |;
                       PLA                                  ;9FEA3B|68      |;
                       STA.B $8F                            ;9FEA3C|858F    |;
                       LDA.W $0D13                          ;9FEA3E|AD130D  |;
                       STA.B $A5                            ;9FEA41|85A5    |;
                       LDA.W $1EB7                          ;9FEA43|ADB71E  |;
                       BEQ CODE_9FEA5E                      ;9FEA46|F016    |;
                       CMP.W #$0001                         ;9FEA48|C90100  |;
                       BEQ UNREACH_9FEA76                   ;9FEA4B|F029    |;
                       CMP.W #$0002                         ;9FEA4D|C90200  |;
                       BEQ CODE_9FEA82                      ;9FEA50|F030    |;
                       CMP.W #$0003                         ;9FEA52|C90300  |;
                       BEQ CODE_9FEA8E                      ;9FEA55|F037    |;
                       CMP.W #$0004                         ;9FEA57|C90400  |;
                       BEQ CODE_9FEA9A                      ;9FEA5A|F03E    |;
                       BRA CODE_9FEA6A                      ;9FEA5C|800C    |;
 
          CODE_9FEA5E:
                       LDA.W #$009F                         ;9FEA5E|A99F00  |;
                       STA.B $8B                            ;9FEA61|858B    |;
                       LDA.W #$EC96                         ;9FEA63|A996EC  |;
                       STA.B $89                            ;9FEA66|8589    |;
                       BRA CODE_9FEAA6                      ;9FEA68|803C    |;
 
          CODE_9FEA6A:
                       LDA.W #$009F                         ;9FEA6A|A99F00  |;
                       STA.B $8B                            ;9FEA6D|858B    |;
                       LDA.W #$ED68                         ;9FEA6F|A968ED  |;
                       STA.B $89                            ;9FEA72|8589    |;
                       BRA CODE_9FEAA6                      ;9FEA74|8030    |;
 
       UNREACH_9FEA76:
                       db $A9,$9F,$00,$85,$8B,$A9,$43,$EE   ;9FEA76|        |;
                       db $85,$89,$80,$24                   ;9FEA7E|        |;
 
          CODE_9FEA82:
                       LDA.W #$009F                         ;9FEA82|A99F00  |;
                       STA.B $8B                            ;9FEA85|858B    |;
                       LDA.W #$EF08                         ;9FEA87|A908EF  |;
                       STA.B $89                            ;9FEA8A|8589    |;
                       BRA CODE_9FEAA6                      ;9FEA8C|8018    |;
 
          CODE_9FEA8E:
                       LDA.W #$009F                         ;9FEA8E|A99F00  |;
                       STA.B $8B                            ;9FEA91|858B    |;
                       LDA.W #$EF72                         ;9FEA93|A972EF  |;
                       STA.B $89                            ;9FEA96|8589    |;
                       BRA CODE_9FEAA6                      ;9FEA98|800C    |;
 
          CODE_9FEA9A:
                       LDA.W #$009F                         ;9FEA9A|A99F00  |;
                       STA.B $8B                            ;9FEA9D|858B    |;
                       LDA.W #$EFBE                         ;9FEA9F|A9BEEF  |;
                       STA.B $89                            ;9FEAA2|8589    |;
                       BRA CODE_9FEAA6                      ;9FEAA4|8000    |;
 
          CODE_9FEAA6:
                       LDA.B $89                            ;9FEAA6|A589    |;
                       LDX.B $A5                            ;9FEAA8|A6A5    |;
 
          CODE_9FEAAA:
                       DEX                                  ;9FEAAA|CA      |;
                       BMI CODE_9FEAB4                      ;9FEAAB|3007    |;
                       CLC                                  ;9FEAAD|18      |;
                       ADC.B [$89]                          ;9FEAAE|6789    |;
                       STA.B $89                            ;9FEAB0|8589    |;
                       BRA CODE_9FEAAA                      ;9FEAB2|80F6    |;
 
          CODE_9FEAB4:
                       LDA.W #$2400                         ;9FEAB4|A90024  |;
                       STA.W $0D0D                          ;9FEAB7|8D0D0D  |;
                       LDA.B $A5                            ;9FEABA|A5A5    |;
                       CMP.W $0D15                          ;9FEABC|CD150D  |;
                       BNE CODE_9FEAC7                      ;9FEABF|D006    |;
                       LDA.W #$2000                         ;9FEAC1|A90020  |;
                       STA.W $0D0D                          ;9FEAC4|8D0D0D  |;
 
          CODE_9FEAC7:
                       LDA.W #$0006                         ;9FEAC7|A90600  |;
                       STA.W $0D0F                          ;9FEACA|8D0F0D  |;
                       LDA.B $8F                            ;9FEACD|A58F    |;
                       PHA                                  ;9FEACF|48      |;
                       LDA.B $8D                            ;9FEAD0|A58D    |;
                       PHA                                  ;9FEAD2|48      |;
                       LDA.W #$009C                         ;9FEAD3|A99C00  |;
                       STA.B $8F                            ;9FEAD6|858F    |;
                       LDA.W #$F902                         ;9FEAD8|A902F9  |;
                       STA.B $8D                            ;9FEADB|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FEADD|22BEC79E|;
                       PLA                                  ;9FEAE1|68      |;
                       STA.B $8D                            ;9FEAE2|858D    |;
                       PLA                                  ;9FEAE4|68      |;
                       STA.B $8F                            ;9FEAE5|858F    |;
                       LDA.W #$0000                         ;9FEAE7|A90000  |;
                       STA.B $8F                            ;9FEAEA|858F    |;
                       LDA.W #$0A2A                         ;9FEAEC|A92A0A  |;
                       STA.B $8D                            ;9FEAEF|858D    |;
                       LDY.W #$001E                         ;9FEAF1|A01E00  |;
 
          CODE_9FEAF4:
                       LDA.B [$89],Y                        ;9FEAF4|B789    |;
                       STA.B [$8D],Y                        ;9FEAF6|978D    |;
                       DEY                                  ;9FEAF8|88      |;
                       DEY                                  ;9FEAF9|88      |;
                       BPL CODE_9FEAF4                      ;9FEAFA|10F8    |;
                       JSL.L CODE_9FEB32                    ;9FEAFC|2232EB9F|;
                       JSL.L CODE_9FEBA6                    ;9FEB00|22A6EB9F|;
                       JSL.L CODE_9FEBEB                    ;9FEB04|22EBEB9F|;
                       LDA.B [$8D]                          ;9FEB08|A78D    |;
                       LSR A                                ;9FEB0A|4A      |;
                       EOR.W #$FFFF                         ;9FEB0B|49FFFF  |;
                       INC A                                ;9FEB0E|1A      |;
                       CLC                                  ;9FEB0F|18      |;
                       ADC.W #$0011                         ;9FEB10|691100  |;
                       STA.W $0D0F                          ;9FEB13|8D0F0D  |;
                       JSL.L CODE_9EC7BE                    ;9FEB16|22BEC79E|;
                       INC.W $0D11                          ;9FEB1A|EE110D  |;
                       LDA.B $89                            ;9FEB1D|A589    |;
                       CLC                                  ;9FEB1F|18      |;
                       ADC.B [$89]                          ;9FEB20|6789    |;
                       STA.B $89                            ;9FEB22|8589    |;
                       INC.B $A5                            ;9FEB24|E6A5    |;
                       LDA.B $A5                            ;9FEB26|A5A5    |;
                       SEC                                  ;9FEB28|38      |;
                       SBC.W $0D13                          ;9FEB29|ED130D  |;
                       CMP.W #$0005                         ;9FEB2C|C90500  |;
                       BNE CODE_9FEAB4                      ;9FEB2F|D083    |;
                       RTL                                  ;9FEB31|6B      |;
 
          CODE_9FEB32:
                       LDA.W #$009F                         ;9FEB32|A99F00  |;
                       STA.B $97                            ;9FEB35|8597    |;
                       LDA.W #$EC72                         ;9FEB37|A972EC  |;
                       STA.B $95                            ;9FEB3A|8595    |;
                       LDA.W $1EB7                          ;9FEB3C|ADB71E  |;
                       ASL A                                ;9FEB3F|0A      |;
                       CLC                                  ;9FEB40|18      |;
                       ADC.B $95                            ;9FEB41|6595    |;
                       STA.B $95                            ;9FEB43|8595    |;
                       LDA.B [$95]                          ;9FEB45|A795    |;
                       CMP.B $A5                            ;9FEB47|C5A5    |;
                       BEQ CODE_9FEB4E                      ;9FEB49|F003    |;
                       JMP.W CODE_9FEBA5                    ;9FEB4B|4CA5EB  |;
 
          CODE_9FEB4E:
                       JSL.L CODE_9FC76C                    ;9FEB4E|226CC79F|;
                       LDY.B zpCurntTeamLoopVal             ;9FEB52|A491    |;
                       LDA.W $17AA,Y                        ;9FEB54|B9AA17  |;
                       BPL CODE_9FEB5C                      ;9FEB57|1003    |;
                       JMP.W CODE_9FEC60                    ;9FEB59|4C60EC  |;
 
          CODE_9FEB5C:
                       STA.B $C5                            ;9FEB5C|85C5    |;
                       LDA.W $1CDC,Y                        ;9FEB5E|B9DC1C  |;
                       STA.B $99                            ;9FEB61|8599    |;
                       LDA.W #$009C                         ;9FEB63|A99C00  |;
                       STA.B $9B                            ;9FEB66|859B    |;
                       LDY.W #$0000                         ;9FEB68|A00000  |;
                       LDA.B [$99],Y                        ;9FEB6B|B799    |;
                       CLC                                  ;9FEB6D|18      |;
                       ADC.B $99                            ;9FEB6E|6599    |;
                       STA.B $99                            ;9FEB70|8599    |;
 
          CODE_9FEB72:
                       DEC.B $C5                            ;9FEB72|C6C5    |;
                       BMI CODE_9FEB82                      ;9FEB74|300C    |;
                       LDA.B [$99]                          ;9FEB76|A799    |;
                       CLC                                  ;9FEB78|18      |;
                       ADC.B $99                            ;9FEB79|6599    |;
                       ADC.W #$0008                         ;9FEB7B|690800  |;
                       STA.B $99                            ;9FEB7E|8599    |;
                       BRA CODE_9FEB72                      ;9FEB80|80F0    |;
 
          CODE_9FEB82:
                       LDY.W #$0001                         ;9FEB82|A00100  |;
 
          CODE_9FEB85:
                       INY                                  ;9FEB85|C8      |;
                       LDA.B [$99],Y                        ;9FEB86|B799    |;
                       AND.W #$00FF                         ;9FEB88|29FF00  |;
                       CMP.W #$0020                         ;9FEB8B|C92000  |;
                       BNE CODE_9FEB85                      ;9FEB8E|D0F5    |;
 
          CODE_9FEB90:
                       INY                                  ;9FEB90|C8      |;
                       TYA                                  ;9FEB91|98      |;
                       CMP.B [$99]                          ;9FEB92|C799    |;
                       BEQ CODE_9FEBA5                      ;9FEB94|F00F    |;
                       LDA.B [$99],Y                        ;9FEB96|B799    |;
                       PHY                                  ;9FEB98|5A      |;
                       LDY.W $0A2A                          ;9FEB99|AC2A0A  |;
                       STA.W $0A2A,Y                        ;9FEB9C|992A0A  |;
                       INC.W $0A2A                          ;9FEB9F|EE2A0A  |;
                       PLY                                  ;9FEBA2|7A      |;
                       BRA CODE_9FEB90                      ;9FEBA3|80EB    |;
 
          CODE_9FEBA5:
                       RTL                                  ;9FEBA5|6B      |;
 
          CODE_9FEBA6:
                       LDA.W #$009F                         ;9FEBA6|A99F00  |;
                       STA.B $97                            ;9FEBA9|8597    |;
                       LDA.W #$EC7E                         ;9FEBAB|A97EEC  |;
                       STA.B $95                            ;9FEBAE|8595    |;
                       LDA.W $1EB7                          ;9FEBB0|ADB71E  |;
                       ASL A                                ;9FEBB3|0A      |;
                       CLC                                  ;9FEBB4|18      |;
                       ADC.B $95                            ;9FEBB5|6595    |;
                       STA.B $95                            ;9FEBB7|8595    |;
                       LDA.B [$95]                          ;9FEBB9|A795    |;
                       CMP.B $A5                            ;9FEBBB|C5A5    |;
                       BEQ CODE_9FEBC2                      ;9FEBBD|F003    |;
                       JMP.W CODE_9FEBA5                    ;9FEBBF|4CA5EB  |;
 
          CODE_9FEBC2:
                       JSL.L CODE_9FC76C                    ;9FEBC2|226CC79F|;
                       LDY.B zpCurntTeamLoopVal             ;9FEBC6|A491    |;
                       LDA.W $1C90,Y                        ;9FEBC8|B9901C  |;
                       BEQ CODE_9FEBD9                      ;9FEBCB|F00C    |;
                       LDA.W #$009F                         ;9FEBCD|A99F00  |;
                       STA.B $9B                            ;9FEBD0|859B    |;
                       LDA.W #$EC42                         ;9FEBD2|A942EC  |;
                       STA.B $99                            ;9FEBD5|8599    |;
                       BRA CODE_9FEBE3                      ;9FEBD7|800A    |;
 
          CODE_9FEBD9:
                       LDA.W #$009F                         ;9FEBD9|A99F00  |;
                       STA.B $9B                            ;9FEBDC|859B    |;
                       LDA.W #$EC30                         ;9FEBDE|A930EC  |;
                       STA.B $99                            ;9FEBE1|8599    |;
 
          CODE_9FEBE3:
                       LDY.W #$0001                         ;9FEBE3|A00100  |;
                       JSL.L CODE_9FEB90                    ;9FEBE6|2290EB9F|;
                       RTL                                  ;9FEBEA|6B      |;
 
          CODE_9FEBEB:
                       LDA.W #$009F                         ;9FEBEB|A99F00  |;
                       STA.B $97                            ;9FEBEE|8597    |;
                       LDA.W #$EC8A                         ;9FEBF0|A98AEC  |;
                       STA.B $95                            ;9FEBF3|8595    |;
                       LDA.W $1EB7                          ;9FEBF5|ADB71E  |;
                       ASL A                                ;9FEBF8|0A      |;
                       CLC                                  ;9FEBF9|18      |;
                       ADC.B $95                            ;9FEBFA|6595    |;
                       STA.B $95                            ;9FEBFC|8595    |;
                       LDA.B [$95]                          ;9FEBFE|A795    |;
                       CMP.B $A5                            ;9FEC00|C5A5    |;
                       BEQ CODE_9FEC07                      ;9FEC02|F003    |;
                       JMP.W CODE_9FEBA5                    ;9FEC04|4CA5EB  |;
 
          CODE_9FEC07:
                       JSL.L CODE_9FC76C                    ;9FEC07|226CC79F|;
                       LDY.B zpCurntTeamLoopVal             ;9FEC0B|A491    |;
                       LDA.W Def_Ctrl,Y                     ;9FEC0D|B9941C  |;
                       BEQ CODE_9FEC1E                      ;9FEC10|F00C    |;
                       LDA.W #$009F                         ;9FEC12|A99F00  |;
                       STA.B $9B                            ;9FEC15|859B    |;
                       LDA.W #$EC57                         ;9FEC17|A957EC  |;
                       STA.B $99                            ;9FEC1A|8599    |;
                       BRA CODE_9FEC28                      ;9FEC1C|800A    |;
 
          CODE_9FEC1E:
                       LDA.W #$009F                         ;9FEC1E|A99F00  |;
                       STA.B $9B                            ;9FEC21|859B    |;
                       LDA.W #$EC5B                         ;9FEC23|A95BEC  |;
                       STA.B $99                            ;9FEC26|8599    |;
 
          CODE_9FEC28:
                       LDY.W #$0001                         ;9FEC28|A00100  |;
                       JSL.L CODE_9FEB90                    ;9FEC2B|2290EB9F|;
                       RTL                                  ;9FEC2F|6B      |;
                       db $12,$00,$41,$75,$74,$6F,$6D,$61   ;9FEC30|        |;
                       db $74,$69,$63,$20,$47,$6F,$61,$6C   ;9FEC38|        |;
                       db $69,$65,$0F,$00,$4D,$61,$6E,$75   ;9FEC40|        |;
                       db $61,$6C,$20,$47,$6F,$61,$6C,$69   ;9FEC48|        |;
                       db $65,$06,$00,$4E,$6F,$6E,$65,$04   ;9FEC50|        |;
                       db $00,$4F,$6E,$05,$00,$4F,$66,$66   ;9FEC58|        |;
 
          CODE_9FEC60:
                       LDA.W #$009F                         ;9FEC60|A99F00  |;
                       STA.B $9B                            ;9FEC63|859B    |;
                       LDA.W #$EC51                         ;9FEC65|A951EC  |;
                       STA.B $99                            ;9FEC68|8599    |;
                       LDY.W #$0001                         ;9FEC6A|A00100  |;
                       JSL.L CODE_9FEB90                    ;9FEC6D|2290EB9F|;
                       RTL                                  ;9FEC71|6B      |;
                       db $09,$00                           ;9FEC72|        |;
                       db $09,$00                           ;9FEC74|        |;
                       db $03,$00                           ;9FEC76|        |;
                       db $FF,$FF,$FF,$FF                   ;9FEC78|        |;
                       db $0A,$00,$0A,$00                   ;9FEC7C|        |;
                       db $0A,$00                           ;9FEC80|        |;
                       db $04,$00                           ;9FEC82|        |;
                       db $03,$00,$03,$00                   ;9FEC84|        |;
                       db $0B,$00,$0B,$00                   ;9FEC88|        |;
                       db $0B,$00                           ;9FEC8C|        |;
                       db $05,$00                           ;9FEC8E|        |;
                       db $FF,$FF,$FF,$FF                   ;9FEC90|        |;
                       db $0C,$00,$0D,$00,$52,$65,$73,$75   ;9FEC94|        |;
                       db $6D,$65,$20,$47,$61,$6D,$65,$10   ;9FEC9C|        |;
                       db $00,$49,$6E,$73,$74,$61,$6E,$74   ;9FECA4|        |;
                       db $20,$52,$65,$70,$6C,$61,$79,$0C   ;9FECAC|        |;
                       db $00,$47,$61,$6D,$65,$20,$53,$74   ;9FECB4|        |;
                       db $61,$74,$73,$0D,$00,$54,$65,$61   ;9FECBC|        |;
                       db $6D,$20,$52,$6F,$73,$74,$65,$72   ;9FECC4|        |;
                       db $0C,$00,$45,$64,$69,$74,$20,$4C   ;9FECCC|        |;
                       db $69,$6E,$65,$73,$0E,$00,$50,$6C   ;9FECD4|        |;
                       db $61,$79,$65,$72,$20,$53,$74,$61   ;9FECDC|        |;
                       db $74,$73,$11,$00,$53,$63,$6F,$72   ;9FECE4|        |;
                       db $69,$6E,$67,$20,$53,$75,$6D,$6D   ;9FECEC|        |;
                       db $61,$72,$79,$11,$00,$50,$65,$6E   ;9FECF4|        |;
                       db $61,$6C,$74,$79,$20,$53,$75,$6D   ;9FECFC|        |;
                       db $6D,$61,$72,$79,$0E,$00,$50,$65   ;9FED04|        |;
                       db $72,$69,$6F,$64,$20,$53,$74,$61   ;9FED0C|        |;
                       db $74,$73,$0B,$00,$47,$6F,$61,$6C   ;9FED14|        |;
                       db $69,$65,$20,$2D,$20,$02,$00,$11   ;9FED1C|        |;
                       db $00,$44,$65,$66,$2E,$20,$43,$6F   ;9FED24|        |;
                       db $6E,$74,$72,$6F,$6C,$20,$2D,$20   ;9FED2C|        |;
                       db $0E,$00,$50,$6C,$61,$79,$65,$72   ;9FED34|        |;
                       db $20,$43,$61,$72,$64,$73,$0E,$00   ;9FED3C|        |;
                       db $4F,$74,$68,$65,$72,$20,$53,$63   ;9FED44|        |;
                       db $6F,$72,$65,$73,$0D,$00,$43,$72   ;9FED4C|        |;
                       db $6F,$77,$64,$20,$4C,$65,$76,$65   ;9FED54|        |;
                       db $6C,$0B,$00,$45,$78,$69,$74,$20   ;9FED5C|        |;
                       db $47,$61,$6D,$65,$0D,$00,$52,$65   ;9FED64|        |;
                       db $73,$75,$6D,$65,$20,$47,$61,$6D   ;9FED6C|        |;
                       db $65,$10,$00,$49,$6E,$73,$74,$61   ;9FED74|        |;
                       db $6E,$74,$20,$52,$65,$70,$6C,$61   ;9FED7C|        |;
                       db $79,$0C,$00,$47,$61,$6D,$65,$20   ;9FED84|        |;
                       db $53,$74,$61,$74,$73,$0D,$00,$54   ;9FED8C|        |;
                       db $65,$61,$6D,$20,$52,$6F,$73,$74   ;9FED94|        |;
                       db $65,$72,$0C,$00,$45,$64,$69,$74   ;9FED9C|        |;
                       db $20,$4C,$69,$6E,$65,$73,$09,$00   ;9FEDA4|        |;
                       db $54,$69,$6D,$65,$6F,$75,$74,$0E   ;9FEDAC|        |;
                       db $00,$50,$6C,$61,$79,$65,$72,$20   ;9FEDB4|        |;
                       db $53,$74,$61,$74,$73,$11,$00,$53   ;9FEDBC|        |;
                       db $63,$6F,$72,$69,$6E,$67           ;9FEDC4|        |;
                       db $20,$53,$75,$6D,$6D,$61,$72,$79   ;9FEDCA|        |;
                       db $11,$00,$50,$65,$6E,$61,$6C,$74   ;9FEDD2|        |;
                       db $79,$20,$53,$75,$6D,$6D,$61,$72   ;9FEDDA|        |;
                       db $79,$0E,$00,$50,$65,$72,$69,$6F   ;9FEDE2|        |;
                       db $64,$20,$53,$74,$61,$74,$73,$0B   ;9FEDEA|        |;
                       db $00,$47,$6F,$61,$6C,$69,$65,$20   ;9FEDF2|        |;
                       db $2D,$20,$02,$00,$11,$00,$44,$65   ;9FEDFA|        |;
                       db $66,$65,$6E,$73,$65,$20,$43,$74   ;9FEE02|        |;
                       db $72,$6C,$20,$2D,$20,$0E,$00,$50   ;9FEE0A|        |;
                       db $6C,$61,$79,$65,$72,$20,$43,$61   ;9FEE12|        |;
                       db $72,$64,$73,$0E,$00,$4F,$74,$68   ;9FEE1A|        |;
                       db $65,$72,$20,$53,$63,$6F,$72,$65   ;9FEE22|        |;
                       db $73,$0D,$00,$43,$72,$6F,$77,$64   ;9FEE2A|        |;
                       db $20,$4C,$65,$76,$65,$6C,$0B,$00   ;9FEE32|        |;
                       db $45,$78,$69,$74,$20,$47,$61,$6D   ;9FEE3A|        |;
                       db $65,$0B,$00,$45,$78,$69,$74,$20   ;9FEE42|        |;
                       db $47,$61,$6D,$65,$10,$00,$49,$6E   ;9FEE4A|        |;
                       db $73,$74,$61,$6E,$74,$20,$52,$65   ;9FEE52|        |;
                       db $70,$6C,$61,$79,$0C,$00,$47,$61   ;9FEE5A|        |;
                       db $6D,$65,$20,$53,$74,$61,$74,$73   ;9FEE62|        |;
                       db $0D,$00,$54,$65,$61,$6D,$20,$52   ;9FEE6A|        |;
                       db $6F,$73,$74,$65,$72,$0C,$00,$45   ;9FEE72|        |;
                       db $64,$69,$74,$20,$4C,$69,$6E,$65   ;9FEE7A|        |;
                       db $73,$0E,$00,$50,$6C,$61,$79,$65   ;9FEE82|        |;
                       db $72,$20,$53,$74,$61,$74,$73,$11   ;9FEE8A|        |;
                       db $00,$53,$63,$6F,$72,$69,$6E,$67   ;9FEE92|        |;
                       db $20,$53,$75,$6D,$6D,$61,$72,$79   ;9FEE9A|        |;
                       db $11,$00,$50,$65,$6E,$61,$6C,$74   ;9FEEA2|        |;
                       db $79,$20,$53,$75,$6D,$6D,$61,$72   ;9FEEAA|        |;
                       db $79,$0E,$00,$50,$65,$72,$69,$6F   ;9FEEB2|        |;
                       db $64,$20,$53,$74,$61,$74,$73,$0B   ;9FEEBA|        |;
                       db $00,$47,$6F,$61,$6C,$69,$65,$20   ;9FEEC2|        |;
                       db $2D,$20,$02,$00,$11,$00,$44,$65   ;9FEECA|        |;
                       db $66,$65,$6E,$73,$65,$20,$43,$74   ;9FEED2|        |;
                       db $72,$6C,$20,$2D,$20,$0E,$00,$50   ;9FEEDA|        |;
                       db $6C,$61,$79,$65,$72,$20,$43,$61   ;9FEEE2|        |;
                       db $72,$64,$73,$0E,$00,$4F,$74,$68   ;9FEEEA|        |;
                       db $65,$72,$20,$53,$63,$6F,$72,$65   ;9FEEF2|        |;
                       db $73,$0D,$00,$43,$72,$6F,$77,$64   ;9FEEFA|        |;
                       db $20,$4C,$65,$76,$65,$6C           ;9FEF02|        |;
                       db $0C,$00,$53,$74,$61,$72,$74,$20   ;9FEF08|        |;
                       db $47,$61,$6D,$65,$0D,$00,$54,$65   ;9FEF10|        |;
                       db $61,$6D,$20,$52,$6F,$73,$74,$65   ;9FEF18|        |;
                       db $72,$0C,$00,$45,$64,$69,$74,$20   ;9FEF20|        |;
                       db $4C,$69,$6E,$65,$73,$0B,$00,$47   ;9FEF28|        |;
                       db $6F,$61,$6C,$69,$65,$20,$2D,$20   ;9FEF30|        |;
                       db $02,$00,$11,$00,$44,$65,$66,$65   ;9FEF38|        |;
                       db $6E,$73,$65,$20,$43,$74,$72,$6C   ;9FEF40|        |;
                       db $20,$2D,$20,$0E,$00,$50,$6C,$61   ;9FEF48|        |;
                       db $79,$65,$72,$20,$43,$61,$72,$64   ;9FEF50|        |;
                       db $73,$0E,$00,$4F,$74,$68,$65,$72   ;9FEF58|        |;
                       db $20,$53,$63,$6F,$72,$65,$73,$0B   ;9FEF60|        |;
                       db $00,$45,$78,$69,$74,$20,$47,$61   ;9FEF68|        |;
                       db $6D,$65,$10,$00,$53,$74,$61,$72   ;9FEF70|        |;
                       db $74,$20,$53,$68,$6F,$6F,$74,$6F   ;9FEF78|        |;
                       db $75,$74,$10,$00,$53,$68,$6F       ;9FEF80|        |;
                       db $6F,$74,$6F,$75,$74,$20,$53,$65   ;9FEF87|        |;
                       db $74,$75,$70,$0D,$00,$54,$65,$61   ;9FEF8F|        |;
                       db $6D,$20,$52,$6F,$73,$74,$65,$72   ;9FEF97|        |;
                       db $02,$00,$0E,$00,$50,$6C,$61,$79   ;9FEF9F|        |;
                       db $65,$72,$20,$43,$61,$72,$64,$73   ;9FEFA7|        |;
                       db $0F,$00,$45,$78,$69,$74,$20,$53   ;9FEFAF|        |;
                       db $68,$6F,$6F,$74,$6F,$75,$74,$11   ;9FEFB7|        |;
                       db $00,$52,$65,$73,$75,$6D,$65,$20   ;9FEFBF|        |;
                       db $53,$68,$6F,$6F,$74,$6F,$75,$74   ;9FEFC7|        |;
                       db $10,$00,$49,$6E,$73,$74,$61,$6E   ;9FEFCF|        |;
                       db $74,$20,$52,$65,$70,$6C,$61,$79   ;9FEFD7|        |;
                       db $0D,$00,$54,$65,$61,$6D,$20,$52   ;9FEFDF|        |;
                       db $6F,$73,$74,$65,$72,$02,$00,$0E   ;9FEFE7|        |;
                       db $00,$50,$6C,$61,$79,$65,$72,$20   ;9FEFEF|        |;
                       db $43,$61,$72,$64,$73,$0F,$00,$45   ;9FEFF7|        |;
                       db $78,$69,$74,$20,$53,$68,$6F,$6F   ;9FEFFF|        |;
                       db $74,$6F,$75,$74                   ;9FF007|        |;
 
          CODE_9FF00B:
                       LDA.W #$0000                         ;9FF00B|A90000  |;
                       STA.W $1DB9                          ;9FF00E|8DB91D  |;
 
          CODE_9FF011:
                       JSL.L CODE_9FF063                    ;9FF011|2263F09F|;
                       JSL.L CODE_9DD923                    ;9FF015|2223D99D|;
                       JSL.L CODE_808583                    ;9FF019|22838580|;
                       JSL.L CODE_9B8017                    ;9FF01D|2217809B|;
                       JSL.L CODE_9B851F                    ;9FF021|221F859B|;
                       LDA.B $A9                            ;9FF025|A5A9    |;
                       BIT.W #$1000                         ;9FF027|890010  |;
                       BNE CODE_9FF055                      ;9FF02A|D029    |;
                       BIT.W #$8080                         ;9FF02C|898080  |;
                       BNE CODE_9FF05B                      ;9FF02F|D02A    |;
                       BIT.W #$0800                         ;9FF031|890008  |;
                       BNE UNREACH_9FF03D                   ;9FF034|D007    |;
                       BIT.W #$0400                         ;9FF036|890004  |;
                       BNE CODE_9FF045                      ;9FF039|D00A    |;
                       BRA CODE_9FF011                      ;9FF03B|80D4    |;
 
       UNREACH_9FF03D:
                       db $AD,$B9,$1D,$3A,$10,$0D,$80,$CC   ;9FF03D|        |;
 
          CODE_9FF045:
                       LDA.W $1DB9                          ;9FF045|ADB91D  |;
                       INC A                                ;9FF048|1A      |;
                       CMP.W #$0002                         ;9FF049|C90200  |;
                       BMI CODE_9FF050                      ;9FF04C|3002    |;
                       db $80,$C1                           ;9FF04E|        |;
 
          CODE_9FF050:
                       STA.W $1DB9                          ;9FF050|8DB91D  |;
                       BRA CODE_9FF011                      ;9FF053|80BC    |;
 
          CODE_9FF055:
                       LDA.W #$0000                         ;9FF055|A90000  |;
                       STA.W $1DB9                          ;9FF058|8DB91D  |;
 
          CODE_9FF05B:
                       JSL.L CODE_9B865F                    ;9FF05B|225F869B|;
                       LDA.W $1DB9                          ;9FF05F|ADB91D  |;
                       RTL                                  ;9FF062|6B      |;
 
          CODE_9FF063:
                       LDA.B $8F                            ;9FF063|A58F    |;
                       PHA                                  ;9FF065|48      |;
                       LDA.B $8D                            ;9FF066|A58D    |;
                       PHA                                  ;9FF068|48      |;
                       LDA.W #$009C                         ;9FF069|A99C00  |;
                       STA.B $8F                            ;9FF06C|858F    |;
                       LDA.W #$F918                         ;9FF06E|A918F9  |;
                       STA.B $8D                            ;9FF071|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FF073|22BEC79E|;
                       PLA                                  ;9FF077|68      |;
                       STA.B $8D                            ;9FF078|858D    |;
                       PLA                                  ;9FF07A|68      |;
                       STA.B $8F                            ;9FF07B|858F    |;
                       LDA.W #$0016                         ;9FF07D|A91600  |;
                       STA.B $A5                            ;9FF080|85A5    |;
                       LDA.W #$0007                         ;9FF082|A90700  |;
                       STA.B $A9                            ;9FF085|85A9    |;
                       JSL.L CODE_9D8000                    ;9FF087|2200809D|;
                       LDY.W #$000D                         ;9FF08B|A00D00  |;
 
          CODE_9FF08E:
                       PHY                                  ;9FF08E|5A      |;
                       LDA.W #$2400                         ;9FF08F|A90024  |;
                       STA.W $0D0D                          ;9FF092|8D0D0D  |;
                       LDA.W #$0006                         ;9FF095|A90600  |;
                       STA.W $0D0F                          ;9FF098|8D0F0D  |;
                       STY.W $0D11                          ;9FF09B|8C110D  |;
                       LDA.W #$009F                         ;9FF09E|A99F00  |;
                       STA.B $8F                            ;9FF0A1|858F    |;
                       LDA.W #$F163                         ;9FF0A3|A963F1  |;
                       STA.B $8D                            ;9FF0A6|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FF0A8|22BEC79E|;
                       PLY                                  ;9FF0AC|7A      |;
                       INY                                  ;9FF0AD|C8      |;
                       CPY.W #$0012                         ;9FF0AE|C01200  |;
                       BCC CODE_9FF08E                      ;9FF0B1|90DB    |;
                       LDA.B $8F                            ;9FF0B3|A58F    |;
                       PHA                                  ;9FF0B5|48      |;
                       LDA.B $8D                            ;9FF0B6|A58D    |;
                       PHA                                  ;9FF0B8|48      |;
                       LDA.W #$009C                         ;9FF0B9|A99C00  |;
                       STA.B $8F                            ;9FF0BC|858F    |;
                       LDA.W #$F91D                         ;9FF0BE|A91DF9  |;
                       STA.B $8D                            ;9FF0C1|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FF0C3|22BEC79E|;
                       PLA                                  ;9FF0C7|68      |;
                       STA.B $8D                            ;9FF0C8|858D    |;
                       PLA                                  ;9FF0CA|68      |;
                       STA.B $8F                            ;9FF0CB|858F    |;
                       LDA.W #$2400                         ;9FF0CD|A90024  |;
                       STA.W $0D0D                          ;9FF0D0|8D0D0D  |;
                       LDA.W #$009F                         ;9FF0D3|A99F00  |;
                       STA.B $8F                            ;9FF0D6|858F    |;
                       LDA.W #$F179                         ;9FF0D8|A979F1  |;
                       STA.B $8D                            ;9FF0DB|858D    |;
                       LDA.W $1D81                          ;9FF0DD|AD811D  |;
                       BEQ CODE_9FF0EC                      ;9FF0E0|F00A    |;
                       LDA.W #$009F                         ;9FF0E2|A99F00  |;
                       STA.B $8F                            ;9FF0E5|858F    |;
                       LDA.W #$F18F                         ;9FF0E7|A98FF1  |;
                       STA.B $8D                            ;9FF0EA|858D    |;
 
          CODE_9FF0EC:
                       JSL.L CODE_9EC7BE                    ;9FF0EC|22BEC79E|;
                       LDA.B $8F                            ;9FF0F0|A58F    |;
                       PHA                                  ;9FF0F2|48      |;
                       LDA.B $8D                            ;9FF0F3|A58D    |;
                       PHA                                  ;9FF0F5|48      |;
                       LDA.W #$009C                         ;9FF0F6|A99C00  |;
                       STA.B $8F                            ;9FF0F9|858F    |;
                       LDA.W #$F922                         ;9FF0FB|A922F9  |;
                       STA.B $8D                            ;9FF0FE|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FF100|22BEC79E|;
                       PLA                                  ;9FF104|68      |;
                       STA.B $8D                            ;9FF105|858D    |;
                       PLA                                  ;9FF107|68      |;
                       STA.B $8F                            ;9FF108|858F    |;
                       LDA.W #$2400                         ;9FF10A|A90024  |;
                       STA.W $0D0D                          ;9FF10D|8D0D0D  |;
                       LDA.W $1DB9                          ;9FF110|ADB91D  |;
                       BNE CODE_9FF11B                      ;9FF113|D006    |;
                       LDA.W #$2000                         ;9FF115|A90020  |;
                       STA.W $0D0D                          ;9FF118|8D0D0D  |;
 
          CODE_9FF11B:
                       LDA.W #$009F                         ;9FF11B|A99F00  |;
                       STA.B $8F                            ;9FF11E|858F    |;
                       LDA.W #$F1BB                         ;9FF120|A9BBF1  |;
                       STA.B $8D                            ;9FF123|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FF125|22BEC79E|;
                       LDA.B $8F                            ;9FF129|A58F    |;
                       PHA                                  ;9FF12B|48      |;
                       LDA.B $8D                            ;9FF12C|A58D    |;
                       PHA                                  ;9FF12E|48      |;
                       LDA.W #$009C                         ;9FF12F|A99C00  |;
                       STA.B $8F                            ;9FF132|858F    |;
                       LDA.W #$F927                         ;9FF134|A927F9  |;
                       STA.B $8D                            ;9FF137|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FF139|22BEC79E|;
                       PLA                                  ;9FF13D|68      |;
                       STA.B $8D                            ;9FF13E|858D    |;
                       PLA                                  ;9FF140|68      |;
                       STA.B $8F                            ;9FF141|858F    |;
                       LDA.W #$2400                         ;9FF143|A90024  |;
                       STA.W $0D0D                          ;9FF146|8D0D0D  |;
                       LDA.W $1DB9                          ;9FF149|ADB91D  |;
                       BEQ CODE_9FF154                      ;9FF14C|F006    |;
                       LDA.W #$2000                         ;9FF14E|A90020  |;
                       STA.W $0D0D                          ;9FF151|8D0D0D  |;
 
          CODE_9FF154:
                       LDA.W #$009F                         ;9FF154|A99F00  |;
                       STA.B $8F                            ;9FF157|858F    |;
                       LDA.W #$F1A5                         ;9FF159|A9A5F1  |;
                       STA.B $8D                            ;9FF15C|858D    |;
                       JSL.L CODE_9EC7BE                    ;9FF15E|22BEC79E|;
                       RTL                                  ;9FF162|6B      |;
                       db $16,$00,$20,$20,$20,$20,$20,$20   ;9FF163|        |;
                       db $20,$20,$20,$20,$20,$20,$20,$20   ;9FF16B|        |;
                       db $20,$20,$20,$20,$20,$20,$16,$00   ;9FF173|        |;
                       db $20,$20,$20,$20,$20,$45,$78,$69   ;9FF17B|        |;
                       db $74,$20,$47,$61,$6D,$65,$3F,$20   ;9FF183|        |;
                       db $20,$20,$20,$20,$16               ;9FF18B|        |;
                       db $00,$20,$20,$20,$45,$78,$69,$74   ;9FF190|        |;
                       db $20,$53,$68,$6F,$6F,$74,$6F,$75   ;9FF198|        |;
                       db $74,$3F,$20,$20,$20               ;9FF1A0|        |;
                       db $16,$00,$20,$20,$20,$20,$20,$20   ;9FF1A5|        |;
                       db $20,$20,$20,$59,$65,$73,$20,$20   ;9FF1AD|        |;
                       db $20,$20,$20,$20,$20,$20,$16,$00   ;9FF1B5|        |;
                       db $20,$20,$20,$20,$20,$20,$20,$20   ;9FF1BD|        |;
                       db $20,$4E,$6F,$20,$20,$20,$20,$20   ;9FF1C5|        |;
                       db $20,$20,$20,$20                   ;9FF1CD|        |;
 
          CODE_9FF1D1:
                       LDA.W $1A0E                          ;9FF1D1|AD0E1A  |;
                       BEQ CODE_9FF1E3                      ;9FF1D4|F00D    |;
                       db $22,$E4,$F1,$9F,$AD,$0E,$1A,$D0   ;9FF1D6|        |;
                       db $F7,$22,$24,$EA,$9F               ;9FF1DE|        |;
 
          CODE_9FF1E3:
                       RTL                                  ;9FF1E3|6B      |;
                       db $48,$A5,$8F,$48,$A5,$8D,$48,$A9   ;9FF1E4|        |;
                       db $9C,$00,$85,$8F,$A9,$2C,$F9,$85   ;9FF1EC|        |;
                       db $8D,$22,$BE,$C7,$9E,$68,$85,$8D   ;9FF1F4|        |;
                       db $68,$85,$8F,$A9,$16,$00,$85,$A5   ;9FF1FC|        |;
                       db $A9,$07,$00,$85,$A9,$22,$00,$80   ;9FF204|        |;
                       db $9D,$68,$89,$01,$00,$D0,$0D,$89   ;9FF20C|        |;
                       db $02,$00,$D0,$42,$89,$04,$00,$D0   ;9FF214|        |;
                       db $77,$4C,$CC,$F2,$A9,$9F,$00,$85   ;9FF21C|        |;
                       db $8F,$A9,$5F,$F3,$85,$8D,$22,$D5   ;9FF224|        |;
                       db $F2,$9F,$A9,$9F,$00,$85,$8F,$A9   ;9FF22C|        |;
                       db $72,$F3,$85,$8D,$22,$F1,$F2,$9F   ;9FF234|        |;
                       db $A9,$9F,$00,$85,$8F,$A9,$85,$F3   ;9FF23C|        |;
                       db $85,$8D,$22,$0D,$F3,$9F,$A9,$9F   ;9FF244|        |;
                       db $00,$85,$8F,$A9,$94,$F3,$85,$8D   ;9FF24C|        |;
                       db $22,$29,$F3,$9F,$80,$72,$A9,$9F   ;9FF254|        |;
                       db $00,$85,$8F,$A9,$A0,$F3,$85,$8D   ;9FF25C|        |;
                       db $22,$D5,$F2,$9F,$A9,$9F,$00,$85   ;9FF264|        |;
                       db $8F,$A9,$B6,$F3,$85,$8D,$22,$F1   ;9FF26C|        |;
                       db $F2,$9F,$A9,$9F,$00,$85,$8F,$A9   ;9FF274|        |;
                       db $CC,$F3,$85,$8D,$22,$0D,$F3,$9F   ;9FF27C|        |;
                       db $A9,$9F,$00,$85,$8F,$A9,$E0,$F3   ;9FF284|        |;
                       db $85,$8D,$22,$29,$F3,$9F,$80,$38   ;9FF28C|        |;
                       db $A9,$9F,$00,$85,$8F,$A9,$EE,$F3   ;9FF294|        |;
                       db $85,$8D,$22,$D5,$F2,$9F,$A9,$9F   ;9FF29C|        |;
                       db $00,$85,$8F,$A9,$04,$F4,$85,$8D   ;9FF2A4|        |;
                       db $22,$F1,$F2,$9F,$A9,$9F,$00,$85   ;9FF2AC|        |;
                       db $8F,$A9,$1A,$F4,$85,$8D,$22,$0D   ;9FF2B4|        |;
                       db $F3,$9F,$A9,$9F,$00,$85,$8F,$A9   ;9FF2BC|        |;
                       db $2E,$F4,$85,$8D,$22,$29,$F3,$9F   ;9FF2C4|        |;
                       db $22,$23,$D9,$9D,$22,$83,$85,$80   ;9FF2CC|        |;
                       db $6B,$A5,$8F,$48,$A5,$8D,$48,$A9   ;9FF2D4|        |;
                       db $9C,$00,$85,$8F,$A9,$31,$F9,$85   ;9FF2DC|        |;
                       db $8D,$22,$BE,$C7,$9E,$68,$85,$8D   ;9FF2E4|        |;
                       db $68,$85,$8F,$80,$54,$A5,$8F,$48   ;9FF2EC|        |;
                       db $A5,$8D,$48,$A9,$9C,$00,$85,$8F   ;9FF2F4|        |;
                       db $A9,$36,$F9,$85,$8D,$22,$BE,$C7   ;9FF2FC|        |;
                       db $9E,$68,$85,$8D,$68,$85,$8F,$80   ;9FF304|        |;
                       db $38,$A5,$8F,$48,$A5,$8D,$48,$A9   ;9FF30C|        |;
                       db $9C,$00,$85,$8F,$A9,$3B,$F9,$85   ;9FF314|        |;
                       db $8D,$22,$BE,$C7,$9E,$68,$85,$8D   ;9FF31C|        |;
                       db $68,$85,$8F,$80,$1C,$A5,$8F,$48   ;9FF324|        |;
                       db $A5,$8D,$48,$A9,$9C,$00,$85,$8F   ;9FF32C|        |;
                       db $A9,$40,$F9,$85,$8D,$22,$BE,$C7   ;9FF334|        |;
                       db $9E,$68,$85,$8D,$68,$85,$8F,$80   ;9FF33C|        |;
                       db $00,$22,$4E,$F3,$9F,$22,$BE,$C7   ;9FF344|        |;
                       db $9E,$6B,$A7,$8D,$3A,$3A,$4A,$49   ;9FF34C|        |;
                       db $FF,$FF,$1A,$18,$69,$10,$00,$8D   ;9FF354|        |;
                       db $0F,$0D,$6B,$13,$00,$54,$68,$65   ;9FF35C|        |;
                       db $20,$4D,$75,$6C,$74,$69,$50,$6C   ;9FF364|        |;
                       db $61,$79,$65,$72,$20,$35,$13,$00   ;9FF36C|        |;
                       db $6D,$75,$73,$74,$20,$62,$65,$20   ;9FF374|        |;
                       db $63,$6F,$6E,$6E,$65,$63,$74,$65   ;9FF37C|        |;
                       db $64,$0F,$00,$74,$6F,$20,$43,$6F   ;9FF384|        |;
                       db $6E,$74,$72,$6F,$6C,$6C,$65,$72   ;9FF38C|        |;
                       db $0C,$00,$53,$6F,$63,$6B,$65,$74   ;9FF394|        |;
                       db $20,$23,$32,$2E,$16,$00,$54,$68   ;9FF39C|        |;
                       db $65,$20,$4D,$75,$6C,$74,$69,$50   ;9FF3A4|        |;
                       db $6C,$61,$79,$65,$72,$20,$35,$20   ;9FF3AC|        |;
                       db $69,$73,$16,$00,$6E,$6F,$74,$20   ;9FF3B4|        |;
                       db $64,$65,$73,$69,$67,$6E,$65,$64   ;9FF3BC|        |;
                       db $20,$66,$6F,$72,$20,$75,$73,$65   ;9FF3C4|        |;
                       db $14,$00,$77,$69,$74,$68,$20,$74   ;9FF3CC|        |;
                       db $68,$65,$20,$53,$75,$70,$65,$72   ;9FF3D4|        |;
                       db $20,$4E,$45,$53,$0E,$00,$53,$75   ;9FF3DC|        |;
                       db $70,$65,$72,$20,$53,$63,$6F,$70   ;9FF3E4|        |;
                       db $65,$2E,$16,$00,$54,$68,$65,$20   ;9FF3EC|        |;
                       db $4D,$75,$6C,$74,$69,$50,$6C,$61   ;9FF3F4|        |;
                       db $79,$65,$72,$20,$35,$20,$69,$73   ;9FF3FC|        |;
                       db $16,$00,$6E,$6F,$74,$20,$64,$65   ;9FF404|        |;
                       db $73,$69,$67,$6E,$65,$64,$20,$66   ;9FF40C|        |;
                       db $6F,$72,$20,$75,$73,$65,$14,$00   ;9FF414|        |;
                       db $77,$69,$74,$68,$20,$74,$68,$65   ;9FF41C|        |;
                       db $20,$53,$75,$70,$65,$72,$20,$4E   ;9FF424|        |;
                       db $45,$53,$08,$00,$4D,$6F,$75,$73   ;9FF42C|        |;
                       db $65,$2E                           ;9FF434|        |;
 
             Intro_EA:
                       STZ.W $0AD3                          ;9FF436|9CD30A  |; EA Intro Screen
                       JSL.L CODE_8086A9                    ;9FF439|22A98680|;
                       JSL.L CODE_9B8000                    ;9FF43D|2200809B|;
                       JSL.L CODE_9C97E9                    ;9FF441|22E9979C|;
                       SEP #$20                             ;9FF445|E220    |;
                       LDA.B #$FF                           ;9FF447|A9FF    |;
                       STA.W $07E2                          ;9FF449|8DE207  |;
                       REP #$30                             ;9FF44C|C230    |;
                       LDY.W #$01A0                         ;9FF44E|A0A001  |;
                       LDA.W #$6000                         ;9FF451|A90060  |;
                       LDX.W #$0000                         ;9FF454|A20000  |;
                       JSL.L CODE_80AEE1                    ;9FF457|22E1AE80|;
                       STZ.B $3A                            ;9FF45B|643A    |;
                       STZ.B $3C                            ;9FF45D|643C    |;
                       LDA.W #$F4C0                         ;9FF45F|A9C0F4  |;
                       STA.B $0C                            ;9FF462|850C    |;
                       LDA.W #$009F                         ;9FF464|A99F00  |;
                       STA.B $0E                            ;9FF467|850E    |;
                       JSL.L CODE_9FFAB4                    ;9FF469|22B4FA9F|;
                       JSR.W CODE_9FF4D8                    ;9FF46D|20D8F4  |;
                       STZ.B $C3                            ;9FF470|64C3    |;
                       JSR.W CODE_9FF5E3                    ;9FF472|20E3F5  |;
                       STZ.W $0AD1                          ;9FF475|9CD10A  |;
                       STZ.W $0AD3                          ;9FF478|9CD30A  |;
                       JSL.L CODE_80AF7B                    ;9FF47B|227BAF80|;
                       JSL.L CODE_80AFDE                    ;9FF47F|22DEAF80|;
                       LDX.W #$009F                         ;9FF483|A29F00  |;
                       LDA.W #$FA17                         ;9FF486|A917FA  |;
                       JSL.L CODE_80855E                    ;9FF489|225E8580|;
                       JSL.L CODE_8086BD                    ;9FF48D|22BD8680|;
                       LDA.W #$7000                         ;9FF491|A90070  |;
                       STA.B $64                            ;9FF494|8564    |;
                       LDX.W #$003C                         ;9FF496|A23C00  |;
 
          CODE_9FF499:
                       JSL.L CODE_808583                    ;9FF499|22838580|;
                       DEX                                  ;9FF49D|CA      |;
                       BPL CODE_9FF499                      ;9FF49E|10F9    |;
                       LDX.W #$009F                         ;9FF4A0|A29F00  |;
                       LDA.W #$FA17                         ;9FF4A3|A917FA  |;
                       JSL.L CODE_80855E                    ;9FF4A6|225E8580|;
 
          CODE_9FF4AA:
                       JSL.L CODE_808658                    ;9FF4AA|22588680|;
                       JSR.W CODE_9FF613                    ;9FF4AE|2013F6  |;
                       BNE CODE_9FF4BB                      ;9FF4B1|D008    |;
                       LDA.B $3C                            ;9FF4B3|A53C    |;
                       CMP.B $3A                            ;9FF4B5|C53A    |;
                       BEQ CODE_9FF4AA                      ;9FF4B7|F0F1    |;
                       BRA CODE_9FF4AA                      ;9FF4B9|80EF    |;
 
          CODE_9FF4BB:
                       JSL.L CODE_8086A9                    ;9FF4BB|22A98680|;
                       RTL                                  ;9FF4BF|6B      |;
                       db $07,$C0,$11,$00                   ;9FF4C0|        |;
                       db $00                               ;9FF4C4|        |;
                       db $00,$03                           ;9FF4C5|        |;
                       db $00                               ;9FF4C7|        |;
                       db $00,$00                           ;9FF4C8|        |;
                       db $00                               ;9FF4CA|        |;
                       db $00,$00                           ;9FF4CB|        |;
                       db $00                               ;9FF4CD|        |;
                       db $00,$00                           ;9FF4CE|        |;
                       db $00                               ;9FF4D0|        |;
                       db $00                               ;9FF4D1|        |;
                       db $00                               ;9FF4D2|        |;
                       db $00                               ;9FF4D3|        |;
                       db $00                               ;9FF4D4|        |;
                       db $00                               ;9FF4D5|        |;
                       db $00                               ;9FF4D6|        |;
                       db $00                               ;9FF4D7|        |;
 
          CODE_9FF4D8:
                       SEP #$20                             ;9FF4D8|E220    |;
                       STZ.W $2121                          ;9FF4DA|9C2121  |;
                       LDA.B #$FF                           ;9FF4DD|A9FF    |;
                       STA.W $2122                          ;9FF4DF|8D2221  |;
                       STA.W $2122                          ;9FF4E2|8D2221  |;
                       REP #$20                             ;9FF4E5|C220    |;
                       LDA.W #$EE1C                         ;9FF4E7|A91CEE  |;
                       STA.B $0C                            ;9FF4EA|850C    |;
                       LDA.W #$009A                         ;9FF4EC|A99A00  |;
                       STA.B $0E                            ;9FF4EF|850E    |;
                       LDY.W #$0030                         ;9FF4F1|A03000  |;
                       LDX.W #$0010                         ;9FF4F4|A21000  |;
                       JSL.L CODE_808723                    ;9FF4F7|22238780|;
                       LDY.W #$00B0                         ;9FF4FB|A0B000  |;
                       LDX.W #$0010                         ;9FF4FE|A21000  |;
                       JSL.L CODE_808723                    ;9FF501|22238780|;
                       LDA.W #$EE3C                         ;9FF505|A93CEE  |;
                       STA.B $0C                            ;9FF508|850C    |;
                       LDA.W #$009A                         ;9FF50A|A99A00  |;
                       STA.B $0E                            ;9FF50D|850E    |;
                       LDY.W #$0040                         ;9FF50F|A04000  |;
                       LDX.W #$0010                         ;9FF512|A21000  |;
                       JSL.L CODE_808723                    ;9FF515|22238780|;
                       LDY.W #$00C0                         ;9FF519|A0C000  |;
                       LDX.W #$0010                         ;9FF51C|A21000  |;
                       JSL.L CODE_808723                    ;9FF51F|22238780|;
                       LDA.W #$FFFF                         ;9FF523|A9FFFF  |;
                       LDX.W #$000F                         ;9FF526|A20F00  |;
                       LDY.W #$0020                         ;9FF529|A02000  |;
                       JSL.L CODE_9FF9F5                    ;9FF52C|22F5F99F|;
                       LDA.W #$FFFF                         ;9FF530|A9FFFF  |;
                       LDX.W #$000F                         ;9FF533|A20F00  |;
                       LDY.W #$0010                         ;9FF536|A01000  |;
                       JSL.L CODE_9FF9F5                    ;9FF539|22F5F99F|;
                       LDX.W #$0000                         ;9FF53D|A20000  |;
                       LDA.W #$0000                         ;9FF540|A90000  |;
 
          CODE_9FF543:
                       STA.L $7F4000,X                      ;9FF543|9F00407F|;
                       INX                                  ;9FF547|E8      |;
                       INX                                  ;9FF548|E8      |;
                       CPX.W #$4000                         ;9FF549|E00040  |;
                       BCC CODE_9FF543                      ;9FF54C|90F5    |;
                       LDA.W #$9A00                         ;9FF54E|A9009A  |;
                       STA.B $0C                            ;9FF551|850C    |;
                       LDA.W #$0094                         ;9FF553|A99400  |;
                       STA.B $0E                            ;9FF556|850E    |;
                       LDA.W #$8010                         ;9FF558|A91080  |;
                       STA.B $10                            ;9FF55B|8510    |;
                       LDA.W #$007F                         ;9FF55D|A97F00  |;
                       STA.B $12                            ;9FF560|8512    |;
                       JSL.L CODE_80C373                    ;9FF562|2273C380|;
                       LDA.W #$DC8D                         ;9FF566|A98DDC  |;
                       STA.B $0C                            ;9FF569|850C    |;
                       LDA.W #$009A                         ;9FF56B|A99A00  |;
                       STA.B $0E                            ;9FF56E|850E    |;
                       LDA.W #$4000                         ;9FF570|A90040  |;
                       STA.B $10                            ;9FF573|8510    |;
                       LDA.W #$007F                         ;9FF575|A97F00  |;
                       STA.B $12                            ;9FF578|8512    |;
                       JSL.L CODE_80C373                    ;9FF57A|2273C380|;
                       STZ.W $2116                          ;9FF57E|9C1621  |;
                       SEP #$20                             ;9FF581|E220    |;
                       LDA.B #$80                           ;9FF583|A980    |;
                       STA.W $2115                          ;9FF585|8D1521  |;
                       LDY.W #$4000                         ;9FF588|A00040  |;
                       LDX.W #$0000                         ;9FF58B|A20000  |;
 
          CODE_9FF58E:
                       LDA.L $7F4006,X                      ;9FF58E|BF06407F|;
                       STA.W $2118                          ;9FF592|8D1821  |;
                       LDA.L $7F8010,X                      ;9FF595|BF10807F|;
                       STA.W $2119                          ;9FF599|8D1921  |;
                       INX                                  ;9FF59C|E8      |;
                       DEY                                  ;9FF59D|88      |;
                       BNE CODE_9FF58E                      ;9FF59E|D0EE    |;
                       REP #$20                             ;9FF5A0|C220    |;
                       LDX.W #$1C00                         ;9FF5A2|A2001C  |;
                       LDY.W #$0000                         ;9FF5A5|A00000  |;
                       SEP #$20                             ;9FF5A8|E220    |;
 
          CODE_9FF5AA:
                       LDA.L $7F4000,X                      ;9FF5AA|BF00407F|;
                       PHX                                  ;9FF5AE|DA      |;
                       TYX                                  ;9FF5AF|BB      |;
                       STA.L $7F4040,X                      ;9FF5B0|9F40407F|;
                       PLX                                  ;9FF5B4|FA      |;
                       INY                                  ;9FF5B5|C8      |;
                       LDA.L $7F8010,X                      ;9FF5B6|BF10807F|;
                       PHX                                  ;9FF5BA|DA      |;
                       TYX                                  ;9FF5BB|BB      |;
                       STA.L $7F4040,X                      ;9FF5BC|9F40407F|;
                       PLX                                  ;9FF5C0|FA      |;
                       INX                                  ;9FF5C1|E8      |;
                       INY                                  ;9FF5C2|C8      |;
                       CPY.W #$0A00                         ;9FF5C3|C0000A  |;
                       BMI CODE_9FF5AA                      ;9FF5C6|30E2    |;
                       REP #$20                             ;9FF5C8|C220    |;
                       LDA.W #$F8EC                         ;9FF5CA|A9ECF8  |;
                       STA.B $0C                            ;9FF5CD|850C    |;
                       LDA.W #$0094                         ;9FF5CF|A99400  |;
                       STA.B $0E                            ;9FF5D2|850E    |;
                       LDA.W #$4A40                         ;9FF5D4|A9404A  |;
                       STA.B $10                            ;9FF5D7|8510    |;
                       LDA.W #$007F                         ;9FF5D9|A97F00  |;
                       STA.B $12                            ;9FF5DC|8512    |;
                       JSL.L CODE_80C373                    ;9FF5DE|2273C380|;
                       RTS                                  ;9FF5E2|60      |;
 
          CODE_9FF5E3:
                       LDA.W #$0180                         ;9FF5E3|A98001  |;
                       STA.B $D5                            ;9FF5E6|85D5    |;
                       STA.W $07D6                          ;9FF5E8|8DD607  |;
                       LDA.W #$0190                         ;9FF5EB|A99001  |;
                       STA.B $D7                            ;9FF5EE|85D7    |;
                       STA.W $07D8                          ;9FF5F0|8DD807  |;
                       LDA.W #$0010                         ;9FF5F3|A91000  |;
                       TSB.B $C3                            ;9FF5F6|04C3    |;
                       LDA.W #$0003                         ;9FF5F8|A90300  |;
                       STA.B $B7                            ;9FF5FB|85B7    |;
                       STZ.B $BB                            ;9FF5FD|64BB    |;
                       LDA.B $83                            ;9FF5FF|A583    |;
                       TAX                                  ;9FF601|AA      |;
                       CLC                                  ;9FF602|18      |;
                       ADC.W #$02D0                         ;9FF603|69D002  |;
                       STA.B $BD                            ;9FF606|85BD    |;
                       TXA                                  ;9FF608|8A      |;
                       CLC                                  ;9FF609|18      |;
                       ADC.W #$00F0                         ;9FF60A|69F000  |;
                       STA.B $C1                            ;9FF60D|85C1    |;
                       JSR.W CODE_9FF89C                    ;9FF60F|209CF8  |;
                       RTS                                  ;9FF612|60      |;
 
          CODE_9FF613:
                       LDA.B $B7                            ;9FF613|A5B7    |;
                       STA.B $B5                            ;9FF615|85B5    |;
                       LDA.B $B5                            ;9FF617|A5B5    |;
                       CMP.W #$000D                         ;9FF619|C90D00  |;
                       BEQ CODE_9FF623                      ;9FF61C|F005    |;
                       LDA.W $0776                          ;9FF61E|AD7607  |;
                       BEQ CODE_9FF623                      ;9FF621|F000    |;
 
          CODE_9FF623:
                       LDA.B $C3                            ;9FF623|A5C3    |;
                       BEQ CODE_9FF62A                      ;9FF625|F003    |;
                       JMP.W CODE_9FF898                    ;9FF627|4C98F8  |;
 
          CODE_9FF62A:
                       LDA.B $B5                            ;9FF62A|A5B5    |;
                       ASL A                                ;9FF62C|0A      |;
                       TAX                                  ;9FF62D|AA      |;
                       JMP.W (DATA8_9FF631,X)               ;9FF62E|7C31F6  |;
 
         DATA8_9FF631:
                       db $4D,$F6,$76,$F6                   ;9FF631|        |;
                       db $A9,$F6                           ;9FF635|        |;
                       db $BA,$F6,$F1,$F6,$1D,$F7,$4D,$F7   ;9FF637|        |;
                       db $8B,$F7,$C5,$F7,$E6,$F7,$11,$F8   ;9FF63F|        |;
                       db $3C,$F8                           ;9FF647|        |;
                       db $63,$F8                           ;9FF649|        |;
                       db $78,$F8                           ;9FF64B|        |;
                       LDX.B $BB                            ;9FF64D|A6BB    |;
                       BNE CODE_9FF667                      ;9FF64F|D016    |;
                       LDA.B $D9                            ;9FF651|A5D9    |;
                       CLC                                  ;9FF653|18      |;
                       ADC.W #$000C                         ;9FF654|690C00  |;
                       STA.B $D9                            ;9FF657|85D9    |;
                       STA.B $DB                            ;9FF659|85DB    |;
                       CMP.W #$0100                         ;9FF65B|C90001  |;
                       BPL CODE_9FF667                      ;9FF65E|1007    |;
                       LDA.W #$0040                         ;9FF660|A94000  |;
                       TSB.B $C3                            ;9FF663|04C3    |;
                       BRA CODE_9FF673                      ;9FF665|800C    |;
 
          CODE_9FF667:
                       JSR.W CODE_9FF8D4                    ;9FF667|20D4F8  |;
                       LDA.W #$0040                         ;9FF66A|A94000  |;
                       TSB.B $C3                            ;9FF66D|04C3    |;
                       LDA.B $B9                            ;9FF66F|A5B9    |;
                       STA.B $B7                            ;9FF671|85B7    |;
 
          CODE_9FF673:
                       JMP.W CODE_9FF898                    ;9FF673|4C98F8  |;
                       LDX.B $BB                            ;9FF676|A6BB    |;
                       BNE CODE_9FF690                      ;9FF678|D016    |;
                       JSR.W CODE_9FF992                    ;9FF67A|2092F9  |;
                       BNE CODE_9FF690                      ;9FF67D|D011    |;
                       JSR.W CODE_9FF992                    ;9FF67F|2092F9  |;
                       BNE CODE_9FF690                      ;9FF682|D00C    |;
                       JSR.W CODE_9FF992                    ;9FF684|2092F9  |;
                       BNE CODE_9FF690                      ;9FF687|D007    |;
                       LDA.W #$0008                         ;9FF689|A90800  |;
                       TSB.B $C3                            ;9FF68C|04C3    |;
                       BRA CODE_9FF6A6                      ;9FF68E|8016    |;
 
          CODE_9FF690:
                       LDA.W #$4000                         ;9FF690|A90040  |;
                       STA.B $10                            ;9FF693|8510    |;
                       LDA.W #$007F                         ;9FF695|A97F00  |;
                       STA.B $12                            ;9FF698|8512    |;
                       JSR.W CODE_9FFA08                    ;9FF69A|2008FA  |;
                       LDA.W #$0008                         ;9FF69D|A90800  |;
                       TSB.B $C3                            ;9FF6A0|04C3    |;
                       LDA.B $B9                            ;9FF6A2|A5B9    |;
                       STA.B $B7                            ;9FF6A4|85B7    |;
 
          CODE_9FF6A6:
                       JMP.W CODE_9FF898                    ;9FF6A6|4C98F8  |;
                       db $A6,$BB,$D0,$06,$A5,$83,$C5,$BF   ;9FF6A9|        |;
                       db $30,$04,$A5,$B9,$85,$B7,$4C,$98   ;9FF6B1|        |;
                       db $F8                               ;9FF6B9|        |;
                       LDA.B $BB                            ;9FF6BA|A5BB    |;
                       BNE UNREACH_9FF6CA                   ;9FF6BC|D00C    |;
                       LDA.W #$0000                         ;9FF6BE|A90000  |;
                       JSL.L CODE_80A200                    ;9FF6C1|2200A280|;
                       JSR.W CODE_9FF8DC                    ;9FF6C5|20DCF8  |;
                       BRA CODE_9FF6CD                      ;9FF6C8|8003    |;
 
       UNREACH_9FF6CA:
                       db $20,$D4,$F8                       ;9FF6CA|        |;
 
          CODE_9FF6CD:
                       LDA.W #$DBD3                         ;9FF6CD|A9D3DB  |;
                       STA.B $0C                            ;9FF6D0|850C    |;
                       LDA.W #$009A                         ;9FF6D2|A99A00  |;
                       STA.B $0E                            ;9FF6D5|850E    |;
                       JSL.L CODE_9FF8EA                    ;9FF6D7|22EAF89F|;
                       LDA.W #$00C0                         ;9FF6DB|A9C000  |;
                       TSB.B $C3                            ;9FF6DE|04C3    |;
                       LDA.W #$0004                         ;9FF6E0|A90400  |;
                       LDX.B $BB                            ;9FF6E3|A6BB    |;
                       BNE CODE_9FF6EC                      ;9FF6E5|D005    |;
                       STA.B $B9                            ;9FF6E7|85B9    |;
                       LDA.W #$0000                         ;9FF6E9|A90000  |;
 
          CODE_9FF6EC:
                       STA.B $B7                            ;9FF6EC|85B7    |;
                       JMP.W CODE_9FF898                    ;9FF6EE|4C98F8  |;
                       JSL.L CODE_80AF7B                    ;9FF6F1|227BAF80|;
                       LDA.W #$4A40                         ;9FF6F5|A9404A  |;
                       STA.B $10                            ;9FF6F8|8510    |;
                       LDA.W #$007F                         ;9FF6FA|A97F00  |;
                       STA.B $12                            ;9FF6FD|8512    |;
                       LDA.W #$0000                         ;9FF6FF|A90000  |;
                       STA.B $00                            ;9FF702|8500    |;
                       LDA.W #$0000                         ;9FF704|A90000  |;
                       LDX.W #$0038                         ;9FF707|A23800  |;
                       LDY.W #$002F                         ;9FF70A|A02F00  |;
                       JSL.L CODE_80B08D                    ;9FF70D|228DB080|;
                       JSL.L CODE_80AFDE                    ;9FF711|22DEAF80|;
                       LDA.W #$0009                         ;9FF715|A90900  |;
                       STA.B $B7                            ;9FF718|85B7    |;
                       JMP.W CODE_9FF898                    ;9FF71A|4C98F8  |;
                       LDA.B $BB                            ;9FF71D|A5BB    |;
                       BNE UNREACH_9FF726                   ;9FF71F|D005    |;
                       JSR.W CODE_9FF8DC                    ;9FF721|20DCF8  |;
                       BRA CODE_9FF729                      ;9FF724|8003    |;
 
       UNREACH_9FF726:
                       db $20,$D4,$F8                       ;9FF726|        |;
 
          CODE_9FF729:
                       LDA.W #$DB19                         ;9FF729|A919DB  |;
                       STA.B $0C                            ;9FF72C|850C    |;
                       LDA.W #$009A                         ;9FF72E|A99A00  |;
                       STA.B $0E                            ;9FF731|850E    |;
                       JSL.L CODE_9FF8EA                    ;9FF733|22EAF89F|;
                       LDA.W #$00C0                         ;9FF737|A9C000  |;
                       TSB.B $C3                            ;9FF73A|04C3    |;
                       LDA.W #$0006                         ;9FF73C|A90600  |;
                       LDX.B $BB                            ;9FF73F|A6BB    |;
                       BNE CODE_9FF748                      ;9FF741|D005    |;
                       STA.B $B9                            ;9FF743|85B9    |;
                       LDA.W #$0000                         ;9FF745|A90000  |;
 
          CODE_9FF748:
                       STA.B $B7                            ;9FF748|85B7    |;
                       JMP.W CODE_9FF898                    ;9FF74A|4C98F8  |;
                       JSL.L CODE_80AF7B                    ;9FF74D|227BAF80|;
                       LDA.W #$4A40                         ;9FF751|A9404A  |;
                       STA.B $10                            ;9FF754|8510    |;
                       LDA.W #$007F                         ;9FF756|A97F00  |;
                       STA.B $12                            ;9FF759|8512    |;
                       LDA.W #$0000                         ;9FF75B|A90000  |;
                       STA.B $00                            ;9FF75E|8500    |;
                       LDA.W #$0000                         ;9FF760|A90000  |;
                       LDX.W #$0038                         ;9FF763|A23800  |;
                       LDY.W #$002F                         ;9FF766|A02F00  |;
                       JSL.L CODE_80B08D                    ;9FF769|228DB080|;
                       LDA.W #$0001                         ;9FF76D|A90100  |;
                       STA.B $00                            ;9FF770|8500    |;
                       LDA.W #$0000                         ;9FF772|A90000  |;
                       LDX.W #$0038                         ;9FF775|A23800  |;
                       LDY.W #$002F                         ;9FF778|A02F00  |;
                       JSL.L CODE_80B08D                    ;9FF77B|228DB080|;
                       JSL.L CODE_80AFDE                    ;9FF77F|22DEAF80|;
                       LDA.W #$000A                         ;9FF783|A90A00  |;
                       STA.B $B7                            ;9FF786|85B7    |;
                       JMP.W CODE_9FF898                    ;9FF788|4C98F8  |;
                       LDA.B $BB                            ;9FF78B|A5BB    |;
                       BNE UNREACH_9FF794                   ;9FF78D|D005    |;
                       JSR.W CODE_9FF8DC                    ;9FF78F|20DCF8  |;
                       BRA CODE_9FF797                      ;9FF792|8003    |;
 
       UNREACH_9FF794:
                       db $20,$D4,$F8                       ;9FF794|        |;
 
          CODE_9FF797:
                       JSL.L CODE_9FF8E4                    ;9FF797|22E4F89F|;
                       LDA.W #$EE5C                         ;9FF79B|A95CEE  |;
                       STA.B $C9                            ;9FF79E|85C9    |;
                       LDA.W #$009A                         ;9FF7A0|A99A00  |;
                       STA.B $CB                            ;9FF7A3|85CB    |;
                       LDA.W #$0020                         ;9FF7A5|A92000  |;
                       STA.B $C5                            ;9FF7A8|85C5    |;
                       LDA.W #$0010                         ;9FF7AA|A91000  |;
                       STA.B $C7                            ;9FF7AD|85C7    |;
                       LDA.W #$00C8                         ;9FF7AF|A9C800  |;
                       TSB.B $C3                            ;9FF7B2|04C3    |;
                       LDA.W #$000B                         ;9FF7B4|A90B00  |;
                       LDX.B $BB                            ;9FF7B7|A6BB    |;
                       BNE CODE_9FF7C0                      ;9FF7B9|D005    |;
                       STA.B $B9                            ;9FF7BB|85B9    |;
                       LDA.W #$0000                         ;9FF7BD|A90000  |;
 
          CODE_9FF7C0:
                       STA.B $B7                            ;9FF7C0|85B7    |;
                       JMP.W CODE_9FF898                    ;9FF7C2|4C98F8  |;
                       LDA.W #$EE7C                         ;9FF7C5|A97CEE  |;
                       STA.B $C9                            ;9FF7C8|85C9    |;
                       LDA.W #$009A                         ;9FF7CA|A99A00  |;
                       STA.B $CB                            ;9FF7CD|85CB    |;
                       LDA.W #$0010                         ;9FF7CF|A91000  |;
                       STA.B $C5                            ;9FF7D2|85C5    |;
                       LDA.W #$0010                         ;9FF7D4|A91000  |;
                       STA.B $C7                            ;9FF7D7|85C7    |;
                       LDA.W #$0008                         ;9FF7D9|A90800  |;
                       TSB.B $C3                            ;9FF7DC|04C3    |;
                       LDA.W #$000D                         ;9FF7DE|A90D00  |;
                       STA.B $B7                            ;9FF7E1|85B7    |;
                       JMP.W CODE_9FF898                    ;9FF7E3|4C98F8  |;
                       LDA.B $BB                            ;9FF7E6|A5BB    |;
                       BEQ CODE_9FF7F2                      ;9FF7E8|F008    |;
                       db $A9,$05,$00,$85,$B7,$4C,$98,$F8   ;9FF7EA|        |;
 
          CODE_9FF7F2:
                       LDA.W #$EE1C                         ;9FF7F2|A91CEE  |;
                       STA.B $0C                            ;9FF7F5|850C    |;
                       LDA.W #$009A                         ;9FF7F7|A99A00  |;
                       STA.B $0E                            ;9FF7FA|850E    |;
                       LDA.W #$0030                         ;9FF7FC|A93000  |;
                       STA.B $C5                            ;9FF7FF|85C5    |;
                       JSR.W CODE_9FF975                    ;9FF801|2075F9  |;
                       LDA.W #$0005                         ;9FF804|A90500  |;
                       STA.B $B9                            ;9FF807|85B9    |;
                       LDA.W #$0001                         ;9FF809|A90100  |;
                       STA.B $B7                            ;9FF80C|85B7    |;
                       JMP.W CODE_9FF898                    ;9FF80E|4C98F8  |;
                       LDA.B $BB                            ;9FF811|A5BB    |;
                       BEQ CODE_9FF81D                      ;9FF813|F008    |;
                       db $A9,$07,$00,$85,$B7,$4C,$98,$F8   ;9FF815|        |;
 
          CODE_9FF81D:
                       LDA.W #$EE3C                         ;9FF81D|A93CEE  |;
                       STA.B $0C                            ;9FF820|850C    |;
                       LDA.W #$009A                         ;9FF822|A99A00  |;
                       STA.B $0E                            ;9FF825|850E    |;
                       LDA.W #$0040                         ;9FF827|A94000  |;
                       STA.B $C5                            ;9FF82A|85C5    |;
                       JSR.W CODE_9FF975                    ;9FF82C|2075F9  |;
                       LDA.W #$0007                         ;9FF82F|A90700  |;
                       STA.B $B9                            ;9FF832|85B9    |;
                       LDA.W #$0001                         ;9FF834|A90100  |;
                       STA.B $B7                            ;9FF837|85B7    |;
                       JMP.W CODE_9FF898                    ;9FF839|4C98F8  |;
                       LDA.W #$0008                         ;9FF83C|A90800  |;
                       STA.B $B7                            ;9FF83F|85B7    |;
                       JMP.W CODE_9FF898                    ;9FF841|4C98F8  |;
                       db $A9,$5C,$EE,$85,$0C,$A9,$9A,$00   ;9FF844|        |;
                       db $85,$0E,$A9,$20,$00,$85,$C5,$20   ;9FF84C|        |;
                       db $75,$F9,$A9,$0C,$00,$85,$B9,$A9   ;9FF854|        |;
                       db $01,$00,$85,$B7,$4C,$98,$F8,$A5   ;9FF85C|        |;
                       db $83,$18,$69,$1E,$00,$85,$BF,$A9   ;9FF864|        |;
                       db $02,$00,$85,$B7,$A9,$08,$00,$85   ;9FF86C|        |;
                       db $B9,$4C,$98,$F8                   ;9FF874|        |;
                       LDA.W $0AD3                          ;9FF878|ADD30A  |;
                       CMP.W #$000F                         ;9FF87B|C90F00  |;
                       BNE CODE_9FF898                      ;9FF87E|D018    |;
                       LDA.B $83                            ;9FF880|A583    |;
                       CMP.B $C1                            ;9FF882|C5C1    |;
                       BMI CODE_9FF898                      ;9FF884|3012    |;
                       LDA.W $0776                          ;9FF886|AD7607  |;
                       BNE CODE_9FF893                      ;9FF889|D008    |;
                       LDA.B $83                            ;9FF88B|A583    |;
                       CMP.B $BD                            ;9FF88D|C5BD    |;
                       BMI CODE_9FF898                      ;9FF88F|3007    |;
                       BRA CODE_9FF893                      ;9FF891|8000    |;
 
          CODE_9FF893:
                       LDA.W #$0001                         ;9FF893|A90100  |;
                       BRA CODE_9FF89B                      ;9FF896|8003    |;
 
          CODE_9FF898:
                       LDA.W #$0000                         ;9FF898|A90000  |;
 
          CODE_9FF89B:
                       RTS                                  ;9FF89B|60      |;
 
          CODE_9FF89C:
                       SEP #$20                             ;9FF89C|E220    |;
                       LDA.B #$00                           ;9FF89E|A900    |;
                       STA.W $211F                          ;9FF8A0|8D1F21  |;
                       LDA.B #$02                           ;9FF8A3|A902    |;
                       STA.W $211F                          ;9FF8A5|8D1F21  |;
                       LDA.B #$00                           ;9FF8A8|A900    |;
                       STA.W $2120                          ;9FF8AA|8D2021  |;
                       LDA.B #$02                           ;9FF8AD|A902    |;
                       STA.W $2120                          ;9FF8AF|8D2021  |;
                       STZ.W $211B                          ;9FF8B2|9C1B21  |;
                       LDA.B #$01                           ;9FF8B5|A901    |;
                       STA.W $211B                          ;9FF8B7|8D1B21  |;
                       STZ.W $211C                          ;9FF8BA|9C1C21  |;
                       STZ.W $211C                          ;9FF8BD|9C1C21  |;
                       STZ.W $211D                          ;9FF8C0|9C1D21  |;
                       STZ.W $211D                          ;9FF8C3|9C1D21  |;
                       STZ.W $211E                          ;9FF8C6|9C1E21  |;
                       LDA.B #$01                           ;9FF8C9|A901    |;
                       STA.W $211E                          ;9FF8CB|8D1E21  |;
                       REP #$20                             ;9FF8CE|C220    |;
                       JSR.W CODE_9FF8D4                    ;9FF8D0|20D4F8  |;
                       RTS                                  ;9FF8D3|60      |;
 
          CODE_9FF8D4:
                       LDA.W #$0100                         ;9FF8D4|A90001  |;
                       STA.B $D9                            ;9FF8D7|85D9    |;
                       STA.B $DB                            ;9FF8D9|85DB    |;
                       RTS                                  ;9FF8DB|60      |;
 
          CODE_9FF8DC:
                       LDA.W #$0001                         ;9FF8DC|A90100  |;
                       STA.B $D9                            ;9FF8DF|85D9    |;
                       STA.B $DB                            ;9FF8E1|85DB    |;
                       RTS                                  ;9FF8E3|60      |;
 
          CODE_9FF8E4:
                       STZ.B $A9                            ;9FF8E4|64A9    |;
                       JSR.W CODE_9FF8F3                    ;9FF8E6|20F3F8  |;
                       RTL                                  ;9FF8E9|6B      |;
 
          CODE_9FF8EA:
                       LDA.W #$0001                         ;9FF8EA|A90100  |;
                       STA.B $A9                            ;9FF8ED|85A9    |;
                       JSR.W CODE_9FF8F3                    ;9FF8EF|20F3F8  |;
                       RTL                                  ;9FF8F2|6B      |;
 
          CODE_9FF8F3:
                       LDY.W #$0006                         ;9FF8F3|A00600  |;
                       STZ.B $A7                            ;9FF8F6|64A7    |;
 
          CODE_9FF8F8:
                       LDA.B $A7                            ;9FF8F8|A5A7    |;
                       ASL A                                ;9FF8FA|0A      |;
                       ASL A                                ;9FF8FB|0A      |;
                       ASL A                                ;9FF8FC|0A      |;
                       ASL A                                ;9FF8FD|0A      |;
                       ASL A                                ;9FF8FE|0A      |;
                       ASL A                                ;9FF8FF|0A      |;
                       ASL A                                ;9FF900|0A      |;
                       CLC                                  ;9FF901|18      |;
                       ADC.W #$0037                         ;9FF902|693700  |;
                       ASL A                                ;9FF905|0A      |;
                       TAX                                  ;9FF906|AA      |;
                       STZ.B $A5                            ;9FF907|64A5    |;
                       SEP #$20                             ;9FF909|E220    |;
 
          CODE_9FF90B:
                       LDA.B $A9                            ;9FF90B|A5A9    |;
                       BEQ CODE_9FF911                      ;9FF90D|F002    |;
                       LDA.B [$0C],Y                        ;9FF90F|B70C    |;
 
          CODE_9FF911:
                       STA.L $7F4040,X                      ;9FF911|9F40407F|;
                       INY                                  ;9FF915|C8      |;
                       INX                                  ;9FF916|E8      |;
                       INX                                  ;9FF917|E8      |;
                       INC.B $A5                            ;9FF918|E6A5    |;
                       LDA.B $A5                            ;9FF91A|A5A5    |;
                       CMP.B #$12                           ;9FF91C|C912    |;
                       BMI CODE_9FF90B                      ;9FF91E|30EB    |;
                       REP #$20                             ;9FF920|C220    |;
                       INC.B $A7                            ;9FF922|E6A7    |;
                       LDA.B $A7                            ;9FF924|A5A7    |;
                       CMP.W #$000A                         ;9FF926|C90A00  |;
                       BMI CODE_9FF8F8                      ;9FF929|30CD    |;
                       RTS                                  ;9FF92B|60      |;
                       db $C2,$30                           ;9FF92C|        |;
 
          CODE_9FF92E:
                       LDA.B $0C                            ;9FF92E|A50C    |;
                       PHA                                  ;9FF930|48      |;
                       LDA.B $0E                            ;9FF931|A50E    |;
                       PHA                                  ;9FF933|48      |;
                       LDA.W #$4040                         ;9FF934|A94040  |;
                       STA.B $0C                            ;9FF937|850C    |;
                       LDA.W #$007F                         ;9FF939|A97F00  |;
                       STA.B $0E                            ;9FF93C|850E    |;
                       LDX.W #$1C00                         ;9FF93E|A2001C  |;
                       LDA.W #$0A00                         ;9FF941|A9000A  |;
                       JSL.L CODE_9FF94F                    ;9FF944|224FF99F|;
                       PLA                                  ;9FF948|68      |;
                       STA.B $0E                            ;9FF949|850E    |;
                       PLA                                  ;9FF94B|68      |;
                       STA.B $0C                            ;9FF94C|850C    |;
                       RTL                                  ;9FF94E|6B      |;
 
          CODE_9FF94F:
                       PHP                                  ;9FF94F|08      |;
                       STA.W $4305                          ;9FF950|8D0543  |;
                       LDA.B $0C                            ;9FF953|A50C    |;
                       STA.W $4302                          ;9FF955|8D0243  |;
                       STX.W $2116                          ;9FF958|8E1621  |;
                       SEP #$20                             ;9FF95B|E220    |;
                       LDA.B $0E                            ;9FF95D|A50E    |;
                       STA.W $4304                          ;9FF95F|8D0443  |;
                       LDA.B #$01                           ;9FF962|A901    |;
                       STA.W $4300                          ;9FF964|8D0043  |;
                       LDA.B #$18                           ;9FF967|A918    |;
                       STA.W $4301                          ;9FF969|8D0143  |;
                       LDA.B #$01                           ;9FF96C|A901    |;
                       STA.W $420B                          ;9FF96E|8D0B42  |;
                       REP #$30                             ;9FF971|C230    |;
                       PLP                                  ;9FF973|28      |;
                       RTL                                  ;9FF974|6B      |;
 
          CODE_9FF975:
                       LDA.W #$4000                         ;9FF975|A90040  |;
                       STA.B $10                            ;9FF978|8510    |;
                       LDA.W #$007F                         ;9FF97A|A97F00  |;
                       STA.B $12                            ;9FF97D|8512    |;
                       JSR.W CODE_9FFA08                    ;9FF97F|2008FA  |;
                       LDA.W #$0010                         ;9FF982|A91000  |;
                       STA.B $C7                            ;9FF985|85C7    |;
                       LDA.W #$4000                         ;9FF987|A90040  |;
                       STA.B $C9                            ;9FF98A|85C9    |;
                       LDA.W #$007F                         ;9FF98C|A97F00  |;
                       STA.B $CB                            ;9FF98F|85CB    |;
                       RTS                                  ;9FF991|60      |;
 
          CODE_9FF992:
                       LDX.W #$0000                         ;9FF992|A20000  |;
                       LDY.W #$0001                         ;9FF995|A00100  |;
 
          CODE_9FF998:
                       LDA.L $7F4000,X                      ;9FF998|BF00407F|;
                       PHA                                  ;9FF99C|48      |;
                       AND.W #$001F                         ;9FF99D|291F00  |;
                       CMP.W #$001F                         ;9FF9A0|C91F00  |;
                       BEQ CODE_9FF9AC                      ;9FF9A3|F007    |;
                       CLC                                  ;9FF9A5|18      |;
                       ADC.W #$0001                         ;9FF9A6|690100  |;
                       AND.W #$001F                         ;9FF9A9|291F00  |;
 
          CODE_9FF9AC:
                       STA.L $7F4000,X                      ;9FF9AC|9F00407F|;
                       PLA                                  ;9FF9B0|68      |;
                       PHA                                  ;9FF9B1|48      |;
                       AND.W #$03E0                         ;9FF9B2|29E003  |;
                       CMP.W #$03E0                         ;9FF9B5|C9E003  |;
                       BEQ CODE_9FF9C1                      ;9FF9B8|F007    |;
                       CLC                                  ;9FF9BA|18      |;
                       ADC.W #$0020                         ;9FF9BB|692000  |;
                       AND.W #$03E0                         ;9FF9BE|29E003  |;
 
          CODE_9FF9C1:
                       ORA.L $7F4000,X                      ;9FF9C1|1F00407F|;
                       STA.L $7F4000,X                      ;9FF9C5|9F00407F|;
                       PLA                                  ;9FF9C9|68      |;
                       AND.W #$7C00                         ;9FF9CA|29007C  |;
                       CMP.W #$7C00                         ;9FF9CD|C9007C  |;
                       BEQ CODE_9FF9D9                      ;9FF9D0|F007    |;
                       CLC                                  ;9FF9D2|18      |;
                       ADC.W #$0400                         ;9FF9D3|690004  |;
                       AND.W #$7C00                         ;9FF9D6|29007C  |;
 
          CODE_9FF9D9:
                       ORA.L $7F4000,X                      ;9FF9D9|1F00407F|;
                       STA.L $7F4000,X                      ;9FF9DD|9F00407F|;
                       AND.W #$7FFF                         ;9FF9E1|29FF7F  |;
                       CMP.W #$7FFF                         ;9FF9E4|C9FF7F  |;
                       BEQ CODE_9FF9EC                      ;9FF9E7|F003    |;
                       LDY.W #$0000                         ;9FF9E9|A00000  |;
 
          CODE_9FF9EC:
                       INX                                  ;9FF9EC|E8      |;
                       INX                                  ;9FF9ED|E8      |;
                       CPX.W #$0020                         ;9FF9EE|E02000  |;
                       BMI CODE_9FF998                      ;9FF9F1|30A5    |;
                       TYA                                  ;9FF9F3|98      |;
                       RTS                                  ;9FF9F4|60      |;
 
          CODE_9FF9F5:
                       SEP #$30                             ;9FF9F5|E230    |;
                       STY.W $2121                          ;9FF9F7|8C2121  |;
 
          CODE_9FF9FA:
                       STA.W $2122                          ;9FF9FA|8D2221  |;
                       XBA                                  ;9FF9FD|EB      |;
                       STA.W $2122                          ;9FF9FE|8D2221  |;
                       XBA                                  ;9FFA01|EB      |;
                       DEX                                  ;9FFA02|CA      |;
                       BPL CODE_9FF9FA                      ;9FFA03|10F5    |;
                       REP #$30                             ;9FFA05|C230    |;
                       RTL                                  ;9FFA07|6B      |;
 
          CODE_9FFA08:
                       LDY.W #$0000                         ;9FFA08|A00000  |;
 
          CODE_9FFA0B:
                       LDA.B [$0C],Y                        ;9FFA0B|B70C    |;
                       STA.B [$10],Y                        ;9FFA0D|9710    |;
                       INY                                  ;9FFA0F|C8      |;
                       INY                                  ;9FFA10|C8      |;
                       CPY.W #$0020                         ;9FFA11|C02000  |;
                       BMI CODE_9FFA0B                      ;9FFA14|30F5    |;
                       RTS                                  ;9FFA16|60      |;
                       REP #$30                             ;9FFA17|C230    |;
                       LDA.B $C3                            ;9FFA19|A5C3    |;
                       BIT.W #$0080                         ;9FFA1B|898000  |;
                       BEQ CODE_9FFA2C                      ;9FFA1E|F00C    |;
                       JSL.L CODE_9FF92E                    ;9FFA20|222EF99F|;
                       LDA.W #$0080                         ;9FFA24|A98000  |;
                       TRB.B $C3                            ;9FFA27|14C3    |;
                       JMP.W CODE_9FFA6B                    ;9FFA29|4C6BFA  |;
 
          CODE_9FFA2C:
                       LDA.B $C3                            ;9FFA2C|A5C3    |;
                       BIT.W #$0008                         ;9FFA2E|890800  |;
                       BEQ CODE_9FFA6B                      ;9FFA31|F038    |;
                       LDA.B $0C                            ;9FFA33|A50C    |;
                       PHA                                  ;9FFA35|48      |;
                       LDA.B $0E                            ;9FFA36|A50E    |;
                       PHA                                  ;9FFA38|48      |;
                       LDA.B $C9                            ;9FFA39|A5C9    |;
                       STA.B $0C                            ;9FFA3B|850C    |;
                       LDA.B $CB                            ;9FFA3D|A5CB    |;
                       STA.B $0E                            ;9FFA3F|850E    |;
                       LDY.B $C5                            ;9FFA41|A4C5    |;
                       LDX.B $C7                            ;9FFA43|A6C7    |;
                       JSL.L CODE_808723                    ;9FFA45|22238780|;
                       LDA.B $C3                            ;9FFA49|A5C3    |;
                       BIT.W #$0200                         ;9FFA4B|890002  |;
                       BEQ CODE_9FFA60                      ;9FFA4E|F010    |;
                       db $A5,$D1,$85,$0C,$A5,$D3,$85,$0E   ;9FFA50|        |;
                       db $A4,$CD,$A6,$CF,$22,$23,$87,$80   ;9FFA58|        |;
 
          CODE_9FFA60:
                       PLA                                  ;9FFA60|68      |;
                       STA.B $0E                            ;9FFA61|850E    |;
                       PLA                                  ;9FFA63|68      |;
                       STA.B $0C                            ;9FFA64|850C    |;
                       LDA.W #$0208                         ;9FFA66|A90802  |;
                       TRB.B $C3                            ;9FFA69|14C3    |;
 
          CODE_9FFA6B:
                       LDA.B $C3                            ;9FFA6B|A5C3    |;
                       BIT.W #$0010                         ;9FFA6D|891000  |;
                       BEQ CODE_9FFA8F                      ;9FFA70|F01D    |;
                       SEP #$20                             ;9FFA72|E220    |;
                       LDA.B $D5                            ;9FFA74|A5D5    |;
                       STA.W $210D                          ;9FFA76|8D0D21  |;
                       LDA.B $D6                            ;9FFA79|A5D6    |;
                       STA.W $210D                          ;9FFA7B|8D0D21  |;
                       LDA.B $D7                            ;9FFA7E|A5D7    |;
                       STA.W $210E                          ;9FFA80|8D0E21  |;
                       LDA.B $D8                            ;9FFA83|A5D8    |;
                       STA.W $210E                          ;9FFA85|8D0E21  |;
                       REP #$20                             ;9FFA88|C220    |;
                       LDA.W #$0010                         ;9FFA8A|A91000  |;
                       TRB.B $C3                            ;9FFA8D|14C3    |;
 
          CODE_9FFA8F:
                       LDA.B $C3                            ;9FFA8F|A5C3    |;
                       BIT.W #$0040                         ;9FFA91|894000  |;
                       BEQ CODE_9FFAB3                      ;9FFA94|F01D    |;
                       SEP #$20                             ;9FFA96|E220    |;
                       LDA.B $D9                            ;9FFA98|A5D9    |;
                       STA.W $211B                          ;9FFA9A|8D1B21  |;
                       LDA.B $DA                            ;9FFA9D|A5DA    |;
                       STA.W $211B                          ;9FFA9F|8D1B21  |;
                       LDA.B $DB                            ;9FFAA2|A5DB    |;
                       STA.W $211E                          ;9FFAA4|8D1E21  |;
                       LDA.B $DC                            ;9FFAA7|A5DC    |;
                       STA.W $211E                          ;9FFAA9|8D1E21  |;
                       REP #$20                             ;9FFAAC|C220    |;
                       LDA.W #$0040                         ;9FFAAE|A94000  |;
                       TRB.B $C3                            ;9FFAB1|14C3    |;
 
          CODE_9FFAB3:
                       RTL                                  ;9FFAB3|6B      |;
 
          CODE_9FFAB4:
                       SEP #$20                             ;9FFAB4|E220    |;
                       LDA.B #$03                           ;9FFAB6|A903    |;
                       STA.W $2101                          ;9FFAB8|8D0121  |;
                       LDA.B #$80                           ;9FFABB|A980    |;
                       STA.W $2115                          ;9FFABD|8D1521  |;
                       LDY.W #$0000                         ;9FFAC0|A00000  |;
                       LDA.B [$0C],Y                        ;9FFAC3|B70C    |;
                       STA.W $2105                          ;9FFAC5|8D0521  |;
                       INY                                  ;9FFAC8|C8      |;
                       LDA.B [$0C],Y                        ;9FFAC9|B70C    |;
                       STA.W $211A                          ;9FFACB|8D1A21  |;
                       INY                                  ;9FFACE|C8      |;
                       LDA.B [$0C],Y                        ;9FFACF|B70C    |;
                       STA.W $212C                          ;9FFAD1|8D2C21  |;
                       INY                                  ;9FFAD4|C8      |;
                       LDA.B [$0C],Y                        ;9FFAD5|B70C    |;
                       STA.W $212D                          ;9FFAD7|8D2D21  |;
                       INY                                  ;9FFADA|C8      |;
                       INY                                  ;9FFADB|C8      |;
                       LDA.B [$0C],Y                        ;9FFADC|B70C    |;
                       INY                                  ;9FFADE|C8      |;
                       ORA.B [$0C],Y                        ;9FFADF|170C    |;
                       STA.W $2107                          ;9FFAE1|8D0721  |;
                       INY                                  ;9FFAE4|C8      |;
                       INY                                  ;9FFAE5|C8      |;
                       LDA.B [$0C],Y                        ;9FFAE6|B70C    |;
                       INY                                  ;9FFAE8|C8      |;
                       ORA.B [$0C],Y                        ;9FFAE9|170C    |;
                       STA.W $2108                          ;9FFAEB|8D0821  |;
                       INY                                  ;9FFAEE|C8      |;
                       INY                                  ;9FFAEF|C8      |;
                       LDA.B [$0C],Y                        ;9FFAF0|B70C    |;
                       INY                                  ;9FFAF2|C8      |;
                       ORA.B [$0C],Y                        ;9FFAF3|170C    |;
                       STA.W $2109                          ;9FFAF5|8D0921  |;
                       INY                                  ;9FFAF8|C8      |;
                       INY                                  ;9FFAF9|C8      |;
                       LDA.B [$0C],Y                        ;9FFAFA|B70C    |;
                       INY                                  ;9FFAFC|C8      |;
                       ORA.B [$0C],Y                        ;9FFAFD|170C    |;
                       STA.W $210A                          ;9FFAFF|8D0A21  |;
                       INY                                  ;9FFB02|C8      |;
                       INY                                  ;9FFB03|C8      |;
                       LDA.B [$0C],Y                        ;9FFB04|B70C    |;
                       LSR A                                ;9FFB06|4A      |;
                       LSR A                                ;9FFB07|4A      |;
                       LSR A                                ;9FFB08|4A      |;
                       LSR A                                ;9FFB09|4A      |;
                       INY                                  ;9FFB0A|C8      |;
                       INY                                  ;9FFB0B|C8      |;
                       ORA.B [$0C],Y                        ;9FFB0C|170C    |;
                       STA.W $210B                          ;9FFB0E|8D0B21  |;
                       INY                                  ;9FFB11|C8      |;
                       INY                                  ;9FFB12|C8      |;
                       LDA.B [$0C],Y                        ;9FFB13|B70C    |;
                       LSR A                                ;9FFB15|4A      |;
                       LSR A                                ;9FFB16|4A      |;
                       LSR A                                ;9FFB17|4A      |;
                       LSR A                                ;9FFB18|4A      |;
                       INY                                  ;9FFB19|C8      |;
                       INY                                  ;9FFB1A|C8      |;
                       ORA.B [$0C],Y                        ;9FFB1B|170C    |;
                       STA.W $210C                          ;9FFB1D|8D0C21  |;
                       REP #$20                             ;9FFB20|C220    |;
                       RTL                                  ;9FFB22|6B      |;
                       db $00                               ;9FFB23|        |;
 
    Enable_DefControl:
                       JSL.L Set_Default_Goalie             ;9FFB24|22B2C69F|; Run Original Code we Hijacked
                       LDA.W #$0001                         ;9FFB28|A90100  |; Enable Def Control On (0001)
                       STA.W Def_Ctrl                       ;9FFB2B|8D941C  |; Enable Home Defense Control (1C94)
                       STA.W Def_Ctrl_Awy                   ;9FFB2E|8D961C  |; Enable Away Defense Control (1C96)
                       RTS                                  ;9FFB31|60      |; Return from this Subroutine
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
    ShowMaxBoost:
                       BIT.B $14                            ; Check if $14 (RNG) is negative
                       BMI .negative                        ; Branch if negative
                       JMP.W CODE_9F9ABD                    ; JMP to original code
    .negative:
                       LDA.W #$0064                         ; Load 100 decimal (MAX) into A
                       STA.W $A5                            ; Store 100 decimal into $A5 and return
                       RTL

                       padbyte $FF
                       pad $A08000