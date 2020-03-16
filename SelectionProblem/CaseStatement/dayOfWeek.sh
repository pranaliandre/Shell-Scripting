#!/bin/bash -x
read -p "enter the number" number
case $number in
	0)
		echo "Sunday"
		;;
	1)
		echo "Monday"
		;;
	2)
		echo "Tuesday"
		;;
	3)
		echo "Wednesday"
		;;
	4)
		echo "Thusday"
		;;
	5)
		echo "Friday"
		;;
	6)
		echo "Saturday"
		;;
	*)
		echo "invalid"
		;;
esac
