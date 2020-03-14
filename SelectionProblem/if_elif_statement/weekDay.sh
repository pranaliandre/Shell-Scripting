#!/bin/bash -x
read -p "enter the number : " number
if [ $number -eq 0 ];
then
	echo "Sunday";
elif [ $number -eq 1 ];
then
	echo "Monday";
elif [ $number -eq 2 ];
then
	echo "Tuesday";
elif [ $number -eq 3 ];
then
	echo "wednesday";
elif [ $number -eq 4 ];
then
	echo "thusday";
elif [ $number -eq 5 ];
then
	echo "Friday";
else [ $number -eq 6 ];
	echo "Saturday";
fi

