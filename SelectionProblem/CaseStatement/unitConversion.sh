#!/bin/bash -x
read -p "Enter your choice : " choice
case $choice in
	1)
		echo " Feet to Inch "
		read -p " Enter feet value " feet
		inch=$((feet*12))
		;;
	2)
		echo " Feet to Meter "
		read -p " Enter feet value " feet
		meter=`echo "$feet*0.3048" | bc`
		;;		
	3)
		echo " Inch to Feet "
		read -p " Enter inch value" inch
		feet=`echo "scale=5; $inch/12" | bc`
		;;    
	4)
		echo " Meter to Feet "
		read -p "Enter meter value" meter
		feet=`echo "$meter*3.2808" | bc`
		;;    
	*)
		echo "Invalid Choice"
		;;
esac			
