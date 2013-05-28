b $4000 screen$
D $4000 #UDGTABLE { #SCR(loading) | Ecrã de entrada - screen$. } TABLE#
b $5B00 System variables (?)
b $5CB6 Channel infomation (?)
b $5CCB Program data (Basic?)
;b $5CD5
;t $5CF4 AVISO AO PUBLICO
;b $5D0B
;t $5D22 Contem cenas
;b $5D39
;t $5D4E eventualmente chocantes
;b $5D6F
;t $5D94
;b $5D97
;t $5DC6
;b $5DCB #HTML[#UDG$53AB,2(5dcb)]
;t $5E1B
;b $5E20
;t $5E3F DAMATTA
;b $5E46
b $5E27 Basic stacks (novo)
c $7530 Inicio do codigo(?)
c $75CF
b $75E2
t $76F3
b $76F6
t $772A
b $7736
t $77D1 THE END
b $77E3
;c $77EA Inicio!4realz
c $77F2 Inicializa variaveis
C $7856 Tira a arma :-(
b $788D
t $78AC
b $78C7
t $78D7
b $78DB
t $78F0
b $78F3
t $7938
b $793B
t $7970
b $7973
t $797C
b $797F
t $7988
b $798B
t $79BC
b $79BF
t $79D6 Recordista do jogo
b $79E8
c $7CF0
c $7D2B
b $7D35
c $7D3B pontuação e o dinheiro na status(?) / calcula distancia pra porta
c $7D8D

c $7DAB Verifica colisao com a porta(main loop)
  $7DAB Le a distancia para a porta
  $7DAE Está em cima?
  $7DB0 Nao, volta para tras
  $7DB8 Refresha o Status
  $7DBC Já terminou a animacao?
  $7DBE Knock Knock1!
  $7DC1 É igual a 2?
  $7DC3 Então é a puta!
  $7DC6 É igual a 3?
  $7DC8 Então é a velha!
  $7DCB É igual a 4?
  $7DCD Então é o Paradise Café!
  $7DD0 Knock Knock2?
  $7DD3 É igual a 1?
  $7DD5 Então é o ladrão!
  $7DD8 Knock Knock3?
  $7DDB É igual a 2?
  $7DDD Então é o senhor Policia!

z $7DE1
c $7DEA Policia
b $7EE9
t $826A
b $8272
t $835B
b $835F
t $8474
b $8478
t $86D5
b $86E2
t $870B
b $8710
t $8723
b $8728
t $8774
b $8778
t $87A5
b $87A8
t $87CC
b $87D8
c $8800
z $88FF
c $8900
t $89A6 DAMATTA
b $89AD
t $89DC NOVO RECORDE / Introduza o seu nome / Esta correcto o seu nome
b $8A27
t $8CD2
b $8CE0
t $8CFC
b $8CFF
t $8E9F
b $8EA4
t $8EE5
b $8EEA
t $8F95
b $8FA1
t $8FBF
b $8FC4
t $8FCF
b $8FD4
t $8FED
b $8FF2
t $9005
b $9012
t $9056
b $905A
c $9088
c $90B1
c $90D2
b $90E7
t $9118
b $9123
t $913F
b $9142
t $9155
b $9158
t $9175
b $918E
t $91D2
b $91D6
c $9246
c $9274
c $92A3
c $92B8
c $92C1
b $92D6
t $92F6
b $92F9
t $933F
b $9346
t $9353
b $9356
t $9363
b $9367
t $9375
b $937B
t $93C1
b $93C4
t $93F4
b $93F7
c $9455
b $9476
c $959F
c $95B7
b $95C7
t $9648
b $964B
t $9656
b $9662
c $9663
b $9670
c $9695
c $96B8
c $96DF
c $96F4
b $9709
t $9739
b $974D
t $9770
b $9774
t $9783
b $9787
t $9793
b $979D
c $9826
b $9833
t $9862
b $9870
t $9879
b $9898
t $98D2
b $98D6
t $990E
b $9911
c $9912
b $991F
t $9959
b $995C
t $9B3A
b $9B45
t $9B99
b $9B9D
c $9C30
z $9C3C
c $9C40
b $9C4D
c $9CD7
b $9CE4
t $9D4A
b $9D4D
t $9D75
b $9D79
c $9D7A
b $9D87
t $9D9E
b $9DA1
c $9DB1
b $9DBE
t $9DD6
b $9DDF
c $9DED
b $9DFA
t $9E1E
b $9E22
c $9E2F
b $9E4A
c $9F31
c $9F54 Velha
b $9FFF
c $A004
b $A00F
c $A014
c $A03A
c $A0D4
c $A100
c $A134
c $A143
b $A14C
c $A195
b $A1A2
t $A1C7
b $A1CC
t $A1DD
b $A1EA
c $A1F0
c $A20A
z $A214
c $A215
b $A222
t $A25C
b $A265
t $A288
b $A28B
t $A2A0
b $A2A3
t $A2B1
b $A2B5
t $A2C2
b $A2E8
t $A303
b $A311
c $A360
b $A38B
t $A3DE
b $A3E2
t $A3EB
b $A3F9
c $A410
c $A416
b $A423
c $A430
b $A465
c $A589
c $A5B5
b $A5D6
t $A6AE
b $A6B2
c $A6B7
c $A6FE
c $A710
b $A728
t $A72F
b $A732
t $A73F
b $A742
t $A75F
b $A763
c $A770
c $A799
z $A79C
c $A7A0 Café
C $A9F9 Activar a arma!
b $AB87
c $AC90 Café (Porta)
c $ACD3
b $ACD6
c $ACF6
b $AD05
c $AF6B
b $AF84
c $AFB8
z $AFC3
c $AFC8
z $AFD0
c $AFD1 Limpa o ecra (genero de fade)
c $B001
c $B01D
b $B0A9
t $B190
b $B1A1
t $B1FA
b $B205
t $B270
b $B273
t $B27C
b $B27F
t $B2E1
b $B2F3
c $B30A
b $B353
t $B3B6
b $B3BA
t $B3CB
b $B3DE
c $B46C
c $B477
c $B486
z $B48E
c $B48F Animação da porta a abrir
z $B4EF
c $B4F1 Animação da porta a fechar
b $B551
c $B579
c $B583
c $B594
c $B59C
c $B5B6
c $B5E0
c $B5E6
b $B5F0
t $B636
b $B63A
t $B65E
b $B661
t $B6D0
b $B6D5
t $B6F8
b $B703
t $B70D
b $B720
c $B721
c $B734
c $B737
c $B745
z $B753
c $B755
c $B766
z $B76A
c $B76D Paradise Café
c $B775 Ficar à espera de input?
z $B784
c $B785
b $B7A4
c $B7CC
c $B7D3
b $B7E6
c $B7E9
z $B7FF
c $B800
b $B811
c $B82E
b $B83F
c $B85A
c $B867
c $B86A Puta
b $B8B1
t $B8E3
b $B8E8
c $B8E9
c $B914
c $B93C Recusar a puta
b $B967
c $B97E
c $B989
c $B994
c $B99F
z $B9A9
c $B9AF Calcular variaveis/Refresh delas no ecrã
b $B9F1
t $B9F8 SCORE= / DINHEIRO (barra de baixo?)
b $BA0B
c $BA0D
c $BA21
c $BA2C
c $BA40
c $BA4B
c $BA4E
c $BA62
c $BA6D
c $BA81
c $BA8C
c $BA8F Aceitar comprar algo no café
c $BAA3
c $BAAE
c $BAC2
z $BACD
c $BAD0
c $BAE4
c $BAEF
c $BB03
z $BB0E
c $BB11 Ladrão: Animação a sair da porta
C $BB11 Em $5C36 define-se o endereço para onde a font(?) começa
C $BB1A Fica então $CEB9 #HTML[#UDG$CEB9,20(ceb9)] #HTML[#UDG$CEC1,20(cec1)] 
c $BB2E Delay(???)
C $BB2E C = F0
C $BB30 B = 00
C $BB32 Decrementa B, se nao for 0 salta para si proprio
C $BB34 Decrementa C
C $BB35 Se nao for 0, salta para $BB30
b $BB38 Sprites(?) ladrão a sair da porta 1ª parte
b $BBA1 Sprites(?) ladrão a sair da porta 2ª parte
z $BC67
c $BC6A Ladrão: animação a virar-se pra frente (tronco)
b $BC7B Sprites(?) do ladrão a virar-se pra frente (NOT SURE)
;t $BCC8
;b $BCCB
;t $BCDB
;b $BCDE
;t $BCF1
;b $BCF4
;t $BD01
;b $BD0B
c $BD0C
c $BD15
b $BD22
t $BD59
b $BD5E
t $BD73
b $BD80
t $BD8C
b $BD8F
c $BD95
z $BD9F
c $BDA0
c $BDBF Ladrão: animação a entrar na porta
c $BDDE
b $BDE8
t $BE24
b $BE29
t $BE3E
b $BE42
t $BE53
b $BE64
t $BE94
b $BE97
c $BEC5
c $BEDC
b $BEE9
c $BF17 Ladrão
  $BF1F Animação a sair da porta
  $BF22 Animacao a virar-se pra frente
  $BF3C Tem lume?
  $BF66 Saca da pistola - Passe a carteira
  $BF9E Ve se tem pistola(????)
  $BFA6 Não tens pistola?
  $BFC4 Merda
b $BFCF
b $BFE0 Animação Ladrão (???)
b $BFE7
b $BFFA
b $C00F
c $C0F8
c $C192
c $C1C2
c $C23B
z $C258
c $C259 Animações (sem ser o gajo a andar)
c $C266
c $C26A
z $C273

c $C27A Tentativa de venda de algo no café
D $C27A Seja a arma, droga ou a conta
D $C27A Provavelmente define alguma variavel, pq é executado antes de mostrar o preço
  $C29D Mete o preço a 1000$00


z $C2A9
c $C2AA
b $C2CE
t $C2D5 DESPESA
b $C2DD
c $C2DF
b $C302
t $C309 HISCORE
b $C311
b $C33D Inventorio: Arma
b $C33E
t $C33E Dinheiro (Little endian - 0081 -> 0018) -> 001800$00
t $C342 Highscore (Little endian - 0005 -> 0050) -> 005000 Pontos

t $C346 Score
D $C346 Dois bytes ASCII em Little Endian.
D $C346 Exemplo: 1032 fica 0123 ou seja 012300 pontos.

b $C34A
b $C34B Distancia para a porta?
b $C34C
t $C598
b $C59B
t $C62B
b $C62F
t $CCC2
b $CCC5
t $CD63
b $CD68
t $D1CC
b $D1D1
t $D3BA
b $D3BD
t $D57C
b $D57F
t $D594
b $D597
t $D603
b $D607
t $D646
b $D649
t $D683
b $D688
t $D693
b $D6A0
t $D756
b $D759
t $D7AC
b $D7B1
t $D7D3
b $D7D6
t $DB11
b $DB15
t $DC8A
b $DC8E
t $DCA2
b $DCA5
t $DCFA
b $DCFE
t $DD1C
b $DD29
t $DD4C
b $DD4F
t $DD5C
b $DD68
t $DDC2
b $DDC7
t $DDEE
b $DDF1
t $DE2C
b $DE2F
t $DE3D
b $DE49
t $DE74
b $DE77
t $DE94
b $DE99
t $DEB4
b $DEB9
t $DEC2
b $DEC6
t $DED2
b $DEDD
t $E28E
b $E296
t $E2DC
b $E2E1
t $E30E
b $E311
t $E334
b $E338
t $E363
b $E367
t $E74B
b $E750
t $E82C
b $E831
t $E853
b $E868
t $E88C
b $E88F
t $E8BA
b $E8BF
t $E8CA
b $E8CF
t $E955
b $E958
t $E965
b $E968
t $E98B
b $E990
t $E9AC
b $E9B8
t $E9C4
b $E9C9
t $E9D4
b $E9D8
t $E9EC
b $E9F0
t $EA34
b $EA39
t $EA44
b $EA48
t $EA5C
b $EA60
t $EA94
b $EA99
t $EAB3
b $EAB8
t $EAC3
b $EAC6
t $EB0C
b $EB11
t $EB43
b $EB48
t $EB7E
b $EB85
t $EBA5
b $EBA8
t $EBB3
b $EBB6
t $EF91
b $EF99
t $F22A
b $F22D
t $F314
b $F318
t $F352
b $F35F
t $F43C
b $F441
t $F624
b $F62C
t $F649
b $F651
t $F681
b $F685
t $F6B9
b $F6BD
t $F764
b $F771
t $F7EA
b $F7EE
t $F80D
b $F830
t $F85B
b $F85E
t $F8B3
b $F8B7
t $F90A
b $F90E
t $F944
b $F949
t $F95A
b $F95D
t $F985
b $F989
t $FD5C
b $FD61
t $FDB4
b $FDC1
t $FE41
b $FE46
t $FE7E
b $FE83
t $FEAC
b $FEB1
;b $FF58 #HTML[#UDG$FF58,20(ff58)]
;b $FF98 #HTML[#UDG$FF98,21(ff98)]
