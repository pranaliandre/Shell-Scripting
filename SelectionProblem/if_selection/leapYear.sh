#!/bin/bash -x
read -p "enter year" year
if [ $year -ge 1000 ] && [ $year -le 9999 ]
then
	if [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ] || [ $((year % 400)) -eq 0 ]; 
	then
		echo "leap year"
	else
		echo "not a leap year"
	fi
fi
