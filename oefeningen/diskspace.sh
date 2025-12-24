#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: start het script op met een folder als parameter"
	exit 1
fi

if [ ! -d ${1} ]; then
	echo "Parameter is geen directory!"
	exit 1
fi

COUNT=0
for dir in ${1}*/; do
	echo "$dir -> $(du -sh "$dir" | cut -f1) "
	((COUNT++)) 
done


if [ ${COUNT} -eq 0 ]; then
	echo "geen folders gevonden"
elif [ ${COUNT} -eq 1 ]; then
	echo "$COUNT folder gevonden"
else
	echo "$COUNT folders gevonden"
fi
