#!/bin/bash -x

declare -A dice
diceValue=1
function rollDice()
{
	while [[ dice[$diceValue] -ne 10  ]]
	do
		diceValue=$((RANDOM % 6 + 1))
		dice["$diceValue"]=$((${dice["$diceValue"]}+1))	
	done
	echo "${!dice[@]} value= ${dice[@]}"
}
function MaxMinOccurance()
{
	order=$1
	for i in ${!dice[@]}
	do
		echo $i ${dice[$i]}
	done | sort -k2 $order | head -n 1
}
rollDice
maxOccurance="$(MaxMinOccurance '-rn' )"
minOccurance="$(MaxMinOccurance '-n' )"
