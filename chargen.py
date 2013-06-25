#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys

chars1 = 0x7F52
c1 = list(range(0x7F52,0x87FF))
chars2 = 0x8A70
c2 = list(range(0x8A70,0x9087))
chars3 = 0xC350
c3 = list(range(0xC350,0xFFFF))

val = int(sys.argv[1], 16)
vc1 = val + 0x100
vc2 = val + 0x3FF

if (vc1 in c1 or vc2 in c1):
    sel = chars1
    label = 'chars1'
elif (vc1 in c2 or vc2 in c2):
    sel = chars2
    label = 'chars2'
elif (vc1 in c3 or vc2 in c3):
    sel = chars3
    label = 'chars3'

#print "chars %s 0x%04X" % (label, sel)
#print "value 0x%04X" % val

zbr = val - sel
if zbr < 0:
    sign = '-'
else:
    sign = '+'
print "'%04X': '%s%s$%04X'," % (val, label, sign, abs(zbr))
