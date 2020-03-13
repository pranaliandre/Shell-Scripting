#!/bin/bash -x
read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c
echo "$a + $b * $c" | bc -l
echo "$a % $b + $c " | bc -l
echo "$c + $a / $b " | bc -l
echo "$a * $b + $c" | bc -l


