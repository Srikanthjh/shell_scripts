#!/bin/bash

ram=$(free -mt | grep "Total:" | awk '{print $4/$2 * 100}')

echo "==>Percentage of free RAM is $ram %"

if [ "$ram" < 100 ];then
	echo "==>threshold is valid"
else
	echo "==>threshold is invalid"
	exit 1;
fi
if [[ "$ram" < 10 ]];then
	echo "==>ALERT!!"

elif [[ "$ram" > 10 && $ram < 30 ]]; then
	echo "==>System is moving towards alert zone"

elif [[ "$ram" > 30 && $ram < 70 ]]; then
	echo "==>System is in managable zone"
else
	echo "==>System is in safe zone"
	exit 2;
fi
