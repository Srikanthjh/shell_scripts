#!/bin/bash
cd /home/ec2-user/shell_scripts/cron1_files
total=$1
count=0

while [ $count -le $total ]
do
	touch log$count-"$(date)".log
	count=$(($count + 1 ))
done
