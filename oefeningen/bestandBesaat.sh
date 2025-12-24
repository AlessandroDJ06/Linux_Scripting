#!/bin/bash

if [ $# -eq 0 ]; then
       echo "commando verwacht minstens 1 argument."
       exit 1
fi

if [ $# -gt 1 ]; then
	echo "commando kan max 1 argument accepteren"
	exit 1
fi

if [ -f "$1" ]; then
	echo "{$1} is een bestand"
else
	echo "{$1} is een geen bestand"
fi
