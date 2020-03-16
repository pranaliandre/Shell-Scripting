#!/bin/bash -x
read -p "Enter number for checking prime or not : " number
count=0
for (( i=1;i<=$number;i++ ))
do
	if [ $(($number%$i)) -eq 0 ];
	then
		(( count++ ))	

	fi
done
if [ $count -eq 2 ]
then
	echo "prime number"
else
	echo "not prime number"
fi
	
