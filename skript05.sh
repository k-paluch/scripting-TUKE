#!/bin/bash
if [ -z "$1" ]||[ "$2" ]
	then
		echo "ZLY POCET PARAMETROV. KONCIM." >&2
		exit 20

elif [ ! -d "$1" ]
	then
		echo "NEPLATNY ADRESAR. KONCIM." >&2
		exit 30;
fi 
cd $1;
for file in $(ls -Sr); do
if [ -f $filename ]; 
	then linescount=0
		while read line; do
			if [[ "$line" =~ ^([a-z]|[ ])+$ ]]
			then 
				linescount=$((linescount+1))
			fi

		done <$file
		if [ $linescount -eq 0 ]; 
			then
				echo -e "$file"$'\t'nie >&2
			else
				echo -e "$file"$'\t'ano >&2
		fi
			echo -e "$file"$'\t'$linescount >$1
fi
done
