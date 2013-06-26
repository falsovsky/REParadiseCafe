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
        'C342': 'variavel_highscore',
        'C343': 'variavel_highscore+1',
        'C344': 'variavel_highscore+2',
        'C345': 'variavel_highscore+3',
        'B7A4': 'frame_linha_highscore',
        '8970': 'chars2-$0100',
        '8C30': 'chars2+$01C0',
        'F641': 'chars3+$32F1',
        'F6A1': 'chars3+$3351',
        'F701': 'chars3+$33B1',
        'F2C1': 'chars3+$2F71',
        'F821': 'chars3+$34D1',
        'F761': 'chars3+$3411',
        'F7C1': 'chars3+$3471',
        '8D94': 'chars2+$0324',
        '8DF4': 'chars2+$0384',
        '8E54': 'chars2+$03E4',
        '8EB4': 'chars2+$0444',
        '8F14': 'chars2+$04A4',
        '7E5A': 'chars1-$00F8',
        '804A': 'chars1+$00F8',
        '81A2': 'chars1+$0250',
        '82CA': 'chars1+$0378',
        '8322': 'chars1+$03D0',
        '8502': 'chars1+$05B0',
        '85CA': 'chars1+$0678',
        '862A': 'chars1+$06D8',
        '868A': 'chars1+$0738',
        '8D94': 'chars2+$0324',
        '8DF4': 'chars2+$0384',
        '8E54': 'chars2+$03E4',
        '8EB4': 'chars2+$0444',
        '8F14': 'chars2+$04A4',
        'C740': 'chars3+$03F0',
        'CBEA': 'chars3+$089A',
        'D1F1': 'chars3+$0EA1',
        'D389': 'chars3+$1039',
        'D3A9': 'chars3+$1059',
        'D409': 'chars3+$10B9',
        'D459': 'chars3+$1109',
        'D519': 'chars3+$11C9',
        'D579': 'chars3+$1229',
        'D5D9': 'chars3+$1289',
        'D689': 'chars3+$1339',
        'D6E9': 'chars3+$1399',
        'D739': 'chars3+$13E9',
        'D899': 'chars3+$1549',
        'DB51': 'chars3+$1801',
        'DBB1': 'chars3+$1861',
        'DC11': 'chars3+$18C1',
        'DC71': 'chars3+$1921',
        'DCD1': 'chars3+$1981',
        'DD21': 'chars3+$19D1',
        'DD91': 'chars3+$1A41',
        'DDE1': 'chars3+$1A91',
        'DE31': 'chars3+$1AE1',
        'E111': 'chars3+$1DC1',
        'E279': 'chars3+$1F29',
        'E441': 'chars3+$20F1',
        'E5F9': 'chars3+$22A9',
        'E659': 'chars3+$2309',
        'E6B9': 'chars3+$2369',
        'E719': 'chars3+$23C9',
        'E779': 'chars3+$2429',
        'E7D9': 'chars3+$2489',
        'E839': 'chars3+$24E9',
        'E899': 'chars3+$2549',
        'E909': 'chars3+$25B9',
        'E979': 'chars3+$2629',
        'E9F9': 'chars3+$26A9',
        'EA59': 'chars3+$2709',
        'EAC1': 'chars3+$2771',
        'EB31': 'chars3+$27E1',
        'EDB9': 'chars3+$2A69',
        'EED9': 'chars3+$2B89',
        'EF39': 'chars3+$2BE9',
        'F151': 'chars3+$2E01',
        'F201': 'chars3+$2EB1',
        'F261': 'chars3+$2F11',
        'F4B9': 'chars3+$3169',
        'F881': 'chars3+$3531',
        'F8B1': 'chars3+$3561',
        'FB41': 'chars3+$37F1',
        'FBE1': 'chars3+$3891',
        'FC41': 'chars3+$38F1',
        'FCA1': 'chars3+$3951',
        'FD01': 'chars3+$39B1',
        'FD61': 'chars3+$3A11',
        'FDA1': 'chars3+$3A51',
        '89D2': 'frame_record_introduza_nome',
        '8A09': 'frame_esta_correcto_o_seu_nome',
        '8A29': 'frame_duas_linhas',
        'C34C': 'variavel_ultima_tecla_pressionada',
        }

regex = [
        r"(?m)LD A,\((\$[0-9a-fA-F]{4})\)",
        r"(?m)LD \((\$[0-9a-fA-F]{4})\),A",
        r"(?m)LD HL,(\$[0-9a-fA-F]{4})",
        r"(?m)LD \((\$[0-9a-fA-F]{4})\),HL",
        r"(?m)LD HL,\((\$[0-9a-fA-F]{4})\)",
        r"(?m)LD DE,(\$[0-9a-fA-F]{4})",
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
