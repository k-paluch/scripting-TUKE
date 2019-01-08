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

for i in "$1"/*; do
    if test -f "$i"; then
	file=`echo $i | rev | cut -d "/" -f 1 | rev`
	echo  $file'\t'`cat "$i" | grep "^[[:space:]]*[a-z]*[[:space:]]*[a-z]*$" | wc -l`
    fi
done
# vypis ci sa v danom riadku nachadzaju riadky odpovedajuce danemu regularnemu vyrazu
for i in "$1"/*; do
    if test -f "$i"; then
	file=`echo $i | rev | cut -d "/" -f 1 | rev`
	if [ `cat "$i" | grep "^[[:space:]]*[a-z]*[[:space:]]*[a-z]*$" | wc -l` -eq 0 ]; then
		>&2 printf "$file\tnie\n"
	else
		>&2 printf "$file\tano\n"
	fi
    fi
done

exit 0;


