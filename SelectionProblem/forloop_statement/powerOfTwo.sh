#!/bin/bash -x
read -p "Enter power : " power
sum=1
for (( i=1;$i<=$power;i++ ))
do 
	sum=$(($sum*2))
done
echo $sum
