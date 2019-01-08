#!/bin/bash
DATA1=OLDATA/subor1.txt
DATA2=OLDATA/subor2.txt
DATA3=OLDATA/subor3.txt
DATA4="/usr/sbin:/usr/bin:/sbin:/bin:/usr/games::/usr/local/games"
DATA5=OLDATA
DATA6=OLDATA/access.log
echo "--- OL1 ---"
cat $DATA1 |sed 's/\(.\)/\1\n/g' | sort | uniq | tr -d '\n'|sed -e '$a\' # OL1

echo "--- OL2 ---"
cat $DATA2 | tr -d '\r' | awk '{ print; }' #OL2

echo "--- OL3 ---"
awk 'BEGIN{FS="\t"}{OFS="\t"}$3!=NULL{tmp=$2;$2=$3;$3=tmp;print}$3==NULL{print}' $DATA3 # OL3

echo "--- OL4 ---"
grep -Eo . <<< $DATA4 | tr -d "\n" | tr -s ":" | tr ":" '\n' && echo "" #OL4

echo "--- OL5 ---"
ls -lp $DATA5 | egrep -v /    |  egrep ".*(\.txt|\.md|\.html)$"    |  awk '{print $5}'       |  awk '{ sum += $1} END {print sum}' #OL5

echo "--- OL6 ---"
cat $DATA6 | sort | awk '{ print $1; }' | tr " " "\n" | sort | uniq -c | awk '{ printf("%s\t%s\n",$2,$1)}' | sort -k2 -n #OL6
