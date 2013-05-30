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

    def decode_data(self, cwd, chraddr, dataaddr):

        # Cria um array com 24 linhas e 32 colunas
        udg_array = [[0 for i in range(32)] for j in range(24)]

        # Posicao da proxima escrita no ecra
        xy = [ 0, 0 ]

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
                xy[0] = self.snapshot[addr+1]
                xy[1] = self.snapshot[addr+2]
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
            
            #ad = (chraddr + 256) + (self.snapshot[addr] - 0x20)
            #print "valor 1: %02X" % (chraddr + 256)
            #print "valor 2: %02X" % (self.snapshot[addr] - 0x20)
            #print "result: %02X" % ( (int(chraddr) + int(256)) + ( int(self.snapshot[addr]) - int(32) ))


            # The default printable characters (32 (space) to 127 (copyright)) are stored at the end of the Spectrum's ROM at memory address 15616 (0x3D00) to 16383 (0x3FFF) and are referenced by the system variable CHARS which can be found at memory address 23606/7.
            # The value in CHARS is actually 256 bytes lower than the first byte of the space character so that referencing a printable ASCII character does not need to consider the first 32 characters. As such, the CHARS value (by default) holds the address 15360 (0x3C00).
            # O endereço do char e':
            
            # (CHARSaddr + 256 bytes) + ( (valor@addr - 32) * 8)

            ad = ( chraddr + 256 ) + ( ( self.snapshot[addr] - 32) * 8 )

            #print "chraddr [%02X] + 256 =  %02X" % (chraddr, chraddr+0x100)
            print "valor [%02X] - 0x20 = %02X" % (self.snapshot[addr], (self.snapshot[addr] - 0x20))
            #print "a escrever em [%d,%d] endereço %02X" % (xy[0], xy[1], ad)
            print "endereço %02X" % (ad)

            #print "fundo [%02X] cor [%02X]" % (paper, ink)

            #paperbits = bin(int(paper, base=10))[2:]
            #inkbits = bin(int(ink, base=10))[2:]
            #atribute = int('00'+paperbits+inkbits,2)
            #print atribute
            #paperbits = '0b{0:0>3b}'.format(paper)[2:]
            #inkbits = '0b{0:0>3b}'.format(ink)[2:]
            #atribute = int('00'+paperbits+inkbits,2)
            attr = 0
            attr = ink | (paper << 3) | attr << 6

            udg_array[xy[0]][xy[1]] = Udg(attr, self.snapshot[ad:ad+8])
            xy[1] = xy[1] + 1
            addr += 1


        #pprint.pprint(udg_array)
        img_path_id = 'ScreenshotImagePath'
        fname = 'zbr-%x' % addr
        img_path = self.image_path(fname, img_path_id)
        self.write_image(img_path, udg_array)
        return self.img_element(cwd, img_path)

