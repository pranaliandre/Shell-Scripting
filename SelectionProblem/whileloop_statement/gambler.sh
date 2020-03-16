#!/bin/bash -x
start=100
goal=200
countlost=0
countwon=0
while [ true ]
do
	random=$((RANDOM%2))
	if [ $random -eq 0 ]
	then
		start=$(($start - 1))
		(( countlost++ ))
	else
		start=$(($start + 1))
		(( countwin++ ))
	fi
	if [ $start -le 0 ]
	then
		echo "gambler lost"
		break;	
	elif [ $goal -eq $start ]
	then
		echo "gambler won"
		break;
	fi
done
echo $countlost
echo $countwin
