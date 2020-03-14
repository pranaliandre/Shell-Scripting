#!/bin/bash -x
read -p "Enter the first number : " first
read -p "Enter the second number : " second
read -p "Enter the third number : " third
result1=`echo "$first + $second * $third" | bc `
result2=`echo "$first % $second + $third" | bc`
result3=`echo " $third + $first / $second" | bc `
result4=`echo "$first * $second + $third" | bc `
#calculating maximum value
if [ $result1 -gt $result2 ] && [ $result1 -gt $result3 ] && [ $result1 -gt $result4 ];
then
	echo $result1
elif [ $result2 -gt $result1 ] && [ $result2 -gt $result3 ] && [ $result2 -gt $result4 ];
then 
	echo $result2
elif [ $result3 -gt $result1 ] && [ $result3 -gt $result2 ] && [ $result3 -gt $result4 ];
then 
	echo $result3
else [ $result4 -gt $result1 ] && [ $result4 -gt $result2 ] && [ $result4 -gt $result3 ]; 
	echo $result2
fi

#calculating minimum value
if [ $result1 -lt $result2 ] && [ $result1 -lt $result3 ] && [ $result1 -lt $result4 ];
then
	echo $result1
elif [ $result2 -lt $result1 ] && [ $result2 -lt $result3 ] && [ $result2 -lt $result4 ];
then 
	echo $result2
elif [ $result3 -lt $result1 ] && [ $result3 -lt $result2 ] && [ $result3 -lt $result4 ];
then 
	echo $result3
else [ $result4 -lt $result1 ] && [ $result4 -lt $result2 ] && [ $result4 -lt $result3 ]; 
	echo $result4
fi


