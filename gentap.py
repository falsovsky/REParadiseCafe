#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
sys.path.append('./extra')
import basic
import scr

def read_bin_file(fname):
    with open(fname, 'rb') as f:
        return bytearray(f.read()) # PY: 'return f.read()' in Python 3

def get_str(chars):
    return [ord(c) for c in chars]

def get_word(word):
    return (word % 256, word // 256)

def get_parity(data):
    parity = 0
    for b in data[2:]:
        parity ^= b
    return parity

def gen_basic_loader(title):
    header = []
    header.extend(get_word(19))                  # Length of header block
    header.append(0)                             # Header block marker
    header.append(0)                             # BASIC program follows
    header.extend(get_str(title[:10].ljust(10))) # Title padded with spaces
    header.extend(get_word(len(basic.basic_data)))
    header.extend(get_word(10))                  # RUN 10 after LOADing
    #header.extend(get_word(32768))              # Nao autoloada
    header.extend(get_word(len(basic.basic_data)))
    header.append(get_parity(header))

    data = [] 
    data.extend(get_word(len(basic.basic_data)+2))
    data.append(255)
    for i in basic.basic_data:
        data.append(i)
    data.append(get_parity(data))
    return header + data

def gen_screen(title):
    header = []
    header.extend(get_word(19))
    header.append(0)
    header.append(3)
    header.extend(get_str(title[:10].ljust(10)))
    header.extend(get_word(6912))
    header.extend(get_word(16384))
    header.extend(get_word(0))
    header.append(get_parity(header))

    data = []
    data.extend(get_word(len(scr.screen_data)+2))
    data.append(255)
    for i in scr.screen_data:
        data.append(i)
    data.append(get_parity(data))
    return header + data

def gen_code(title):
    bin_data = read_bin_file("ParadiseCafe.bin")

    header = []
    header.extend(get_word(19))
    header.append(0)
    header.append(3)
    header.extend(get_str(title[:10].ljust(10)))
    header.extend(get_word(len(bin_data)))
    header.extend(get_word(30000))
    header.extend(get_word(0))
    header.append(get_parity(header))

    data = []
    data.extend(get_word(len(bin_data)+2))
    data.append(255)
    for i in bin_data:
        data.append(i)
    data.append(get_parity(data))
    return header + data


tap_data = gen_basic_loader("benfica")
tap_data.extend(gen_screen("glorioso"))
tap_data.extend(gen_code("barbas"))

with open("ParadiseCafe.tap", 'wb') as f:
    f.write(bytearray(tap_data))

