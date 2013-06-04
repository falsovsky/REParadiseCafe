OUTPUT?=/home/falso/public_html/p
SNA2SKOOL_OPTIONS=-h -H
SKOOL2HTML_OPTIONS=-d $(OUTPUT) -a

#./sna2skool.py -h -H -c paradisecafe.ctl paradisecafe.z80 > paradisecafe.skool && ./skool2html.py -d /home/falso/public_html/p -H paradisecafe.skool

PARADISECAFE=ParadiseCafe
all:
	rm -rf $(OUTPUT)
	mkdir -p $(OUTPUT)
	sna2skool.py $(SNA2SKOOL_OPTIONS) -c $(PARADISECAFE).ctl $(PARADISECAFE).z80 > $(PARADISECAFE).skool 
	skool2html.py $(SKOOL2HTML_OPTIONS) -H $(PARADISECAFE).skool

install:
	cp $(PARADISECAFE).py `skool2html.py -p`

