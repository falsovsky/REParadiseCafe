#!/usr/bin/env python
# -*- coding: utf-8 -*-

import re

labels = {
        '75E2': 'frame_prisao',
        '7799': 'frame_canhola_1',
        '77B6': 'frame_canhola_2',
        '77D5': 'frame_the_end',
        '788D': 'frame_inicio',
        '7EE9': 'frame_balao_esta_tudo_bem',
        '7F15': 'frame_balao_esta_sim_seu_guarda',
        '7F2C': 'frame_limpa_balao_esquerdo',
        '7F41': 'frame_limpa_chao',
        '7F52': 'chars1',
        'C34F': 'variavel_atributos_fadeOut',
        '89A6': 'string_recordista',
        'C33D': 'variavel_arma',
        'C337': 'variavel_droga',
        'C33C': 'variavel_carteira',
        'C346': 'variavel_score',
        'C347': 'variavel_score+1',
        'C348': 'variavel_score+2',
        'C349': 'variavel_score+3',
        'C33E': 'variavel_dinheiro',
        'C33F': 'variavel_dinheiro+1',
        'C340': 'variavel_dinheiro+2',
        'C341': 'variavel_dinheiro+3',
        'B7A4': 'frame_linha_highscore',

        }

regex = [
        r"(?m)LD A,\((\$[0-9a-fA-F]{4})\)",
        r"(?m)LD \((\$[0-9a-fA-F]{4})\),A",
        r"(?m)LD HL,(\$[0-9a-fA-F]{4})",
        r"(?m)LD \((\$[0-9a-fA-F]{4})\),HL",
        r"(?m)LD HL,\((\$[0-9a-fA-F]{4})\)",
        r"(?m)LD DE,\$([0-9a-fA-F]{4})",
        r"(?m)LD DE,\((\$[0-9a-fA-F]{4})\)"
        ]

def computereplacement(matchobj):

    label = labels.get(matchobj.group(1)[1:])
    if label == None:
        return matchobj.group(0)
    result = matchobj.group(0).replace(matchobj.group(1),label)
    return result

skool = open('ParadiseCafe.skool', 'r').read()
for reg in regex:
    result = re.sub(reg, computereplacement, skool)
    skool = result

print result
