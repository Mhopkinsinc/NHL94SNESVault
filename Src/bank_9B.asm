 
                       ORG $9B8000
 
 
          CODE_9B8000:
                       LDA.W #$0000                         ;9B8000|A90000  |;
                       STA.L $7E35DA                        ;9B8003|8FDA357E|;
                       LDA.W $213F                          ;9B8007|AD3F21  |;
                       BIT.W #$0010                         ;9B800A|891000  |;
                       BEQ CODE_9B8016                      ;9B800D|F007    |;
                       db $A9,$33,$33,$8F,$DA,$35,$7E       ;9B800F|        |;
 
          CODE_9B8016:
                       RTL                                  ;9B8016|6B      |;
 
          CODE_9B8017:
                       LDA.W $0776                          ;9B8017|AD7607  |;
                       XBA                                  ;9B801A|EB      |;
                       AND.W #$000F                         ;9B801B|290F00  |;
                       TAX                                  ;9B801E|AA      |;
                       LDA.L DATA8_9B8087,X                 ;9B801F|BF87809B|;
                       AND.W #$00FF                         ;9B8023|29FF00  |;
                       STA.W $0AA4                          ;9B8026|8DA40A  |;
                       LDA.W $0778                          ;9B8029|AD7807  |;
                       XBA                                  ;9B802C|EB      |;
                       AND.W #$000F                         ;9B802D|290F00  |;
                       TAX                                  ;9B8030|AA      |;
                       LDA.L DATA8_9B8087,X                 ;9B8031|BF87809B|;
                       AND.W #$00FF                         ;9B8035|29FF00  |;
                       STA.W $0AA6                          ;9B8038|8DA60A  |;
                       LDA.W $077A                          ;9B803B|AD7A07  |;
                       XBA                                  ;9B803E|EB      |;
                       AND.W #$000F                         ;9B803F|290F00  |;
                       TAX                                  ;9B8042|AA      |;
                       LDA.L DATA8_9B8087,X                 ;9B8043|BF87809B|;
                       AND.W #$00FF                         ;9B8047|29FF00  |;
                       STA.W $0AA8                          ;9B804A|8DA80A  |;
                       LDA.W $077C                          ;9B804D|AD7C07  |;
                       XBA                                  ;9B8050|EB      |;
                       AND.W #$000F                         ;9B8051|290F00  |;
                       TAX                                  ;9B8054|AA      |;
                       LDA.L DATA8_9B8087,X                 ;9B8055|BF87809B|;
                       AND.W #$00FF                         ;9B8059|29FF00  |;
                       STA.W $0AAA                          ;9B805C|8DAA0A  |;
                       LDA.W $077E                          ;9B805F|AD7E07  |;
                       XBA                                  ;9B8062|EB      |;
                       AND.W #$000F                         ;9B8063|290F00  |;
                       TAX                                  ;9B8066|AA      |;
                       LDA.L DATA8_9B8087,X                 ;9B8067|BF87809B|;
                       AND.W #$00FF                         ;9B806B|29FF00  |;
                       STA.W $0AAC                          ;9B806E|8DAC0A  |;
                       JSR.W CODE_9B8472                    ;9B8071|207284  |;
                       LDA.W $0AAE                          ;9B8074|ADAE0A  |;
                       ORA.W $0AB0                          ;9B8077|0DB00A  |;
                       ORA.W $0AB2                          ;9B807A|0DB20A  |;
                       ORA.W $0AB4                          ;9B807D|0DB40A  |;
                       ORA.W $0AB6                          ;9B8080|0DB60A  |;
                       STA.W $0AC2                          ;9B8083|8DC20A  |;
                       RTL                                  ;9B8086|6B      |;
 
         DATA8_9B8087:
                       db $08,$02,$06,$08,$04,$03,$05,$08   ;9B8087|        |;
                       db $00,$01,$07,$08                   ;9B808F|        |;
                       db $08,$08,$08,$08,$53,$54,$41,$52   ;9B8093|        |;
                       db $54,$20,$4F,$46,$20,$4D,$55,$4C   ;9B809B|        |;
                       db $54,$49,$35,$20,$42,$49,$4F,$53   ;9B80A3|        |;
 
          CODE_9B80AB:
                       PHP                                  ;9B80AB|08      |;
                       SEP #$20                             ;9B80AC|E220    |;
                       REP #$10                             ;9B80AE|C210    |;
                       STZ.W $0ACD                          ;9B80B0|9CCD0A  |;
                       STZ.W $0ACE                          ;9B80B3|9CCE0A  |;
 
          CODE_9B80B6:
                       LDA.W $4212                          ;9B80B6|AD1242  |;
                       AND.B #$01                           ;9B80B9|2901    |;
                       BNE CODE_9B80B6                      ;9B80BB|D0F9    |;
                       LDX.W $4218                          ;9B80BD|AE1842  |;
                       STX.W $0776                          ;9B80C0|8E7607  |;
                       TXA                                  ;9B80C3|8A      |;
                       AND.B #$0F                           ;9B80C4|290F    |;
                       STA.W $0ACA                          ;9B80C6|8DCA0A  |;
                       LDA.W $4016                          ;9B80C9|AD1640  |;
                       LSR A                                ;9B80CC|4A      |;
                       ROL.W $0ACA                          ;9B80CD|2ECA0A  |;
                       LDX.W $421A                          ;9B80D0|AE1A42  |;
                       STX.W $0778                          ;9B80D3|8E7807  |;
                       TXA                                  ;9B80D6|8A      |;
                       AND.B #$0F                           ;9B80D7|290F    |;
                       STA.W $0ACB                          ;9B80D9|8DCB0A  |;
                       LDA.W $1A0C                          ;9B80DC|AD0C1A  |;
                       BNE UNREACH_9B80E4                   ;9B80DF|D003    |;
                       JMP.W CODE_9B81EC                    ;9B80E1|4CEC81  |;
 
       UNREACH_9B80E4:
                       db $AE,$1E,$42,$8E,$7A,$07,$8A,$29   ;9B80E4|        |;
                       db $0F,$8D,$CC,$0A,$AD,$17,$40,$4A   ;9B80EC|        |;
                       db $2E,$CB,$0A,$4A,$2E,$CC,$0A,$9C   ;9B80F4|        |;
                       db $01,$42,$AD,$D7,$0A,$0D,$0E,$1A   ;9B80FC|        |;
                       db $D0,$19,$AD,$8A,$1C,$0D,$8C,$1C   ;9B8104|        |;
                       db $D0,$11,$AD,$02,$1A,$F0,$07,$3A   ;9B810C|        |;
                       db $8D,$02,$1A,$4C,$F3,$81,$A9,$1E   ;9B8114|        |;
                       db $8D,$02,$1A,$AD,$17,$40,$4A,$2E   ;9B811C|        |;
                       db $7D,$07,$4A,$2E,$7F,$07,$AD,$17   ;9B8124|        |;
                       db $40,$4A,$2E,$7D,$07,$4A,$2E,$7F   ;9B812C|        |;
                       db $07,$AD,$17,$40,$4A,$2E,$7D,$07   ;9B8134|        |;
                       db $4A,$2E,$7F,$07,$AD,$17,$40,$4A   ;9B813C|        |;
                       db $2E,$7D,$07,$4A,$2E,$7F,$07,$AD   ;9B8144|        |;
                       db $17,$40,$4A,$2E,$7D,$07,$4A,$2E   ;9B814C|        |;
                       db $7F,$07,$AD,$17,$40,$4A,$2E,$7D   ;9B8154|        |;
                       db $07,$4A,$2E,$7F,$07,$AD,$17,$40   ;9B815C|        |;
                       db $4A,$2E,$7D,$07,$4A,$2E,$7F,$07   ;9B8164|        |;
                       db $AD,$17,$40,$4A,$2E,$7D,$07,$4A   ;9B816C|        |;
                       db $2E,$7F,$07,$AD,$17,$40,$4A,$2E   ;9B8174|        |;
                       db $7C,$07,$4A,$2E,$7E,$07,$AD,$17   ;9B817C|        |;
                       db $40,$4A,$2E,$7C,$07,$4A,$2E,$7E   ;9B8184|        |;
                       db $07,$AD,$17,$40,$4A,$2E,$7C,$07   ;9B818C|        |;
                       db $4A,$2E,$7E,$07,$AD,$17,$40,$4A   ;9B8194|        |;
                       db $2E,$7C,$07,$4A,$2E,$7E,$07,$AD   ;9B819C|        |;
                       db $17,$40,$4A,$2E,$7C,$07,$4A,$2E   ;9B81A4|        |;
                       db $7E,$07,$AD,$17,$40,$4A,$2E,$7C   ;9B81AC|        |;
                       db $07,$4A,$2E,$7E,$07,$AD,$17,$40   ;9B81B4|        |;
                       db $4A,$2E,$7C,$07,$4A,$2E,$7E,$07   ;9B81BC|        |;
                       db $AD,$17,$40,$4A,$2E,$7C,$07,$4A   ;9B81C4|        |;
                       db $2E,$7E,$07,$AD,$7C,$07,$29,$0F   ;9B81CC|        |;
                       db $8D,$CD,$0A,$AD,$7E,$07,$29,$0F   ;9B81D4|        |;
                       db $8D,$CE,$0A,$AD,$17,$40,$4A,$2E   ;9B81DC|        |;
                       db $CD,$0A,$4A,$2E,$CE,$0A,$80,$07   ;9B81E4|        |;
 
          CODE_9B81EC:
                       LDA.W $4017                          ;9B81EC|AD1740  |;
                       LSR A                                ;9B81EF|4A      |;
                       ROL.W $0ACB                          ;9B81F0|2ECB0A  |;
                       LDA.B #$80                           ;9B81F3|A980    |;
                       STA.W $4201                          ;9B81F5|8D0142  |;
                       LDA.W $1A0E                          ;9B81F8|AD0E1A  |;
                       AND.B #$01                           ;9B81FB|2901    |;
                       STA.W $1A0E                          ;9B81FD|8D0E1A  |;
                       LDA.W $1A04                          ;9B8200|AD041A  |;
                       BEQ CODE_9B8208                      ;9B8203|F003    |;
                       db $CE,$04,$1A                       ;9B8205|        |;
 
          CODE_9B8208:
                       STZ.W $4016                          ;9B8208|9C1640  |;
                       LDA.B #$01                           ;9B820B|A901    |;
                       STA.W $4016                          ;9B820D|8D1640  |;
                       LDA.W $4016                          ;9B8210|AD1640  |;
                       AND.B #$02                           ;9B8213|2902    |;
                       TAX                                  ;9B8215|AA      |;
                       EOR.W $1A06                          ;9B8216|4D061A  |;
                       STX.W $1A06                          ;9B8219|8E061A  |;
                       STA.W $1A0A                          ;9B821C|8D0A1A  |;
                       LDA.W $4017                          ;9B821F|AD1740  |;
                       AND.B #$02                           ;9B8222|2902    |;
                       TAX                                  ;9B8224|AA      |;
                       EOR.W $1A08                          ;9B8225|4D081A  |;
                       STX.W $1A08                          ;9B8228|8E081A  |;
                       ORA.W $1A0A                          ;9B822B|0D0A1A  |;
                       BEQ CODE_9B8235                      ;9B822E|F005    |;
                       db $A9,$10,$8D,$04,$1A               ;9B8230|        |;
 
          CODE_9B8235:
                       LDA.W $1A04                          ;9B8235|AD041A  |;
                       BNE UNREACH_9B823C                   ;9B8238|D002    |;
                       BRA CODE_9B8274                      ;9B823A|8038    |;
 
       UNREACH_9B823C:
                       db $22,$BE,$83,$9B,$A2,$0F,$00,$8E   ;9B823C|        |;
                       db $7A,$07,$8E,$7C,$07,$8E,$7E,$07   ;9B8244|        |;
                       db $AD,$00,$1A,$29,$80,$F0,$07,$A9   ;9B824C|        |;
                       db $01,$0C,$0E,$1A,$80,$05,$A9,$01   ;9B8254|        |;
                       db $1C,$0E,$1A,$AD,$00,$1A,$29,$40   ;9B825C|        |;
                       db $F0,$07,$A9,$01,$0C,$0C,$1A,$80   ;9B8264|        |;
                       db $0A,$A9,$01,$1C,$0C,$1A,$80,$03   ;9B826C|        |;
 
          CODE_9B8274:
                       STZ.W $4016                          ;9B8274|9C1640  |;
                       LDA.W $0ACA                          ;9B8277|ADCA0A  |;
                       CMP.B #$01                           ;9B827A|C901    |;
                       BEQ CODE_9B828C                      ;9B827C|F00E    |;
                       LDX.W #$000F                         ;9B827E|A20F00  |;
                       STX.W $0776                          ;9B8281|8E7607  |;
                       LDX.W $1A0C                          ;9B8284|AE0C1A  |;
                       BEQ CODE_9B828C                      ;9B8287|F003    |;
                       db $20,$09,$83                       ;9B8289|        |;
 
          CODE_9B828C:
                       LDA.W $0ACB                          ;9B828C|ADCB0A  |;
                       CMP.B #$01                           ;9B828F|C901    |;
                       BEQ CODE_9B82A1                      ;9B8291|F00E    |;
                       LDX.W #$000F                         ;9B8293|A20F00  |;
                       STX.W $0778                          ;9B8296|8E7807  |;
                       LDX.W $1A0C                          ;9B8299|AE0C1A  |;
                       BEQ CODE_9B82D6                      ;9B829C|F038    |;
                       db $20,$09,$83                       ;9B829E|        |;
 
          CODE_9B82A1:
                       LDA.W $1A0C                          ;9B82A1|AD0C1A  |;
                       BEQ CODE_9B82D6                      ;9B82A4|F030    |;
                       db $AD,$CC,$0A,$C9,$01,$F0,$09,$A2   ;9B82A6|        |;
                       db $0F,$00,$8E,$7A,$07,$20,$09,$83   ;9B82AE|        |;
                       db $AD,$CD,$0A,$C9,$01,$F0,$09,$A2   ;9B82B6|        |;
                       db $0F,$00,$8E,$7C,$07,$20,$09,$83   ;9B82BE|        |;
                       db $AD,$CE,$0A,$C9,$01,$F0,$09,$A2   ;9B82C6|        |;
                       db $0F,$00,$8E,$7E,$07,$20,$09,$83   ;9B82CE|        |;
 
          CODE_9B82D6:
                       LDA.W $1A0E                          ;9B82D6|AD0E1A  |;
                       BEQ CODE_9B8307                      ;9B82D9|F02C    |;
                       db $A5,$83,$29,$10,$D0,$14,$A2,$00   ;9B82DB|        |;
                       db $10,$8E,$76,$07,$8E,$78,$07,$8E   ;9B82E3|        |;
                       db $7A,$07,$8E,$7C,$07,$8E,$7E,$07   ;9B82EB|        |;
                       db $80,$12,$A2,$00,$00,$8E,$76,$07   ;9B82F3|        |;
                       db $8E,$78,$07,$8E,$7A,$07,$8E,$7C   ;9B82FB|        |;
                       db $07,$8E,$7E,$07                   ;9B8303|        |;
 
          CODE_9B8307:
                       PLP                                  ;9B8307|28      |;
                       RTL                                  ;9B8308|6B      |;
                       db $29,$1E,$C9,$02,$D0,$07,$A9,$04   ;9B8309|        |;
                       db $0C,$0E,$1A,$80,$09,$C9,$1E,$D0   ;9B8311|        |;
                       db $05,$A9,$02,$0C,$0E,$1A,$60,$4D   ;9B8319|        |;
                       db $4F,$44,$49,$46,$49,$45,$44,$20   ;9B8321|        |;
                       db $46,$52,$4F,$4D,$20,$53,$48,$56   ;9B8329|        |;
                       db $43,$20,$4D,$55,$4C,$54,$49,$35   ;9B8331|        |;
                       db $20,$42,$49,$4F,$53,$20,$56,$65   ;9B8339|        |;
                       db $72,$32,$2E,$30,$30,$45,$4E,$44   ;9B8341|        |;
                       db $20,$4F,$46,$20,$4D,$55,$4C,$54   ;9B8349|        |;
                       db $49,$35,$20,$42,$49,$4F,$53       ;9B8351|        |;
 
          CODE_9B8358:
                       JSL.L CODE_9B83BE                    ;9B8358|22BE839B|;
                       LDA.W #$000F                         ;9B835C|A90F00  |;
                       STA.W $077A                          ;9B835F|8D7A07  |;
                       STA.W $077C                          ;9B8362|8D7C07  |;
                       STA.W $077E                          ;9B8365|8D7E07  |;
                       STZ.W $1A0C                          ;9B8368|9C0C1A  |;
                       STZ.W $1A0E                          ;9B836B|9C0E1A  |;
                       STZ.W $1A04                          ;9B836E|9C041A  |;
                       STZ.W $1A02                          ;9B8371|9C021A  |;
                       LDA.W $1A00                          ;9B8374|AD001A  |;
                       AND.W #$0080                         ;9B8377|298000  |;
                       BEQ CODE_9B8384                      ;9B837A|F008    |;
                       db $A9,$01,$00,$0C,$0E,$1A,$80,$06   ;9B837C|        |;
 
          CODE_9B8384:
                       LDA.W #$0001                         ;9B8384|A90100  |;
                       TRB.W $1A0E                          ;9B8387|1C0E1A  |;
                       LDA.W $1A00                          ;9B838A|AD001A  |;
                       AND.W #$0040                         ;9B838D|294000  |;
                       BEQ CODE_9B839A                      ;9B8390|F008    |;
                       db $A9,$01,$00,$0C,$0C,$1A,$80,$06   ;9B8392|        |;
 
          CODE_9B839A:
                       LDA.W #$0001                         ;9B839A|A90100  |;
                       TRB.W $1A0C                          ;9B839D|1C0C1A  |;
                       RTL                                  ;9B83A0|6B      |;
                       db $53,$54,$41,$52,$54,$20,$4F,$46   ;9B83A1|        |;
                       db $20,$4D,$55,$4C,$54,$49,$35,$20   ;9B83A9|        |;
                       db $43,$4F,$4E,$4E,$45,$43,$54,$20   ;9B83B1|        |;
                       db $43,$48,$45,$43,$4B               ;9B83B9|        |;
 
          CODE_9B83BE:
                       PHP                                  ;9B83BE|08      |;
                       SEP #$30                             ;9B83BF|E230    |;
                       STZ.W $1A00                          ;9B83C1|9C001A  |;
 
          CODE_9B83C4:
                       LDA.W $4212                          ;9B83C4|AD1242  |;
                       AND.B #$01                           ;9B83C7|2901    |;
                       BNE CODE_9B83C4                      ;9B83C9|D0F9    |;
                       STZ.W $4016                          ;9B83CB|9C1640  |;
                       LDA.B #$01                           ;9B83CE|A901    |;
                       STA.W $4016                          ;9B83D0|8D1640  |;
                       LDX.B #$08                           ;9B83D3|A208    |;
 
          CODE_9B83D5:
                       LDA.W $4016                          ;9B83D5|AD1640  |;
                       LSR A                                ;9B83D8|4A      |;
                       LSR A                                ;9B83D9|4A      |;
                       ROL.W $0782                          ;9B83DA|2E8207  |;
                       LDA.W $4017                          ;9B83DD|AD1740  |;
                       LSR A                                ;9B83E0|4A      |;
                       LSR A                                ;9B83E1|4A      |;
                       ROL.W $0784                          ;9B83E2|2E8407  |;
                       DEX                                  ;9B83E5|CA      |;
                       BNE CODE_9B83D5                      ;9B83E6|D0ED    |;
                       STZ.W $4016                          ;9B83E8|9C1640  |;
                       LDX.B #$08                           ;9B83EB|A208    |;
 
          CODE_9B83ED:
                       LDA.W $4016                          ;9B83ED|AD1640  |;
                       LSR A                                ;9B83F0|4A      |;
                       LSR A                                ;9B83F1|4A      |;
                       ROL.W $0781                          ;9B83F2|2E8107  |;
                       LDA.W $4017                          ;9B83F5|AD1740  |;
                       LSR A                                ;9B83F8|4A      |;
                       LSR A                                ;9B83F9|4A      |;
                       ROL.W $0783                          ;9B83FA|2E8307  |;
                       DEX                                  ;9B83FD|CA      |;
                       BNE CODE_9B83ED                      ;9B83FE|D0ED    |;
                       LDA.W $0782                          ;9B8400|AD8207  |;
                       CMP.B #$FF                           ;9B8403|C9FF    |;
                       BNE CODE_9B8413                      ;9B8405|D00C    |;
                       db $AD,$81,$07,$C9,$FF,$F0,$05,$A9   ;9B8407|        |;
                       db $80,$8D,$00,$1A                   ;9B840F|        |;
 
          CODE_9B8413:
                       LDA.W $0784                          ;9B8413|AD8407  |;
                       CMP.B #$FF                           ;9B8416|C9FF    |;
                       BNE CODE_9B8426                      ;9B8418|D00C    |;
                       db $AD,$83,$07,$C9,$FF,$F0,$05,$A9   ;9B841A|        |;
                       db $40,$0C,$00,$1A                   ;9B8422|        |;
 
          CODE_9B8426:
                       PLP                                  ;9B8426|28      |;
                       RTL                                  ;9B8427|6B      |;
                       db $4D,$4F,$44,$49,$46,$49,$45,$44   ;9B8428|        |;
                       db $20,$46,$52,$4F,$4D,$20,$53,$48   ;9B8430|        |;
                       db $56,$43,$20,$4D,$55,$4C,$54,$49   ;9B8438|        |;
                       db $35,$20,$43,$4F,$4E,$4E,$45,$43   ;9B8440|        |;
                       db $54,$20,$43,$48,$45,$43,$4B,$20   ;9B8448|        |;
                       db $56,$45,$52,$31,$2E,$30,$30,$45   ;9B8450|        |;
                       db $4E,$44,$20,$4F,$46,$20,$4D,$55   ;9B8458|        |;
                       db $4C,$54,$49,$35,$20,$43,$4F,$4E   ;9B8460|        |;
                       db $4E,$45,$43,$54,$20,$43,$48,$45   ;9B8468|        |;
                       db $43,$4B                           ;9B8470|        |;
 
          CODE_9B8472:
                       LDA.W $0776                          ;9B8472|AD7607  |;
                       EOR.W $0A9A                          ;9B8475|4D9A0A  |;
                       STA.W $0AAE                          ;9B8478|8DAE0A  |;
                       AND.W $0776                          ;9B847B|2D7607  |;
                       STA.W $0AB8                          ;9B847E|8DB80A  |;
                       LDA.W $0778                          ;9B8481|AD7807  |;
                       EOR.W $0A9C                          ;9B8484|4D9C0A  |;
                       STA.W $0AB0                          ;9B8487|8DB00A  |;
                       AND.W $0778                          ;9B848A|2D7807  |;
                       STA.W $0ABA                          ;9B848D|8DBA0A  |;
                       LDA.W $077A                          ;9B8490|AD7A07  |;
                       EOR.W $0A9E                          ;9B8493|4D9E0A  |;
                       STA.W $0AB2                          ;9B8496|8DB20A  |;
                       AND.W $077A                          ;9B8499|2D7A07  |;
                       STA.W $0ABC                          ;9B849C|8DBC0A  |;
                       LDA.W $077C                          ;9B849F|AD7C07  |;
                       EOR.W $0AA0                          ;9B84A2|4DA00A  |;
                       STA.W $0AB4                          ;9B84A5|8DB40A  |;
                       AND.W $077C                          ;9B84A8|2D7C07  |;
                       STA.W $0ABE                          ;9B84AB|8DBE0A  |;
                       LDA.W $077E                          ;9B84AE|AD7E07  |;
                       EOR.W $0AA2                          ;9B84B1|4DA20A  |;
                       STA.W $0AB6                          ;9B84B4|8DB60A  |;
                       AND.W $077E                          ;9B84B7|2D7E07  |;
                       STA.W $0AC0                          ;9B84BA|8DC00A  |;
                       LDA.W $0776                          ;9B84BD|AD7607  |;
                       STA.W $0A9A                          ;9B84C0|8D9A0A  |;
                       LDA.W $0778                          ;9B84C3|AD7807  |;
                       STA.W $0A9C                          ;9B84C6|8D9C0A  |;
                       LDA.W $077A                          ;9B84C9|AD7A07  |;
                       STA.W $0A9E                          ;9B84CC|8D9E0A  |;
                       LDA.W $077C                          ;9B84CF|AD7C07  |;
                       STA.W $0AA0                          ;9B84D2|8DA00A  |;
                       LDA.W $077E                          ;9B84D5|AD7E07  |;
                       STA.W $0AA2                          ;9B84D8|8DA20A  |;
                       RTS                                  ;9B84DB|60      |;
 
          CODE_9B84DC:
                       PHX                                  ;9B84DC|DA      |;
                       ASL A                                ;9B84DD|0A      |;
                       TAX                                  ;9B84DE|AA      |;
                       LDA.W $0776,X                        ;9B84DF|BD7607  |;
                       STA.B $B1                            ;9B84E2|85B1    |;
                       LDA.W $0AAE,X                        ;9B84E4|BDAE0A  |;
                       STA.B $AD                            ;9B84E7|85AD    |;
                       LDA.W $0AB8,X                        ;9B84E9|BDB80A  |;
                       STA.B $A9                            ;9B84EC|85A9    |;
                       LDA.W $0AA4,X                        ;9B84EE|BDA40A  |;
                       STA.B $A5                            ;9B84F1|85A5    |;
                       PLX                                  ;9B84F3|FA      |;
                       RTL                                  ;9B84F4|6B      |;
 
          CODE_9B84F5:
                       LDA.W $0776                          ;9B84F5|AD7607  |;
                       STA.B $B1                            ;9B84F8|85B1    |;
                       LDA.W $0AAE                          ;9B84FA|ADAE0A  |;
                       STA.B $AD                            ;9B84FD|85AD    |;
                       LDA.W $0AB8                          ;9B84FF|ADB80A  |;
                       STA.B $A9                            ;9B8502|85A9    |;
                       LDA.W $0AA4                          ;9B8504|ADA40A  |;
                       STA.B $A5                            ;9B8507|85A5    |;
                       RTL                                  ;9B8509|6B      |;
                       db $AD,$78,$07,$85,$B1,$AD,$B0,$0A   ;9B850A|        |;
                       db $85,$AD,$AD,$BA,$0A,$85,$A9,$AD   ;9B8512|        |;
                       db $A6,$0A,$85,$A5,$6B               ;9B851A|        |;
 
          CODE_9B851F:
                       LDA.W $0AC6                          ;9B851F|ADC60A  |;
                       LSR A                                ;9B8522|4A      |;
                       JMP.W CODE_9B84DC                    ;9B8523|4CDC84  |;
 
          CODE_9B8526:
                       LDA.W $0AC2                          ;9B8526|ADC20A  |;
                       STA.B $A9                            ;9B8529|85A9    |;
                       RTL                                  ;9B852B|6B      |;
 
          CODE_9B852C:
                       LDA.B $B1                            ;9B852C|A5B1    |;
                       BEQ CODE_9B8543                      ;9B852E|F013    |;
                       LDA.B $AD                            ;9B8530|A5AD    |;
                       BNE CODE_9B8544                      ;9B8532|D010    |;
                       DEC.W $0AC4                          ;9B8534|CEC40A  |;
                       BPL CODE_9B8543                      ;9B8537|100A    |;
                       LDA.W #$0006                         ;9B8539|A90600  |;
                       STA.W $0AC4                          ;9B853C|8DC40A  |;
                       LDA.B $B1                            ;9B853F|A5B1    |;
                       STA.B $A9                            ;9B8541|85A9    |;
 
          CODE_9B8543:
                       RTL                                  ;9B8543|6B      |;
 
          CODE_9B8544:
                       LDA.W #$0014                         ;9B8544|A91400  |;
                       STA.W $0AC4                          ;9B8547|8DC40A  |;
                       RTL                                  ;9B854A|6B      |;
 
          CODE_9B854B:
                       LDA.W #$000E                         ;9B854B|A90E00  |;
                       STA.B $CA                            ;9B854E|85CA    |;
                       STA.B $CA                            ;9B8550|85CA    |;
 
          CODE_9B8552:
                       REP #$30                             ;9B8552|C230    |;
                       LDY.B $CA                            ;9B8554|A4CA    |;
                       LDA.B [$89],Y                        ;9B8556|B789    |;
                       STA.B $C5                            ;9B8558|85C5    |;
                       TYA                                  ;9B855A|98      |;
                       CLC                                  ;9B855B|18      |;
                       ADC.W #$0010                         ;9B855C|691000  |;
                       TAY                                  ;9B855F|A8      |;
                       LDA.B [$89],Y                        ;9B8560|B789    |;
                       STA.B $C7                            ;9B8562|85C7    |;
                       SEP #$30                             ;9B8564|E230    |;
                       LDX.B $CA                            ;9B8566|A6CA    |;
                       LDA.B #$07                           ;9B8568|A907    |;
                       STA.B $C9                            ;9B856A|85C9    |;
 
          CODE_9B856C:
                       LDY.B #$00                           ;9B856C|A000    |;
                       ASL.B $C8                            ;9B856E|06C8    |;
                       BCC CODE_9B8574                      ;9B8570|9002    |;
                       db $A0,$08                           ;9B8572|        |;
 
          CODE_9B8574:
                       ASL.B $C7                            ;9B8574|06C7    |;
                       BCC CODE_9B857C                      ;9B8576|9004    |;
                       INY                                  ;9B8578|C8      |;
                       INY                                  ;9B8579|C8      |;
                       INY                                  ;9B857A|C8      |;
                       INY                                  ;9B857B|C8      |;
 
          CODE_9B857C:
                       ASL.B $C6                            ;9B857C|06C6    |;
                       BCC CODE_9B8582                      ;9B857E|9002    |;
                       INY                                  ;9B8580|C8      |;
                       INY                                  ;9B8581|C8      |;
 
          CODE_9B8582:
                       ASL.B $C5                            ;9B8582|06C5    |;
                       BCC CODE_9B8587                      ;9B8584|9001    |;
                       INY                                  ;9B8586|C8      |;
 
          CODE_9B8587:
                       LDA.B [$8D],Y                        ;9B8587|B78D    |;
                       LSR A                                ;9B8589|4A      |;
                       ROL.W $0A0A,X                        ;9B858A|3E0A0A  |;
                       LSR A                                ;9B858D|4A      |;
                       ROL.W $0A0B,X                        ;9B858E|3E0B0A  |;
                       LSR A                                ;9B8591|4A      |;
                       ROL.W $0A1A,X                        ;9B8592|3E1A0A  |;
                       LSR A                                ;9B8595|4A      |;
                       ROL.W $0A1B,X                        ;9B8596|3E1B0A  |;
                       DEC.B $C9                            ;9B8599|C6C9    |;
                       BPL CODE_9B856C                      ;9B859B|10CF    |;
                       DEC.B $CA                            ;9B859D|C6CA    |;
                       DEC.B $CA                            ;9B859F|C6CA    |;
                       BPL CODE_9B8552                      ;9B85A1|10AF    |;
                       REP #$30                             ;9B85A3|C230    |;
                       LDX.W #$0000                         ;9B85A5|A20000  |;
 
          CODE_9B85A8:
                       LDA.W $0A0A,X                        ;9B85A8|BD0A0A  |;
                       STA.W $2118                          ;9B85AB|8D1821  |;
                       INX                                  ;9B85AE|E8      |;
                       INX                                  ;9B85AF|E8      |;
                       CPX.W #$0020                         ;9B85B0|E02000  |;
                       BNE CODE_9B85A8                      ;9B85B3|D0F3    |;
                       LDA.B $89                            ;9B85B5|A589    |;
                       CLC                                  ;9B85B7|18      |;
                       ADC.W #$0020                         ;9B85B8|692000  |;
                       STA.B $89                            ;9B85BB|8589    |;
                       DEC.B $A5                            ;9B85BD|C6A5    |;
                       BNE CODE_9B854B                      ;9B85BF|D08A    |;
                       RTL                                  ;9B85C1|6B      |;
 
          CODE_9B85C2:
                       LDX.B $00                            ;9B85C2|A600    |;
                       PHB                                  ;9B85C4|8B      |;
                       SEP #$20                             ;9B85C5|E220    |;
                       LDA.B $0E                            ;9B85C7|A50E    |;
                       PHA                                  ;9B85C9|48      |;
                       REP #$20                             ;9B85CA|C220    |;
                       PLB                                  ;9B85CC|AB      |;
                       STZ.B $04                            ;9B85CD|6404    |;
                       LDA.W #$FFFE                         ;9B85CF|A9FEFF  |;
                       STA.B $06                            ;9B85D2|8506    |;
                       LDA.B $00                            ;9B85D4|A500    |;
                       LSR A                                ;9B85D6|4A      |;
                       LSR A                                ;9B85D7|4A      |;
                       STA.B $00                            ;9B85D8|8500    |;
                       BRA CODE_9B85E8                      ;9B85DA|800C    |;
 
          CODE_9B85DC:
                       TXA                                  ;9B85DC|8A      |;
                       LSR A                                ;9B85DD|4A      |;
                       LSR A                                ;9B85DE|4A      |;
                       LSR A                                ;9B85DF|4A      |;
                       LSR A                                ;9B85E0|4A      |;
                       BEQ CODE_9B8637                      ;9B85E1|F054    |;
                       TAX                                  ;9B85E3|AA      |;
                       INY                                  ;9B85E4|C8      |;
                       INY                                  ;9B85E5|C8      |;
                       BRA CODE_9B85F4                      ;9B85E6|800C    |;
 
          CODE_9B85E8:
                       LDX.W #$0080                         ;9B85E8|A28000  |;
                       STZ.B $14                            ;9B85EB|6414    |;
                       STZ.B $16                            ;9B85ED|6416    |;
                       LDA.B $04                            ;9B85EF|A504    |;
                       ASL A                                ;9B85F1|0A      |;
                       ASL A                                ;9B85F2|0A      |;
                       TAY                                  ;9B85F3|A8      |;
 
          CODE_9B85F4:
                       LDA.B ($0C),Y                        ;9B85F4|B10C    |;
                       BEQ CODE_9B85DC                      ;9B85F6|F0E4    |;
                       XBA                                  ;9B85F8|EB      |;
                       TAY                                  ;9B85F9|A8      |;
 
          CODE_9B85FA:
                       TYA                                  ;9B85FA|98      |;
                       ASL A                                ;9B85FB|0A      |;
                       BCC CODE_9B8603                      ;9B85FC|9005    |;
                       TAY                                  ;9B85FE|A8      |;
                       TXA                                  ;9B85FF|8A      |;
                       TSB.B $15                            ;9B8600|0415    |;
                       TYA                                  ;9B8602|98      |;
 
          CODE_9B8603:
                       ASL A                                ;9B8603|0A      |;
                       BCC CODE_9B860B                      ;9B8604|9005    |;
                       TAY                                  ;9B8606|A8      |;
                       TXA                                  ;9B8607|8A      |;
                       TSB.B $14                            ;9B8608|0414    |;
                       TYA                                  ;9B860A|98      |;
 
          CODE_9B860B:
                       ASL A                                ;9B860B|0A      |;
                       BCC CODE_9B8613                      ;9B860C|9005    |;
                       TAY                                  ;9B860E|A8      |;
                       TXA                                  ;9B860F|8A      |;
                       TSB.B $17                            ;9B8610|0417    |;
                       TYA                                  ;9B8612|98      |;
 
          CODE_9B8613:
                       ASL A                                ;9B8613|0A      |;
                       BCC CODE_9B861B                      ;9B8614|9005    |;
                       TAY                                  ;9B8616|A8      |;
                       TXA                                  ;9B8617|8A      |;
                       TSB.B $16                            ;9B8618|0416    |;
                       TYA                                  ;9B861A|98      |;
 
          CODE_9B861B:
                       TAY                                  ;9B861B|A8      |;
                       TXA                                  ;9B861C|8A      |;
                       LSR A                                ;9B861D|4A      |;
                       TAX                                  ;9B861E|AA      |;
                       CPX.W #$0010                         ;9B861F|E01000  |;
                       BCS CODE_9B85FA                      ;9B8622|B0D6    |;
                       CPX.W #$0000                         ;9B8624|E00000  |;
                       BEQ CODE_9B8637                      ;9B8627|F00E    |;
                       CPX.W #$0008                         ;9B8629|E00800  |;
                       BCC CODE_9B85FA                      ;9B862C|90CC    |;
                       LDA.B $04                            ;9B862E|A504    |;
                       ASL A                                ;9B8630|0A      |;
                       ASL A                                ;9B8631|0A      |;
                       TAY                                  ;9B8632|A8      |;
                       INY                                  ;9B8633|C8      |;
                       INY                                  ;9B8634|C8      |;
                       BRA CODE_9B85F4                      ;9B8635|80BD    |;
 
          CODE_9B8637:
                       LDA.B $06                            ;9B8637|A506    |;
                       INC A                                ;9B8639|1A      |;
                       INC A                                ;9B863A|1A      |;
                       TAY                                  ;9B863B|A8      |;
                       AND.W #$0010                         ;9B863C|291000  |;
                       BEQ CODE_9B8647                      ;9B863F|F006    |;
                       TYA                                  ;9B8641|98      |;
                       CLC                                  ;9B8642|18      |;
                       ADC.W #$0010                         ;9B8643|691000  |;
                       TAY                                  ;9B8646|A8      |;
 
          CODE_9B8647:
                       STY.B $06                            ;9B8647|8406    |;
                       LDA.B $16                            ;9B8649|A516    |;
                       STA.B ($10),Y                        ;9B864B|9110    |;
                       TYA                                  ;9B864D|98      |;
                       CLC                                  ;9B864E|18      |;
                       ADC.W #$0010                         ;9B864F|691000  |;
                       TAY                                  ;9B8652|A8      |;
                       LDA.B $14                            ;9B8653|A514    |;
                       STA.B ($10),Y                        ;9B8655|9110    |;
                       INC.B $04                            ;9B8657|E604    |;
                       DEC.B $00                            ;9B8659|C600    |;
                       BPL CODE_9B85E8                      ;9B865B|108B    |;
                       PLB                                  ;9B865D|AB      |;
                       RTL                                  ;9B865E|6B      |;
 
          CODE_9B865F:
                       PHX                                  ;9B865F|DA      |;
                       PHA                                  ;9B8660|48      |;
                       LDX.W $0AC6                          ;9B8661|AEC60A  |;
 
          CODE_9B8664:
                       LDA.W $0776,X                        ;9B8664|BD7607  |;
                       BNE CODE_9B8664                      ;9B8667|D0FB    |;
                       PLA                                  ;9B8669|68      |;
                       PLX                                  ;9B866A|FA      |;
                       RTL                                  ;9B866B|6B      |;
                       db $DA,$48,$A2,$08,$00,$BD,$84,$1C   ;9B866C|        |;
                       db $F0,$05,$BD,$76,$07,$D0,$F3,$CA   ;9B8674|        |;
                       db $CA,$10,$F2,$68,$FA,$6B,$DA,$48   ;9B867C|        |;
                       db $A2,$08,$00,$BD,$76,$07,$89,$0F   ;9B8684|        |;
                       db $00,$D0,$05,$29,$F0,$FF,$D0,$F0   ;9B868C|        |;
                       db $CA,$CA,$10,$EF,$68,$FA,$6B       ;9B8694|        |;
 
          CODE_9B869B:
                       JSL.L CODE_9DE0E9                    ;9B869B|22E9E09D|;
                       LDY.B $91                            ;9B869F|A491    |;
                       LDA.W $1796,Y                        ;9B86A1|B99617  |;
                       INC A                                ;9B86A4|1A      |;
                       STA.B $A5                            ;9B86A5|85A5    |;
                       STA.W $0D43                          ;9B86A7|8D430D  |;
                       STZ.W $0D47                          ;9B86AA|9C470D  |;
                       LDX.B $91                            ;9B86AD|A691    |;
                       LDA.W $1C98,X                        ;9B86AF|BD981C  |;
                       STA.L $7E3454                        ;9B86B2|8F54347E|;
                       LDA.W #$FFFF                         ;9B86B6|A9FFFF  |;
                       STA.L $7E3452                        ;9B86B9|8F52347E|;
                       JSL.L CODE_9DD9AD                    ;9B86BD|22ADD99D|;
                       JSL.L CODE_9B890F                    ;9B86C1|220F899B|;
                       LDA.W #$0005                         ;9B86C5|A90500  |;
                       STA.W $1D9F                          ;9B86C8|8D9F1D  |;
                       DEC A                                ;9B86CB|3A      |;
                       STA.W $1D8B                          ;9B86CC|8D8B1D  |;
                       JSL.L CODE_9B8810                    ;9B86CF|2210889B|;
                       LDA.W #$0005                         ;9B86D3|A90500  |;
                       LDX.W #$0068                         ;9B86D6|A26800  |;
                       JSL.L CODE_9DCCF5                    ;9B86D9|22F5CC9D|;
                       JSL.L CODE_9DDFF6                    ;9B86DD|22F6DF9D|;
                       JSL.L CODE_8086BD                    ;9B86E1|22BD8680|;
 
          CODE_9B86E5:
                       JSL.L CODE_9DD923                    ;9B86E5|2223D99D|;
                       JSL.L CODE_808583                    ;9B86E9|22838580|;
                       JSL.L CODE_9B8017                    ;9B86ED|2217809B|;
                       JSL.L CODE_9B851F                    ;9B86F1|221F859B|;
                       JSL.L CODE_9B852C                    ;9B86F5|222C859B|;
                       LDA.B $A9                            ;9B86F9|A5A9    |;
                       BIT.W #$1000                         ;9B86FB|890010  |;
                       BEQ CODE_9B8711                      ;9B86FE|F011    |;
                       JSR.W CODE_9B8A15                    ;9B8700|20158A  |;
                       CMP.W #$0000                         ;9B8703|C90000  |;
                       BEQ CODE_9B870B                      ;9B8706|F003    |;
                       JMP.W CODE_9B8860                    ;9B8708|4C6088  |;
 
          CODE_9B870B:
                       JSL.L CODE_9B8810                    ;9B870B|2210889B|;
                       BRA CODE_9B86E5                      ;9B870F|80D4    |;
 
          CODE_9B8711:
                       BIT.W #$8080                         ;9B8711|898080  |;
                       BNE CODE_9B8719                      ;9B8714|D003    |;
                       JMP.W CODE_9B8792                    ;9B8716|4C9287  |;
 
          CODE_9B8719:
                       JSL.L CODE_9B8D86                    ;9B8719|22868D9B|;
                       CMP.W #$0000                         ;9B871D|C90000  |;
                       BMI CODE_9B8725                      ;9B8720|3003    |;
                       JSR.W CODE_9B8C7A                    ;9B8722|207A8C  |;
 
          CODE_9B8725:
                       LDA.W #$0001                         ;9B8725|A90100  |;
                       STA.L $7E3468                        ;9B8728|8F68347E|;
                       JSL.L CODE_9B8810                    ;9B872C|2210889B|;
                       LDA.B $8F                            ;9B8730|A58F    |;
                       PHA                                  ;9B8732|48      |;
                       LDA.B $8D                            ;9B8733|A58D    |;
                       PHA                                  ;9B8735|48      |;
                       LDA.W #$009C                         ;9B8736|A99C00  |;
                       STA.B $8F                            ;9B8739|858F    |;
                       LDA.W #$EFDB                         ;9B873B|A9DBEF  |;
                       STA.B $8D                            ;9B873E|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8740|22BEC79E|;
                       PLA                                  ;9B8744|68      |;
                       STA.B $8D                            ;9B8745|858D    |;
                       PLA                                  ;9B8747|68      |;
                       STA.B $8F                            ;9B8748|858F    |;
                       LDA.W $0D43                          ;9B874A|AD430D  |;
                       STA.B $A5                            ;9B874D|85A5    |;
                       LDA.W #$009B                         ;9B874F|A99B00  |;
                       STA.B $8F                            ;9B8752|858F    |;
                       LDA.W #$8861                         ;9B8754|A96188  |;
                       STA.B $8D                            ;9B8757|858D    |;
                       LDA.L $7E34C6                        ;9B8759|AFC6347E|;
                       BNE CODE_9B8769                      ;9B875D|D00A    |;
                       LDA.W #$009B                         ;9B875F|A99B00  |;
                       STA.B $8F                            ;9B8762|858F    |;
                       LDA.W #$88E9                         ;9B8764|A9E988  |;
                       STA.B $8D                            ;9B8767|858D    |;
 
          CODE_9B8769:
                       JSL.L CODE_9ED323                    ;9B8769|2223D39E|;
                       JSL.L CODE_9EC7BE                    ;9B876D|22BEC79E|;
                       JSL.L CODE_9DD923                    ;9B8771|2223D99D|;
                       LDA.B $8F                            ;9B8775|A58F    |;
                       PHA                                  ;9B8777|48      |;
                       LDA.B $8D                            ;9B8778|A58D    |;
                       PHA                                  ;9B877A|48      |;
                       LDA.W #$009C                         ;9B877B|A99C00  |;
                       STA.B $8F                            ;9B877E|858F    |;
                       LDA.W #$EFE0                         ;9B8780|A9E0EF  |;
                       STA.B $8D                            ;9B8783|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8785|22BEC79E|;
                       PLA                                  ;9B8789|68      |;
                       STA.B $8D                            ;9B878A|858D    |;
                       PLA                                  ;9B878C|68      |;
                       STA.B $8F                            ;9B878D|858F    |;
                       JMP.W CODE_9B880D                    ;9B878F|4C0D88  |;
 
          CODE_9B8792:
                       STZ.B $A5                            ;9B8792|64A5    |;
                       INC.B $A5                            ;9B8794|E6A5    |;
                       BIT.W #$0100                         ;9B8796|890001  |;
                       BNE UNREACH_9B87C9                   ;9B8799|D02E    |;
                       DEC.B $A5                            ;9B879B|C6A5    |;
                       DEC.B $A5                            ;9B879D|C6A5    |;
                       BIT.W #$0200                         ;9B879F|890002  |;
                       BNE UNREACH_9B87C9                   ;9B87A2|D025    |;
                       BIT.W #$0400                         ;9B87A4|890004  |;
                       BNE CODE_9B87B2                      ;9B87A7|D009    |;
                       INC.B $A5                            ;9B87A9|E6A5    |;
                       INC.B $A5                            ;9B87AB|E6A5    |;
                       BIT.W #$0800                         ;9B87AD|890008  |;
                       BEQ CODE_9B880D                      ;9B87B0|F05B    |;
 
          CODE_9B87B2:
                       LDA.B $A5                            ;9B87B2|A5A5    |;
                       CLC                                  ;9B87B4|18      |;
                       ADC.W $1D8B                          ;9B87B5|6D8B1D  |;
                       BMI CODE_9B880D                      ;9B87B8|3053    |;
                       CMP.W $1D9F                          ;9B87BA|CD9F1D  |;
                       BPL CODE_9B880D                      ;9B87BD|104E    |;
                       STA.W $1D8B                          ;9B87BF|8D8B1D  |;
                       JSL.L CODE_9B8810                    ;9B87C2|2210889B|;
                       JMP.W CODE_9B880D                    ;9B87C6|4C0D88  |;
 
       UNREACH_9B87C9:
                       db $AF,$C6,$34,$7E,$F0,$3E,$A5,$A5   ;9B87C9|        |;
                       db $18,$6D,$43,$0D,$3A,$30,$35,$C9   ;9B87D1|        |;
                       db $07,$00,$B0,$30,$1A,$8D,$43,$0D   ;9B87D9|        |;
                       db $C9,$06,$00,$30,$15,$AD,$9F,$1D   ;9B87E1|        |;
                       db $C9,$04,$00,$F0,$1B,$CE,$9F,$1D   ;9B87E9|        |;
                       db $AD,$8B,$1D,$F0,$13,$CE,$8B,$1D   ;9B87F1|        |;
                       db $80,$0E,$AD,$9F,$1D,$C9,$05,$00   ;9B87F9|        |;
                       db $F0,$06,$EE,$9F,$1D,$EE,$8B,$1D   ;9B8801|        |;
                       db $22,$10,$88,$9B                   ;9B8809|        |;
 
          CODE_9B880D:
                       JMP.W CODE_9B86E5                    ;9B880D|4CE586  |;
 
          CODE_9B8810:
                       LDA.B $8F                            ;9B8810|A58F    |;
                       PHA                                  ;9B8812|48      |;
                       LDA.B $8D                            ;9B8813|A58D    |;
                       PHA                                  ;9B8815|48      |;
                       LDA.W #$009C                         ;9B8816|A99C00  |;
                       STA.B $8F                            ;9B8819|858F    |;
                       LDA.W #$EFE5                         ;9B881B|A9E5EF  |;
                       STA.B $8D                            ;9B881E|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8820|22BEC79E|;
                       PLA                                  ;9B8824|68      |;
                       STA.B $8D                            ;9B8825|858D    |;
                       PLA                                  ;9B8827|68      |;
                       STA.B $8F                            ;9B8828|858F    |;
                       LDA.W $0D43                          ;9B882A|AD430D  |;
                       STA.B $A5                            ;9B882D|85A5    |;
                       LDA.W #$009B                         ;9B882F|A99B00  |;
                       STA.B $8F                            ;9B8832|858F    |;
                       LDA.W #$8861                         ;9B8834|A96188  |;
                       STA.B $8D                            ;9B8837|858D    |;
                       LDA.L $7E34C6                        ;9B8839|AFC6347E|;
                       BNE CODE_9B8849                      ;9B883D|D00A    |;
                       LDA.W #$009B                         ;9B883F|A99B00  |;
                       STA.B $8F                            ;9B8842|858F    |;
                       LDA.W #$88E9                         ;9B8844|A9E988  |;
                       STA.B $8D                            ;9B8847|858D    |;
 
          CODE_9B8849:
                       JSL.L CODE_9ED323                    ;9B8849|2223D39E|;
                       JSL.L CODE_9EC7BE                    ;9B884D|22BEC79E|;
                       LDA.B [$8D]                          ;9B8851|A78D    |;
                       STA.B $B7                            ;9B8853|85B7    |;
                       LDY.W #$0002                         ;9B8855|A00200  |;
                       LDA.B [$8D],Y                        ;9B8858|B78D    |;
                       STA.B $B5                            ;9B885A|85B5    |;
                       JSR.W CODE_9B8B60                    ;9B885C|20608B  |;
                       RTL                                  ;9B885F|6B      |;
 
          CODE_9B8860:
                       RTL                                  ;9B8860|6B      |;
                       db $11,$00,$20,$20,$20,$20,$47,$6F   ;9B8861|        |;
                       db $61,$6C,$69,$65,$73,$20,$20,$20   ;9B8869|        |;
                       db $5D,$11,$00,$20,$20,$20,$53,$63   ;9B8871|        |;
                       db $6F,$72,$69,$6E,$67,$20,$31,$20   ;9B8879|        |;
                       db $20,$5D,$11,$00,$5B,$20,$20,$53   ;9B8881|        |;
                       db $63,$6F,$72,$69,$6E,$67,$20,$32   ;9B8889|        |;
                       db $20,$20,$5D,$11,$00,$5B,$20,$20   ;9B8891|        |;
                       db $43,$68,$65,$63,$6B,$69,$6E,$67   ;9B8899|        |;
                       db $20,$20,$20,$5D,$11,$00,$5B,$20   ;9B88A1|        |;
                       db $50,$77,$72,$2E,$20,$50,$6C,$61   ;9B88A9|        |;
                       db $79,$20,$31,$20,$5D,$11,$00,$5B   ;9B88B1|        |;
                       db $20,$50,$77,$72,$2E,$20,$50,$6C   ;9B88B9|        |;
                       db $61,$79,$20,$32,$20,$5D,$11,$00   ;9B88C1|        |;
                       db $5B,$20,$50,$65,$6E,$2E,$20,$4B   ;9B88C9|        |;
                       db $69,$6C,$6C,$20,$31,$20,$5D,$11   ;9B88D1|        |;
                       db $00,$5B,$20,$50,$65,$6E,$2E,$20   ;9B88D9|        |;
                       db $4B,$69,$6C,$6C,$20,$32,$20,$20   ;9B88E1|        |;
                       db $03,$00                           ;9B88E9|        |;
                       db $20                               ;9B88EB|        |;
                       db $11,$00,$20,$20,$20,$42,$65,$73   ;9B88EC|        |;
                       db $74,$20,$4C,$69,$6E,$65,$20,$20   ;9B88F4|        |;
                       db $20,$03,$00,$20,$03               ;9B88FC|        |;
                       db $00,$20,$03,$00,$20,$03,$00,$20   ;9B8901|        |;
                       db $03,$00,$20,$03,$00,$20           ;9B8909|        |;
 
          CODE_9B890F:
                       LDA.B $8F                            ;9B890F|A58F    |;
                       PHA                                  ;9B8911|48      |;
                       LDA.B $8D                            ;9B8912|A58D    |;
                       PHA                                  ;9B8914|48      |;
                       LDA.W #$009C                         ;9B8915|A99C00  |;
                       STA.B $8F                            ;9B8918|858F    |;
                       LDA.W #$EFEA                         ;9B891A|A9EAEF  |;
                       STA.B $8D                            ;9B891D|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B891F|22BEC79E|;
                       PLA                                  ;9B8923|68      |;
                       STA.B $8D                            ;9B8924|858D    |;
                       PLA                                  ;9B8926|68      |;
                       STA.B $8F                            ;9B8927|858F    |;
                       LDA.W #$0020                         ;9B8929|A92000  |;
                       STA.B $A5                            ;9B892C|85A5    |;
                       LDA.W #$000D                         ;9B892E|A90D00  |;
                       STA.B $A9                            ;9B8931|85A9    |;
                       LDA.L $7E35D0                        ;9B8933|AFD0357E|;
                       STA.B $AD                            ;9B8937|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9B8939|229CBD9F|;
                       JSL.L CODE_9B8970                    ;9B893D|2270899B|;
                       LDA.B $8F                            ;9B8941|A58F    |;
                       PHA                                  ;9B8943|48      |;
                       LDA.B $8D                            ;9B8944|A58D    |;
                       PHA                                  ;9B8946|48      |;
                       LDA.W #$009C                         ;9B8947|A99C00  |;
                       STA.B $8F                            ;9B894A|858F    |;
                       LDA.W #$EFEF                         ;9B894C|A9EFEF  |;
                       STA.B $8D                            ;9B894F|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8951|22BEC79E|;
                       PLA                                  ;9B8955|68      |;
                       STA.B $8D                            ;9B8956|858D    |;
                       PLA                                  ;9B8958|68      |;
                       STA.B $8F                            ;9B8959|858F    |;
                       LDA.W #$0800                         ;9B895B|A90008  |;
                       STA.W $0D0D                          ;9B895E|8D0D0D  |;
                       LDA.W #$0011                         ;9B8961|A91100  |;
                       STA.B $A5                            ;9B8964|85A5    |;
                       LDA.W #$0003                         ;9B8966|A90300  |;
                       STA.B $A9                            ;9B8969|85A9    |;
                       JSL.L CODE_9D80DD                    ;9B896B|22DD809D|;
                       RTL                                  ;9B896F|6B      |;
 
          CODE_9B8970:
                       LDA.L $7E3468                        ;9B8970|AF68347E|;
                       BEQ CODE_9B8979                      ;9B8974|F003    |;
                       JSR.W CODE_9B91A2                    ;9B8976|20A291  |;
 
          CODE_9B8979:
                       JSL.L CODE_80AF7B                    ;9B8979|227BAF80|;
                       LDX.W #$0058                         ;9B897D|A25800  |;
                       LDY.W #$0018                         ;9B8980|A01800  |;
                       LDA.W #$009C                         ;9B8983|A99C00  |;
                       STA.B $8F                            ;9B8986|858F    |;
                       LDA.W #$EFF4                         ;9B8988|A9F4EF  |;
                       STA.B $8D                            ;9B898B|858D    |;
                       JSL.L CODE_9C936C                    ;9B898D|226C939C|;
                       LDA.B $8F                            ;9B8991|A58F    |;
                       PHA                                  ;9B8993|48      |;
                       LDA.B $8D                            ;9B8994|A58D    |;
                       PHA                                  ;9B8996|48      |;
                       LDA.W #$009C                         ;9B8997|A99C00  |;
                       STA.B $8F                            ;9B899A|858F    |;
                       LDA.W #$F000                         ;9B899C|A900F0  |;
                       STA.B $8D                            ;9B899F|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B89A1|22BEC79E|;
                       PLA                                  ;9B89A5|68      |;
                       STA.B $8D                            ;9B89A6|858D    |;
                       PLA                                  ;9B89A8|68      |;
                       STA.B $8F                            ;9B89A9|858F    |;
                       LDA.W $1C98                          ;9B89AB|AD981C  |;
                       STA.B $A9                            ;9B89AE|85A9    |;
                       LDA.B $91                            ;9B89B0|A591    |;
                       BEQ CODE_9B89BC                      ;9B89B2|F008    |;
                       db $AD,$9A,$1C,$85,$A9,$A9,$30,$00   ;9B89B4|        |;
 
          CODE_9B89BC:
                       STA.B $A5                            ;9B89BC|85A5    |;
                       JSL.L CODE_9FBE08                    ;9B89BE|2208BE9F|;
                       JSL.L CODE_9DDDB3                    ;9B89C2|22B3DD9D|;
                       JSL.L CODE_80AFDE                    ;9B89C6|22DEAF80|;
                       LDA.L $7E3468                        ;9B89CA|AF68347E|;
                       BEQ CODE_9B89E1                      ;9B89CE|F011    |;
                       JSL.L CODE_808583                    ;9B89D0|22838580|;
                       LDA.W #$0068                         ;9B89D4|A96800  |;
                       STA.W $1DEF                          ;9B89D7|8DEF1D  |;
                       LDA.W #$0000                         ;9B89DA|A90000  |;
                       STA.L $7E3468                        ;9B89DD|8F68347E|;
 
          CODE_9B89E1:
                       JSL.L CODE_9DE0D4                    ;9B89E1|22D4E09D|;
                       RTL                                  ;9B89E5|6B      |;
 
          CODE_9B89E6:
                       LDA.B $8F                            ;9B89E6|A58F    |;
                       PHA                                  ;9B89E8|48      |;
                       LDA.B $8D                            ;9B89E9|A58D    |;
                       PHA                                  ;9B89EB|48      |;
                       LDA.W #$009C                         ;9B89EC|A99C00  |;
                       STA.B $8F                            ;9B89EF|858F    |;
                       LDA.W #$F005                         ;9B89F1|A905F0  |;
                       STA.B $8D                            ;9B89F4|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B89F6|22BEC79E|;
                       PLA                                  ;9B89FA|68      |;
                       STA.B $8D                            ;9B89FB|858D    |;
                       PLA                                  ;9B89FD|68      |;
                       STA.B $8F                            ;9B89FE|858F    |;
                       LDA.W #$0020                         ;9B8A00|A92000  |;
                       STA.B $A5                            ;9B8A03|85A5    |;
                       LDA.W #$0011                         ;9B8A05|A91100  |;
                       STA.B $A9                            ;9B8A08|85A9    |;
                       LDA.L $7E35D0                        ;9B8A0A|AFD0357E|;
                       STA.B $AD                            ;9B8A0E|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9B8A10|229CBD9F|;
                       RTS                                  ;9B8A14|60      |;
 
          CODE_9B8A15:
                       JSR.W CODE_9B89E6                    ;9B8A15|20E689  |;
                       LDA.B $8F                            ;9B8A18|A58F    |;
                       PHA                                  ;9B8A1A|48      |;
                       LDA.B $8D                            ;9B8A1B|A58D    |;
                       PHA                                  ;9B8A1D|48      |;
                       LDA.W #$009C                         ;9B8A1E|A99C00  |;
                       STA.B $8F                            ;9B8A21|858F    |;
                       LDA.W #$F00A                         ;9B8A23|A90AF0  |;
                       STA.B $8D                            ;9B8A26|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8A28|22BEC79E|;
                       PLA                                  ;9B8A2C|68      |;
                       STA.B $8D                            ;9B8A2D|858D    |;
                       PLA                                  ;9B8A2F|68      |;
                       STA.B $8F                            ;9B8A30|858F    |;
                       LDA.B $8F                            ;9B8A32|A58F    |;
                       PHA                                  ;9B8A34|48      |;
                       LDA.B $8D                            ;9B8A35|A58D    |;
                       PHA                                  ;9B8A37|48      |;
                       LDA.W #$009C                         ;9B8A38|A99C00  |;
                       STA.B $8F                            ;9B8A3B|858F    |;
                       LDA.W #$F01D                         ;9B8A3D|A91DF0  |;
                       STA.B $8D                            ;9B8A40|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8A42|22BEC79E|;
                       PLA                                  ;9B8A46|68      |;
                       STA.B $8D                            ;9B8A47|858D    |;
                       PLA                                  ;9B8A49|68      |;
                       STA.B $8F                            ;9B8A4A|858F    |;
                       JSL.L CODE_9DD923                    ;9B8A4C|2223D99D|;
                       JSL.L CODE_9B865F                    ;9B8A50|225F869B|;
                       LDA.W #$0000                         ;9B8A54|A90000  |;
                       STA.W $1D97                          ;9B8A57|8D971D  |;
 
          CODE_9B8A5A:
                       LDA.W #$0000                         ;9B8A5A|A90000  |;
                       CMP.W $1D97                          ;9B8A5D|CD971D  |;
                       BNE CODE_9B8A7E                      ;9B8A60|D01C    |;
                       LDA.B $8F                            ;9B8A62|A58F    |;
                       PHA                                  ;9B8A64|48      |;
                       LDA.B $8D                            ;9B8A65|A58D    |;
                       PHA                                  ;9B8A67|48      |;
                       LDA.W #$009C                         ;9B8A68|A99C00  |;
                       STA.B $8F                            ;9B8A6B|858F    |;
                       LDA.W #$F037                         ;9B8A6D|A937F0  |;
                       STA.B $8D                            ;9B8A70|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8A72|22BEC79E|;
                       PLA                                  ;9B8A76|68      |;
                       STA.B $8D                            ;9B8A77|858D    |;
                       PLA                                  ;9B8A79|68      |;
                       STA.B $8F                            ;9B8A7A|858F    |;
                       BRA CODE_9B8A98                      ;9B8A7C|801A    |;
 
          CODE_9B8A7E:
                       LDA.B $8F                            ;9B8A7E|A58F    |;
                       PHA                                  ;9B8A80|48      |;
                       LDA.B $8D                            ;9B8A81|A58D    |;
                       PHA                                  ;9B8A83|48      |;
                       LDA.W #$009C                         ;9B8A84|A99C00  |;
                       STA.B $8F                            ;9B8A87|858F    |;
                       LDA.W #$F03C                         ;9B8A89|A93CF0  |;
                       STA.B $8D                            ;9B8A8C|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8A8E|22BEC79E|;
                       PLA                                  ;9B8A92|68      |;
                       STA.B $8D                            ;9B8A93|858D    |;
                       PLA                                  ;9B8A95|68      |;
                       STA.B $8F                            ;9B8A96|858F    |;
 
          CODE_9B8A98:
                       LDA.B $8F                            ;9B8A98|A58F    |;
                       PHA                                  ;9B8A9A|48      |;
                       LDA.B $8D                            ;9B8A9B|A58D    |;
                       PHA                                  ;9B8A9D|48      |;
                       LDA.W #$009C                         ;9B8A9E|A99C00  |;
                       STA.B $8F                            ;9B8AA1|858F    |;
                       LDA.W #$F041                         ;9B8AA3|A941F0  |;
                       STA.B $8D                            ;9B8AA6|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8AA8|22BEC79E|;
                       PLA                                  ;9B8AAC|68      |;
                       STA.B $8D                            ;9B8AAD|858D    |;
                       PLA                                  ;9B8AAF|68      |;
                       STA.B $8F                            ;9B8AB0|858F    |;
                       LDA.W #$0001                         ;9B8AB2|A90100  |;
                       CMP.W $1D97                          ;9B8AB5|CD971D  |;
                       BNE CODE_9B8AD6                      ;9B8AB8|D01C    |;
                       LDA.B $8F                            ;9B8ABA|A58F    |;
                       PHA                                  ;9B8ABC|48      |;
                       LDA.B $8D                            ;9B8ABD|A58D    |;
                       PHA                                  ;9B8ABF|48      |;
                       LDA.W #$009C                         ;9B8AC0|A99C00  |;
                       STA.B $8F                            ;9B8AC3|858F    |;
                       LDA.W #$F051                         ;9B8AC5|A951F0  |;
                       STA.B $8D                            ;9B8AC8|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8ACA|22BEC79E|;
                       PLA                                  ;9B8ACE|68      |;
                       STA.B $8D                            ;9B8ACF|858D    |;
                       PLA                                  ;9B8AD1|68      |;
                       STA.B $8F                            ;9B8AD2|858F    |;
                       BRA CODE_9B8AF0                      ;9B8AD4|801A    |;
 
          CODE_9B8AD6:
                       LDA.B $8F                            ;9B8AD6|A58F    |;
                       PHA                                  ;9B8AD8|48      |;
                       LDA.B $8D                            ;9B8AD9|A58D    |;
                       PHA                                  ;9B8ADB|48      |;
                       LDA.W #$009C                         ;9B8ADC|A99C00  |;
                       STA.B $8F                            ;9B8ADF|858F    |;
                       LDA.W #$F056                         ;9B8AE1|A956F0  |;
                       STA.B $8D                            ;9B8AE4|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8AE6|22BEC79E|;
                       PLA                                  ;9B8AEA|68      |;
                       STA.B $8D                            ;9B8AEB|858D    |;
                       PLA                                  ;9B8AED|68      |;
                       STA.B $8F                            ;9B8AEE|858F    |;
 
          CODE_9B8AF0:
                       LDA.B $8F                            ;9B8AF0|A58F    |;
                       PHA                                  ;9B8AF2|48      |;
                       LDA.B $8D                            ;9B8AF3|A58D    |;
                       PHA                                  ;9B8AF5|48      |;
                       LDA.W #$009C                         ;9B8AF6|A99C00  |;
                       STA.B $8F                            ;9B8AF9|858F    |;
                       LDA.W #$F05B                         ;9B8AFB|A95BF0  |;
                       STA.B $8D                            ;9B8AFE|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8B00|22BEC79E|;
                       PLA                                  ;9B8B04|68      |;
                       STA.B $8D                            ;9B8B05|858D    |;
                       PLA                                  ;9B8B07|68      |;
                       STA.B $8F                            ;9B8B08|858F    |;
                       JSL.L CODE_9DD923                    ;9B8B0A|2223D99D|;
                       JSL.L CODE_808583                    ;9B8B0E|22838580|;
                       JSL.L CODE_9B8017                    ;9B8B12|2217809B|;
                       JSL.L CODE_9B851F                    ;9B8B16|221F859B|;
                       JSL.L CODE_9B852C                    ;9B8B1A|222C859B|;
                       LDA.B $A9                            ;9B8B1E|A5A9    |;
                       BIT.W #$9080                         ;9B8B20|898090  |;
                       BNE CODE_9B8B42                      ;9B8B23|D01D    |;
                       BIT.W #$0400                         ;9B8B25|890004  |;
                       BNE CODE_9B8B3A                      ;9B8B28|D010    |;
                       BIT.W #$0800                         ;9B8B2A|890008  |;
                       BNE CODE_9B8B32                      ;9B8B2D|D003    |;
 
          CODE_9B8B2F:
                       JMP.W CODE_9B8A5A                    ;9B8B2F|4C5A8A  |;
 
          CODE_9B8B32:
                       LDA.W #$0000                         ;9B8B32|A90000  |;
                       STA.W $1D97                          ;9B8B35|8D971D  |;
                       BRA CODE_9B8B2F                      ;9B8B38|80F5    |;
 
          CODE_9B8B3A:
                       LDA.W #$0001                         ;9B8B3A|A90100  |;
                       STA.W $1D97                          ;9B8B3D|8D971D  |;
                       BRA CODE_9B8B2F                      ;9B8B40|80ED    |;
 
          CODE_9B8B42:
                       LDA.W $1D97                          ;9B8B42|AD971D  |;
                       CMP.W #$0000                         ;9B8B45|C90000  |;
                       BEQ CODE_9B8B4C                      ;9B8B48|F002    |;
                       BRA CODE_9B8B51                      ;9B8B4A|8005    |;
 
          CODE_9B8B4C:
                       LDA.W #$FFFF                         ;9B8B4C|A9FFFF  |;
                       BRA CODE_9B8B5F                      ;9B8B4F|800E    |;
 
          CODE_9B8B51:
                       JSL.L CODE_9B9334                    ;9B8B51|2234939B|;
                       JSR.W CODE_9B89E6                    ;9B8B55|20E689  |;
                       JSL.L CODE_9B890F                    ;9B8B58|220F899B|;
                       LDA.W #$0000                         ;9B8B5C|A90000  |;
 
          CODE_9B8B5F:
                       RTS                                  ;9B8B5F|60      |;
 
          CODE_9B8B60:
                       LDA.B $8F                            ;9B8B60|A58F    |;
                       PHA                                  ;9B8B62|48      |;
                       LDA.B $8D                            ;9B8B63|A58D    |;
                       PHA                                  ;9B8B65|48      |;
                       LDA.W #$009C                         ;9B8B66|A99C00  |;
                       STA.B $8F                            ;9B8B69|858F    |;
                       LDA.W #$F072                         ;9B8B6B|A972F0  |;
                       STA.B $8D                            ;9B8B6E|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8B70|22BEC79E|;
                       PLA                                  ;9B8B74|68      |;
                       STA.B $8D                            ;9B8B75|858D    |;
                       PLA                                  ;9B8B77|68      |;
                       STA.B $8F                            ;9B8B78|858F    |;
                       LDA.W #$0020                         ;9B8B7A|A92000  |;
                       STA.B $A5                            ;9B8B7D|85A5    |;
                       LDA.W #$0013                         ;9B8B7F|A91300  |;
                       STA.B $A9                            ;9B8B82|85A9    |;
                       LDA.L $7E35D0                        ;9B8B84|AFD0357E|;
                       STA.B $AD                            ;9B8B88|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9B8B8A|229CBD9F|;
                       LDA.B $8F                            ;9B8B8E|A58F    |;
                       PHA                                  ;9B8B90|48      |;
                       LDA.B $8D                            ;9B8B91|A58D    |;
                       PHA                                  ;9B8B93|48      |;
                       LDA.W #$009C                         ;9B8B94|A99C00  |;
                       STA.B $8F                            ;9B8B97|858F    |;
                       LDA.W #$F077                         ;9B8B99|A977F0  |;
                       STA.B $8D                            ;9B8B9C|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8B9E|22BEC79E|;
                       PLA                                  ;9B8BA2|68      |;
                       STA.B $8D                            ;9B8BA3|858D    |;
                       PLA                                  ;9B8BA5|68      |;
                       STA.B $8F                            ;9B8BA6|858F    |;
                       JSL.L CODE_9ED300                    ;9B8BA8|2200D39E|;
                       LDA.B $A5                            ;9B8BAC|A5A5    |;
                       DEC A                                ;9B8BAE|3A      |;
                       STA.B $A9                            ;9B8BAF|85A9    |;
                       LDA.W #$8C6E                         ;9B8BB1|A96E8C  |;
                       STA.B $9D                            ;9B8BB4|859D    |;
                       LDA.W #$009B                         ;9B8BB6|A99B00  |;
                       STA.B $9F                            ;9B8BB9|859F    |;
                       LDA.W #$8C6A                         ;9B8BBB|A96A8C  |;
                       STA.B $95                            ;9B8BBE|8595    |;
                       LDA.W #$009B                         ;9B8BC0|A99B00  |;
                       STA.B $97                            ;9B8BC3|8597    |;
                       LDA.W $0D43                          ;9B8BC5|AD430D  |;
                       DEC A                                ;9B8BC8|3A      |;
                       STA.B $A5                            ;9B8BC9|85A5    |;
                       BMI CODE_9B8BFD                      ;9B8BCB|3030    |;
                       ASL A                                ;9B8BCD|0A      |;
                       ASL A                                ;9B8BCE|0A      |;
                       ASL A                                ;9B8BCF|0A      |;
                       STA.B $A5                            ;9B8BD0|85A5    |;
                       JSL.L CODE_9B9320                    ;9B8BD2|2220939B|;
                       SEC                                  ;9B8BD6|38      |;
                       ADC.B $A5                            ;9B8BD7|65A5    |;
                       STA.B $95                            ;9B8BD9|8595    |;
                       LDA.W #$D9B3                         ;9B8BDB|A9B3D9  |;
                       STA.B $9D                            ;9B8BDE|859D    |;
                       LDA.W #$0080                         ;9B8BE0|A98000  |;
                       STA.B $9F                            ;9B8BE3|859F    |;
                       LDA.W #$0004                         ;9B8BE5|A90400  |;
                       STA.B $A9                            ;9B8BE8|85A9    |;
                       LDA.W $0D43                          ;9B8BEA|AD430D  |;
                       SEC                                  ;9B8BED|38      |;
                       SBC.W #$0005                         ;9B8BEE|E90500  |;
                       BEQ CODE_9B8BFD                      ;9B8BF1|F00A    |;
                       BMI CODE_9B8BF9                      ;9B8BF3|3004    |;
                       db $50,$04,$80,$04                   ;9B8BF5|        |;
 
          CODE_9B8BF9:
                       BVC CODE_9B8BFD                      ;9B8BF9|5002    |;
                       db $C6,$A9                           ;9B8BFB|        |;
 
          CODE_9B8BFD:
                       LDA.W #$3800                         ;9B8BFD|A90038  |;
                       STA.W $0D0D                          ;9B8C00|8D0D0D  |;
                       LDA.B $A9                            ;9B8C03|A5A9    |;
                       CMP.W $1D8B                          ;9B8C05|CD8B1D  |;
                       BNE CODE_9B8C1A                      ;9B8C08|D010    |;
                       LDA.W #$2000                         ;9B8C0A|A90020  |;
                       STA.W $0D0D                          ;9B8C0D|8D0D0D  |;
                       LDA.B [$95]                          ;9B8C10|A795    |;
                       AND.W #$00FF                         ;9B8C12|29FF00  |;
                       DEC A                                ;9B8C15|3A      |;
                       STA.L $7E345A                        ;9B8C16|8F5A347E|;
 
          CODE_9B8C1A:
                       LDA.W #$0005                         ;9B8C1A|A90500  |;
                       STA.W $0D0F                          ;9B8C1D|8D0F0D  |;
                       LDA.B $9D                            ;9B8C20|A59D    |;
                       STA.B $8D                            ;9B8C22|858D    |;
                       LDA.B $9F                            ;9B8C24|A59F    |;
                       STA.B $8F                            ;9B8C26|858F    |;
                       JSL.L CODE_9EC7BE                    ;9B8C28|22BEC79E|;
                       LDA.B $8D                            ;9B8C2C|A58D    |;
                       STA.B $9D                            ;9B8C2E|859D    |;
                       LDA.B $8F                            ;9B8C30|A58F    |;
                       STA.B $9F                            ;9B8C32|859F    |;
                       LDA.W #$0008                         ;9B8C34|A90800  |;
                       STA.W $0D0F                          ;9B8C37|8D0F0D  |;
                       LDA.B $8D                            ;9B8C3A|A58D    |;
                       PHA                                  ;9B8C3C|48      |;
                       LDA.B $8F                            ;9B8C3D|A58F    |;
                       PHA                                  ;9B8C3F|48      |;
                       LDA.B [$95]                          ;9B8C40|A795    |;
                       AND.W #$00FF                         ;9B8C42|29FF00  |;
                       DEC A                                ;9B8C45|3A      |;
                       STA.B $A5                            ;9B8C46|85A5    |;
                       JSL.L CODE_9FC372                    ;9B8C48|2272C39F|;
                       JSL.L CODE_9EC7BE                    ;9B8C4C|22BEC79E|;
                       INC.B $95                            ;9B8C50|E695    |;
                       PLA                                  ;9B8C52|68      |;
                       STA.B $8F                            ;9B8C53|858F    |;
                       PLA                                  ;9B8C55|68      |;
                       STA.B $8D                            ;9B8C56|858D    |;
                       INC.W $0D11                          ;9B8C58|EE110D  |;
                       INC.W $0D11                          ;9B8C5B|EE110D  |;
                       DEC.B $A9                            ;9B8C5E|C6A9    |;
                       BMI CODE_9B8C65                      ;9B8C60|3003    |;
                       JMP.W CODE_9B8BFD                    ;9B8C62|4CFD8B  |;
 
          CODE_9B8C65:
                       JSL.L CODE_9B8970                    ;9B8C65|2270899B|;
                       RTS                                  ;9B8C69|60      |;
                       db $01,$02,$03,$04,$03,$00,$47,$03   ;9B8C6A|        |;
                       db $00,$47,$03,$00,$47,$03,$00,$47   ;9B8C72|        |;
 
          CODE_9B8C7A:
                       STA.W $1D8F                          ;9B8C7A|8D8F1D  |;
                       LDA.W $0D43                          ;9B8C7D|AD430D  |;
                       DEC A                                ;9B8C80|3A      |;
                       ASL A                                ;9B8C81|0A      |;
                       ASL A                                ;9B8C82|0A      |;
                       ASL A                                ;9B8C83|0A      |;
                       STA.B $A5                            ;9B8C84|85A5    |;
                       JSL.L CODE_9B9320                    ;9B8C86|2220939B|;
                       SEC                                  ;9B8C8A|38      |;
                       ADC.B $A5                            ;9B8C8B|65A5    |;
                       STA.B $A5                            ;9B8C8D|85A5    |;
                       LDA.W $1D9F                          ;9B8C8F|AD9F1D  |;
                       SEC                                  ;9B8C92|38      |;
                       SBC.W $1D8B                          ;9B8C93|ED8B1D  |;
                       CMP.W #$0001                         ;9B8C96|C90100  |;
                       BEQ CODE_9B8D0E                      ;9B8C99|F073    |;
                       CMP.W #$0002                         ;9B8C9B|C90200  |;
                       BEQ CODE_9B8CFD                      ;9B8C9E|F05D    |;
                       CMP.W #$0003                         ;9B8CA0|C90300  |;
                       BEQ CODE_9B8CE1                      ;9B8CA3|F03C    |;
                       CMP.W #$0004                         ;9B8CA5|C90400  |;
                       BEQ CODE_9B8CC4                      ;9B8CA8|F01A    |;
                       LDA.B $A5                            ;9B8CAA|A5A5    |;
                       INC A                                ;9B8CAC|1A      |;
                       INC A                                ;9B8CAD|1A      |;
                       STA.B $95                            ;9B8CAE|8595    |;
                       JSR.W CODE_9B8D72                    ;9B8CB0|20728D  |;
                       CMP.W $1D8F                          ;9B8CB3|CD8F1D  |;
                       BNE CODE_9B8CBD                      ;9B8CB6|D005    |;
                       db $20,$4D,$8D,$80,$63               ;9B8CB8|        |;
 
          CODE_9B8CBD:
                       LDA.B $A5                            ;9B8CBD|A5A5    |;
                       INC A                                ;9B8CBF|1A      |;
                       INC A                                ;9B8CC0|1A      |;
                       INC A                                ;9B8CC1|1A      |;
                       BRA CODE_9B8CFF                      ;9B8CC2|803B    |;
 
          CODE_9B8CC4:
                       LDA.B $A5                            ;9B8CC4|A5A5    |;
                       CLC                                  ;9B8CC6|18      |;
                       ADC.W #$0004                         ;9B8CC7|690400  |;
                       STA.B $95                            ;9B8CCA|8595    |;
                       JSR.W CODE_9B8D72                    ;9B8CCC|20728D  |;
                       CMP.W $1D8F                          ;9B8CCF|CD8F1D  |;
                       BNE CODE_9B8CDB                      ;9B8CD2|D007    |;
                       db $C6,$95,$20,$32,$8D,$80,$45       ;9B8CD4|        |;
 
          CODE_9B8CDB:
                       LDA.B $A5                            ;9B8CDB|A5A5    |;
                       INC A                                ;9B8CDD|1A      |;
                       INC A                                ;9B8CDE|1A      |;
                       BRA CODE_9B8CFF                      ;9B8CDF|801E    |;
 
          CODE_9B8CE1:
                       LDA.B $A5                            ;9B8CE1|A5A5    |;
                       CLC                                  ;9B8CE3|18      |;
                       ADC.W #$0004                         ;9B8CE4|690400  |;
                       STA.B $95                            ;9B8CE7|8595    |;
                       JSR.W CODE_9B8D72                    ;9B8CE9|20728D  |;
                       CMP.W $1D8F                          ;9B8CEC|CD8F1D  |;
                       BNE CODE_9B8CF6                      ;9B8CEF|D005    |;
                       db $20,$4D,$8D,$80,$2A               ;9B8CF1|        |;
 
          CODE_9B8CF6:
                       LDA.B $A5                            ;9B8CF6|A5A5    |;
                       INC A                                ;9B8CF8|1A      |;
                       INC A                                ;9B8CF9|1A      |;
                       INC A                                ;9B8CFA|1A      |;
                       BRA CODE_9B8D11                      ;9B8CFB|8014    |;
 
          CODE_9B8CFD:
                       LDA.B $A5                            ;9B8CFD|A5A5    |;
 
          CODE_9B8CFF:
                       STA.B $95                            ;9B8CFF|8595    |;
                       JSR.W CODE_9B8D72                    ;9B8D01|20728D  |;
                       CMP.W $1D8F                          ;9B8D04|CD8F1D  |;
                       BNE CODE_9B8D20                      ;9B8D07|D017    |;
                       JSR.W CODE_9B8D32                    ;9B8D09|20328D  |;
                       BRA CODE_9B8D20                      ;9B8D0C|8012    |;
 
          CODE_9B8D0E:
                       LDA.B $A5                            ;9B8D0E|A5A5    |;
                       INC A                                ;9B8D10|1A      |;
 
          CODE_9B8D11:
                       STA.B $95                            ;9B8D11|8595    |;
                       JSR.W CODE_9B8D72                    ;9B8D13|20728D  |;
                       CMP.W $1D8F                          ;9B8D16|CD8F1D  |;
                       BNE CODE_9B8D20                      ;9B8D19|D005    |;
                       db $C6,$95,$20,$32,$8D               ;9B8D1B|        |;
 
          CODE_9B8D20:
                       LDA.B $A5                            ;9B8D20|A5A5    |;
                       CLC                                  ;9B8D22|18      |;
                       ADC.W $1D9F                          ;9B8D23|6D9F1D  |;
                       SBC.W $1D8B                          ;9B8D26|ED8B1D  |;
                       STA.B $95                            ;9B8D29|8595    |;
                       LDA.W $1D8F                          ;9B8D2B|AD8F1D  |;
                       JSR.W CODE_9B8D7C                    ;9B8D2E|207C8D  |;
                       RTS                                  ;9B8D31|60      |;
 
          CODE_9B8D32:
                       JSR.W CODE_9B8D72                    ;9B8D32|20728D  |;
                       STA.W $1D93                          ;9B8D35|8D931D  |;
                       INC.B $95                            ;9B8D38|E695    |;
                       JSR.W CODE_9B8D72                    ;9B8D3A|20728D  |;
                       DEC.B $95                            ;9B8D3D|C695    |;
                       JSR.W CODE_9B8D7C                    ;9B8D3F|207C8D  |;
                       INC.B $95                            ;9B8D42|E695    |;
                       LDA.W $1D93                          ;9B8D44|AD931D  |;
                       JSR.W CODE_9B8D7C                    ;9B8D47|207C8D  |;
                       DEC.B $95                            ;9B8D4A|C695    |;
                       RTS                                  ;9B8D4C|60      |;
                       db $A5,$A5,$1A,$1A,$85,$95,$20,$72   ;9B8D4D|        |;
                       db $8D,$8D,$93,$1D,$E6,$95,$E6,$95   ;9B8D55|        |;
                       db $20,$72,$8D,$C6,$95,$C6,$95,$20   ;9B8D5D|        |;
                       db $7C,$8D,$E6,$95,$E6,$95,$AD,$93   ;9B8D65|        |;
                       db $1D,$20,$7C,$8D,$60               ;9B8D6D|        |;
 
          CODE_9B8D72:
                       SEP #$20                             ;9B8D72|E220    |;
                       LDA.B [$95]                          ;9B8D74|A795    |;
                       REP #$20                             ;9B8D76|C220    |;
                       AND.W #$00FF                         ;9B8D78|29FF00  |;
                       RTS                                  ;9B8D7B|60      |;
 
          CODE_9B8D7C:
                       AND.W #$00FF                         ;9B8D7C|29FF00  |;
                       SEP #$20                             ;9B8D7F|E220    |;
                       STA.B [$95]                          ;9B8D81|8795    |;
                       REP #$20                             ;9B8D83|C220    |;
                       RTS                                  ;9B8D85|60      |;
 
          CODE_9B8D86:
                       LDA.B $8F                            ;9B8D86|A58F    |;
                       PHA                                  ;9B8D88|48      |;
                       LDA.B $8D                            ;9B8D89|A58D    |;
                       PHA                                  ;9B8D8B|48      |;
                       LDA.W #$009C                         ;9B8D8C|A99C00  |;
                       STA.B $8F                            ;9B8D8F|858F    |;
                       LDA.W #$F07C                         ;9B8D91|A97CF0  |;
                       STA.B $8D                            ;9B8D94|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8D96|22BEC79E|;
                       PLA                                  ;9B8D9A|68      |;
                       STA.B $8D                            ;9B8D9B|858D    |;
                       PLA                                  ;9B8D9D|68      |;
                       STA.B $8F                            ;9B8D9E|858F    |;
                       JSL.L CODE_80AF7B                    ;9B8DA0|227BAF80|;
                       LDA.W #$0020                         ;9B8DA4|A92000  |;
                       STA.B $A5                            ;9B8DA7|85A5    |;
                       LDA.W #$000D                         ;9B8DA9|A90D00  |;
                       STA.B $A9                            ;9B8DAC|85A9    |;
                       LDA.L $7E35D0                        ;9B8DAE|AFD0357E|;
                       STA.B $AD                            ;9B8DB2|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9B8DB4|229CBD9F|;
                       LDA.W #$009A                         ;9B8DB8|A99A00  |;
                       STA.B $0E                            ;9B8DBB|850E    |;
                       LDA.W #$E9C7                         ;9B8DBD|A9C7E9  |;
                       STA.B $0C                            ;9B8DC0|850C    |;
                       LDA.W #$007F                         ;9B8DC2|A97F00  |;
                       STA.B $12                            ;9B8DC5|8512    |;
                       LDA.W #$0000                         ;9B8DC7|A90000  |;
                       STA.B $10                            ;9B8DCA|8510    |;
                       JSL.L CODE_80C373                    ;9B8DCC|2273C380|;
                       LDA.W #$007F                         ;9B8DD0|A97F00  |;
                       STA.B $0E                            ;9B8DD3|850E    |;
                       LDA.W #$0000                         ;9B8DD5|A90000  |;
                       STA.B $0C                            ;9B8DD8|850C    |;
                       LDA.W #$007E                         ;9B8DDA|A97E00  |;
                       STA.B $12                            ;9B8DDD|8512    |;
                       LDA.W #$3FF4                         ;9B8DDF|A9F43F  |;
                       STA.B $10                            ;9B8DE2|8510    |;
                       LDX.W #$0001                         ;9B8DE4|A20100  |;
                       LDY.W #$0001                         ;9B8DE7|A00100  |;
                       LDA.L $7E35AC                        ;9B8DEA|AFAC357E|;
                       CLC                                  ;9B8DEE|18      |;
                       ADC.W #$0C00                         ;9B8DEF|69000C  |;
                       JSL.L CODE_808583                    ;9B8DF2|22838580|;
                       JSL.L CODE_808E2D                    ;9B8DF6|222D8E80|;
                       JSL.L CODE_9DD938                    ;9B8DFA|2238D99D|;
                       JSL.L CODE_9DD962                    ;9B8DFE|2262D99D|;
                       JSL.L CODE_80AFDE                    ;9B8E02|22DEAF80|;
                       JSL.L CODE_808583                    ;9B8E06|22838580|;
                       LDA.W #$0007                         ;9B8E0A|A90700  |;
                       STA.W $1DEF                          ;9B8E0D|8DEF1D  |;
                       LDA.W $1D9F                          ;9B8E10|AD9F1D  |;
                       SEC                                  ;9B8E13|38      |;
                       SBC.W $1D8B                          ;9B8E14|ED8B1D  |;
                       CMP.W #$0003                         ;9B8E17|C90300  |;
                       BPL CODE_9B8E3D                      ;9B8E1A|1021    |;
                       JSL.L CODE_9B9300                    ;9B8E1C|2200939B|;
                       LDA.B $A5                            ;9B8E20|A5A5    |;
                       STA.W $1DA3                          ;9B8E22|8DA31D  |;
                       JSL.L CODE_9ED300                    ;9B8E25|2200D39E|;
                       LDA.B $A5                            ;9B8E29|A5A5    |;
                       STA.W $1DAB                          ;9B8E2B|8DAB1D  |;
                       JSL.L CODE_9B92DC                    ;9B8E2E|22DC929B|;
                       LDA.W $1DAB                          ;9B8E32|ADAB1D  |; # of Goalies
                       CLC                                  ;9B8E35|18      |;
                       ADC.B $A5                            ;9B8E36|65A5    |;
                       STA.W $1DAB                          ;9B8E38|8DAB1D  |;
                       BRA CODE_9B8E4F                      ;9B8E3B|8012    |;
 
          CODE_9B8E3D:
                       JSL.L CODE_9B92DC                    ;9B8E3D|22DC929B|;
                       LDA.B $A5                            ;9B8E41|A5A5    |;
                       STA.W $1DA3                          ;9B8E43|8DA31D  |; Edit Lines # Of players at positon
                       JSL.L CODE_9ED300                    ;9B8E46|2200D39E|;
                       LDA.B $A5                            ;9B8E4A|A5A5    |;
                       STA.W $1DAB                          ;9B8E4C|8DAB1D  |; # of Goalies
 
          CODE_9B8E4F:
                       STA.W $1DA7                          ;9B8E4F|8DA71D  |;
                       LDA.W #$0009                         ;9B8E52|A90900  |;
                       CMP.W $1DA3                          ;9B8E55|CDA31D  |;
                       BEQ CODE_9B8E5F                      ;9B8E58|F005    |;
                       BMI CODE_9B8E5F                      ;9B8E5A|3003    |;
                       LDA.W $1DA3                          ;9B8E5C|ADA31D  |;
 
          CODE_9B8E5F:
                       STA.W $1DAF                          ;9B8E5F|8DAF1D  |;
                       LDA.W $0D43                          ;9B8E62|AD430D  |;
                       DEC A                                ;9B8E65|3A      |;
                       ASL A                                ;9B8E66|0A      |;
                       ASL A                                ;9B8E67|0A      |;
                       ASL A                                ;9B8E68|0A      |;
                       STA.B $A5                            ;9B8E69|85A5    |;
                       JSL.L CODE_9B9320                    ;9B8E6B|2220939B|;
                       LDA.B $95                            ;9B8E6F|A595    |;
                       CLC                                  ;9B8E71|18      |;
                       ADC.B $A5                            ;9B8E72|65A5    |;
                       CLC                                  ;9B8E74|18      |;
                       ADC.W $1D9F                          ;9B8E75|6D9F1D  |;
                       SEC                                  ;9B8E78|38      |;
                       SBC.W $1D8B                          ;9B8E79|ED8B1D  |;
                       STA.B $95                            ;9B8E7C|8595    |;
                       JSR.W CODE_9B8D72                    ;9B8E7E|20728D  |;
                       STA.W $1D9B                          ;9B8E81|8D9B1D  |;
                       LDA.W $1DAF                          ;9B8E84|ADAF1D  |;
                       CLC                                  ;9B8E87|18      |;
                       ADC.W $1DA7                          ;9B8E88|6DA71D  |;
                       SEC                                  ;9B8E8B|38      |;
                       SBC.W $1D9B                          ;9B8E8C|ED9B1D  |;
                       BPL CODE_9B8EAA                      ;9B8E8F|1019    |;
                       LDA.W $1D9B                          ;9B8E91|AD9B1D  |;
                       SEC                                  ;9B8E94|38      |;
                       SBC.W $1DAF                          ;9B8E95|EDAF1D  |;
                       SEC                                  ;9B8E98|38      |;
                       SBC.W $1DA7                          ;9B8E99|EDA71D  |;
                       BMI CODE_9B8EA5                      ;9B8E9C|3007    |;
                       CLC                                  ;9B8E9E|18      |;
                       ADC.W $1DA7                          ;9B8E9F|6DA71D  |;
                       STA.W $1DA7                          ;9B8EA2|8DA71D  |;
 
          CODE_9B8EA5:
                       LDA.W #$0000                         ;9B8EA5|A90000  |;
                       BRA CODE_9B8EB5                      ;9B8EA8|800B    |;
 
          CODE_9B8EAA:
                       LDA.W $1DA7                          ;9B8EAA|ADA71D  |;
                       CLC                                  ;9B8EAD|18      |;
                       ADC.W $1DAF                          ;9B8EAE|6DAF1D  |;
                       SEC                                  ;9B8EB1|38      |;
                       SBC.W $1D9B                          ;9B8EB2|ED9B1D  |;
 
          CODE_9B8EB5:
                       STA.W $1D9B                          ;9B8EB5|8D9B1D  |;
                       JSL.L CODE_9B8F7B                    ;9B8EB8|227B8F9B|;
 
          CODE_9B8EBC:
                       JSL.L CODE_9DD923                    ;9B8EBC|2223D99D|;
                       JSL.L CODE_9DD94D                    ;9B8EC0|224DD99D|;
                       JSL.L CODE_808583                    ;9B8EC4|22838580|;
                       JSL.L CODE_9B8017                    ;9B8EC8|2217809B|;
                       JSL.L CODE_9B851F                    ;9B8ECC|221F859B|;
                       JSL.L CODE_9B852C                    ;9B8ED0|222C859B|;
                       LDA.B $A9                            ;9B8ED4|A5A9    |;
                       BIT.W #$1000                         ;9B8ED6|890010  |;
                       BEQ CODE_9B8EE1                      ;9B8ED9|F006    |;
                       LDA.W #$FFFF                         ;9B8EDB|A9FFFF  |;
                       JMP.W CODE_9B91A1                    ;9B8EDE|4CA191  |;
 
          CODE_9B8EE1:
                       BIT.W #$8080                         ;9B8EE1|898080  |;
                       BEQ CODE_9B8EF4                      ;9B8EE4|F00E    |;
                       LDA.W $1DA7                          ;9B8EE6|ADA71D  |;
                       CLC                                  ;9B8EE9|18      |;
                       ADC.W $1DAF                          ;9B8EEA|6DAF1D  |;
                       SEC                                  ;9B8EED|38      |;
                       SBC.W $1D9B                          ;9B8EEE|ED9B1D  |;
                       JMP.W CODE_9B91A1                    ;9B8EF1|4CA191  |;
 
          CODE_9B8EF4:
                       STZ.B $A5                            ;9B8EF4|64A5    |;
                       INC.B $A5                            ;9B8EF6|E6A5    |;
                       BIT.W #$0100                         ;9B8EF8|890001  |;
                       BNE UNREACH_9B8F2B                   ;9B8EFB|D02E    |;
                       DEC.B $A5                            ;9B8EFD|C6A5    |;
                       DEC.B $A5                            ;9B8EFF|C6A5    |;
                       BIT.W #$0200                         ;9B8F01|890002  |;
                       BNE UNREACH_9B8F2B                   ;9B8F04|D025    |;
                       BIT.W #$0400                         ;9B8F06|890004  |;
                       BNE CODE_9B8F14                      ;9B8F09|D009    |;
                       INC.B $A5                            ;9B8F0B|E6A5    |;
                       INC.B $A5                            ;9B8F0D|E6A5    |;
                       BIT.W #$0800                         ;9B8F0F|890008  |;
                       BEQ CODE_9B8F28                      ;9B8F12|F014    |;
 
          CODE_9B8F14:
                       LDA.B $A5                            ;9B8F14|A5A5    |;
                       CLC                                  ;9B8F16|18      |;
                       ADC.W $1D9B                          ;9B8F17|6D9B1D  |;
                       BMI CODE_9B8F3E                      ;9B8F1A|3022    |;
                       CMP.W $1DAF                          ;9B8F1C|CDAF1D  |;
                       BPL UNREACH_9B8F5D                   ;9B8F1F|103C    |;
                       STA.W $1D9B                          ;9B8F21|8D9B1D  |;
                       JSL.L CODE_9B8F7B                    ;9B8F24|227B8F9B|;
 
          CODE_9B8F28:
                       JMP.W CODE_9B8EBC                    ;9B8F28|4CBC8E  |;
 
       UNREACH_9B8F2B:
                       db $A5,$A5,$18,$6D,$47,$0D,$85,$A5   ;9B8F2B|        |;
                       db $30,$F3,$8D,$47,$0D,$22,$7B,$8F   ;9B8F33|        |;
                       db $9B,$80,$EA                       ;9B8F3B|        |;
 
          CODE_9B8F3E:
                       LDA.W $1DA7                          ;9B8F3E|ADA71D  |;
                       SEC                                  ;9B8F41|38      |;
                       SBC.W $1DAB                          ;9B8F42|EDAB1D  |;
                       CLC                                  ;9B8F45|18      |;
                       ADC.W $1DAF                          ;9B8F46|6DAF1D  |;
                       CMP.W $1DA3                          ;9B8F49|CDA31D  |;
                       BPL CODE_9B8F28                      ;9B8F4C|10DA    |;
                       INC.W $1DA7                          ;9B8F4E|EEA71D  |;
                       JSL.L CODE_9B8F7B                    ;9B8F51|227B8F9B|;
                       LDA.W #$FFFF                         ;9B8F55|A9FFFF  |;
                       STA.W $07E0                          ;9B8F58|8DE007  |;
                       BRA CODE_9B8F28                      ;9B8F5B|80CB    |;
 
       UNREACH_9B8F5D:
                       db $AD,$A7,$1D,$CD,$AB,$1D,$F0,$C3   ;9B8F5D|        |;
                       db $CE,$A7,$1D,$22,$7B,$8F,$9B,$A9   ;9B8F65|        |;
                       db $FF,$FF,$8D,$E0,$07,$A9,$FF,$FF   ;9B8F6D|        |;
                       db $8D,$D8,$07,$4C,$28,$8F           ;9B8F75|        |;
 
          CODE_9B8F7B:
                       LDA.B $8F                            ;9B8F7B|A58F    |;
                       PHA                                  ;9B8F7D|48      |;
                       LDA.B $8D                            ;9B8F7E|A58D    |;
                       PHA                                  ;9B8F80|48      |;
                       LDA.W #$009C                         ;9B8F81|A99C00  |;
                       STA.B $8F                            ;9B8F84|858F    |;
                       LDA.W #$F081                         ;9B8F86|A981F0  |;
                       STA.B $8D                            ;9B8F89|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B8F8B|22BEC79E|;
                       PLA                                  ;9B8F8F|68      |;
                       STA.B $8D                            ;9B8F90|858D    |;
                       PLA                                  ;9B8F92|68      |;
                       STA.B $8F                            ;9B8F93|858F    |;
                       LDA.W #$0020                         ;9B8F95|A92000  |;
                       STA.B $A5                            ;9B8F98|85A5    |;
                       LDA.W #$000D                         ;9B8F9A|A90D00  |;
                       STA.B $A9                            ;9B8F9D|85A9    |;
                       LDA.L $7E35D0                        ;9B8F9F|AFD0357E|;
                       STA.B $AD                            ;9B8FA3|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9B8FA5|229CBD9F|;
                       LDA.W #$0011                         ;9B8FA9|A91100  |;
                       STA.W $0D0F                          ;9B8FAC|8D0F0D  |;
                       LDA.W #$0002                         ;9B8FAF|A90200  |;
                       STA.W $0D11                          ;9B8FB2|8D110D  |;
                       LDA.W #$906F                         ;9B8FB5|A96F90  |;
                       STA.B $8D                            ;9B8FB8|858D    |;
                       LDA.W #$009B                         ;9B8FBA|A99B00  |;
                       STA.B $8F                            ;9B8FBD|858F    |;
                       LDA.W $0D47                          ;9B8FBF|AD470D  |;
                       STA.B $A5                            ;9B8FC2|85A5    |;
                       LDA.W $0D43                          ;9B8FC4|AD430D  |;
                       BNE CODE_9B8FDF                      ;9B8FC7|D016    |;
                       db $A9,$CD,$D8,$85,$8D,$A9,$80,$00   ;9B8FC9|        |;
                       db $85,$8F,$80,$0A                   ;9B8FD1|        |;
 
       UNREACH_9B8FD5:
                       db $A5,$8D,$18,$67,$8D,$69,$04,$00   ;9B8FD5|        |;
                       db $85,$8D                           ;9B8FDD|        |;
 
          CODE_9B8FDF:
                       LDA.B [$8D]                          ;9B8FDF|A78D    |;
                       BMI CODE_9B8FE7                      ;9B8FE1|3004    |;
                       DEC.B $A5                            ;9B8FE3|C6A5    |;
                       BPL UNREACH_9B8FD5                   ;9B8FE5|10EE    |;
 
          CODE_9B8FE7:
                       LDA.B [$8D]                          ;9B8FE7|A78D    |;
                       BPL CODE_9B8FF0                      ;9B8FE9|1005    |;
                       db $CE,$47,$0D,$80,$C5               ;9B8FEB|        |;
 
          CODE_9B8FF0:
                       LDA.W #$3800                         ;9B8FF0|A90038  |;
                       STA.W $0D0D                          ;9B8FF3|8D0D0D  |;
                       JSL.L CODE_9EC7BE                    ;9B8FF6|22BEC79E|;
                       LDA.B [$8D]                          ;9B8FFA|A78D    |;
                       STA.B $B7                            ;9B8FFC|85B7    |;
                       LDY.W #$0002                         ;9B8FFE|A00200  |;
                       LDA.B [$8D],Y                        ;9B9001|B78D    |;
                       STA.B $B5                            ;9B9003|85B5    |;
                       LDA.B $8F                            ;9B9005|A58F    |;
                       PHA                                  ;9B9007|48      |;
                       LDA.B $8D                            ;9B9008|A58D    |;
                       PHA                                  ;9B900A|48      |;
                       LDA.W #$009C                         ;9B900B|A99C00  |;
                       STA.B $8F                            ;9B900E|858F    |;
                       LDA.W #$F086                         ;9B9010|A986F0  |;
                       STA.B $8D                            ;9B9013|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B9015|22BEC79E|;
                       PLA                                  ;9B9019|68      |;
                       STA.B $8D                            ;9B901A|858D    |;
                       PLA                                  ;9B901C|68      |;
                       STA.B $8F                            ;9B901D|858F    |;
                       LDA.W $1DA7                          ;9B901F|ADA71D  |;
                       CMP.W $1DAB                          ;9B9022|CDAB1D  |;
                       BEQ CODE_9B9041                      ;9B9025|F01A    |;
                       LDA.B $8F                            ;9B9027|A58F    |;
                       PHA                                  ;9B9029|48      |;
                       LDA.B $8D                            ;9B902A|A58D    |;
                       PHA                                  ;9B902C|48      |;
                       LDA.W #$009C                         ;9B902D|A99C00  |;
                       STA.B $8F                            ;9B9030|858F    |;
                       LDA.W #$F091                         ;9B9032|A991F0  |;
                       STA.B $8D                            ;9B9035|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B9037|22BEC79E|;
                       PLA                                  ;9B903B|68      |;
                       STA.B $8D                            ;9B903C|858D    |;
                       PLA                                  ;9B903E|68      |;
                       STA.B $8F                            ;9B903F|858F    |;
 
          CODE_9B9041:
                       LDA.W $1DA7                          ;9B9041|ADA71D  |;
                       SEC                                  ;9B9044|38      |;
                       SBC.W $1DAB                          ;9B9045|EDAB1D  |;
                       CLC                                  ;9B9048|18      |;
                       ADC.W $1DAF                          ;9B9049|6DAF1D  |;
                       CMP.W $1DA3                          ;9B904C|CDA31D  |;
                       BPL CODE_9B906B                      ;9B904F|101A    |;
                       LDA.B $8F                            ;9B9051|A58F    |;
                       PHA                                  ;9B9053|48      |;
                       LDA.B $8D                            ;9B9054|A58D    |;
                       PHA                                  ;9B9056|48      |;
                       LDA.W #$009C                         ;9B9057|A99C00  |;
                       STA.B $8F                            ;9B905A|858F    |;
                       LDA.W #$F097                         ;9B905C|A997F0  |;
                       STA.B $8D                            ;9B905F|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B9061|22BEC79E|;
                       PLA                                  ;9B9065|68      |;
                       STA.B $8D                            ;9B9066|858D    |;
                       PLA                                  ;9B9068|68      |;
                       STA.B $8F                            ;9B9069|858F    |;
 
          CODE_9B906B:
                       JSR.W CODE_9B9249                    ;9B906B|204992  |;
                       RTL                                  ;9B906E|6B      |;
                       db $0F,$00,$20,$20,$20,$20,$20,$20   ;9B906F|        |;
                       db $53,$74,$61,$74,$75,$73,$5D,$00   ;9B9077|        |;
                       db $00,$00,$00                       ;9B907F|        |;
                       db $0F,$00,$20,$20,$20,$20,$5B,$4F   ;9B9082|        |;
                       db $76,$65,$72,$61,$6C,$6C,$5D,$BA   ;9B908A|        |;
                       db $9F,$0A,$00,$0F,$00,$20,$20,$20   ;9B9092|        |;
                       db $20,$20,$5B,$45,$6E,$65,$72,$67   ;9B909A|        |;
                       db $79,$5D,$00,$00,$02,$00,$0F,$00   ;9B90A2|        |;
                       db $20,$20,$20,$20,$5B,$41,$67,$69   ;9B90AA|        |;
                       db $6C,$69,$74,$79,$5D,$00,$10,$0A   ;9B90B2|        |;
                       db $00,$0F,$00,$20,$20,$20,$20,$20   ;9B90BA|        |;
                       db $20,$5B,$53,$70,$65,$65,$64,$5D   ;9B90C2|        |;
                       db $00,$08,$0A,$00,$0F,$00,$20,$20   ;9B90CA|        |;
                       db $20,$20,$20,$5B,$48,$61,$6E,$64   ;9B90D2|        |;
                       db $65,$64,$5D,$40,$00,$04,$00,$0F   ;9B90DA|        |;
                       db $00,$5B,$4F,$66,$66,$2E,$20,$41   ;9B90E2|        |;
                       db $77,$61,$72,$65,$2E,$5D,$00,$04   ;9B90EA|        |;
                       db $0A,$00,$0F,$00,$5B,$44,$65,$66   ;9B90F2|        |;
                       db $2E,$20,$41,$77,$61,$72,$65,$2E   ;9B90FA|        |;
                       db $5D,$00,$02,$0A,$00,$0F,$00,$20   ;9B9102|        |;
                       db $5B,$53,$68,$6F,$74,$20,$50,$6F   ;9B910A|        |;
                       db $77,$65,$72,$5D,$00,$01,$0A,$00   ;9B9112|        |;
                       db $0F,$00,$20,$5B,$53,$68,$6F,$74   ;9B911A|        |;
                       db $20,$41,$63,$63,$75,$72,$5D,$10   ;9B9122|        |;
                       db $00,$0A,$00,$0F,$00,$20,$5B,$50   ;9B912A|        |;
                       db $61,$73,$73,$20,$41,$63,$63,$75   ;9B9132|        |;
                       db $72,$5D,$02,$00,$0A,$00,$0F,$00   ;9B913A|        |;
                       db $5B,$53,$74,$69,$63,$6B,$20,$48   ;9B9142|        |;
                       db $61,$6E,$64,$6C,$5D,$20,$00,$0A   ;9B914A|        |;
                       db $00,$0F,$00,$20,$20,$20,$20,$20   ;9B9152|        |;
                       db $5B,$57,$65,$69,$67,$68,$74,$5D   ;9B915A|        |;
                       db $00,$20,$06,$00,$0F,$00,$20,$5B   ;9B9162|        |;
                       db $20,$45,$6E,$64,$75,$72,$61,$6E   ;9B916A|        |;
                       db $63,$65,$5D,$08,$00,$0A,$00,$0F   ;9B9172|        |;
                       db $00,$20,$5B,$41,$67,$67,$72,$65   ;9B917A|        |;
                       db $73,$73,$69,$6F,$6E,$5D,$01,$00   ;9B9182|        |;
                       db $0A,$00,$0F,$00,$20,$20,$20,$5B   ;9B918A|        |;
                       db $43,$68,$65,$63,$6B,$69,$6E,$67   ;9B9192|        |;
                       db $20,$80,$00,$0A,$00,$FF,$FF       ;9B919A|        |;
 
          CODE_9B91A1:
                       RTL                                  ;9B91A1|6B      |;
 
          CODE_9B91A2:
                       PHA                                  ;9B91A2|48      |;
                       LDA.B $8F                            ;9B91A3|A58F    |;
                       PHA                                  ;9B91A5|48      |;
                       LDA.B $8D                            ;9B91A6|A58D    |;
                       PHA                                  ;9B91A8|48      |;
                       LDA.W #$009C                         ;9B91A9|A99C00  |;
                       STA.B $8F                            ;9B91AC|858F    |;
                       LDA.W #$F09D                         ;9B91AE|A99DF0  |;
                       STA.B $8D                            ;9B91B1|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B91B3|22BEC79E|;
                       PLA                                  ;9B91B7|68      |;
                       STA.B $8D                            ;9B91B8|858D    |;
                       PLA                                  ;9B91BA|68      |;
                       STA.B $8F                            ;9B91BB|858F    |;
                       LDA.W #$0020                         ;9B91BD|A92000  |;
                       STA.B $A5                            ;9B91C0|85A5    |;
                       LDA.W #$000D                         ;9B91C2|A90D00  |;
                       STA.B $A9                            ;9B91C5|85A9    |;
                       LDA.L $7E35D0                        ;9B91C7|AFD0357E|;
                       STA.B $AD                            ;9B91CB|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9B91CD|229CBD9F|;
                       LDA.B $8F                            ;9B91D1|A58F    |;
                       PHA                                  ;9B91D3|48      |;
                       LDA.B $8D                            ;9B91D4|A58D    |;
                       PHA                                  ;9B91D6|48      |;
                       LDA.W #$009C                         ;9B91D7|A99C00  |;
                       STA.B $8F                            ;9B91DA|858F    |;
                       LDA.W #$F0A2                         ;9B91DC|A9A2F0  |;
                       STA.B $8D                            ;9B91DF|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B91E1|22BEC79E|;
                       PLA                                  ;9B91E5|68      |;
                       STA.B $8D                            ;9B91E6|858D    |;
                       PLA                                  ;9B91E8|68      |;
                       STA.B $8F                            ;9B91E9|858F    |;
                       LDA.W #$0800                         ;9B91EB|A90008  |;
                       STA.W $0D0D                          ;9B91EE|8D0D0D  |;
                       LDA.W #$0011                         ;9B91F1|A91100  |;
                       STA.B $A5                            ;9B91F4|85A5    |;
                       LDA.W #$0003                         ;9B91F6|A90300  |;
                       STA.B $A9                            ;9B91F9|85A9    |;
                       JSL.L CODE_9D80DD                    ;9B91FB|22DD809D|;
                       LDA.W #$009A                         ;9B91FF|A99A00  |;
                       STA.B $0E                            ;9B9202|850E    |;
                       LDA.W #$BA95                         ;9B9204|A995BA  |;
                       STA.B $0C                            ;9B9207|850C    |;
                       LDA.W #$007F                         ;9B9209|A97F00  |;
                       STA.B $12                            ;9B920C|8512    |;
                       LDA.W #$0000                         ;9B920E|A90000  |;
                       STA.B $10                            ;9B9211|8510    |;
                       JSL.L CODE_80C373                    ;9B9213|2273C380|;
                       LDA.W #$007F                         ;9B9217|A97F00  |;
                       STA.B $0E                            ;9B921A|850E    |;
                       LDA.W #$0000                         ;9B921C|A90000  |;
                       STA.B $0C                            ;9B921F|850C    |;
                       LDA.W #$007E                         ;9B9221|A97E00  |;
                       STA.B $12                            ;9B9224|8512    |;
                       LDA.W #$3FF4                         ;9B9226|A9F43F  |;
                       STA.B $10                            ;9B9229|8510    |;
                       LDA.W #$0020                         ;9B922B|A92000  |;
                       STA.B $24                            ;9B922E|8524    |;
                       LDA.W #$0014                         ;9B9230|A91400  |;
                       STA.B $26                            ;9B9233|8526    |;
                       LDX.W #$0000                         ;9B9235|A20000  |;
                       LDY.W #$0000                         ;9B9238|A00000  |;
                       LDA.L $7E35AC                        ;9B923B|AFAC357E|;
                       CLC                                  ;9B923F|18      |;
                       ADC.W #$0C00                         ;9B9240|69000C  |;
                       JSL.L CODE_808E2D                    ;9B9243|222D8E80|;
                       PLA                                  ;9B9247|68      |;
                       RTS                                  ;9B9248|60      |;
 
          CODE_9B9249:
                       LDA.B $8F                            ;9B9249|A58F    |;
                       PHA                                  ;9B924B|48      |;
                       LDA.B $8D                            ;9B924C|A58D    |;
                       PHA                                  ;9B924E|48      |;
                       LDA.W #$009C                         ;9B924F|A99C00  |;
                       STA.B $8F                            ;9B9252|858F    |;
                       LDA.W #$F0A7                         ;9B9254|A9A7F0  |;
                       STA.B $8D                            ;9B9257|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B9259|22BEC79E|;
                       PLA                                  ;9B925D|68      |;
                       STA.B $8D                            ;9B925E|858D    |;
                       PLA                                  ;9B9260|68      |;
                       STA.B $8F                            ;9B9261|858F    |;
                       LDA.W $0D43                          ;9B9263|AD430D  |;
                       DEC A                                ;9B9266|3A      |;
                       ASL A                                ;9B9267|0A      |;
                       ASL A                                ;9B9268|0A      |;
                       ASL A                                ;9B9269|0A      |;
                       STA.B $A5                            ;9B926A|85A5    |;
                       LDY.B $91                            ;9B926C|A491    |;
                       LDA.W $1DA7                          ;9B926E|ADA71D  |;
                       INC A                                ;9B9271|1A      |;
                       STA.B $95                            ;9B9272|8595    |;
                       LDA.W #$D9B3                         ;9B9274|A9B3D9  |;
                       STA.B $9D                            ;9B9277|859D    |;
                       LDA.W #$0080                         ;9B9279|A98000  |;
                       STA.B $9F                            ;9B927C|859F    |;
                       LDA.W $1DAF                          ;9B927E|ADAF1D  |;
                       DEC A                                ;9B9281|3A      |;
                       STA.B $A9                            ;9B9282|85A9    |;
 
          CODE_9B9284:
                       LDA.W #$3800                         ;9B9284|A90038  |;
                       STA.W $0D0D                          ;9B9287|8D0D0D  |;
                       LDA.B $A9                            ;9B928A|A5A9    |;
                       SEP #$20                             ;9B928C|E220    |;
                       CMP.W $1D9B                          ;9B928E|CD9B1D  |;
                       REP #$20                             ;9B9291|C220    |;
                       BNE CODE_9B929B                      ;9B9293|D006    |;
                       LDA.W #$2000                         ;9B9295|A90020  |;
                       STA.W $0D0D                          ;9B9298|8D0D0D  |;
 
          CODE_9B929B:
                       LDA.B $8D                            ;9B929B|A58D    |;
                       STA.B $9D                            ;9B929D|859D    |;
                       LDA.B $8F                            ;9B929F|A58F    |;
                       STA.B $9F                            ;9B92A1|859F    |;
                       LDA.W #$0002                         ;9B92A3|A90200  |;
                       STA.W $0D0F                          ;9B92A6|8D0F0D  |;
                       LDA.B $95                            ;9B92A9|A595    |;
                       AND.W #$00FF                         ;9B92AB|29FF00  |;
                       DEC A                                ;9B92AE|3A      |;
                       STA.B $A5                            ;9B92AF|85A5    |;
                       STA.B $04                            ;9B92B1|8504    |;
                       STZ.B $08                            ;9B92B3|6408    |;
                       JSL.L CODE_9ED300                    ;9B92B5|2200D39E|;
                       LDA.B $04                            ;9B92B9|A504    |;
                       CMP.B $A5                            ;9B92BB|C5A5    |;
                       BPL CODE_9B92C4                      ;9B92BD|1005    |;
                       db $A9,$10,$00,$85,$08               ;9B92BF|        |;
 
          CODE_9B92C4:
                       LDA.B $04                            ;9B92C4|A504    |;
                       STA.B $A5                            ;9B92C6|85A5    |;
                       JSL.L CODE_9F9745                    ;9B92C8|2245979F|;
                       INC.B $95                            ;9B92CC|E695    |;
                       INC.W $0D11                          ;9B92CE|EE110D  |;
                       DEC.B $A9                            ;9B92D1|C6A9    |;
                       BPL CODE_9B9284                      ;9B92D3|10AF    |;
                       LDA.W #$3800                         ;9B92D5|A90038  |;
                       STA.W $0D0D                          ;9B92D8|8D0D0D  |;
                       RTS                                  ;9B92DB|60      |;
 
          CODE_9B92DC:
                       LDY.B $91                            ;9B92DC|A491    |;
                       LDA.W #$009C                         ;9B92DE|A99C00  |;
                       STA.B $97                            ;9B92E1|8597    |;
                       LDA.W $1CDC,Y                        ;9B92E3|B9DC1C  |;
                       STA.B $95                            ;9B92E6|8595    |;
                       LDY.W #$0008                         ;9B92E8|A00800  |;
                       CLC                                  ;9B92EB|18      |;
                       ADC.B [$95],Y                        ;9B92EC|7795    |;
                       CLC                                  ;9B92EE|18      |;
                       ADC.W #$0003                         ;9B92EF|690300  |;
                       STA.B $95                            ;9B92F2|8595    |;
                       LDA.B [$95]                          ;9B92F4|A795    |;
                       LSR A                                ;9B92F6|4A      |;
                       LSR A                                ;9B92F7|4A      |;
                       LSR A                                ;9B92F8|4A      |;
                       LSR A                                ;9B92F9|4A      |;
                       AND.W #$000F                         ;9B92FA|290F00  |;
                       STA.B $A5                            ;9B92FD|85A5    |;
                       RTL                                  ;9B92FF|6B      |;
 
          CODE_9B9300:
                       LDY.B $91                            ;9B9300|A491    |;
                       LDA.W #$009C                         ;9B9302|A99C00  |;
                       STA.B $97                            ;9B9305|8597    |;
                       LDA.W $1CDC,Y                        ;9B9307|B9DC1C  |;
                       STA.B $95                            ;9B930A|8595    |;
                       LDY.W #$0008                         ;9B930C|A00800  |;
                       CLC                                  ;9B930F|18      |;
                       ADC.B [$95],Y                        ;9B9310|7795    |;
                       CLC                                  ;9B9312|18      |;
                       ADC.W #$0003                         ;9B9313|690300  |;
                       STA.B $95                            ;9B9316|8595    |;
                       LDA.B [$95]                          ;9B9318|A795    |;
                       AND.W #$000F                         ;9B931A|290F00  |;
                       STA.B $A5                            ;9B931D|85A5    |;
                       RTL                                  ;9B931F|6B      |;
 
          CODE_9B9320:
                       LDA.W #$0000                         ;9B9320|A90000  |;
                       STA.B $97                            ;9B9323|8597    |;
                       LDA.B $91                            ;9B9325|A591    |;
                       BEQ CODE_9B932E                      ;9B9327|F005    |;
                       LDA.W #$1D1C                         ;9B9329|A91C1D  |;
                       BRA CODE_9B9331                      ;9B932C|8003    |;
 
          CODE_9B932E:
                       LDA.W #$1CE4                         ;9B932E|A9E41C  |;
 
          CODE_9B9331:
                       STA.B $95                            ;9B9331|8595    |;
                       RTL                                  ;9B9333|6B      |;
 
          CODE_9B9334:
                       LDA.B $97                            ;9B9334|A597    |;
                       PHA                                  ;9B9336|48      |;
                       LDA.B $95                            ;9B9337|A595    |;
                       PHA                                  ;9B9339|48      |;
                       LDA.B $8F                            ;9B933A|A58F    |;
                       PHA                                  ;9B933C|48      |;
                       LDA.B $8D                            ;9B933D|A58D    |;
                       PHA                                  ;9B933F|48      |;
                       LDA.B $A5                            ;9B9340|A5A5    |;
                       PHA                                  ;9B9342|48      |;
                       PHY                                  ;9B9343|5A      |;
                       JSL.L CODE_9B9320                    ;9B9344|2220939B|;
                       LDY.B $91                            ;9B9348|A491    |;
                       LDA.W #$009C                         ;9B934A|A99C00  |;
                       STA.B $8F                            ;9B934D|858F    |;
                       LDA.W $1CDC,Y                        ;9B934F|B9DC1C  |;
                       STA.B $8D                            ;9B9352|858D    |;
                       LDY.W #$0006                         ;9B9354|A00600  |;
                       CLC                                  ;9B9357|18      |;
                       ADC.B [$8D],Y                        ;9B9358|778D    |;
                       STA.B $8D                            ;9B935A|858D    |;
                       LDA.W #$0000                         ;9B935C|A90000  |;
                       STA.B $A5                            ;9B935F|85A5    |;
 
          CODE_9B9361:
                       SEP #$20                             ;9B9361|E220    |;
                       LDA.B [$8D]                          ;9B9363|A78D    |;
                       STA.B [$95]                          ;9B9365|8795    |;
                       REP #$20                             ;9B9367|C220    |;
                       INC.B $8D                            ;9B9369|E68D    |;
                       INC.B $95                            ;9B936B|E695    |;
                       LDA.B $A5                            ;9B936D|A5A5    |;
                       INC A                                ;9B936F|1A      |;
                       STA.B $A5                            ;9B9370|85A5    |;
                       CMP.W #$0038                         ;9B9372|C93800  |;
                       BMI CODE_9B9361                      ;9B9375|30EA    |;
                       LDA.L $7E34C6                        ;9B9377|AFC6347E|;
                       BNE CODE_9B93B0                      ;9B937B|D033    |;
                       JSL.L CODE_9B9320                    ;9B937D|2220939B|;
                       LDY.B $91                            ;9B9381|A491    |;
                       LDA.W #$009C                         ;9B9383|A99C00  |;
                       STA.B $8F                            ;9B9386|858F    |;
                       LDA.W $1CDC,Y                        ;9B9388|B9DC1C  |;
                       STA.B $8D                            ;9B938B|858D    |;
                       LDY.W #$000C                         ;9B938D|A00C00  |;
                       CLC                                  ;9B9390|18      |;
                       ADC.B [$8D],Y                        ;9B9391|778D    |;
                       STA.B $8D                            ;9B9393|858D    |;
                       LDA.W #$0000                         ;9B9395|A90000  |;
                       STA.B $A5                            ;9B9398|85A5    |;
 
          CODE_9B939A:
                       SEP #$20                             ;9B939A|E220    |;
                       LDA.B [$8D]                          ;9B939C|A78D    |;
                       STA.B [$95]                          ;9B939E|8795    |;
                       REP #$20                             ;9B93A0|C220    |;
                       INC.B $8D                            ;9B93A2|E68D    |;
                       INC.B $95                            ;9B93A4|E695    |;
                       LDA.B $A5                            ;9B93A6|A5A5    |;
                       INC A                                ;9B93A8|1A      |;
                       STA.B $A5                            ;9B93A9|85A5    |;
                       CMP.W #$0008                         ;9B93AB|C90800  |;
                       BMI CODE_9B939A                      ;9B93AE|30EA    |;
 
          CODE_9B93B0:
                       PLY                                  ;9B93B0|7A      |;
                       PLA                                  ;9B93B1|68      |;
                       STA.B $A5                            ;9B93B2|85A5    |;
                       PLA                                  ;9B93B4|68      |;
                       STA.B $8D                            ;9B93B5|858D    |;
                       PLA                                  ;9B93B7|68      |;
                       STA.B $8F                            ;9B93B8|858F    |;
                       PLA                                  ;9B93BA|68      |;
                       STA.B $95                            ;9B93BB|8595    |;
                       PLA                                  ;9B93BD|68      |;
                       STA.B $97                            ;9B93BE|8597    |;
                       RTL                                  ;9B93C0|6B      |;
                       db $E2,$20,$AD,$E0,$07,$8D,$0E,$21   ;9B93C1|        |;
                       db $AD,$E1,$07,$8D,$0E,$21,$C2,$20   ;9B93C9|        |;
                       db $A9,$DE,$93,$8D,$8F,$07,$A9,$30   ;9B93D1|        |;
                       db $00,$8D,$09,$42,$6B,$E2,$20,$A9   ;9B93D9|        |;
                       db $FF,$8D,$0E,$21,$A9,$FF,$8D,$0E   ;9B93E1|        |;
                       db $21,$C2,$20,$A9,$C1,$93,$8D,$8F   ;9B93E9|        |;
                       db $07,$6B                           ;9B93F1|        |;
 
          CODE_9B93F3:
                       LDA.W $1C9A                          ;9B93F3|AD9A1C  |;
                       STA.L $7E3454                        ;9B93F6|8F54347E|;
                       LDA.W $1C98                          ;9B93FA|AD981C  |;
                       STA.L $7E3452                        ;9B93FD|8F52347E|;
                       JSL.L CODE_9DD9AD                    ;9B9401|22ADD99D|;
                       LDA.W #$0000                         ;9B9405|A90000  |;
                       STA.W $1DB9                          ;9B9408|8DB91D  |;
                       STA.W $1DBD                          ;9B940B|8DBD1D  |;
                       STA.W $1DC1                          ;9B940E|8DC11D  |;
                       LDX.W #$005E                         ;9B9411|A25E00  |;
                       LDY.W #$0018                         ;9B9414|A01800  |;
                       LDA.W #$009C                         ;9B9417|A99C00  |;
                       STA.B $8F                            ;9B941A|858F    |;
                       LDA.W #$F0AC                         ;9B941C|A9ACF0  |;
                       STA.B $8D                            ;9B941F|858D    |;
                       JSL.L CODE_9C936C                    ;9B9421|226C939C|;
                       JSL.L CODE_80AFDE                    ;9B9425|22DEAF80|;
                       LDA.W #$FFFF                         ;9B9429|A9FFFF  |;
                       STA.L $7F75C2                        ;9B942C|8FC2757F|;
                       LDA.W #$2BFF                         ;9B9430|A9FF2B  |;
                       STA.L $7F7502                        ;9B9433|8F02757F|;
                       LDA.W #$6F7B                         ;9B9437|A97B6F  |;
                       STA.L $7F7522                        ;9B943A|8F22757F|;
                       JSL.L CODE_9DE0D4                    ;9B943E|22D4E09D|;
                       LDA.B $8F                            ;9B9442|A58F    |;
                       PHA                                  ;9B9444|48      |;
                       LDA.B $8D                            ;9B9445|A58D    |;
                       PHA                                  ;9B9447|48      |;
                       LDA.W #$009C                         ;9B9448|A99C00  |;
                       STA.B $8F                            ;9B944B|858F    |;
                       LDA.W #$F0B5                         ;9B944D|A9B5F0  |;
                       STA.B $8D                            ;9B9450|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B9452|22BEC79E|;
                       PLA                                  ;9B9456|68      |;
                       STA.B $8D                            ;9B9457|858D    |;
                       PLA                                  ;9B9459|68      |;
                       STA.B $8F                            ;9B945A|858F    |;
                       LDA.W #$0000                         ;9B945C|A90000  |;
                       STA.W $1DC1                          ;9B945F|8DC11D  |;
                       LDA.L $7E313A                        ;9B9462|AF3A317E|;
                       CMP.W #$0006                         ;9B9466|C90600  |;
                       BMI CODE_9B9474                      ;9B9469|3009    |;
                       db $EE,$C1,$1D,$38,$E9,$06,$00,$80   ;9B946B|        |;
                       db $F2                               ;9B9473|        |;
 
          CODE_9B9474:
                       LDA.W $1DC1                          ;9B9474|ADC11D  |;
                       CMP.W #$0006                         ;9B9477|C90600  |;
                       BCC CODE_9B9480                      ;9B947A|9004    |;
                       db $22,$5D,$9A,$9B                   ;9B947C|        |;
 
          CODE_9B9480:
                       JSR.W CODE_9B95B0                    ;9B9480|20B095  |;
                       JSL.L CODE_9DD923                    ;9B9483|2223D99D|;
                       LDA.W #$0058                         ;9B9487|A95800  |;
                       LDX.W #$00D0                         ;9B948A|A2D000  |;
                       LDY.W #$00E0                         ;9B948D|A0E000  |;
                       JSL.L CODE_9BCDF8                    ;9B9490|22F8CD9B|;
                       JSL.L CODE_9DDFF6                    ;9B9494|22F6DF9D|;
                       JSL.L CODE_8086BD                    ;9B9498|22BD8680|;
                       LDA.W #$0005                         ;9B949C|A90500  |;
                       STA.W $1DC5                          ;9B949F|8DC51D  |;
                       JSR.W CODE_9B9562                    ;9B94A2|206295  |;
 
          CODE_9B94A5:
                       JSL.L CODE_9B851F                    ;9B94A5|221F859B|;
                       LDA.B $B1                            ;9B94A9|A5B1    |;
                       BIT.W #$1000                         ;9B94AB|890010  |;
                       BEQ CODE_9B94B1                      ;9B94AE|F001    |;
                       RTL                                  ;9B94B0|6B      |;
 
          CODE_9B94B1:
                       BIT.W #$0800                         ;9B94B1|890008  |;
                       BNE UNREACH_9B9514                   ;9B94B4|D05E    |;
                       BIT.W #$0400                         ;9B94B6|890004  |;
                       BNE CODE_9B94C1                      ;9B94B9|D006    |;
 
          CODE_9B94BB:
                       JSL.L CODE_808583                    ;9B94BB|22838580|;
                       BRA CODE_9B94A5                      ;9B94BF|80E4    |;
 
          CODE_9B94C1:
                       LDA.W #$0006                         ;9B94C1|A90600  |;
                       STA.W $1DC5                          ;9B94C4|8DC51D  |;
                       JSR.W CODE_9B9562                    ;9B94C7|206295  |;
                       LDA.W #$0005                         ;9B94CA|A90500  |;
                       STA.W $1DC5                          ;9B94CD|8DC51D  |;
                       LDA.W $1DBD                          ;9B94D0|ADBD1D  |;
                       CLC                                  ;9B94D3|18      |;
                       ADC.W #$0005                         ;9B94D4|690500  |;
                       CMP.W $1DC1                          ;9B94D7|CDC11D  |;
                       BPL CODE_9B94BB                      ;9B94DA|10DF    |;
                       db $38,$E9,$04,$00,$8D,$BD,$1D,$A9   ;9B94DC|        |;
                       db $01,$00,$8D,$F3,$1D,$A9,$18,$00   ;9B94E4|        |;
                       db $8D,$F5,$1D,$22,$83,$85,$80,$EE   ;9B94EC|        |;
                       db $F3,$1D,$EE,$F3,$1D,$AD,$F3,$1D   ;9B94F4|        |;
                       db $C9,$17,$00,$D0,$EE,$22,$B2,$9A   ;9B94FC|        |;
                       db $9B,$20,$62,$95,$22,$83,$85,$80   ;9B9504|        |;
                       db $A9,$FF,$FF,$8D,$F3,$1D,$80,$91   ;9B950C|        |;
 
       UNREACH_9B9514:
                       db $AD,$BD,$1D,$3A,$30,$A1,$8D,$BD   ;9B9514|        |;
                       db $1D,$A9,$06,$00,$8D,$C5,$1D,$20   ;9B951C|        |;
                       db $62,$95,$22,$83,$85,$80,$A9,$15   ;9B9524|        |;
                       db $00,$8D,$F3,$1D,$A9,$18,$00,$8D   ;9B952C|        |;
                       db $F5,$1D,$22,$83,$85,$80,$CE,$F3   ;9B9534|        |;
                       db $1D,$CE,$F3,$1D,$AD,$F3,$1D,$C9   ;9B953C|        |;
                       db $01,$00,$D0,$EE,$22,$B2,$9A,$9B   ;9B9544|        |;
                       db $A9,$05,$00,$8D,$C5,$1D,$20,$62   ;9B954C|        |;
                       db $95,$22,$83,$85,$80,$A9,$FF,$FF   ;9B9554|        |;
                       db $8D,$F3,$1D,$4C,$A5,$94           ;9B955C|        |;
 
          CODE_9B9562:
                       LDA.W $1DC1                          ;9B9562|ADC11D  |;
                       CMP.W #$0000                         ;9B9565|C90000  |;
                       BEQ CODE_9B9591                      ;9B9568|F027    |;
                       db $AD,$BD,$1D,$0A,$6D,$BD,$1D,$EB   ;9B956A|        |;
                       db $4A,$4A,$69,$80,$27,$85,$0C,$A9   ;9B9572|        |;
                       db $7F,$00,$85,$0E,$AD,$C5,$1D,$0A   ;9B957A|        |;
                       db $6D,$C5,$1D,$EB,$4A,$4A,$AA,$A0   ;9B9582|        |;
                       db $60,$01,$22,$1F,$89,$80,$60       ;9B958A|        |;
 
          CODE_9B9591:
                       LDA.B $8F                            ;9B9591|A58F    |;
                       PHA                                  ;9B9593|48      |;
                       LDA.B $8D                            ;9B9594|A58D    |;
                       PHA                                  ;9B9596|48      |;
                       LDA.W #$009C                         ;9B9597|A99C00  |;
                       STA.B $8F                            ;9B959A|858F    |;
                       LDA.W #$F0D8                         ;9B959C|A9D8F0  |;
                       STA.B $8D                            ;9B959F|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B95A1|22BEC79E|;
                       PLA                                  ;9B95A5|68      |;
                       STA.B $8D                            ;9B95A6|858D    |;
                       PLA                                  ;9B95A8|68      |;
                       STA.B $8F                            ;9B95A9|858F    |;
                       JSL.L CODE_9FBF75                    ;9B95AB|2275BF9F|;
                       RTS                                  ;9B95AF|60      |;
 
          CODE_9B95B0:
                       LDA.W #$007F                         ;9B95B0|A97F00  |;
                       STA.B $12                            ;9B95B3|8512    |;
                       LDA.W #$2780                         ;9B95B5|A98027  |;
                       STA.B $10                            ;9B95B8|8510    |;
                       LDX.W #$4D80                         ;9B95BA|A2804D  |;
                       LDA.L $7E35B6                        ;9B95BD|AFB6357E|;
                       CLC                                  ;9B95C1|18      |;
                       ADC.L $7E35A8                        ;9B95C2|6FA8357E|;
                       JSL.L CODE_808EDF                    ;9B95C6|22DF8E80|;
                       LDA.W #$007E                         ;9B95CA|A97E00  |;
                       STA.B $97                            ;9B95CD|8597    |;
                       LDA.W #$313C                         ;9B95CF|A93C31  |;
                       STA.B $95                            ;9B95D2|8595    |;
                       LDA.W #$0000                         ;9B95D4|A90000  |;
                       STA.W $0D11                          ;9B95D7|8D110D  |;
                       PHA                                  ;9B95DA|48      |;
                       CMP.W $1DC1                          ;9B95DB|CDC11D  |;
                       BEQ CODE_9B95F3                      ;9B95DE|F013    |;
                       db $20,$F5,$95,$A5,$95,$18,$69,$06   ;9B95E0|        |;
                       db $00,$85,$95,$EE,$11,$0D,$68,$1A   ;9B95E8|        |;
                       db $48,$80,$E8                       ;9B95F0|        |;
 
          CODE_9B95F3:
                       PLA                                  ;9B95F3|68      |;
                       RTS                                  ;9B95F4|60      |;
                       db $A9,$01,$00,$8D,$0F,$0D,$A9,$00   ;9B95F5|        |;
                       db $20,$8D,$0D,$0D,$A0,$00,$00,$B7   ;9B95FD|        |;
                       db $95,$5A,$48,$29,$00,$F0,$EB,$4A   ;9B9605|        |;
                       db $4A,$4A,$4A,$4A,$4A,$85,$A5,$A9   ;9B960D|        |;
                       db $80,$00,$85,$8F,$A9,$E1,$D6,$85   ;9B9615|        |;
                       db $8D,$22,$23,$D3,$9E,$22,$94,$C8   ;9B961D|        |;
                       db $9E,$A9,$04,$00,$8D,$0F,$0D,$68   ;9B9625|        |;
                       db $29,$FF,$0F,$85,$A5,$22,$D7,$A3   ;9B962D|        |;
                       db $9F,$A7,$8D,$C9,$06,$00,$D0,$03   ;9B9635|        |;
                       db $EE,$0F,$0D,$22,$94,$C8,$9E,$A9   ;9B963D|        |;
                       db $0A,$00,$8D,$0F,$0D,$7A,$C8,$C8   ;9B9645|        |;
                       db $E2,$20,$B7,$95,$C2,$20,$5A,$29   ;9B964D|        |;
                       db $FF,$00,$48,$29,$F0,$00,$85,$B1   ;9B9655|        |;
                       db $64,$91,$A5,$B1,$F0,$05,$A9,$02   ;9B965D|        |;
                       db $00,$85,$91,$22,$35,$9B,$9B,$CE   ;9B9665|        |;
                       db $11,$0D,$CE,$11,$0D,$A9,$1C,$00   ;9B966D|        |;
                       db $8D,$0F,$0D,$68,$29,$0F,$00,$C9   ;9B9675|        |;
                       db $00,$00,$F0,$63,$C9,$01,$00,$F0   ;9B967D|        |;
                       db $42,$C9,$02,$00,$F0,$73,$C9,$03   ;9B9685|        |;
                       db $00,$F0,$1C,$A5,$8F,$48,$A5,$8D   ;9B968D|        |;
                       db $48,$A9,$9C,$00,$85,$8F,$A9,$E7   ;9B9695|        |;
                       db $F0,$85,$8D,$22,$94,$C8,$9E,$68   ;9B969D|        |;
                       db $85,$8D,$68,$85,$8F,$80,$52,$A5   ;9B96A5|        |;
                       db $8F,$48,$A5,$8D,$48,$A9,$9C,$00   ;9B96AD|        |;
                       db $85,$8F,$A9,$EC,$F0,$85,$8D,$22   ;9B96B5|        |;
                       db $94,$C8,$9E,$68,$85,$8D,$68,$85   ;9B96BD|        |;
                       db $8F,$80,$36,$A5,$8F,$48,$A5,$8D   ;9B96C5|        |;
                       db $48,$A9,$9C,$00,$85,$8F,$A9,$F0   ;9B96CD|        |;
                       db $F0,$85,$8D,$22,$94,$C8,$9E,$68   ;9B96D5|        |;
                       db $85,$8D,$68,$85,$8F,$80,$1A,$A5   ;9B96DD|        |;
                       db $8F,$48,$A5,$8D,$48,$A9,$9C,$00   ;9B96E5|        |;
                       db $85,$8F,$A9,$F4,$F0,$85,$8D,$22   ;9B96ED|        |;
                       db $94,$C8,$9E,$68,$85,$8D,$68,$85   ;9B96F5|        |;
                       db $8F,$7A,$C8,$E2,$20,$B7,$95,$C2   ;9B96FD|        |;
                       db $20,$5A,$29,$FF,$00,$85,$A5,$A9   ;9B9705|        |;
                       db $0E,$00,$8D,$0F,$0D,$22,$27,$C4   ;9B970D|        |;
                       db $9F,$22,$94,$C8,$9E,$7A,$C8,$A9   ;9B9715|        |;
                       db $00,$24,$8D,$0D,$0D,$E2,$20,$B7   ;9B971D|        |;
                       db $95,$C2,$20,$5A,$EE,$11,$0D,$29   ;9B9725|        |;
                       db $FF,$00,$C9,$FF,$00,$F0,$10,$85   ;9B972D|        |;
                       db $A5,$A9,$10,$00,$8D,$0F,$0D,$22   ;9B9735|        |;
                       db $27,$C4,$9F,$22,$94,$C8,$9E,$7A   ;9B973D|        |;
                       db $C8,$E2,$20,$B7,$95,$C2,$20,$EE   ;9B9745|        |;
                       db $11,$0D,$29,$FF,$00,$C9,$FF,$00   ;9B974D|        |;
                       db $F0,$10,$85,$A5,$A9,$10,$00,$8D   ;9B9755|        |;
                       db $0F,$0D,$22,$27,$C4,$9F,$22,$94   ;9B975D|        |;
                       db $C8,$9E,$60                       ;9B9765|        |;
 
          CODE_9B9768:
                       LDA.W $1C9A                          ;9B9768|AD9A1C  |;
                       STA.L $7E3454                        ;9B976B|8F54347E|;
                       LDA.W $1C98                          ;9B976F|AD981C  |;
                       STA.L $7E3452                        ;9B9772|8F52347E|;
                       JSL.L CODE_9DD9AD                    ;9B9776|22ADD99D|;
                       LDA.W #$0000                         ;9B977A|A90000  |;
                       STA.W $1DB9                          ;9B977D|8DB91D  |;
                       STA.W $1DBD                          ;9B9780|8DBD1D  |;
                       STA.W $1DC1                          ;9B9783|8DC11D  |;
                       LDX.W #$0058                         ;9B9786|A25800  |;
                       LDY.W #$0018                         ;9B9789|A01800  |;
                       LDA.W #$009C                         ;9B978C|A99C00  |;
                       STA.B $8F                            ;9B978F|858F    |;
                       LDA.W #$F0F9                         ;9B9791|A9F9F0  |;
                       STA.B $8D                            ;9B9794|858D    |;
                       JSL.L CODE_9C936C                    ;9B9796|226C939C|;
                       JSL.L CODE_80AFDE                    ;9B979A|22DEAF80|;
                       LDA.W #$FFFF                         ;9B979E|A9FFFF  |;
                       STA.L $7F75C2                        ;9B97A1|8FC2757F|;
                       LDA.W #$2BFF                         ;9B97A5|A9FF2B  |;
                       STA.L $7F7502                        ;9B97A8|8F02757F|;
                       LDA.W #$6F7B                         ;9B97AC|A97B6F  |;
                       STA.L $7F7522                        ;9B97AF|8F22757F|;
                       JSL.L CODE_9DE0D4                    ;9B97B3|22D4E09D|;
                       LDA.B $8F                            ;9B97B7|A58F    |;
                       PHA                                  ;9B97B9|48      |;
                       LDA.B $8D                            ;9B97BA|A58D    |;
                       PHA                                  ;9B97BC|48      |;
                       LDA.W #$009C                         ;9B97BD|A99C00  |;
                       STA.B $8F                            ;9B97C0|858F    |;
                       LDA.W #$F104                         ;9B97C2|A904F1  |;
                       STA.B $8D                            ;9B97C5|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B97C7|22BEC79E|;
                       PLA                                  ;9B97CB|68      |;
                       STA.B $8D                            ;9B97CC|858D    |;
                       PLA                                  ;9B97CE|68      |;
                       STA.B $8F                            ;9B97CF|858F    |;
                       LDA.W $163C                          ;9B97D1|AD3C16  |;
                       STA.W $1DC1                          ;9B97D4|8DC11D  |;
                       LDA.W $1DC1                          ;9B97D7|ADC11D  |;
                       CMP.W #$0006                         ;9B97DA|C90600  |;
                       BCC CODE_9B97E3                      ;9B97DD|9004    |;
                       db $22,$5D,$9A,$9B                   ;9B97DF|        |;
 
          CODE_9B97E3:
                       JSR.W CODE_9B9917                    ;9B97E3|201799  |;
                       JSL.L CODE_9DD923                    ;9B97E6|2223D99D|;
                       LDA.W #$0058                         ;9B97EA|A95800  |;
                       LDX.W #$00D0                         ;9B97ED|A2D000  |;
                       LDY.W #$00E0                         ;9B97F0|A0E000  |;
                       JSL.L CODE_9BCDF8                    ;9B97F3|22F8CD9B|;
                       JSL.L CODE_9DDFF6                    ;9B97F7|22F6DF9D|;
                       JSL.L CODE_8086BD                    ;9B97FB|22BD8680|;
                       LDA.W #$0005                         ;9B97FF|A90500  |;
                       STA.W $1DC5                          ;9B9802|8DC51D  |;
                       JSR.W CODE_9B98C9                    ;9B9805|20C998  |;
 
          CODE_9B9808:
                       JSL.L CODE_9B851F                    ;9B9808|221F859B|;
                       JSL.L CODE_9B852C                    ;9B980C|222C859B|;
                       LDA.B $B1                            ;9B9810|A5B1    |;
                       BIT.W #$1000                         ;9B9812|890010  |;
                       BEQ CODE_9B9818                      ;9B9815|F001    |;
                       RTL                                  ;9B9817|6B      |;
 
          CODE_9B9818:
                       BIT.W #$0800                         ;9B9818|890008  |;
                       BNE UNREACH_9B987B                   ;9B981B|D05E    |;
                       BIT.W #$0400                         ;9B981D|890004  |;
                       BNE UNREACH_9B9828                   ;9B9820|D006    |;
                       JSL.L CODE_808583                    ;9B9822|22838580|;
                       BRA CODE_9B9808                      ;9B9826|80E0    |;
 
       UNREACH_9B9828:
                       db $A9,$06,$00,$8D,$C5,$1D,$20,$C9   ;9B9828|        |;
                       db $98,$A9,$05,$00,$8D,$C5,$1D,$AD   ;9B9830|        |;
                       db $BD,$1D,$18,$69,$05,$00,$CD,$C1   ;9B9838|        |;
                       db $1D,$10,$DF,$38,$E9,$04,$00,$8D   ;9B9840|        |;
                       db $BD,$1D,$A9,$01,$00,$8D,$F3,$1D   ;9B9848|        |;
                       db $A9,$18,$00,$8D,$F5,$1D,$22,$83   ;9B9850|        |;
                       db $85,$80,$EE,$F3,$1D,$EE,$F3,$1D   ;9B9858|        |;
                       db $AD,$F3,$1D,$C9,$17,$00,$D0,$EE   ;9B9860|        |;
                       db $22,$B2,$9A,$9B,$20,$C9,$98,$22   ;9B9868|        |;
                       db $83,$85,$80,$A9,$FF,$FF,$8D,$F3   ;9B9870|        |;
                       db $1D,$80,$8D                       ;9B9878|        |;
 
       UNREACH_9B987B:
                       db $AD,$BD,$1D,$3A,$30,$A1,$8D,$BD   ;9B987B|        |;
                       db $1D,$A9,$06,$00,$8D,$C5,$1D,$20   ;9B9883|        |;
                       db $C9,$98,$22,$83,$85,$80,$A9,$15   ;9B988B|        |;
                       db $00,$8D,$F3,$1D,$A9,$18,$00,$8D   ;9B9893|        |;
                       db $F5,$1D,$22,$83,$85,$80,$CE,$F3   ;9B989B|        |;
                       db $1D,$CE,$F3,$1D,$AD,$F3,$1D,$C9   ;9B98A3|        |;
                       db $01,$00,$D0,$EE,$22,$B2,$9A,$9B   ;9B98AB|        |;
                       db $A9,$05,$00,$8D,$C5,$1D,$20,$C9   ;9B98B3|        |;
                       db $98,$22,$83,$85,$80,$A9,$FF,$FF   ;9B98BB|        |;
                       db $8D,$F3,$1D,$4C,$08,$98           ;9B98C3|        |;
 
          CODE_9B98C9:
                       LDA.W $1DC1                          ;9B98C9|ADC11D  |;
                       CMP.W #$0000                         ;9B98CC|C90000  |;
                       BEQ CODE_9B98F8                      ;9B98CF|F027    |;
                       db $AD,$BD,$1D,$0A,$6D,$BD,$1D,$EB   ;9B98D1|        |;
                       db $4A,$4A,$69,$80,$27,$85,$0C,$A9   ;9B98D9|        |;
                       db $7F,$00,$85,$0E,$AD,$C5,$1D,$0A   ;9B98E1|        |;
                       db $6D,$C5,$1D,$EB,$4A,$4A,$AA,$A0   ;9B98E9|        |;
                       db $60,$01,$22,$1F,$89,$80,$60       ;9B98F1|        |;
 
          CODE_9B98F8:
                       LDA.B $8F                            ;9B98F8|A58F    |;
                       PHA                                  ;9B98FA|48      |;
                       LDA.B $8D                            ;9B98FB|A58D    |;
                       PHA                                  ;9B98FD|48      |;
                       LDA.W #$009C                         ;9B98FE|A99C00  |;
                       STA.B $8F                            ;9B9901|858F    |;
                       LDA.W #$F127                         ;9B9903|A927F1  |;
                       STA.B $8D                            ;9B9906|858D    |;
                       JSL.L CODE_9EC7BE                    ;9B9908|22BEC79E|;
                       PLA                                  ;9B990C|68      |;
                       STA.B $8D                            ;9B990D|858D    |;
                       PLA                                  ;9B990F|68      |;
                       STA.B $8F                            ;9B9910|858F    |;
                       JSL.L CODE_9FBF75                    ;9B9912|2275BF9F|;
                       RTS                                  ;9B9916|60      |;
 
          CODE_9B9917:
                       LDA.W #$007F                         ;9B9917|A97F00  |;
                       STA.B $12                            ;9B991A|8512    |;
                       LDA.W #$2780                         ;9B991C|A98027  |;
                       STA.B $10                            ;9B991F|8510    |;
                       LDX.W #$4D80                         ;9B9921|A2804D  |;
                       LDA.L $7E35B6                        ;9B9924|AFB6357E|;
                       CLC                                  ;9B9928|18      |;
                       ADC.L $7E35A8                        ;9B9929|6FA8357E|;
                       JSL.L CODE_808EDF                    ;9B992D|22DF8E80|;
                       LDA.W #$0000                         ;9B9931|A90000  |;
                       STA.B $97                            ;9B9934|8597    |;
                       LDA.W #$163E                         ;9B9936|A93E16  |;
                       STA.B $95                            ;9B9939|8595    |;
                       LDA.W #$0000                         ;9B993B|A90000  |;
                       STA.W $0D11                          ;9B993E|8D110D  |;
                       PHA                                  ;9B9941|48      |;
                       CMP.W $1DC1                          ;9B9942|CDC11D  |;
                       BEQ CODE_9B995D                      ;9B9945|F016    |;
                       db $20,$5F,$99,$A5,$95,$18,$69,$04   ;9B9947|        |;
                       db $00,$85,$95,$EE,$11,$0D,$EE,$11   ;9B994F|        |;
                       db $0D,$68,$1A,$48,$80,$E5           ;9B9957|        |;
 
          CODE_9B995D:
                       PLA                                  ;9B995D|68      |;
                       RTS                                  ;9B995E|60      |;
                       db $A9,$01,$00,$8D,$0F,$0D,$A9,$00   ;9B995F|        |;
                       db $20,$8D,$0D,$0D,$A0,$00,$00,$B7   ;9B9967|        |;
                       db $95,$5A,$48,$29,$00,$F0,$EB,$4A   ;9B996F|        |;
                       db $4A,$4A,$4A,$4A,$4A,$85,$A5,$A9   ;9B9977|        |;
                       db $80,$00,$85,$8F,$A9,$E1,$D6,$85   ;9B997F|        |;
                       db $8D,$22,$23,$D3,$9E,$22,$94,$C8   ;9B9987|        |;
                       db $9E,$A9,$04,$00,$8D,$0F,$0D,$68   ;9B998F|        |;
                       db $29,$FF,$0F,$85,$A5,$22,$D7,$A3   ;9B9997|        |;
                       db $9F,$A7,$8D,$C9,$06,$00,$D0,$03   ;9B999F|        |;
                       db $EE,$0F,$0D,$22,$94,$C8,$9E,$A9   ;9B99A7|        |;
                       db $0A,$00,$8D,$0F,$0D,$7A,$C8,$C8   ;9B99AF|        |;
                       db $E2,$20,$B7,$95,$C2,$20,$5A,$29   ;9B99B7|        |;
                       db $FF,$00,$48,$29,$80,$00,$85,$B1   ;9B99BF|        |;
                       db $64,$91,$A5,$B1,$F0,$05,$A9,$02   ;9B99C7|        |;
                       db $00,$85,$91,$22,$35,$9B,$9B,$CE   ;9B99CF|        |;
                       db $11,$0D,$CE,$11,$0D,$A9,$0E,$00   ;9B99D7|        |;
                       db $8D,$0F,$0D,$68,$29,$7F,$00,$85   ;9B99DF|        |;
                       db $A5,$22,$27,$C4,$9F,$22,$94,$C8   ;9B99E7|        |;
                       db $9E,$7A,$C8,$E2,$20,$B7,$95,$C2   ;9B99EF|        |;
                       db $20,$29,$FF,$00,$A8,$A9,$EB,$D3   ;9B99F7|        |;
                       db $85,$8D,$A9,$80,$00,$85,$8F,$B7   ;9B99FF|        |;
                       db $8D,$18,$65,$8D,$85,$8D,$A9,$1D   ;9B9A07|        |;
                       db $00,$8D,$0F,$0D,$A7,$8D,$29,$FF   ;9B9A0F|        |;
                       db $00,$85,$A5,$A5,$8D,$48,$A5,$8F   ;9B9A17|        |;
                       db $48,$A9,$02,$00,$85,$A9,$22,$23   ;9B9A1F|        |;
                       db $C6,$9F,$22,$94,$C8,$9E,$68,$85   ;9B9A27|        |;
                       db $8F,$68,$85,$8D,$A9,$00,$24,$8D   ;9B9A2F|        |;
                       db $0D,$0D,$EE,$11,$0D,$A9,$10,$00   ;9B9A37|        |;
                       db $8D,$0F,$0D,$E6,$8D,$E6,$8D,$A7   ;9B9A3F|        |;
                       db $8D,$85,$A5,$A8,$C6,$8D,$B7,$8D   ;9B9A47|        |;
                       db $E6,$8D,$29,$FF,$00,$D0,$02,$C6   ;9B9A4F|        |;
                       db $A5,$22,$94,$C8,$9E,$60,$A5,$8F   ;9B9A57|        |;
                       db $48,$A5,$8D,$48,$A9,$9C,$00,$85   ;9B9A5F|        |;
                       db $8F,$A9,$38,$F1,$85,$8D,$22,$BE   ;9B9A67|        |;
                       db $C7,$9E,$68,$85,$8D,$68,$85,$8F   ;9B9A6F|        |;
                       db $A9,$0E,$00,$85,$A5,$A9,$03,$00   ;9B9A77|        |;
                       db $85,$A9,$22,$DD,$80,$9D,$A9,$00   ;9B9A7F|        |;
                       db $24,$8D,$0D,$0D,$A9,$0A,$00,$8D   ;9B9A87|        |;
                       db $0F,$0D,$A9,$07,$00,$8D,$11,$0D   ;9B9A8F|        |;
                       db $A5,$8F,$48,$A5,$8D,$48,$A9,$9C   ;9B9A97|        |;
                       db $00,$85,$8F,$A9,$3D,$F1,$85,$8D   ;9B9A9F|        |;
                       db $22,$BE,$C7,$9E,$68,$85,$8D,$68   ;9B9AA7|        |;
                       db $85,$8F,$6B,$AD,$BD,$1D,$18,$69   ;9B9AAF|        |;
                       db $05,$00,$CD,$C1,$1D,$10,$1C,$A5   ;9B9AB7|        |;
                       db $8F,$48,$A5,$8D,$48,$A9,$9C,$00   ;9B9ABF|        |;
                       db $85,$8F,$A9,$4B,$F1,$85,$8D,$22   ;9B9AC7|        |;
                       db $BE,$C7,$9E,$68,$85,$8D,$68,$85   ;9B9ACF|        |;
                       db $8F,$80,$1A,$A5,$8F,$48,$A5,$8D   ;9B9AD7|        |;
                       db $48,$A9,$9C,$00,$85,$8F,$A9,$51   ;9B9ADF|        |;
                       db $F1,$85,$8D,$22,$BE,$C7,$9E,$68   ;9B9AE7|        |;
                       db $85,$8D,$68,$85,$8F,$AD,$BD,$1D   ;9B9AEF|        |;
                       db $3A,$30,$1C,$A5,$8F,$48,$A5,$8D   ;9B9AF7|        |;
                       db $48,$A9,$9C,$00,$85,$8F,$A9,$57   ;9B9AFF|        |;
                       db $F1,$85,$8D,$22,$BE,$C7,$9E,$68   ;9B9B07|        |;
                       db $85,$8D,$68,$85,$8F,$80,$1A,$A5   ;9B9B0F|        |;
                       db $8F,$48,$A5,$8D,$48,$A9,$9C,$00   ;9B9B17|        |;
                       db $85,$8F,$A9,$5D,$F1,$85,$8D,$22   ;9B9B1F|        |;
                       db $BE,$C7,$9E,$68,$85,$8D,$68,$85   ;9B9B27|        |;
                       db $8F,$22,$75,$BF,$9F,$6B,$AD,$0F   ;9B9B2F|        |;
                       db $0D,$48,$AD,$DC,$1C,$85,$8D,$A9   ;9B9B37|        |;
                       db $9C,$00,$85,$8F,$A5,$B1,$F0,$05   ;9B9B3F|        |;
                       db $AD,$DE,$1C,$85,$8D,$A0,$04,$00   ;9B9B47|        |;
                       db $B7,$8D,$18,$65,$8D,$85,$8D,$A7   ;9B9B4F|        |;
                       db $8D,$65,$8D,$85,$8D,$22,$94,$C8   ;9B9B57|        |;
                       db $9E,$68,$8D,$0F,$0D,$EE,$11,$0D   ;9B9B5F|        |;
                       db $EE,$11,$0D,$6B                   ;9B9B67|        |;
 
          CODE_9B9B6B:
                       LDA.W period                         ;9B9B6B|AD3016  |;
                       CMP.W #$0003                         ;9B9B6E|C90300  |;
                       BEQ CODE_9B9BA4                      ;9B9B71|F031    |;
                       STZ.B $00                            ;9B9B73|6400    |;
                       LDA.L $7E34BC                        ;9B9B75|AFBC347E|;
                       CMP.W #$0000                         ;9B9B79|C90000  |;
                       BEQ CODE_9B9B9B                      ;9B9B7C|F01D    |;
                       CMP.W #$0004                         ;9B9B7E|C90400  |;
                       BEQ CODE_9B9B9B                      ;9B9B81|F018    |;
                       INC.B $00                            ;9B9B83|E600    |;
                       LDA.L $7E35D4                        ;9B9B85|AFD4357E|;
                       CMP.W #$0002                         ;9B9B89|C90200  |;
                       BMI CODE_9B9B9B                      ;9B9B8C|300D    |;
                       db $E6,$00,$AF,$D4,$35,$7E,$C9,$03   ;9B9B8E|        |;
                       db $00,$30,$02,$E6,$00               ;9B9B96|        |;
 
          CODE_9B9B9B:
                       LDA.B $00                            ;9B9B9B|A500    |;
                       ASL A                                ;9B9B9D|0A      |;
                       ASL A                                ;9B9B9E|0A      |;
                       ASL A                                ;9B9B9F|0A      |;
                       ASL A                                ;9B9BA0|0A      |;
                       STA.W $19BE                          ;9B9BA1|8DBE19  |;
 
          CODE_9B9BA4:
                       RTL                                  ;9B9BA4|6B      |;
 
          CODE_9B9BA5:
                       PHX                                  ;9B9BA5|DA      |;
                       PHY                                  ;9B9BA6|5A      |;
                       LDA.W $19BE                          ;9B9BA7|ADBE19  |;
                       ASL A                                ;9B9BAA|0A      |;
                       ASL A                                ;9B9BAB|0A      |;
                       STZ.B $A7                            ;9B9BAC|64A7    |;
                       STA.B $A5                            ;9B9BAE|85A5    |;
                       JSL.L CODE_9BB3BE                    ;9B9BB0|22BEB39B|;
                       LDA.B $A5                            ;9B9BB4|A5A5    |;
                       CLC                                  ;9B9BB6|18      |;
                       ADC.W #$0041                         ;9B9BB7|694100  |;
                       CMP.W #$0080                         ;9B9BBA|C98000  |;
                       BCC CODE_9B9BC2                      ;9B9BBD|9003    |;
                       db $A9,$80,$00                       ;9B9BBF|        |;
 
          CODE_9B9BC2:
                       STA.B $A5                            ;9B9BC2|85A5    |;
                       CMP.W $19C4                          ;9B9BC4|CDC419  |;
                       BMI CODE_9B9BCC                      ;9B9BC7|3003    |;
                       STA.W $19C4                          ;9B9BC9|8DC419  |;
 
          CODE_9B9BCC:
                       LDA.W $19CA                          ;9B9BCC|ADCA19  |;
                       CLC                                  ;9B9BCF|18      |;
                       ADC.B $A5                            ;9B9BD0|65A5    |;
                       STA.W $19CA                          ;9B9BD2|8DCA19  |;
                       BCC CODE_9B9BDA                      ;9B9BD5|9003    |;
                       db $EE,$CC,$19                       ;9B9BD7|        |;
 
          CODE_9B9BDA:
                       INC.W $19C8                          ;9B9BDA|EEC819  |;
                       LDA.W $19CC                          ;9B9BDD|ADCC19  |;
                       STA.B $0A                            ;9B9BE0|850A    |;
                       LDA.W $19CA                          ;9B9BE2|ADCA19  |;
                       STA.B $08                            ;9B9BE5|8508    |;
                       LDA.W $19C8                          ;9B9BE7|ADC819  |;
                       STA.B $04                            ;9B9BEA|8504    |;
                       JSL.L CODE_80923F                    ;9B9BEC|223F9280|;
                       LDA.B $00                            ;9B9BF0|A500    |;
                       STA.W $19C6                          ;9B9BF2|8DC619  |;
                       PLY                                  ;9B9BF5|7A      |;
                       PLX                                  ;9B9BF6|FA      |;
                       RTL                                  ;9B9BF7|6B      |;
 
          CODE_9B9BF8:
                       LDA.B $A5                            ;9B9BF8|A5A5    |;
                       PHA                                  ;9B9BFA|48      |;
                       JSL.L CODE_9B9BA5                    ;9B9BFB|22A59B9B|;
                       LDA.B $A5                            ;9B9BFF|A5A5    |;
                       STA.W $19C2                          ;9B9C01|8DC219  |;
                       CMP.W #$0069                         ;9B9C04|C96900  |;
                       BMI CODE_9B9C16                      ;9B9C07|300D    |;
                       db $C9,$6E,$00,$30,$14,$A9,$01,$00   ;9B9C09|        |;
                       db $8D,$C0,$19,$80,$0C               ;9B9C11|        |;
 
          CODE_9B9C16:
                       LDA.W $19C0                          ;9B9C16|ADC019  |;
                       BEQ CODE_9B9C22                      ;9B9C19|F007    |;
                       db $22,$9F,$A8,$9B,$9C,$C0,$19       ;9B9C1B|        |;
 
          CODE_9B9C22:
                       PLA                                  ;9B9C22|68      |;
                       STA.B $A5                            ;9B9C23|85A5    |;
                       RTL                                  ;9B9C25|6B      |;
 
         DATA8_9B9C26:
                       db $50,$9C,$72,$9C,$90,$9C,$AE,$9C   ;9B9C26|        |;
                       db $CC,$9C,$EA,$9C,$10,$9D,$36,$9D   ;9B9C2E|        |;
                       db $58,$9D,$7A,$9D,$9C,$9D,$C2,$9D   ;9B9C36|        |;
                       db $E4,$9D,$0A,$9E,$32,$9E,$56,$9E   ;9B9C3E|        |;
                       db $78,$9E,$A4,$9E                   ;9B9C46|        |;
                       db $CE,$9E,$08,$9F,$42,$9F           ;9B9C4A|        |;
                       db $02,$00,$01,$00,$01,$00,$05,$00   ;9B9C50|        |;
                       db $02,$00,$60,$9C,$66,$9C,$6C,$9C   ;9B9C58|        |;
                       db $01,$00,$02,$00,$FF,$FF,$01,$00   ;9B9C60|        |;
                       db $02,$00,$FF,$FF,$01,$00,$00,$00   ;9B9C68|        |;
                       db $FF,$FF,$01,$00,$03,$00,$0D,$00   ;9B9C70|        |;
                       db $06,$00,$01,$00,$82,$9C,$8C,$9C   ;9B9C78|        |;
                       db $8E,$9C,$01,$00,$00,$00,$01,$00   ;9B9C80|        |;
                       db $00,$00,$FF,$FF,$FF,$FF,$FF,$FF   ;9B9C88|        |;
                       db $01,$00,$04,$00,$0F,$00,$06,$00   ;9B9C90|        |;
                       db $01,$00,$A0,$9C,$AA,$9C,$AC,$9C   ;9B9C98|        |;
                       db $01,$00,$00,$00,$01,$00,$00,$00   ;9B9CA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$01,$00   ;9B9CA8|        |;
                       db $05,$00,$11,$00,$06,$00,$01,$00   ;9B9CB0|        |;
                       db $BE,$9C,$C8,$9C,$CA,$9C,$01,$00   ;9B9CB8|        |;
                       db $00,$00,$01,$00,$00,$00,$FF,$FF   ;9B9CC0|        |;
                       db $FF,$FF,$FF,$FF,$01,$00,$06,$00   ;9B9CC8|        |;
                       db $13,$00,$06,$00,$01,$00,$DC,$9C   ;9B9CD0|        |;
                       db $E6,$9C,$E8,$9C,$01,$00,$00,$00   ;9B9CD8|        |;
                       db $01,$00,$00,$00,$FF,$FF,$FF,$FF   ;9B9CE0|        |;
                       db $FF,$FF,$08,$00,$07,$00,$15,$00   ;9B9CE8|        |;
                       db $05,$00,$04,$00,$FA,$9C,$02,$9D   ;9B9CF0|        |;
                       db $08,$9D,$01,$00,$02,$00,$03,$00   ;9B9CF8|        |;
                       db $FF,$FF,$02,$00,$03,$00,$FF,$FF   ;9B9D00|        |;
                       db $02,$00,$01,$00,$00,$00,$FF,$FF   ;9B9D08|        |;
                       db $04,$00,$0F,$00,$4D,$00,$05,$00   ;9B9D10|        |;
                       db $03,$00,$20,$9D,$28,$9D,$2E,$9D   ;9B9D18|        |;
                       db $01,$00,$02,$00,$03,$00,$FF,$FF   ;9B9D20|        |;
                       db $02,$00,$03,$00,$FF,$FF,$02,$00   ;9B9D28|        |;
                       db $01,$00,$00,$00,$FF,$FF,$03,$00   ;9B9D30|        |;
                       db $13,$00,$5D,$00,$05,$00,$02,$00   ;9B9D38|        |;
                       db $46,$9D,$4C,$9D,$52,$9D,$01,$00   ;9B9D40|        |;
                       db $02,$00,$FF,$FF,$01,$00,$02,$00   ;9B9D48|        |;
                       db $FF,$FF,$01,$00,$00,$00,$FF,$FF   ;9B9D50|        |;
                       db $02,$00,$16,$00,$66,$00,$05,$00   ;9B9D58|        |;
                       db $01,$00,$68,$9D,$6E,$9D,$74,$9D   ;9B9D60|        |;
                       db $01,$00,$02,$00,$FF,$FF,$01,$00   ;9B9D68|        |;
                       db $02,$00,$FF,$FF,$01,$00,$00,$00   ;9B9D70|        |;
                       db $FF,$FF,$02,$00,$18,$00,$6C,$00   ;9B9D78|        |;
                       db $05,$00,$02,$00,$8A,$9D,$98,$9D   ;9B9D80|        |;
                       db $9A,$9D,$01,$00,$02,$00,$02,$00   ;9B9D88|        |;
                       db $02,$00,$01,$00,$00,$00,$FF,$FF   ;9B9D90|        |;
                       db $FF,$FF,$FF,$FF,$03,$00,$1A,$00   ;9B9D98|        |;
                       db $72,$00,$05,$00,$02,$00,$AC,$9D   ;9B9DA0|        |;
                       db $BE,$9D,$C0,$9D,$01,$00,$02,$00   ;9B9DA8|        |;
                       db $01,$00,$02,$00,$01,$00,$02,$00   ;9B9DB0|        |;
                       db $01,$00,$00,$00,$FF,$FF,$FF,$FF   ;9B9DB8|        |;
                       db $FF,$FF,$03,$00,$1D,$00,$7B,$00   ;9B9DC0|        |;
                       db $05,$00,$05,$00,$D2,$9D,$E0,$9D   ;9B9DC8|        |;
                       db $E2,$9D,$01,$00,$02,$00,$01,$00   ;9B9DD0|        |;
                       db $02,$00,$01,$00,$00,$00,$FF,$FF   ;9B9DD8|        |;
                       db $FF,$FF,$FF,$FF,$03,$00,$20,$00   ;9B9DE0|        |;
                       db $84,$00,$05,$00,$04,$00,$F4,$9D   ;9B9DE8|        |;
                       db $06,$9E,$08,$9E,$01,$00,$02,$00   ;9B9DF0|        |;
                       db $01,$00,$02,$00,$01,$00,$02,$00   ;9B9DF8|        |;
                       db $01,$00,$00,$00,$FF,$FF,$FF,$FF   ;9B9E00|        |;
                       db $FF,$FF,$09,$00,$23,$00,$8D,$00   ;9B9E08|        |;
                       db $04,$00,$05,$00,$1A,$9E,$2E,$9E   ;9B9E10|        |;
                       db $30,$9E,$01,$00,$02,$00,$03,$00   ;9B9E18|        |;
                       db $02,$00,$03,$00,$02,$00,$03,$00   ;9B9E20|        |;
                       db $01,$00,$00,$00,$FF,$FF,$FF,$FF   ;9B9E28|        |;
                       db $FF,$FF,$06,$00,$2C,$00,$B1,$00   ;9B9E30|        |;
                       db $04,$00,$04,$00,$42,$9E,$52,$9E   ;9B9E38|        |;
                       db $54,$9E,$01,$00,$02,$00,$03,$00   ;9B9E40|        |;
                       db $02,$00,$03,$00,$01,$00,$00,$00   ;9B9E48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$04,$00   ;9B9E50|        |;
                       db $32,$00,$C9,$00,$04,$00,$03,$00   ;9B9E58|        |;
                       db $66,$9E,$74,$9E,$76,$9E,$01,$00   ;9B9E60|        |;
                       db $02,$00,$01,$00,$02,$00,$01,$00   ;9B9E68|        |;
                       db $00,$00,$FF,$FF,$FF,$FF,$FF,$FF   ;9B9E70|        |;
                       db $04,$00,$36,$00,$D5,$00,$02,$00   ;9B9E78|        |;
                       db $03,$00,$88,$9E,$92,$9E,$96,$9E   ;9B9E80|        |;
                       db $01,$00,$02,$00,$03,$00,$04,$00   ;9B9E88|        |;
                       db $FF,$FF,$04,$00,$FF,$FF,$04,$00   ;9B9E90|        |;
                       db $04,$00,$04,$00,$04,$00,$04,$00   ;9B9E98|        |;
                       db $00,$00,$FF,$FF,$06,$00,$3A,$00   ;9B9EA0|        |;
                       db $E9,$00,$02,$00,$03,$00,$B4,$9E   ;9B9EA8|        |;
                       db $C8,$9E,$CA,$9E,$01,$00,$02,$00   ;9B9EB0|        |;
                       db $03,$00,$03,$00,$03,$00,$03,$00   ;9B9EB8|        |;
                       db $03,$00,$03,$00,$03,$00,$FF,$FF   ;9B9EC0|        |;
                       db $FF,$FF,$00,$00,$FF,$FF,$02,$00   ;9B9EC8|        |;
                       db $01,$00,$01,$00,$03,$00,$02,$00   ;9B9ED0|        |;
                       db $DE,$9E,$F6,$9E,$04,$9F,$04,$00   ;9B9ED8|        |;
                       db $04,$00,$03,$00,$04,$00,$05,$00   ;9B9EE0|        |;
                       db $04,$00,$03,$00,$04,$00,$05,$00   ;9B9EE8|        |;
                       db $05,$00,$05,$00,$FF,$FF,$04,$00   ;9B9EF0|        |;
                       db $03,$00,$04,$00,$05,$00,$05,$00   ;9B9EF8|        |;
                       db $05,$00,$FF,$FF,$00,$00,$FF,$FF   ;9B9F00|        |;
                       db $08,$00,$07,$00,$15,$00,$03,$00   ;9B9F08|        |;
                       db $02,$00,$18,$9F,$30,$9F,$3E,$9F   ;9B9F10|        |;
                       db $05,$00,$05,$00,$04,$00,$05,$00   ;9B9F18|        |;
                       db $06,$00,$05,$00,$04,$00,$05,$00   ;9B9F20|        |;
                       db $06,$00,$06,$00,$06,$00,$FF,$FF   ;9B9F28|        |;
                       db $05,$00,$04,$00,$05,$00,$06,$00   ;9B9F30|        |;
                       db $06,$00,$06,$00,$FF,$FF,$00,$00   ;9B9F38|        |;
                       db $FF,$FF,$02,$00,$40,$00,$01,$01   ;9B9F40|        |;
                       db $03,$00,$00,$00,$52,$9F,$68,$9F   ;9B9F48|        |;
                       db $76,$9F,$02,$00,$01,$00,$02,$00   ;9B9F50|        |;
                       db $03,$00,$02,$00,$01,$00,$02,$00   ;9B9F58|        |;
                       db $03,$00,$03,$00,$03,$00,$FF,$FF   ;9B9F60|        |;
                       db $02,$00,$01,$00,$02,$00,$03,$00   ;9B9F68|        |;
                       db $03,$00,$03,$00,$FF,$FF,$00,$00   ;9B9F70|        |;
                       db $FF,$FF                           ;9B9F78|        |;
 
          CODE_9B9F7A:
                       LDA.B $81                            ;9B9F7A|A581    |;
                       BEQ CODE_9B9F91                      ;9B9F7C|F013    |;
                       CMP.W #$003C                         ;9B9F7E|C93C00  |;
                       BCC CODE_9B9F86                      ;9B9F81|9003    |;
                       LDA.W #$003C                         ;9B9F83|A93C00  |;
 
          CODE_9B9F86:
                       SEC                                  ;9B9F86|38      |;
                       SBC.B $C1                            ;9B9F87|E5C1    |;
                       BPL CODE_9B9F8E                      ;9B9F89|1003    |;
                       LDA.W #$0000                         ;9B9F8B|A90000  |;
 
          CODE_9B9F8E:
                       STA.B $81                            ;9B9F8E|8581    |;
                       RTL                                  ;9B9F90|6B      |;
 
          CODE_9B9F91:
                       LDA.L $7E35E0                        ;9B9F91|AFE0357E|;
                       CMP.W #$0480                         ;9B9F95|C98004  |;
                       BCC CODE_9B9F9D                      ;9B9F98|9003    |;
                       LDA.W #$0480                         ;9B9F9A|A98004  |;
 
          CODE_9B9F9D:
                       SEC                                  ;9B9F9D|38      |;
                       SBC.W $0CDD                          ;9B9F9E|EDDD0C  |;
                       STA.L $7E35E0                        ;9B9FA1|8FE0357E|;
                       BPL CODE_9B9FAE                      ;9B9FA5|1007    |;
                       LDA.W #$0000                         ;9B9FA7|A90000  |;
                       STA.L $7E35E0                        ;9B9FAA|8FE0357E|;
 
          CODE_9B9FAE:
                       RTL                                  ;9B9FAE|6B      |;
 
          CODE_9B9FAF:
                       LDA.W $15D8                          ;9B9FAF|ADD815  |;
                       AND.W #$0800                         ;9B9FB2|290008  |;
                       BEQ CODE_9B9FBD                      ;9B9FB5|F006    |;
                       LDA.W $0CB9                          ;9B9FB7|ADB90C  |;
                       BNE CODE_9B9FBD                      ;9B9FBA|D001    |;
                       RTL                                  ;9B9FBC|6B      |;
 
          CODE_9B9FBD:
                       JSL.L CODE_9BA1A1                    ;9B9FBD|22A1A19B|;
                       LDX.W #$0022                         ;9B9FC1|A22200  |;
                       LDA.W $1C98                          ;9B9FC4|AD981C  |;
                       CMP.W #$0013                         ;9B9FC7|C91300  |;
                       BNE CODE_9B9FDC                      ;9B9FCA|D010    |;
                       db $AD,$53,$0C,$D0,$08,$AD,$C3,$0C   ;9B9FCC|        |;
                       db $C9,$02,$00,$D0,$03,$A2,$28,$00   ;9B9FD4|        |;
 
          CODE_9B9FDC:
                       STX.B $08                            ;9B9FDC|8608    |;
                       CPX.W #$0000                         ;9B9FDE|E00000  |;
                       BEQ CODE_9B9FE8                      ;9B9FE1|F005    |;
                       CPX.W #$000A                         ;9B9FE3|E00A00  |;
                       BNE CODE_9B9FF0                      ;9B9FE6|D008    |;
 
          CODE_9B9FE8:
                       LDA.W $0C53                          ;9B9FE8|AD530C  |;
                       BEQ CODE_9B9FF0                      ;9B9FEB|F003    |;
                       db $4C,$76,$A0                       ;9B9FED|        |;
 
          CODE_9B9FF0:
                       LDA.W #$009B                         ;9B9FF0|A99B00  |;
                       STA.B $12                            ;9B9FF3|8512    |;
                       LDA.L DATA8_9B9C26,X                 ;9B9FF5|BF269C9B|;
                       STA.B $10                            ;9B9FF9|8510    |;
                       LDA.W $0C2B,X                        ;9B9FFB|BD2B0C  |;
                       BEQ CODE_9BA003                      ;9B9FFE|F003    |;
                       JMP.W CODE_9BA110                    ;9BA000|4C10A1  |;
 
          CODE_9BA003:
                       CPX.W #$0026                         ;9BA003|E02600  |;
                       BEQ CODE_9BA076                      ;9BA006|F06E    |;
                       CPX.W #$0024                         ;9BA008|E02400  |;
                       BEQ CODE_9BA076                      ;9BA00B|F069    |;
                       CPX.W #$0022                         ;9BA00D|E02200  |;
                       BEQ CODE_9BA04D                      ;9BA010|F03B    |;
                       CPX.W #$0020                         ;9BA012|E02000  |;
                       BEQ CODE_9BA079                      ;9BA015|F062    |;
                       CPX.W #$0028                         ;9BA017|E02800  |;
                       BEQ CODE_9BA038                      ;9BA01A|F01C    |;
                       LDY.W #$0008                         ;9BA01C|A00800  |;
                       LDA.B [$10],Y                        ;9BA01F|B710    |;
                       ASL A                                ;9BA021|0A      |;
                       ASL A                                ;9BA022|0A      |;
                       ASL A                                ;9BA023|0A      |;
                       ASL A                                ;9BA024|0A      |;
                       ASL A                                ;9BA025|0A      |;
                       ASL A                                ;9BA026|0A      |;
                       CMP.L $7E35E0                        ;9BA027|CFE0357E|;
                       BEQ CODE_9BA02F                      ;9BA02B|F002    |;
                       BCS CODE_9BA076                      ;9BA02D|B047    |;
 
          CODE_9BA02F:
                       JSL.L CODE_808658                    ;9BA02F|22588680|;
                       AND.W #$03F0                         ;9BA033|29F003  |;
                       BNE CODE_9BA076                      ;9BA036|D03E    |;
 
          CODE_9BA038:
                       LDA.W #$000A                         ;9BA038|A90A00  |;
                       STA.W $0C2B,X                        ;9BA03B|9D2B0C  |;
                       TAY                                  ;9BA03E|A8      |;
                       STZ.W $0C55,X                        ;9BA03F|9E550C  |;
                       LDA.B [$10],Y                        ;9BA042|B710    |;
                       STA.B $0C                            ;9BA044|850C    |;
                       LDA.W #$009B                         ;9BA046|A99B00  |;
                       STA.B $0E                            ;9BA049|850E    |;
                       BRA CODE_9BA0A2                      ;9BA04B|8055    |;
 
          CODE_9BA04D:
                       LDA.W $0DF9                          ;9BA04D|ADF90D  |;
                       CMP.W #$001A                         ;9BA050|C91A00  |;
                       BMI CODE_9BA076                      ;9BA053|3021    |;
                       ASL A                                ;9BA055|0A      |;
                       ADC.W $0DF9                          ;9BA056|6DF90D  |;
                       CLC                                  ;9BA059|18      |;
                       ADC.W $0DD3                          ;9BA05A|6DD30D  |;
                       CMP.W #$FEB8                         ;9BA05D|C9B8FE  |;
                       BPL CODE_9BA076                      ;9BA060|1014    |;
                       db $C9,$B0,$FE,$30,$0F,$AD,$71,$0D   ;9BA062|        |;
                       db $C9,$F4,$FF,$10,$07,$C9,$EC,$FF   ;9BA06A|        |;
                       db $30,$02,$80,$C2                   ;9BA072|        |;
 
          CODE_9BA076:
                       JMP.W CODE_9BA106                    ;9BA076|4C06A1  |;
 
          CODE_9BA079:
                       LDA.W $0DF9                          ;9BA079|ADF90D  |;
                       CMP.W #$001A                         ;9BA07C|C91A00  |;
                       BMI CODE_9BA076                      ;9BA07F|30F5    |;
                       ASL A                                ;9BA081|0A      |;
                       ADC.W $0DF9                          ;9BA082|6DF90D  |;
                       CLC                                  ;9BA085|18      |;
                       ADC.W $0DD3                          ;9BA086|6DD30D  |;
                       CMP.W #$FE98                         ;9BA089|C998FE  |;
                       BPL CODE_9BA076                      ;9BA08C|10E8    |;
                       db $C9,$90,$FE,$30,$E3,$AD,$71,$0D   ;9BA08E|        |;
                       db $C9,$FD,$FF,$10,$DB,$C9,$F4,$FF   ;9BA096|        |;
                       db $30,$D6,$80,$96                   ;9BA09E|        |;
 
          CODE_9BA0A2:
                       LDY.W #$0006                         ;9BA0A2|A00600  |;
                       LDA.B [$10],Y                        ;9BA0A5|B710    |;
                       ASL A                                ;9BA0A7|0A      |;
                       ADC.B [$10],Y                        ;9BA0A8|7710    |;
                       STA.W $0C7F,X                        ;9BA0AA|9D7F0C  |;
                       LDY.W $0C55,X                        ;9BA0AD|BC550C  |;
                       LDA.B [$0C],Y                        ;9BA0B0|B70C    |;
                       BMI CODE_9BA076                      ;9BA0B2|30C2    |;
                       TAX                                  ;9BA0B4|AA      |;
                       LDA.B [$10]                          ;9BA0B5|A710    |;
                       JSL.L CODE_808F4C                    ;9BA0B7|224C8F80|;
                       LDY.W #$0004                         ;9BA0BB|A00400  |;
                       CLC                                  ;9BA0BE|18      |;
                       ADC.B [$10],Y                        ;9BA0BF|7710    |;
                       ASL A                                ;9BA0C1|0A      |;
                       ASL A                                ;9BA0C2|0A      |;
                       ASL A                                ;9BA0C3|0A      |;
                       ASL A                                ;9BA0C4|0A      |;
                       ASL A                                ;9BA0C5|0A      |;
                       CLC                                  ;9BA0C6|18      |;
                       ADC.W #$8000                         ;9BA0C7|690080  |;
                       STA.B $0C                            ;9BA0CA|850C    |;
                       LDA.W #$0090                         ;9BA0CC|A99000  |;
                       STA.B $0E                            ;9BA0CF|850E    |;
                       LDY.W #$0002                         ;9BA0D1|A00200  |;
                       LDA.B [$10],Y                        ;9BA0D4|B710    |;
                       ASL A                                ;9BA0D6|0A      |;
                       ASL A                                ;9BA0D7|0A      |;
                       ASL A                                ;9BA0D8|0A      |;
                       ASL A                                ;9BA0D9|0A      |;
                       CLC                                  ;9BA0DA|18      |;
                       ADC.W #$1000                         ;9BA0DB|690010  |;
                       TAY                                  ;9BA0DE|A8      |;
                       LDA.B [$10]                          ;9BA0DF|A710    |;
                       ASL A                                ;9BA0E1|0A      |;
                       ASL A                                ;9BA0E2|0A      |;
                       ASL A                                ;9BA0E3|0A      |;
                       ASL A                                ;9BA0E4|0A      |;
                       ASL A                                ;9BA0E5|0A      |;
                       TAX                                  ;9BA0E6|AA      |;
                       JSL.L CODE_80891F                    ;9BA0E7|221F8980|;
                       LDX.B $08                            ;9BA0EB|A608    |;
                       CPX.W #$0028                         ;9BA0ED|E02800  |;
                       BNE CODE_9BA106                      ;9BA0F0|D014    |;
                       db $AD,$51,$0C,$D0,$0F,$A9,$0A,$00   ;9BA0F2|        |;
                       db $8D,$4F,$0C,$8D,$51,$0C,$9C,$A3   ;9BA0FA|        |;
                       db $0C,$9C,$A5,$0C                   ;9BA102|        |;
 
          CODE_9BA106:
                       LDX.B $08                            ;9BA106|A608    |;
                       DEX                                  ;9BA108|CA      |;
                       DEX                                  ;9BA109|CA      |;
                       BMI CODE_9BA10F                      ;9BA10A|3003    |;
                       JMP.W CODE_9B9FDC                    ;9BA10C|4CDC9F  |;
 
          CODE_9BA10F:
                       RTL                                  ;9BA10F|6B      |;
 
          CODE_9BA110:
                       LDA.W $0C7F,X                        ;9BA110|BD7F0C  |;
                       SEC                                  ;9BA113|38      |;
                       SBC.W $0ADB                          ;9BA114|EDDB0A  |;
                       STA.W $0C7F,X                        ;9BA117|9D7F0C  |;
                       BPL CODE_9BA106                      ;9BA11A|10EA    |;
                       LDY.W $0C2B,X                        ;9BA11C|BC2B0C  |;
                       LDA.B [$10],Y                        ;9BA11F|B710    |;
                       STA.B $0C                            ;9BA121|850C    |;
                       LDA.W #$009B                         ;9BA123|A99B00  |;
                       STA.B $0E                            ;9BA126|850E    |;
                       LDY.W $0C55,X                        ;9BA128|BC550C  |;
                       LDA.B [$0C],Y                        ;9BA12B|B70C    |;
                       BMI CODE_9BA13C                      ;9BA12D|300D    |;
                       INY                                  ;9BA12F|C8      |;
                       INY                                  ;9BA130|C8      |;
                       LDA.B [$0C],Y                        ;9BA131|B70C    |;
                       BMI CODE_9BA13C                      ;9BA133|3007    |;
                       TYA                                  ;9BA135|98      |;
                       STA.W $0C55,X                        ;9BA136|9D550C  |;
                       JMP.W CODE_9BA0A2                    ;9BA139|4CA2A0  |;
 
          CODE_9BA13C:
                       LDA.W $0C2B,X                        ;9BA13C|BD2B0C  |;
                       CMP.W #$000E                         ;9BA13F|C90E00  |;
                       BNE CODE_9BA149                      ;9BA142|D005    |;
                       STZ.W $0C2B,X                        ;9BA144|9E2B0C  |;
                       BRA CODE_9BA106                      ;9BA147|80BD    |;
 
          CODE_9BA149:
                       CPX.W #$0024                         ;9BA149|E02400  |;
                       BEQ UNREACH_9BA153                   ;9BA14C|F005    |;
                       CPX.W #$0026                         ;9BA14E|E02600  |;
                       BNE CODE_9BA15B                      ;9BA151|D008    |;
 
       UNREACH_9BA153:
                       db $AD,$53,$0C,$9D,$2B,$0C,$80,$0B   ;9BA153|        |;
 
          CODE_9BA15B:
                       CMP.W #$000C                         ;9BA15B|C90C00  |;
                       BEQ CODE_9BA178                      ;9BA15E|F018    |;
                       LDA.W #$000C                         ;9BA160|A90C00  |;
                       STA.W $0C2B,X                        ;9BA163|9D2B0C  |;
 
          CODE_9BA166:
                       LDY.W $0C2B,X                        ;9BA166|BC2B0C  |;
                       LDA.B [$10],Y                        ;9BA169|B710    |;
                       STA.B $0C                            ;9BA16B|850C    |;
                       LDA.W #$009B                         ;9BA16D|A99B00  |;
                       STA.B $0E                            ;9BA170|850E    |;
                       STZ.W $0C55,X                        ;9BA172|9E550C  |;
                       JMP.W CODE_9BA0A2                    ;9BA175|4CA2A0  |;
 
          CODE_9BA178:
                       JSL.L CODE_808658                    ;9BA178|22588680|;
                       AND.W #$00C0                         ;9BA17C|29C000  |;
                       BNE CODE_9BA166                      ;9BA17F|D0E5    |;
                       LDA.W #$000E                         ;9BA181|A90E00  |;
                       STA.W $0C2B,X                        ;9BA184|9D2B0C  |;
                       BRA CODE_9BA166                      ;9BA187|80DD    |;
                       db $DA,$A2,$12,$00,$A9,$00,$00,$9F   ;9BA189|        |;
                       db $0C,$34,$7E,$CA,$CA,$10,$F8,$FA   ;9BA191|        |;
                       db $A9,$01,$00,$8F,$48,$34,$7E,$6B   ;9BA199|        |;
 
          CODE_9BA1A1:
                       LDA.W $15DA                          ;9BA1A1|ADDA15  |;
                       BNE CODE_9BA1B4                      ;9BA1A4|D00E    |;
                       LDA.W $15D8                          ;9BA1A6|ADD815  |;
                       AND.W #$0800                         ;9BA1A9|290008  |;
                       BNE CODE_9BA1B4                      ;9BA1AC|D006    |;
                       LDA.L $7E3448                        ;9BA1AE|AF48347E|;
                       BNE UNREACH_9BA1B5                   ;9BA1B2|D001    |;
 
          CODE_9BA1B4:
                       RTL                                  ;9BA1B4|6B      |;
 
       UNREACH_9BA1B5:
                       db $A2,$12,$00,$86,$B5,$BF,$0C,$34   ;9BA1B5|        |;
                       db $7E,$F0,$03,$4C,$1C,$A3,$22,$58   ;9BA1BD|        |;
                       db $86,$80,$29,$C0,$07,$F0,$03,$4C   ;9BA1C5|        |;
                       db $12,$A3,$22,$58,$86,$80,$29,$3F   ;9BA1CD|        |;
                       db $00,$85,$A5,$4A,$65,$A5,$18,$69   ;9BA1D5|        |;
                       db $50,$00,$0A,$0A,$0A,$0A,$85,$A5   ;9BA1DD|        |;
                       db $22,$58,$86,$80,$29,$3F,$00,$18   ;9BA1E5|        |;
                       db $69,$60,$00,$0A,$0A,$0A,$0A,$85   ;9BA1ED|        |;
                       db $A9,$22,$58,$86,$80,$29,$FF,$00   ;9BA1F5|        |;
                       db $0A,$0A,$0A,$0A,$9F,$A8,$33,$7E   ;9BA1FD|        |;
                       db $22,$58,$86,$80,$29,$3F,$00,$18   ;9BA205|        |;
                       db $69,$78,$00,$85,$AD,$A5,$A9,$38   ;9BA20D|        |;
                       db $FF,$A8,$33,$7E,$AA,$A5,$AD,$22   ;9BA215|        |;
                       db $27,$93,$80,$A6,$B5,$9F,$E4,$33   ;9BA21D|        |;
                       db $7E,$A5,$A5,$29,$00,$01,$F0,$0F   ;9BA225|        |;
                       db $A9,$00,$11,$9F,$94,$33,$7E,$A5   ;9BA22D|        |;
                       db $A5,$38,$E9,$00,$11,$80,$0D,$A9   ;9BA235|        |;
                       db $00,$FF,$9F,$94,$33,$7E,$A5,$A5   ;9BA23D|        |;
                       db $38,$E9,$00,$FF,$AA,$A5,$AD,$22   ;9BA245|        |;
                       db $27,$93,$80,$A6,$B5,$9F,$D0,$33   ;9BA24D|        |;
                       db $7E,$A5,$AD,$4A,$4A,$AA,$22,$4C   ;9BA255|        |;
                       db $8F,$80,$A6,$B5,$85,$AD,$0A,$65   ;9BA25D|        |;
                       db $AD,$9F,$BC,$33,$7E,$22,$58,$86   ;9BA265|        |;
                       db $80,$4A,$4A,$29,$03,$00,$F0,$01   ;9BA26D|        |;
                       db $3A,$85,$AD,$0A,$65,$AD,$9F,$34   ;9BA275|        |;
                       db $34,$7E,$A9,$00,$00,$8F,$F8,$33   ;9BA27D|        |;
                       db $7E,$1A,$9F,$0C,$34,$7E,$BF,$14   ;9BA285|        |;
                       db $A4,$9B,$9F,$20,$34,$7E,$BF,$34   ;9BA28D|        |;
                       db $34,$7E,$18,$7F,$0C,$34,$7E,$18   ;9BA295|        |;
                       db $69,$C5,$03,$85,$00,$A9,$82,$00   ;9BA29D|        |;
                       db $85,$12,$A9,$00,$80,$85,$10,$BF   ;9BA2A5|        |;
                       db $BC,$33,$7E,$4A,$4A,$4A,$4A,$49   ;9BA2AD|        |;
                       db $FF,$FF,$1A,$18,$7F,$A8,$33,$7E   ;9BA2B5|        |;
                       db $4A,$4A,$4A,$4A,$89,$00,$08,$F0   ;9BA2BD|        |;
                       db $03,$09,$00,$F0,$A8,$BF,$94,$33   ;9BA2C5|        |;
                       db $7E,$4A,$4A,$4A,$4A,$89,$00,$08   ;9BA2CD|        |;
                       db $F0,$03,$09,$00,$F0,$AA,$A9,$00   ;9BA2D5|        |;
                       db $20,$22,$8D,$B0,$80,$A6,$B5,$A9   ;9BA2DD|        |;
                       db $CF,$03,$85,$00,$BF,$A8,$33,$7E   ;9BA2E5|        |;
                       db $4A,$4A,$4A,$4A,$89,$00,$08,$F0   ;9BA2ED|        |;
                       db $03,$09,$00,$F0,$A8,$BF,$94,$33   ;9BA2F5|        |;
                       db $7E,$4A,$4A,$4A,$4A,$89,$00,$08   ;9BA2FD|        |;
                       db $F0,$03,$09,$00,$F0,$AA,$A9,$00   ;9BA305|        |;
                       db $20,$22,$8D,$B0,$80,$A6,$B5,$CA   ;9BA30D|        |;
                       db $CA,$30,$03,$4C,$B8,$A1,$6B,$BF   ;9BA315|        |;
                       db $20,$34,$7E,$38,$ED,$DB,$0A,$10   ;9BA31D|        |;
                       db $1C,$18,$7F,$14,$A4,$9B,$9F,$20   ;9BA325|        |;
                       db $34,$7E,$BF,$0C,$34,$7E,$1A,$C9   ;9BA32D|        |;
                       db $04,$00,$D0,$03,$A9,$01,$00,$9F   ;9BA335|        |;
                       db $0C,$34,$7E,$80,$04,$9F,$20,$34   ;9BA33D|        |;
                       db $7E,$AC,$DB,$0A,$F0,$07,$22,$55   ;9BA345|        |;
                       db $A3,$9B,$88,$D0,$F9,$4C,$93,$A2   ;9BA34D|        |;
                       db $BF,$D0,$33,$7E,$1F,$E4,$33,$7E   ;9BA355|        |;
                       db $F0,$49,$BF,$94,$33,$7E,$18,$7F   ;9BA35D|        |;
                       db $D0,$33,$7E,$9F,$94,$33,$7E,$BF   ;9BA365|        |;
                       db $A8,$33,$7E,$18,$7F,$E4,$33,$7E   ;9BA36D|        |;
                       db $9F,$A8,$33,$7E,$BF,$BC,$33,$7E   ;9BA375|        |;
                       db $F0,$32,$BF,$F8,$33,$7E,$4A,$4A   ;9BA37D|        |;
                       db $89,$00,$20,$F0,$03,$09,$00,$C0   ;9BA385|        |;
                       db $49,$FF,$FF,$1A,$18,$7F,$BC,$33   ;9BA38D|        |;
                       db $7E,$30,$11,$9F,$BC,$33,$7E,$BF   ;9BA395|        |;
                       db $F8,$33,$7E,$18,$69,$06,$00,$9F   ;9BA39D|        |;
                       db $F8,$33,$7E,$6B,$A9,$00,$00,$9F   ;9BA3A5|        |;
                       db $BC,$33,$7E,$6B,$A9,$00,$00,$9F   ;9BA3AD|        |;
                       db $F8,$33,$7E,$9F,$BC,$33,$7E,$A9   ;9BA3B5|        |;
                       db $E8,$03,$9F,$20,$34,$7E,$BF,$D0   ;9BA3BD|        |;
                       db $33,$7E,$C9,$10,$00,$90,$3C,$C9   ;9BA3C5|        |;
                       db $F0,$FF,$B0,$37,$4A,$4A,$4A,$4A   ;9BA3CD|        |;
                       db $89,$00,$08,$F0,$03,$09,$00,$F0   ;9BA3D5|        |;
                       db $49,$FF,$FF,$1A,$18,$7F,$D0,$33   ;9BA3DD|        |;
                       db $7E,$9F,$D0,$33,$7E,$BF,$E4,$33   ;9BA3E5|        |;
                       db $7E,$4A,$4A,$4A,$4A,$89,$00,$08   ;9BA3ED|        |;
                       db $F0,$03,$09,$00,$F0,$49,$FF,$FF   ;9BA3F5|        |;
                       db $1A,$18,$7F,$E4,$33,$7E,$9F,$E4   ;9BA3FD|        |;
                       db $33,$7E,$6B,$A9,$00,$00,$9F,$D0   ;9BA405|        |;
                       db $33,$7E,$9F,$E4,$33,$7E,$6B,$04   ;9BA40D|        |;
                       db $00,$08,$00,$09,$00,$0F,$00,$0C   ;9BA415|        |;
                       db $00,$0D,$00,$0A,$00,$07,$00,$0B   ;9BA41D|        |;
                       db $00,$0E,$00                       ;9BA425|        |;
 
          CODE_9BA428:
                       LDA.W $1C9A                          ;9BA428|AD9A1C  |;
                       STA.L $7E3454                        ;9BA42B|8F54347E|;
                       LDA.W $1C98                          ;9BA42F|AD981C  |;
                       STA.L $7E3452                        ;9BA432|8F52347E|;
                       JSL.L CODE_9DD9AD                    ;9BA436|22ADD99D|;
                       LDA.W #$009C                         ;9BA43A|A99C00  |;
                       STA.B $0E                            ;9BA43D|850E    |;
                       LDA.W #$8328                         ;9BA43F|A92883  |;
                       STA.B $0C                            ;9BA442|850C    |;
                       LDA.W #$007F                         ;9BA444|A97F00  |;
                       STA.B $12                            ;9BA447|8512    |;
                       LDA.W #$0000                         ;9BA449|A90000  |;
                       STA.B $10                            ;9BA44C|8510    |;
                       JSL.L CODE_80C373                    ;9BA44E|2273C380|;
                       LDA.W #$007F                         ;9BA452|A97F00  |;
                       STA.B $0E                            ;9BA455|850E    |;
                       LDA.W #$0000                         ;9BA457|A90000  |;
                       STA.B $0C                            ;9BA45A|850C    |;
                       LDY.W #$0050                         ;9BA45C|A05000  |;
                       LDX.W #$0010                         ;9BA45F|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9BA462|22BDE09D|;
                       JSL.L CODE_9DE0D4                    ;9BA466|22D4E09D|;
                       LDA.B $8F                            ;9BA46A|A58F    |;
                       PHA                                  ;9BA46C|48      |;
                       LDA.B $8D                            ;9BA46D|A58D    |;
                       PHA                                  ;9BA46F|48      |;
                       LDA.W #$009C                         ;9BA470|A99C00  |;
                       STA.B $8F                            ;9BA473|858F    |;
                       LDA.W #$F163                         ;9BA475|A963F1  |;
                       STA.B $8D                            ;9BA478|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BA47A|22BEC79E|;
                       PLA                                  ;9BA47E|68      |;
                       STA.B $8D                            ;9BA47F|858D    |;
                       PLA                                  ;9BA481|68      |;
                       STA.B $8F                            ;9BA482|858F    |;
                       LDA.W #$0800                         ;9BA484|A90008  |;
                       STA.W $0D0D                          ;9BA487|8D0D0D  |;
                       LDA.W #$0014                         ;9BA48A|A91400  |;
                       STA.B $A5                            ;9BA48D|85A5    |;
                       LDA.W #$0005                         ;9BA48F|A90500  |;
                       STA.B $A9                            ;9BA492|85A9    |;
                       JSL.L CODE_9D8091                    ;9BA494|2291809D|;
                       LDA.W #$0096                         ;9BA498|A99600  |;
                       STA.B $0E                            ;9BA49B|850E    |;
                       LDA.W #$D7AC                         ;9BA49D|A9ACD7  |;
                       STA.B $0C                            ;9BA4A0|850C    |;
                       LDA.W #$007F                         ;9BA4A2|A97F00  |;
                       STA.B $12                            ;9BA4A5|8512    |;
                       LDA.W #$0000                         ;9BA4A7|A90000  |;
                       STA.B $10                            ;9BA4AA|8510    |;
                       JSL.L CODE_80C373                    ;9BA4AC|2273C380|;
                       LDA.W #$007F                         ;9BA4B0|A97F00  |;
                       STA.B $0E                            ;9BA4B3|850E    |;
                       LDA.W #$0000                         ;9BA4B5|A90000  |;
                       STA.B $0C                            ;9BA4B8|850C    |;
                       STX.B $10                            ;9BA4BA|8610    |;
                       STX.B $00                            ;9BA4BC|8600    |;
                       JSL.L CODE_9B85C2                    ;9BA4BE|22C2859B|;
                       LDA.B $10                            ;9BA4C2|A510    |;
                       STA.B $0C                            ;9BA4C4|850C    |;
                       TAX                                  ;9BA4C6|AA      |;
                       LDA.L $7E35C4                        ;9BA4C7|AFC4357E|;
                       ASL A                                ;9BA4CB|0A      |;
                       ASL A                                ;9BA4CC|0A      |;
                       ASL A                                ;9BA4CD|0A      |;
                       ASL A                                ;9BA4CE|0A      |;
                       CLC                                  ;9BA4CF|18      |;
                       ADC.W #$1000                         ;9BA4D0|690010  |;
                       TAY                                  ;9BA4D3|A8      |;
                       JSL.L CODE_80891F                    ;9BA4D4|221F8980|;
                       LDA.W #$009A                         ;9BA4D8|A99A00  |;
                       STA.B $0E                            ;9BA4DB|850E    |;
                       LDA.W #$CFB6                         ;9BA4DD|A9B6CF  |;
                       STA.B $0C                            ;9BA4E0|850C    |;
                       LDY.W #$0070                         ;9BA4E2|A07000  |;
                       LDX.W #$0010                         ;9BA4E5|A21000  |;
                       JSL.L CODE_9DE0BD                    ;9BA4E8|22BDE09D|;
                       LDA.W #$6F7B                         ;9BA4EC|A97B6F  |;
                       STA.L $7F75C2                        ;9BA4EF|8FC2757F|;
                       JSL.L CODE_9DE0D4                    ;9BA4F3|22D4E09D|;
                       STZ.W $1DB9                          ;9BA4F7|9CB91D  |;
                       JSL.L CODE_8086BD                    ;9BA4FA|22BD8680|;
                       JSL.L CODE_80AF7B                    ;9BA4FE|227BAF80|;
                       LDX.W #$0048                         ;9BA502|A24800  |;
                       LDY.W #$0018                         ;9BA505|A01800  |;
                       LDA.W #$009C                         ;9BA508|A99C00  |;
                       STA.B $8F                            ;9BA50B|858F    |;
                       LDA.W #$F168                         ;9BA50D|A968F1  |;
                       STA.B $8D                            ;9BA510|858D    |;
                       JSL.L CODE_9C936C                    ;9BA512|226C939C|;
                       JSL.L CODE_9DDDB3                    ;9BA516|22B3DD9D|;
                       JSL.L CODE_9BA563                    ;9BA51A|2263A59B|;
                       JSL.L CODE_80AFDE                    ;9BA51E|22DEAF80|;
 
          CODE_9BA522:
                       JSL.L CODE_9DD923                    ;9BA522|2223D99D|;
                       JSL.L CODE_808583                    ;9BA526|22838580|;
                       JSL.L CODE_9B8017                    ;9BA52A|2217809B|;
                       JSL.L CODE_9B851F                    ;9BA52E|221F859B|;
                       JSL.L CODE_9B852C                    ;9BA532|222C859B|;
                       LDA.B $A9                            ;9BA536|A5A9    |;
                       BIT.W #$1000                         ;9BA538|890010  |;
                       BNE CODE_9BA549                      ;9BA53B|D00C    |;
                       BIT.W #$0800                         ;9BA53D|890008  |;
                       BNE UNREACH_9BA54A                   ;9BA540|D008    |;
                       BIT.W #$0400                         ;9BA542|890004  |;
                       BNE UNREACH_9BA555                   ;9BA545|D00E    |;
                       BRA CODE_9BA522                      ;9BA547|80D9    |;
 
          CODE_9BA549:
                       RTL                                  ;9BA549|6B      |;
 
       UNREACH_9BA54A:
                       db $AD,$B9,$1D,$3A,$30,$D2,$8D,$B9   ;9BA54A|        |;
                       db $1D,$80,$A9                       ;9BA552|        |;
 
       UNREACH_9BA555:
                       db $AD,$B9,$1D,$1A,$C9,$03,$00,$B0   ;9BA555|        |;
                       db $C4,$8D,$B9,$1D,$80,$9B           ;9BA55D|        |;
 
          CODE_9BA563:
                       LDA.W $1DB9                          ;9BA563|ADB91D  |;
                       BEQ CODE_9BA59E                      ;9BA566|F036    |;
                       db $A5,$8F,$48,$A5,$8D,$48,$A9,$9C   ;9BA568|        |;
                       db $00,$85,$8F,$A9,$75,$F1,$85,$8D   ;9BA570|        |;
                       db $22,$BE,$C7,$9E,$68,$85,$8D,$68   ;9BA578|        |;
                       db $85,$8F,$A5,$8F,$48,$A5,$8D,$48   ;9BA580|        |;
                       db $A9,$9C,$00,$85,$8F,$A9,$81,$F1   ;9BA588|        |;
                       db $85,$8D,$22,$BE,$C7,$9E,$68,$85   ;9BA590|        |;
                       db $8D,$68,$85,$8F,$80,$34           ;9BA598|        |;
 
          CODE_9BA59E:
                       LDA.B $8F                            ;9BA59E|A58F    |;
                       PHA                                  ;9BA5A0|48      |;
                       LDA.B $8D                            ;9BA5A1|A58D    |;
                       PHA                                  ;9BA5A3|48      |;
                       LDA.W #$009C                         ;9BA5A4|A99C00  |;
                       STA.B $8F                            ;9BA5A7|858F    |;
                       LDA.W #$F188                         ;9BA5A9|A988F1  |;
                       STA.B $8D                            ;9BA5AC|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BA5AE|22BEC79E|;
                       PLA                                  ;9BA5B2|68      |;
                       STA.B $8D                            ;9BA5B3|858D    |;
                       PLA                                  ;9BA5B5|68      |;
                       STA.B $8F                            ;9BA5B6|858F    |;
                       LDA.B $8F                            ;9BA5B8|A58F    |;
                       PHA                                  ;9BA5BA|48      |;
                       LDA.B $8D                            ;9BA5BB|A58D    |;
                       PHA                                  ;9BA5BD|48      |;
                       LDA.W #$009C                         ;9BA5BE|A99C00  |;
                       STA.B $8F                            ;9BA5C1|858F    |;
                       LDA.W #$F194                         ;9BA5C3|A994F1  |;
                       STA.B $8D                            ;9BA5C6|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BA5C8|22BEC79E|;
                       PLA                                  ;9BA5CC|68      |;
                       STA.B $8D                            ;9BA5CD|858D    |;
                       PLA                                  ;9BA5CF|68      |;
                       STA.B $8F                            ;9BA5D0|858F    |;
                       LDA.W #$0014                         ;9BA5D2|A91400  |;
                       STA.W $0D0F                          ;9BA5D5|8D0F0D  |;
                       LDA.W #$0011                         ;9BA5D8|A91100  |;
                       STA.W $0D11                          ;9BA5DB|8D110D  |;
                       LDA.W $19C2                          ;9BA5DE|ADC219  |;
                       STA.B $A5                            ;9BA5E1|85A5    |;
                       LDA.W #$0004                         ;9BA5E3|A90400  |;
                       STA.B $A9                            ;9BA5E6|85A9    |;
                       JSL.L CODE_9FC623                    ;9BA5E8|2223C69F|;
                       JSL.L CODE_9EC7BE                    ;9BA5EC|22BEC79E|;
                       LDA.W $1DB9                          ;9BA5F0|ADB91D  |;
                       CMP.W #$0001                         ;9BA5F3|C90100  |;
                       BEQ UNREACH_9BA62E                   ;9BA5F6|F036    |;
                       LDA.B $8F                            ;9BA5F8|A58F    |;
                       PHA                                  ;9BA5FA|48      |;
                       LDA.B $8D                            ;9BA5FB|A58D    |;
                       PHA                                  ;9BA5FD|48      |;
                       LDA.W #$009C                         ;9BA5FE|A99C00  |;
                       STA.B $8F                            ;9BA601|858F    |;
                       LDA.W #$F19B                         ;9BA603|A99BF1  |;
                       STA.B $8D                            ;9BA606|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BA608|22BEC79E|;
                       PLA                                  ;9BA60C|68      |;
                       STA.B $8D                            ;9BA60D|858D    |;
                       PLA                                  ;9BA60F|68      |;
                       STA.B $8F                            ;9BA610|858F    |;
                       LDA.B $8F                            ;9BA612|A58F    |;
                       PHA                                  ;9BA614|48      |;
                       LDA.B $8D                            ;9BA615|A58D    |;
                       PHA                                  ;9BA617|48      |;
                       LDA.W #$009C                         ;9BA618|A99C00  |;
                       STA.B $8F                            ;9BA61B|858F    |;
                       LDA.W #$F1A4                         ;9BA61D|A9A4F1  |;
                       STA.B $8D                            ;9BA620|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BA622|22BEC79E|;
                       PLA                                  ;9BA626|68      |;
                       STA.B $8D                            ;9BA627|858D    |;
                       PLA                                  ;9BA629|68      |;
                       STA.B $8F                            ;9BA62A|858F    |;
                       BRA CODE_9BA662                      ;9BA62C|8034    |;
 
       UNREACH_9BA62E:
                       db $A5,$8F,$48,$A5,$8D,$48,$A9,$9C   ;9BA62E|        |;
                       db $00,$85,$8F,$A9,$AB,$F1,$85,$8D   ;9BA636|        |;
                       db $22,$BE,$C7,$9E,$68,$85,$8D,$68   ;9BA63E|        |;
                       db $85,$8F,$A5,$8F,$48,$A5,$8D,$48   ;9BA646|        |;
                       db $A9,$9C,$00,$85,$8F,$A9,$B4,$F1   ;9BA64E|        |;
                       db $85,$8D,$22,$BE,$C7,$9E,$68,$85   ;9BA656|        |;
                       db $8D,$68,$85,$8F                   ;9BA65E|        |;
 
          CODE_9BA662:
                       LDA.W #$0014                         ;9BA662|A91400  |;
                       STA.W $0D0F                          ;9BA665|8D0F0D  |;
                       LDA.W #$0013                         ;9BA668|A91300  |;
                       STA.W $0D11                          ;9BA66B|8D110D  |;
                       LDA.W $19C4                          ;9BA66E|ADC419  |;
                       STA.B $A5                            ;9BA671|85A5    |;
                       LDA.W #$0004                         ;9BA673|A90400  |;
                       STA.B $A9                            ;9BA676|85A9    |;
                       JSL.L CODE_9FC623                    ;9BA678|2223C69F|;
                       JSL.L CODE_9EC7BE                    ;9BA67C|22BEC79E|;
                       LDA.W $1DB9                          ;9BA680|ADB91D  |;
                       CMP.W #$0002                         ;9BA683|C90200  |;
                       BEQ UNREACH_9BA6BE                   ;9BA686|F036    |;
                       LDA.B $8F                            ;9BA688|A58F    |;
                       PHA                                  ;9BA68A|48      |;
                       LDA.B $8D                            ;9BA68B|A58D    |;
                       PHA                                  ;9BA68D|48      |;
                       LDA.W #$009C                         ;9BA68E|A99C00  |;
                       STA.B $8F                            ;9BA691|858F    |;
                       LDA.W #$F1BB                         ;9BA693|A9BBF1  |;
                       STA.B $8D                            ;9BA696|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BA698|22BEC79E|;
                       PLA                                  ;9BA69C|68      |;
                       STA.B $8D                            ;9BA69D|858D    |;
                       PLA                                  ;9BA69F|68      |;
                       STA.B $8F                            ;9BA6A0|858F    |;
                       LDA.B $8F                            ;9BA6A2|A58F    |;
                       PHA                                  ;9BA6A4|48      |;
                       LDA.B $8D                            ;9BA6A5|A58D    |;
                       PHA                                  ;9BA6A7|48      |;
                       LDA.W #$009C                         ;9BA6A8|A99C00  |;
                       STA.B $8F                            ;9BA6AB|858F    |;
                       LDA.W #$F1C7                         ;9BA6AD|A9C7F1  |;
                       STA.B $8D                            ;9BA6B0|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BA6B2|22BEC79E|;
                       PLA                                  ;9BA6B6|68      |;
                       STA.B $8D                            ;9BA6B7|858D    |;
                       PLA                                  ;9BA6B9|68      |;
                       STA.B $8F                            ;9BA6BA|858F    |;
                       BRA CODE_9BA6F2                      ;9BA6BC|8034    |;
 
       UNREACH_9BA6BE:
                       db $A5,$8F,$48,$A5,$8D,$48,$A9,$9C   ;9BA6BE|        |;
                       db $00,$85,$8F,$A9,$CE,$F1,$85,$8D   ;9BA6C6|        |;
                       db $22,$BE,$C7,$9E,$68,$85,$8D,$68   ;9BA6CE|        |;
                       db $85,$8F,$A5,$8F,$48,$A5,$8D,$48   ;9BA6D6|        |;
                       db $A9,$9C,$00,$85,$8F,$A9,$DA,$F1   ;9BA6DE|        |;
                       db $85,$8D,$22,$BE,$C7,$9E,$68,$85   ;9BA6E6|        |;
                       db $8D,$68,$85,$8F                   ;9BA6EE|        |;
 
          CODE_9BA6F2:
                       LDA.W #$0014                         ;9BA6F2|A91400  |;
                       STA.W $0D0F                          ;9BA6F5|8D0F0D  |;
                       LDA.W #$0015                         ;9BA6F8|A91500  |;
                       STA.W $0D11                          ;9BA6FB|8D110D  |;
                       LDA.W $19C6                          ;9BA6FE|ADC619  |;
                       STA.B $A5                            ;9BA701|85A5    |;
                       LDA.W #$0004                         ;9BA703|A90400  |;
                       STA.B $A9                            ;9BA706|85A9    |;
                       JSL.L CODE_9FC623                    ;9BA708|2223C69F|;
                       JSL.L CODE_9EC7BE                    ;9BA70C|22BEC79E|;
                       LDA.W $1DB9                          ;9BA710|ADB91D  |;
                       BEQ CODE_9BA724                      ;9BA713|F00F    |;
                       db $C9,$01,$00,$F0,$05,$AD,$C6,$19   ;9BA715|        |;
                       db $80,$08,$AD,$C4,$19,$80,$03       ;9BA71D|        |;
 
          CODE_9BA724:
                       LDA.W $19C2                          ;9BA724|ADC219  |;
                       JSL.L CODE_9BA77C                    ;9BA727|227CA79B|;
                       RTL                                  ;9BA72B|6B      |;
                       db $85,$26,$86,$1C,$98,$0A,$A6,$24   ;9BA72C|        |;
                       db $22,$99,$90,$80,$A5,$1C,$0A,$18   ;9BA734|        |;
                       db $65,$08,$65,$10,$85,$10,$A0,$00   ;9BA73C|        |;
                       db $00,$B7,$0C,$85,$18,$C8,$C8,$B7   ;9BA744|        |;
                       db $0C,$85,$1A,$A5,$0C,$18,$69,$06   ;9BA74C|        |;
                       db $00,$85,$0C,$AE,$D1,$1D,$A0,$00   ;9BA754|        |;
                       db $00,$B7,$0C,$18,$65,$26,$97,$10   ;9BA75C|        |;
                       db $C8,$C8,$CA,$D0,$F4,$A5,$24,$0A   ;9BA764|        |;
                       db $65,$10,$85,$10,$A5,$18,$0A,$65   ;9BA76C|        |;
                       db $0C,$85,$0C,$C6,$1A,$D0,$DC,$6B   ;9BA774|        |;
 
          CODE_9BA77C:
                       SEC                                  ;9BA77C|38      |;
                       SBC.W #$0032                         ;9BA77D|E93200  |;
                       BPL CODE_9BA785                      ;9BA780|1003    |;
                       LDA.W #$0000                         ;9BA782|A90000  |;
 
          CODE_9BA785:
                       LSR A                                ;9BA785|4A      |;
                       LSR A                                ;9BA786|4A      |;
                       STA.B $04                            ;9BA787|8504    |;
                       CMP.W #$0013                         ;9BA789|C91300  |;
                       BMI CODE_9BA79F                      ;9BA78C|3011    |;
                       db $A9,$00,$00,$85,$04,$A9,$9A,$00   ;9BA78E|        |;
                       db $85,$0E,$A9,$CB,$DF,$85,$0C,$80   ;9BA796|        |;
                       db $0A                               ;9BA79E|        |;
 
          CODE_9BA79F:
                       LDA.W #$009A                         ;9BA79F|A99A00  |;
                       STA.B $0E                            ;9BA7A2|850E    |;
                       LDA.W #$E919                         ;9BA7A4|A919E9  |;
                       STA.B $0C                            ;9BA7A7|850C    |;
                       LDA.B $04                            ;9BA7A9|A504    |;
                       PHA                                  ;9BA7AB|48      |;
                       LDA.W #$007F                         ;9BA7AC|A97F00  |;
                       STA.B $12                            ;9BA7AF|8512    |;
                       LDA.W #$0000                         ;9BA7B1|A90000  |;
                       STA.B $10                            ;9BA7B4|8510    |;
                       JSL.L CODE_80C373                    ;9BA7B6|2273C380|;
                       LDA.W #$007F                         ;9BA7BA|A97F00  |;
                       STA.B $0E                            ;9BA7BD|850E    |;
                       LDA.W #$0000                         ;9BA7BF|A90000  |;
                       STA.B $0C                            ;9BA7C2|850C    |;
                       LDA.W #$007E                         ;9BA7C4|A97E00  |;
                       STA.B $12                            ;9BA7C7|8512    |;
                       LDA.W #$37F4                         ;9BA7C9|A9F437  |;
                       STA.B $10                            ;9BA7CC|8510    |;
                       LDA.W #$0020                         ;9BA7CE|A92000  |;
                       STA.B $24                            ;9BA7D1|8524    |;
                       LDA.W #$001C                         ;9BA7D3|A91C00  |;
                       STA.B $26                            ;9BA7D6|8526    |;
                       LDX.W #$0007                         ;9BA7D8|A20700  |;
                       LDY.W #$000B                         ;9BA7DB|A00B00  |;
                       LDA.L $7E35AA                        ;9BA7DE|AFAA357E|;
                       CLC                                  ;9BA7E2|18      |;
                       ADC.L $7E35C4                        ;9BA7E3|6FC4357E|;
                       CLC                                  ;9BA7E7|18      |;
                       ADC.W #$1C00                         ;9BA7E8|69001C  |;
                       JSL.L CODE_808E2D                    ;9BA7EB|222D8E80|;
                       JSL.L CODE_808583                    ;9BA7EF|22838580|;
                       PLA                                  ;9BA7F3|68      |;
                       STA.B $04                            ;9BA7F4|8504    |;
                       STA.W $1DD1                          ;9BA7F6|8DD11D  |;
                       BEQ CODE_9BA848                      ;9BA7F9|F04D    |;
                       db $A9,$9A,$00,$85,$0E,$A9,$EC,$E8   ;9BA7FB|        |;
                       db $85,$0C,$A9,$7F,$00,$85,$12,$A9   ;9BA803|        |;
                       db $00,$00,$85,$10,$22,$73,$C3,$80   ;9BA80B|        |;
                       db $A9,$7F,$00,$85,$0E,$A9,$00,$00   ;9BA813|        |;
                       db $85,$0C,$A9,$7E,$00,$85,$12,$A9   ;9BA81B|        |;
                       db $F4,$37,$85,$10,$A9,$20,$00,$85   ;9BA823|        |;
                       db $24,$A9,$1C,$00,$85,$26,$A2,$07   ;9BA82B|        |;
                       db $00,$A0,$0B,$00,$AF,$AA,$35,$7E   ;9BA833|        |;
                       db $18,$6F,$C4,$35,$7E,$18,$69,$00   ;9BA83B|        |;
                       db $1C,$22,$2C,$A7,$9B               ;9BA843|        |;
 
          CODE_9BA848:
                       RTL                                  ;9BA848|6B      |;
                       db $EF,$E7,$E3,$E0,$0C,$4C,$A8,$06   ;9BA849|        |;
                       db $4B,$A8,$1C,$4A,$A8,$08,$49,$A8   ;9BA851|        |;
                       db $22,$4C,$A8,$18,$4A,$A8,$14,$4C   ;9BA859|        |;
                       db $A8,$00,$AD,$CE,$19,$D0,$36,$A0   ;9BA861|        |;
                       db $33,$00,$A2,$00,$00,$E2,$20,$BD   ;9BA869|        |;
                       db $13,$1A,$1A,$1A,$9D,$13,$1A,$BD   ;9BA871|        |;
                       db $12,$1A,$1A,$1A,$9D,$12,$1A,$BD   ;9BA879|        |;
                       db $15,$1A,$1A,$1A,$9D,$15,$1A,$BD   ;9BA881|        |;
                       db $14,$1A,$1A,$1A,$9D,$14,$1A,$C2   ;9BA889|        |;
                       db $20,$8A,$18,$69,$0C,$00,$AA,$88   ;9BA891|        |;
                       db $10,$D3,$EE,$CE,$19,$6B,$AD,$CE   ;9BA899|        |;
                       db $19,$F0,$36,$A0,$33,$00,$A2,$00   ;9BA8A1|        |;
                       db $00,$E2,$20,$BD,$13,$1A,$3A,$3A   ;9BA8A9|        |;
                       db $9D,$13,$1A,$BD,$12,$1A,$3A,$3A   ;9BA8B1|        |;
                       db $9D,$12,$1A,$BD,$15,$1A,$3A,$3A   ;9BA8B9|        |;
                       db $9D,$15,$1A,$BD,$14,$1A,$3A,$3A   ;9BA8C1|        |;
                       db $9D,$14,$1A,$C2,$20,$8A,$18,$69   ;9BA8C9|        |;
                       db $0C,$00,$AA,$88,$10,$D3,$CE,$CE   ;9BA8D1|        |;
                       db $19,$6B                           ;9BA8D9|        |;
 
          CODE_9BA8DB:
                       LDA.W $15D4                          ;9BA8DB|ADD415  |;
                       BIT.W #$0010                         ;9BA8DE|891000  |;
                       BNE CODE_9BA8EB                      ;9BA8E1|D008    |;
                       LDA.W $0CA9                          ;9BA8E3|ADA90C  |;
                       BEQ CODE_9BA8F1                      ;9BA8E6|F009    |;
                       DEC A                                ;9BA8E8|3A      |;
                       BNE CODE_9BA8EE                      ;9BA8E9|D003    |;
 
          CODE_9BA8EB:
                       JMP.W CODE_9BAA5F                    ;9BA8EB|4C5FAA  |;
 
          CODE_9BA8EE:
                       STA.W $0CA9                          ;9BA8EE|8DA90C  |;
 
          CODE_9BA8F1:
                       LDA.W $15D8                          ;9BA8F1|ADD815  |;
                       BIT.W #$0400                         ;9BA8F4|890004  |;
                       BNE CODE_9BA927                      ;9BA8F7|D02E    |;
                       LDA.W $0D1F                          ;9BA8F9|AD1F0D  |;
                       CLC                                  ;9BA8FC|18      |;
                       ADC.W #$007A                         ;9BA8FD|697A00  |;
                       STA.W $0D1F                          ;9BA900|8D1F0D  |;
                       BCC CODE_9BA908                      ;9BA903|9003    |;
                       db $EE,$21,$0D                       ;9BA905|        |;
 
          CODE_9BA908:
                       CMP.W #$E676                         ;9BA908|C976E6  |;
                       BNE CODE_9BA927                      ;9BA90B|D01A    |;
                       LDA.W $0D21                          ;9BA90D|AD210D  |;
                       CMP.W #$007E                         ;9BA910|C97E00  |;
                       BNE CODE_9BA927                      ;9BA913|D012    |;
                       LDA.W #$0010                         ;9BA915|A91000  |;
                       TSB.W $15D8                          ;9BA918|0CD815  |;
                       LDA.W #$007E                         ;9BA91B|A97E00  |;
                       STA.W $0D21                          ;9BA91E|8D210D  |;
                       LDA.W #$577E                         ;9BA921|A97E57  |;
                       STA.W $0D1F                          ;9BA924|8D1F0D  |;
 
          CODE_9BA927:
                       SEP #$20                             ;9BA927|E220    |;
                       LDX.W $0D1F                          ;9BA929|AE1F0D  |;
                       STX.W $2181                          ;9BA92C|8E8121  |;
                       LDA.W $0D21                          ;9BA92F|AD210D  |;
                       STA.W $2183                          ;9BA932|8D8321  |;
                       LDA.B #$0F                           ;9BA935|A90F    |;
                       STA.B $AD                            ;9BA937|85AD    |;
                       LDX.W #$0000                         ;9BA939|A20000  |;
                       LDY.W #$0001                         ;9BA93C|A00100  |;
 
          CODE_9BA93F:
                       LDA.W $0D55,X                        ;9BA93F|BD550D  |;
                       STA.W $2180                          ;9BA942|8D8021  |;
                       LDA.W $0D56,X                        ;9BA945|BD560D  |;
                       AND.B #$0F                           ;9BA948|290F    |;
                       STA.B $14                            ;9BA94A|8514    |;
                       LDA.W $0DB8,X                        ;9BA94C|BDB80D  |;
                       ASL A                                ;9BA94F|0A      |;
                       ASL A                                ;9BA950|0A      |;
                       ASL A                                ;9BA951|0A      |;
                       ASL A                                ;9BA952|0A      |;
                       ORA.B $14                            ;9BA953|0514    |;
                       STA.W $2180                          ;9BA955|8D8021  |;
                       LDA.W $0DB7,X                        ;9BA958|BDB70D  |;
                       STA.W $2180                          ;9BA95B|8D8021  |;
                       LDA.W $0D97,X                        ;9BA95E|BD970D  |;
                       STA.W $2180                          ;9BA961|8D8021  |;
                       LDA.W $0D98,X                        ;9BA964|BD980D  |;
                       AND.B #$3F                           ;9BA967|293F    |;
                       STA.B $14                            ;9BA969|8514    |;
                       LDA.W $0E04,X                        ;9BA96B|BD040E  |;
                       AND.B #$18                           ;9BA96E|2918    |;
                       ASL A                                ;9BA970|0A      |;
                       ASL A                                ;9BA971|0A      |;
                       ASL A                                ;9BA972|0A      |;
                       ORA.B $14                            ;9BA973|0514    |;
                       STA.W $2180                          ;9BA975|8D8021  |;
                       INX                                  ;9BA978|E8      |;
                       INX                                  ;9BA979|E8      |;
                       DEC.B $AD                            ;9BA97A|C6AD    |;
                       BPL CODE_9BA93F                      ;9BA97C|10C1    |;
                       LDA.B #$05                           ;9BA97E|A905    |;
                       STA.B $AD                            ;9BA980|85AD    |;
                       LDX.W #$0000                         ;9BA982|A20000  |;
 
          CODE_9BA985:
                       LDA.W $13C3,X                        ;9BA985|BDC313  |;
                       STA.W $2180                          ;9BA988|8D8021  |;
                       LDA.W $13C5,X                        ;9BA98B|BDC513  |;
                       STA.W $2180                          ;9BA98E|8D8021  |;
                       LDA.W $0F43,X                        ;9BA991|BD430F  |;
                       BPL CODE_9BA998                      ;9BA994|1002    |;
                       LDA.B #$FF                           ;9BA996|A9FF    |;
 
          CODE_9BA998:
                       AND.B #$0F                           ;9BA998|290F    |;
                       STA.B $14                            ;9BA99A|8514    |;
                       LDA.W $0F45,X                        ;9BA99C|BD450F  |;
                       BPL CODE_9BA9A3                      ;9BA99F|1002    |;
                       LDA.B #$FF                           ;9BA9A1|A9FF    |;
 
          CODE_9BA9A3:
                       ASL A                                ;9BA9A3|0A      |;
                       ASL A                                ;9BA9A4|0A      |;
                       ASL A                                ;9BA9A5|0A      |;
                       ASL A                                ;9BA9A6|0A      |;
                       ORA.B $14                            ;9BA9A7|0514    |;
                       STA.W $2180                          ;9BA9A9|8D8021  |;
                       INX                                  ;9BA9AC|E8      |;
                       INX                                  ;9BA9AD|E8      |;
                       INX                                  ;9BA9AE|E8      |;
                       INX                                  ;9BA9AF|E8      |;
                       DEC.B $AD                            ;9BA9B0|C6AD    |;
                       BPL CODE_9BA985                      ;9BA9B2|10D1    |;
                       LDA.W $0DF9                          ;9BA9B4|ADF90D  |;
                       STA.W $2180                          ;9BA9B7|8D8021  |;
                       LDA.W $0DFB                          ;9BA9BA|ADFB0D  |;
                       STA.W $2180                          ;9BA9BD|8D8021  |;
                       LDA.W $0CAD                          ;9BA9C0|ADAD0C  |;
                       STA.W $2180                          ;9BA9C3|8D8021  |;
                       LDA.W $0CAF                          ;9BA9C6|ADAF0C  |;
                       STA.W $2180                          ;9BA9C9|8D8021  |;
                       LDA.W $0CB0                          ;9BA9CC|ADB00C  |;
                       STA.W $2180                          ;9BA9CF|8D8021  |;
                       LDA.W $0CB2                          ;9BA9D2|ADB20C  |;
                       STA.W $2180                          ;9BA9D5|8D8021  |;
                       LDA.W $0CB3                          ;9BA9D8|ADB30C  |;
                       STA.W $2180                          ;9BA9DB|8D8021  |;
                       LDA.W $0CB5                          ;9BA9DE|ADB50C  |;
                       STA.W $2180                          ;9BA9E1|8D8021  |;
                       LDA.W $0CB6                          ;9BA9E4|ADB60C  |;
                       STA.W $2180                          ;9BA9E7|8D8021  |;
                       LDA.W $0CB8                          ;9BA9EA|ADB80C  |;
                       STA.W $2180                          ;9BA9ED|8D8021  |;
                       LDA.B $C1                            ;9BA9F0|A5C1    |;
                       STA.W $2180                          ;9BA9F2|8D8021  |;
                       LDA.W $0AE9                          ;9BA9F5|ADE90A  |;
                       ASL A                                ;9BA9F8|0A      |;
                       ASL A                                ;9BA9F9|0A      |;
                       ASL A                                ;9BA9FA|0A      |;
                       ASL A                                ;9BA9FB|0A      |;
                       ORA.W $0AE7                          ;9BA9FC|0DE70A  |;
                       STA.W $2180                          ;9BA9FF|8D8021  |;
                       LDA.W $0AED                          ;9BAA02|ADED0A  |;
                       ASL A                                ;9BAA05|0A      |;
                       ASL A                                ;9BAA06|0A      |;
                       ASL A                                ;9BAA07|0A      |;
                       ASL A                                ;9BAA08|0A      |;
                       ORA.W $0AEB                          ;9BAA09|0DEB0A  |;
                       STA.W $2180                          ;9BAA0C|8D8021  |;
                       LDA.W $0AF1                          ;9BAA0F|ADF10A  |;
                       ASL A                                ;9BAA12|0A      |;
                       ASL A                                ;9BAA13|0A      |;
                       ASL A                                ;9BAA14|0A      |;
                       ASL A                                ;9BAA15|0A      |;
                       ORA.W $0AEF                          ;9BAA16|0DEF0A  |;
                       STA.W $2180                          ;9BAA19|8D8021  |;
                       LDA.L $7E35E0                        ;9BAA1C|AFE0357E|;
                       STA.W $2180                          ;9BAA20|8D8021  |;
                       LDA.L $7E35E1                        ;9BAA23|AFE1357E|;
                       STA.W $2180                          ;9BAA27|8D8021  |;
                       LDA.W $1624                          ;9BAA2A|AD2416  |;
                       STA.W $2180                          ;9BAA2D|8D8021  |;
                       LDA.W $0CEB                          ;9BAA30|ADEB0C  |;
                       STA.W $2180                          ;9BAA33|8D8021  |;
                       LDA.W $0CEC                          ;9BAA36|ADEC0C  |;
                       STA.W $2180                          ;9BAA39|8D8021  |;
                       LDA.W $0D37                          ;9BAA3C|AD370D  |;
                       STA.W $2180                          ;9BAA3F|8D8021  |;
                       LDA.W $0D38                          ;9BAA42|AD380D  |;
                       STA.W $2180                          ;9BAA45|8D8021  |;
                       LDA.W $0C29                          ;9BAA48|AD290C  |;
                       STA.W $2180                          ;9BAA4B|8D8021  |;
                       LDA.W $0C2A                          ;9BAA4E|AD2A0C  |;
                       STA.W $2180                          ;9BAA51|8D8021  |;
                       REP #$20                             ;9BAA54|C220    |;
                       LDA.W #$FFFF                         ;9BAA56|A9FFFF  |;
                       STA.W $0CAD                          ;9BAA59|8DAD0C  |;
                       STA.W $0CB3                          ;9BAA5C|8DB30C  |;
 
          CODE_9BAA5F:
                       RTL                                  ;9BAA5F|6B      |;
 
          CODE_9BAA60:
                       LDA.W $07F9                          ;9BAA60|ADF907  |;
                       BNE CODE_9BAA60                      ;9BAA63|D0FB    |;
                       JSL.L CODE_9C98DF                    ;9BAA65|22DF989C|;
                       LDA.W #$0000                         ;9BAA69|A90000  |;
                       STA.L $7E35E0                        ;9BAA6C|8FE0357E|;
                       LDA.W #$0800                         ;9BAA70|A90008  |;
                       TSB.W $15D8                          ;9BAA73|0CD815  |;
                       JSL.L CODE_9FB9A4                    ;9BAA76|22A4B99F|;
                       LDA.W #$FFFF                         ;9BAA7A|A9FFFF  |;
                       STA.W $0CD5                          ;9BAA7D|8DD50C  |;
                       STZ.W $0CD7                          ;9BAA80|9CD70C  |;
                       LDA.L $7E35D0                        ;9BAA83|AFD0357E|;
                       CLC                                  ;9BAA87|18      |;
                       ADC.L $7E35AA                        ;9BAA88|6FAA357E|;
                       LDX.W #$0400                         ;9BAA8C|A20004  |;
                       LDY.W #$0000                         ;9BAA8F|A00000  |;
                       JSL.L CODE_808862                    ;9BAA92|22628880|;
                       LDA.W #$FFFF                         ;9BAA96|A9FFFF  |;
                       STA.W $0CAB                          ;9BAA99|8DAB0C  |;
                       STA.L $7E35F0                        ;9BAA9C|8FF0357E|;
                       LDA.W #$007F                         ;9BAAA0|A97F00  |;
                       STA.B $0E                            ;9BAAA3|850E    |;
                       LDA.W #$C800                         ;9BAAA5|A900C8  |;
                       STA.B $0C                            ;9BAAA8|850C    |;
                       LDA.W #$0020                         ;9BAAAA|A92000  |;
                       STA.B $24                            ;9BAAAD|8524    |;
                       LDA.W #$0055                         ;9BAAAF|A95500  |;
                       STA.B $26                            ;9BAAB2|8526    |;
                       LDA.W #$0008                         ;9BAAB4|A90800  |;
                       STA.B $18                            ;9BAAB7|8518    |;
                       LDA.W #$0008                         ;9BAAB9|A90800  |;
                       STA.B $1A                            ;9BAABC|851A    |;
                       LDA.W #$0000                         ;9BAABE|A90000  |;
                       STA.W $079C                          ;9BAAC1|8D9C07  |;
                       LDA.W #$2000                         ;9BAAC4|A90020  |;
                       STA.B $14                            ;9BAAC7|8514    |;
                       LDA.L $7E35AA                        ;9BAAC9|AFAA357E|;
                       LDX.W #$0002                         ;9BAACD|A20200  |;
                       LDY.W #$0002                         ;9BAAD0|A00200  |;
                       JSL.L CODE_808A11                    ;9BAAD3|22118A80|;
                       LDA.W $0D1F                          ;9BAAD7|AD1F0D  |;
                       PHA                                  ;9BAADA|48      |;
                       LDA.W $0D21                          ;9BAADB|AD210D  |;
                       PHA                                  ;9BAADE|48      |;
                       LDA.W #$0020                         ;9BAADF|A92000  |;
                       TRB.W $15D8                          ;9BAAE2|1CD815  |;
                       LDA.W $0D37                          ;9BAAE5|AD370D  |;
                       PHA                                  ;9BAAE8|48      |;
                       LDA.W $0CEB                          ;9BAAE9|ADEB0C  |;
                       PHA                                  ;9BAAEC|48      |;
                       LDA.W $0D1F                          ;9BAAED|AD1F0D  |;
                       CMP.W #$577E                         ;9BAAF0|C97E57  |;
                       LDA.W $0D21                          ;9BAAF3|AD210D  |;
                       SBC.W #$007E                         ;9BAAF6|E97E00  |;
                       BCS CODE_9BAB07                      ;9BAAF9|B00C    |;
 
       UNREACH_9BAAFB:
                       db $A9,$7E,$00,$8D,$21,$0D,$A9,$7E   ;9BAAFB|        |;
                       db $57,$8D,$1F,$0D                   ;9BAB03|        |;
 
          CODE_9BAB07:
                       LDA.W #$E676                         ;9BAB07|A976E6  |;
                       CMP.W $0D1F                          ;9BAB0A|CD1F0D  |;
                       LDA.W #$007E                         ;9BAB0D|A97E00  |;
                       SBC.W $0D21                          ;9BAB10|ED210D  |;
                       BCC UNREACH_9BAAFB                   ;9BAB13|90E6    |;
                       LDA.W $0D1F                          ;9BAB15|AD1F0D  |;
                       SEC                                  ;9BAB18|38      |;
                       SBC.W #$577E                         ;9BAB19|E97E57  |;
                       STA.B $08                            ;9BAB1C|8508    |;
                       LDA.W $0D21                          ;9BAB1E|AD210D  |;
                       SBC.W #$007E                         ;9BAB21|E97E00  |;
                       STA.B $0A                            ;9BAB24|850A    |;
                       LDA.W #$007A                         ;9BAB26|A97A00  |;
                       STA.B $04                            ;9BAB29|8504    |;
                       JSL.L CODE_80923F                    ;9BAB2B|223F9280|;
                       LDA.B $0A                            ;9BAB2F|A50A    |;
                       BNE UNREACH_9BAAFB                   ;9BAB31|D0C8    |;
                       LDA.W $0D21                          ;9BAB33|AD210D  |;
                       STA.B $9B                            ;9BAB36|859B    |;
                       LDA.W $0D1F                          ;9BAB38|AD1F0D  |;
                       STA.B $99                            ;9BAB3B|8599    |;
                       LDA.W #$0000                         ;9BAB3D|A90000  |;
                       PHA                                  ;9BAB40|48      |;
 
          CODE_9BAB41:
                       JSL.L CODE_9BB0C5                    ;9BAB41|22C5B09B|;
                       PLA                                  ;9BAB45|68      |;
                       INC A                                ;9BAB46|1A      |;
                       PHA                                  ;9BAB47|48      |;
                       LDA.B $C1                            ;9BAB48|A5C1    |;
                       BNE CODE_9BAB41                      ;9BAB4A|D0F5    |;
                       PLA                                  ;9BAB4C|68      |;
                       LSR A                                ;9BAB4D|4A      |;
                       PHA                                  ;9BAB4E|48      |;
          CODE_9BAB4F:
                       LDA.B $01,S                          ;9BAB4F|A301    |;
                       BEQ CODE_9BAB5C                      ;9BAB51|F009    |;
                       JSL.L CODE_9BB136                    ;9BAB53|2236B19B|;
                       PLA                                  ;9BAB57|68      |;
                       DEC A                                ;9BAB58|3A      |;
                       PHA                                  ;9BAB59|48      |;
                       BRA CODE_9BAB4F                      ;9BAB5A|80F3    |;
 
          CODE_9BAB5C:
                       PLA                                  ;9BAB5C|68      |;
                       LDA.W $0CEB                          ;9BAB5D|ADEB0C  |;
                       STA.W $0CBD                          ;9BAB60|8DBD0C  |;
                       LDA.W $0D37                          ;9BAB63|AD370D  |;
                       STA.W $0CBF                          ;9BAB66|8DBF0C  |;
                       LDX.W #$0000                         ;9BAB69|A20000  |;
                       LDY.W #$01C0                         ;9BAB6C|A0C001  |;
                       LDA.W #$6000                         ;9BAB6F|A90060  |;
                       JSL.L CODE_80AEE1                    ;9BAB72|22E1AE80|;
                       STZ.W $0AD3                          ;9BAB76|9CD30A  |;
                       LDA.W #$000A                         ;9BAB79|A90A00  |;
                       STA.W $0AD1                          ;9BAB7C|8DD10A  |;
                       LDX.W #$009C                         ;9BAB7F|A29C00  |;
                       LDA.W #$9971                         ;9BAB82|A97199  |;
                       JSL.L CODE_80855E                    ;9BAB85|225E8580|;
                       JSL.L CODE_8086BD                    ;9BAB89|22BD8680|;
                       JSL.L CODE_9CA19B                    ;9BAB8D|229BA19C|;
                       JSL.L CODE_80AF7B                    ;9BAB91|227BAF80|;
                       JSL.L CODE_9FBAAA                    ;9BAB95|22AABA9F|;
                       JSL.L CODE_80AFDE                    ;9BAB99|22DEAF80|;
                       LDA.W #$0001                         ;9BAB9D|A90100  |;
                       STA.B $C1                            ;9BABA0|85C1    |;
                       LDA.W #$0002                         ;9BABA2|A90200  |;
                       TRB.W $15DC                          ;9BABA5|1CDC15  |;
                       JMP.W CODE_9BACE5                    ;9BABA8|4CE5AC  |;
 
          CODE_9BABAB:
                       LDA.W $0CAB                          ;9BABAB|ADAB0C  |;
                       BPL CODE_9BABB3                      ;9BABAE|1003    |;
                       JMP.W CODE_9BAC3E                    ;9BABB0|4C3EAC  |;
 
          CODE_9BABB3:
                       TAX                                  ;9BABB3|AA      |;
                       LDA.W $0D55,X                        ;9BABB4|BD550D  |;
                       STA.W $0D75                          ;9BABB7|8D750D  |;
                       CMP.W $0CBD                          ;9BABBA|CDBD0C  |;
                       BPL CODE_9BABD0                      ;9BABBD|1011    |;
                       LDA.W $0CBD                          ;9BABBF|ADBD0C  |;
                       SEC                                  ;9BABC2|38      |;
                       SBC.W #$0004                         ;9BABC3|E90400  |;
                       CMP.W $0D75                          ;9BABC6|CD750D  |;
                       BPL CODE_9BABCE                      ;9BABC9|1003    |;
                       db $AD,$75,$0D                       ;9BABCB|        |;
 
          CODE_9BABCE:
                       BRA CODE_9BABDF                      ;9BABCE|800F    |;
 
          CODE_9BABD0:
                       LDA.W $0CBD                          ;9BABD0|ADBD0C  |;
                       CLC                                  ;9BABD3|18      |;
                       ADC.W #$0004                         ;9BABD4|690400  |;
                       CMP.W $0D75                          ;9BABD7|CD750D  |;
                       BMI CODE_9BABDF                      ;9BABDA|3003    |;
                       LDA.W $0D75                          ;9BABDC|AD750D  |;
 
          CODE_9BABDF:
                       CMP.W #$FFC0                         ;9BABDF|C9C0FF  |;
                       BPL CODE_9BABE7                      ;9BABE2|1003    |;
                       LDA.W #$FFC0                         ;9BABE4|A9C0FF  |;
 
          CODE_9BABE7:
                       CMP.W #$0040                         ;9BABE7|C94000  |;
                       BMI CODE_9BABEF                      ;9BABEA|3003    |;
                       LDA.W #$0040                         ;9BABEC|A94000  |;
 
          CODE_9BABEF:
                       STA.W $0CEB                          ;9BABEF|8DEB0C  |;
                       STA.W $0CBD                          ;9BABF2|8DBD0C  |;
                       LDA.W $0DB7,X                        ;9BABF5|BDB70D  |;
                       STA.W $0DD7                          ;9BABF8|8DD70D  |;
                       CMP.W $0CBF                          ;9BABFB|CDBF0C  |;
                       BPL CODE_9BAC11                      ;9BABFE|1011    |;
                       LDA.W $0CBF                          ;9BAC00|ADBF0C  |;
                       SEC                                  ;9BAC03|38      |;
                       SBC.W #$0004                         ;9BAC04|E90400  |;
                       CMP.W $0DD7                          ;9BAC07|CDD70D  |;
                       BPL CODE_9BAC0F                      ;9BAC0A|1003    |;
                       db $AD,$D7,$0D                       ;9BAC0C|        |;
          CODE_9BAC0F:
                       BRA CODE_9BAC20                      ;9BAC0F|800F    |;
 
          CODE_9BAC11:
                       LDA.W $0CBF                          ;9BAC11|ADBF0C  |;
                       CLC                                  ;9BAC14|18      |;
                       ADC.W #$0004                         ;9BAC15|690400  |;
                       CMP.W $0DD7                          ;9BAC18|CDD70D  |;
                       BMI CODE_9BAC20                      ;9BAC1B|3003    |;
                       LDA.W $0DD7                          ;9BAC1D|ADD70D  |;
 
          CODE_9BAC20:
                       CMP.W #$FF39                         ;9BAC20|C939FF  |;
                       BPL CODE_9BAC28                      ;9BAC23|1003    |;
                       db $A9,$39,$FF                       ;9BAC25|        |;
 
          CODE_9BAC28:
                       CMP.W #$0100                         ;9BAC28|C90001  |;
                       BMI CODE_9BAC30                      ;9BAC2B|3003    |;
                       db $A9,$00,$01                       ;9BAC2D|        |;
 
          CODE_9BAC30:
                       STA.W $0D37                          ;9BAC30|8D370D  |;
                       STA.W $0CBF                          ;9BAC33|8DBF0C  |;
                       TXA                                  ;9BAC36|8A      |;
                       LSR A                                ;9BAC37|4A      |;
                       STA.W $0AF3                          ;9BAC38|8DF30A  |;
                       JMP.W CODE_9BACCD                    ;9BAC3B|4CCDAC  |;
 
          CODE_9BAC3E:
                       CMP.W #$FFFF                         ;9BAC3E|C9FFFF  |;
                       BEQ CODE_9BACC1                      ;9BAC41|F07E    |;
                       LDA.W $0D75                          ;9BAC43|AD750D  |;
                       CMP.W $0CBD                          ;9BAC46|CDBD0C  |;
                       BPL CODE_9BAC5C                      ;9BAC49|1011    |;
                       LDA.W $0CBD                          ;9BAC4B|ADBD0C  |;
                       SEC                                  ;9BAC4E|38      |;
                       SBC.W #$0002                         ;9BAC4F|E90200  |;
                       CMP.W $0D75                          ;9BAC52|CD750D  |;
                       BPL CODE_9BAC5A                      ;9BAC55|1003    |;
                       LDA.W $0D75                          ;9BAC57|AD750D  |;
 
          CODE_9BAC5A:
                       BRA CODE_9BAC6B                      ;9BAC5A|800F    |;
 
          CODE_9BAC5C:
                       LDA.W $0CBD                          ;9BAC5C|ADBD0C  |;
                       CLC                                  ;9BAC5F|18      |;
                       ADC.W #$0002                         ;9BAC60|690200  |;
                       CMP.W $0D75                          ;9BAC63|CD750D  |;
                       BMI CODE_9BAC6B                      ;9BAC66|3003    |;
                       LDA.W $0D75                          ;9BAC68|AD750D  |;
 
          CODE_9BAC6B:
                       CMP.W #$FFC0                         ;9BAC6B|C9C0FF  |;
                       BPL CODE_9BAC73                      ;9BAC6E|1003    |;
                       LDA.W #$FFC0                         ;9BAC70|A9C0FF  |;
 
          CODE_9BAC73:
                       CMP.W #$0040                         ;9BAC73|C94000  |;
                       BMI CODE_9BAC7B                      ;9BAC76|3003    |;
                       LDA.W #$0040                         ;9BAC78|A94000  |;
 
          CODE_9BAC7B:
                       STA.W $0CEB                          ;9BAC7B|8DEB0C  |;
                       STA.W $0CBD                          ;9BAC7E|8DBD0C  |;
                       LDA.W $0DD7                          ;9BAC81|ADD70D  |;
                       CMP.W $0CBF                          ;9BAC84|CDBF0C  |;
                       BPL CODE_9BAC9A                      ;9BAC87|1011    |;
                       LDA.W $0CBF                          ;9BAC89|ADBF0C  |;
                       SEC                                  ;9BAC8C|38      |;
                       SBC.W #$0002                         ;9BAC8D|E90200  |;
                       CMP.W $0DD7                          ;9BAC90|CDD70D  |;
                       BPL CODE_9BAC98                      ;9BAC93|1003    |;
                       LDA.W $0DD7                          ;9BAC95|ADD70D  |;
 
          CODE_9BAC98:
                       BRA CODE_9BACA9                      ;9BAC98|800F    |;
 
          CODE_9BAC9A:
                       LDA.W $0CBF                          ;9BAC9A|ADBF0C  |;
                       CLC                                  ;9BAC9D|18      |;
                       ADC.W #$0002                         ;9BAC9E|690200  |;
                       CMP.W $0DD7                          ;9BACA1|CDD70D  |;
                       BMI CODE_9BACA9                      ;9BACA4|3003    |;
                       LDA.W $0DD7                          ;9BACA6|ADD70D  |;
 
          CODE_9BACA9:
                       CMP.W #$FF39                         ;9BACA9|C939FF  |;
                       BPL CODE_9BACB1                      ;9BACAC|1003    |;
                       db $A9,$39,$FF                       ;9BACAE|        |;
 
          CODE_9BACB1:
                       CMP.W #$0100                         ;9BACB1|C90001  |;
                       BMI CODE_9BACB9                      ;9BACB4|3003    |;
                       db $A9,$00,$01                       ;9BACB6|        |;
 
          CODE_9BACB9:
                       STA.W $0D37                          ;9BACB9|8D370D  |;
                       STA.W $0CBF                          ;9BACBC|8DBF0C  |;
                       BRA CODE_9BACCD                      ;9BACBF|800C    |;
 
          CODE_9BACC1:
                       LDA.W $0CEB                          ;9BACC1|ADEB0C  |;
                       STA.W $0CBD                          ;9BACC4|8DBD0C  |;
                       LDA.W $0D37                          ;9BACC7|AD370D  |;
                       STA.W $0CBF                          ;9BACCA|8DBF0C  |;
 
          CODE_9BACCD:
                       LDA.B $C1                            ;9BACCD|A5C1    |;
                       STA.W $0ADB                          ;9BACCF|8DDB0A  |;
                       JSL.L CODE_9CA19B                    ;9BACD2|229BA19C|;
                       JSL.L CODE_80AF7B                    ;9BACD6|227BAF80|;
                       JSL.L CODE_9FBAAA                    ;9BACDA|22AABA9F|;
                       JSL.L CODE_80AFDE                    ;9BACDE|22DEAF80|;
                       STZ.W $0CB9                          ;9BACE2|9CB90C  |;
 
          CODE_9BACE5:
                       LDX.B $C1                            ;9BACE5|A6C1    |;
                       BNE CODE_9BACEA                      ;9BACE7|D001    |;
                       db $E8                               ;9BACE9|        |;
 
          CODE_9BACEA:
                       LDY.W #$0000                         ;9BACEA|A00000  |;
                       JSL.L CODE_80858E                    ;9BACED|228E8580|;
                       JSL.L CODE_9B8017                    ;9BACF1|2217809B|;
                       JSL.L CODE_9B851F                    ;9BACF5|221F859B|;
                       LDA.W #$0001                         ;9BACF9|A90100  |;
                       STA.B $C1                            ;9BACFC|85C1    |;
                       LDA.B $A5                            ;9BACFE|A5A5    |;
                       BIT.W #$0008                         ;9BAD00|890800  |;
                       BEQ CODE_9BAD08                      ;9BAD03|F003    |;
                       JMP.W CODE_9BAE77                    ;9BAD05|4C77AE  |;
 
          CODE_9BAD08:
                       STA.B $B9                            ;9BAD08|85B9    |;
                       LDA.W #$FFFF                         ;9BAD0A|A9FFFF  |;
                       STA.B $B5                            ;9BAD0D|85B5    |;
                       STA.B $B7                            ;9BAD0F|85B7    |;
                       STA.W $0CAB                          ;9BAD11|8DAB0C  |;
                       LDA.W #$0016                         ;9BAD14|A91600  |;
                       STA.B $89                            ;9BAD17|8589    |;
 
          CODE_9BAD19:
                       LDY.B $89                            ;9BAD19|A489    |;
                       LDA.W $0F43,Y                        ;9BAD1B|B9430F  |;
                       BMI CODE_9BAD81                      ;9BAD1E|3061    |;
                       LDA.W $0D55,Y                        ;9BAD20|B9550D  |;
                       SEC                                  ;9BAD23|38      |;
                       SBC.W $0D75                          ;9BAD24|ED750D  |;
                       STA.B $A5                            ;9BAD27|85A5    |;
                       STA.B $AD                            ;9BAD29|85AD    |;
                       LDA.W $0DB7,Y                        ;9BAD2B|B9B70D  |;
                       SEC                                  ;9BAD2E|38      |;
                       SBC.W $0DD7                          ;9BAD2F|EDD70D  |;
                       STA.B $A9                            ;9BAD32|85A9    |;
                       STA.B $B1                            ;9BAD34|85B1    |;
                       JSL.L CODE_9BB445                    ;9BAD36|2245B49B|;
                       CMP.W #$0008                         ;9BAD3A|C90800  |;
                       BEQ CODE_9BAD81                      ;9BAD3D|F042    |;
                       SEC                                  ;9BAD3F|38      |;
                       SBC.B $B9                            ;9BAD40|E5B9    |;
                       BEQ CODE_9BAD4E                      ;9BAD42|F00A    |;
                       CMP.W #$0001                         ;9BAD44|C90100  |;
                       BEQ CODE_9BAD4E                      ;9BAD47|F005    |;
                       CMP.W #$0007                         ;9BAD49|C90700  |;
                       BNE CODE_9BAD81                      ;9BAD4C|D033    |;
 
          CODE_9BAD4E:
                       LDA.B $AD                            ;9BAD4E|A5AD    |;
                       LSR A                                ;9BAD50|4A      |;
                       LSR A                                ;9BAD51|4A      |;
                       LSR A                                ;9BAD52|4A      |;
                       BIT.W #$1000                         ;9BAD53|890010  |;
                       BEQ CODE_9BAD5B                      ;9BAD56|F003    |;
                       ORA.W #$E000                         ;9BAD58|0900E0  |;
 
          CODE_9BAD5B:
                       TAX                                  ;9BAD5B|AA      |;
                       JSL.L CODE_808F7D                    ;9BAD5C|227D8F80|;
                       STA.B $A5                            ;9BAD60|85A5    |;
                       LDA.B $B1                            ;9BAD62|A5B1    |;
                       LSR A                                ;9BAD64|4A      |;
                       LSR A                                ;9BAD65|4A      |;
                       LSR A                                ;9BAD66|4A      |;
                       BIT.W #$1000                         ;9BAD67|890010  |;
                       BEQ CODE_9BAD6F                      ;9BAD6A|F003    |;
                       ORA.W #$E000                         ;9BAD6C|0900E0  |;
 
          CODE_9BAD6F:
                       TAX                                  ;9BAD6F|AA      |;
                       JSL.L CODE_808F7D                    ;9BAD70|227D8F80|;
                       CLC                                  ;9BAD74|18      |;
                       ADC.B $A5                            ;9BAD75|65A5    |;
                       CMP.B $B7                            ;9BAD77|C5B7    |;
                       BCS CODE_9BAD81                      ;9BAD79|B006    |;
                       STA.B $B7                            ;9BAD7B|85B7    |;
                       LDA.B $89                            ;9BAD7D|A589    |;
                       STA.B $B5                            ;9BAD7F|85B5    |;
 
          CODE_9BAD81:
                       DEC.B $89                            ;9BAD81|C689    |;
                       DEC.B $89                            ;9BAD83|C689    |;
                       BPL CODE_9BAD19                      ;9BAD85|1092    |;
                       LDA.B $B5                            ;9BAD87|A5B5    |;
                       BMI CODE_9BADA5                      ;9BAD89|301A    |;
                       LDA.B $B7                            ;9BAD8B|A5B7    |;
                       CMP.W #$0002                         ;9BAD8D|C90200  |;
                       BCS CODE_9BADA5                      ;9BAD90|B013    |;
                       LDA.B $B5                            ;9BAD92|A5B5    |;
                       STA.W $0CAB                          ;9BAD94|8DAB0C  |;
                       LDA.W #$001E                         ;9BAD97|A91E00  |;
                       STA.B $C1                            ;9BAD9A|85C1    |;
                       LDA.W #$0020                         ;9BAD9C|A92000  |;
                       TRB.W $15D8                          ;9BAD9F|1CD815  |;
                       JMP.W CODE_9BABAB                    ;9BADA2|4CABAB  |;
 
          CODE_9BADA5:
                       PHK                                  ;9BADA5|4B      |;
                       PLB                                  ;9BADA6|AB      |;
                       JSL.L CODE_9B851F                    ;9BADA7|221F859B|;
                       LDA.W #$FFFE                         ;9BADAB|A9FEFF  |;
                       STA.W $0CAB                          ;9BADAE|8DAB0C  |;
                       LDA.W #$0020                         ;9BADB1|A92000  |;
                       TSB.W $15D8                          ;9BADB4|0CD815  |;
                       ASL.B $A5                            ;9BADB7|06A5    |;
                       ASL.B $A5                            ;9BADB9|06A5    |;
                       LDY.B $A5                            ;9BADBB|A4A5    |;
                       LDA.W UNREACH_9BAE57,Y               ;9BADBD|B957AE  |;
                       ADC.W $0D75                          ;9BADC0|6D750D  |;
                       STA.B $AD                            ;9BADC3|85AD    |;
                       LDX.W #$0020                         ;9BADC5|A22000  |;
                       LDA.W UNREACH_9BAE57,Y               ;9BADC8|B957AE  |;
                       XBA                                  ;9BADCB|EB      |;
                       AND.W #$FF00                         ;9BADCC|2900FF  |;
                       STA.W $0EC3,X                        ;9BADCF|9DC30E  |;
                       LDA.W UNREACH_9BAE59,Y               ;9BADD2|B959AE  |;
                       CLC                                  ;9BADD5|18      |;
                       ADC.W $0DD7                          ;9BADD6|6DD70D  |;
                       STA.B $B1                            ;9BADD9|85B1    |;
                       LDA.W UNREACH_9BAE59,Y               ;9BADDB|B959AE  |;
                       XBA                                  ;9BADDE|EB      |;
                       AND.W #$FF00                         ;9BADDF|2900FF  |;
                       STA.W $0EE3,X                        ;9BADE2|9DE30E  |;
                       LDA.B $AD                            ;9BADE5|A5AD    |;
                       PHA                                  ;9BADE7|48      |;
                       LDA.B $B1                            ;9BADE8|A5B1    |;
                       PHA                                  ;9BADEA|48      |;
                       STX.B $95                            ;9BADEB|8695    |;
                       STZ.W $1103,X                        ;9BADED|9E0311  |;
                       STZ.W $1123,X                        ;9BADF0|9E2311  |;
                       LDA.W #$0001                         ;9BADF3|A90100  |;
                       STA.W $0D3B                          ;9BADF6|8D3B0D  |;
                       STA.W $0D3D                          ;9BADF9|8D3D0D  |;
                       JSL.L CODE_9E8D3E                    ;9BADFC|223E8D9E|;
                       PLA                                  ;9BAE00|68      |;
                       STA.B $B1                            ;9BAE01|85B1    |;
                       PLA                                  ;9BAE03|68      |;
                       STA.B $AD                            ;9BAE04|85AD    |;
                       LDA.W $1123,X                        ;9BAE06|BD2311  |;
                       ORA.W $1103,X                        ;9BAE09|1D0311  |;
                       BEQ CODE_9BAE3E                      ;9BAE0C|F030    |;
                       db $BD,$23,$11,$0A,$EB,$29,$FF,$00   ;9BAE0E|        |;
                       db $C9,$80,$00,$90,$03,$09,$00,$FF   ;9BAE16|        |;
                       db $18,$6D,$75,$0D,$85,$AD,$BD,$03   ;9BAE1E|        |;
                       db $11,$0A,$EB,$29,$FF,$00,$C9,$80   ;9BAE26|        |;
                       db $00,$90,$03,$09,$00,$FF,$49,$FF   ;9BAE2E|        |;
                       db $FF,$1A,$18,$6D,$D7,$0D,$85,$B1   ;9BAE36|        |;
 
          CODE_9BAE3E:
                       LDA.B $AD                            ;9BAE3E|A5AD    |;
                       STA.W $0D75                          ;9BAE40|8D750D  |;
                       STA.W $0CEB                          ;9BAE43|8DEB0C  |;
                       LDA.B $B1                            ;9BAE46|A5B1    |;
                       STA.W $0DD7                          ;9BAE48|8DD70D  |;
                       STA.W $0D37                          ;9BAE4B|8D370D  |;
                       LDA.W #$0010                         ;9BAE4E|A91000  |;
                       STA.W $0AF3                          ;9BAE51|8DF30A  |;
                       JMP.W CODE_9BABAB                    ;9BAE54|4CABAB  |;
 
       UNREACH_9BAE57:
                       db $00,$00                           ;9BAE57|        |;
 
       UNREACH_9BAE59:
                       db $02,$00,$02,$00,$02,$00,$02,$00   ;9BAE59|        |;
                       db $00,$00,$02,$00,$FE,$FF,$00,$00   ;9BAE61|        |;
                       db $FE,$FF,$FE,$FF,$FE,$FF,$FE,$FF   ;9BAE69|        |;
                       db $00,$00,$FE,$FF,$02,$00           ;9BAE71|        |;
 
          CODE_9BAE77:
                       LDA.W $0CAB                          ;9BAE77|ADAB0C  |;
                       CMP.W #$FFFF                         ;9BAE7A|C9FFFF  |;
                       BNE CODE_9BAECF                      ;9BAE7D|D050    |;
                       LDA.W $0AE7                          ;9BAE7F|ADE70A  |;
                       CMP.W #$000F                         ;9BAE82|C90F00  |;
                       BEQ CODE_9BAE9D                      ;9BAE85|F016    |;
                       ASL A                                ;9BAE87|0A      |;
                       TAX                                  ;9BAE88|AA      |;
                       LDA.W #$000F                         ;9BAE89|A90F00  |;
                       STA.W $0AF3                          ;9BAE8C|8DF30A  |;
                       LDA.W $0D55,X                        ;9BAE8F|BD550D  |;
                       STA.W $0D75                          ;9BAE92|8D750D  |;
                       LDA.W $0DB7,X                        ;9BAE95|BDB70D  |;
                       STA.W $0DD7                          ;9BAE98|8DD70D  |;
                       BRA CODE_9BAECF                      ;9BAE9B|8032    |;
 
          CODE_9BAE9D:
                       LDA.W #$000F                         ;9BAE9D|A90F00  |;
                       STA.W $0AF3                          ;9BAEA0|8DF30A  |;
                       LDA.W $0D71                          ;9BAEA3|AD710D  |;
                       CMP.W #$FF78                         ;9BAEA6|C978FF  |;
                       BPL CODE_9BAEAE                      ;9BAEA9|1003    |;
                       db $A9,$78,$FF                       ;9BAEAB|        |;
 
          CODE_9BAEAE:
                       CMP.W #$0088                         ;9BAEAE|C98800  |;
                       BMI CODE_9BAEB6                      ;9BAEB1|3003    |;
                       db $A9,$88,$00                       ;9BAEB3|        |;
 
          CODE_9BAEB6:
                       STA.W $0D75                          ;9BAEB6|8D750D  |;
                       LDA.W $0DD3                          ;9BAEB9|ADD30D  |;
                       CMP.W #$FED4                         ;9BAEBC|C9D4FE  |;
                       BPL CODE_9BAEC4                      ;9BAEBF|1003    |;
                       db $A9,$D4,$FE                       ;9BAEC1|        |;
 
          CODE_9BAEC4:
                       CMP.W #$012C                         ;9BAEC4|C92C01  |;
                       BMI CODE_9BAECC                      ;9BAEC7|3003    |;
                       db $A9,$2C,$01                       ;9BAEC9|        |;
 
          CODE_9BAECC:
                       STA.W $0DD7                          ;9BAECC|8DD70D  |;
 
          CODE_9BAECF:
                       LDA.B $A9                            ;9BAECF|A5A9    |;
                       BIT.W #$8000                         ;9BAED1|890080  |;
                       BEQ CODE_9BAF03                      ;9BAED4|F02D    |;
                       LDA.L $7E35F0                        ;9BAED6|AFF0357E|;
                       BEQ CODE_9BAEFA                      ;9BAEDA|F01E    |;
                       LDA.L $7E35D0                        ;9BAEDC|AFD0357E|;
                       CLC                                  ;9BAEE0|18      |;
                       ADC.L $7E35AA                        ;9BAEE1|6FAA357E|;
                       LDX.W #$0180                         ;9BAEE5|A28001  |;
                       LDY.W #$0000                         ;9BAEE8|A00000  |;
                       JSL.L CODE_808862                    ;9BAEEB|22628880|;
                       JSL.L CODE_808583                    ;9BAEEF|22838580|;
                       LDA.W #$0000                         ;9BAEF3|A90000  |;
                       STA.L $7E35F0                        ;9BAEF6|8FF0357E|;
 
          CODE_9BAEFA:
                       LDA.W $15DC                          ;9BAEFA|ADDC15  |;
                       EOR.W #$0002                         ;9BAEFD|490200  |;
                       STA.W $15DC                          ;9BAF00|8DDC15  |;
 
          CODE_9BAF03:
                       LDA.B $B1                            ;9BAF03|A5B1    |;
                       BIT.W #$0020                         ;9BAF05|892000  |;
                       BNE CODE_9BAF31                      ;9BAF08|D027    |;
                       BIT.W #$0050                         ;9BAF0A|895000  |;
                       BNE CODE_9BAF56                      ;9BAF0D|D047    |;
                       LDA.B $A9                            ;9BAF0F|A5A9    |;
                       BIT.W #$2000                         ;9BAF11|890020  |;
                       BNE UNREACH_9BAF3D                   ;9BAF14|D027    |;
                       BIT.W #$1000                         ;9BAF16|890010  |;
                       BNE CODE_9BAF3A                      ;9BAF19|D01F    |;
                       LDA.B $B1                            ;9BAF1B|A5B1    |;
                       BIT.W #$0080                         ;9BAF1D|898000  |;
                       BNE CODE_9BAF4C                      ;9BAF20|D02A    |;
                       BIT.W #$4000                         ;9BAF22|890040  |;
                       BEQ CODE_9BAF80                      ;9BAF25|F059    |;
                       JSL.L CODE_9BB0C5                    ;9BAF27|22C5B09B|;
                       JSL.L CODE_9BB0C5                    ;9BAF2B|22C5B09B|;
                       BRA CODE_9BAF6E                      ;9BAF2F|803D    |;
 
          CODE_9BAF31:
                       JSL.L CODE_9BB0C5                    ;9BAF31|22C5B09B|;
                       LDX.W #$0006                         ;9BAF35|A20600  |;
                       BRA CODE_9BAF67                      ;9BAF38|802D    |;
 
          CODE_9BAF3A:
                       JMP.W CODE_9BB020                    ;9BAF3A|4C20B0  |;
 
       UNREACH_9BAF3D:
                       db $A9,$FF,$FF,$8D,$AB,$0C,$A9,$20   ;9BAF3D|        |;
                       db $00,$1C,$D8,$15,$4C,$E5,$AC       ;9BAF45|        |;
 
          CODE_9BAF4C:
                       JSL.L CODE_9BB136                    ;9BAF4C|2236B19B|;
                       JSL.L CODE_9BB136                    ;9BAF50|2236B19B|;
                       BRA CODE_9BAF6E                      ;9BAF54|8018    |;
 
          CODE_9BAF56:
                       JSL.L CODE_9BB136                    ;9BAF56|2236B19B|;
                       LDX.W #$0006                         ;9BAF5A|A20600  |;
                       LDA.B $B1                            ;9BAF5D|A5B1    |;
                       BIT.W #$0010                         ;9BAF5F|891000  |;
                       BNE CODE_9BAF67                      ;9BAF62|D003    |;
                       LDX.W #$000C                         ;9BAF64|A20C00  |;
 
          CODE_9BAF67:
                       LDY.W #$0000                         ;9BAF67|A00000  |;
                       JSL.L CODE_80858E                    ;9BAF6A|228E8580|;
 
          CODE_9BAF6E:
                       JSL.L CODE_80A3C1                    ;9BAF6E|22C1A380|;
                       LDA.W #$0001                         ;9BAF72|A90100  |;
                       STA.B $C1                            ;9BAF75|85C1    |;
                       LDA.W #$0002                         ;9BAF77|A90200  |;
                       TRB.W $15DC                          ;9BAF7A|1CDC15  |;
                       JMP.W CODE_9BABAB                    ;9BAF7D|4CABAB  |;
 
          CODE_9BAF80:
                       LDA.W $15DC                          ;9BAF80|ADDC15  |;
                       BIT.W #$0002                         ;9BAF83|890200  |;
                       BNE CODE_9BAF8B                      ;9BAF86|D003    |;
                       JMP.W CODE_9BACE5                    ;9BAF88|4CE5AC  |;
 
          CODE_9BAF8B:
                       JSL.L CODE_9BB136                    ;9BAF8B|2236B19B|;
                       LDA.B $C1                            ;9BAF8F|A5C1    |;
                       BEQ CODE_9BAF6E                      ;9BAF91|F0DB    |;
                       db $AD,$B3,$0C,$29,$FF,$00,$C9,$FF   ;9BAF93|        |;
                       db $00,$F0,$3A,$C9,$16,$00,$B0,$2D   ;9BAF9B|        |;
                       db $AD,$B7,$0C,$85,$64,$AD,$B3,$0C   ;9BAFA3|        |;
                       db $29,$FF,$00,$22,$7D,$A1,$80,$A8   ;9BAFAB|        |;
                       db $E2,$20,$B9,$F2,$08,$C9,$02,$D0   ;9BAFB3|        |;
                       db $10,$A9,$03,$99,$F2,$08,$C2,$20   ;9BAFBB|        |;
                       db $98,$0A,$A8,$AD,$B5,$0C,$99,$4A   ;9BAFC3|        |;
                       db $09,$C2,$20,$80,$08,$38,$E9,$15   ;9BAFCB|        |;
                       db $00,$22,$7F,$9A,$9C,$AD,$AD,$0C   ;9BAFD3|        |;
                       db $29,$FF,$00,$C9,$FF,$00,$F0,$3A   ;9BAFDB|        |;
                       db $C9,$16,$00,$B0,$2D,$AD,$B1,$0C   ;9BAFE3|        |;
                       db $85,$64,$AD,$AD,$0C,$29,$FF,$00   ;9BAFEB|        |;
                       db $22,$7D,$A1,$80,$A8,$E2,$20,$B9   ;9BAFF3|        |;
                       db $F2,$08,$C9,$02,$D0,$10,$A9,$03   ;9BAFFB|        |;
                       db $99,$F2,$08,$C2,$20,$98,$0A,$A8   ;9BB003|        |;
                       db $AD,$AF,$0C,$99,$4A,$09,$C2,$20   ;9BB00B|        |;
                       db $80,$08,$38,$E9,$15,$00,$22,$7F   ;9BB013|        |;
                       db $9A,$9C,$4C,$AB,$AB               ;9BB01B|        |;
 
          CODE_9BB020:
                       LDA.W #$000F                         ;9BB020|A90F00  |;
                       STA.W $0AF3                          ;9BB023|8DF30A  |;
                       JSL.L CODE_80A3C1                    ;9BB026|22C1A380|;
                       PLA                                  ;9BB02A|68      |;
                       STA.W $0CEB                          ;9BB02B|8DEB0C  |;
                       PLA                                  ;9BB02E|68      |;
                       STA.W $0D37                          ;9BB02F|8D370D  |;
                       PLA                                  ;9BB032|68      |;
                       STA.W $0D21                          ;9BB033|8D210D  |;
                       PLA                                  ;9BB036|68      |;
                       STA.W $0D1F                          ;9BB037|8D1F0D  |;
                       LDA.W #$0020                         ;9BB03A|A92000  |;
                       TRB.W $15D8                          ;9BB03D|1CD815  |;
                       LDA.W $0D21                          ;9BB040|AD210D  |;
                       STA.B $9B                            ;9BB043|859B    |;
                       LDA.W $0D1F                          ;9BB045|AD1F0D  |;
                       STA.B $99                            ;9BB048|8599    |;
                       JSL.L CODE_9BB19D                    ;9BB04A|229DB19B|;
                       LDA.W #$0800                         ;9BB04E|A90008  |;
                       TRB.W $15D8                          ;9BB051|1CD815  |;
                       JSL.L CODE_9FBA17                    ;9BB054|2217BA9F|;
                       JSL.L CODE_80AF7B                    ;9BB058|227BAF80|;
                       JSL.L CODE_9FBAAA                    ;9BB05C|22AABA9F|;
                       JSL.L CODE_80AFDE                    ;9BB060|22DEAF80|;
                       STZ.W $0CD5                          ;9BB064|9CD50C  |;
                       LDA.W #$03FF                         ;9BB067|A9FF03  |;
                       STA.W $0CD7                          ;9BB06A|8DD70C  |;
                       JSL.L CODE_9F96F7                    ;9BB06D|22F7969F|;
                       JSL.L CODE_9C9786                    ;9BB071|2286979C|;
 
          CODE_9BB075:
                       LDA.W $0AD3                          ;9BB075|ADD30A  |;
                       BNE CODE_9BB075                      ;9BB078|D0FB    |;
                       LDA.W $07F9                          ;9BB07A|ADF907  |;
                       BNE CODE_9BB075                      ;9BB07D|D0F6    |;
                       JSL.L CODE_8086A9                    ;9BB07F|22A98680|;
                       LDA.W $1D81                          ;9BB083|AD811D  |;
                       BNE CODE_9BB0C4                      ;9BB086|D03C    |;
                       LDA.W $0CBB                          ;9BB088|ADBB0C  |;
                       BEQ CODE_9BB0C4                      ;9BB08B|F037    |;
                       db $22,$8E,$97,$9C,$AF,$BC,$34,$7E   ;9BB08D|        |;
                       db $F0,$1F,$C9,$04,$00,$F0,$1A,$AF   ;9BB095|        |;
                       db $D4,$35,$7E,$C9,$02,$00,$90,$11   ;9BB09D|        |;
                       db $A9,$93,$00,$85,$0E,$A9,$31,$ED   ;9BB0A5|        |;
                       db $85,$0C,$22,$E0,$A2,$80,$4C,$C4   ;9BB0AD|        |;
                       db $B0,$A9,$90,$00,$85,$0E,$A9,$0C   ;9BB0B5|        |;
                       db $C2,$85,$0C,$22,$E0,$A2,$80       ;9BB0BD|        |;
 
          CODE_9BB0C4:
                       RTL                                  ;9BB0C4|6B      |;
 
          CODE_9BB0C5:
                       LDA.B $99                            ;9BB0C5|A599    |;
                       CMP.W #$577E                         ;9BB0C7|C97E57  |;
                       BNE CODE_9BB0E5                      ;9BB0CA|D019    |;
                       LDA.B $9B                            ;9BB0CC|A59B    |;
                       CMP.W #$007E                         ;9BB0CE|C97E00  |;
                       BNE CODE_9BB0E5                      ;9BB0D1|D012    |;
                       LDA.W $15D8                          ;9BB0D3|ADD815  |;
                       BIT.W #$0010                         ;9BB0D6|891000  |;
                       BEQ CODE_9BB12F                      ;9BB0D9|F054    |;
                       LDA.W #$007E                         ;9BB0DB|A97E00  |;
                       STA.B $9B                            ;9BB0DE|859B    |;
                       LDA.W #$E676                         ;9BB0E0|A976E6  |;
                       STA.B $99                            ;9BB0E3|8599    |;
 
          CODE_9BB0E5:
                       LDA.B $99                            ;9BB0E5|A599    |;
                       SEC                                  ;9BB0E7|38      |;
                       SBC.W #$007A                         ;9BB0E8|E97A00  |;
                       STA.B $99                            ;9BB0EB|8599    |;
                       LDA.B $9B                            ;9BB0ED|A59B    |;
                       SBC.W #$0000                         ;9BB0EF|E90000  |;
                       STA.B $9B                            ;9BB0F2|859B    |;
                       LDA.B $99                            ;9BB0F4|A599    |;
                       CMP.W $0D1F                          ;9BB0F6|CD1F0D  |;
                       BEQ CODE_9BB0FF                      ;9BB0F9|F004    |;
                       JML.L CODE_9BB19D                    ;9BB0FB|5C9DB19B|;
          CODE_9BB0FF:
                       LDA.B $9B                            ;9BB0FF|A59B    |;
                       CMP.W $0D21                          ;9BB101|CD210D  |;
                       BEQ CODE_9BB10A                      ;9BB104|F004    |;
                       db $5C,$9D,$B1,$9B                   ;9BB106|        |;
 
          CODE_9BB10A:
                       LDA.B $99                            ;9BB10A|A599    |;
                       CLC                                  ;9BB10C|18      |;
                       ADC.W #$007A                         ;9BB10D|697A00  |;
                       STA.B $99                            ;9BB110|8599    |;
                       BCC CODE_9BB116                      ;9BB112|9002    |;
                       db $E6,$9B                           ;9BB114|        |;
          CODE_9BB116:
                       CMP.W #$E676                         ;9BB116|C976E6  |;
                       BNE CODE_9BB12C                      ;9BB119|D011    |;
                       db $A5,$9B,$C9,$7E,$00,$D0,$0A,$A9   ;9BB11B|        |;
                       db $7E,$00,$85,$9B,$A9,$7E,$57,$85   ;9BB123|        |;
                       db $99                               ;9BB12B|        |;
          CODE_9BB12C:
                       STZ.B $C1                            ;9BB12C|64C1    |;
                       RTL                                  ;9BB12E|6B      |;
 
          CODE_9BB12F:
                       JSL.L CODE_9BB19D                    ;9BB12F|229DB19B|;
                       STZ.B $C1                            ;9BB133|64C1    |;
                       RTL                                  ;9BB135|6B      |;
 
          CODE_9BB136:
                       STZ.B $C1                            ;9BB136|64C1    |;
                       LDA.W $15D8                          ;9BB138|ADD815  |;
                       BIT.W #$0400                         ;9BB13B|890004  |;
                       BEQ CODE_9BB167                      ;9BB13E|F027    |;
                       LDA.B $9B                            ;9BB140|A59B    |;
                       PHA                                  ;9BB142|48      |;
                       LDA.B $99                            ;9BB143|A599    |;
                       PHA                                  ;9BB145|48      |;
                       JSL.L CODE_9BB17A                    ;9BB146|227AB19B|;
                       LDA.B $9B                            ;9BB14A|A59B    |;
                       STA.B $C7                            ;9BB14C|85C7    |;
                       LDA.B $99                            ;9BB14E|A599    |;
                       STA.B $C5                            ;9BB150|85C5    |;
                       PLA                                  ;9BB152|68      |;
                       STA.B $99                            ;9BB153|8599    |;
                       PLA                                  ;9BB155|68      |;
                       STA.B $9B                            ;9BB156|859B    |;
                       LDA.B $C5                            ;9BB158|A5C5    |;
                       CMP.W $0D1F                          ;9BB15A|CD1F0D  |;
                       BNE CODE_9BB167                      ;9BB15D|D008    |;
                       db $A5,$C7,$CD,$21,$0D,$D0,$01,$6B   ;9BB15F|        |;
 
          CODE_9BB167:
                       LDA.B $99                            ;9BB167|A599    |;
                       CMP.W $0D1F                          ;9BB169|CD1F0D  |;
                       BNE CODE_9BB176                      ;9BB16C|D008    |;
                       LDA.B $9B                            ;9BB16E|A59B    |;
                       CMP.W $0D21                          ;9BB170|CD210D  |;
                       BNE CODE_9BB176                      ;9BB173|D001    |;
                       RTL                                  ;9BB175|6B      |;
 
          CODE_9BB176:
                       JSL.L CODE_9BB19D                    ;9BB176|229DB19B|;
 
          CODE_9BB17A:
                       LDA.B $99                            ;9BB17A|A599    |;
                       CLC                                  ;9BB17C|18      |;
                       ADC.W #$007A                         ;9BB17D|697A00  |;
                       STA.B $99                            ;9BB180|8599    |;
                       BCC CODE_9BB186                      ;9BB182|9002    |;
                       db $E6,$9B                           ;9BB184|        |;
 
          CODE_9BB186:
                       CMP.W #$E676                         ;9BB186|C976E6  |;
                       BNE CODE_9BB19C                      ;9BB189|D011    |;
                       db $A5,$9B,$C9,$7E,$00,$D0,$0A,$A9   ;9BB18B|        |;
                       db $7E,$00,$85,$9B,$A9,$7E,$57,$85   ;9BB193|        |;
                       db $99                               ;9BB19B|        |;
 
          CODE_9BB19C:
                       RTL                                  ;9BB19C|6B      |;
 
          CODE_9BB19D:
                       LDA.B $A9                            ;9BB19D|A5A9    |;
                       PHA                                  ;9BB19F|48      |;
                       INC.W $0CB9                          ;9BB1A0|EEB90C  |;
                       SEP #$20                             ;9BB1A3|E220    |;
                       LDX.B $99                            ;9BB1A5|A699    |;
                       STX.W $2181                          ;9BB1A7|8E8121  |;
                       LDA.B $9B                            ;9BB1AA|A59B    |;
                       STA.W $2183                          ;9BB1AC|8D8321  |;
                       LDA.B #$0F                           ;9BB1AF|A90F    |;
                       STA.B $A9                            ;9BB1B1|85A9    |;
                       LDX.W #$0000                         ;9BB1B3|A20000  |;
 
          CODE_9BB1B6:
                       LDA.W $2180                          ;9BB1B6|AD8021  |;
                       STA.W $0D55,X                        ;9BB1B9|9D550D  |;
                       LDA.W $2180                          ;9BB1BC|AD8021  |;
                       STA.B $14                            ;9BB1BF|8514    |;
                       AND.B #$0F                           ;9BB1C1|290F    |;
                       BIT.B #$08                           ;9BB1C3|8908    |;
                       BEQ CODE_9BB1C9                      ;9BB1C5|F002    |;
                       ORA.B #$F0                           ;9BB1C7|09F0    |;
 
          CODE_9BB1C9:
                       STA.W $0D56,X                        ;9BB1C9|9D560D  |;
                       LDA.W $2180                          ;9BB1CC|AD8021  |;
                       STA.W $0DB7,X                        ;9BB1CF|9DB70D  |;
                       LDA.B $14                            ;9BB1D2|A514    |;
                       LSR A                                ;9BB1D4|4A      |;
                       LSR A                                ;9BB1D5|4A      |;
                       LSR A                                ;9BB1D6|4A      |;
                       LSR A                                ;9BB1D7|4A      |;
                       BIT.B #$08                           ;9BB1D8|8908    |;
                       BEQ CODE_9BB1DE                      ;9BB1DA|F002    |;
                       ORA.B #$F0                           ;9BB1DC|09F0    |;
 
          CODE_9BB1DE:
                       STA.W $0DB8,X                        ;9BB1DE|9DB80D  |;
                       LDA.W $2180                          ;9BB1E1|AD8021  |;
                       STA.W $0D97,X                        ;9BB1E4|9D970D  |;
                       LDA.W $2180                          ;9BB1E7|AD8021  |;
                       STA.B $14                            ;9BB1EA|8514    |;
                       AND.B #$3F                           ;9BB1EC|293F    |;
                       STA.W $0D98,X                        ;9BB1EE|9D980D  |;
                       LDA.W $0E04,X                        ;9BB1F1|BD040E  |;
                       AND.B #$E7                           ;9BB1F4|29E7    |;
                       STA.W $0E04,X                        ;9BB1F6|9D040E  |;
                       LDA.B $14                            ;9BB1F9|A514    |;
                       LSR A                                ;9BB1FB|4A      |;
                       LSR A                                ;9BB1FC|4A      |;
                       LSR A                                ;9BB1FD|4A      |;
                       AND.B #$18                           ;9BB1FE|2918    |;
                       ORA.W $0E04,X                        ;9BB200|1D040E  |;
                       STA.W $0E04,X                        ;9BB203|9D040E  |;
                       INX                                  ;9BB206|E8      |;
                       INX                                  ;9BB207|E8      |;
                       DEC.B $A9                            ;9BB208|C6A9    |;
                       BPL CODE_9BB1B6                      ;9BB20A|10AA    |;
                       LDA.B #$05                           ;9BB20C|A905    |;
                       STA.B $A9                            ;9BB20E|85A9    |;
                       LDX.W #$0000                         ;9BB210|A20000  |;
 
          CODE_9BB213:
                       LDA.W $2180                          ;9BB213|AD8021  |;
                       STA.W $13C3,X                        ;9BB216|9DC313  |;
                       LDA.W $2180                          ;9BB219|AD8021  |;
                       STA.W $13C5,X                        ;9BB21C|9DC513  |;
                       STZ.W $0F44,X                        ;9BB21F|9E440F  |;
                       LDA.W $2180                          ;9BB222|AD8021  |;
                       STA.B $14                            ;9BB225|8514    |;
                       AND.B #$0F                           ;9BB227|290F    |;
                       CMP.B #$0F                           ;9BB229|C90F    |;
                       BNE CODE_9BB232                      ;9BB22B|D005    |;
                       db $A9,$FF,$9D,$44,$0F               ;9BB22D|        |;
 
          CODE_9BB232:
                       STA.W $0F43,X                        ;9BB232|9D430F  |;
                       STZ.W $0F46,X                        ;9BB235|9E460F  |;
                       LDA.B $14                            ;9BB238|A514    |;
                       LSR A                                ;9BB23A|4A      |;
                       LSR A                                ;9BB23B|4A      |;
                       LSR A                                ;9BB23C|4A      |;
                       LSR A                                ;9BB23D|4A      |;
                       AND.B #$0F                           ;9BB23E|290F    |;
                       CMP.B #$0F                           ;9BB240|C90F    |;
                       BNE CODE_9BB249                      ;9BB242|D005    |;
                       db $A9,$FF,$9D,$46,$0F               ;9BB244|        |;
 
          CODE_9BB249:
                       STA.W $0F45,X                        ;9BB249|9D450F  |;
                       INX                                  ;9BB24C|E8      |;
                       INX                                  ;9BB24D|E8      |;
                       INX                                  ;9BB24E|E8      |;
                       INX                                  ;9BB24F|E8      |;
                       DEC.B $A9                            ;9BB250|C6A9    |;
                       BPL CODE_9BB213                      ;9BB252|10BF    |;
                       LDA.W $2180                          ;9BB254|AD8021  |;
                       STA.W $0DF9                          ;9BB257|8DF90D  |;
                       BPL CODE_9BB260                      ;9BB25A|1004    |;
                       LDA.B #$FF                           ;9BB25C|A9FF    |;
                       BRA CODE_9BB262                      ;9BB25E|8002    |;
 
          CODE_9BB260:
                       LDA.B #$00                           ;9BB260|A900    |;
 
          CODE_9BB262:
                       STA.W $0DFA                          ;9BB262|8DFA0D  |;
                       LDA.W $2180                          ;9BB265|AD8021  |;
                       STA.W $0DFB                          ;9BB268|8DFB0D  |;
                       BPL CODE_9BB271                      ;9BB26B|1004    |;
                       db $A9,$FF,$80,$02                   ;9BB26D|        |;
 
          CODE_9BB271:
                       LDA.B #$00                           ;9BB271|A900    |;
                       STA.W $0DFC                          ;9BB273|8DFC0D  |;
                       LDA.W $2180                          ;9BB276|AD8021  |;
                       STA.W $0CAD                          ;9BB279|8DAD0C  |;
                       LDA.W $2180                          ;9BB27C|AD8021  |;
                       STA.W $0CAF                          ;9BB27F|8DAF0C  |;
                       LDA.W $2180                          ;9BB282|AD8021  |;
                       STA.W $0CB0                          ;9BB285|8DB00C  |;
                       LDA.W $2180                          ;9BB288|AD8021  |;
                       STA.W $0CB2                          ;9BB28B|8DB20C  |;
                       LDA.W $2180                          ;9BB28E|AD8021  |;
                       STA.W $0CB3                          ;9BB291|8DB30C  |;
                       LDA.W $2180                          ;9BB294|AD8021  |;
                       STA.W $0CB5                          ;9BB297|8DB50C  |;
                       LDA.W $2180                          ;9BB29A|AD8021  |;
                       STA.W $0CB6                          ;9BB29D|8DB60C  |;
                       LDA.W $2180                          ;9BB2A0|AD8021  |;
                       STA.W $0CB8                          ;9BB2A3|8DB80C  |;
                       LDA.W $2180                          ;9BB2A6|AD8021  |;
                       STA.B $C1                            ;9BB2A9|85C1    |;
                       LDA.W $2180                          ;9BB2AB|AD8021  |;
                       STA.B $14                            ;9BB2AE|8514    |;
                       AND.B #$0F                           ;9BB2B0|290F    |;
                       STA.W $0AE7                          ;9BB2B2|8DE70A  |;
                       LDA.B $14                            ;9BB2B5|A514    |;
                       LSR A                                ;9BB2B7|4A      |;
                       LSR A                                ;9BB2B8|4A      |;
                       LSR A                                ;9BB2B9|4A      |;
                       LSR A                                ;9BB2BA|4A      |;
                       STA.W $0AE9                          ;9BB2BB|8DE90A  |;
                       LDA.W $2180                          ;9BB2BE|AD8021  |;
                       STA.B $14                            ;9BB2C1|8514    |;
                       AND.B #$0F                           ;9BB2C3|290F    |;
                       STA.W $0AEB                          ;9BB2C5|8DEB0A  |;
                       LDA.B $14                            ;9BB2C8|A514    |;
                       LSR A                                ;9BB2CA|4A      |;
                       LSR A                                ;9BB2CB|4A      |;
                       LSR A                                ;9BB2CC|4A      |;
                       LSR A                                ;9BB2CD|4A      |;
                       STA.W $0AED                          ;9BB2CE|8DED0A  |;
                       LDA.W $2180                          ;9BB2D1|AD8021  |;
                       STA.B $14                            ;9BB2D4|8514    |;
                       AND.B #$0F                           ;9BB2D6|290F    |;
                       STA.W $0AEF                          ;9BB2D8|8DEF0A  |;
                       LDA.B $14                            ;9BB2DB|A514    |;
                       LSR A                                ;9BB2DD|4A      |;
                       LSR A                                ;9BB2DE|4A      |;
                       LSR A                                ;9BB2DF|4A      |;
                       LSR A                                ;9BB2E0|4A      |;
                       STA.W $0AF1                          ;9BB2E1|8DF10A  |;
                       LDA.W $2180                          ;9BB2E4|AD8021  |;
                       STA.L $7E35E0                        ;9BB2E7|8FE0357E|;
                       LDA.W $2180                          ;9BB2EB|AD8021  |;
                       STA.L $7E35E1                        ;9BB2EE|8FE1357E|;
                       LDA.W $2180                          ;9BB2F2|AD8021  |;
                       STA.W $1624                          ;9BB2F5|8D2416  |;
                       BPL CODE_9BB2FE                      ;9BB2F8|1004    |;
                       db $A9,$FF,$80,$02                   ;9BB2FA|        |;
 
          CODE_9BB2FE:
                       LDA.B #$00                           ;9BB2FE|A900    |;
                       STA.W $1625                          ;9BB300|8D2516  |;
                       LDA.W $15D8                          ;9BB303|ADD815  |;
                       BIT.B #$20                           ;9BB306|8920    |;
                       BNE CODE_9BB330                      ;9BB308|D026    |;
                       LDA.W $2180                          ;9BB30A|AD8021  |;
                       STA.W $0CEB                          ;9BB30D|8DEB0C  |;
                       LDA.W $2180                          ;9BB310|AD8021  |;
                       STA.W $0CEC                          ;9BB313|8DEC0C  |;
                       LDA.W $2180                          ;9BB316|AD8021  |;
                       STA.W $0D37                          ;9BB319|8D370D  |;
                       LDA.W $2180                          ;9BB31C|AD8021  |;
                       STA.W $0D38                          ;9BB31F|8D380D  |;
                       LDA.W $2180                          ;9BB322|AD8021  |;
                       STA.W $0C29                          ;9BB325|8D290C  |;
                       LDA.W $2180                          ;9BB328|AD8021  |;
                       STA.W $0C2A                          ;9BB32B|8D2A0C  |;
                       BRA CODE_9BB348                      ;9BB32E|8018    |;
 
          CODE_9BB330:
                       LDA.W $2180                          ;9BB330|AD8021  |;
                       LDA.W $2180                          ;9BB333|AD8021  |;
                       LDA.W $2180                          ;9BB336|AD8021  |;
                       LDA.W $2180                          ;9BB339|AD8021  |;
                       LDA.W $2180                          ;9BB33C|AD8021  |;
                       STA.W $0C29                          ;9BB33F|8D290C  |;
                       LDA.W $2180                          ;9BB342|AD8021  |;
                       STA.W $0C2A                          ;9BB345|8D2A0C  |;
 
          CODE_9BB348:
                       REP #$20                             ;9BB348|C220    |;
                       LDA.W $0CAD                          ;9BB34A|ADAD0C  |;
                       AND.W #$00FF                         ;9BB34D|29FF00  |;
                       CMP.W #$0080                         ;9BB350|C98000  |;
                       BCC CODE_9BB358                      ;9BB353|9003    |;
                       ORA.W #$FF00                         ;9BB355|0900FF  |;
 
          CODE_9BB358:
                       STA.W $0CAD                          ;9BB358|8DAD0C  |;
                       LDA.W $0CB3                          ;9BB35B|ADB30C  |;
                       AND.W #$00FF                         ;9BB35E|29FF00  |;
                       CMP.W #$0080                         ;9BB361|C98000  |;
                       BCC CODE_9BB369                      ;9BB364|9003    |;
                       ORA.W #$FF00                         ;9BB366|0900FF  |;
 
          CODE_9BB369:
                       STA.W $0CB3                          ;9BB369|8DB30C  |;
                       PLA                                  ;9BB36C|68      |;
                       STA.B $A9                            ;9BB36D|85A9    |;
                       RTL                                  ;9BB36F|6B      |;
 
          CODE_9BB370:
                       PHX                                  ;9BB370|DA      |;
                       PHA                                  ;9BB371|48      |;
                       CMP.W #$0100                         ;9BB372|C90001  |;
                       BCC CODE_9BB387                      ;9BB375|9010    |;
                       JSL.L CODE_808658                    ;9BB377|22588680|;
                       PLX                                  ;9BB37B|FA      |;
                       JSL.L CODE_809099                    ;9BB37C|22999080|;
                       PLX                                  ;9BB380|FA      |;
                       LDA.B $0A                            ;9BB381|A50A    |;
                       CLC                                  ;9BB383|18      |;
                       RTL                                  ;9BB384|6B      |;
 
          CODE_9BB385:
                       PHX                                  ;9BB385|DA      |;
                       PHA                                  ;9BB386|48      |;
 
          CODE_9BB387:
                       JSL.L CODE_808658                    ;9BB387|22588680|;
                       AND.W #$00FF                         ;9BB38B|29FF00  |;
                       TAX                                  ;9BB38E|AA      |;
                       PLA                                  ;9BB38F|68      |;
                       JSL.L CODE_808F4C                    ;9BB390|224C8F80|;
                       PLX                                  ;9BB394|FA      |;
                       XBA                                  ;9BB395|EB      |;
                       AND.W #$00FF                         ;9BB396|29FF00  |;
                       CLC                                  ;9BB399|18      |;
                       RTL                                  ;9BB39A|6B      |;
 
          CODE_9BB39B:
                       LDA.B $A5                            ;9BB39B|A5A5    |;
                       JSL.L CODE_9BB370                    ;9BB39D|2270B39B|;
                       STA.B $A5                            ;9BB3A1|85A5    |;
                       RTL                                  ;9BB3A3|6B      |;
 
          CODE_9BB3A4:
                       STA.B $14                            ;9BB3A4|8514    |;
                       ASL A                                ;9BB3A6|0A      |;
                       JSL.L CODE_9BB370                    ;9BB3A7|2270B39B|;
                       SEC                                  ;9BB3AB|38      |;
                       SBC.B $14                            ;9BB3AC|E514    |;
                       CLC                                  ;9BB3AE|18      |;
                       RTL                                  ;9BB3AF|6B      |;
 
          CODE_9BB3B0:
                       LDA.B $A5                            ;9BB3B0|A5A5    |;
                       ASL A                                ;9BB3B2|0A      |;
                       JSL.L CODE_9BB370                    ;9BB3B3|2270B39B|;
                       SEC                                  ;9BB3B7|38      |;
                       SBC.B $A5                            ;9BB3B8|E5A5    |;
                       STA.B $A5                            ;9BB3BA|85A5    |;
                       CLC                                  ;9BB3BC|18      |;
                       RTL                                  ;9BB3BD|6B      |;
 
          CODE_9BB3BE:
                       PHX                                  ;9BB3BE|DA      |;
                       LDA.B $A7                            ;9BB3BF|A5A7    |;
                       BEQ CODE_9BB41C                      ;9BB3C1|F059    |;
                       db $A2,$00,$01,$A0,$00,$10,$C9,$48   ;9BB3C3|        |;
                       db $00,$B0,$12,$A0,$7D,$08,$C9,$16   ;9BB3CB|        |;
                       db $00,$B0,$05,$A0,$B1,$04,$80,$15   ;9BB3D3|        |;
                       db $A2,$B0,$04,$80,$10,$A2,$7C,$08   ;9BB3DB|        |;
                       db $C9,$96,$00,$B0,$05,$A0,$40,$0C   ;9BB3E3|        |;
                       db $80,$03,$A2,$3F,$0C,$86,$0C,$84   ;9BB3EB|        |;
                       db $10,$A5,$0C,$18,$65,$10,$6A,$C5   ;9BB3F3|        |;
                       db $0C,$F0,$1A,$48,$AA,$22,$99,$90   ;9BB3FB|        |;
                       db $80,$A5,$A5,$C5,$08,$A5,$A7,$E5   ;9BB403|        |;
                       db $0A,$B0,$05,$68,$85,$10,$80,$E1   ;9BB40B|        |;
                       db $68,$85,$0C,$80,$DC,$FA,$85,$A5   ;9BB413|        |;
                       db $6B                               ;9BB41B|        |;
 
          CODE_9BB41C:
                       STZ.B $0C                            ;9BB41C|640C    |;
                       LDA.W #$00FF                         ;9BB41E|A9FF00  |;
                       STA.B $10                            ;9BB421|8510    |;
 
          CODE_9BB423:
                       LDA.B $0C                            ;9BB423|A50C    |;
                       CLC                                  ;9BB425|18      |;
                       ADC.B $10                            ;9BB426|6510    |;
                       ROR A                                ;9BB428|6A      |;
                       CMP.B $0C                            ;9BB429|C50C    |;
                       BEQ CODE_9BB441                      ;9BB42B|F014    |;
                       PHA                                  ;9BB42D|48      |;
                       TAX                                  ;9BB42E|AA      |;
                       JSL.L CODE_808F4C                    ;9BB42F|224C8F80|;
                       CMP.B $A5                            ;9BB433|C5A5    |;
                       BCC CODE_9BB43C                      ;9BB435|9005    |;
                       PLA                                  ;9BB437|68      |;
                       STA.B $10                            ;9BB438|8510    |;
                       BRA CODE_9BB423                      ;9BB43A|80E7    |;
 
          CODE_9BB43C:
                       PLA                                  ;9BB43C|68      |;
                       STA.B $0C                            ;9BB43D|850C    |;
                       BRA CODE_9BB423                      ;9BB43F|80E2    |;
 
          CODE_9BB441:
                       PLX                                  ;9BB441|FA      |;
                       STA.B $A5                            ;9BB442|85A5    |;
                       RTL                                  ;9BB444|6B      |;
 
          CODE_9BB445:
                       LDA.B $A5                            ;9BB445|A5A5    |;
                       ORA.B $A9                            ;9BB447|05A9    |;
                       BEQ CODE_9BB48D                      ;9BB449|F042    |;
                       STZ.B $C3                            ;9BB44B|64C3    |;
                       LDA.B $A5                            ;9BB44D|A5A5    |;
                       BPL CODE_9BB459                      ;9BB44F|1008    |;
                       EOR.W #$FFFF                         ;9BB451|49FFFF  |;
                       INC A                                ;9BB454|1A      |;
                       STA.B $A5                            ;9BB455|85A5    |;
                       INC.B $C3                            ;9BB457|E6C3    |;
 
          CODE_9BB459:
                       LDA.B $A9                            ;9BB459|A5A9    |;
                       BPL CODE_9BB467                      ;9BB45B|100A    |;
                       EOR.W #$FFFF                         ;9BB45D|49FFFF  |;
                       INC A                                ;9BB460|1A      |;
                       STA.B $A9                            ;9BB461|85A9    |;
                       INC.B $C3                            ;9BB463|E6C3    |;
                       INC.B $C3                            ;9BB465|E6C3    |;
 
          CODE_9BB467:
                       LDA.B $A9                            ;9BB467|A5A9    |;
                       ASL A                                ;9BB469|0A      |;
                       CMP.B $A5                            ;9BB46A|C5A5    |;
                       BCC CODE_9BB473                      ;9BB46C|9005    |;
                       LDA.W #$0004                         ;9BB46E|A90400  |;
                       TSB.B $C3                            ;9BB471|04C3    |;
 
          CODE_9BB473:
                       LDA.B $A5                            ;9BB473|A5A5    |;
                       ASL A                                ;9BB475|0A      |;
                       CMP.B $A9                            ;9BB476|C5A9    |;
                       BCC CODE_9BB47F                      ;9BB478|9005    |;
                       LDA.W #$0008                         ;9BB47A|A90800  |;
                       TSB.B $C3                            ;9BB47D|04C3    |;
 
          CODE_9BB47F:
                       PHX                                  ;9BB47F|DA      |;
                       LDX.B $C3                            ;9BB480|A6C3    |;
                       LDA.L UNREACH_9BB493,X               ;9BB482|BF93B49B|;
                       PLX                                  ;9BB486|FA      |;
                       AND.W #$00FF                         ;9BB487|29FF00  |;
                       STA.B $A5                            ;9BB48A|85A5    |;
                       RTL                                  ;9BB48C|6B      |;
 
          CODE_9BB48D:
                       LDA.W #$0008                         ;9BB48D|A90800  |;
                       STA.B $A5                            ;9BB490|85A5    |;
                       RTL                                  ;9BB492|6B      |;
 
       UNREACH_9BB493:
                       db $01,$07,$03,$05                   ;9BB493|        |;
                       db $00,$00,$04,$04,$02,$06,$02,$06   ;9BB497|        |;
                       db $01,$07,$03,$05                   ;9BB49F|        |;
 
          CODE_9BB4A3:
                       PHX                                  ;9BB4A3|DA      |;
                       LDA.L $7E3508                        ;9BB4A4|AF08357E|;
                       CLC                                  ;9BB4A8|18      |;
                       ADC.B $A5                            ;9BB4A9|65A5    |;
                       STA.L $7E3508                        ;9BB4AB|8F08357E|;
                       BCC CODE_9BB4C6                      ;9BB4AF|9015    |;
                       db $A2,$02,$00,$BF,$08,$35,$7E,$1A   ;9BB4B1|        |;
                       db $9F,$08,$35,$7E,$D0,$07,$E8,$E8   ;9BB4B9|        |;
                       db $E0,$10,$00,$D0,$EE               ;9BB4C1|        |;
 
          CODE_9BB4C6:
                       PLX                                  ;9BB4C6|FA      |;
                       CLC                                  ;9BB4C7|18      |;
                       RTL                                  ;9BB4C8|6B      |;
                       db $70,$00,$A0,$00,$D0,$00,$00,$01   ;9BB4C9|        |;
                       db $30,$01                           ;9BB4D1|        |;
                       db $60,$01                           ;9BB4D3|        |;
                       db $90,$01,$C0,$01,$F0,$01,$20,$02   ;9BB4D5|        |;
                       db $50,$02,$80,$02,$B0,$02,$E0,$02   ;9BB4DD|        |;
                       db $10,$03,$40,$03,$70,$03,$A0,$03   ;9BB4E5|        |;
                       db $D0,$03,$00,$04                   ;9BB4ED|        |;
                       db $30,$04                           ;9BB4F1|        |;
                       db $60,$04,$90,$04                   ;9BB4F3|        |;
                       db $C0,$04,$F0,$04                   ;9BB4F7|        |;
                       db $20,$05                           ;9BB4FB|        |;
                       db $50,$05                           ;9BB4FD|        |;
                       db $80,$05,$B0,$05,$E0,$05           ;9BB4FF|        |;
                       db $10,$06,$40,$06                   ;9BB505|        |;
                       db $70,$06                           ;9BB509|        |;
                       db $A0,$06,$D0,$06,$00,$07           ;9BB50B|        |;
                       db $30,$07,$60,$07,$90,$07,$C0,$07   ;9BB511|        |;
                       db $F0,$07,$20,$08,$50,$08,$80,$08   ;9BB519|        |;
                       db $B0,$08                           ;9BB521|        |;
                       db $E0,$08,$10,$09,$40,$09,$70,$09   ;9BB523|        |;
                       db $A0,$09,$D0,$09,$00,$0A           ;9BB52B|        |;
                       db $30,$0A                           ;9BB531|        |;
                       db $60,$0A                           ;9BB533|        |;
                       db $90,$0A,$C0,$0A                   ;9BB535|        |;
                       db $80,$00,$E7,$FF,$06,$3C,$11,$11   ;9BB539|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BB541|        |;
                       db $2F,$75                           ;9BB549|        |;
                       db $7F,$7F                           ;9BB54B|        |;
                       db $00,$8F,$00,$7F,$00,$00,$00,$00   ;9BB54D|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB555|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB55D|        |;
                       db $00,$00,$00                       ;9BB565|        |;
                       db $0C,$80                           ;9BB568|        |;
                       db $00                               ;9BB56A|        |;
                       db $E7,$FF,$06                       ;9BB56B|        |;
                       db $3C,$11,$11,$00,$70               ;9BB56E|        |;
                       db $00,$00                           ;9BB573|        |;
                       db $00,$00,$00,$00                   ;9BB575|        |;
                       db $2F,$75,$7F,$7F,$00,$8F,$00       ;9BB579|        |;
                       db $7F,$00,$00                       ;9BB580|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB583|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB58B|        |;
                       db $00                               ;9BB593|        |;
                       db $00,$00                           ;9BB594|        |;
                       db $00,$00,$0C,$20                   ;9BB596|        |;
                       db $00                               ;9BB59A|        |;
                       db $00,$00,$15                       ;9BB59B|        |;
                       db $3C,$11,$11,$00,$70               ;9BB59E|        |;
                       db $00,$00                           ;9BB5A3|        |;
                       db $00,$00,$00,$00                   ;9BB5A5|        |;
                       db $2F,$75,$7F,$7F,$01,$8F,$40       ;9BB5A9|        |;
                       db $7F,$00,$00                       ;9BB5B0|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB5B3|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB5BB|        |;
                       db $00                               ;9BB5C3|        |;
                       db $00,$00                           ;9BB5C4|        |;
                       db $00,$00,$0C,$80                   ;9BB5C6|        |;
                       db $00                               ;9BB5CA|        |;
                       db $5A,$00,$0B                       ;9BB5CB|        |;
                       db $3C,$11,$11,$00,$70               ;9BB5CE|        |;
                       db $00,$00                           ;9BB5D3|        |;
                       db $00,$00,$00,$00                   ;9BB5D5|        |;
                       db $2F,$75,$7A,$7A,$02,$8F,$00       ;9BB5D9|        |;
                       db $7A,$00,$00                       ;9BB5E0|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB5E3|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB5EB|        |;
                       db $00                               ;9BB5F3|        |;
                       db $00,$00                           ;9BB5F4|        |;
                       db $00,$00,$0C,$01                   ;9BB5F6|        |;
                       db $00                               ;9BB5FA|        |;
                       db $00,$00,$00                       ;9BB5FB|        |;
                       db $3C,$11,$11,$00,$70               ;9BB5FE|        |;
                       db $00,$00                           ;9BB603|        |;
                       db $00,$00,$00,$00                   ;9BB605|        |;
                       db $2F,$75,$57,$6B,$03,$8F,$E0       ;9BB609|        |;
                       db $6B,$00,$00                       ;9BB610|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB613|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB61B|        |;
                       db $00                               ;9BB623|        |;
                       db $00,$00                           ;9BB624|        |;
                       db $00,$00,$0C                       ;9BB626|        |;
                       db $80,$00,$00,$00,$19,$3C,$11,$11   ;9BB629|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BB631|        |;
                       db $00,$00,$61,$62,$04,$8F,$00,$62   ;9BB639|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB641|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB649|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BB651|        |;
                       db $40                               ;9BB659|        |;
                       db $00                               ;9BB65A|        |;
                       db $00,$00,$04                       ;9BB65B|        |;
                       db $3C,$11,$11,$00,$70               ;9BB65E|        |;
                       db $00,$00                           ;9BB663|        |;
                       db $00,$00,$00,$00                   ;9BB665|        |;
                       db $2F,$75,$51,$7F,$05,$8F,$00       ;9BB669|        |;
                       db $7F,$00,$00                       ;9BB670|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB673|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB67B|        |;
                       db $00                               ;9BB683|        |;
                       db $00,$00                           ;9BB684|        |;
                       db $00,$00,$0C,$40                   ;9BB686|        |;
                       db $00                               ;9BB68A|        |;
                       db $00,$00,$19                       ;9BB68B|        |;
                       db $3C,$11,$11,$00,$70               ;9BB68E|        |;
                       db $00,$00                           ;9BB693|        |;
                       db $00,$00,$00,$00                   ;9BB695|        |;
                       db $00,$00,$5A,$5A,$04,$8F,$00       ;9BB699|        |;
                       db $5A,$00,$00                       ;9BB6A0|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB6A3|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB6AB|        |;
                       db $00                               ;9BB6B3|        |;
                       db $00,$00                           ;9BB6B4|        |;
                       db $00,$00,$0C,$40                   ;9BB6B6|        |;
                       db $00                               ;9BB6BA|        |;
                       db $1B,$00,$05                       ;9BB6BB|        |;
                       db $3C,$11,$11,$00,$70               ;9BB6BE|        |;
                       db $00,$00                           ;9BB6C3|        |;
                       db $00,$00,$00,$00                   ;9BB6C5|        |;
                       db $2F,$75,$66,$7F,$05,$8F,$00       ;9BB6C9|        |;
                       db $7F,$00,$00                       ;9BB6D0|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB6D3|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB6DB|        |;
                       db $00                               ;9BB6E3|        |;
                       db $00,$00                           ;9BB6E4|        |;
                       db $00,$00,$0C,$40                   ;9BB6E6|        |;
                       db $00                               ;9BB6EA|        |;
                       db $C8,$FF,$0E                       ;9BB6EB|        |;
                       db $3C,$11,$11,$00,$70               ;9BB6EE|        |;
                       db $00,$00                           ;9BB6F3|        |;
                       db $00,$00,$00,$00                   ;9BB6F5|        |;
                       db $2F,$75,$7F,$7F,$06,$BF,$00       ;9BB6F9|        |;
                       db $7F,$00,$00                       ;9BB700|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB703|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB70B|        |;
                       db $00                               ;9BB713|        |;
                       db $00,$00                           ;9BB714|        |;
                       db $00,$00,$0C,$40                   ;9BB716|        |;
                       db $00                               ;9BB71A|        |;
                       db $00,$00,$06                       ;9BB71B|        |;
                       db $3C,$11,$11,$00,$70               ;9BB71E|        |;
                       db $00,$00                           ;9BB723|        |;
                       db $00,$00,$00,$00                   ;9BB725|        |;
                       db $2F,$75,$70,$70,$05,$8F,$00       ;9BB729|        |;
                       db $70,$00,$00                       ;9BB730|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB733|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB73B|        |;
                       db $00                               ;9BB743|        |;
                       db $00,$00                           ;9BB744|        |;
                       db $00,$00,$0C,$40                   ;9BB746|        |;
                       db $00                               ;9BB74A|        |;
                       db $25,$00,$0D                       ;9BB74B|        |;
                       db $3C,$11,$11,$00,$70               ;9BB74E|        |;
                       db $00,$00                           ;9BB753|        |;
                       db $00,$00,$00,$00                   ;9BB755|        |;
                       db $2F,$75,$64,$7F,$06,$8F,$00       ;9BB759|        |;
                       db $7F,$00,$00                       ;9BB760|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB763|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB76B|        |;
                       db $00                               ;9BB773|        |;
                       db $00,$00                           ;9BB774|        |;
                       db $00,$00,$0C,$40                   ;9BB776|        |;
                       db $00                               ;9BB77A|        |;
                       db $00,$00,$07                       ;9BB77B|        |;
                       db $3C,$11,$11,$00,$70               ;9BB77E|        |;
                       db $00,$00                           ;9BB783|        |;
                       db $00,$00,$00,$00                   ;9BB785|        |;
                       db $2F,$75,$7F,$68,$05,$8F,$00       ;9BB789|        |;
                       db $7F,$00,$00                       ;9BB790|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB793|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB79B|        |;
                       db $00                               ;9BB7A3|        |;
                       db $00,$00                           ;9BB7A4|        |;
                       db $00,$00,$0C,$40                   ;9BB7A6|        |;
                       db $00                               ;9BB7AA|        |;
                       db $00,$00,$08                       ;9BB7AB|        |;
                       db $3C,$11,$11,$00,$70               ;9BB7AE|        |;
                       db $00,$00                           ;9BB7B3|        |;
                       db $00,$00,$00,$00                   ;9BB7B5|        |;
                       db $2F,$75,$7F,$49,$05,$BF,$00       ;9BB7B9|        |;
                       db $7F,$00,$00                       ;9BB7C0|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB7C3|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB7CB|        |;
                       db $00                               ;9BB7D3|        |;
                       db $00,$00                           ;9BB7D4|        |;
                       db $00,$00,$0C,$0C                   ;9BB7D6|        |;
                       db $00                               ;9BB7DA|        |;
                       db $00,$00,$06                       ;9BB7DB|        |;
                       db $3C,$11,$11,$00,$70               ;9BB7DE|        |;
                       db $00,$00                           ;9BB7E3|        |;
                       db $00,$00,$00,$00                   ;9BB7E5|        |;
                       db $2F,$75,$7F,$7F,$07,$9F,$00       ;9BB7E9|        |;
                       db $7F,$00,$00                       ;9BB7F0|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB7F3|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB7FB|        |;
                       db $00                               ;9BB803|        |;
                       db $00,$00                           ;9BB804|        |;
                       db $00,$00,$0C,$01                   ;9BB806|        |;
                       db $00                               ;9BB80A|        |;
                       db $41,$00,$05                       ;9BB80B|        |;
                       db $3C,$11,$11,$00,$70               ;9BB80E|        |;
                       db $00,$00                           ;9BB813|        |;
                       db $00,$00,$00,$00                   ;9BB815|        |;
                       db $2F,$75,$54,$7F,$07,$9F,$00       ;9BB819|        |;
                       db $7F,$00,$00                       ;9BB820|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB823|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB82B|        |;
                       db $00                               ;9BB833|        |;
                       db $00,$00                           ;9BB834|        |;
                       db $00,$00,$0C,$10                   ;9BB836|        |;
                       db $00                               ;9BB83A|        |;
                       db $FC,$FF,$FF                       ;9BB83B|        |;
                       db $3C,$11,$11,$00,$70               ;9BB83E|        |;
                       db $00,$00                           ;9BB843|        |;
                       db $00,$00,$00,$00                   ;9BB845|        |;
                       db $2F,$75,$75,$40,$08,$8F,$E0       ;9BB849|        |;
                       db $75,$00,$00                       ;9BB850|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB853|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB85B|        |;
                       db $00                               ;9BB863|        |;
                       db $00,$00                           ;9BB864|        |;
                       db $00,$00,$0C,$08                   ;9BB866|        |;
                       db $00                               ;9BB86A|        |;
                       db $FC,$FF,$FF                       ;9BB86B|        |;
                       db $3C,$11,$11,$00,$70               ;9BB86E|        |;
                       db $00,$00                           ;9BB873|        |;
                       db $00,$00,$00,$00                   ;9BB875|        |;
                       db $2F,$75,$40,$75,$08,$8F,$E0       ;9BB879|        |;
                       db $75,$00,$00                       ;9BB880|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB883|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB88B|        |;
                       db $00                               ;9BB893|        |;
                       db $00,$00                           ;9BB894|        |;
                       db $00,$00,$0C,$01                   ;9BB896|        |;
                       db $00                               ;9BB89A|        |;
                       db $00,$00,$09                       ;9BB89B|        |;
                       db $3C,$11,$11,$00,$70               ;9BB89E|        |;
                       db $00,$00                           ;9BB8A3|        |;
                       db $00,$00,$00,$00                   ;9BB8A5|        |;
                       db $2F,$75,$69,$68,$09,$8F,$E0       ;9BB8A9|        |;
                       db $69,$00,$00                       ;9BB8B0|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB8B3|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB8BB|        |;
                       db $00                               ;9BB8C3|        |;
                       db $00,$00                           ;9BB8C4|        |;
                       db $00,$00,$0C,$10                   ;9BB8C6|        |;
                       db $00                               ;9BB8CA|        |;
                       db $00,$00,$12                       ;9BB8CB|        |;
                       db $3C,$11,$11,$00,$70               ;9BB8CE|        |;
                       db $00,$00                           ;9BB8D3|        |;
                       db $00,$00,$00,$00                   ;9BB8D5|        |;
                       db $2F,$75,$7F,$7F,$0A,$8A,$E0       ;9BB8D9|        |;
                       db $7F,$00,$00                       ;9BB8E0|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB8E3|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB8EB|        |;
                       db $00                               ;9BB8F3|        |;
                       db $00,$00                           ;9BB8F4|        |;
                       db $00,$00,$0C                       ;9BB8F6|        |;
                       db $10,$00,$FC,$FF,$FF,$3C,$11,$11   ;9BB8F9|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BB901|        |;
                       db $73,$41,$7C,$7C,$08,$8F,$E0,$7C   ;9BB909|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB911|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB919|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BB921|        |;
                       db $10,$00,$1C,$00,$FC,$3C,$11,$11   ;9BB929|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BB931|        |;
                       db $2F,$75                           ;9BB939|        |;
                       db $73,$5E                           ;9BB93B|        |;
                       db $0B,$8F,$E0,$73,$00,$00,$00,$00   ;9BB93D|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB945|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB94D|        |;
                       db $00,$00,$00                       ;9BB955|        |;
                       db $0C,$02                           ;9BB958|        |;
                       db $00                               ;9BB95A|        |;
                       db $00,$00,$16                       ;9BB95B|        |;
                       db $3C,$11,$11,$00,$70               ;9BB95E|        |;
                       db $00,$00                           ;9BB963|        |;
                       db $00,$00,$00,$00                   ;9BB965|        |;
                       db $2F,$75,$60,$7F,$0C,$8F,$00       ;9BB969|        |;
                       db $7F,$00,$00                       ;9BB970|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB973|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB97B|        |;
                       db $00                               ;9BB983|        |;
                       db $00,$00                           ;9BB984|        |;
                       db $00,$00,$0C                       ;9BB986|        |;
                       db $78,$00,$FC,$FF,$FF,$3C,$11,$11   ;9BB989|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BB991|        |;
                       db $2F,$75,$75,$40,$08,$8F,$E0,$75   ;9BB999|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB9A1|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB9A9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BB9B1|        |;
                       db $06,$00,$FC,$FF,$FF,$3C,$11,$11   ;9BB9B9|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BB9C1|        |;
                       db $2F,$75,$40,$7A,$08,$8F,$E0,$7A   ;9BB9C9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB9D1|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BB9D9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BB9E1|        |;
                       db $04                               ;9BB9E9|        |;
                       db $00                               ;9BB9EA|        |;
                       db $FC,$FF,$FF                       ;9BB9EB|        |;
                       db $3C,$11,$11,$00,$70               ;9BB9EE|        |;
                       db $00,$00                           ;9BB9F3|        |;
                       db $00,$00,$00,$00                   ;9BB9F5|        |;
                       db $73,$41,$7C,$7C,$08,$8F,$E0       ;9BB9F9|        |;
                       db $7C,$00,$00                       ;9BBA00|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBA03|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBA0B|        |;
                       db $00                               ;9BBA13|        |;
                       db $00,$00                           ;9BBA14|        |;
                       db $00,$00,$0C                       ;9BBA16|        |;
                       db $0C,$00,$FC,$FF,$FF,$3C,$11,$11   ;9BBA19|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BBA21|        |;
                       db $2F,$75,$5E,$5E,$08,$8F,$E0,$5E   ;9BBA29|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBA31|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBA39|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BBA41|        |;
                       db $03                               ;9BBA49|        |;
                       db $00                               ;9BBA4A|        |;
                       db $03,$00,$F3                       ;9BBA4B|        |;
                       db $3C,$11,$11,$00,$70               ;9BBA4E|        |;
                       db $00,$00                           ;9BBA53|        |;
                       db $00,$00,$00,$00                   ;9BBA55|        |;
                       db $2F,$75,$7F,$7F,$0D,$8F,$80       ;9BBA59|        |;
                       db $7F,$00,$00                       ;9BBA60|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBA63|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBA6B|        |;
                       db $00                               ;9BBA73|        |;
                       db $00,$00                           ;9BBA74|        |;
                       db $00,$00,$0C,$03                   ;9BBA76|        |;
                       db $00                               ;9BBA7A|        |;
                       db $03,$00,$F3                       ;9BBA7B|        |;
                       db $3C,$11,$11,$00,$70               ;9BBA7E|        |;
                       db $00,$00                           ;9BBA83|        |;
                       db $00,$00,$00,$00                   ;9BBA85|        |;
                       db $2F,$75,$7F,$40,$0D,$8F,$80       ;9BBA89|        |;
                       db $7F,$00,$00                       ;9BBA90|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBA93|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBA9B|        |;
                       db $00                               ;9BBAA3|        |;
                       db $00,$00                           ;9BBAA4|        |;
                       db $00,$00,$0C,$03                   ;9BBAA6|        |;
                       db $00                               ;9BBAAA|        |;
                       db $03,$00,$F3                       ;9BBAAB|        |;
                       db $3C,$11,$11,$00,$70               ;9BBAAE|        |;
                       db $00,$00                           ;9BBAB3|        |;
                       db $00,$00,$00,$00                   ;9BBAB5|        |;
                       db $2F,$75,$40,$7F,$0D,$8F,$80       ;9BBAB9|        |;
                       db $7F,$00,$00                       ;9BBAC0|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBAC3|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBACB|        |;
                       db $00                               ;9BBAD3|        |;
                       db $00,$00                           ;9BBAD4|        |;
                       db $00,$00,$0C                       ;9BBAD6|        |;
                       db $0C,$00,$FC,$FF,$FF,$3C,$11,$11   ;9BBAD9|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BBAE1|        |;
                       db $77,$05,$5E,$5E,$08,$AF,$20,$5E   ;9BBAE9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBAF1|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBAF9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BBB01|        |;
                       db $07,$00,$00,$00,$F5,$3C,$11,$11   ;9BBB09|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BBB11|        |;
                       db $2F,$75,$61,$61,$0E,$8F,$E0,$61   ;9BBB19|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBB21|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBB29|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BBB31|        |;
                       db $40                               ;9BBB39|        |;
                       db $00                               ;9BBB3A|        |;
                       db $C8,$FF,$0E                       ;9BBB3B|        |;
                       db $3C,$11,$11,$00,$70               ;9BBB3E|        |;
                       db $00,$00                           ;9BBB43|        |;
                       db $00,$00,$00,$00,$2F,$75           ;9BBB45|        |;
                       db $5B,$64,$06,$BF,$00               ;9BBB4B|        |;
                       db $64,$00,$00                       ;9BBB50|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBB53|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBB5B|        |;
                       db $00                               ;9BBB63|        |;
                       db $00,$00                           ;9BBB64|        |;
                       db $00,$00,$0C                       ;9BBB66|        |;
                       db $08,$00,$03,$00,$F3,$3C,$11,$11   ;9BBB69|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BBB71|        |;
                       db $2F,$75,$7F,$40,$0D,$8F,$80,$7F   ;9BBB79|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBB81|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBB89|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BBB91|        |;
                       db $04,$00,$03,$00,$F3,$3C,$11,$11   ;9BBB99|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BBBA1|        |;
                       db $2F,$75,$40,$7F,$0D,$8F,$80,$7F   ;9BBBA9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBBB1|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBBB9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BBBC1|        |;
                       db $01,$00,$1C,$00,$FD,$3C,$11,$11   ;9BBBC9|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BBBD1|        |;
                       db $2F,$75,$52,$6C,$0B,$8F,$E0,$6C   ;9BBBD9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBBE1|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBBE9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BBBF1|        |;
                       db $08                               ;9BBBF9|        |;
                       db $00                               ;9BBBFA|        |;
                       db $03,$00,$F3                       ;9BBBFB|        |;
                       db $3C,$11,$11,$00,$70               ;9BBBFE|        |;
                       db $00,$00                           ;9BBC03|        |;
                       db $00,$00,$00,$00                   ;9BBC05|        |;
                       db $2F,$75,$7F,$40,$0D,$8F,$80       ;9BBC09|        |;
                       db $7F,$00,$00                       ;9BBC10|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBC13|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBC1B|        |;
                       db $00                               ;9BBC23|        |;
                       db $00,$00                           ;9BBC24|        |;
                       db $00,$00,$0C,$04                   ;9BBC26|        |;
                       db $00                               ;9BBC2A|        |;
                       db $03,$00,$F3                       ;9BBC2B|        |;
                       db $3C,$11,$11,$00,$70               ;9BBC2E|        |;
                       db $00,$00                           ;9BBC33|        |;
                       db $00,$00,$00,$00                   ;9BBC35|        |;
                       db $2F,$75,$40,$7F,$0D,$8F,$80       ;9BBC39|        |;
                       db $7F,$00,$00                       ;9BBC40|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBC43|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBC4B|        |;
                       db $00                               ;9BBC53|        |;
                       db $00,$00                           ;9BBC54|        |;
                       db $00,$00,$0C,$01                   ;9BBC56|        |;
                       db $00                               ;9BBC5A|        |;
                       db $03,$00,$F3                       ;9BBC5B|        |;
                       db $3C,$11,$11,$00,$70               ;9BBC5E|        |;
                       db $00,$00                           ;9BBC63|        |;
                       db $00,$00,$00,$00                   ;9BBC65|        |;
                       db $2F,$75,$7F,$7F,$0D,$8F,$80       ;9BBC69|        |;
                       db $7F,$00,$00                       ;9BBC70|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBC73|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBC7B|        |;
                       db $00                               ;9BBC83|        |;
                       db $00,$00                           ;9BBC84|        |;
                       db $00,$00,$0C,$02                   ;9BBC86|        |;
                       db $00                               ;9BBC8A|        |;
                       db $00,$00,$09                       ;9BBC8B|        |;
                       db $3C,$11,$11,$00,$70               ;9BBC8E|        |;
                       db $00,$00                           ;9BBC93|        |;
                       db $00,$00,$00,$00                   ;9BBC95|        |;
                       db $2F,$75,$69,$68,$09,$8F,$E0       ;9BBC99|        |;
                       db $69,$00,$00                       ;9BBCA0|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBCA3|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBCAB|        |;
                       db $00                               ;9BBCB3|        |;
                       db $00,$00                           ;9BBCB4|        |;
                       db $00,$00,$0C,$04                   ;9BBCB6|        |;
                       db $00                               ;9BBCBA|        |;
                       db $FC,$FF,$FF                       ;9BBCBB|        |;
                       db $3C,$11,$11,$00,$70               ;9BBCBE|        |;
                       db $00,$00                           ;9BBCC3|        |;
                       db $00,$00,$00,$00                   ;9BBCC5|        |;
                       db $2F,$75,$78,$78,$08,$8F,$E0       ;9BBCC9|        |;
                       db $78,$00,$00                       ;9BBCD0|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBCD3|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBCDB|        |;
                       db $00                               ;9BBCE3|        |;
                       db $00,$00                           ;9BBCE4|        |;
                       db $00,$00,$0C,$11                   ;9BBCE6|        |;
                       db $00                               ;9BBCEA|        |;
                       db $00,$00,$FA                       ;9BBCEB|        |;
                       db $3C,$11,$11,$00,$70               ;9BBCEE|        |;
                       db $00,$00                           ;9BBCF3|        |;
                       db $00,$00,$01,$00                   ;9BBCF5|        |;
                       db $2F,$75,$75,$40,$0F,$8E,$C0       ;9BBCF9|        |;
                       db $75,$00,$00                       ;9BBD00|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBD03|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBD0B|        |;
                       db $00                               ;9BBD13|        |;
                       db $00,$00                           ;9BBD14|        |;
                       db $00,$00,$02,$08                   ;9BBD16|        |;
                       db $00                               ;9BBD1A|        |;
                       db $00,$00,$FA                       ;9BBD1B|        |;
                       db $3C,$11,$11,$00,$70               ;9BBD1E|        |;
                       db $00,$00                           ;9BBD23|        |;
                       db $00,$00,$01,$00                   ;9BBD25|        |;
                       db $2F,$75,$40,$75,$0F,$8E,$C0       ;9BBD29|        |;
                       db $75,$00,$00                       ;9BBD30|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBD33|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBD3B|        |;
                       db $00                               ;9BBD43|        |;
                       db $00,$00                           ;9BBD44|        |;
                       db $00,$00,$02,$04                   ;9BBD46|        |;
                       db $00                               ;9BBD4A|        |;
                       db $00,$00,$FA                       ;9BBD4B|        |;
                       db $3C,$11,$11,$00,$70               ;9BBD4E|        |;
                       db $00,$00                           ;9BBD53|        |;
                       db $00,$00,$01,$00                   ;9BBD55|        |;
                       db $2F,$75,$63,$63,$0F,$8E,$C0       ;9BBD59|        |;
                       db $63,$00,$00                       ;9BBD60|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBD63|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBD6B|        |;
                       db $00                               ;9BBD73|        |;
                       db $00,$00                           ;9BBD74|        |;
                       db $00,$00,$02,$10                   ;9BBD76|        |;
                       db $00                               ;9BBD7A|        |;
                       db $FC,$FF,$FF                       ;9BBD7B|        |;
                       db $3C,$11,$11,$00,$70               ;9BBD7E|        |;
                       db $00,$00                           ;9BBD83|        |;
                       db $00,$00,$00,$00                   ;9BBD85|        |;
                       db $2F,$75,$57,$57,$08,$8F,$E0       ;9BBD89|        |;
                       db $57,$00,$00                       ;9BBD90|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBD93|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBD9B|        |;
                       db $00                               ;9BBDA3|        |;
                       db $00,$00                           ;9BBDA4|        |;
                       db $00,$00,$0C                       ;9BBDA6|        |;
                       db $08,$00,$FC,$FF,$FF,$3C,$11,$11   ;9BBDA9|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BBDB1|        |;
                       db $2F,$75,$6B,$00,$08,$8F,$E0,$6B   ;9BBDB9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBDC1|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBDC9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BBDD1|        |;
                       db $04,$00,$FC,$FF,$FF,$3C,$11,$11   ;9BBDD9|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BBDE1|        |;
                       db $2F,$75,$00,$6B,$08,$8F,$E0,$6B   ;9BBDE9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBDF1|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBDF9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BBE01|        |;
                       db $01,$00,$FD,$FF,$F5,$3C,$11,$11   ;9BBE09|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BBE11|        |;
                       db $2F,$75,$00,$43,$0E,$8F,$E0,$43   ;9BBE19|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBE21|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBE29|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BBE31|        |;
                       db $08,$00,$03,$00,$F3,$3C,$11,$11   ;9BBE39|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BBE41|        |;
                       db $2F,$75,$7F,$00,$0D,$8F,$80,$7F   ;9BBE49|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBE51|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBE59|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BBE61|        |;
                       db $04,$00,$00,$00,$F3,$3C,$11,$11   ;9BBE69|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BBE71|        |;
                       db $2F,$75,$00,$7F,$0D,$8F,$80,$7F   ;9BBE79|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBE81|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBE89|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BBE91|        |;
                       db $08,$00,$00,$00,$09,$3C,$11,$11   ;9BBE99|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BBEA1|        |;
                       db $2F,$75,$52,$00,$09,$8F,$E0,$52   ;9BBEA9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBEB1|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBEB9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BBEC1|        |;
                       db $04,$00,$FD,$FF,$09,$3C,$11,$11   ;9BBEC9|        |;
                       db $00,$70,$00,$00,$00,$00,$00,$00   ;9BBED1|        |;
                       db $2F,$75,$00,$52,$09,$8F,$E0,$52   ;9BBED9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBEE1|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBEE9|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$0C   ;9BBEF1|        |;
                       db $FC                               ;9BBEF9|        |;
                       db $00                               ;9BBEFA|        |;
                       db $59,$06,$00,$00,$53,$00           ;9BBEFB|        |;
                       db $00,$70                           ;9BBF01|        |;
                       db $00,$70                           ;9BBF03|        |;
                       db $00,$00,$00,$70                   ;9BBF05|        |;
                       db $00,$7F,$70,$70,$0C,$FF,$E0       ;9BBF09|        |;
                       db $70,$00,$00                       ;9BBF10|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBF13|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBF1B|        |;
                       db $00                               ;9BBF23|        |;
                       db $00,$00                           ;9BBF24|        |;
                       db $00,$00,$00                       ;9BBF26|        |;
                       db $FC,$00,$5F,$05,$00,$00,$53,$00   ;9BBF29|        |;
                       db $00,$70,$00,$70,$00,$00,$00,$70   ;9BBF31|        |;
                       db $00,$7F,$70,$70,$0C,$FF,$E0,$70   ;9BBF39|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBF41|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBF49|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBF51|        |;
                       db $FC                               ;9BBF59|        |;
                       db $00                               ;9BBF5A|        |;
                       db $5F,$05,$00,$00,$1A,$00           ;9BBF5B|        |;
                       db $00,$70                           ;9BBF61|        |;
                       db $00,$70                           ;9BBF63|        |;
                       db $00,$00,$00,$70                   ;9BBF65|        |;
                       db $00,$7F,$70,$70,$0D,$FF,$E0       ;9BBF69|        |;
                       db $70,$00,$00                       ;9BBF70|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBF73|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBF7B|        |;
                       db $00                               ;9BBF83|        |;
                       db $00,$00                           ;9BBF84|        |;
                       db $00,$00,$00,$FC                   ;9BBF86|        |;
                       db $00                               ;9BBF8A|        |;
                       db $5F,$05,$00,$00,$16,$00           ;9BBF8B|        |;
                       db $00,$70                           ;9BBF91|        |;
                       db $00,$70                           ;9BBF93|        |;
                       db $00,$00,$00,$70                   ;9BBF95|        |;
                       db $00,$7F,$70,$70,$0E,$FF,$E0       ;9BBF99|        |;
                       db $70,$00,$00                       ;9BBFA0|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBFA3|        |;
                       db $00,$00,$00,$00,$00,$00,$00,$00   ;9BBFAB|        |;
                       db $00                               ;9BBFB3|        |;
                       db $00,$00                           ;9BBFB4|        |;
                       db $00,$00,$00                       ;9BBFB6|        |;
 
          CODE_9BBFB9:
                       LDA.W $0CCD                          ;9BBFB9|ADCD0C  |;
                       CMP.W #$03D1                         ;9BBFBC|C9D103  |;
                       BCS CODE_9BC001                      ;9BBFBF|B040    |;
                       LDA.W #$0082                         ;9BBFC1|A98200  |;
                       STA.B $12                            ;9BBFC4|8512    |;
                       LDA.W #$8000                         ;9BBFC6|A90080  |;
                       STA.B $10                            ;9BBFC9|8510    |;
                       LDA.W $0CC5                          ;9BBFCB|ADC50C  |;
                       BEQ CODE_9BBFD6                      ;9BBFCE|F006    |;
                       LDA.W #$4000                         ;9BBFD0|A90040  |;
                       TSB.W $0CC9                          ;9BBFD3|0CC90C  |;
 
          CODE_9BBFD6:
                       LDA.W $0CD3                          ;9BBFD6|ADD30C  |;
                       BEQ CODE_9BBFE1                      ;9BBFD9|F006    |;
                       db $A9,$00,$80,$0C,$C9,$0C           ;9BBFDB|        |;
 
          CODE_9BBFE1:
                       LDA.W $0CCD                          ;9BBFE1|ADCD0C  |;
                       DEC A                                ;9BBFE4|3A      |;
                       BPL CODE_9BBFEA                      ;9BBFE5|1003    |;
                       db $A9,$00,$00                       ;9BBFE7|        |;
 
          CODE_9BBFEA:
                       CMP.W #$03D0                         ;9BBFEA|C9D003  |;
                       BCC CODE_9BBFF2                      ;9BBFED|9003    |;
                       db $A9,$D0,$03                       ;9BBFEF|        |;
 
          CODE_9BBFF2:
                       STA.B $00                            ;9BBFF2|8500    |;
                       LDA.W $0CC9                          ;9BBFF4|ADC90C  |;
                       LDX.W $0CCF                          ;9BBFF7|AECF0C  |;
                       LDY.W $0CD1                          ;9BBFFA|ACD10C  |;
                       JSL.L CODE_80B08D                    ;9BBFFD|228DB080|;
 
          CODE_9BC001:
                       RTL                                  ;9BC001|6B      |;
 
          CODE_9BC002:
                       PHX                                  ;9BC002|DA      |;
                       TAY                                  ;9BC003|A8      |;
                       LDA.W $0D97,Y                        ;9BC004|B9970D  |;
                       DEC A                                ;9BC007|3A      |;
                       ASL A                                ;9BC008|0A      |;
                       ASL A                                ;9BC009|0A      |;
                       TAX                                  ;9BC00A|AA      |;
                       LDA.L DATA8_828000,X                 ;9BC00B|BF008082|;
                       CLC                                  ;9BC00F|18      |;
                       ADC.W #$8000                         ;9BC010|690080  |;
                       STA.B $0C                            ;9BC013|850C    |;
                       LDA.L DATA8_828002,X                 ;9BC015|BF028082|;
                       ADC.W #$0082                         ;9BC019|698200  |;
                       STA.B $0E                            ;9BC01C|850E    |;
                       TYX                                  ;9BC01E|BB      |;
                       LDY.W #$0012                         ;9BC01F|A01200  |;
                       LDA.B [$0C],Y                        ;9BC022|B70C    |;
                       AND.W #$00FF                         ;9BC024|29FF00  |;
                       CMP.W #$0080                         ;9BC027|C98000  |;
                       BCC CODE_9BC02F                      ;9BC02A|9003    |;
                       ORA.W #$FF00                         ;9BC02C|0900FF  |;
 
          CODE_9BC02F:
                       STA.B $A5                            ;9BC02F|85A5    |;
                       INY                                  ;9BC031|C8      |;
                       LDA.B [$0C],Y                        ;9BC032|B70C    |;
                       AND.W #$00FF                         ;9BC034|29FF00  |;
                       CMP.W #$0080                         ;9BC037|C98000  |;
                       BCC CODE_9BC03F                      ;9BC03A|9003    |;
                       ORA.W #$FF00                         ;9BC03C|0900FF  |;
 
          CODE_9BC03F:
                       STA.B $A9                            ;9BC03F|85A9    |;
                       LDA.W $0E03,X                        ;9BC041|BD030E  |;
                       BIT.W #$0800                         ;9BC044|890008  |;
                       BEQ CODE_9BC051                      ;9BC047|F008    |;
                       LDA.W #$0000                         ;9BC049|A90000  |;
                       SEC                                  ;9BC04C|38      |;
                       SBC.B $A5                            ;9BC04D|E5A5    |;
                       STA.B $A5                            ;9BC04F|85A5    |;
 
          CODE_9BC051:
                       LDA.W $0E03,X                        ;9BC051|BD030E  |;
                       BIT.W #$1000                         ;9BC054|890010  |;
                       BNE CODE_9BC061                      ;9BC057|D008    |;
                       LDA.W #$0000                         ;9BC059|A90000  |;
                       SEC                                  ;9BC05C|38      |;
                       SBC.B $A9                            ;9BC05D|E5A9    |;
                       STA.B $A9                            ;9BC05F|85A9    |;
 
          CODE_9BC061:
                       LDA.W $15DA                          ;9BC061|ADDA15  |;
                       BEQ CODE_9BC072                      ;9BC064|F00C    |;
                       LDA.B $A5                            ;9BC066|A5A5    |;
                       LDY.B $A9                            ;9BC068|A4A9    |;
                       EOR.W #$FFFF                         ;9BC06A|49FFFF  |;
                       INC A                                ;9BC06D|1A      |;
                       STA.B $A9                            ;9BC06E|85A9    |;
                       STY.B $A5                            ;9BC070|84A5    |;
 
          CODE_9BC072:
                       PLX                                  ;9BC072|FA      |;
                       RTL                                  ;9BC073|6B      |;
 
          CODE_9BC074:
                       PHX                                  ;9BC074|DA      |;
                       TAY                                  ;9BC075|A8      |;
                       LDA.W $0D97,Y                        ;9BC076|B9970D  |;
                       DEC A                                ;9BC079|3A      |;
                       ASL A                                ;9BC07A|0A      |;
                       ASL A                                ;9BC07B|0A      |;
                       TAX                                  ;9BC07C|AA      |;
                       LDA.L DATA8_828000,X                 ;9BC07D|BF008082|;
                       CLC                                  ;9BC081|18      |;
                       ADC.W #$8000                         ;9BC082|690080  |;
                       STA.B $0C                            ;9BC085|850C    |;
                       LDA.L DATA8_828002,X                 ;9BC087|BF028082|;
                       ADC.W #$0082                         ;9BC08B|698200  |;
                       STA.B $0E                            ;9BC08E|850E    |;
                       TYX                                  ;9BC090|BB      |;
                       LDY.W #$0012                         ;9BC091|A01200  |;
                       LDA.B [$0C],Y                        ;9BC094|B70C    |;
                       AND.W #$00FF                         ;9BC096|29FF00  |;
                       CMP.W #$0080                         ;9BC099|C98000  |;
                       BCC CODE_9BC0A1                      ;9BC09C|9003    |;
                       ORA.W #$FF00                         ;9BC09E|0900FF  |;
 
          CODE_9BC0A1:
                       STA.B $A5                            ;9BC0A1|85A5    |;
                       INY                                  ;9BC0A3|C8      |;
                       LDA.B [$0C],Y                        ;9BC0A4|B70C    |;
                       AND.W #$00FF                         ;9BC0A6|29FF00  |;
                       CMP.W #$0080                         ;9BC0A9|C98000  |;
                       BCC CODE_9BC0B1                      ;9BC0AC|9003    |;
                       ORA.W #$FF00                         ;9BC0AE|0900FF  |;
 
          CODE_9BC0B1:
                       STA.B $A9                            ;9BC0B1|85A9    |;
                       INY                                  ;9BC0B3|C8      |;
                       LDA.B [$0C],Y                        ;9BC0B4|B70C    |;
                       AND.W #$00FF                         ;9BC0B6|29FF00  |;
                       CMP.W #$0080                         ;9BC0B9|C98000  |;
                       BCC CODE_9BC0C1                      ;9BC0BC|9003    |;
                       ORA.W #$FF00                         ;9BC0BE|0900FF  |;
 
          CODE_9BC0C1:
                       SEC                                  ;9BC0C1|38      |;
                       SBC.B $A5                            ;9BC0C2|E5A5    |;
                       STA.B $A5                            ;9BC0C4|85A5    |;
                       INY                                  ;9BC0C6|C8      |;
                       LDA.B [$0C],Y                        ;9BC0C7|B70C    |;
                       AND.W #$00FF                         ;9BC0C9|29FF00  |;
                       CMP.W #$0080                         ;9BC0CC|C98000  |;
                       BCC CODE_9BC0D4                      ;9BC0CF|9003    |;
                       ORA.W #$FF00                         ;9BC0D1|0900FF  |;
 
          CODE_9BC0D4:
                       SEC                                  ;9BC0D4|38      |;
                       EOR.W #$FFFF                         ;9BC0D5|49FFFF  |;
                       ADC.B $A9                            ;9BC0D8|65A9    |;
                       STA.B $A9                            ;9BC0DA|85A9    |;
                       LDA.W $0E03,X                        ;9BC0DC|BD030E  |;
                       BIT.W #$0800                         ;9BC0DF|890008  |;
                       BEQ CODE_9BC0EC                      ;9BC0E2|F008    |;
                       db $A9,$00,$00,$38,$E5,$A5,$85,$A5   ;9BC0E4|        |;
 
          CODE_9BC0EC:
                       LDA.W $0E03,X                        ;9BC0EC|BD030E  |;
                       BIT.W #$1000                         ;9BC0EF|890010  |;
                       BNE CODE_9BC0FC                      ;9BC0F2|D008    |;
                       LDA.W #$0000                         ;9BC0F4|A90000  |;
                       SEC                                  ;9BC0F7|38      |;
                       SBC.B $A9                            ;9BC0F8|E5A9    |;
                       STA.B $A9                            ;9BC0FA|85A9    |;
 
          CODE_9BC0FC:
                       LDA.W $15DA                          ;9BC0FC|ADDA15  |;
                       BEQ CODE_9BC10D                      ;9BC0FF|F00C    |;
                       LDA.B $A5                            ;9BC101|A5A5    |;
                       LDY.B $A9                            ;9BC103|A4A9    |;
                       EOR.W #$FFFF                         ;9BC105|49FFFF  |;
                       INC A                                ;9BC108|1A      |;
                       STA.B $A9                            ;9BC109|85A9    |;
                       STY.B $A5                            ;9BC10B|84A5    |;
 
          CODE_9BC10D:
                       PLX                                  ;9BC10D|FA      |;
                       RTL                                  ;9BC10E|6B      |;
 
          CODE_9BC10F:
                       LDA.W $15DA                          ;9BC10F|ADDA15  |;
                       BEQ CODE_9BC128                      ;9BC112|F014    |;
                       LDA.B $A5                            ;9BC114|A5A5    |;
                       PHA                                  ;9BC116|48      |;
                       LDA.B $A9                            ;9BC117|A5A9    |;
                       EOR.W #$FFFF                         ;9BC119|49FFFF  |;
                       INC A                                ;9BC11C|1A      |;
                       STA.B $A5                            ;9BC11D|85A5    |;
                       PLA                                  ;9BC11F|68      |;
                       SEC                                  ;9BC120|38      |;
                       SBC.W #$00C5                         ;9BC121|E9C500  |;
                       STA.B $A9                            ;9BC124|85A9    |;
                       BRA CODE_9BC138                      ;9BC126|8010    |;
 
          CODE_9BC128:
                       LDA.B $A5                            ;9BC128|A5A5    |;
                       SEC                                  ;9BC12A|38      |;
                       SBC.W $0CEB                          ;9BC12B|EDEB0C  |;
                       STA.B $A5                            ;9BC12E|85A5    |;
                       LDA.B $A9                            ;9BC130|A5A9    |;
                       SEC                                  ;9BC132|38      |;
                       SBC.W $0D37                          ;9BC133|ED370D  |;
                       STA.B $A9                            ;9BC136|85A9    |;
 
          CODE_9BC138:
                       LDA.B $A5                            ;9BC138|A5A5    |;
                       CMP.W #$FF6F                         ;9BC13A|C96FFF  |;
                       BMI CODE_9BC16E                      ;9BC13D|302F    |;
                       CMP.W #$0091                         ;9BC13F|C99100  |;
                       BPL CODE_9BC16E                      ;9BC142|102A    |;
                       LDA.B $A5                            ;9BC144|A5A5    |;
                       CLC                                  ;9BC146|18      |;
                       ADC.W #$0080                         ;9BC147|698000  |;
                       STA.B $A5                            ;9BC14A|85A5    |;
                       LDA.B $AD                            ;9BC14C|A5AD    |;
                       ASL A                                ;9BC14E|0A      |;
                       CLC                                  ;9BC14F|18      |;
                       ADC.B $AD                            ;9BC150|65AD    |;
                       PHA                                  ;9BC152|48      |;
                       ASL A                                ;9BC153|0A      |;
                       PLA                                  ;9BC154|68      |;
                       ROR A                                ;9BC155|6A      |;
                       CLC                                  ;9BC156|18      |;
                       ADC.B $A9                            ;9BC157|65A9    |;
                       STA.B $A9                            ;9BC159|85A9    |;
                       CMP.W #$FF6F                         ;9BC15B|C96FFF  |;
                       BMI CODE_9BC16E                      ;9BC15E|300E    |;
                       CMP.W #$0091                         ;9BC160|C99100  |;
                       BPL CODE_9BC16E                      ;9BC163|1009    |;
                       LDA.W #$0070                         ;9BC165|A97000  |;
                       SEC                                  ;9BC168|38      |;
                       SBC.B $A9                            ;9BC169|E5A9    |;
                       STA.B $A9                            ;9BC16B|85A9    |;
                       RTL                                  ;9BC16D|6B      |;
 
          CODE_9BC16E:
                       LDA.W #$4E20                         ;9BC16E|A9204E  |;
                       STA.B $A9                            ;9BC171|85A9    |;
                       RTL                                  ;9BC173|6B      |;
 
          CODE_9BC174:
                       TXA                                  ;9BC174|8A      |;
                       LSR A                                ;9BC175|4A      |;
                       LDY.B $B5                            ;9BC176|A4B5    |;
                       STA.W $0AE7,Y                        ;9BC178|99E70A  |;
                       RTL                                  ;9BC17B|6B      |;
 
          CODE_9BC17C:
                       LDA.W $1C98                          ;9BC17C|AD981C  |;
                       ASL A                                ;9BC17F|0A      |;
                       ASL A                                ;9BC180|0A      |;
                       ASL A                                ;9BC181|0A      |;
                       TAX                                  ;9BC182|AA      |;
                       LDA.L UNREACH_9C83B7,X               ;9BC183|BFB7839C|;
                       STA.B $0C                            ;9BC187|850C    |;
                       LDA.L UNREACH_9C83B9,X               ;9BC189|BFB9839C|;
                       STA.B $0E                            ;9BC18D|850E    |;
                       LDA.W #$007F                         ;9BC18F|A97F00  |;
                       STA.B $12                            ;9BC192|8512    |;
                       LDA.W #$0000                         ;9BC194|A90000  |;
                       STA.B $10                            ;9BC197|8510    |;
                       JSL.L CODE_80C373                    ;9BC199|2273C380|;
                       LDA.W #$007F                         ;9BC19D|A97F00  |;
                       STA.B $12                            ;9BC1A0|8512    |;
                       STA.B $0E                            ;9BC1A2|850E    |;
                       STZ.B $0C                            ;9BC1A4|640C    |;
                       STX.B $10                            ;9BC1A6|8610    |;
                       STX.B $00                            ;9BC1A8|8600    |;
                       JSL.L CODE_9B85C2                    ;9BC1AA|22C2859B|;
                       LDX.B $10                            ;9BC1AE|A610    |;
                       STX.B $0C                            ;9BC1B0|860C    |;
                       TXA                                  ;9BC1B2|8A      |;
                       LSR A                                ;9BC1B3|4A      |;
                       LSR A                                ;9BC1B4|4A      |;
                       LSR A                                ;9BC1B5|4A      |;
                       LSR A                                ;9BC1B6|4A      |;
                       LSR A                                ;9BC1B7|4A      |;
                       ADC.L $7E35B8                        ;9BC1B8|6FB8357E|;
                       STA.L $7E35BA                        ;9BC1BC|8FBA357E|;
                       LDA.L $7E35B8                        ;9BC1C0|AFB8357E|;
                       ASL A                                ;9BC1C4|0A      |;
                       ASL A                                ;9BC1C5|0A      |;
                       ASL A                                ;9BC1C6|0A      |;
                       ASL A                                ;9BC1C7|0A      |;
                       ADC.W #$1000                         ;9BC1C8|690010  |;
                       TAY                                  ;9BC1CB|A8      |;
                       JSL.L CODE_80891F                    ;9BC1CC|221F8980|;
                       JSL.L CODE_9BC1D5                    ;9BC1D0|22D5C19B|;
                       RTL                                  ;9BC1D4|6B      |;
 
          CODE_9BC1D5:
                       LDA.W #$0092                         ;9BC1D5|A99200  |;
                       STA.B $0E                            ;9BC1D8|850E    |;
                       LDA.W #$E053                         ;9BC1DA|A953E0  |;
                       STA.B $0C                            ;9BC1DD|850C    |;
                       LDA.W #$007F                         ;9BC1DF|A97F00  |;
                       STA.B $12                            ;9BC1E2|8512    |;
                       LDA.W #$C800                         ;9BC1E4|A900C8  |;
                       STA.B $10                            ;9BC1E7|8510    |;
                       JSL.L CODE_80C373                    ;9BC1E9|2273C380|;
                       LDA.W $1C98                          ;9BC1ED|AD981C  |;
                       ASL A                                ;9BC1F0|0A      |;
                       ASL A                                ;9BC1F1|0A      |;
                       ASL A                                ;9BC1F2|0A      |;
                       TAX                                  ;9BC1F3|AA      |;
                       LDA.L UNREACH_9C83BB,X               ;9BC1F4|BFBB839C|;
                       STA.B $0C                            ;9BC1F8|850C    |;
                       LDA.L UNREACH_9C83BD,X               ;9BC1FA|BFBD839C|;
                       STA.B $0E                            ;9BC1FE|850E    |;
                       LDA.W #$007F                         ;9BC200|A97F00  |;
                       STA.B $12                            ;9BC203|8512    |;
                       LDA.W #$D8B6                         ;9BC205|A9B6D8  |;
                       SEC                                  ;9BC208|38      |;
                       SBC.B [$0C]                          ;9BC209|E70C    |;
                       STA.B $10                            ;9BC20B|8510    |;
                       LDA.B [$0C]                          ;9BC20D|A70C    |;
                       ASL A                                ;9BC20F|0A      |;
                       STA.B $14                            ;9BC210|8514    |;
                       INC.B $0C                            ;9BC212|E60C    |;
                       INC.B $0C                            ;9BC214|E60C    |;
                       LDA.B [$0C]                          ;9BC216|A70C    |;
                       TAY                                  ;9BC218|A8      |;
                       CMP.W #$0006                         ;9BC219|C90600  |;
                       BCC CODE_9BC226                      ;9BC21C|9008    |;
                       db $A5,$10,$38,$E9,$60,$00,$85,$10   ;9BC21E|        |;
 
          CODE_9BC226:
                       LDA.B $0C                            ;9BC226|A50C    |;
                       CLC                                  ;9BC228|18      |;
                       ADC.W #$0004                         ;9BC229|690400  |;
                       STA.B $0C                            ;9BC22C|850C    |;
 
          CODE_9BC22E:
                       LDX.W #$0000                         ;9BC22E|A20000  |;
 
          CODE_9BC231:
                       LDA.B [$0C]                          ;9BC231|A70C    |;
                       CLC                                  ;9BC233|18      |;
                       ADC.L $7E35B8                        ;9BC234|6FB8357E|;
                       ADC.W #$1400                         ;9BC238|690014  |;
                       STA.B [$10]                          ;9BC23B|8710    |;
                       INX                                  ;9BC23D|E8      |;
                       INX                                  ;9BC23E|E8      |;
                       INC.B $0C                            ;9BC23F|E60C    |;
                       INC.B $0C                            ;9BC241|E60C    |;
                       INC.B $10                            ;9BC243|E610    |;
                       INC.B $10                            ;9BC245|E610    |;
                       CPX.B $14                            ;9BC247|E414    |;
                       BNE CODE_9BC231                      ;9BC249|D0E6    |;
                       LDA.B $10                            ;9BC24B|A510    |;
                       CLC                                  ;9BC24D|18      |;
                       ADC.W #$0060                         ;9BC24E|696000  |;
                       SEC                                  ;9BC251|38      |;
                       SBC.B $14                            ;9BC252|E514    |;
                       STA.B $10                            ;9BC254|8510    |;
                       DEY                                  ;9BC256|88      |;
                       BNE CODE_9BC22E                      ;9BC257|D0D5    |;
                       RTL                                  ;9BC259|6B      |;
 
          CODE_9BC25A:
                       LDA.W #$001C                         ;9BC25A|A91C00  |;
                       STA.L $7E3454                        ;9BC25D|8F54347E|;
                       LDA.W #$001D                         ;9BC261|A91D00  |;
                       STA.L $7E3452                        ;9BC264|8F52347E|;
                       JSL.L CODE_9DD9AD                    ;9BC268|22ADD99D|;
                       LDX.W #$0049                         ;9BC26C|A24900  |;
                       LDY.W #$0018                         ;9BC26F|A01800  |;
                       LDA.W #$009C                         ;9BC272|A99C00  |;
                       STA.B $8F                            ;9BC275|858F    |;
                       LDA.W #$F1E1                         ;9BC277|A9E1F1  |;
                       STA.B $8D                            ;9BC27A|858D    |;
                       JSL.L CODE_9C936C                    ;9BC27C|226C939C|;
                       JSL.L CODE_80AFDE                    ;9BC280|22DEAF80|;
                       JSL.L CODE_9DE0D4                    ;9BC284|22D4E09D|;
                       STZ.W $1DB9                          ;9BC288|9CB91D  |;
                       LDA.W #$0000                         ;9BC28B|A90000  |;
                       CMP.L $7E35D6                        ;9BC28E|CFD6357E|;
                       BNE CODE_9BC295                      ;9BC292|D001    |;
                       db $1A                               ;9BC294|        |;
 
          CODE_9BC295:
                       STA.W $1DBD                          ;9BC295|8DBD1D  |;
                       JSL.L CODE_9D98B5                    ;9BC298|22B5989D|;
                       LDA.B $A9                            ;9BC29C|A5A9    |;
                       INC A                                ;9BC29E|1A      |;
                       STA.W $1DC1                          ;9BC29F|8DC11D  |;
                       JSL.L CODE_9BC49A                    ;9BC2A2|229AC49B|;
                       JSL.L CODE_9DD923                    ;9BC2A6|2223D99D|;
                       LDA.W #$0050                         ;9BC2AA|A95000  |;
                       LDX.W #$00C0                         ;9BC2AD|A2C000  |;
                       LDY.W #$00D8                         ;9BC2B0|A0D800  |;
                       JSL.L CODE_9BCDF8                    ;9BC2B3|22F8CD9B|;
                       JSL.L CODE_9DDFF6                    ;9BC2B7|22F6DF9D|;
                       JSL.L CODE_8086BD                    ;9BC2BB|22BD8680|;
                       LDA.W #$0005                         ;9BC2BF|A90500  |;
                       STA.W $1DC5                          ;9BC2C2|8DC51D  |;
                       JSL.L CODE_9BC44B                    ;9BC2C5|224BC49B|;
 
          CODE_9BC2C9:
                       JSL.L CODE_9B851F                    ;9BC2C9|221F859B|;
                       LDA.B $B1                            ;9BC2CD|A5B1    |;
                       BIT.W #$1000                         ;9BC2CF|890010  |;
                       BEQ CODE_9BC2D7                      ;9BC2D2|F003    |;
                       JMP.W CODE_9BC43B                    ;9BC2D4|4C3BC4  |;
 
          CODE_9BC2D7:
                       BIT.W #$0800                         ;9BC2D7|890008  |;
                       BEQ CODE_9BC2DF                      ;9BC2DA|F003    |;
                       db $4C,$DA,$C3                       ;9BC2DC|        |;
 
          CODE_9BC2DF:
                       BIT.W #$0400                         ;9BC2DF|890004  |;
                       BNE CODE_9BC35C                      ;9BC2E2|D078    |;
 
          CODE_9BC2E4:
                       LDA.W $1DBD                          ;9BC2E4|ADBD1D  |;
                       BEQ CODE_9BC316                      ;9BC2E7|F02D    |;
                       DEC A                                ;9BC2E9|3A      |;
                       BNE CODE_9BC2F2                      ;9BC2EA|D006    |;
                       db $CF,$D6,$35,$7E,$F0,$24           ;9BC2EC|        |;
 
          CODE_9BC2F2:
                       LDA.W #$0004                         ;9BC2F2|A90400  |;
                       STA.W $0D0F                          ;9BC2F5|8D0F0D  |;
                       LDA.W $1DBD                          ;9BC2F8|ADBD1D  |;
                       ASL A                                ;9BC2FB|0A      |;
                       ADC.W $1DBD                          ;9BC2FC|6DBD1D  |;
                       STA.W $0D11                          ;9BC2FF|8D110D  |;
                       LDA.W #$2000                         ;9BC302|A90020  |;
                       STA.W $0D0D                          ;9BC305|8D0D0D  |;
                       LDA.W #$009C                         ;9BC308|A99C00  |;
                       STA.B $8F                            ;9BC30B|858F    |;
                       LDA.W #$9363                         ;9BC30D|A96393  |;
                       STA.B $8D                            ;9BC310|858D    |;
                       JSL.L CODE_9EC894                    ;9BC312|2294C89E|;
 
          CODE_9BC316:
                       LDA.W $1DBD                          ;9BC316|ADBD1D  |;
                       CLC                                  ;9BC319|18      |;
                       ADC.W $1DC5                          ;9BC31A|6DC51D  |;
                       CLC                                  ;9BC31D|18      |;
                       ADC.W $1DE9                          ;9BC31E|6DE91D  |;
                       CMP.W $1DC1                          ;9BC321|CDC11D  |;
                       BPL CODE_9BC351                      ;9BC324|102B    |;
                       LDA.W #$0004                         ;9BC326|A90400  |;
                       STA.W $0D0F                          ;9BC329|8D0F0D  |;
                       LDA.W $1DBD                          ;9BC32C|ADBD1D  |;
                       CLC                                  ;9BC32F|18      |;
                       ADC.W $1DC5                          ;9BC330|6DC51D  |;
                       DEC A                                ;9BC333|3A      |;
                       STA.B $14                            ;9BC334|8514    |;
                       ASL A                                ;9BC336|0A      |;
                       ADC.B $14                            ;9BC337|6514    |;
                       INC A                                ;9BC339|1A      |;
                       STA.W $0D11                          ;9BC33A|8D110D  |;
                       LDA.W #$2000                         ;9BC33D|A90020  |;
                       STA.W $0D0D                          ;9BC340|8D0D0D  |;
                       LDA.W #$009C                         ;9BC343|A99C00  |;
                       STA.B $8F                            ;9BC346|858F    |;
                       LDA.W #$9366                         ;9BC348|A96693  |;
                       STA.B $8D                            ;9BC34B|858D    |;
                       JSL.L CODE_9EC894                    ;9BC34D|2294C89E|;
 
          CODE_9BC351:
                       JSL.L CODE_9BC44B                    ;9BC351|224BC49B|;
                       JSL.L CODE_808583                    ;9BC355|22838580|;
                       JMP.W CODE_9BC2C9                    ;9BC359|4CC9C2  |;
 
          CODE_9BC35C:
                       JSR.W CODE_9BC4F3                    ;9BC35C|20F3C4  |;
                       LDA.W #$0006                         ;9BC35F|A90600  |;
                       STA.W $1DC5                          ;9BC362|8DC51D  |;
                       JSL.L CODE_9BC44B                    ;9BC365|224BC49B|;
                       LDA.W #$0005                         ;9BC369|A90500  |;
                       STA.W $1DC5                          ;9BC36C|8DC51D  |;
                       LDA.W $1DBD                          ;9BC36F|ADBD1D  |;
                       CLC                                  ;9BC372|18      |;
                       ADC.W #$0005                         ;9BC373|690500  |;
                       CLC                                  ;9BC376|18      |;
                       ADC.W $1DE9                          ;9BC377|6DE91D  |;
                       CMP.W $1DC1                          ;9BC37A|CDC11D  |;
                       BMI CODE_9BC382                      ;9BC37D|3003    |;
                       JMP.W CODE_9BC2E4                    ;9BC37F|4CE4C2  |;
 
          CODE_9BC382:
                       SEC                                  ;9BC382|38      |;
                       SBC.W #$0004                         ;9BC383|E90400  |;
                       SEC                                  ;9BC386|38      |;
                       SBC.W $1DE9                          ;9BC387|EDE91D  |;
                       CMP.L $7E35D6                        ;9BC38A|CFD6357E|;
                       BNE CODE_9BC3A8                      ;9BC38E|D018    |;
                       db $18,$69,$05,$00,$18,$6D,$E9,$1D   ;9BC390|        |;
                       db $CD,$C1,$1D,$30,$03,$4C,$E4,$C2   ;9BC398|        |;
                       db $38,$E9,$04,$00,$38,$ED,$E9,$1D   ;9BC3A0|        |;
 
          CODE_9BC3A8:
                       STA.W $1DBD                          ;9BC3A8|8DBD1D  |;
                       LDA.W #$0001                         ;9BC3AB|A90100  |;
                       STA.W $1DF3                          ;9BC3AE|8DF31D  |;
                       LDA.W #$0018                         ;9BC3B1|A91800  |;
                       STA.W $1DF5                          ;9BC3B4|8DF51D  |;
 
          CODE_9BC3B7:
                       JSL.L CODE_808583                    ;9BC3B7|22838580|;
                       INC.W $1DF3                          ;9BC3BB|EEF31D  |;
                       INC.W $1DF3                          ;9BC3BE|EEF31D  |;
                       LDA.W $1DF3                          ;9BC3C1|ADF31D  |;
                       CMP.W #$0017                         ;9BC3C4|C91700  |;
                       BNE CODE_9BC3B7                      ;9BC3C7|D0EE    |;
                       JSL.L CODE_9BC44B                    ;9BC3C9|224BC49B|;
                       JSL.L CODE_808583                    ;9BC3CD|22838580|;
                       LDA.W #$FFFF                         ;9BC3D1|A9FFFF  |;
                       STA.W $1DF3                          ;9BC3D4|8DF31D  |;
                       JMP.W CODE_9BC2C9                    ;9BC3D7|4CC9C2  |;
                       db $20,$F3,$C4,$AD,$BD,$1D,$3A,$10   ;9BC3DA|        |;
                       db $03,$4C,$E4,$C2,$CF,$D6,$35,$7E   ;9BC3E2|        |;
                       db $D0,$09,$C9,$00,$00,$D0,$03,$4C   ;9BC3EA|        |;
                       db $E4,$C2,$3A,$8D,$BD,$1D,$A9,$06   ;9BC3F2|        |;
                       db $00,$8D,$C5,$1D,$22,$4B,$C4,$9B   ;9BC3FA|        |;
                       db $22,$83,$85,$80,$A9,$15,$00,$8D   ;9BC402|        |;
                       db $F3,$1D,$A9,$18,$00,$8D,$F5,$1D   ;9BC40A|        |;
                       db $22,$83,$85,$80,$CE,$F3,$1D,$CE   ;9BC412|        |;
                       db $F3,$1D,$AD,$F3,$1D,$C9,$01,$00   ;9BC41A|        |;
                       db $D0,$EE,$A9,$05,$00,$8D,$C5,$1D   ;9BC422|        |;
                       db $22,$4B,$C4,$9B,$22,$83,$85,$80   ;9BC42A|        |;
                       db $A9,$FF,$FF,$8D,$F3,$1D,$4C,$C9   ;9BC432|        |;
                       db $C2                               ;9BC43A|        |;
 
          CODE_9BC43B:
                       RTL                                  ;9BC43B|6B      |;
                       db $A9,$00,$00,$8D,$CD,$1D,$AD,$CD   ;9BC43C|        |;
                       db $1D,$C9,$FF,$FF,$D0,$F8,$60       ;9BC444|        |;
 
          CODE_9BC44B:
                       LDA.W $1DC1                          ;9BC44B|ADC11D  |;
                       CMP.W #$0001                         ;9BC44E|C90100  |;
                       BNE CODE_9BC473                      ;9BC451|D020    |;
                       db $A5,$8F,$48,$A5,$8D,$48,$A9,$9C   ;9BC453|        |;
                       db $00,$85,$8F,$A9,$EF,$F1,$85,$8D   ;9BC45B|        |;
                       db $22,$BE,$C7,$9E,$68,$85,$8D,$68   ;9BC463|        |;
                       db $85,$8F,$22,$75,$BF,$9F,$80,$26   ;9BC46B|        |;
 
          CODE_9BC473:
                       LDA.W $1DBD                          ;9BC473|ADBD1D  |;
                       ASL A                                ;9BC476|0A      |;
                       ADC.W $1DBD                          ;9BC477|6DBD1D  |;
                       XBA                                  ;9BC47A|EB      |;
                       LSR A                                ;9BC47B|4A      |;
                       LSR A                                ;9BC47C|4A      |;
                       ADC.W #$2780                         ;9BC47D|698027  |;
                       STA.B $0C                            ;9BC480|850C    |;
                       LDA.W #$007F                         ;9BC482|A97F00  |;
                       STA.B $0E                            ;9BC485|850E    |;
                       LDA.W $1DC5                          ;9BC487|ADC51D  |;
                       ASL A                                ;9BC48A|0A      |;
                       ADC.W $1DC5                          ;9BC48B|6DC51D  |;
                       XBA                                  ;9BC48E|EB      |;
                       LSR A                                ;9BC48F|4A      |;
                       LSR A                                ;9BC490|4A      |;
                       TAX                                  ;9BC491|AA      |;
                       LDY.W #$0140                         ;9BC492|A04001  |;
                       JSL.L CODE_80891F                    ;9BC495|221F8980|;
                       RTL                                  ;9BC499|6B      |;
 
          CODE_9BC49A:
                       LDA.W #$007F                         ;9BC49A|A97F00  |;
                       STA.B $12                            ;9BC49D|8512    |;
                       LDA.W #$2780                         ;9BC49F|A98027  |;
                       STA.B $10                            ;9BC4A2|8510    |;
                       LDX.W #$4D80                         ;9BC4A4|A2804D  |;
                       LDA.L $7E35B6                        ;9BC4A7|AFB6357E|;
                       CLC                                  ;9BC4AB|18      |;
                       ADC.L $7E35A8                        ;9BC4AC|6FA8357E|;
                       JSL.L CODE_808EDF                    ;9BC4B0|22DF8E80|;
                       LDA.W $1DC1                          ;9BC4B4|ADC11D  |;
                       CMP.W #$0001                         ;9BC4B7|C90100  |;
                       BEQ CODE_9BC4F2                      ;9BC4BA|F036    |;
                       LDA.W #$2400                         ;9BC4BC|A90024  |;
                       STA.W $0D0D                          ;9BC4BF|8D0D0D  |;
                       LDA.W #$0000                         ;9BC4C2|A90000  |;
                       STA.W $0D11                          ;9BC4C5|8D110D  |;
                       LDA.B $00                            ;9BC4C8|A500    |;
                       STA.W $1DB9                          ;9BC4CA|8DB91D  |;
                       STZ.W $1DE9                          ;9BC4CD|9CE91D  |;
 
          CODE_9BC4D0:
                       CMP.L $7E35D6                        ;9BC4D0|CFD6357E|;
                       BNE CODE_9BC4DB                      ;9BC4D4|D005    |;
                       db $EE,$E9,$1D,$80,$0E               ;9BC4D6|        |;
 
          CODE_9BC4DB:
                       LDA.W $1DB9                          ;9BC4DB|ADB91D  |;
                       CMP.W $1DC1                          ;9BC4DE|CDC11D  |;
                       BEQ CODE_9BC4F2                      ;9BC4E1|F00F    |;
                       JSR.W CODE_9BC543                    ;9BC4E3|2043C5  |;
                       INC.W $0D11                          ;9BC4E6|EE110D  |;
                       LDA.W $1DB9                          ;9BC4E9|ADB91D  |;
                       INC A                                ;9BC4EC|1A      |;
                       STA.W $1DB9                          ;9BC4ED|8DB91D  |;
                       BRA CODE_9BC4D0                      ;9BC4F0|80DE    |;
 
          CODE_9BC4F2:
                       RTL                                  ;9BC4F2|6B      |;
 
          CODE_9BC4F3:
                       LDA.W #$0004                         ;9BC4F3|A90400  |;
                       STA.W $0D0F                          ;9BC4F6|8D0F0D  |;
                       LDA.W $1DBD                          ;9BC4F9|ADBD1D  |;
                       ASL A                                ;9BC4FC|0A      |;
                       ADC.W $1DBD                          ;9BC4FD|6DBD1D  |;
                       STA.W $0D11                          ;9BC500|8D110D  |;
                       LDA.W #$2000                         ;9BC503|A90020  |;
                       STA.W $0D0D                          ;9BC506|8D0D0D  |;
                       LDA.W #$009C                         ;9BC509|A99C00  |;
                       STA.B $8F                            ;9BC50C|858F    |;
                       LDA.W #$9369                         ;9BC50E|A96993  |;
                       STA.B $8D                            ;9BC511|858D    |;
                       JSL.L CODE_9EC894                    ;9BC513|2294C89E|;
                       LDA.W #$0004                         ;9BC517|A90400  |;
                       STA.W $0D0F                          ;9BC51A|8D0F0D  |;
                       LDA.W $1DBD                          ;9BC51D|ADBD1D  |;
                       CLC                                  ;9BC520|18      |;
                       ADC.W $1DC5                          ;9BC521|6DC51D  |;
                       DEC A                                ;9BC524|3A      |;
                       STA.B $14                            ;9BC525|8514    |;
                       ASL A                                ;9BC527|0A      |;
                       ADC.B $14                            ;9BC528|6514    |;
                       INC A                                ;9BC52A|1A      |;
                       STA.W $0D11                          ;9BC52B|8D110D  |;
                       LDA.W #$2000                         ;9BC52E|A90020  |;
                       STA.W $0D0D                          ;9BC531|8D0D0D  |;
                       LDA.W #$009C                         ;9BC534|A99C00  |;
                       STA.B $8F                            ;9BC537|858F    |;
                       LDA.W #$9369                         ;9BC539|A96993  |;
                       STA.B $8D                            ;9BC53C|858D    |;
                       JSL.L CODE_9EC894                    ;9BC53E|2294C89E|;
                       RTS                                  ;9BC542|60      |;
 
          CODE_9BC543:
                       LDA.W $1DB9                          ;9BC543|ADB91D  |;
                       ASL A                                ;9BC546|0A      |;
                       TAX                                  ;9BC547|AA      |;
                       LDA.L $7E3578,X                      ;9BC548|BF78357E|;
                       STA.B $A5                            ;9BC54C|85A5    |;
                       LDA.L $7E3528,X                      ;9BC54E|BF28357E|;
                       JSR.W CODE_9BC601                    ;9BC552|2001C6  |;
                       INC.W $0D11                          ;9BC555|EE110D  |;
                       LDA.L $7E3588,X                      ;9BC558|BF88357E|;
                       STA.B $A5                            ;9BC55C|85A5    |;
                       LDA.L $7E3538,X                      ;9BC55E|BF38357E|;
                       JSR.W CODE_9BC601                    ;9BC562|2001C6  |;
                       LDA.W #$0017                         ;9BC565|A91700  |;
                       STA.W $0D0F                          ;9BC568|8D0F0D  |;
                       LDA.L $7E3568,X                      ;9BC56B|BF68357E|;
                       STA.B $A5                            ;9BC56F|85A5    |;
                       LDA.L $7E3578,X                      ;9BC571|BF78357E|;
                       CMP.L $7E3588,X                      ;9BC575|DF88357E|;
                       BEQ CODE_9BC584                      ;9BC579|F009    |;
                       LDA.B $A5                            ;9BC57B|A5A5    |;
                       CMP.W #$0004                         ;9BC57D|C90400  |;
                       BNE CODE_9BC584                      ;9BC580|D002    |;
                       db $E6,$A5                           ;9BC582|        |;
 
          CODE_9BC584:
                       LDA.W #$0080                         ;9BC584|A98000  |;
                       STA.B $8B                            ;9BC587|858B    |;
                       LDA.W #$D6E1                         ;9BC589|A9E1D6  |;
                       STA.B $89                            ;9BC58C|8589    |;
 
          CODE_9BC58E:
                       LDA.B $8B                            ;9BC58E|A58B    |;
                       STA.B $8F                            ;9BC590|858F    |;
                       LDA.B $89                            ;9BC592|A589    |;
                       STA.B $8D                            ;9BC594|858D    |;
                       LDA.B [$89]                          ;9BC596|A789    |;
                       CLC                                  ;9BC598|18      |;
                       ADC.B $89                            ;9BC599|6589    |;
                       STA.B $89                            ;9BC59B|8589    |;
                       DEC.B $A5                            ;9BC59D|C6A5    |;
                       BMI CODE_9BC5A3                      ;9BC59F|3002    |;
                       BNE CODE_9BC58E                      ;9BC5A1|D0EB    |;
 
          CODE_9BC5A3:
                       JSL.L CODE_9EC894                    ;9BC5A3|2294C89E|;
                       INC.W $0D11                          ;9BC5A7|EE110D  |;
                       RTS                                  ;9BC5AA|60      |;
 
          CODE_9BC5AB:
                       CMP.W #$000D                         ;9BC5AB|C90D00  |;
                       BEQ CODE_9BC5D0                      ;9BC5AE|F020    |;
                       CMP.W #$000E                         ;9BC5B0|C90E00  |;
                       BEQ CODE_9BC5DC                      ;9BC5B3|F027    |;
                       ASL A                                ;9BC5B5|0A      |;
                       ASL A                                ;9BC5B6|0A      |;
                       TAY                                  ;9BC5B7|A8      |;
                       LDA.W #$009C                         ;9BC5B8|A99C00  |;
                       STA.B $8F                            ;9BC5BB|858F    |;
                       LDA.W #$A5E7                         ;9BC5BD|A9E7A5  |;
                       STA.B $8D                            ;9BC5C0|858D    |;
                       LDA.B [$8D],Y                        ;9BC5C2|B78D    |;
                       STA.B $8D                            ;9BC5C4|858D    |;
                       LDY.W #$0004                         ;9BC5C6|A00400  |;
                       CLC                                  ;9BC5C9|18      |;
                       ADC.B [$8D],Y                        ;9BC5CA|778D    |;
                       STA.B $8D                            ;9BC5CC|858D    |;
                       BRA CODE_9BC5E6                      ;9BC5CE|8016    |;
 
          CODE_9BC5D0:
                       LDA.W #$009B                         ;9BC5D0|A99B00  |;
                       STA.B $8F                            ;9BC5D3|858F    |;
                       LDA.W #$C5E7                         ;9BC5D5|A9E7C5  |;
                       STA.B $8D                            ;9BC5D8|858D    |;
                       BRA CODE_9BC5E6                      ;9BC5DA|800A    |;
 
          CODE_9BC5DC:
                       LDA.W #$009B                         ;9BC5DC|A99B00  |;
                       STA.B $8F                            ;9BC5DF|858F    |;
                       LDA.W #$C5F5                         ;9BC5E1|A9F5C5  |;
                       STA.B $8D                            ;9BC5E4|858D    |;
 
          CODE_9BC5E6:
                       RTL                                  ;9BC5E6|6B      |;
                       db $0E,$00,$4E,$59,$20,$49,$73,$6C   ;9BC5E7|        |;
                       db $61,$6E,$64,$65,$72,$73,$0C,$00   ;9BC5EF|        |;
                       db $4E,$59,$20,$52,$61,$6E,$67,$65   ;9BC5F7|        |;
                       db $72,$73                           ;9BC5FF|        |;
 
          CODE_9BC601:
                       JSL.L CODE_9BC5AB                    ;9BC601|22ABC59B|;
                       LDA.W #$0007                         ;9BC605|A90700  |;
                       STA.W $0D0F                          ;9BC608|8D0F0D  |;
                       JSL.L CODE_9EC894                    ;9BC60B|2294C89E|;
                       LDA.W #$0014                         ;9BC60F|A91400  |;
                       STA.W $0D0F                          ;9BC612|8D0F0D  |;
                       LDA.W #$0002                         ;9BC615|A90200  |;
                       STA.B $A9                            ;9BC618|85A9    |;
                       JSL.L CODE_9FC623                    ;9BC61A|2223C69F|;
                       JSL.L CODE_9EC894                    ;9BC61E|2294C89E|;
                       RTS                                  ;9BC622|60      |;
                       db $22,$8F,$CD,$9B,$64,$C1,$AF,$D0   ;9BC623|        |;
                       db $34,$7E,$85,$A5,$A9,$20,$00,$85   ;9BC62B|        |;
                       db $A9,$22,$BE,$C6,$9B,$AD,$CF,$0A   ;9BC633|        |;
                       db $85,$A5,$A9,$08,$00,$85,$A9,$22   ;9BC63B|        |;
                       db $BE,$C6,$9B,$AF,$D4,$35,$7E,$85   ;9BC643|        |;
                       db $A5,$A9,$04,$00,$85,$A9,$22,$BE   ;9BC64B|        |;
                       db $C6,$9B,$AF,$F2,$34,$7E,$85,$A5   ;9BC653|        |;
                       db $A9,$10,$00,$85,$A9,$22,$BE,$C6   ;9BC65B|        |;
                       db $9B,$AF,$CE,$34,$7E,$85,$A5,$A9   ;9BC663|        |;
                       db $04,$00,$85,$A9,$22,$BE,$C6,$9B   ;9BC66B|        |;
                       db $AD,$D5,$0A,$85,$A5,$A9,$00,$40   ;9BC673|        |;
                       db $85,$A9,$22,$BE,$C6,$9B,$A9,$05   ;9BC67B|        |;
                       db $00,$85,$A9,$A9,$07,$00,$85,$AD   ;9BC683|        |;
                       db $64,$8D,$A6,$8D,$BF,$48,$35,$7E   ;9BC68B|        |;
                       db $85,$A5,$22,$BE,$C6,$9B,$A6,$8D   ;9BC693|        |;
                       db $BF,$58,$35,$7E,$85,$A5,$22,$BE   ;9BC69B|        |;
                       db $C6,$9B,$E6,$8D,$E6,$8D,$C6,$AD   ;9BC6A3|        |;
                       db $10,$E0,$A5,$C1,$29,$FF,$01,$85   ;9BC6AB|        |;
                       db $A5,$A9,$00,$02,$85,$A9,$22,$B3   ;9BC6B3|        |;
                       db $CD,$9B,$6B,$A5,$C1,$18,$65,$A5   ;9BC6BB|        |;
                       db $85,$C1,$5C,$B3,$CD,$9B           ;9BC6C3|        |;
 
          CODE_9BC6C9:
                       LDA.L $7E34F4                        ;9BC6C9|AFF4347E|;
                       BIT.W #$0080                         ;9BC6CD|898000  |;
                       BEQ CODE_9BC6D5                      ;9BC6D0|F003    |;
                       JMP.W CODE_9BC75D                    ;9BC6D2|4C5DC7  |;
 
          CODE_9BC6D5:
                       LDA.B $A5                            ;9BC6D5|A5A5    |;
                       PHA                                  ;9BC6D7|48      |;
                       LDA.B $A7                            ;9BC6D8|A5A7    |;
                       PHA                                  ;9BC6DA|48      |;
                       LDA.B $A9                            ;9BC6DB|A5A9    |;
                       PHA                                  ;9BC6DD|48      |;
                       LDA.B $AB                            ;9BC6DE|A5AB    |;
                       PHA                                  ;9BC6E0|48      |;
                       LDA.B $89                            ;9BC6E1|A589    |;
                       PHA                                  ;9BC6E3|48      |;
                       LDA.B $8B                            ;9BC6E4|A58B    |;
                       PHA                                  ;9BC6E6|48      |;
                       LDA.B $8D                            ;9BC6E7|A58D    |;
                       PHA                                  ;9BC6E9|48      |;
                       LDA.B $8F                            ;9BC6EA|A58F    |;
                       PHA                                  ;9BC6EC|48      |;
                       LDA.B $91                            ;9BC6ED|A591    |;
                       PHA                                  ;9BC6EF|48      |;
                       LDA.B $93                            ;9BC6F0|A593    |;
                       PHA                                  ;9BC6F2|48      |;
                       LDA.W #$009B                         ;9BC6F3|A99B00  |;
                       STA.B $93                            ;9BC6F6|8593    |;
                       LDA.W #$CD4A                         ;9BC6F8|A94ACD  |;
                       STA.B $91                            ;9BC6FB|8591    |;
                       LDA.W #$0000                         ;9BC6FD|A90000  |;
                       STA.B $8F                            ;9BC700|858F    |;
                       LDA.W #$0A2A                         ;9BC702|A92A0A  |;
                       STA.B $8D                            ;9BC705|858D    |;
                       LDA.W #$007E                         ;9BC707|A97E00  |;
                       STA.B $8B                            ;9BC70A|858B    |;
                       LDA.W #$34F4                         ;9BC70C|A9F434  |;
                       STA.B $89                            ;9BC70F|8589    |;
                       LDA.W #$0012                         ;9BC711|A91200  |;
                       STA.B [$8D]                          ;9BC714|878D    |;
                       INC.B $8D                            ;9BC716|E68D    |;
                       INC.B $8D                            ;9BC718|E68D    |;
                       LDA.W #$000F                         ;9BC71A|A90F00  |;
                       STA.B $A9                            ;9BC71D|85A9    |;
 
          CODE_9BC71F:
                       LDA.B [$89]                          ;9BC71F|A789    |;
                       INC.B $89                            ;9BC721|E689    |;
                       AND.W #$00FF                         ;9BC723|29FF00  |;
                       TAY                                  ;9BC726|A8      |;
                       LDA.B [$91],Y                        ;9BC727|B791    |;
                       STA.B [$8D]                          ;9BC729|878D    |;
                       INC.B $8D                            ;9BC72B|E68D    |;
                       DEC.B $A9                            ;9BC72D|C6A9    |;
                       BPL CODE_9BC71F                      ;9BC72F|10EE    |;
                       LDA.W #$0000                         ;9BC731|A90000  |;
                       STA.B $8F                            ;9BC734|858F    |;
                       LDA.W #$0A2A                         ;9BC736|A92A0A  |;
                       STA.B $8D                            ;9BC739|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BC73B|22BEC79E|;
                       PLA                                  ;9BC73F|68      |;
                       STA.B $93                            ;9BC740|8593    |;
                       PLA                                  ;9BC742|68      |;
                       STA.B $91                            ;9BC743|8591    |;
                       PLA                                  ;9BC745|68      |;
                       STA.B $8F                            ;9BC746|858F    |;
                       PLA                                  ;9BC748|68      |;
                       STA.B $8D                            ;9BC749|858D    |;
                       PLA                                  ;9BC74B|68      |;
                       STA.B $8B                            ;9BC74C|858B    |;
                       PLA                                  ;9BC74E|68      |;
                       STA.B $89                            ;9BC74F|8589    |;
                       PLA                                  ;9BC751|68      |;
                       STA.B $AB                            ;9BC752|85AB    |;
                       PLA                                  ;9BC754|68      |;
                       STA.B $A9                            ;9BC755|85A9    |;
                       PLA                                  ;9BC757|68      |;
                       STA.B $A7                            ;9BC758|85A7    |;
                       PLA                                  ;9BC75A|68      |;
                       STA.B $A5                            ;9BC75B|85A5    |;
 
          CODE_9BC75D:
                       RTL                                  ;9BC75D|6B      |;
                       db $AF,$BC,$34,$7E,$D0,$03,$4C,$FA   ;9BC75E|        |;
                       db $C7,$A9,$01,$00,$8F,$BC,$34,$7E   ;9BC766|        |;
                       db $22,$AE,$94,$9F,$22,$83,$97,$9D   ;9BC76E|        |;
                       db $AF,$D4,$35,$7E,$C9,$04,$00,$F0   ;9BC776|        |;
                       db $56,$AF,$D6,$35,$7E,$10,$29,$AF   ;9BC77E|        |;
                       db $CE,$34,$7E,$38,$E9,$02,$00,$30   ;9BC786|        |;
                       db $4A,$AF,$D4,$35,$7E,$C9,$01,$00   ;9BC78E|        |;
                       db $D0,$41,$AF,$F2,$34,$7E,$49,$01   ;9BC796|        |;
                       db $00,$8F,$F2,$34,$7E,$AF,$CE,$34   ;9BC79E|        |;
                       db $7E,$49,$01,$00,$8F,$CE,$34,$7E   ;9BC7A6|        |;
                       db $22,$23,$C6,$9B,$22,$30,$CD,$9B   ;9BC7AE|        |;
                       db $AD,$DC,$15,$89,$04,$00,$F0,$13   ;9BC7B6|        |;
                       db $A2,$0E,$00,$BF,$18,$35,$7E,$9F   ;9BC7BE|        |;
                       db $08,$35,$7E,$CA,$CA,$10,$F4,$22   ;9BC7C6|        |;
                       db $41,$CC,$9B,$5C,$83,$97,$9D,$22   ;9BC7CE|        |;
                       db $E2,$CD,$9B,$A9,$80,$00,$0F,$F4   ;9BC7D6|        |;
                       db $34,$7E,$8F,$F4,$34,$7E,$A9,$02   ;9BC7DE|        |;
                       db $00,$8F,$BC,$34,$7E,$AD,$CF,$0A   ;9BC7E6|        |;
                       db $C9,$07,$00,$F0,$07,$A9,$03,$00   ;9BC7EE|        |;
                       db $8F,$BC,$34,$7E,$6B               ;9BC7F6|        |;
 
          CODE_9BC7FB:
                       JSL.L CODE_9F96F7                    ;9BC7FB|22F7969F|;
                       JSL.L CODE_9F9708                    ;9BC7FF|2208979F|;
                       LDA.W #$FF7F                         ;9BC803|A97FFF  |;
                       AND.L $7E34F4                        ;9BC806|2FF4347E|;
                       STA.L $7E34F4                        ;9BC80A|8FF4347E|;
                       JSL.L CODE_9DD977                    ;9BC80E|2277D99D|;
                       STZ.W $0CD5                          ;9BC812|9CD50C  |;
                       LDA.W #$03FF                         ;9BC815|A9FF03  |;
                       STA.W $0CD7                          ;9BC818|8DD70C  |;
                       JSL.L CODE_9B8017                    ;9BC81B|2217809B|;
                       JSL.L CODE_9B8526                    ;9BC81F|2226859B|;
                       JSL.L CODE_80AF7B                    ;9BC823|227BAF80|;
                       LDX.W #$0053                         ;9BC827|A25300  |;
                       LDY.W #$0018                         ;9BC82A|A01800  |;
                       LDA.W #$009C                         ;9BC82D|A99C00  |;
                       STA.B $8F                            ;9BC830|858F    |;
                       LDA.W #$F203                         ;9BC832|A903F2  |;
                       STA.B $8D                            ;9BC835|858D    |;
                       JSL.L CODE_9C936C                    ;9BC837|226C939C|;
                       LDA.W #$001C                         ;9BC83B|A91C00  |;
                       STA.L $7E3454                        ;9BC83E|8F54347E|;
                       LDA.W #$001D                         ;9BC842|A91D00  |;
                       STA.L $7E3452                        ;9BC845|8F52347E|;
                       JSL.L CODE_9DDDB3                    ;9BC849|22B3DD9D|;
                       JSL.L CODE_80AFDE                    ;9BC84D|22DEAF80|;
                       JSL.L CODE_9DE0D4                    ;9BC851|22D4E09D|;
                       LDA.B $8F                            ;9BC855|A58F    |;
                       PHA                                  ;9BC857|48      |;
                       LDA.B $8D                            ;9BC858|A58D    |;
                       PHA                                  ;9BC85A|48      |;
                       LDA.W #$009C                         ;9BC85B|A99C00  |;
                       STA.B $8F                            ;9BC85E|858F    |;
                       LDA.W #$F20D                         ;9BC860|A90DF2  |;
                       STA.B $8D                            ;9BC863|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BC865|22BEC79E|;
                       PLA                                  ;9BC869|68      |;
                       STA.B $8D                            ;9BC86A|858D    |;
                       PLA                                  ;9BC86C|68      |;
                       STA.B $8F                            ;9BC86D|858F    |;
                       LDA.W #$0011                         ;9BC86F|A91100  |;
                       STA.B $A5                            ;9BC872|85A5    |;
                       LDA.W #$0005                         ;9BC874|A90500  |;
                       STA.B $A9                            ;9BC877|85A9    |;
                       JSL.L CODE_9D80DD                    ;9BC879|22DD809D|;
                       LDA.B $8F                            ;9BC87D|A58F    |;
                       PHA                                  ;9BC87F|48      |;
                       LDA.B $8D                            ;9BC880|A58D    |;
                       PHA                                  ;9BC882|48      |;
                       LDA.W #$009C                         ;9BC883|A99C00  |;
                       STA.B $8F                            ;9BC886|858F    |;
                       LDA.W #$F212                         ;9BC888|A912F2  |;
                       STA.B $8D                            ;9BC88B|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BC88D|22BEC79E|;
                       PLA                                  ;9BC891|68      |;
                       STA.B $8D                            ;9BC892|858D    |;
                       PLA                                  ;9BC894|68      |;
                       STA.B $8F                            ;9BC895|858F    |;
                       DEC.W $0D0F                          ;9BC897|CE0F0D  |;
                       DEC.W $0D0F                          ;9BC89A|CE0F0D  |;
                       LDA.W #$009B                         ;9BC89D|A99B00  |;
                       STA.B $8B                            ;9BC8A0|858B    |;
                       LDA.W #$CD4A                         ;9BC8A2|A94ACD  |;
                       STA.B $89                            ;9BC8A5|8589    |;
                       LDA.W #$0004                         ;9BC8A7|A90400  |;
                       STA.B $A5                            ;9BC8AA|85A5    |;
 
          CODE_9BC8AC:
                       LDA.W #$0005                         ;9BC8AC|A90500  |;
                       STA.B $A9                            ;9BC8AF|85A9    |;
                       LDA.W #$0000                         ;9BC8B1|A90000  |;
                       STA.B $8F                            ;9BC8B4|858F    |;
                       LDA.W #$0A2A                         ;9BC8B6|A92A0A  |;
                       STA.B $8D                            ;9BC8B9|858D    |;
                       LDA.W #$000D                         ;9BC8BB|A90D00  |;
                       STA.B [$8D]                          ;9BC8BE|878D    |;
                       INC.B $8D                            ;9BC8C0|E68D    |;
                       INC.B $8D                            ;9BC8C2|E68D    |;
 
          CODE_9BC8C4:
                       LDA.B [$89]                          ;9BC8C4|A789    |;
                       STA.B [$8D]                          ;9BC8C6|878D    |;
                       INC.B $89                            ;9BC8C8|E689    |;
                       INC.B $8D                            ;9BC8CA|E68D    |;
                       LDA.W #$0020                         ;9BC8CC|A92000  |;
                       STA.B [$8D]                          ;9BC8CF|878D    |;
                       INC.B $8D                            ;9BC8D1|E68D    |;
                       DEC.B $A9                            ;9BC8D3|C6A9    |;
                       BPL CODE_9BC8C4                      ;9BC8D5|10ED    |;
                       LDA.W #$0000                         ;9BC8D7|A90000  |;
                       STA.B $8F                            ;9BC8DA|858F    |;
                       LDA.W #$0A2A                         ;9BC8DC|A92A0A  |;
                       STA.B $8D                            ;9BC8DF|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BC8E1|22BEC79E|;
                       INC.W $0D11                          ;9BC8E5|EE110D  |;
                       INC.W $0D11                          ;9BC8E8|EE110D  |;
                       LDA.W $0D0F                          ;9BC8EB|AD0F0D  |;
                       SEC                                  ;9BC8EE|38      |;
                       SBC.W #$000B                         ;9BC8EF|E90B00  |;
                       STA.W $0D0F                          ;9BC8F2|8D0F0D  |;
                       DEC.B $A5                            ;9BC8F5|C6A5    |;
                       BPL CODE_9BC8AC                      ;9BC8F7|10B3    |;
                       STZ.B $B5                            ;9BC8F9|64B5    |;
                       JSL.L CODE_9BCA7A                    ;9BC8FB|227ACA9B|;
                       STZ.B $B9                            ;9BC8FF|64B9    |;
                       LDA.L $7E34F4                        ;9BC901|AFF4347E|;
                       AND.W #$00FF                         ;9BC905|29FF00  |;
                       CMP.W #$001E                         ;9BC908|C91E00  |;
                       BCS CODE_9BC90F                      ;9BC90B|B002    |;
                       STA.B $B9                            ;9BC90D|85B9    |;
 
          CODE_9BC90F:
                       JSL.L CODE_9BCAB8                    ;9BC90F|22B8CA9B|;
                       JSL.L CODE_9D80DD                    ;9BC913|22DD809D|;
                       LDA.W #$0003                         ;9BC917|A90300  |;
                       STA.W $0A4A                          ;9BC91A|8D4A0A  |;
                       PHX                                  ;9BC91D|DA      |;
                       LDY.B $B9                            ;9BC91E|A4B9    |;
                       TYX                                  ;9BC920|BB      |;
                       LDA.L UNREACH_9BCD4A,X               ;9BC921|BF4ACD9B|;
                       PLX                                  ;9BC925|FA      |;
                       STA.W $0A4C                          ;9BC926|8D4C0A  |;
                       LDA.W #$0000                         ;9BC929|A90000  |;
                       STA.B $8F                            ;9BC92C|858F    |;
                       LDA.W #$0A4A                         ;9BC92E|A94A0A  |;
                       STA.B $8D                            ;9BC931|858D    |;
                       INC.W $0D0F                          ;9BC933|EE0F0D  |;
                       DEC.W $0D11                          ;9BC936|CE110D  |;
                       DEC.W $0D11                          ;9BC939|CE110D  |;
                       JSL.L CODE_9EC7BE                    ;9BC93C|22BEC79E|;
                       LDA.W #$000A                         ;9BC940|A90A00  |;
                       STA.W $0AD1                          ;9BC943|8DD10A  |;
 
          CODE_9BC946:
                       JSR.W CODE_9BCBD8                    ;9BC946|20D8CB  |;
 
          CODE_9BC949:
                       LDA.B $8F                            ;9BC949|A58F    |;
                       PHA                                  ;9BC94B|48      |;
                       LDA.B $8D                            ;9BC94C|A58D    |;
                       PHA                                  ;9BC94E|48      |;
                       LDA.W #$009C                         ;9BC94F|A99C00  |;
                       STA.B $8F                            ;9BC952|858F    |;
                       LDA.W #$F222                         ;9BC954|A922F2  |;
                       STA.B $8D                            ;9BC957|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BC959|22BEC79E|;
                       PLA                                  ;9BC95D|68      |;
                       STA.B $8D                            ;9BC95E|858D    |;
                       PLA                                  ;9BC960|68      |;
                       STA.B $8F                            ;9BC961|858F    |;
                       JSL.L CODE_9BC6C9                    ;9BC963|22C9C69B|;
                       JSL.L CODE_9FBF75                    ;9BC967|2275BF9F|;
 
          CODE_9BC96B:
                       JSL.L CODE_808583                    ;9BC96B|22838580|;
                       JSL.L CODE_9B8017                    ;9BC96F|2217809B|;
                       JSL.L CODE_9B84F5                    ;9BC973|22F5849B|;
                       JSL.L CODE_9B852C                    ;9BC977|222C859B|;
                       LDA.B $A9                            ;9BC97B|A5A9    |;
                       BEQ CODE_9BC96B                      ;9BC97D|F0EC    |;
                       STA.B $A9                            ;9BC97F|85A9    |;
                       BIT.W #$1000                         ;9BC981|890010  |;
                       BEQ CODE_9BC989                      ;9BC984|F003    |;
                       JMP.W CODE_9BCAF8                    ;9BC986|4CF8CA  |;
 
          CODE_9BC989:
                       STZ.B $A5                            ;9BC989|64A5    |;
                       DEC.B $A5                            ;9BC98B|C6A5    |;
                       BIT.W #$4000                         ;9BC98D|890040  |;
                       BNE CODE_9BC9C0                      ;9BC990|D02E    |;
                       STZ.B $A5                            ;9BC992|64A5    |;
                       INC.B $A5                            ;9BC994|E6A5    |;
                       BIT.W #$8080                         ;9BC996|898080  |;
                       BNE CODE_9BC9C0                      ;9BC999|D025    |;
                       BIT.W #$0100                         ;9BC99B|890001  |;
                       BNE CODE_9BC9F0                      ;9BC99E|D050    |;
                       STZ.B $A5                            ;9BC9A0|64A5    |;
                       DEC.B $A5                            ;9BC9A2|C6A5    |;
                       BIT.W #$0200                         ;9BC9A4|890002  |;
                       BNE CODE_9BC9F0                      ;9BC9A7|D047    |;
                       LDY.W #$0006                         ;9BC9A9|A00600  |;
                       STY.B $A5                            ;9BC9AC|84A5    |;
                       BIT.W #$0400                         ;9BC9AE|890004  |;
                       BNE CODE_9BC9F0                      ;9BC9B1|D03D    |;
                       LDY.W #$FFFA                         ;9BC9B3|A0FAFF  |;
                       STY.B $A5                            ;9BC9B6|84A5    |;
                       BIT.W #$0800                         ;9BC9B8|890008  |;
                       BNE CODE_9BC9F0                      ;9BC9BB|D033    |;
                       db $4C,$49,$C9                       ;9BC9BD|        |;
 
          CODE_9BC9C0:
                       LDA.B $B5                            ;9BC9C0|A5B5    |;
                       CLC                                  ;9BC9C2|18      |;
                       ADC.B $A5                            ;9BC9C3|65A5    |;
                       CMP.W #$0010                         ;9BC9C5|C91000  |;
                       BCC CODE_9BC9CD                      ;9BC9C8|9003    |;
                       db $4C,$49,$C9                       ;9BC9CA|        |;
 
          CODE_9BC9CD:
                       STA.B $B5                            ;9BC9CD|85B5    |;
                       JSL.L CODE_9BCA7A                    ;9BC9CF|227ACA9B|;
                       LDA.W #$007E                         ;9BC9D3|A97E00  |;
                       STA.B $8B                            ;9BC9D6|858B    |;
                       LDA.W #$34F4                         ;9BC9D8|A9F434  |;
                       STA.B $89                            ;9BC9DB|8589    |;
                       STZ.B $A5                            ;9BC9DD|64A5    |;
                       LDY.B $B5                            ;9BC9DF|A4B5    |;
                       LDA.B [$89],Y                        ;9BC9E1|B789    |;
                       AND.W #$00FF                         ;9BC9E3|29FF00  |;
                       CMP.W #$001E                         ;9BC9E6|C91E00  |;
                       BCS CODE_9BC9F0                      ;9BC9E9|B005    |;
                       db $38,$E5,$B9,$85,$A5               ;9BC9EB|        |;
 
          CODE_9BC9F0:
                       LDA.B $B9                            ;9BC9F0|A5B9    |;
                       CLC                                  ;9BC9F2|18      |;
                       ADC.B $A5                            ;9BC9F3|65A5    |;
                       CMP.W #$001E                         ;9BC9F5|C91E00  |;
                       BCC CODE_9BC9FD                      ;9BC9F8|9003    |;
                       db $4C,$49,$C9                       ;9BC9FA|        |;
 
          CODE_9BC9FD:
                       PHA                                  ;9BC9FD|48      |;
                       JSL.L CODE_9BCAB8                    ;9BC9FE|22B8CA9B|;
                       LDA.L $7E35D0                        ;9BCA02|AFD0357E|;
                       STA.B $AD                            ;9BCA06|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9BCA08|229CBD9F|;
                       LDA.W #$0003                         ;9BCA0C|A90300  |;
                       STA.W $0A4A                          ;9BCA0F|8D4A0A  |;
                       PHX                                  ;9BCA12|DA      |;
                       LDY.B $B9                            ;9BCA13|A4B9    |;
                       TYX                                  ;9BCA15|BB      |;
                       LDA.L UNREACH_9BCD4A,X               ;9BCA16|BF4ACD9B|;
                       PLX                                  ;9BCA1A|FA      |;
                       STA.W $0A4C                          ;9BCA1B|8D4C0A  |;
                       LDA.W #$0000                         ;9BCA1E|A90000  |;
                       STA.B $8F                            ;9BCA21|858F    |;
                       LDA.W #$0A4A                         ;9BCA23|A94A0A  |;
                       STA.B $8D                            ;9BCA26|858D    |;
                       INC.W $0D0F                          ;9BCA28|EE0F0D  |;
                       DEC.W $0D11                          ;9BCA2B|CE110D  |;
                       DEC.W $0D11                          ;9BCA2E|CE110D  |;
                       JSL.L CODE_9EC7BE                    ;9BCA31|22BEC79E|;
                       PLA                                  ;9BCA35|68      |;
                       STA.B $B9                            ;9BCA36|85B9    |;
                       JSL.L CODE_9BCAB8                    ;9BCA38|22B8CA9B|;
                       JSL.L CODE_9D80DD                    ;9BCA3C|22DD809D|;
                       PHX                                  ;9BCA40|DA      |;
                       LDY.B $B9                            ;9BCA41|A4B9    |;
                       TYX                                  ;9BCA43|BB      |;
                       LDA.L UNREACH_9BCD4A,X               ;9BCA44|BF4ACD9B|;
                       PLX                                  ;9BCA48|FA      |;
                       STA.W $0A4C                          ;9BCA49|8D4C0A  |;
                       LDA.W #$0000                         ;9BCA4C|A90000  |;
                       STA.B $8F                            ;9BCA4F|858F    |;
                       LDA.W #$0A4A                         ;9BCA51|A94A0A  |;
                       STA.B $8D                            ;9BCA54|858D    |;
                       INC.W $0D0F                          ;9BCA56|EE0F0D  |;
                       DEC.W $0D11                          ;9BCA59|CE110D  |;
                       DEC.W $0D11                          ;9BCA5C|CE110D  |;
                       JSL.L CODE_9EC7BE                    ;9BCA5F|22BEC79E|;
                       LDA.W #$007E                         ;9BCA63|A97E00  |;
                       STA.B $8B                            ;9BCA66|858B    |;
                       LDA.W #$34F4                         ;9BCA68|A9F434  |;
                       STA.B $89                            ;9BCA6B|8589    |;
                       LDY.B $B5                            ;9BCA6D|A4B5    |;
                       SEP #$20                             ;9BCA6F|E220    |;
                       LDA.B $B9                            ;9BCA71|A5B9    |;
                       STA.B [$89],Y                        ;9BCA73|9789    |;
                       REP #$30                             ;9BCA75|C230    |;
                       JMP.W CODE_9BC949                    ;9BCA77|4C49C9  |;
 
          CODE_9BCA7A:
                       LDA.B $8F                            ;9BCA7A|A58F    |;
                       PHA                                  ;9BCA7C|48      |;
                       LDA.B $8D                            ;9BCA7D|A58D    |;
                       PHA                                  ;9BCA7F|48      |;
                       LDA.W #$009C                         ;9BCA80|A99C00  |;
                       STA.B $8F                            ;9BCA83|858F    |;
                       LDA.W #$F227                         ;9BCA85|A927F2  |;
                       STA.B $8D                            ;9BCA88|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BCA8A|22BEC79E|;
                       PLA                                  ;9BCA8E|68      |;
                       STA.B $8D                            ;9BCA8F|858D    |;
                       PLA                                  ;9BCA91|68      |;
                       STA.B $8F                            ;9BCA92|858F    |;
                       LDA.W $0D0F                          ;9BCA94|AD0F0D  |;
                       CLC                                  ;9BCA97|18      |;
                       ADC.B $B5                            ;9BCA98|65B5    |;
                       STA.W $0D0F                          ;9BCA9A|8D0F0D  |;
                       LDA.B $8F                            ;9BCA9D|A58F    |;
                       PHA                                  ;9BCA9F|48      |;
                       LDA.B $8D                            ;9BCAA0|A58D    |;
                       PHA                                  ;9BCAA2|48      |;
                       LDA.W #$009C                         ;9BCAA3|A99C00  |;
                       STA.B $8F                            ;9BCAA6|858F    |;
                       LDA.W #$F22C                         ;9BCAA8|A92CF2  |;
                       STA.B $8D                            ;9BCAAB|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BCAAD|22BEC79E|;
                       PLA                                  ;9BCAB1|68      |;
                       STA.B $8D                            ;9BCAB2|858D    |;
                       PLA                                  ;9BCAB4|68      |;
                       STA.B $8F                            ;9BCAB5|858F    |;
                       RTL                                  ;9BCAB7|6B      |;
 
          CODE_9BCAB8:
                       LDA.B $8F                            ;9BCAB8|A58F    |;
                       PHA                                  ;9BCABA|48      |;
                       LDA.B $8D                            ;9BCABB|A58D    |;
                       PHA                                  ;9BCABD|48      |;
                       LDA.W #$009C                         ;9BCABE|A99C00  |;
                       STA.B $8F                            ;9BCAC1|858F    |;
                       LDA.W #$F231                         ;9BCAC3|A931F2  |;
                       STA.B $8D                            ;9BCAC6|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BCAC8|22BEC79E|;
                       PLA                                  ;9BCACC|68      |;
                       STA.B $8D                            ;9BCACD|858D    |;
                       PLA                                  ;9BCACF|68      |;
                       STA.B $8F                            ;9BCAD0|858F    |;
                       PHX                                  ;9BCAD2|DA      |;
                       LDX.B $B9                            ;9BCAD3|A6B9    |;
                       LDA.W #$0006                         ;9BCAD5|A90600  |;
                       JSL.L CODE_809316                    ;9BCAD8|22169380|;
                       PLX                                  ;9BCADC|FA      |;
                       ASL A                                ;9BCADD|0A      |;
                       ADC.W $0D11                          ;9BCADE|6D110D  |;
                       STA.W $0D11                          ;9BCAE1|8D110D  |;
                       LDA.W $4216                          ;9BCAE4|AD1642  |;
                       ASL A                                ;9BCAE7|0A      |;
                       ADC.W $0D0F                          ;9BCAE8|6D0F0D  |;
                       DEC A                                ;9BCAEB|3A      |;
                       DEC A                                ;9BCAEC|3A      |;
                       STA.W $0D0F                          ;9BCAED|8D0F0D  |;
                       LDA.W #$0003                         ;9BCAF0|A90300  |;
                       STA.B $A5                            ;9BCAF3|85A5    |;
                       STA.B $A9                            ;9BCAF5|85A9    |;
 
          CODE_9BCAF7:
                       RTL                                  ;9BCAF7|6B      |;
 
          CODE_9BCAF8:
                       JSL.L CODE_9BCD28                    ;9BCAF8|2228CD9B|;
                       LDA.L $7E34D0                        ;9BCAFC|AFD0347E|;
                       BPL CODE_9BCAF7                      ;9BCB00|10F5    |;
 
          CODE_9BCB02:
                       LDA.W $0776                          ;9BCB02|AD7607  |;
                       BIT.W #$4000                         ;9BCB05|890040  |;
                       BNE CODE_9BCB02                      ;9BCB08|D0F8    |;
                       BIT.W #$8080                         ;9BCB0A|898080  |;
                       BNE CODE_9BCB02                      ;9BCB0D|D0F3    |;
                       LDA.B $8F                            ;9BCB0F|A58F    |;
                       PHA                                  ;9BCB11|48      |;
                       LDA.B $8D                            ;9BCB12|A58D    |;
                       PHA                                  ;9BCB14|48      |;
                       LDA.W #$009C                         ;9BCB15|A99C00  |;
                       STA.B $8F                            ;9BCB18|858F    |;
                       LDA.W #$F236                         ;9BCB1A|A936F2  |;
                       STA.B $8D                            ;9BCB1D|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BCB1F|22BEC79E|;
                       PLA                                  ;9BCB23|68      |;
                       STA.B $8D                            ;9BCB24|858D    |;
                       PLA                                  ;9BCB26|68      |;
                       STA.B $8F                            ;9BCB27|858F    |;
                       LDA.B $8F                            ;9BCB29|A58F    |;
                       PHA                                  ;9BCB2B|48      |;
                       LDA.B $8D                            ;9BCB2C|A58D    |;
                       PHA                                  ;9BCB2E|48      |;
                       LDA.W #$009C                         ;9BCB2F|A99C00  |;
                       STA.B $8F                            ;9BCB32|858F    |;
                       LDA.W #$F24A                         ;9BCB34|A94AF2  |;
                       STA.B $8D                            ;9BCB37|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BCB39|22BEC79E|;
                       PLA                                  ;9BCB3D|68      |;
                       STA.B $8D                            ;9BCB3E|858D    |;
                       PLA                                  ;9BCB40|68      |;
                       STA.B $8F                            ;9BCB41|858F    |;
                       LDA.B $8F                            ;9BCB43|A58F    |;
                       PHA                                  ;9BCB45|48      |;
                       LDA.B $8D                            ;9BCB46|A58D    |;
                       PHA                                  ;9BCB48|48      |;
                       LDA.W #$009C                         ;9BCB49|A99C00  |;
                       STA.B $8F                            ;9BCB4C|858F    |;
                       LDA.W #$F25E                         ;9BCB4E|A95EF2  |;
                       STA.B $8D                            ;9BCB51|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BCB53|22BEC79E|;
                       PLA                                  ;9BCB57|68      |;
                       STA.B $8D                            ;9BCB58|858D    |;
                       PLA                                  ;9BCB5A|68      |;
                       STA.B $8F                            ;9BCB5B|858F    |;
                       LDA.B $8F                            ;9BCB5D|A58F    |;
                       PHA                                  ;9BCB5F|48      |;
                       LDA.B $8D                            ;9BCB60|A58D    |;
                       PHA                                  ;9BCB62|48      |;
                       LDA.W #$009C                         ;9BCB63|A99C00  |;
                       STA.B $8F                            ;9BCB66|858F    |;
                       LDA.W #$F272                         ;9BCB68|A972F2  |;
                       STA.B $8D                            ;9BCB6B|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BCB6D|22BEC79E|;
                       PLA                                  ;9BCB71|68      |;
                       STA.B $8D                            ;9BCB72|858D    |;
                       PLA                                  ;9BCB74|68      |;
                       STA.B $8F                            ;9BCB75|858F    |;
                       JSL.L CODE_9FBF75                    ;9BCB77|2275BF9F|;
 
          CODE_9BCB7B:
                       JSL.L CODE_9B8017                    ;9BCB7B|2217809B|;
                       JSL.L CODE_9B84F5                    ;9BCB7F|22F5849B|;
                       LDA.B $B1                            ;9BCB83|A5B1    |;
                       BEQ CODE_9BCB7B                      ;9BCB85|F0F4    |;
                       BIT.W #$4000                         ;9BCB87|890040  |;
                       BNE CODE_9BCBCD                      ;9BCB8A|D041    |;
                       BIT.W #$8080                         ;9BCB8C|898080  |;
                       BEQ CODE_9BCB7B                      ;9BCB8F|F0EA    |;
                       LDA.B $8F                            ;9BCB91|A58F    |;
                       PHA                                  ;9BCB93|48      |;
                       LDA.B $8D                            ;9BCB94|A58D    |;
                       PHA                                  ;9BCB96|48      |;
                       LDA.W #$009C                         ;9BCB97|A99C00  |;
                       STA.B $8F                            ;9BCB9A|858F    |;
                       LDA.W #$F282                         ;9BCB9C|A982F2  |;
                       STA.B $8D                            ;9BCB9F|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BCBA1|22BEC79E|;
                       PLA                                  ;9BCBA5|68      |;
                       STA.B $8D                            ;9BCBA6|858D    |;
                       PLA                                  ;9BCBA8|68      |;
                       STA.B $8F                            ;9BCBA9|858F    |;
                       LDA.W #$000F                         ;9BCBAB|A90F00  |;
                       STA.B $A5                            ;9BCBAE|85A5    |;
                       LDA.W #$0003                         ;9BCBB0|A90300  |;
                       STA.B $A9                            ;9BCBB3|85A9    |;
                       LDA.L $7E35D0                        ;9BCBB5|AFD0357E|;
                       STA.B $AD                            ;9BCBB9|85AD    |;
                       JSL.L CODE_9FBD9C                    ;9BCBBB|229CBD9F|;
                       JSR.W CODE_9BCBD8                    ;9BCBBF|20D8CB  |;
                       JSL.L CODE_9FBF75                    ;9BCBC2|2275BF9F|;
                       JSL.L CODE_8085FF                    ;9BCBC6|22FF8580|;
                       JMP.W CODE_9BC946                    ;9BCBCA|4C46C9  |;
 
          CODE_9BCBCD:
                       LDA.W #$0002                         ;9BCBCD|A90200  |;
                       STA.L $7E34BC                        ;9BCBD0|8FBC347E|;
                       JML.L CODE_9F82D2                    ;9BCBD4|5CD2829F|;
 
          CODE_9BCBD8:
                       LDA.B $8F                            ;9BCBD8|A58F    |;
                       PHA                                  ;9BCBDA|48      |;
                       LDA.B $8D                            ;9BCBDB|A58D    |;
                       PHA                                  ;9BCBDD|48      |;
                       LDA.W #$009C                         ;9BCBDE|A99C00  |;
                       STA.B $8F                            ;9BCBE1|858F    |;
                       LDA.W #$F287                         ;9BCBE3|A987F2  |;
                       STA.B $8D                            ;9BCBE6|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BCBE8|22BEC79E|;
                       PLA                                  ;9BCBEC|68      |;
                       STA.B $8D                            ;9BCBED|858D    |;
                       PLA                                  ;9BCBEF|68      |;
                       STA.B $8F                            ;9BCBF0|858F    |;
                       LDA.B $8F                            ;9BCBF2|A58F    |;
                       PHA                                  ;9BCBF4|48      |;
                       LDA.B $8D                            ;9BCBF5|A58D    |;
                       PHA                                  ;9BCBF7|48      |;
                       LDA.W #$009C                         ;9BCBF8|A99C00  |;
                       STA.B $8F                            ;9BCBFB|858F    |;
                       LDA.W #$F29B                         ;9BCBFD|A99BF2  |;
                       STA.B $8D                            ;9BCC00|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BCC02|22BEC79E|;
                       PLA                                  ;9BCC06|68      |;
                       STA.B $8D                            ;9BCC07|858D    |;
                       PLA                                  ;9BCC09|68      |;
                       STA.B $8F                            ;9BCC0A|858F    |;
                       LDA.B $8F                            ;9BCC0C|A58F    |;
                       PHA                                  ;9BCC0E|48      |;
                       LDA.B $8D                            ;9BCC0F|A58D    |;
                       PHA                                  ;9BCC11|48      |;
                       LDA.W #$009C                         ;9BCC12|A99C00  |;
                       STA.B $8F                            ;9BCC15|858F    |;
                       LDA.W #$F2AF                         ;9BCC17|A9AFF2  |;
                       STA.B $8D                            ;9BCC1A|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BCC1C|22BEC79E|;
                       PLA                                  ;9BCC20|68      |;
                       STA.B $8D                            ;9BCC21|858D    |;
                       PLA                                  ;9BCC23|68      |;
                       STA.B $8F                            ;9BCC24|858F    |;
                       LDA.B $8F                            ;9BCC26|A58F    |;
                       PHA                                  ;9BCC28|48      |;
                       LDA.B $8D                            ;9BCC29|A58D    |;
                       PHA                                  ;9BCC2B|48      |;
                       LDA.W #$009C                         ;9BCC2C|A99C00  |;
                       STA.B $8F                            ;9BCC2F|858F    |;
                       LDA.W #$F2C3                         ;9BCC31|A9C3F2  |;
                       STA.B $8D                            ;9BCC34|858D    |;
                       JSL.L CODE_9EC7BE                    ;9BCC36|22BEC79E|;
                       PLA                                  ;9BCC3A|68      |;
                       STA.B $8D                            ;9BCC3B|858D    |;
                       PLA                                  ;9BCC3D|68      |;
                       STA.B $8F                            ;9BCC3E|858F    |;
                       RTS                                  ;9BCC40|60      |;
 
          CODE_9BCC41:
                       LDA.W #$0200                         ;9BCC41|A90002  |;
                       STA.B $A5                            ;9BCC44|85A5    |;
                       JSL.L CODE_9CA41B                    ;9BCC46|221BA49C|;
                       LDA.B $A5                            ;9BCC4A|A5A5    |;
                       PHA                                  ;9BCC4C|48      |;
                       STZ.B $C1                            ;9BCC4D|64C1    |;
                       LDA.W #$0007                         ;9BCC4F|A90700  |;
                       STA.B $AD                            ;9BCC52|85AD    |;
                       LDA.W #$000E                         ;9BCC54|A90E00  |;
                       STA.B $8D                            ;9BCC57|858D    |;
 
          CODE_9BCC59:
                       LDX.B $8D                            ;9BCC59|A68D    |;
                       LDA.L $7E3598,X                      ;9BCC5B|BF98357E|;
                       AND.W #$FFFB                         ;9BCC5F|29FBFF  |;
                       STA.L $7E3598,X                      ;9BCC62|9F98357E|;
                       LDA.W #$0005                         ;9BCC66|A90500  |;
                       STA.B $A5                            ;9BCC69|85A5    |;
                       JSL.L CODE_9BCD1C                    ;9BCC6B|221CCD9B|;
                       LDA.B $A5                            ;9BCC6F|A5A5    |;
                       LDX.B $8D                            ;9BCC71|A68D    |;
                       STA.L $7E3558,X                      ;9BCC73|9F58357E|;
                       CMP.W #$0004                         ;9BCC77|C90400  |;
                       BNE CODE_9BCC87                      ;9BCC7A|D00B    |;
                       db $BF,$98,$35,$7E,$09,$04,$00,$9F   ;9BCC7C|        |;
                       db $98,$35,$7E                       ;9BCC84|        |;
 
          CODE_9BCC87:
                       LDA.W #$0005                         ;9BCC87|A90500  |;
                       STA.B $A5                            ;9BCC8A|85A5    |;
                       JSL.L CODE_9BCD1C                    ;9BCC8C|221CCD9B|;
                       LDX.B $8D                            ;9BCC90|A68D    |;
                       LDA.B $A5                            ;9BCC92|A5A5    |;
                       STA.L $7E3548,X                      ;9BCC94|9F48357E|;
                       CMP.W #$0004                         ;9BCC98|C90400  |;
                       BNE CODE_9BCCA8                      ;9BCC9B|D00B    |;
                       LDA.L $7E3598,X                      ;9BCC9D|BF98357E|;
                       ORA.W #$0004                         ;9BCCA1|090400  |;
                       STA.L $7E3598,X                      ;9BCCA4|9F98357E|;
 
          CODE_9BCCA8:
                       DEC.B $8D                            ;9BCCA8|C68D    |;
                       DEC.B $8D                            ;9BCCAA|C68D    |;
                       DEC.B $AD                            ;9BCCAC|C6AD    |;
                       BPL CODE_9BCC59                      ;9BCCAE|10A9    |;
                       LDA.W #$4000                         ;9BCCB0|A90040  |;
                       STA.B $A5                            ;9BCCB3|85A5    |;
                       JSL.L CODE_9BCD1C                    ;9BCCB5|221CCD9B|;
                       LDA.B $A5                            ;9BCCB9|A5A5    |;
                       STA.W $0AD5                          ;9BCCBB|8DD50A  |;
                       LDA.W #$0004                         ;9BCCBE|A90400  |;
                       STA.B $A5                            ;9BCCC1|85A5    |;
                       JSL.L CODE_9BCD1C                    ;9BCCC3|221CCD9B|;
                       LDA.B $A5                            ;9BCCC7|A5A5    |;
                       STA.L $7E34CE                        ;9BCCC9|8FCE347E|;
                       LDA.W #$0010                         ;9BCCCD|A91000  |;
                       STA.B $A5                            ;9BCCD0|85A5    |;
                       JSL.L CODE_9BCD1C                    ;9BCCD2|221CCD9B|;
                       LDA.B $A5                            ;9BCCD6|A5A5    |;
                       STA.L $7E34F2                        ;9BCCD8|8FF2347E|;
                       LDA.W #$0004                         ;9BCCDC|A90400  |;
                       STA.B $A5                            ;9BCCDF|85A5    |;
                       JSL.L CODE_9BCD1C                    ;9BCCE1|221CCD9B|;
                       LDA.B $A5                            ;9BCCE5|A5A5    |;
                       STA.L $7E35D4                        ;9BCCE7|8FD4357E|;
                       LDA.W #$0008                         ;9BCCEB|A90800  |;
                       STA.B $A5                            ;9BCCEE|85A5    |;
                       JSL.L CODE_9BCD1C                    ;9BCCF0|221CCD9B|;
                       LDA.B $A5                            ;9BCCF4|A5A5    |;
                       STA.W $0ACF                          ;9BCCF6|8DCF0A  |;
                       LDA.W #$0020                         ;9BCCF9|A92000  |;
                       STA.B $A5                            ;9BCCFC|85A5    |;
                       JSL.L CODE_9BCD1C                    ;9BCCFE|221CCD9B|;
                       LDA.B $A5                            ;9BCD02|A5A5    |;
                       STA.L $7E34D0                        ;9BCD04|8FD0347E|;
                       LDA.B $C1                            ;9BCD08|A5C1    |;
                       AND.W #$01FF                         ;9BCD0A|29FF01  |;
                       STA.B $C5                            ;9BCD0D|85C5    |;
                       PLA                                  ;9BCD0F|68      |;
                       CMP.B $C5                            ;9BCD10|C5C5    |;
                       BEQ CODE_9BCD1B                      ;9BCD12|F007    |;
                       LDA.W #$FFFF                         ;9BCD14|A9FFFF  |;
                       STA.L $7E34D0                        ;9BCD17|8FD0347E|;
 
          CODE_9BCD1B:
                       RTL                                  ;9BCD1B|6B      |;
 
          CODE_9BCD1C:
                       JSL.L CODE_9CA41B                    ;9BCD1C|221BA49C|;
                       LDA.B $C1                            ;9BCD20|A5C1    |;
                       CLC                                  ;9BCD22|18      |;
                       ADC.B $A5                            ;9BCD23|65A5    |;
                       STA.B $C1                            ;9BCD25|85C1    |;
                       RTL                                  ;9BCD27|6B      |;
 
          CODE_9BCD28:
                       JSL.L CODE_9BCD69                    ;9BCD28|2269CD9B|;
                       JML.L CODE_9BCC41                    ;9BCD2C|5C41CC9B|;
                       db $A2,$0F,$00,$A9,$1E,$00,$85,$A5   ;9BCD30|        |;
                       db $22,$1B,$A4,$9C,$E2,$20,$A5,$A5   ;9BCD38|        |;
                       db $9F,$F4,$34,$7E,$C2,$30,$CA,$10   ;9BCD40|        |;
                       db $EA,$6B                           ;9BCD48|        |;
 
       UNREACH_9BCD4A:
                       db $42,$43,$44,$46,$47,$48,$4A,$4B   ;9BCD4A|        |;
                       db $4C,$4D,$4E,$50,$52,$53,$54,$56   ;9BCD52|        |;
                       db $57,$58,$59,$5A,$30,$31,$32,$33   ;9BCD5A|        |;
                       db $34,$35,$36,$37,$38,$39,$2D       ;9BCD62|        |;
 
          CODE_9BCD69:
                       JSL.L CODE_9BCD8F                    ;9BCD69|228FCD9B|;
                       LDX.W #$0000                         ;9BCD6D|A20000  |;
 
          CODE_9BCD70:
                       LDA.W #$001E                         ;9BCD70|A91E00  |;
                       STA.B $A5                            ;9BCD73|85A5    |;
                       JSL.L CODE_9CA4CF                    ;9BCD75|22CFA49C|;
                       LDA.L $7E34F4,X                      ;9BCD79|BFF4347E|;
                       AND.W #$00FF                         ;9BCD7D|29FF00  |;
                       STA.B $A5                            ;9BCD80|85A5    |;
                       STZ.B $A7                            ;9BCD82|64A7    |;
                       JSL.L CODE_9BB4A3                    ;9BCD84|22A3B49B|;
                       INX                                  ;9BCD88|E8      |;
                       CPX.W #$0010                         ;9BCD89|E01000  |;
                       BNE CODE_9BCD70                      ;9BCD8C|D0E2    |;
                       RTL                                  ;9BCD8E|6B      |;
 
          CODE_9BCD8F:
                       LDA.W #$0000                         ;9BCD8F|A90000  |;
                       STA.L $7E3508                        ;9BCD92|8F08357E|;
                       STA.L $7E350A                        ;9BCD96|8F0A357E|;
                       STA.L $7E350C                        ;9BCD9A|8F0C357E|;
                       STA.L $7E350E                        ;9BCD9E|8F0E357E|;
                       STA.L $7E3510                        ;9BCDA2|8F10357E|;
                       STA.L $7E3512                        ;9BCDA6|8F12357E|;
                       STA.L $7E3514                        ;9BCDAA|8F14357E|;
                       STA.L $7E3516                        ;9BCDAE|8F16357E|;
                       RTL                                  ;9BCDB2|6B      |;
                       db $A5,$A5,$48,$A5,$A7,$48,$A5,$A9   ;9BCDB3|        |;
                       db $48,$A5,$AB,$48,$A5,$A5,$A6,$A9   ;9BCDBB|        |;
                       db $85,$A9,$86,$A5,$22,$CF,$A4,$9C   ;9BCDC3|        |;
                       db $64,$A7,$A5,$A9,$85,$A5,$22,$A3   ;9BCDCB|        |;
                       db $B4,$9B,$68,$85,$AB,$68,$85,$A9   ;9BCDD3|        |;
                       db $68,$85,$A7,$68,$85,$A5,$6B       ;9BCDDB|        |;
 
          CODE_9BCDE2:
                       SEP #$30                             ;9BCDE2|E230    |;
                       LDA.B #$00                           ;9BCDE4|A900    |;
                       STA.L $7E34F4                        ;9BCDE6|8FF4347E|;
                       LDX.B #$0F                           ;9BCDEA|A20F    |;
                       LDA.B #$1E                           ;9BCDEC|A91E    |;
 
          CODE_9BCDEE:
                       STA.L $7E34F4,X                      ;9BCDEE|9FF4347E|;
                       DEX                                  ;9BCDF2|CA      |;
                       BNE CODE_9BCDEE                      ;9BCDF3|D0F9    |;
                       REP #$30                             ;9BCDF5|C230    |;
                       RTL                                  ;9BCDF7|6B      |;
 
          CODE_9BCDF8:
                       STA.W $1DED                          ;9BCDF8|8DED1D  |;
                       STX.W $1DEF                          ;9BCDFB|8EEF1D  |;
                       STY.W $1DF1                          ;9BCDFE|8CF11D  |;
                       LDA.W #$FFFF                         ;9BCE01|A9FFFF  |;
                       STA.W $1DF3                          ;9BCE04|8DF31D  |;
                       STA.W $1DF5                          ;9BCE07|8DF51D  |;
                       STA.W $1DF7                          ;9BCE0A|8DF71D  |;
                       LDA.W #$00C4                         ;9BCE0D|A9C400  |;
                       STA.W $07D4                          ;9BCE10|8DD407  |;
                       LDA.W #$CE21                         ;9BCE13|A921CE  |;
                       LDX.W #$009B                         ;9BCE16|A29B00  |;
                       LDY.W $1DED                          ;9BCE19|ACED1D  |;
                       JSL.L CODE_808520                    ;9BCE1C|22208580|;
                       RTL                                  ;9BCE20|6B      |;
                       SEP #$20                             ;9BCE21|E220    |;
                       LDA.W $1DF3                          ;9BCE23|ADF31D  |;
                       STA.W $210E                          ;9BCE26|8D0E21  |;
                       LDA.W $1DF4                          ;9BCE29|ADF41D  |;
                       STA.W $210E                          ;9BCE2C|8D0E21  |;
                       REP #$20                             ;9BCE2F|C220    |;
                       LDA.W #$CE44                         ;9BCE31|A944CE  |;
                       STA.W $078F                          ;9BCE34|8D8F07  |;
                       LDA.W $1DEF                          ;9BCE37|ADEF1D  |;
                       STA.W $4209                          ;9BCE3A|8D0942  |;
                       LDA.W #$FFFF                         ;9BCE3D|A9FFFF  |;
                       STA.W $1DCD                          ;9BCE40|8DCD1D  |;
                       RTL                                  ;9BCE43|6B      |;
                       SEP #$20                             ;9BCE44|E220    |;
                       LDA.W $1DF5                          ;9BCE46|ADF51D  |;
                       STA.W $210E                          ;9BCE49|8D0E21  |;
                       LDA.W $1DF6                          ;9BCE4C|ADF61D  |;
                       STA.W $210E                          ;9BCE4F|8D0E21  |;
                       REP #$20                             ;9BCE52|C220    |;
                       LDA.W #$CE61                         ;9BCE54|A961CE  |;
                       STA.W $078F                          ;9BCE57|8D8F07  |;
                       LDA.W $1DF1                          ;9BCE5A|ADF11D  |;
                       STA.W $4209                          ;9BCE5D|8D0942  |;
                       RTL                                  ;9BCE60|6B      |;
                       SEP #$20                             ;9BCE61|E220    |;
                       LDA.W $1DF7                          ;9BCE63|ADF71D  |;
                       STA.W $210E                          ;9BCE66|8D0E21  |;
                       LDA.W $1DF8                          ;9BCE69|ADF81D  |;
                       STA.W $210E                          ;9BCE6C|8D0E21  |;
                       REP #$20                             ;9BCE6F|C220    |;
                       LDA.W #$CE21                         ;9BCE71|A921CE  |;
                       STA.W $078F                          ;9BCE74|8D8F07  |;
                       RTL                                  ;9BCE77|6B      |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCE78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCE80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCE88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCE90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCE98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCEA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCEA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCEB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCEB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCEC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCEC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCED0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCED8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCEE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCEE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCEF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCEF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCF98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCFA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCFA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCFB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCFB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCFC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCFC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCFD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCFD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCFE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCFE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCFF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BCFF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD000|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD008|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD010|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD018|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD020|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD028|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD030|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD038|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD040|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD048|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD050|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD058|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD060|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD068|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD070|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD078|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD080|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD088|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD090|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD098|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD0A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD0A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD0B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD0B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD0C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD0C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD0D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD0D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD0E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD0E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD0F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD0F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD100|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD108|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD110|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD118|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD120|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD128|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD130|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD138|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD140|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD148|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD150|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD158|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD160|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD168|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD170|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD178|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD180|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD188|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD190|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD198|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD1A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD1A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD1B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD1B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD1C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD1C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD1D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD1D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD1E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD1E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD1F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD1F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD200|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD208|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD210|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD218|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD220|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD228|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD230|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD238|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD240|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD248|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD250|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD258|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD260|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD268|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD270|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD278|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD280|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD288|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD290|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD298|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD2A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD2A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD2B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD2B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD2C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD2C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD2D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD2D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD2E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD2E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD2F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD2F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD300|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD308|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD310|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD318|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD320|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD328|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD330|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD338|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD340|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD348|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD350|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD358|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD360|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD368|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD370|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD378|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD380|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD388|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD390|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD398|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD3A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD3A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD3B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD3B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD3C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD3C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD3D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD3D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD3E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD3E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD3F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD3F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD400|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD408|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD410|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD418|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD420|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD428|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD430|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD438|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD440|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD448|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD450|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD458|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD460|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD468|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD470|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD478|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD480|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD488|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD490|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD498|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD4A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD4A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD4B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD4B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD4C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD4C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD4D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD4D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD4E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD4E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD4F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD4F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD500|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD508|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD510|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD518|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD520|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD528|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD530|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD538|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD540|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD548|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD550|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD558|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD560|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD568|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD570|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD578|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD580|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD588|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD590|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD598|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD5A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD5A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD5B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD5B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD5C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD5C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD5D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD5D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD5E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD5E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD5F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD5F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD600|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD608|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD610|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD618|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD620|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD628|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD630|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD638|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD640|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD648|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD650|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD658|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD660|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD668|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD670|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD678|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD680|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD688|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD690|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD698|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD6A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD6A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD6B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD6B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD6C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD6C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD6D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD6D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD6E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD6E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD6F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD6F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD700|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD708|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD710|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD718|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD720|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD728|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD730|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD738|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD740|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD748|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD750|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD758|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD760|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD768|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD770|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD778|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD780|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD788|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD790|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD798|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD7A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD7A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD7B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD7B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD7C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD7C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD7D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD7D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD7E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD7E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD7F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD7F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD800|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD808|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD810|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD818|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD820|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD828|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD830|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD838|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD840|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD848|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD850|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD858|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD860|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD868|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD870|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD878|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD880|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD888|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD890|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD898|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD8A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD8A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD8B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD8B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD8C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD8C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD8D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD8D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD8E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD8E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD8F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD8F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD900|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD908|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD910|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD918|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD920|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD928|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD930|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD938|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD940|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD948|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD950|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD958|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD960|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD968|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD970|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD978|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD980|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD988|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD990|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD998|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD9A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD9A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD9B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD9B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD9C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD9C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD9D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD9D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD9E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD9E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD9F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BD9F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDA98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDAA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDAA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDAB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDAB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDAC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDAC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDAD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDAD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDAE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDAE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDAF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDAF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDB98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDBA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDBA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDBB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDBB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDBC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDBC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDBD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDBD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDBE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDBE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDBF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDBF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDC98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDCA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDCA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDCB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDCB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDCC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDCC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDCD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDCD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDCE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDCE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDCF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDCF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDD98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDDA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDDA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDDB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDDB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDDC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDDC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDDD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDDD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDDE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDDE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDDF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDDF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDE98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDEA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDEA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDEB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDEB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDEC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDEC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDED0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDED8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDEE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDEE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDEF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDEF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDF98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDFA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDFA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDFB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDFB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDFC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDFC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDFD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDFD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDFE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDFE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDFF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BDFF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE000|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE008|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE010|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE018|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE020|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE028|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE030|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE038|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE040|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE048|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE050|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE058|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE060|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE068|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE070|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE078|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE080|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE088|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE090|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE098|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE0A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE0A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE0B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE0B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE0C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE0C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE0D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE0D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE0E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE0E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE0F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE0F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE100|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE108|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE110|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE118|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE120|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE128|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE130|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE138|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE140|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE148|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE150|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE158|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE160|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE168|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE170|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE178|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE180|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE188|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE190|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE198|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE1A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE1A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE1B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE1B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE1C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE1C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE1D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE1D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE1E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE1E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE1F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE1F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE200|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE208|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE210|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE218|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE220|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE228|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE230|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE238|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE240|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE248|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE250|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE258|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE260|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE268|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE270|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE278|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE280|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE288|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE290|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE298|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE2A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE2A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE2B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE2B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE2C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE2C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE2D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE2D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE2E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE2E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE2F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE2F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE300|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE308|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE310|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE318|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE320|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE328|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE330|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE338|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE340|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE348|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE350|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE358|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE360|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE368|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE370|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE378|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE380|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE388|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE390|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE398|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE3A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE3A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE3B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE3B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE3C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE3C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE3D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE3D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE3E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE3E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE3F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE3F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE400|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE408|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE410|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE418|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE420|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE428|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE430|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE438|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE440|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE448|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE450|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE458|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE460|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE468|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE470|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE478|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE480|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE488|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE490|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE498|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE4A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE4A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE4B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE4B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE4C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE4C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE4D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE4D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE4E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE4E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE4F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE4F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE500|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE508|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE510|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE518|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE520|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE528|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE530|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE538|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE540|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE548|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE550|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE558|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE560|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE568|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE570|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE578|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE580|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE588|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE590|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE598|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE5A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE5A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE5B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE5B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE5C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE5C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE5D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE5D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE5E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE5E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE5F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE5F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE600|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE608|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE610|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE618|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE620|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE628|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE630|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE638|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE640|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE648|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE650|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE658|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE660|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE668|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE670|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE678|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE680|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE688|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE690|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE698|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE6A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE6A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE6B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE6B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE6C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE6C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE6D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE6D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE6E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE6E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE6F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE6F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE700|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE708|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE710|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE718|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE720|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE728|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE730|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE738|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE740|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE748|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE750|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE758|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE760|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE768|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE770|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE778|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE780|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE788|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE790|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE798|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE7A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE7A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE7B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE7B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE7C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE7C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE7D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE7D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE7E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE7E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE7F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE7F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE800|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE808|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE810|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE818|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE820|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE828|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE830|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE838|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE840|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE848|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE850|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE858|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE860|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE868|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE870|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE878|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE880|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE888|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE890|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE898|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE8A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE8A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE8B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE8B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE8C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE8C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE8D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE8D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE8E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE8E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE8F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE8F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE900|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE908|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE910|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE918|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE920|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE928|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE930|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE938|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE940|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE948|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE950|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE958|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE960|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE968|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE970|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE978|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE980|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE988|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE990|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE998|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE9A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE9A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE9B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE9B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE9C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE9C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE9D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE9D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE9E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE9E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE9F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BE9F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEA98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEAA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEAA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEAB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEAB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEAC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEAC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEAD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEAD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEAE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEAE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEAF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEAF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEB98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEBA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEBA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEBB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEBB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEBC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEBC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEBD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEBD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEBE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEBE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEBF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEBF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEC98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BECA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BECA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BECB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BECB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BECC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BECC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BECD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BECD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BECE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BECE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BECF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BECF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BED98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEDA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEDA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEDB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEDB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEDC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEDC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEDD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEDD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEDE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEDE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEDF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEDF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEE98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEEA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEEA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEEB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEEB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEEC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEEC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEED0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEED8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEEE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEEE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEEF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEEF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEF98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEFA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEFA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEFB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEFB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEFC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEFC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEFD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEFD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEFE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEFE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEFF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BEFF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF000|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF008|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF010|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF018|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF020|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF028|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF030|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF038|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF040|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF048|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF050|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF058|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF060|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF068|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF070|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF078|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF080|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF088|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF090|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF098|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF0A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF0A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF0B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF0B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF0C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF0C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF0D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF0D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF0E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF0E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF0F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF0F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF100|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF108|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF110|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF118|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF120|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF128|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF130|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF138|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF140|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF148|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF150|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF158|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF160|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF168|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF170|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF178|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF180|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF188|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF190|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF198|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF1A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF1A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF1B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF1B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF1C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF1C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF1D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF1D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF1E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF1E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF1F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF1F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF200|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF208|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF210|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF218|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF220|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF228|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF230|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF238|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF240|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF248|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF250|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF258|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF260|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF268|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF270|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF278|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF280|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF288|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF290|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF298|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF2A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF2A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF2B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF2B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF2C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF2C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF2D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF2D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF2E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF2E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF2F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF2F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF300|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF308|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF310|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF318|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF320|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF328|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF330|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF338|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF340|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF348|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF350|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF358|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF360|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF368|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF370|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF378|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF380|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF388|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF390|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF398|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF3A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF3A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF3B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF3B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF3C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF3C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF3D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF3D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF3E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF3E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF3F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF3F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF400|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF408|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF410|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF418|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF420|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF428|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF430|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF438|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF440|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF448|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF450|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF458|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF460|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF468|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF470|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF478|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF480|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF488|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF490|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF498|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF4A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF4A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF4B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF4B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF4C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF4C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF4D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF4D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF4E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF4E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF4F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF4F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF500|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF508|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF510|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF518|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF520|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF528|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF530|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF538|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF540|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF548|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF550|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF558|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF560|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF568|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF570|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF578|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF580|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF588|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF590|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF598|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF5A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF5A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF5B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF5B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF5C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF5C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF5D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF5D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF5E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF5E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF5F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF5F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF600|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF608|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF610|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF618|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF620|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF628|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF630|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF638|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF640|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF648|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF650|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF658|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF660|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF668|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF670|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF678|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF680|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF688|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF690|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF698|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF6A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF6A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF6B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF6B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF6C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF6C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF6D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF6D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF6E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF6E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF6F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF6F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF700|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF708|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF710|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF718|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF720|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF728|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF730|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF738|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF740|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF748|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF750|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF758|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF760|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF768|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF770|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF778|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF780|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF788|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF790|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF798|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF7A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF7A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF7B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF7B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF7C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF7C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF7D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF7D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF7E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF7E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF7F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF7F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF800|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF808|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF810|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF818|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF820|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF828|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF830|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF838|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF840|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF848|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF850|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF858|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF860|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF868|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF870|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF878|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF880|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF888|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF890|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF898|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF8A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF8A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF8B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF8B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF8C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF8C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF8D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF8D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF8E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF8E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF8F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF8F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF900|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF908|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF910|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF918|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF920|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF928|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF930|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF938|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF940|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF948|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF950|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF958|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF960|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF968|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF970|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF978|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF980|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF988|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF990|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF998|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF9A0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF9A8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF9B0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF9B8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF9C0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF9C8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF9D0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF9D8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF9E0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF9E8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF9F0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BF9F8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFA98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFAA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFAA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFAB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFAB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFAC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFAC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFAD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFAD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFAE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFAE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFAF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFAF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFB98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFBA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFBA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFBB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFBB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFBC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFBC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFBD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFBD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFBE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFBE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFBF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFBF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFC98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFCA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFCA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFCB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFCB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFCC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFCC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFCD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFCD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFCE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFCE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFCF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFCF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFD98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFDA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFDA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFDB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFDB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFDC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFDC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFDD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFDD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFDE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFDE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFDF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFDF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFE98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFEA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFEA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFEB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFEB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFEC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFEC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFED0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFED8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFEE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFEE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFEF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFEF8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF00|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF08|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF10|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF18|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF20|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF28|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF30|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF38|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF40|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF48|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF50|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF58|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF60|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF68|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF70|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF78|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF80|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF88|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF90|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFF98|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFFA0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFFA8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFFB0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFFB8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFFC0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFFC8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFFD0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFFD8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFFE0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFFE8|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFFF0|        |;
                       db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;9BFFF8|        |;
