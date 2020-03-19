#!/bin/bash -x
declare -A birthMonth
number=(($RANDOM%2))
year=$(($number+1992))
if [[ $year==1992 || $year == 1993 ]]
then
	for (( i=0;i<50;i++ ))
	do
		month=$((RANDOM%12+1))
		birthMonthDict["$month"]=$((${birthMonthDict["$month"]}+1))
	done
	echo "year:${!year[@]}"
	echo "Key:${!birthMonthDict[@]}"
	echo "values:${birthMonthDict[@]}"
else
	echo "Not valid year"
fi
