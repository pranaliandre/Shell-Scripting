#!/bin/bash -x
read -p "Enter the starting number: " begin
read -p "Enter the ending number: " end
for (( i=$begin;$i<=$end;i++))

do
	count=0
	for (( j=1;$j<=$i;j++ ))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
			(( count++ ))
		fi
	done
	if [ $count -eq 2 ]
	then
		echo $i
	fi
done

