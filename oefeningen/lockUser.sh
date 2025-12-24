#!/bin/bash

if [ $# -lt 1 ];then
	echo "1 parameter expected, usage : lockUser <username>"
	exit 0

fi

if [ $# -gt 1 ];then 
	echo "only 1 parameter expected, usage : lockUser <username>"
	exit 0
fi

if id "$1" &>/dev/null; then
	echo "user exists"
	sudo usermod -L $1
	echo "user locked"
else
	echo "User does NOT exist"
	exit 0
fi
