chars=0xc8e0

d = 0x02
e = 0x0a
c = 0x0f

while c != 0:
    a = 0x16
    print "%02X" % (a),
    a = d
    print "%02X" % (a),
    a = e
    print "%02X" % (a),
    b = 0x05

    while b != 0:
        a = 0x80
        print "%02X" % (a),
        b -= 1

    d += 1
    c -= 1

