#!/bin/bash
DATA1=OLDATA/subor1.txt
DATA2=OLDATA/subor2.txt
DATA3=OLDATA/subor3.txt
DATA4="/usr/sbin:/usr/bin:/sbin:/bin:/usr/games::/usr/local/games"
DATA5=OLDATA
DATA6=OLDATA/access.log
echo "--- OL1 ---"
#<prikaz> $DATA1 [| prikaz ]* # OL1

echo "--- OL2 ---"
#<prikaz> $DATA2 [| prikaz ]* # OL2

echo "--- OL3 ---"
#<prikaz> $DATA3 [| prikaz ]* # OL3

echo "--- OL4 ---"
#<prikaz> $DATA4 [| prikaz ]* # OL4

echo "--- OL5 ---"
#<prikaz> $DATA5 [| prikaz ]* # OL5

echo "--- OL6 ---"
#<prikaz> $DATA6 [| prikaz ]* # OL6
