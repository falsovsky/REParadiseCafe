;b $4000 screen$
;  $4000,$1b00 #UDGTABLE { #SCR(loading) | Ecrã de entrada - screen$. } TABLE#

;b $5B00 System variables (?)
;b $5CB6 Channel infomation (?)

;b $5CCB Program data (Basic?)
;B $5CCB,$15c zbr

;b $5E27 Basic stacks (novo)

; @label:$7530=game_over
c $7530 Game over
  $7530,$6 Paper 0 Preto
  $7536,$d Imprime 32 ($20) espaços ($80) em 18 linhas ($12) - Na posicao 0,0 - Parede preta
  $7543,$6 Paper 2 Vermelho
  $7549,$b Imprime 29 ($1D) espaços ($80) em 4 linhas ($04) - Na posicao 18,3 - Chão vermelho
  $7554,$6 Paper 3 Roxo
  $755A,$b Imprime 16 ($10) espaços ($80) em 4 linhas ($04) - Na posicao 12,5 - Banco Roxo
  $756B,$6 Ink 0 Preto
  $7571,$6 Paper 7 Branco
  $7577,$d Imprime 1 ($01) char $3E em 18 linhas ($12) - Na posicao 0,3 - Risca branca da parede
  $7584,$6 Desenha #R$75E2 
  $7590,$6 Desenha #R$77D5
  $759C,$6 Desenha #R$7799
  $75A2,$5 Limpa a ultima tecla pressionada
  $75A7,$5 Faz uma pausa
  $75AC,$6 Desenha #R$77B6
  $75B2,$7 Se pressionou alguma tecla salta para #R$75C6
  $75B9,$5 Faz uma pausa
  $75BE,$6 Desenha #R$7799

; @label:$75CF=preenche_com_char
c $75CF Preenche L colunas e C linhas com o caracter H na posicao D,E
  $75CF,$3 AT
  $75D2,$2 X está em D
  $75D4,$2 Y está em E
  $75D6,$1 B contem o numero de vezes a printar
  $75D7,$6 Imprime o que está em H, B vezes
  $75DD,$1 Incrementa a linha
  $75De,$1 Decrementa o numero de linhas a imprimir
  $75DF,$2 Se ainda houverem linhas para imprimir volta ao inicio

; @label:$75E2=frame_prisao
b $75E2 Prisão
E $75E2 #HTML[#CALL:decode_data($8970,$75E2)]

; @label:$7799=frame_canhola_1
b $7799 Canhola - Frame 1
  $7799 #HTML[#CALL:decode_data($8C30,$7799)]

; @label:$77B6=frame_canhola_2
b $77B6 Canhola - Frame 2
  $77B6 #HTML[#CALL:decode_data($8C30,$77B6)]

; @label:$77D5=frame_the_end
b $77D5 The End
  $77D5 #HTML[#CALL:decode_data($3C00,$77D5)]

;s $77E4

; @label:$77EA=start 
c $77EA Inicio do codigo!
  $77EA,$f Espera que se pressione uma tecla
  $77F9,$4 No Operation
  $77FD,8 Define atributos para o fadeOut a $10 e chama-o
  $7805,4 Faz um beep?
  $7809,6 Define CHARS em $3C00 
  $780F,6 Desenha #R$788D
  $7815,3 HL com #R$89A6
  $7818,2 Inutil(?) é repetida abaixo
  $781A,3 AT
  $781D,3 X = $09
  $7820,3 Y = 00
  $7823,3 PAPER
  $7826,3 $02 RED
  $7829,3 INK
  $782C,3 $6 YELLOW
  $782F,3 BRIGHTNESS
  $7832,3 $01
  $7835,9 Imprime $20 (32) caracteres da string em HL
  $783E,3 BRIGHTNESS
  $7841,3 $00
  $7844,$c Espera que se pressione uma tecla
  $7850,4 Faz um beep?
; $7854,2 Começa-se sem arma
  $7856,3 #R$C33D a 0
  $7859,3 #R$C337 a 0
  $785E,3 #R$C33C a 1
  $7863,$C #R$C346 a "0000" $30 é "0" em ASCII
  $786F,$E #R$C33E a "3000" - 030000$
  $787D,3 Guarda o valor do FRAMES (contador de tempo +-)
  $7880,2 Subtrai $80
  $7882,8 Corre o "randomizer" o numero de vezes que estiver em A

; @label:$788D=frame_inicio
b $788D Ecrã de entrada
  $788D #HTML[#CALL:decode_data($3C00,$788D)]

;s $79EA

; @label:$7CF0=main
c $7CF0 Main do jogo
  $7CF0,7 No Operation

; @label:$7D2B=sleep
c $7D2B Delay
N $7D2B Numero de vezes que o loop B vai correr
  $7D2B C = 80
N $7D2D [loop b] Define valor de B, e decrementa ate voltar a 0
  $7D2D B = 0
  $7D2F Decrementa B enquanto nao for 0
N $7D31 Enquanto o valor de C não for 0, repete o loop B
  $7D31 Decrementa C
  $7D32,2 Se C <> 0 salta para o loop do B

; @label:$7D35=posicaoColuna
b $7D35 ??

; ???????
b $7D36

; @label:$7D3B=desenhaPorta
c $7D3B Desenha a porta
  $7D3B,6 INK = Azul
  $7D41,6 PAPER = Amarelo
  $7D47,6 Carrega o valor de #R$C34B e mete-o em #R$7D35
  $7D4D,2 Caracter a imprimir - Porta
  $7D4F,2 Contador C = 7
  $7D51,3 Valor de #R$7D35 em A
  $7D57,7 Incrementa valor de #R$7D35
  $7D5E,1 Decrementa Contador C
  $7D5F,2 Se não for zero salta
  $7D61,7 Decrementa #R$C34B
  $7D68,3 Valor de #R$7D35 em A
  $7D6B,5 Se for $20 (32) salta para #R$7DAB
  $7D70,4 Se for $FF (255) - vai dar a volta - salta para #R$7D85
  $7D74,2 Caracter a imprimr - Normalmente em branco
  $7D76,6 Paper = Vermelho
  $7D7C,6 Limpa a ultima coluna da porta, para dar o efeito de movimento
  $7D85,5 Define #R$C34B a $1F, o maximo 'a direita

; @label:$7D8D=imprimeColunaPorta
c $7D8D Imprime coluna da porta na posicao A
; $7D8D,2 Adiciona 9 a A
; $7D8F,1 Return se Carry estiver SET
  $7D8D,3 Se estiver fora do ecra na esquerda, salta fora
; $7D90,3 Le o valor de #R$7D35 para A
; $7D93,2 Subrai 32 a A
; $7D95,1 Return se Carry estiver NOT SET
  $7D90,6 Se estiver fora do ecra na direita, salta fora
  $7D96,3 Le o valor de #R$7D35 para A
  $7D99,1 E = A
  $7D9A,2 D = 0
  $7D9C,2 B = 17
  $7D9E,3 A = 22 (PRINT AT)
  $7DA1,2 Y = D
  $7DA3,2 X = E
  $7DA5,2 Imprime valor em L
  $7DA7,1 Incrementa D
  $7DA8,2 Se Zero estiver NOT SET salta


; @label:$7DAB=colisaoPorta
c $7DAB Verifica colisao com a porta(main loop)
  $7DAB Le a distancia para a porta
  $7DAE Está em cima?
  $7DB0 Nao, volta para tras
  $7DB1 Guarda o valor do FRAMES (contador de tempo +-)
  $7DB4 Subtrai $80
  $7DB6,8 Corre o "randomizer" o numero de vezes que estiver em A
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
  $7DDD Então é o senhor Guarda!

s $7DE1
c $7DEA Policia

; @label:$7EE9=frame_balao_guarda
b $7EE9 Balões do Guarda
E $7EE9 #HTML[#CALL:decode_data($F641,$7EE9)]
E $7EE9 #HTML[#CALL:decode_data($F7C1,$7EE9)]

b $7F00 Limpa balão guarda
  $7F00 #HTML[#CALL:decode_data($F821,$7F00)]

; @label:$7F15=frame_balao_falar_guarda
b $7F15 Balões a falar com o guarda
E $7F15 #HTML[#CALL:decode_data($F6A1,$7F15)]
E $7F15 #HTML[#CALL:decode_data($F761,$7F15)]

; @label:$7F2C=frame_limpa_balao_esquerdo
b $7F2C Limpa balão - esquerdo
  $7F2C #HTML[#CALL:decode_data($F6A1,$7F2C)]

; @label:$7F41=frame_limpa_chao
b $7F41 Limpa chão
  $7F41 #HTML[#CALL:decode_data($F701,$7F41)]

; @label:$7F52=chars1
b $7F52 CHARS

;t $826A
;b $8272
;t $835B
;b $835F
;t $8474
;b $8478
;t $86D5
;b $86E2
;t $870B
;b $8710
;t $8723
;b $8728
;t $8774
;b $8778
;t $87A5
;b $87A8
;t $87CC
;b $87D8

c $8800
s $88FF

; @label:$8900=highscore_check
c $8900
  $8900 Le primeiros dois valores (yyXX) do score em HL
  $8903 Le primeiros dois valores (yyXX) do highscore em DE
  $8907 Le o primeiro valor (yXXX) do score em A
  $8908 Subtrai com D - primeiro valor (XyXX) do highscore
  $8909 Se der a volta (D > A -  Carry = 1) sai
  $890A A = (yXXX) do score
  $890B Compara com D (yXXX) do highscore
  $890C Se for diferente salta para #R$892F
  $890F A = (XyXX) do score
  $8910 Subtrai E - (XyXX) do highscore
  $8911 Se der a volta (E > A - Carry = 1) sai
  $8912 A = (XyXX) do score
  $8913 Compara com E (XyXX) do highscore
  $8914 Se for diferente salta para #R$892F
  $8917 Le os segundos dois valores (XXyy) do score em HL
  $891A Le os segundos dois valores (XXyy) do highscore em DE
  $891E Le o terceiro valor (XXyX) do score em A
  $891F Subtrai com D - terceiro valor (XXyX) do highscore
  $8920 Se der a volta (D > A - Carry = 1) sai
  $8921 A = (XXyX) do score
  $8922 Compara com D (XXyX) do highscore
  $8923 Se for diferente salta para #R$892F
  $8926 A = (XXXy) do score
  $8927 Subtrai com E - (XXXy) do highscore
  $8928 Se der a volta (E > A - Carry = 1) sai
  $8929 A = (XXXy) do score
  $892A Compara com E (XXXy) do highscore
  $892B Se for diferente salta para #R$892F
  $892E Sai
  $892F,6 Define CHARS em $3C00
  $8935,6 Desenha #R$89D2
  $893B Endereço do #R$89A6(recordista) em HL
  $893E,3 (PRINT AT)
  $8941,3 Y = 12
  $8944,3 X = 0
  $8947,3 INK
  $894A,3 Amarelo
  $894D Mete B = $20 (32) - Numero de letras permitidas
  $894F,2 Guarda BC e HL na Stack
  $8954,2 Tira HL e BC da Stack
  $8956 Carrega ultima tecla pressionada em A
  $8959,5 Se pressionou ENTER salta para #R$8967
  $895F Escreve o valor de A na posicao de memoria de HL
  $8960,1 Printa a letra pressionada
  $8963,1 Incrementa HL
  $8965,2 Decrementa B se for diferente de 0 salta para #R$894F
  $8969,6 Desenha #R$8A09
  $8972,3 Carrega ultima tecla pressionada em A
  $8975,2 Compara com $6E - "n" em ASCII
  $8979,3 Se for igual salta para #R$899D
  $897C,2 Compara com $73 - "s" em ASCII
  $897E,3 Se for igual salta para #R$8985
  $8983,2 Se carregar noutra qualquer salta para #R$896F
  $8985,6 Define com $20 - um espaço, o que faltar da #R$89A6(recordista) ate que B seja 0
  $898B,12 Mete o highscore com o valor de score
  $8997,5 Delay de 5
  $899D,6 Desenha #R$8A29

; @label:$89A6=string_recordista
t $89A6 Recordista do jogo

; @label:$89D2=frame_record_introduza_nome
b $89D2 Novo record - Introduza o seu nome .
  $89D2 #HTML[#CALL:decode_data($3C00,$89D2)]

; @label:$8A09=frame_esta_correcto_o_seu_nome
b $8A09 Esta correcto o seu nome ?
  $8A09 #HTML[#CALL:decode_data($3C00,$8A09)]

; @label:$8A29=frame_duas_linhas
b $8A29 Duas linhas pretas
  $8A29 #HTML[#CALL:decode_data($3C00,$8A29)]

; @label:$8A70=chars2
b $8A70 CHARS

c $9088
c $90B1
c $90D2

b $90E7 Puta - Vaginal
  $90E7 #HTML[#CALL:decode_data($EB31,$90E7)]

s $9197

b $919B Puta - Vaginal - Frame 1
  $919B #HTML[#CALL:decode_data($EDB9,$919B)]

s $91DF

b $91E1 Puta - Vaginal - Frame 2
  $91E1 #HTML[#CALL:decode_data($EDB9,$91E1)]

b $921A Balão - Venho-me haaaaaaa
  $921A #HTML[#CALL:decode_data($EED9,$921A)]

b $9231 Limpa balão @ #R$921A
  $9231 #HTML[#CALL:decode_data($EDB9,$9231)]

c $9246
c $9274
c $92A3
c $92B8
c $92C1

b $92D6 Puta - Anal
  $92D6 #HTML[#CALL:decode_data($EF39,$92D6)]

s $938E

b $9392 Puta - Anal - Frame 1
  $9392 #HTML[#CALL:decode_data($F151,$9392)]

s $93C5

b $93C9 Puta - Anal - Frame 2
  $93C9 #HTML[#CALL:decode_data($F151,$93C9)]

s $93F8

b $93FC Baloes Puta no Quarto
E $93FC CHARS $F201 #HTML[#CALL:decode_data($F201,$93FC)]
E $93FC CHARS $8D94 #HTML[#CALL:decode_data($8D94,$93FC)]
E $93FC CHARS $FD01 #HTML[#CALL:decode_data($FD01,$93FC)]
E $93FC CHARS $85CA #HTML[#CALL:decode_data($85CA,$93FC)]
E $93FC CHARS $8F14 #HTML[#CALL:decode_data($8F14,$93FC)]

b $9413 Limpa balão @ #R$93FC
  $9413 #HTML[#CALL:decode_data($F201,$9413)]

b $9428 Baloes - Heroi no quarto da Puta
E $9428 CHARS $F261 #HTML[#CALL:decode_data($F261,$9428)]
E $9428 CHARS $FBE1 #HTML[#CALL:decode_data($FBE1,$9428)]
E $9428 CHARS $FC41 #HTML[#CALL:decode_data($FC41,$9428)]

b $943F Limpa balão @ #R$9428
  $943F #HTML[#CALL:decode_data($F151,$943F)]

s $9454

c $9455

s $9476

b $9479 Policia a sair - Frame 1
  $9479 #HTML[#CALL:decode_data($F2C1,$9479)]

s $94DA

b $94DE Policia a sair - Frame 2
  $94DE #HTML[#CALL:decode_data($F2C1,$94DE)]

s $959D

c $959F
c $95B7

b $95C7 Policia virado para a esquerda
  $95C7 #HTML[#CALL:decode_data($F4B9,$95C7)]

c $9663

b $9670 Mostrar a carteira (ao policia)
  $9670 #HTML[#CALL:decode_data($F881,$9670)]

c $9695
c $96B8
c $96DF
c $96F4

b $9709 Puta - Oral
  $9709 #HTML[#CALL:decode_data($F8B1,$9709)]

s $97C4

b $97C8 Puta - Oral - Frame 1
  $97C8 #HTML[#CALL:decode_data($FB41,$97C8)]

s $97F6

b $97FA Puta - Oral - Frame 2
  $97FA #HTML[#CALL:decode_data($FB41,$97FA)]

c $9826

b $9833 Puta na cama
  $9833 #HTML[#CALL:decode_data($7E5A,$9833)]

c $9899

b $98A6 Reinaldo
  $98A6 #HTML[#CALL:decode_data($804A,$98A6)]

c $9912

b $991F Heroi na casa da puta
  $991F #HTML[#CALL:decode_data($81A2,$991F)]

s $9998

c $999A

b $9AAE Reinaldo a espreitar na porta
  $9AAE #HTML[#CALL:decode_data($82CA,$9AAE)]

b $9ACF Balão - Cu cu
  $9ACF #HTML[#CALL:decode_data($FD61,$9ACF)]

b $9AE2 Balão - Reinaldo
E $9AE2 CHARS $FDA1 #HTML[#CALL:decode_data($FDA1,$9AE2)]
E $9AE2 CHARS $862A #HTML[#CALL:decode_data($862A,$9AE2)]

b $9AF9 Reinaldo - Enrabadela
  $9AF9 #HTML[#CALL:decode_data($8322,$9AF9)]

b $9BB1 Reinaldo - Enrabadela - Frame 1
  $9BB1 #HTML[#CALL:decode_data($8502,$9BB1)]

b $9BE3 Reinaldo - Enrabadela - Frame 2
  $9BE3 #HTML[#CALL:decode_data($8502,$9BE3)]

b $9C15 Balão - Ai que caralhinho
  $9C15 #HTML[#CALL:decode_data($868A,$9C15)]

c $9C30
s $9C3C
c $9C40

b $9C4D Velha - Vergada
  $9C4D #HTML[#CALL:decode_data($D899,$9C4D)]

c $9CD7

b $9CE4 Velha - Vestido levantado
  $9CE4 #HTML[#CALL:decode_data($D899,$9CE4)]

c $9D7A

b $9D87 Velha - Pichota para fora
  $9D87 #HTML[#CALL:decode_data($D899,$9D87)]

c $9DB1

b $9DBE Velha - Violar - Frame 1
  $9DBE #HTML[#CALL:decode_data($D899,$9DBE)]

c $9DED

b $9DFA Velha - Violar - Frame 2
  $9DFA #HTML[#CALL:decode_data($D899,$9DFA)]

c $9E2F

b $9E4A Velha a sair - Frame 1
  $9E4A #HTML[#CALL:decode_data($D739,$9E4A)]

s $9E8E

b $9E92 Velha a sair - Frame 2
  $9E92 #HTML[#CALL:decode_data($D739,$9E92)]

c $9F31
c $9F54 Velha

b $9FFF
  $9FFF #HTML[#CALL:decode_data($DD21,$9FFF)]

c $A004

b $A00F
  $A00F #HTML[#CALL:decode_data($DD21,$A00F)]

c $A014
c $A03A
c $A0D4
c $A100
c $A134
c $A143

b $A14C Balão - Ai tão grande
  $A14C #HTML[#CALL:decode_data($DBB1,$A14C)]

b $A163 Limpa balão @ #R$A14C
  $A163 #HTML[#CALL:decode_data($D899,$A163)]

b $A178
  $A178 #HTML[#CALL:decode_data($99D8,$A178)]

s $A194

c $A195

b $A1A2
  $A1A2 #HTML[#CALL:decode_data($E111,$A1A2)]

s $A1EF

c $A1F0
c $A20A
s $A214
c $A215

b $A222 Café - Sentado
  $A222 #HTML[#CALL:decode_data($DE31,$A222)]

s $A35E

c $A360

b $A38B Café - Beber - Frame 1
  $A38B #HTML[#CALL:decode_data($DE31,$A38B)]

s $A3D0

b $A3D2 Café - Beber - Frame 2
  $A3D2 #HTML[#CALL:decode_data($DE31,$A3D2)]

c $A410
c $A416

s $A423

c $A425

c $A430

b $A465 Café - Mafioso - Frame 1
  $A465 #HTML[#CALL:decode_data($E279,$A465)]

s $A4A7

b $A4AB Café - Mafioso - Frame 2
  $A4AB #HTML[#CALL:decode_data($E279,$A4AB)]

s $A51A

b $A51E Café - Mafioso - Frame 3
  $A51E #HTML[#CALL:decode_data($E279,$A51E)]

s $A586

c $A589
c $A5B5

b $A5D6 Café - Empregado - Frame 1
  $A5D6 #HTML[#CALL:decode_data($E441,$A5D6)]

s $A620

b $A625 Café - Empregado - Frame 2
  $A625 #HTML[#CALL:decode_data($E441,$A625)]

s $A6B3

c $A6B7
c $A6FE
c $A710

b $A728 Café - Empregado a servir bebida - Frame 1
  $A728 #HTML[#CALL:decode_data($E441,$A728)]

s $A74A

b $A74E Café - Empregado a servir bebida - Frame 2
  $A74E #HTML[#CALL:decode_data($E441,$A74E)]

c $A770
c $A799
s $A79C
c $A7A0 Café
C $A9F9 Activar a arma!

b $AB87

c $AB88

b $ABC3 Limpa algo, não sei o que
  $ABC3 #HTML[#CALL:decode_data($E279,$A74E)]

b $ABCE Balões Heroi no Café
E $ABCE #HTML[#CALL:decode_data($E659,$ABCE)]
E $ABCE #HTML[#CALL:decode_data($E6B9,$ABCE)]
E $ABCE #HTML[#CALL:decode_data($E5F9,$ABCE)]                                                                                  

b $ABE5 Limpa balão @ #R$ABCE
  $ABE5 #HTML[#CALL:decode_data($E659,$ABE5)]

b $ABFA Baloes - Malandro no Cafe
E $ABFA CHARS $E9F9 #HTML[#CALL:decode_data($E9F9,$ABFA)]
E $ABFA CHARS $E899 #HTML[#CALL:decode_data($E899,$ABFA)]
E $ABFA CHARS $E7D9 #HTML[#CALL:decode_data($E7D9,$ABFA)]
E $ABFA CHARS $E909 #HTML[#CALL:decode_data($E909,$ABFA)]
E $ABFA CHARS $E839 #HTML[#CALL:decode_data($E839,$ABFA)]
E $ABFA CHARS $E979 #HTML[#CALL:decode_data($E979,$ABFA)]

b $AC11 Limpa balão @ #R$ABFA
  $AC11 #HTML[#CALL:decode_data($E659,$AC11)]

b $AC26 Balões Empregado Café
E $AC26 #HTML[#CALL:decode_data($E779,$AC26)]
E $AC26 #HTML[#CALL:decode_data($E719,$AC26)]


b $AC3D Limpa balão @ #R$AC26
  $AC3D #HTML[#CALL:decode_data($E779,$AC3D)]

b $AC52
  $AC52 #HTML[#CALL:decode_data($DE31,$AC52)]

s $AC8F

c $AC90 Café (Porta)
c $ACD3

b $ACD6

s $ACD7

b $ACD8 Café - quando a porta abre
  $ACD8 #HTML[#CALL:decode_data($EA59,$ACD8)]

s $ACF4

c $ACF6

b $AD05 Puta - Quarto
  $AD05 #HTML[#CALL:decode_data($EAC1,$AD05)]

c $AF6B

b $AF84 Baloes - Escolher pirafo
E $AF84 CHARS $8DF4 #HTML[#CALL:decode_data($8DF4,$AF84)]
E $AF84 CHARS $8E54 #HTML[#CALL:decode_data($8E54,$AF84)]
E $AF84 CHARS $8EB4 #HTML[#CALL:decode_data($8EB4,$AF84)]
E $AF84 CHARS $FCA1 #HTML[#CALL:decode_data($FCA1,$AF84)]

b $AF9B Limpa balão @ #R$AF84
  $AF9B #HTML[#CALL:decode_data($FD01,$AF9B)]

c $AFB0
c $AFB8
s $AFC3

; @label:$AFC8=desenhaFrameHL
c $AFC8 Escreve o valor de HL no ecrã até achar FF

s $AFD0

; @label:$AFD1=fadeOut
c $AFD1 Limpa o ecra (genero de fade)
  $AFD1,$1e Limpa o ecra a fazer SHIFT RIGHT LOGICAL aos graficos "na memoria grafica" de $4000 a $57ff
  $AFEF,$11 Define os atributos a partir do endereço $5800 com o valor definido em #R$C34F


; @label:$B001=desenhaCorpo
c $B001 Desenha o corpo do heroi
  $B001,6 Define HL com #R$B0A9 e desenha
  $B007,$a Define $CHARS a $C250
  $B011,6 Define HL com #R$B0E4 e desenha
  $B017,5 Mete #R$C34E a 0

; @label:$B01D=desenhaPernas
c $B01D Desenha as pernas do heroi
  $B01D Le o valor de #R$C34E para A
  $B020,5 Se for 0 salta para #R$B039
  $B025,5 Se for 1 salta para #R$B055
  $B02A,5 Se for 2 salta para #R$B071
  $B02F,5 Se for 3 salta para #R$B08D
  $B034,5 Se for 4 salta para #R$B039
  $B039,5 Mete #R$C34E a 1
  $B03E,6 Desenha #R$B0A9
  $B044,10 Define CHARS a C328
  $B04E,6 Desenha #R$B14C
  $B054,1 Sai
  $B055,5 Mete #R$C34E a 2
  $B05A,6 Desenha #R$B0A9
  $B060,10 Define CHARS a C420
  $B06A,6 Desenha #R$B1B5
  $B070,1 Sai
  $B071,5 Mete #R$C34E a 3
  $B076,6 Desenha #R$B0A9
  $B07C,10 Define CHARS a C538
  $B086,6 Desenha #R$B226
  $B08C,1 Sai
  $B08D,5 Mete #R$C34E a 4
  $B092,6 Desenha #R$B0A9
  $B098,10 Define CHARS a C638
  $B0A2,6 Desenha #R$B299
  $B0A8,1 Sai
  

; @label:$B0A9=frameTorso
b $B0A9 Frame do Torso
  $B0A9 #HTML[#CALL:decode_data($C538,$B0A9)]

; @label:$B0E4=framePernas1
b $B0E4 Animacao Pernas - Frame 1
  $B0E4 #HTML[#CALL:decode_data($C250,$B0E4)]

; @label:$B14C=framePernas2
b $B14C Animacao Pernas - Frame 2
  $B14C #HTML[#CALL:decode_data($C328,$B14C)]

; @label:$B1B5=framePernas3
b $B1B5 Animacao Pernas - Frame 3
  $B1B5 #HTML[#CALL:decode_data($C420,$B1B5)]

; @label:$B226=framePernas4
b $B226 Animacao Pernas - Frame 4
  $B226 #HTML[#CALL:decode_data($C538,$B226)]

; @label:$B299=framePernas5
b $B299 Animacao Pernas - Frame 5
  $B299 #HTML[#CALL:decode_data($C638,$B299)]

s $B309
c $B30A

b $B353 Entrar na porta - Frame 1
  $B353 #HTML[#CALL:decode_data($C740,$B353)]

b $B3DF Entrar na porta - Frame 2
  $B3DF #HTML[#CALL:decode_data($C740,$B3DF)]

c $B46C
c $B477
c $B486
s $B48E

; @label:$B48F=abrePorta
c $B48F Animação da porta a abrir

s $B4EF

; @label:$B4F1=fechaPorta
c $B4F1 Animação da porta a fechar

b $B551 Porta a abrir - Frame 1
  $B551 #HTML[#CALL:decode_data($CA7A,$B551)]

b $B55F Porta a abrir - Frame 2
  $B55F #HTML[#CALL:decode_data($CA7A,$B55F)]

b $B56B Porta a abrir - Frame 3
  $B56B #HTML[#CALL:decode_data($CA7A,$B56B)]

c $B579
c $B583
c $B594

c $B59C Animacao da puta a sair
  $B59C,$a CHARS = $C8E0
  $B5A6 Endereço da frame #R$B5F0
  $B5A9 Desenha a frame
  $B5AC Delay
  $B5AF Endereço da frame #R$B688
  $B5B2,3 Desenha a frame

c $B5B6 Puta entra e porta é limpa
  $B5B6,$a CHARS = $C8E0
  $B5C0 Frame @ #R$B5F0 - Puta a entrar
  $B5C3,3 Desenha a frame
  $B5C6,3 Delay
  $B5C9,$16 Limpa a porta - Imprime 5 caracteres em branco desde a posicao x = 10 y = 2 até x = 10 y = 16 #HTML(<br>)O que é printado é: 16 02 0A 80 80 80 80 80 16 03 0A 80 80 80 80 80 16 04 0A 80 80 80 80 80 16 05 0A 80 80 80 80 80 16 06 0A 80 80 80 80 80 16 07 0A 80 80 80 80 80 16 08 0A 80 80 80 80 80 16 09 0A 80 80 80 80 80 16 0A 0A 80 80 80 80 80 16 0B 0A 80 80 80 80 80 16 0C 0A 80 80 80 80 80 16 0D 0A 80 80 80 80 80 16 0E 0A 80 80 80 80 80 16 0F 0A 80 80 80 80 80 16 10 0A 80 80 80 80 80

; @label:$B5E0=imprimeEspacosB
c $B5E0 Imprime um espaço o numero de vezes que estiver em B

; @label:$B5E6=delayPuta
c $B5E6 Delay conta de $FFFF ate 0

b $B5F0 Puta a sair - Frame 1
  $B5F0 #HTML[#CALL:decode_data($C8E0,$B5F0)]

b $B688 Puta a sair - Frame 2
  $B688 #HTML[#CALL:decode_data($C8E0,$B688)]

; @label:$B721=random1
c $B721 Random que define quem vai aparecer na porta - 1
  $B721 Carrega o valor do endereço #R$C34D (?) em A
  $B724 Incrementa
  $B725 Compara com $07
  $B727 Se for igual - #R$B734
  $B72A Guarda o valor de A no endereço #R$C34D (?)
  $B72D Copia o valor de A para B
  $B731,2 Decrementa B, se B > 0 salta para o CALL acima 

; @label:$B734=defineAa0
c $B734 Define A = $01

c $B737 Define o #R$C346 a 0
  $B737,9 Mete a #R$C346 a 0
  $B740,4 Retira 4 valores da stack e mete em BC

c $B745
s $B753
c $B755
c $B766
s $B76A

c $B76D Paradise Café

; @label:$B775=espera_por_keypress
c $B775 Espera que se pressione uma tecla e guarda em #R$C34C
  $B777 Endereço da ultima tecla pressionada
  $B77A Mete a 00 (limpar?)
  $B77C Compara a ultima tecla pressionada a A (0)
  $B77D,2 Se for igual volta a comparar
  $B780,3 Guarda a tecla pressionada em #R$C34C

s $B784

; @label:$B785=desenhaChao
c $B785 Desenha o chão a linha de highscore e o azul do fundo do ecrã
  $B785,8 Define atributos para o fadeOut a $10 e chama-o
  $B78D,8 Desenha o chão (a $18 - 00|011|000 - roxo). $5A20 é um endereço de atributos de cor na memoria
  $B795,6 Desenha #R$B7A4
  $B79B,8 Desenha fundo do ecrã (a $08 - 00|001|000 - azul). $5AA0 é um endereço de atributos de cor na memoria

; @label:$B7A4=frame_linha_highscore
b $B7A4 Linha do Highscore
  $B7A4 #HTML[#CALL:decode_data($3C00,$B7A4)] 

; @label:$B7CC=prencheAtributos
c $B7CC Preenche desde (HL) até (HL+$60) o valor em A
  $B7CC,2 Numero de vezes que vai executar
  $B7CE,1 (HL) = A
  $B7CF,1 HL+1
  $B7D0,2 B--; Se !0 salta
  
; @label:$B7D3=scrollaHighscore
c $B7D3 Chama a rotina #R$B7E9 com $5080, 5180, $5280 .. $5780 
  $B7D3 HL = $5080
  $B7D6 C = $8
  $B7D8,3 Guarda o valor de HL em #R$B7E6
  $B7DE Guarda o valor de #R$B7E6 em HL
  $B7E1 Incrementa H
  $B7E2 Decrementa C
  $B7E3 Se C != 0 salta para #R$B7D8
  $B7E5 Sai

; @label:$B7E6=tmpScroll1
b $B7E6 Variavel temporaria usada para guardar o endereço inicial da memoria grafica ao scrollar
  $B7E6 Usado nas rotinas #R$B7D3 e #R$B7E9

; @label:$B7E8=tmpScroll2
b $B7E8 Variavel temporaria usada para guardar o valor do grafico tudo a esquerda para ser passado tudo pra direita
  $B7E8 Usado na rotina #R$B7E9

; @label:$B7E9=scrollaHighscore2
c $B7E9 Scrolla da esquerda pra direita a partir do valor guardado em #R$B7E6
  $B7E9 Le o valor no endereço #R$B7E6 em HL
  $B7EC B = $1F (31) Numero de vezes a correr a rotina
  $B7EE D = H
  $B7EF E = L
  $B7F0 A = (HL)
  $B7F1 Guarda o valor de A em #R$B7E8 (Primeira coluna para passar pra direita)
  $B7F4 Copia o valor de (HL+1) para (HL)
;  $B7F4 Incrementa HL
;  $B7F5 A = (HL)
;  $B7F6 Le para (DE) o valor de A
;  $B7F7 Incrementa DE
  $B7F8 Decrementa B, se B != 0 salta para #R$B7F4
  $B7FA Guarda o valor de #R$B7E8 em A
  $B7FD (DE) = A
  $B7FE Sai

s $B7FF

; @label:$B800=viraCaraPuta
c $B800 Vira a cara para a puta
  $B800,$a CHARS = $CAEA
  $B80A Endereço da frame #R$B811
  $B80D,3 Desenha a frame

b $B811 Cara do gajo a olhar pra puta
B $B811 #HTML[#CALL:decode_data($CAEA,$B811)]

; @label:$B82E=viraCaraFrente
c $B82E Heroi vira a cara para o ecrã
  $B82E O endereço $5C36 CHARS define onde a Font(?) começa
  $B837 CHARS = $CE2A
  $B838 Endereço da frame - #R$B83F
  $B83B Desenha a frame

b $B83F Cara virada para o ecrã
B $B83F #HTML[#CALL:decode_data($CE2A,$B83F)]

s $B858

; @label:$B85A=random2
c $B85A Random que define quem vai aparecer na porta - 2
  $B85A Carrega o valor do endereço #R$C34A (?) em A
  $B85D Incrementa
  $B85E Compara com $04
  $B860 Se for igual chama #R$B867 que mete A a $00
  $B863,3 Guarda o valor de A no endereço #R$C34A (?)

c $B867 Define A = $00

c $B86A Puta
  $B86A,3 Abre a porta
  $B86D,3 Vira a cara para a puta
  $B870,3 Delay
  $B873,3 Sai da porta
  $B876,6 Randomize crap!
  $B881,3 CHARS = $CB2A - Ola nao queres entrar?
  $B884,5 Se random2 == $01
  $B889 CHARS = $CBEA - Queres vir comigo?
  $B88C,5 Se random2 == $02
  $B891,3 CHARS = $CCAA - Queres provar?
  $B894 Endereço da frame - #R$B8B1
  $B897,3 Desenha a frame
  $B89A,3 Espera por input do utilizador
  $B8A0 Foi o "s" ?
  $B8A5 Foi o "n" ?
  $B8A7 Dizer que não à puta
  $B8AA Foi o "q" ?
  $B8AC,3 Dizer que nao à puta
  $B8AF Se não foi nenhuma delas volta a pedir input

b $B8B1 Frases da puta na rua
E $B8B1 CHARS $CB2A #HTML[#CALL:decode_data($CB2A,$B8B1)]
E $B8B1 CHARS $CBEA #HTML[#CALL:decode_data($CBEA,$B8B1)]
E $B8B1 CHARS $CCAA #HTML[#CALL:decode_data($CCAA,$B8B1)]

c $B8E9
  $B8E9,$a CHARS = $CD6A
  $B8F3 Frame @ #R$B811 - Virar a cara
  $B8F6,3 Desenha a frame
  $B8F9,6 Delay
  $B902,3 Delay
  $B90B,3 Fecha a porta
  $B90E,3 Delay

c $B914

c $B93C Recusar a puta

b $B967 Balão - Maricas
  $B967 #HTML[#CALL:decode_data($CE59,$B967)]

; @label:$B97E=charsCB2A
c $B97E CHARS = $CB2A
  $B97e,10 CHARS = $CB2A

; @label:$B989=charsCBEA
c $B989 CHARS = $CBEA
  $B98C,3 CHARS = DE

; @label:$B994=charsCCAA
c $B994 CHARS = $CCAA

; @label:$B99F=delay1
c $B99F Delay conta de $FFFF ate 0

s $B9A9

; @label:$B9AF=desenhaScoreDinheiro
c $B9AF Calcular variaveis/Refresh delas no ecrã
  $B9AF,$a $CHARS = $3C00
  $B9B9,6 Desenha frame #R$B9F1
  $B9BF,3 Carrega os dois primeiros caracteres do SCORE para HL
  $B9C2,2 Imprime o primeiro caracter
  $B9C4,2 Imprime o segundo caracter
  $B9C6,3 Carrega o terceiro a quarto caracter do SCORE para HL
  $B9C9,2 Imprime o terceiro caracter
  $B9CB,2 Imprime o quarto caracter
  $B9CD,6 Imprime dois espaços
  $B9D3,6 Desenha frame #R$BA00
  $B9D9,3 Carrega os dois primeiros caracteres do DINHEIRO para HL
  $B9DC,2 Imprime o primeiro caracter
  $B9DE,2 Imprime o segundo caracter
  $B9E0,3 Carrega o terceiro a quarto caracter do DINHEIRO para HL
  $B9E3,2 Imprime o terceiro caracter
  $B9E5,2 Imprime o quarto caracter
  $B9E7,6 Imprime dois espaços
  $B9ED,3 Imprime um cifrao

; @label:$B9F1=frameScore
b $B9F1 SCORE= 
  $B9F1 #HTML[#CALL:decode_data($3C00,$B9F1)]

; @label:$BA00=frameDinheiro
b $BA00 DINHEIRO:
  $BA00 #HTML[#CALL:decode_data($3C00,$BA00)]

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
s $BACD

c $BAD0 Trata do 3º valor de #R$C346
  $BAD0,3 Copia o 4º e 3º valores do #R$C346 para HL
  $BAD3,2 Copia o 3º valor para A e decrementa 1
  $BAD5,2 Compara com $2F (valor ASCII '/' logo atras do 0)
  $BAD7,3 Se for, salta para #R$BAEF (Verifica se o 4 º valor da pontuacao e' < 0)
  $BADA,1 Copia o valor de A para L
  $BADB,3 Escreve o 4º e 3º valor de #R$C346 a partir de HL

c $BAE4 Trata do 4º valor de #R$C346
  $BAE4,2 Copia o valor de H para A e decrementa 1
  $BAE6,2 Compara com $2F (valor ASCII '/' logo atras do 0)
  $BAE8,3 Se for, salta para #R$BAEF (Verifica se o 1º valor da pontuacao e' < 0)
  $BAEB,1 Copia o valor de A para H
  $BAEC,2 Define o valor de A a $39 - '9' em ASCII

c $BAEF Trata do 1º valor de #R$C346
  $BAEF,5 Copia o 1º valor do #R$C346 para A e decrementa 1
  $BAF4,2 Compara com $2F (valor ASCII '/' logo atras do 0)
  $BAF6,3 Se for, salta para #R$BB03 (Verifica se o 2º valor da pontuacao e' < 0)
  $BAF9,1 Copia o valor de A para H
  $BAFA,3 Copia o valor de HL para #R$C346
  $BAFD,3 Copia para HL o quarto e terceiro valor do #R$C346
  $BB00,2 Define A com $39 (valor ASCII '9')

c $BB03 Trata do 2º valor de #R$C346
  $BB03,2 Copia o valor de H para A e decrementa 1
  $BB05,2 Compara com $2F (valor ASCII '/' logo atras do 0)
  $BB07,3 Se for, salta para #R$B737 (Mete a pontuacao a 0)
  $BB0A,1 Copia o valor de A para H
  $BB0B,2 Define o valor de A a $39 - '9' em ASCII

s $BB0E

; @label:$BB11=ladraoAnimSai
; Animação do ladrão a saír da porta
; 1º Metade do corpo
; 2º Corpo todo virado pra frente
c $BB11 Ladrão: Animação a saír
C $BB11 O endereço $5C36 CHARS define onde a Font(?) começa
C $BB1A CHARS = $CEB9
C $BB1B Endereço da frame 1 - #R$BB38
C $BB1E Desenha a frame
C $BB21 Delay
C $BB24 Endereço da frame 2 - #R$BBA1
C $BB27 Desenha a frame
C $BB2A Delay

; @label:$BB2E=delayLadrao
c $BB2E Delay
E $BB2E Conta desde FFF0 até 0000
C $BB2E C = F0
C $BB30 B = 00
C $BB32 Decrementa B, se nao for 0 salta para si proprio
C $BB34 Decrementa C
C $BB35 Se nao for 0, salta para $BB30

; Frame
b $BB38 Ladrão a sair - Frame 1
B $BB38 #HTML[#CALL:decode_data($CEB9,$BB38)]

; Frame
b $BBA1 Ladrão a sair - Frame 2
;B $BBA1 #CALL:comment_frame($CEB9,$BBA1)
B $BBA1 #HTML[#CALL:decode_data($CEB9,$BBA1)]

s $BC67

; @label:$BC6A=ladraoViradoEsq
; Animação do ladrão a virar-se para a esquerda
c $BC6A Ladrão: Virado para a esquerda
C $BC73 CHARS = $D089
C $BC74 Endereço da frame - #R$BC7B
C $BC77 Desenha a frame

; Frame
b $BC7B Ladrão virado para a esquerda - Frame
B $BC7B #HTML[#CALL:decode_data($D089,$BC7B)]

; @label:$BD0C=deToChars
c $BD0C Define o valor de DE em $5C36 (Endereço CHARS)

c $BD15

b $BD22 Ladrão no chão
B $BD22 #HTML[#CALL:decode_data($D1F1,$BD22)]

s $BD94

c $BD95
s $BD9F
c $BDA0
c $BDBF Ladrão: animação a entrar na porta
c $BDDE

b $BDE8 Ladrão a entrar na porta - frame 1
B $BDE8 #HTML[#CALL:decode_data($C740,$BDE8)]

b $BE65 Ladrão a entrar na porta - frame 2
B $BE65 #HTML[#CALL:decode_data($C740,$BE65)]

c $BEC5

; @label:$BEDC=sacaAPistola 
c $BEDC Saca a pistola @ #R$BEE9

b $BEE9 Frame - Sacar a pistola
B $BEE9 #HTML[#CALL:decode_data($D409,$BEE9)]

; Rotina principal do ladrão
; @label:$BF17=ladrao
c $BF17 Ladrão
  $BF17,3 Abre a porta
  $BF1A,5 Define a "LAST K" last pressed key = 00 (é para limpar IMEO)
  $BF1F Sai da porta
  $BF22 Vira-se para a esquerda
  $BF25 Endereço da frame - #R$BFE0
  $BF28 Desenha a frame
  $BF2B Randomizer
  $BF2E,6 Delay com a duracao do valor em A
  $BF34,8 $5C08 Se a ultima tecla carregada foi "0" entao é para disparar!
  $BF3C Tem lume?
  $BF66 Saca da pistola - Passe a carteira
  $BF8B Entra na porta
  $BF93 Fecha a porta
  $BF9E Ve se tem pistola(????)
  $BFA6 Não tens pistola?
  $BFC4 Merda

b $BFCF

b $BFE0 Animação Ladrão (???)
B $BFE0 #HTML[#CALL:decode_data($D089,$BFE0)]

b $BFE7 Ladrão - Saca a pistola
  $BFE7 #HTML[#CALL:decode_data($D389,$BFE7)]

b $BFFA Ladrão - Tem lume? - Frame 1
  $BFFA #HTML[#CALL:decode_data($D3A9,$BFFA)]  

b $C00F Balão - Tem lume?
  $C00F #HTML[#CALL:decode_data($D519,$C00F)]

b $C026 Limpa balão @ #R$C00F
  $C026 #HTML[#CALL:decode_data($D6E9,$C026)]

b $C03B Balão - Não tenho pistola
  $C03B #HTML[#CALL:decode_data($D689,$C03B)]

b $C052 Limpa balão @ #R$C03B
  $C052 #HTML[#CALL:decode_data($D689,$C052)]

b $C067 Balão - Não fumo
  $C067 #HTML[#CALL:decode_data($D6E9,$C067)]

b $C07C Balão - Mãezinha
  $C07C #HTML[#CALL:decode_data($D5D9,$C07C)]

b $C093 Ladrão - Tem lume? - Frame 2
  $C093 #HTML[#CALL:decode_data($D3A9,$C093)]

b $C0B3 Balão - Eu só queria lume!
  $C0B3 #HTML[#CALL:decode_data($D579,$C0B3)]

c $C0F8

c $C192
  $C192,6 Imprime #R$C026 - Limpa balao lado direito
  $C198,6 Imprime #R$C052 - Limpa balao lado esquerdo
  $C1A6,5 Faz um delay de 3
  $C1AB,6 CHARS = $D579
  $C1B1,6 Imprime #R$C0B3 - Ladrao: Eu só queria lume !
  $C1B7,5 Faz um delay de 11

; Rotina executada quando se tenta disparar contra o ladrão
c $C1C2 Disparar contra o ladrão
  $C1C2,8 Se não tiver pistola chama #R$C23B
  $C1E7,3 Saca a pistola para fora!
  $C1EA,5 Delay com a duracao do valor em A

; @label:$C23B=naoTenhoPistola
c $C23B Não tenho pistola
  $C23B Vira a cara para o ecrã #R$B83F
  $C23E,$c Balão - Não tenho pistola, #R$C03B
  $C24A,5 Delay com a duracao do valor em A 
  $C24F,6 Esconde o balão #R$C052

s $C258

; @label:$C259=delayEmA
c $C259 Delay
N $C259 A rotina corre o numero de vezes que o valor em A
  $C259 C = 0
N $C25B Inicio Loop B
  $C25B B = 0
  $C25D Decrementa B até ser 0
N $C25F Fim Loop B
  $C25F Decrementa C
  $C260 Se C <> 0 salta para o loop B
  $C262 Decrementa A
  $C263,2 Se A <> 0 corre do inicio

; @label:$C266=chama_desenhaCorpo
c $C266 Chama o #R$B001

; @label:$C26A=fadeOut_azul
c $C26A Faz um fadeOut a azul

s $C273

c $C27A Tentativa de venda de algo no café
D $C27A Seja a arma, droga ou a conta
D $C27A Provavelmente define alguma variavel, pq é executado antes de mostrar o preço
  $C29D Mete o preço a 1000$00

s $C2A9

; @label:$C2AA=desenhaDespesa
c $C2AA Desenha a despesa
  $C2AA,6 Define CHARS a $3C00
  $C2B0,6 Imprime a frame #R$C2CE
  $C2B6,4 Imprime o 1º caracter da despesa - #R$C338 + 1
  $C2BA,4 Imprime o 2º caracter da despesa - #R$C338
  $C2BE,6 Imprime dois 0 (zeros)
  $C2C4,3 Imprime um $ (cifrao)
  $C2C7,6 Imprime dois 0 (zeros)

; @label:$C2CE=frame_despesa 
b $C2CE Frame Despesa
  $C2CE #HTML[#CALL:decode_data($3C00,$C2CE)]

s $C2DE

; @label:$C2DF=desenhaHighscore
c $C2DF Desenha o Highscore

b $C302 HISCORE =
  $C302 #HTML[#CALL:decode_data($3C00,$C302)]

s $C314

b $C336

; @label:$C337=tem_droga
b $C337 Inventorio: Droga

; @label:$C338=despesa
b $C338 Despesa

b $C33A

b $C33B

; @label:$C33C=tem_carteira
b $C33C Inventorio: Carteira

; @label:$C33D=tem_arma
b $C33D Inventorio: Arma

; @label:$C33E=dinheiro
b $C33E Dinheiro

; @label:$C342=highscore
b $C342 Highscore
D $C342 O valor inicial é 0005 que passa a 0050 porque se tem de trocar a ordem dos bytes
D $C342 (no jogo aparece 005000 mas os ultimos dois zeros sao fixos)
D $C342 Para um highscore de 1234|00 tinha de estar 2143 ou seja $32 $31 $34 $33

; @label:$C346=score
b $C346 Score
D $C346 Quatro bytes ASCII do Spectrum com a ordem trocada
D $C346 Ver mais em #R$C342(highscore)

;b $C348

b $C34A

; @label:$C34B=posicaoPorta
b $C34B Posicao da Porta
  $C34B A posicao da vai de: f8 - 09 - 1f. 09 e' quando esta em posicao para ser "aberta"
 
; @label:$C34C=ultima_tecla_pressionada
b $C34C Ultima tecla pressionada

b $C34D ??

; @label:$C34E=frameAnimacaoPernas
b $C34E Numero da frame actual da animacao das pernas - Usado em #R$B01D

; @label:$C34F=atributos_fadeOut
b $C34F Atributos a serem usados no fadeOut

; @label:$C350=chars3
b $C350 CHARS
