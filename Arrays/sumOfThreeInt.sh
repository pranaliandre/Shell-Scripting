#!/bin/bash -x
function sumofThreeInt() {
length=${#arr[@]}
local ans=0
for (( i=1;$i<=${length-2};i++ ))
do
	for (( j=$i+1;$j<=${length-1};j++ ))
	do
		for (( k=$j+1;$k<=${length};k++ ))
		do
			if [ $(( ${arr[$i]} + ${arr[$j]} + ${arr[$k]} )) == 0 ]
			then
				(( ans++ ))
				echo ${arr[$i]}
				echo ${arr[$j]}
				echo ${arr[$k]}
			fi
		done
	done
done
echo $ans
}
read -p "enter the size: " size
for (( i=1;i<=$size;i++ ))
do
	read -p "enter the number: " number
	arr[$i]=$number
done
echo "${arr[@]}"
sumofThreeInt
