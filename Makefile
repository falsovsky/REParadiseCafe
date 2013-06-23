OUTPUT?=/home/falso/public_html/p
SNA2SKOOL_OPTIONS=-h -H
SKOOL2HTML_OPTIONS=-d $(OUTPUT) -a

PARADISECAFE=ParadiseCafe

all:
	rm -rf $(OUTPUT)
	mkdir -p $(OUTPUT)
	sna2skool.py $(SNA2SKOOL_OPTIONS) -c $(PARADISECAFE).ctl $(PARADISECAFE).z80 > $(PARADISECAFE).skool 
	skool2html.py $(SKOOL2HTML_OPTIONS) -H $(PARADISECAFE).skool

install:
	cp $(PARADISECAFE).py `skool2html.py -p`

asm:
	skool2asm.py -D -c ParadiseCafe.skool > ParadiseCafe.asm
	pasmo ParadiseCafe.asm ParadiseCafe.bin
	#bin2tap.py -o 16384 -s 30698 ParadiseCafe.bin
	#bin2tap.py --org 30000 --start 30698 ParadiseCafe.bin
	bin2tap.py ParadiseCafe.bin

clean:
	rm -f ParadiseCafe.asm ParadiseCafe.bin ParadiseCafe.tap
