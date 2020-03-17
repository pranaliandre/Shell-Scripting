#!/bin/bash -x
function repeatedtwice(){	
	local temp=$1
	local rev=0
	while [ $temp != 0 ]
	do
		rem=$(($temp%10))
		rev=$(($rev*10+$rem))
		temp=$(($temp/10))
	done

	if [ $1 == $rev ]
	then
		echo $1	
	fi
}
for (( i=1;i<=100;i++ ))
do
	pali=$(repeatedtwice $i)
	if [ $pali -ge 11 ] && [ $pali -le 99 ]
	then
		array[i]=$pali
	fi
done

echo ${array[@]}
