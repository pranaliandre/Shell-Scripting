#!/bin/bash -x
low=1
high=100
while [ $low -lt $high ]
do
	mid=$(( $low+($high - $low) / 2))
	read -p "If your number is less than $mid then press 'y', If your number is greator than $mid press 'n',If your number is equal to $mid then press three 'f'." num
	if [ $num == "f" ]
	then
		echo $mid
	break
	elif [ $num == "y" ]
	then
		high=$(($mid))
	elif [ $num == "n" ]
	then
		low=$(($mid))
	fi
done 
