
#!/bin/bash
if [ -z "$1"]
	then
		echo "ZLY POCET PARAMETROV. KONCIM." >&2
		exit 20
fi
if ["$2"]
	then 
		echo "ZLY POCET PARAMETROV. KONCIM." >&2
		exit 20
fi
DIRECTORY=$1
if [ ! -d "$DIRECTORY"]
	then
		echo "NEPLATNY ADRESAR. KONCIM." >&2
		exit 30;
fi 
cd $DIRECTORY;
for filename in $(ls -Sr); do
if [-f $filename]; 
	then linescount=0
		while read line; do
			if [["$line" =~ ^([a-z]|[ ])+$ ]]
			then linescount=$((linescount + 1))
			fi

		done <$filename
		if [$linescount -gt 0]; 
			then
				echo $filename$'\t'ano >&2
			else
				echo $filename$'\t'nie >&2
		fi
			echo $filename$'\t'$linescount
fi

done
