b $4000 screen$
D $4000,$1b00 #UDGTABLE { #SCR(loading) | Ecrã de entrada - screen$. } TABLE#

;b $5B00 System variables (?)
;b $5CB6 Channel infomation (?)

;b $5CCB Program data (Basic?)
;  $5CCB,$15c

;b $5E27 Basic stacks (novo)

c $7530 Game over(?)
c $75CF

b $75E2 Prisão
  $75E2 #HTML[#CALL:decode_data($8970,$75E2)]

b $7799 Canhola - Frame 1
  $7799 #HTML[#CALL:decode_data($8C30,$7799)]

b $77B6 Canhola - Frame 2
  $77B6 #HTML[#CALL:decode_data($8C30,$77B6)]

b $77D5 The End
  $77D5 #HTML[#CALL:decode_data($3C00,$77D5)]

z $77E4

c $77EA Inicio do codigo!
  $77EA,$13 Espera que se pressione uma tecla
  $7854,2 Começa-se sem arma
  $787D,3 Guarda o valor do FRAMES (contador de tempo +-)
  $7880,2 Subtrai $80
  $7882,8 Corre o "randomizer" o numero de vezes que estiver em A

b $788D Ecrã de entrada
  $788D #HTML[#CALL:decode_data($3C00,$788D)]

z $79EA

c $7CF0

c $7D2B Delay(?)

b $7D35
c $7D3B pontuação e o dinheiro na status(?) / calcula distancia pra porta
c $7D8D

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
  $7DDD Então é o senhor Policia!

z $7DE1
c $7DEA Policia

b $7EE9 Então está tudo bem?
  $7EE9 #HTML[#CALL:decode_data($F641,$7EE9)]

b $7F15 Está sim seu guarda
  $7F15 #HTML[#CALL:decode_data($F6A1,$7F15)]

b $7F2C Limpa balão - esquerdo
  $7F2C #HTML[#CALL:decode_data($F6A1,$7F2C)]

b $7F41 Limpa chão
  $7F41 #HTML[#CALL:decode_data($F701,$7F41)]

b $7F52

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
z $88FF
c $8900

t $89A6 Recordista do jogo

b $89D2 Novo record - Introduza o seu nome .
  $89D2 #HTML[#CALL:decode_data($3C00,$89D2)]

b $8A09 Esta correcto o seu nome ?
  $8A09 #HTML[#CALL:decode_data($3C00,$8A09)]

b $8A29 Duas linhas pretas
  $8A29 #HTML[#CALL:decode_data($3C00,$8A29)]

b $8A70

c $9088
c $90B1
c $90D2

b $90E7 Puta - Vaginal
  $90E7 #HTML[#CALL:decode_data($EB31,$90E7)]

z $9197

b $919B Puta - Vaginal - Frame 1
  $919B #HTML[#CALL:decode_data($EDB9,$919B)]

z $91DF

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

z $938E

b $9392 Puta - Anal - Frame 1
  $9392 #HTML[#CALL:decode_data($F151,$9392)]

z $93C5

b $93C9 Puta - Anal - Frame 2
  $93C9 #HTML[#CALL:decode_data($F151,$93C9)]

z $93F8

b $93FC Balão - Ahhh tão grosso
  $93FC #HTML[#CALL:decode_data($F201,$93FC)]

b $9413 Limpa balão @ #R$93FC
  $9413 #HTML[#CALL:decode_data($F201,$9413)]

b $9428 Balão - AAAA...
  $9428 #HTML[#CALL:decode_data($F261,$9428)]

b $943F Limpa balão @ #R$9428
  $943F #HTML[#CALL:decode_data($F151,$943F)]

z $9454

c $9455

z $9476

b $9479 Policia a sair - Frame 1
  $9479 #HTML[#CALL:decode_data($F2C1,$9479)]

z $94DA

b $94DE Policia a sair - Frame 2
  $94DE #HTML[#CALL:decode_data($F2C1,$94DE)]

z $959D

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

z $97C4

b $97C8 Puta - Oral - Frame 1
  $97C8 #HTML[#CALL:decode_data($FB41,$97C8)]

z $97F6

b $97FA Puta - Oral - Frame 2
  $97FA #HTML[#CALL:decode_data($FB41,$9800)]

c $9826

b $9833 Puta na cama
  $9833 #HTML[#CALL:decode_data($7E5A,$9833)]

c $9899

b $98A6 Reinaldo
  $98A6 #HTML[#CALL:decode_data($804A,$98A6)]

c $9912

b $991F Heroi na casa da puta
  $991F #HTML[#CALL:decode_data($81A2,$991F)]

z $9998

c $999A

b $9AAE Reinaldo a espreitar na porta
  $9AAE #HTML[#CALL:decode_data($82CA,$9AAE)]

b $9ACF Balão - Cu cu
  $9ACF #HTML[#CALL:decode_data($FD61,$9ACF)]

b $9AE2 Balão - O que foi?
  $9AE2 #HTML[#CALL:decode_data($FDA1,$9AE2)]

b $9AF9 Reinaldo - Enrabadela
  $9AF9 #HTML[#CALL:decode_data($8322,$9AF9)]

b $9BB1 Reinaldo - Enrabadela - Frame 1
  $9BB1 #HTML[#CALL:decode_data($8502,$9BB1)]

b $9BE3 Reinaldo - Enrabadela - Frame 2
  $9BE3 #HTML[#CALL:decode_data($8502,$9BE3)]

b $9C15 Balão - Ai que caralhinho
  $9C15 #HTML[#CALL:decode_data($868A,$9C15)]

c $9C30
z $9C3C
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

z $9E8E

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

z $A194

c $A195

b $A1A2
  $A1A2 #HTML[#CALL:decode_data($E111,$A1A2)]

z $A1EF

c $A1F0
c $A20A
z $A214
c $A215

b $A222 Café - Sentado
  $A222 #HTML[#CALL:decode_data($DE31,$A222)]

z $A35E

c $A360

b $A38B Café - Beber - Frame 1
  $A38B #HTML[#CALL:decode_data($DE31,$A38B)]

z $A3D0

b $A3D2 Café - Beber - Frame 2
  $A3D2 #HTML[#CALL:decode_data($DE31,$A3D2)]

c $A410
c $A416

z $A423

c $A425

c $A430

b $A465 Café - Mafioso - Frame 1
  $A465 #HTML[#CALL:decode_data($E279,$A465)]

z $A4A7

b $A4AB Café - Mafioso - Frame 2
  $A4AB #HTML[#CALL:decode_data($E279,$A4AB)]

z $A51A

b $A51E Café - Mafioso - Frame 3
  $A51E #HTML[#CALL:decode_data($E279,$A51E)]

z $A586

c $A589
c $A5B5

b $A5D6 Café - Empregado - Frame 1
  $A5D6 #HTML[#CALL:decode_data($E441,$A5D6)]

z $A620

b $A625 Café - Empregado - Frame 2
  $A625 #HTML[#CALL:decode_data($E441,$A625)]

z $A6B3

c $A6B7
c $A6FE
c $A710

b $A728 Café - Empregado a servir bebida - Frame 1
  $A728 #HTML[#CALL:decode_data($E441,$A728)]

z $A74A

b $A74E Café - Empregado a servir bebida - Frame 2
  $A74E #HTML[#CALL:decode_data($E441,$A74E)]

c $A770
c $A799
z $A79C
c $A7A0 Café
C $A9F9 Activar a arma!

b $AB87

c $AB88

b $ABC3 Limpa algo, não sei o que
  $ABC3 #HTML[#CALL:decode_data($E279,$A74E)]

b $ABCE Balão - Aceito
  $ABCE #HTML[#CALL:decode_data($E659,$ABCE)]

b $ABE5 Limpa balão @ #R$ABCE
  $ABE5 #HTML[#CALL:decode_data($E659,$ABE5)]

b $ABFA Balão - Sei que tem aí droga
  $ABFA #HTML[#CALL:decode_data($E9F9,$ABFA)]

b $AC11 Limpa balão @ #R$ABFA
  $AC11 #HTML[#CALL:decode_data($E659,$AC11)]

b $AC26 Balão - A sua conta
  $AC26 #HTML[#CALL:decode_data($E779,$AC26)]

b $AC3D Limpa balão @ #R$AC26
  $AC3D #HTML[#CALL:decode_data($E779,$AC3D)]

b $AC52
  $AC52 #HTML[#CALL:decode_data($DE31,$AC52)]

z $AC8F

c $AC90 Café (Porta)
c $ACD3

b $ACD6

z $ACD7

b $ACD8 Café - quando a porta abre
  $ACD8 #HTML[#CALL:decode_data($EA59,$ACD8)]

z $ACF4

c $ACF6

b $AD05 Puta - Quarto
  $AD05 #HTML[#CALL:decode_data($EAC1,$AD05)]

c $AF6B

b $AF84 Balão - Ir-te a' cona
  $AF84 #HTML[#CALL:decode_data($8DF4,$AF84)]

b $AF9B Limpa balão @ #R$AF84
  $AF9B #HTML[#CALL:decode_data($FD01,$AF9B)]

c $AFB0
c $AFB8
z $AFC3

; @label:$AFC8=desenhaFrameHL
c $AFC8 Escreve o valor de HL no ecrã até achar FF
;D $AFC8 Percorre a memoria desde o endereço em HL até achar o valor FF
;D $AFC8 Escreve no ecrã o CHR$ do valor encontrado

z $AFD0

; @label:$AFD1=fadeOut
c $AFD1 Limpa o ecra (genero de fade)

c $B001
c $B01D

b $B0A9
  $B0A9 #HTML[#CALL:decode_data($C538,$B0A9)]
E $B0A9 Esta frame é usada com CHARS a: $C538, $c328, $C420, $C538

b $B0E4 Animacao Pernas (?) - Frame 1
  $B0E4 #HTML[#CALL:decode_data($C250,$B0E4)]

b $B14C Animacao Pernas (?) - Frame 2
  $B14C #HTML[#CALL:decode_data($C328,$B14C)]

b $B1B5

b $B226
b $B299
z $B309
c $B30A

b $B353

b $B3DF

c $B46C
c $B477
c $B486
z $B48E

; @label:$B48F=abrePorta
c $B48F Animação da porta a abrir

z $B4EF

; @label:$B4F1=fechaPorta
c $B4F1 Animação da porta a fechar

b $B551
b $B55F
b $B56B
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

c $B721 Random que define quem vai aparecer na porta - 1
  $B721 Carrega o valor do endereço #R$C34D (?) em A
  $B724 Incrementa
  $B725 Compara com $07
  $B727 Se for igual chama #R$B734 que mete A a $01
  $B72A Guarda o valor de A no endereço #R$C34D (?)
  $B72D Copia o valor de A para B
  $B731,2 Decrementa B, se B > 0 salta para o CALL acima 

c $B734 Define A = $01

c $B737
c $B745
z $B753
c $B755
c $B766
z $B76A

c $B76D Paradise Café

; @label:$B775=inputC34C
c $B775 Espera que se pressione uma tecla e guarda em #R$C34C
  $B777 Endereço da ultima tecla pressionada
  $B77A Mete a 00 (limpar?)
  $B77C Compara a ultima tecla pressionada a A (0)
  $B77D,2 Se for igual volta a comparar
  $B780,3 Guarda a tecla pressionada em #R$C34C

z $B784
c $B785
b $B7A4
c $B7CC
c $B7D3

b $B7E6

b $B7E8

c $B7E9
z $B7FF

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

z $B858

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
b $B967

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

z $B9A9
c $B9AF Calcular variaveis/Refresh delas no ecrã
b $B9F1
b $BA00
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

z $BC67

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

b $BD22

z $BD94

c $BD95
z $BD9F
c $BDA0
c $BDBF Ladrão: animação a entrar na porta
c $BDDE
b $BDE8
b $BE65
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

b $BFE7
b $BFFA
b $C00F
b $C026

b $C03B Balão - Não tenho pistola
  $C03B #HTML[#CALL:decode_data($D689,$C03B)]

b $C052
  $C052 #HTML[#CALL:decode_data($D689,$C052)]
b $C067
b $C07C
b $C093
b $C0B3
c $C0F8
c $C192

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

z $C258

; @label:$C259=delayEmA
c $C259 Delay (rotina corre o numero de vezes que o valor em A)


c $C266
c $C26A
z $C273

c $C27A Tentativa de venda de algo no café
D $C27A Seja a arma, droga ou a conta
D $C27A Provavelmente define alguma variavel, pq é executado antes de mostrar o preço
  $C29D Mete o preço a 1000$00


z $C2A9
c $C2AA

b $C2CE Despesa(?)
z $C2DE

c $C2DF

b $C302

z $C314

b $C337

b $C338

b $C339

b $C33A

b $C33B

b $C33C

; @label:$C33D=arma
b $C33D Inventorio: Arma
b $C33E
t $C33E Dinheiro (Little endian - 0081 -> 0018) -> 001800$00
t $C342 Highscore (Little endian - 0005 -> 0050) -> 005000 Pontos

t $C346 Score
D $C346 Dois bytes ASCII em Little Endian.
D $C346 Exemplo: 1032 fica 0123 ou seja 012300 pontos.

b $C34A

b $C34B Distancia para a porta?
b $C34C Ultima tecla pressionada

b $C34D ??
b $C34E ??
b $C34F ??

b $C350

;t $C598
;b $C59B
;t $C62B
;b $C62F
;t $CCC2
;b $CCC5
;t $CD63
;b $CD68
;t $D1CC
;b $D1D1
;t $D3BA
;b $D3BD
;t $D57C
;b $D57F
;t $D594
;b $D597
;t $D603
;b $D607
;t $D646
;b $D649
;t $D683
;b $D688
;t $D693
;b $D6A0
;t $D756
;b $D759
;t $D7AC
;b $D7B1
;t $D7D3
;b $D7D6
;t $DB11
;b $DB15
;t $DC8A
;b $DC8E
;t $DCA2
;b $DCA5
;t $DCFA
;b $DCFE
;t $DD1C
;b $DD29
;t $DD4C
;b $DD4F
;t $DD5C
;b $DD68
;t $DDC2
;b $DDC7
;t $DDEE
;b $DDF1
;t $DE2C
;b $DE2F
;t $DE3D
;b $DE49
;t $DE74
;b $DE77
;t $DE94
;b $DE99
;t $DEB4
;b $DEB9
;t $DEC2
;b $DEC6
;t $DED2
;b $DEDD
;t $E28E
;b $E296
;t $E2DC
;b $E2E1
;t $E30E
;b $E311
;t $E334
;b $E338
;t $E363
;b $E367
;t $E74B
;b $E750
;t $E82C
;b $E831
;t $E853
;b $E868
;t $E88C
;b $E88F
;t $E8BA
;b $E8BF
;t $E8CA
;b $E8CF
;t $E955
;b $E958
;t $E965
;b $E968
;t $E98B
;b $E990
;t $E9AC
;b $E9B8
;t $E9C4
;b $E9C9
;t $E9D4
;b $E9D8
;t $E9EC
;b $E9F0
;t $EA34
;b $EA39
;t $EA44
;b $EA48
;t $EA5C
;b $EA60
;t $EA94
;b $EA99
;t $EAB3
;b $EAB8
;t $EAC3
;b $EAC6
;t $EB0C
;b $EB11
;t $EB43
;b $EB48
;t $EB7E
;b $EB85
;t $EBA5
;b $EBA8
;t $EBB3
;b $EBB6
;t $EF91
;b $EF99
;t $F22A
;b $F22D
;t $F314
;b $F318
;t $F352
;b $F35F
;t $F43C
;b $F441
;t $F624
;b $F62C
;t $F649
;b $F651
;t $F681
;b $F685
;t $F6B9
;b $F6BD
;t $F764
;b $F771
;t $F7EA
;b $F7EE
;t $F80D
;b $F830
;t $F85B
;b $F85E
;t $F8B3
;b $F8B7
;t $F90A
;b $F90E
;t $F944
;b $F949
;t $F95A
;b $F95D
;t $F985
;b $F989
;t $FD5C
;b $FD61
;t $FDB4
;b $FDC1
;t $FE41
;b $FE46
;t $FE7E
;b $FE83
;t $FEAC
;b $FEB1
;b $FF58 UDG
