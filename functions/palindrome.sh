#!/bin/bash -x
function palindrome(){
	local temp=$1
	local rev=0
	while [ $temp -ne 0 ]
	do 
		local rem=$(($temp%10))
		rev=$(($rev*10+$rem))
		temp=$(($temp/10))
	done
	if [ $1 -eq $rev ]
	then
		echo $1
	else
		echo "$1 is not a palindrome"
		break
	fi 
}
read -p "Enter the first number: " number1
read -p "Enter the second number: " number2
checknumber1=$(palindrome $number1)
checknumber2=$(palindrome $number2)
if [ $checknumber1 -eq $checknumber2 ]
then 
	echo "palindrome number"
else
	echo "not a palindrome"
fi
