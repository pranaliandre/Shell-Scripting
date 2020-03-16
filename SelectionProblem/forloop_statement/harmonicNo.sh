#!/bin/bash -x
read -p "Enter the number" number
harmonicSum=1;
for(( j=1;$j<=$number;j++ ))
do
	harmonicSum=`echo "$harmonicSum+(1/$j)" | bc -l`; 
done
echo $harmonicSum
