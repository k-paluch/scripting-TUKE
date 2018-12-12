#!/bin/bash
DATA1=OLDATA/subor1.txt
DATA2=OLDATA/subor2.txt
DATA3=OLDATA/subor3.txt
DATA4="/usr/sbin:/usr/bin:/sbin:/bin:/usr/games::/usr/local/games"
DATA5=OLDATA
DATA6=OLDATA/access.log
echo "--- OL1 ---"
cat $DATA1 | fold -w 1 | set | sort | uniq | tr -d '\n' | awk '{ print; }' #OL1

echo "--- OL2 ---"
cat $DATA2 | tr -d '\r' | awk '{ print; }' #OL2

echo "--- OL3 ---"
cat $DATA3 | awk -F $'\t' '{ t = $2; $2 = $3; $3 = t; print; }' OFS=$'\t' #OL3

echo "--- OL4 ---"
grep -Eo . <<< $DATA4 | tr -d "\n" | tr -s ":" | tr ":" '\n' && echo "" #OL4

echo "--- OL5 ---"
cd $DATA5; ls -l *.txt *.html *.md | awk '{ total += $5 }; END{ print total }'; cd ..; #OL5

echo "--- OL6 ---"
cat $DATA6 | sort | awk '{ print $1; }' | tr " " "\n" | sort | uniq -c | awk '{ printf("%s\t%s\n",$2,$1)}' | sort -k2 -n #OL6
