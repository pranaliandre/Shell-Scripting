#!/bin/bash -x
read -p "enter day : " day
read -p "enter month : " month
if [ $month -eq 3 ];
then
		if [ $day -ge 20 ] || [ $day -le 31 ] 
		then
				echo true
		else
				echo false
		fi
fi
if [ $month -eq 4 ];
then
      if [ $day -ge 1 ] || [ $day -le 30 ] 
      then
            echo true
      else
            echo false
      fi
fi

if [ $month -eq 5 ];
then 
		if [ $day -ge 1 ] || [ $day -le 31 ] 
      then
            echo true
      else
            echo false
      fi
fi
if [ $month -eq 6 ];
then
 		if [ $day -ge 1 ] || [ $day -le 20 ] 
      then
            echo true
      else
            echo false
      fi
fi




