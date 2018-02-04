#!/bin/bash

# (c) 2018 by EightSQ (ok@electronvo.lt)

bday_table_dir="$HOME/.bdayscript"
bday_tables=$(find $bday_table_dir/*.csv)
today=$(date +"%m/%d" | sed -e "s/^0//g" -e "s/\/0/\//g")

bdays_today=$(cat $bday_tables | sed -e "/^$/d" | cut -d";" -f1,2,3 | grep ";$today")

if [ $bdays_today ]
then
	echo "Heute sind Geburtstage! 🎉"
	for child in $bdays_today
	do
		echo "$(echo $child | cut -d";" -f2) $(echo $child | cut -d";" -f1)"
	done
fi

