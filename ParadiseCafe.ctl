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
B $75E2,$3 AT - X = 18, Y = 0
B $75E5,$2 PAPER 0
B $75E7,$2 INK 2
B $75EB,$1 UDG 67 - ADDR = $8CA8 - AT $12,$02 - ATTRIBUTES $02 - #HTML[<br/>#UDG$8CA8,2(8ca8_02)]
B $75EC,$3 AT - X = 19, Y = 0
B $75F0,$1 UDG 67 - ADDR = $8CA8 - AT $13,$01 - ATTRIBUTES $02 - #HTML[<br/>#UDG$8CA8,2(8ca8_02)]
B $75F2,$3 AT - X = 20, Y = 0
B $75F5,$1 UDG 67 - ADDR = $8CA8 - AT $14,$00 - ATTRIBUTES $02 - #HTML[<br/>#UDG$8CA8,2(8ca8_02)]
B $75F8,$3 AT - X = 21, Y = 0
B $75FE,$3 AT - X = 10, Y = 6
B $7601,$2 INK 5
B $7603,$1 UDG 6C - ADDR = $8CD0 - AT $0A,$06 - ATTRIBUTES $05 - #HTML[<br/>#UDG$8CD0,5(8cd0_05)]
B $7604,$3 AT - X = 11, Y = 6
B $7607,$1 UDG 6D - ADDR = $8CD8 - AT $0B,$06 - ATTRIBUTES $05 - #HTML[<br/>#UDG$8CD8,5(8cd8_05)]
B $7608,$3 AT - X = 12, Y = 4
B $760B,$2 INK 3
B $760D,$1 UDG 68 - ADDR = $8CB0 - AT $0C,$04 - ATTRIBUTES $03 - #HTML[<br/>#UDG$8CB0,3(8cb0_03)]
B $760E,$2 PAPER 3
B $7610,$2 INK 7
B $7612,$1 UDG 6F - ADDR = $8CE8 - AT $0C,$05 - ATTRIBUTES $1F - #HTML[<br/>#UDG$8CE8,31(8ce8_1f)]
B $7613,$1 UDG 6E - ADDR = $8CE0 - AT $0C,$06 - ATTRIBUTES $1F - #HTML[<br/>#UDG$8CE0,31(8ce0_1f)]
B $7614,$3 AT - X = 13, Y = 4
B $7617,$2 INK 3
B $7619,$2 PAPER 0
B $761B,$1 UDG 69 - ADDR = $8CB8 - AT $0D,$04 - ATTRIBUTES $03 - #HTML[<br/>#UDG$8CB8,3(8cb8_03)]
B $761C,$2 PAPER 3
B $761E,$2 INK 7
B $7620,$1 UDG 70 - ADDR = $8CF0 - AT $0D,$05 - ATTRIBUTES $1F - #HTML[<br/>#UDG$8CF0,31(8cf0_1f)]
B $7621,$3 AT - X = 14, Y = 4
B $7624,$2 INK 3
B $7626,$2 PAPER 0
B $7628,$1 UDG 6A - ADDR = $8CC0 - AT $0E,$04 - ATTRIBUTES $03 - #HTML[<br/>#UDG$8CC0,3(8cc0_03)]
B $7629,$2 INK 7
B $762B,$2 PAPER 3
B $762D,$1 UDG 71 - ADDR = $8CF8 - AT $0E,$05 - ATTRIBUTES $1F - #HTML[<br/>#UDG$8CF8,31(8cf8_1f)]
B $762E,$3 AT - X = 15, Y = 4
B $7631,$2 INK 3
B $7633,$2 PAPER 0
B $7635,$1 UDG 6B - ADDR = $8CC8 - AT $0F,$04 - ATTRIBUTES $03 - #HTML[<br/>#UDG$8CC8,3(8cc8_03)]
B $7636,$2 INK 7
B $7638,$3 AT - X = 10, Y = 21
B $763B,$2 PAPER 0
B $763D,$1 UDG 6C - ADDR = $8CD0 - AT $0A,$15 - ATTRIBUTES $07 - #HTML[<br/>#UDG$8CD0,7(8cd0_07)]
B $763E,$3 AT - X = 11, Y = 21
B $7641,$1 UDG 6D - ADDR = $8CD8 - AT $0B,$15 - ATTRIBUTES $07 - #HTML[<br/>#UDG$8CD8,7(8cd8_07)]
B $7642,$3 AT - X = 12, Y = 20
B $7645,$2 PAPER 3
B $7647,$1 UDG 6F - ADDR = $8CE8 - AT $0C,$14 - ATTRIBUTES $1F - #HTML[<br/>#UDG$8CE8,31(8ce8_1f)]
B $7648,$1 UDG 6E - ADDR = $8CE0 - AT $0C,$15 - ATTRIBUTES $1F - #HTML[<br/>#UDG$8CE0,31(8ce0_1f)]
B $7649,$2 INK 0
B $764B,$1 UDG 6B - ADDR = $8CC8 - AT $0C,$16 - ATTRIBUTES $18 - #HTML[<br/>#UDG$8CC8,24(8cc8_18)]
B $764C,$3 AT - X = 13, Y = 20
B $764F,$2 INK 7
B $7651,$1 UDG 70 - ADDR = $8CF0 - AT $0D,$14 - ATTRIBUTES $1F - #HTML[<br/>#UDG$8CF0,31(8cf0_1f)]
B $7652,$2 INK 0
B $7654,$1 UDG 68 - ADDR = $8CB0 - AT $0D,$15 - ATTRIBUTES $18 - #HTML[<br/>#UDG$8CB0,24(8cb0_18)]
B $7655,$3 AT - X = 14, Y = 20
B $7658,$2 INK 7
B $765A,$1 UDG 71 - ADDR = $8CF8 - AT $0E,$14 - ATTRIBUTES $1F - #HTML[<br/>#UDG$8CF8,31(8cf8_1f)]
B $765B,$2 INK 0
B $765D,$1 UDG 69 - ADDR = $8CB8 - AT $0E,$15 - ATTRIBUTES $18 - #HTML[<br/>#UDG$8CB8,24(8cb8_18)]
B $765E,$3 AT - X = 15, Y = 21
B $7661,$1 UDG 6A - ADDR = $8CC0 - AT $0F,$15 - ATTRIBUTES $18 - #HTML[<br/>#UDG$8CC0,24(8cc0_18)]
B $7662,$3 AT - X = 1, Y = 24
B $7665,$2 INK 2
B $7667,$2 PAPER 1
B $766B,$2 INK 0
B $766E,$2 INK 6
B $7670,$1 UDG 72 - ADDR = $8D00 - AT $01,$1B - ATTRIBUTES $0E - #HTML[<br/>#UDG$8D00,14(8d00_0e)]
B $7671,$2 INK 0
B $7675,$3 AT - X = 2, Y = 24
B $7678,$2 INK 2
B $767C,$2 INK 0
B $767F,$2 INK 6
B $7681,$1 UDG 73 - ADDR = $8D08 - AT $02,$1B - ATTRIBUTES $0E - #HTML[<br/>#UDG$8D08,14(8d08_0e)]
B $7682,$2 INK 0
B $7685,$2 INK 7
B $7687,$1 UDG 76 - ADDR = $8D20 - AT $02,$1D - ATTRIBUTES $0F - #HTML[<br/>#UDG$8D20,15(8d20_0f)]
B $7688,$3 AT - X = 3, Y = 24
B $768B,$2 INK 2
B $768F,$2 INK 0
B $7692,$2 INK 7
B $7694,$1 UDG 74 - ADDR = $8D10 - AT $03,$1B - ATTRIBUTES $0F - #HTML[<br/>#UDG$8D10,15(8d10_0f)]
B $7695,$2 INK 0
B $7698,$2 INK 7
B $769A,$1 UDG 77 - ADDR = $8D28 - AT $03,$1D - ATTRIBUTES $0F - #HTML[<br/>#UDG$8D28,15(8d28_0f)]
B $769B,$3 AT - X = 4, Y = 24
B $769E,$2 INK 2
B $76A2,$2 INK 0
B $76A5,$2 INK 7
B $76A7,$1 UDG 75 - ADDR = $8D18 - AT $04,$1B - ATTRIBUTES $0F - #HTML[<br/>#UDG$8D18,15(8d18_0f)]
B $76A8,$2 INK 0
B $76AC,$3 AT - X = 5, Y = 24
B $76AF,$2 INK 2
B $76B3,$2 INK 0
B $76B5,$2 PAPER 2
B $76BB,$3 AT - X = 3, Y = 12
B $76BE,$2 INK 7
B $76C0,$2 PAPER 0
B $76C2,$1 UDG 20 - ADDR = $8A70 - AT $03,$0C - ATTRIBUTES $07 - #HTML[<br/>#UDG$8A70,7(8a70_07)]
B $76C3,$1 UDG 21 - ADDR = $8A78 - AT $03,$0D - ATTRIBUTES $07 - #HTML[<br/>#UDG$8A78,7(8a78_07)]
B $76C4,$1 UDG 22 - ADDR = $8A80 - AT $03,$0E - ATTRIBUTES $07 - #HTML[<br/>#UDG$8A80,7(8a80_07)]
B $76C5,$3 AT - X = 4, Y = 12
B $76C8,$2 INK 6
B $76CA,$1 UDG 23 - ADDR = $8A88 - AT $04,$0C - ATTRIBUTES $06 - #HTML[<br/>#UDG$8A88,6(8a88_06)]
B $76CC,$1 UDG 24 - ADDR = $8A90 - AT $04,$0E - ATTRIBUTES $06 - #HTML[<br/>#UDG$8A90,6(8a90_06)]
B $76CD,$3 AT - X = 5, Y = 12
B $76D0,$1 UDG 25 - ADDR = $8A98 - AT $05,$0C - ATTRIBUTES $06 - #HTML[<br/>#UDG$8A98,6(8a98_06)]
B $76D1,$1 UDG 26 - ADDR = $8AA0 - AT $05,$0D - ATTRIBUTES $06 - #HTML[<br/>#UDG$8AA0,6(8aa0_06)]
B $76D2,$1 UDG 27 - ADDR = $8AA8 - AT $05,$0E - ATTRIBUTES $06 - #HTML[<br/>#UDG$8AA8,6(8aa8_06)]
B $76D3,$3 AT - X = 6, Y = 12
B $76D6,$1 UDG 28 - ADDR = $8AB0 - AT $06,$0C - ATTRIBUTES $06 - #HTML[<br/>#UDG$8AB0,6(8ab0_06)]
B $76D7,$1 UDG 29 - ADDR = $8AB8 - AT $06,$0D - ATTRIBUTES $06 - #HTML[<br/>#UDG$8AB8,6(8ab8_06)]
B $76D8,$1 UDG 2A - ADDR = $8AC0 - AT $06,$0E - ATTRIBUTES $06 - #HTML[<br/>#UDG$8AC0,6(8ac0_06)]
B $76D9,$3 AT - X = 7, Y = 10
B $76DC,$1 UDG 2B - ADDR = $8AC8 - AT $07,$0A - ATTRIBUTES $06 - #HTML[<br/>#UDG$8AC8,6(8ac8_06)]
B $76DD,$1 UDG 2C - ADDR = $8AD0 - AT $07,$0B - ATTRIBUTES $06 - #HTML[<br/>#UDG$8AD0,6(8ad0_06)]
B $76DE,$2 INK 7
B $76E3,$2 INK 6
B $76E5,$1 UDG 41 - ADDR = $8B78 - AT $07,$0F - ATTRIBUTES $06 - #HTML[<br/>#UDG$8B78,6(8b78_06)]
B $76E6,$1 UDG 42 - ADDR = $8B80 - AT $07,$10 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8B80,6(8b80_06)]
B $76E7,$3 AT - X = 8, Y = 10
B $76EA,$1 UDG 2D - ADDR = $8AD8 - AT $08,$0A - ATTRIBUTES $06 - #HTML[<br/>#UDG$8AD8,6(8ad8_06)]
B $76EB,$1 UDG 2E - ADDR = $8AE0 - AT $08,$0B - ATTRIBUTES $06 - #HTML[<br/>#UDG$8AE0,6(8ae0_06)]
B $76EC,$2 INK 7
B $76F1,$2 INK 6
B $76F3,$1 UDG 43 - ADDR = $8B88 - AT $08,$0F - ATTRIBUTES $06 - #HTML[<br/>#UDG$8B88,6(8b88_06)]
B $76F4,$1 UDG 44 - ADDR = $8B90 - AT $08,$10 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8B90,6(8b90_06)]
B $76F5,$1 UDG 45 - ADDR = $8B98 - AT $08,$11 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8B98,6(8b98_06)]
B $76F6,$3 AT - X = 9, Y = 9
B $76F9,$1 UDG 2F - ADDR = $8AE8 - AT $09,$09 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8AE8,6(8ae8_06)]
B $76FA,$1 UDG 30 - ADDR = $8AF0 - AT $09,$0A - ATTRIBUTES $06 - #HTML[<br/>#UDG$8AF0,6(8af0_06)]
B $76FB,$1 UDG 31 - ADDR = $8AF8 - AT $09,$0B - ATTRIBUTES $06 - #HTML[<br/>#UDG$8AF8,6(8af8_06)]
B $76FC,$2 INK 7
B $7701,$1 UDG 46 - ADDR = $8BA0 - AT $09,$0F - ATTRIBUTES $07 - #HTML[<br/>#UDG$8BA0,7(8ba0_07)]
B $7702,$2 INK 6
B $7704,$1 UDG 47 - ADDR = $8BA8 - AT $09,$10 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8BA8,6(8ba8_06)]
B $7705,$1 UDG 48 - ADDR = $8BB0 - AT $09,$11 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8BB0,6(8bb0_06)]
B $7706,$3 AT - X = 10, Y = 9
B $7709,$1 UDG 32 - ADDR = $8B00 - AT $0A,$09 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8B00,6(8b00_06)]
B $770A,$1 UDG 33 - ADDR = $8B08 - AT $0A,$0A - ATTRIBUTES $06 - #HTML[<br/>#UDG$8B08,6(8b08_06)]
B $770B,$2 INK 7
B $770D,$1 UDG 34 - ADDR = $8B10 - AT $0A,$0B - ATTRIBUTES $07 - #HTML[<br/>#UDG$8B10,7(8b10_07)]
B $770E,$2 INK 6
B $7710,$2 PAPER 7
B $7712,$2 INK 2
B $7714,$1 UDG 35 - ADDR = $8B18 - AT $0A,$0C - ATTRIBUTES $3A - #HTML[<br/>#UDG$8B18,58(8b18_3a)]
B $7715,$1 UDG 36 - ADDR = $8B20 - AT $0A,$0D - ATTRIBUTES $3A - #HTML[<br/>#UDG$8B20,58(8b20_3a)]
B $7717,$2 INK 7
B $7719,$2 PAPER 0
B $771B,$1 UDG 49 - ADDR = $8BB8 - AT $0A,$0F - ATTRIBUTES $07 - #HTML[<br/>#UDG$8BB8,7(8bb8_07)]
B $771D,$2 INK 6
B $771F,$1 UDG 4A - ADDR = $8BC0 - AT $0A,$11 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8BC0,6(8bc0_06)]
B $7720,$1 UDG 4B - ADDR = $8BC8 - AT $0A,$12 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8BC8,6(8bc8_06)]
B $7721,$3 AT - X = 11, Y = 14
B $7724,$2 INK 7
B $7728,$2 INK 6
B $772A,$1 UDG 4C - ADDR = $8BD0 - AT $0B,$10 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8BD0,6(8bd0_06)]
B $772B,$1 UDG 4D - ADDR = $8BD8 - AT $0B,$11 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8BD8,6(8bd8_06)]
B $772C,$1 UDG 4E - ADDR = $8BE0 - AT $0B,$12 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8BE0,6(8be0_06)]
B $772D,$3 AT - X = 12, Y = 14
B $7730,$2 PAPER 3
B $7733,$1 UDG 4F - ADDR = $8BE8 - AT $0C,$0F - ATTRIBUTES $1E - #HTML[<br/>#UDG$8BE8,30(8be8_1e)]
B $7734,$1 UDG 50 - ADDR = $8BF0 - AT $0C,$10 - ATTRIBUTES $1E - #HTML[<br/>#UDG$8BF0,30(8bf0_1e)]
B $7735,$1 UDG 51 - ADDR = $8BF8 - AT $0C,$11 - ATTRIBUTES $1E - #HTML[<br/>#UDG$8BF8,30(8bf8_1e)]
B $7736,$3 AT - X = 13, Y = 10
B $7739,$1 UDG 37 - ADDR = $8B28 - AT $0D,$0A - ATTRIBUTES $1E - #HTML[<br/>#UDG$8B28,30(8b28_1e)]
B $773B,$1 UDG 38 - ADDR = $8B30 - AT $0D,$0C - ATTRIBUTES $1E - #HTML[<br/>#UDG$8B30,30(8b30_1e)]
B $773C,$1 UDG 39 - ADDR = $8B38 - AT $0D,$0D - ATTRIBUTES $1E - #HTML[<br/>#UDG$8B38,30(8b38_1e)]
B $773E,$1 UDG 52 - ADDR = $8C00 - AT $0D,$0F - ATTRIBUTES $1E - #HTML[<br/>#UDG$8C00,30(8c00_1e)]
B $773F,$1 UDG 53 - ADDR = $8C08 - AT $0D,$10 - ATTRIBUTES $1E - #HTML[<br/>#UDG$8C08,30(8c08_1e)]
B $7740,$3 AT - X = 14, Y = 9
B $7743,$1 UDG 3A - ADDR = $8B40 - AT $0E,$09 - ATTRIBUTES $1E - #HTML[<br/>#UDG$8B40,30(8b40_1e)]
B $7745,$1 UDG 3B - ADDR = $8B48 - AT $0E,$0B - ATTRIBUTES $1E - #HTML[<br/>#UDG$8B48,30(8b48_1e)]
B $7746,$1 UDG 3C - ADDR = $8B50 - AT $0E,$0C - ATTRIBUTES $1E - #HTML[<br/>#UDG$8B50,30(8b50_1e)]
B $7747,$1 UDG 3D - ADDR = $8B58 - AT $0E,$0D - ATTRIBUTES $1E - #HTML[<br/>#UDG$8B58,30(8b58_1e)]
B $7748,$1 UDG 5D - ADDR = $8C58 - AT $0E,$0E - ATTRIBUTES $1E - #HTML[<br/>#UDG$8C58,30(8c58_1e)]
B $774A,$1 UDG 5E - ADDR = $8C60 - AT $0E,$10 - ATTRIBUTES $1E - #HTML[<br/>#UDG$8C60,30(8c60_1e)]
B $774B,$3 AT - X = 15, Y = 9
B $774E,$1 UDG 3E - ADDR = $8B60 - AT $0F,$09 - ATTRIBUTES $1E - #HTML[<br/>#UDG$8B60,30(8b60_1e)]
B $774F,$1 UDG 3F - ADDR = $8B68 - AT $0F,$0A - ATTRIBUTES $1E - #HTML[<br/>#UDG$8B68,30(8b68_1e)]
B $7750,$1 UDG 40 - ADDR = $8B70 - AT $0F,$0B - ATTRIBUTES $1E - #HTML[<br/>#UDG$8B70,30(8b70_1e)]
B $7753,$1 UDG 5F - ADDR = $8C68 - AT $0F,$0E - ATTRIBUTES $1E - #HTML[<br/>#UDG$8C68,30(8c68_1e)]
B $7754,$1 UDG 60 - ADDR = $8C70 - AT $0F,$0F - ATTRIBUTES $1E - #HTML[<br/>#UDG$8C70,30(8c70_1e)]
B $7755,$1 UDG 54 - ADDR = $8C10 - AT $0F,$10 - ATTRIBUTES $1E - #HTML[<br/>#UDG$8C10,30(8c10_1e)]
B $7756,$3 AT - X = 16, Y = 9
B $7759,$2 PAPER 0
B $775B,$1 UDG 3E - ADDR = $8B60 - AT $10,$09 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8B60,6(8b60_06)]
B $775C,$1 UDG 54 - ADDR = $8C10 - AT $10,$0A - ATTRIBUTES $06 - #HTML[<br/>#UDG$8C10,6(8c10_06)]
B $7761,$1 UDG 3E - ADDR = $8B60 - AT $10,$0F - ATTRIBUTES $06 - #HTML[<br/>#UDG$8B60,6(8b60_06)]
B $7762,$1 UDG 54 - ADDR = $8C10 - AT $10,$10 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8C10,6(8c10_06)]
B $7763,$3 AT - X = 17, Y = 9
B $7766,$1 UDG 3E - ADDR = $8B60 - AT $11,$09 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8B60,6(8b60_06)]
B $7767,$1 UDG 55 - ADDR = $8C18 - AT $11,$0A - ATTRIBUTES $06 - #HTML[<br/>#UDG$8C18,6(8c18_06)]
B $776C,$1 UDG 3E - ADDR = $8B60 - AT $11,$0F - ATTRIBUTES $06 - #HTML[<br/>#UDG$8B60,6(8b60_06)]
B $776D,$1 UDG 55 - ADDR = $8C18 - AT $11,$10 - ATTRIBUTES $06 - #HTML[<br/>#UDG$8C18,6(8c18_06)]
B $776E,$3 AT - X = 18, Y = 9
B $7771,$2 PAPER 2
B $7773,$1 UDG 3E - ADDR = $8B60 - AT $12,$09 - ATTRIBUTES $16 - #HTML[<br/>#UDG$8B60,22(8b60_16)]
B $7774,$1 UDG 56 - ADDR = $8C20 - AT $12,$0A - ATTRIBUTES $16 - #HTML[<br/>#UDG$8C20,22(8c20_16)]
B $7779,$1 UDG 61 - ADDR = $8C78 - AT $12,$0F - ATTRIBUTES $16 - #HTML[<br/>#UDG$8C78,22(8c78_16)]
B $777A,$1 UDG 62 - ADDR = $8C80 - AT $12,$10 - ATTRIBUTES $16 - #HTML[<br/>#UDG$8C80,22(8c80_16)]
B $777B,$3 AT - X = 19, Y = 9
B $777E,$1 UDG 3E - ADDR = $8B60 - AT $13,$09 - ATTRIBUTES $16 - #HTML[<br/>#UDG$8B60,22(8b60_16)]
B $777F,$1 UDG 57 - ADDR = $8C28 - AT $13,$0A - ATTRIBUTES $16 - #HTML[<br/>#UDG$8C28,22(8c28_16)]
B $7784,$1 UDG 63 - ADDR = $8C88 - AT $13,$0F - ATTRIBUTES $16 - #HTML[<br/>#UDG$8C88,22(8c88_16)]
B $7785,$1 UDG 64 - ADDR = $8C90 - AT $13,$10 - ATTRIBUTES $16 - #HTML[<br/>#UDG$8C90,22(8c90_16)]
B $7786,$3 AT - X = 20, Y = 8
B $7789,$1 UDG 5B - ADDR = $8C48 - AT $14,$08 - ATTRIBUTES $16 - #HTML[<br/>#UDG$8C48,22(8c48_16)]
B $778A,$1 UDG 58 - ADDR = $8C30 - AT $14,$09 - ATTRIBUTES $16 - #HTML[<br/>#UDG$8C30,22(8c30_16)]
B $778B,$1 UDG 59 - ADDR = $8C38 - AT $14,$0A - ATTRIBUTES $16 - #HTML[<br/>#UDG$8C38,22(8c38_16)]
B $7791,$1 UDG 65 - ADDR = $8C98 - AT $14,$10 - ATTRIBUTES $16 - #HTML[<br/>#UDG$8C98,22(8c98_16)]
B $7792,$1 UDG 66 - ADDR = $8CA0 - AT $14,$11 - ATTRIBUTES $16 - #HTML[<br/>#UDG$8CA0,22(8ca0_16)]
B $7793,$3 AT - X = 21, Y = 8
B $7796,$1 UDG 5C - ADDR = $8C50 - AT $15,$08 - ATTRIBUTES $16 - #HTML[<br/>#UDG$8C50,22(8c50_16)]
B $7797,$1 UDG 5A - ADDR = $8C40 - AT $15,$09 - ATTRIBUTES $16 - #HTML[<br/>#UDG$8C40,22(8c40_16)]
E $75E2 #HTML[#CALL:decode_data($8970,$75E2)]

b $7799 Canhola - Frame 1
  $7799 #HTML[#CALL:decode_data($8C30,$7799)]

b $77B6 Canhola - Frame 2
  $77B6 #HTML[#CALL:decode_data($8C30,$77B6)]

b $77D5 The End
  $77D5 #HTML[#CALL:decode_data($3C00,$77D5)]

z $77E4

c $77EA Inicio do codigo!
  $77EA,$f Espera que se pressione uma tecla
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
z $88FF
c $8900

t $89A6 Recordista do jogo

b $89D2 Novo record - Introduza o seu nome .
  $89D2 #HTML[#CALL:decode_data($3C00,$89D2)]

b $8A09 Esta correcto o seu nome ?
  $8A09 #HTML[#CALL:decode_data($3C00,$8A09)]

b $8A29 Duas linhas pretas
  $8A29 #HTML[#CALL:decode_data($3C00,$8A29)]

b $8A70 CHARS

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

b $B0E4 Animacao Pernas - Frame 1
  $B0E4 #HTML[#CALL:decode_data($C250,$B0E4)]

b $B14C Animacao Pernas - Frame 2
  $B14C #HTML[#CALL:decode_data($C328,$B14C)]

b $B1B5 Animacao Pernas - Frame 3
  $B1B5 #HTML[#CALL:decode_data($C420,$B1B5)]

b $B226 Animacao Pernas - Frame 4
  $B226 #HTML[#CALL:decode_data($C538,$B226)]

b $B299 Animacao Pernas - Frame 5
  $B299 #HTML[#CALL:decode_data($C638,$B299)]

z $B309
c $B30A

b $B353 Entrar na porta - Frame 1
  $B353 #HTML[#CALL:decode_data($C740,$B353)]

b $B3DF Entrar na porta - Frame 2
  $B3DF #HTML[#CALL:decode_data($C740,$B3DF)]

c $B46C
c $B477
c $B486
z $B48E

; @label:$B48F=abrePorta
c $B48F Animação da porta a abrir

z $B4EF

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

b $B7A4 Barra do Highscore?
  $B7A4 #HTML[#CALL:decode_data($3C00,$B7A4)] 

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

z $B9A9
c $B9AF Calcular variaveis/Refresh delas no ecrã

b $B9F1 SCORE= 
  $B9F1 #HTML[#CALL:decode_data($3C00,$B9F1)]

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

b $C2CE DESPESA
  $C2CE #HTML[#CALL:decode_data($3C00,$C2CE)]

z $C2DE

c $C2DF

b $C302 HISCORE =
  $C302 #HTML[#CALL:decode_data($3C00,$C302)]

z $C314

b $C336

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

b $C350 CHARS
