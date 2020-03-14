#!/bin/bash -x
random=$((RANDOM%10))
if [ $random -eq 1 ];
then 
	echo "One";
elif [ $random -eq 2 ];
then		
	echo "Two";
elif [ $random -eq 3 ];
then
	echo "Three";
elif [ $random -eq 4 ];
then
	echo "Four";	
elif [ $random -eq 5 ];
then
	echo "Five";
elif [ $random -eq 6 ];
then
	echo "Six";
elif [ $random -eq 7 ];
then
	echo "Seven";
elif [ $random -eq 8 ];
then
	echo "Eight";
elif [ $random -eq 9 ];
then
	echo "Nine";
else [$random -eq 0 ];
	echo "Zero";
fi



