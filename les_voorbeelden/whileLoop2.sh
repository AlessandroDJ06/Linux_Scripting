#!/bin/bash

while [ ${#} -ne 0 ]
do
	[ -f $1 ] && echo "$1 is een file"
	shift
done
