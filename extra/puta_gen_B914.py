chars=0xc8e0

d = 0x02
e = 0x0f
c = 0x04

while c != 0:
    a = 0x16
    print "%02X" % (a),
    a = d
    print "%02X" % (a),
    a = e
    print "%02X" % (a)
    a = 0x11
    print "%02X" % (a),
    a = 0x01
    print "%02X" % (a)
    a = 0x80
    print "%02X" % (a)
    a = 0x11
    print "%02X" % (a),
    a = 0x02
    print "%02X" % (a)

    b = 0x06
    while b != 0:
    	a = 0x80
    	print "%02X" % (a)
	b -= 1

    d += 1
    c -= 1

