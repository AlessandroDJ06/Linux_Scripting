#!/bin/bash

for i in $(ls)
do 
	if [ -f $i ]; then
	       echo "$i is een file"
	elif [ -d $i ]; then
		echo "$i is een directory"
	else
		echo "onbekend"
	fi
done


