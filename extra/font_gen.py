import pprint

primeira_letra = 0x20
ultima_letra = 0x7F

font = {}

letra = primeira_letra
file = open("font.bin", 'rb')
print "font = {"
while letra <= ultima_letra:
	bytes = file.read(8)
	print "\t'%02X': [" % (letra),
	for b in bytes:
		print "0x%02X, " % (ord(b)),
	print "], "
	letra += 1
print "}"
