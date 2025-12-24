#!/bin/bash

echo "1ste argument : $1"

if [ $# -ne 1 ];then 
	echo "geen of teveel argumenten ontvangen maar verwacht er 1"
fi

if ! [ -r $1 ];then
	echo "dit is geen bestand"
	exit 1
fi



while read -r line
do
        echo "${line}"
	name=$(echo $line | cut -d " " -f 1)
	pass=$(echo $line | cut -d " " -f 2)
	echo $name $pass
done < $1
 





echo "Users created"
