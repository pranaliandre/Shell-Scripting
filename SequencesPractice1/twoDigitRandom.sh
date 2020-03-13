#!/bin/bash -x

count=0;
value=0;
while [ $count != 5 ]
	do
		value=$((RANDOM % 100))
		if [ $((value/10)) -ge 1 ]
			then
				echo $value	
				sum=$((sum+value))
				((count++))
	fi
	done		
	avg=$(echo "scale=2; $sum / $count" | bc)
	
