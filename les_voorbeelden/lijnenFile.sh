#!/bin/bash

read -p "geef een bestandsnaam: " bestand

while read -r line 
do
	echo "${line}"
done < $bestand
