#!/bin/bash -x
function  getDegF(){
	read -p "enter the temperature in celcius: " degC
	degF=$(( ($degC*9/5) + 32 ))
}
function getDegC(){
	read -p "enter the temperature in farenheit: " degF
	degC=$(( ($degF-32) * 5/9 ))
}
read -p "calculating the temperature in farenheit press 1. calculating the temperature in celcius press 2" choice
case $choice in
	1)
		$(getDegF)
		;;
	2)
		$(getDegC)
		;;
esac
