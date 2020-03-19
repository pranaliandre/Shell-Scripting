#!/bin/bash -x
read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c

result1=`echo "$a + $b * $c" | bc -l`
result2=`echo "$a % $b + $c " | bc -l`
result3=`echo "$c + $a / $b " | bc -l`
result4=`echo "$a * $b + $c" | bc -l`


