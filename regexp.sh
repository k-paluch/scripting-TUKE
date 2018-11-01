#!/bin/bash
DATA1=REDATA/data.txt
DATA2=REDATA/data.txt
DATA3=REDATA/data.txt
DATA4=REDATA/data.txt
DATA5=REDATA/data.txt
DATA6=REDATA/data.txt
DATA7=REDATA/data.txt
DATA8=REDATA/data.txt
DATA9=REDATA/data.txt
DATA10=REDATA/data.txt
DATA11=REDATA/data.txt
DATA12=REDATA/data.txt
DATA13=REDATA/data.txt
DATA14=REDATA/data.txt
DATA15=REDATA/data.txt
DATA16=REDATA/data.txt
DATA17=REDATA/data.txt
DATA18=REDATA/data.txt
DATA19=REDATA/data.txt
DATA20=REDATA/data.txt
DATA21=REDATA/data.txt
DATA22=REDATA/data.txt
DATA23=REDATA/data.txt
DATA24=REDATA/data.txt
DATA25=REDATA/data.txt
DATA26=REDATA/data.txt
DATA27=REDATA/data.txt
DATA28=REDATA/data.txt
echo "--- RE1 ---"
egrep -o "pocitac" $DATA1 # RE1
echo "--- RE2 ---"
egrep -o "POCITAC" $DATA2 # RE2
echo "--- RE3 ---"
egrep -o "\[POCITAC\]" $DATA3 # RE3
echo "--- RE4 ---"
egrep -o "\.pocitac\." $DATA4 # RE4
echo "--- RE5 ---"
egrep -o "\(pocitac\)" $DATA5 # RE5
echo "--- RE6 ---"
egrep -o "Poci\*tac" $DATA6 # RE6
echo "--- RE7 ---"
egrep -o "Poci(\\)(\\)tac" $DATA7 # RE7
echo "--- RE8 ---"
egrep -o "\"pocitac\"" $DATA8 # RE8
echo "--- RE9 ---"
egrep -o "'pocitac'" $DATA9 # RE9
echo "--- RE10 ---"
egrep -o "Poc\+itac\+\+" $DATA10 # RE10
echo "--- RE11 ---"
egrep -o "p\?ocitac\?" $DATA11 # RE11
echo "--- RE12 ---"
egrep -o "''výpočtová technika'|'počítač'" $DATA12 # RE12
echo "--- RE13 ---"
egrep -o "'POČÍTAČ'|'počítač'" $DATA13 # RE13
echo "--- RE14 ---"
egrep -o "'počítač'|'Počítač'" $DATA14 # RE14
echo "--- RE15 ---"
egrep -o "'počítač'/i" $DATA15 # RE15
echo "--- RE16 ---"
egrep -o "^'počítač'.*" $DATA16 # RE16
echo "--- RE17 ---"
egrep -o "^.*'počítač'+$" $DATA17 # RE17
echo "--- RE18 ---"
egrep "\b[0-9][a-zA-Z0-9]" $DATA18 # RE18
echo "--- RE19 ---"
egrep "\b[a-zA-Z0-9]*(?=de|te|ne|le|di|ti|ni|li)[a-zA-Z0-9]\w*" $DATA19 # RE19
echo "--- RE20 ---"
egrep "" $DATA20 # RE20
echo "--- RE21 ---"
egrep "" $DATA21 # RE21
echo "--- RE22 ---"
egrep "" $DATA22 # RE22
echo "--- RE23 ---"
egrep "\w*(\w)(\1+)\w*" $DATA23 # RE23
echo "--- RE24 ---"
egrep "\b(\w+)\s+\1\b" $DATA24 # RE24
echo "--- RE25 ---"
egrep "\w[a-zA-Z]+\.[a-zA-Z]+(\.[1-9])?@(student\.)?(tuke\.sk)" $DATA25 # RE25
echo "--- RE26 ---"
egrep "\w([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]\.[0-9][0-9][0-9]" $DATA26 # RE26
echo "--- RE27 ---"
egrep "^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(:0[48]|[2468][048]|[13579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(" $DATA27 # RE27
echo "--- RE28 ---"
egrep "" $DATA28 # RE28
