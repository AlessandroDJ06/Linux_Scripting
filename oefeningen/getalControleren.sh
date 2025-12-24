#!/bin/bash

read -p "geef een getal: " getal

if [ $getal -gt 0 ]; then
        echo "het getal is positief"
elif [ $getal -eq 0 ]; then
	echo "getal is gelijk aan nul"
else 
	echo "getal is negatief"
fi


