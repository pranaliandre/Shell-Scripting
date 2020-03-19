#!/bin/bash -x 
Heads=0
Tails=0
count=0
while [ true ]
do
	number=$((RANDOM%2))
	if [ $number -eq 1 ]
	then
		(( Heads++ ))
	else
		(( Tails++ ))
	fi
	if [ $Heads -eq 11 ]
	then
		echo "Heads Win"
		break
	elif [ $Tails -eq 11 ]
	then
		echo "Tails win"
		break
	fi
	(( count++ ))
done
