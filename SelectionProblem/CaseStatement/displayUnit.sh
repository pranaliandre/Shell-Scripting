#!/bin/bash -x
read -p "enter the number 1,10,100,1000 : " no
case $no in
	1)
		echo "unit"
		;;
	10)
		echo "Ten"
		;;
	100)
		echo "Hundred"
		;;
	1000)
		echo "One Thousand"
		;;
	*)
		echo "invalid range"
		;;
esac
