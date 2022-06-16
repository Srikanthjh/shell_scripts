#!/bin/bash

mkdir forlog
cd forlog

for (( i=0; i<10; i++ ))
do
	touch file$i.txt
if [ $i -eq 5 ]
then
	chmod 444 file$i.txt
fi
if [ $i -eq 7 ]
then
	chmod 777 file$i.txt
fi
if [ $i -eq 10 ]
then
	chmod 111 file$i.txt
fi
done


