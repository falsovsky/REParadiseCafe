# -*- coding: utf-8 -*- 
# SkoolKit extension for Paradise Café by DAMATTA.
#
# This file copyright (c) Pedro de Oliveira, 2013. <falsovsky@gmail.com>
#
import string

from .skoolhtml import HtmlWriter, Udg

class ParadiseCafeHtmlWriter(HtmlWriter):

    def init(self):
        self.font = {}
        pass

    def hello_world(self, cwd):
        return "Hello, world!"

    def generate_block(self, cwd, char):
        
        blockbytes = []

        if char == 0x80:
            blockbytes = [0, 0, 0, 0, 0, 0, 0, 0]

        if char == 0x8f:
            blockbytes = [0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff]

        return blockbytes

    def comment_frame(self, cwd, chraddr, dataaddr):
        ink = 0
        paper = 0
        xy = [ 0, 0 ]
        addr = dataaddr
        
        print "D $%04X CHARS addr = %04X" % (addr,chraddr)
        print "E $%04X #HTML[#CALL:decode_data($%04X,$%04X)]" % (addr, chraddr, dataaddr)

        while self.snapshot[addr] != 0xFF:

            if self.snapshot[addr] == 0x16:
                xy[0] = self.snapshot[addr+1]
                xy[1] = self.snapshot[addr+2]
                print "B $%04X,$3 AT - X = %d, Y = %d" % (addr, xy[0], xy[1])
                addr += 3
                continue

            if self.snapshot[addr] == 0x10:
                ink = self.snapshot[addr+1]
                print "B $%04X,$3 INK %d" % (addr, ink)
                addr += 2
                continue

            if self.snapshot[addr] == 0x11:
                paper = self.snapshot[addr+1]
                print "B $%04X,$3 PAPER %d" % (addr, paper)
                addr += 2
                continue

            attr = 0
            attr = ink | (paper << 3) | attr << 6
            
            ad = ( chraddr + 256 ) + ( ( self.snapshot[addr] - 32) * 8 )

            if ( self.snapshot[addr] - 32)  >= 96:
                v = ( self.snapshot[addr] - 32) - 96
                ad = ( 0xFF58 ) + v
                print "B $%04X,$1 UDG %02X - addr = %04X - #HTML[#UDG$%04X,%d(%04x)]" % (addr, self.snapshot[addr], ad, ad, attr, ad)
            else:
                print "B $%04X,$1 CHAR %02X - addr = %04X - #HTML[#UDG$%04X,%d(%04x)]" % (addr, self.snapshot[addr], ad, ad, attr, ad)

            xy[1] = xy[1] + 1
            addr += 1


    def decode_data(self, cwd, chraddr, dataaddr):

        #print "chraddr: 0x%04X - dataddr: 0x%04X" % (chraddr, dataaddr)

        # Cria um array com 24 linhas e 32 colunas
        udg_array = [[0 for i in range(32)] for j in range(24)]

        # Posicao da proxima escrita no ecra
        x = 0
        y = 0
        # cor
        ink = 0
        # fundo
        paper = 0
        
        # encher o array com o caracter SPACE
        zbr = 0x3D00 # endereço do chr$ space na memoria
        for i in range(24):
                for j in range(32):
                    udg_array[i][j] = Udg(7, self.snapshot[zbr:zbr+8])

        addr = dataaddr
        while self.snapshot[addr] != 0xFF:

            if self.snapshot[addr] == 0x16:
                x = self.snapshot[addr+1]
                y = self.snapshot[addr+2]
                addr += 3
                continue
            
            if self.snapshot[addr] == 0x10:
                ink = self.snapshot[addr+1]
                addr += 2
                continue

            if self.snapshot[addr] == 0x11:
                paper = self.snapshot[addr+1]
                addr += 2
                continue
            
            v = (self.snapshot[addr] - 0x20)
            ad = ( chraddr + 256 ) + v * 8
            
            attr = 0
            attr = ink | (paper << 3) | attr << 6

            #print "Data addr: %04X - Data value: %02X" % (addr, self.snapshot[addr])

            # Mega martelada
            #if ( self.snapshot[addr] - 32)  >= 96:
                #print "ink %d - paper %d" % (ink, paper)
                #v = ( self.snapshot[addr] - 32) - 96 - 1
                #print "estou a ler %02X" % (self.snapshot[addr])
            #    v = ( self.snapshot[addr] - 0x80)
                #print "fica %02X" % (v)
                #ad = ( 0xFF58 ) + (v*8)
            #    ad = ( 0xFF58 - 8) + (v*8)
                #print "U - addr: 0x%04X- val: 0x%02X" % (ad, v)
            #    udg_array[x][y] = Udg(ad, self.snapshot[ad:ad+8])

            if (self.snapshot[addr] == 0x80):
                zbr = self.generate_block(cwd, 0x80)
                udg_array[x][y] = Udg(attr, zbr)
            elif (self.snapshot[addr] == 0x8f):
                zbr = self.generate_block(cwd, 0x8f)
                udg_array[x][y] = Udg(attr, zbr)
            else:
                #print "N - addr: 0x%04X- val: 0x%04X" % (ad, v)
                udg_array[x][y] = Udg(attr, self.snapshot[ad:ad+8])

            y += 1
            addr += 1


        #pprint.pprint(udg_array)
        img_path_id = 'ScreenshotImagePath'
        fname = 'zbr-%x' % addr
        img_path = self.image_path(fname, img_path_id)
        self.write_image(img_path, udg_array)
        return self.img_element(cwd, img_path)

