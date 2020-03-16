#!/bin/bash -x
read -p " enter the power : " power
ans=1
count=0
while [ $power -ne $count ] 
do
	ans=$(($ans*2))
	(( count++ ))
done
echo $ans
