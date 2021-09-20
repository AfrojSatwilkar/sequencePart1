#!/bin/bash

for ((i=0;i<=4;i++))
do
	num=$((RANDOM%90+10))
	sum=$(($sum+$num))
	echo $num
done
echo "total sum of 2 digit 5 random numbers is:" $sum

avg=`expr $sum | awk '{avg=$1/5} {print avg}'`
echo "the avg of 2 digit  5 random number is:-" $avg
