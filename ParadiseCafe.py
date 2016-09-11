# -*- coding: utf-8 -*- 
# SkoolKit extension for Paradise Café by DAMATTA.
#
# This file copyright (c) Pedro de Oliveira, 2013. <falsovsky@gmail.com>
#
import string

from skoolkit.skoolhtml import HtmlWriter, Udg
from skoolkit.skoolasm import AsmWriter

class ParadiseCafeHtmlWriter(HtmlWriter):

    font = {
        '20': [ 0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  ],
        '21': [ 0x00,  0x10,  0x10,  0x10,  0x10,  0x00,  0x10,  0x00,  ],
        '22': [ 0x00,  0x24,  0x24,  0x00,  0x00,  0x00,  0x00,  0x00,  ],
        '23': [ 0x00,  0x24,  0x7E,  0x24,  0x24,  0x7E,  0x24,  0x00,  ],
        '24': [ 0x00,  0x08,  0x3E,  0x28,  0x3E,  0x0A,  0x3E,  0x08,  ],
        '25': [ 0x00,  0x62,  0x64,  0x08,  0x10,  0x26,  0x46,  0x00,  ],
        '26': [ 0x00,  0x10,  0x28,  0x10,  0x2A,  0x44,  0x3A,  0x00,  ],
        '27': [ 0x00,  0x08,  0x10,  0x00,  0x00,  0x00,  0x00,  0x00,  ],
        '28': [ 0x00,  0x04,  0x08,  0x08,  0x08,  0x08,  0x04,  0x00,  ],
        '29': [ 0x00,  0x20,  0x10,  0x10,  0x10,  0x10,  0x20,  0x00,  ],
        '2A': [ 0x00,  0x00,  0x14,  0x08,  0x3E,  0x08,  0x14,  0x00,  ],
        '2B': [ 0x00,  0x00,  0x08,  0x08,  0x3E,  0x08,  0x08,  0x00,  ],
        '2C': [ 0x00,  0x00,  0x00,  0x00,  0x00,  0x08,  0x08,  0x10,  ],
        '2D': [ 0x00,  0x00,  0x00,  0x00,  0x3E,  0x00,  0x00,  0x00,  ],
        '2E': [ 0x00,  0x00,  0x00,  0x00,  0x00,  0x18,  0x18,  0x00,  ],
        '2F': [ 0x00,  0x00,  0x02,  0x04,  0x08,  0x10,  0x20,  0x00,  ],
        '30': [ 0x00,  0x3C,  0x46,  0x4A,  0x52,  0x62,  0x3C,  0x00,  ],
        '31': [ 0x00,  0x18,  0x28,  0x08,  0x08,  0x08,  0x3E,  0x00,  ],
        '32': [ 0x00,  0x3C,  0x42,  0x02,  0x3C,  0x40,  0x7E,  0x00,  ],
        '33': [ 0x00,  0x3C,  0x42,  0x0C,  0x02,  0x42,  0x3C,  0x00,  ],
        '34': [ 0x00,  0x08,  0x18,  0x28,  0x48,  0x7E,  0x08,  0x00,  ],
        '35': [ 0x00,  0x7E,  0x40,  0x7C,  0x02,  0x42,  0x3C,  0x00,  ],
        '36': [ 0x00,  0x3C,  0x40,  0x7C,  0x42,  0x42,  0x3C,  0x00,  ],
        '37': [ 0x00,  0x7E,  0x02,  0x04,  0x08,  0x10,  0x10,  0x00,  ],
        '38': [ 0x00,  0x3C,  0x42,  0x3C,  0x42,  0x42,  0x3C,  0x00,  ],
        '39': [ 0x00,  0x3C,  0x42,  0x42,  0x3E,  0x02,  0x3C,  0x00,  ],
        '3A': [ 0x00,  0x00,  0x00,  0x10,  0x00,  0x00,  0x10,  0x00,  ],
        '3B': [ 0x00,  0x00,  0x10,  0x00,  0x00,  0x10,  0x10,  0x20,  ],
        '3C': [ 0x00,  0x00,  0x04,  0x08,  0x10,  0x08,  0x04,  0x00,  ],
        '3D': [ 0x00,  0x00,  0x00,  0x3E,  0x00,  0x3E,  0x00,  0x00,  ],
        '3E': [ 0x00,  0x00,  0x10,  0x08,  0x04,  0x08,  0x10,  0x00,  ],
        '3F': [ 0x00,  0x3C,  0x42,  0x04,  0x08,  0x00,  0x08,  0x00,  ],
        '40': [ 0x00,  0x3C,  0x4A,  0x56,  0x5E,  0x40,  0x3C,  0x00,  ],
        '41': [ 0x00,  0x3C,  0x42,  0x42,  0x7E,  0x42,  0x42,  0x00,  ],
        '42': [ 0x00,  0x7C,  0x42,  0x7C,  0x42,  0x42,  0x7C,  0x00,  ],
        '43': [ 0x00,  0x3C,  0x42,  0x40,  0x40,  0x42,  0x3C,  0x00,  ],
        '44': [ 0x00,  0x78,  0x44,  0x42,  0x42,  0x44,  0x78,  0x00,  ],
        '45': [ 0x00,  0x7E,  0x40,  0x7C,  0x40,  0x40,  0x7E,  0x00,  ],
        '46': [ 0x00,  0x7E,  0x40,  0x7C,  0x40,  0x40,  0x40,  0x00,  ],
        '47': [ 0x00,  0x3C,  0x42,  0x40,  0x4E,  0x42,  0x3C,  0x00,  ],
        '48': [ 0x00,  0x42,  0x42,  0x7E,  0x42,  0x42,  0x42,  0x00,  ],
        '49': [ 0x00,  0x3E,  0x08,  0x08,  0x08,  0x08,  0x3E,  0x00,  ],
        '4A': [ 0x00,  0x02,  0x02,  0x02,  0x42,  0x42,  0x3C,  0x00,  ],
        '4B': [ 0x00,  0x44,  0x48,  0x70,  0x48,  0x44,  0x42,  0x00,  ],
        '4C': [ 0x00,  0x40,  0x40,  0x40,  0x40,  0x40,  0x7E,  0x00,  ],
        '4D': [ 0x00,  0x42,  0x66,  0x5A,  0x42,  0x42,  0x42,  0x00,  ],
        '4E': [ 0x00,  0x42,  0x62,  0x52,  0x4A,  0x46,  0x42,  0x00,  ],
        '4F': [ 0x00,  0x3C,  0x42,  0x42,  0x42,  0x42,  0x3C,  0x00,  ],
        '50': [ 0x00,  0x7C,  0x42,  0x42,  0x7C,  0x40,  0x40,  0x00,  ],
        '51': [ 0x00,  0x3C,  0x42,  0x42,  0x52,  0x4A,  0x3C,  0x00,  ],
        '52': [ 0x00,  0x7C,  0x42,  0x42,  0x7C,  0x44,  0x42,  0x00,  ],
        '53': [ 0x00,  0x3C,  0x40,  0x3C,  0x02,  0x42,  0x3C,  0x00,  ],
        '54': [ 0x00,  0xFE,  0x10,  0x10,  0x10,  0x10,  0x10,  0x00,  ],
        '55': [ 0x00,  0x42,  0x42,  0x42,  0x42,  0x42,  0x3C,  0x00,  ],
        '56': [ 0x00,  0x42,  0x42,  0x42,  0x42,  0x24,  0x18,  0x00,  ],
        '57': [ 0x00,  0x42,  0x42,  0x42,  0x42,  0x5A,  0x24,  0x00,  ],
        '58': [ 0x00,  0x42,  0x24,  0x18,  0x18,  0x24,  0x42,  0x00,  ],
        '59': [ 0x00,  0x82,  0x44,  0x28,  0x10,  0x10,  0x10,  0x00,  ],
        '5A': [ 0x00,  0x7E,  0x04,  0x08,  0x10,  0x20,  0x7E,  0x00,  ],
        '5B': [ 0x00,  0x0E,  0x08,  0x08,  0x08,  0x08,  0x0E,  0x00,  ],
        '5C': [ 0x00,  0x00,  0x40,  0x20,  0x10,  0x08,  0x04,  0x00,  ],
        '5D': [ 0x00,  0x70,  0x10,  0x10,  0x10,  0x10,  0x70,  0x00,  ],
        '5E': [ 0x00,  0x10,  0x38,  0x54,  0x10,  0x10,  0x10,  0x00,  ],
        '5F': [ 0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0x00,  0xFF,  ],
        '60': [ 0x00,  0x1C,  0x22,  0x78,  0x20,  0x20,  0x7E,  0x00,  ],
        '61': [ 0x00,  0x00,  0x38,  0x04,  0x3C,  0x44,  0x3C,  0x00,  ],
        '62': [ 0x00,  0x20,  0x20,  0x3C,  0x22,  0x22,  0x3C,  0x00,  ],
        '63': [ 0x00,  0x00,  0x1C,  0x20,  0x20,  0x20,  0x1C,  0x00,  ],
        '64': [ 0x00,  0x04,  0x04,  0x3C,  0x44,  0x44,  0x3C,  0x00,  ],
        '65': [ 0x00,  0x00,  0x38,  0x44,  0x78,  0x40,  0x3C,  0x00,  ],
        '66': [ 0x00,  0x0C,  0x10,  0x18,  0x10,  0x10,  0x10,  0x00,  ],
        '67': [ 0x00,  0x00,  0x3C,  0x44,  0x44,  0x3C,  0x04,  0x38,  ],
        '68': [ 0x00,  0x40,  0x40,  0x78,  0x44,  0x44,  0x44,  0x00,  ],
        '69': [ 0x00,  0x10,  0x00,  0x30,  0x10,  0x10,  0x38,  0x00,  ],
        '6A': [ 0x00,  0x04,  0x00,  0x04,  0x04,  0x04,  0x24,  0x18,  ],
        '6B': [ 0x00,  0x20,  0x28,  0x30,  0x30,  0x28,  0x24,  0x00,  ],
        '6C': [ 0x00,  0x10,  0x10,  0x10,  0x10,  0x10,  0x0C,  0x00,  ],
        '6D': [ 0x00,  0x00,  0x68,  0x54,  0x54,  0x54,  0x54,  0x00,  ],
        '6E': [ 0x00,  0x00,  0x78,  0x44,  0x44,  0x44,  0x44,  0x00,  ],
        '6F': [ 0x00,  0x00,  0x38,  0x44,  0x44,  0x44,  0x38,  0x00,  ],
        '70': [ 0x00,  0x00,  0x78,  0x44,  0x44,  0x78,  0x40,  0x40,  ],
        '71': [ 0x00,  0x00,  0x3C,  0x44,  0x44,  0x3C,  0x04,  0x06,  ],
        '72': [ 0x00,  0x00,  0x1C,  0x20,  0x20,  0x20,  0x20,  0x00,  ],
        '73': [ 0x00,  0x00,  0x38,  0x40,  0x38,  0x04,  0x78,  0x00,  ],
        '74': [ 0x00,  0x10,  0x38,  0x10,  0x10,  0x10,  0x0C,  0x00,  ],
        '75': [ 0x00,  0x00,  0x44,  0x44,  0x44,  0x44,  0x38,  0x00,  ],
        '76': [ 0x00,  0x00,  0x44,  0x44,  0x28,  0x28,  0x10,  0x00,  ],
        '77': [ 0x00,  0x00,  0x44,  0x54,  0x54,  0x54,  0x28,  0x00,  ],
        '78': [ 0x00,  0x00,  0x44,  0x28,  0x10,  0x28,  0x44,  0x00,  ],
        '79': [ 0x00,  0x00,  0x44,  0x44,  0x44,  0x3C,  0x04,  0x38,  ],
        '7A': [ 0x00,  0x00,  0x7C,  0x08,  0x10,  0x20,  0x7C,  0x00,  ],
        '7B': [ 0x00,  0x0E,  0x08,  0x30,  0x08,  0x08,  0x0E,  0x00,  ],
        '7C': [ 0x00,  0x08,  0x08,  0x08,  0x08,  0x08,  0x08,  0x00,  ],
        '7D': [ 0x00,  0x70,  0x10,  0x0C,  0x10,  0x10,  0x70,  0x00,  ],
        '7E': [ 0x00,  0x14,  0x28,  0x00,  0x00,  0x00,  0x00,  0x00,  ],
        '7F': [ 0x3C,  0x42,  0x99,  0xA1,  0xA1,  0x99,  0x42,  0x3C,  ],
    }

    def init(self):
        pass

    def hello_world(self, cwd):
        return "Hello, world!"

    def generate_block(self, cwd, char):
        
        blockbytes = [0, 0, 0, 0, 0, 0, 0, 0]

        if char == 0x80:
            blockbytes = [0, 0, 0, 0, 0, 0, 0, 0]
	elif char == 0x81:
	    blockbytes = [0xf, 0xf, 0xf, 0xf, 0x0, 0x0, 0x0, 0x0]
	elif char == 0x82:
	    blockbytes = [0xf0, 0xf0, 0xf0, 0xf0, 0x0, 0x0, 0x0, 0x0]
        elif char == 0x85:
            blockbytes = [0xf, 0xf, 0xf, 0xf, 0xf, 0xf, 0xf, 0xf]
        elif char == 0x8A:
            blockbytes = [0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0, 0xf0]
        elif char == 0x8B:
            blockbytes = [0xff, 0xff, 0xff, 0xff, 0xf0, 0xf0, 0xf0, 0xf0]
        elif char == 0x8f:
            blockbytes = [0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff]
        else:
            print "BLOCK %02X NOT IMPLEMENTED" % (char)

        return blockbytes

    def decode_data(self, cwd, chraddr, dataaddr, comment = False):
        #print "DEBUG: CHRADDR %04X+100 = %04X" % (chraddr, (chraddr+0x100))

        # Cria um array com 24 linhas e 32 colunas
        udg_array = [[0 for i in range(32)] for j in range(24)]

        # Posicao da proxima escrita no ecra
        x = 0
        y = 0
        # cor
        ink = 0
        # fundo
        paper = 7
        flash = 0
        brightness = 0

        # encher o array com o caracter SPACE
        zbr = 0x3D00 # endereço do chr$ space na memoria
        for i in range(24):
            for j in range(32):
                udg_array[i][j] = Udg(63, self.snapshot[zbr:zbr+8])

        addr = dataaddr
        while self.snapshot[addr] != 0xFF:

            if self.snapshot[addr] == 0x16:
                x = self.snapshot[addr+1]
                y = self.snapshot[addr+2]
                if comment == True:
                    print "B $%04X,$3 AT - X = %d, Y = %d" % (addr, x, y)
                addr += 3
                continue
            
            if self.snapshot[addr] == 0x10:
                ink = self.snapshot[addr+1]
                if comment == True:
                    print "B $%04X,$2 INK %d" % (addr, ink)
                addr += 2
                continue

            if self.snapshot[addr] == 0x11:
                paper = self.snapshot[addr+1]
                if comment == True:
                    print "B $%04X,$2 PAPER %d" % (addr, paper)
                addr += 2
                continue

            if self.snapshot[addr] == 0x12:
                flash = self.snapshot[addr+1]
                if comment == True:
                    print "B $%04X,$2 FLASH %d" % (addr, flash)
                addr += 2
                continue
            
            v = (self.snapshot[addr] - 0x20)
            ad = ( chraddr + 256 ) + v * 8
            
            attr = ink | (paper << 3) | (brightness << 6) | (flash << 7)

            # BLOCK CHARS
            if (self.snapshot[addr] >= 0x80 and self.snapshot[addr] <= 0x8f):
                zbr = self.generate_block(cwd, self.snapshot[addr])
                udg_array[x][y] = Udg(attr, zbr)
                #if comment == True:
                #    print "B $%04X,$1 UDG %02X - ADDR = %04X - AT %d,%d - INK %d - PAPER %d - #HTML[#UDG$%04X,%d(%04x)]" % (addr, self.snapshot[addr], ad, ad, attr, ad)
            elif (self.snapshot[addr] >= 0x90 and self.snapshot[addr] <= 0xa4):
                v = ( self.snapshot[addr] - 0x90)
                ad = ( 0xFF58 ) + (v*8)
                udg_array[x][y] = Udg(attr, self.snapshot[ad:ad+8])
                #if comment == True:
                #    print "B $%04X,$1 UDG %02X - ADDR = %04X - AT %d,%d - INK %d - PAPER %d - #HTML[#UDG$%04X,%d(%04x)]" % (addr, self.snapshot[addr], ad, x, y, ink, paper, ad, attr, ad)
            else:
                if (chraddr == 0x3C00):
                    key = "%02X" % (self.snapshot[addr])
                    udg_array[x][y] = Udg(attr, self.font[key])
                else:
                    udg_array[x][y] = Udg(attr, self.snapshot[ad:ad+8])
                    if comment == True:
                         print "B $%04X,$1 UDG %02X - ADDR = $%04X - AT $%02X,$%02X - ATTRIBUTES $%02X - #HTML[#UDG$%04X,%d(%04x_%02x)]" % (addr, self.snapshot[addr], ad, x, y, attr, ad, attr, ad, attr)

            addr += 1
            y += 1
            if y == 32:
                y = 0
                x += 1

        img_path_id = 'ScreenshotImagePath'
        fname = 'zbr-%x-%x' % (chraddr, addr)
        img_path = self.image_path(fname, img_path_id)
        self.write_image(img_path, udg_array)
        return self.img_element(cwd, img_path)

#class ParadiseCafeHtmlWriter(AsmWriter):
#   pass
