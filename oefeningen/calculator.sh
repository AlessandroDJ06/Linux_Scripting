#!/bin/bash

read -p "Geef een eerste getal: " getal_1
read -p "Geef een tweede getal: " getal_2

echo -e "Welke operator wil je gebruiken?:
          1. optellen (+)
	  2. aftrekken (-)
	  3. vermenigvuldigen (*)
	  4. delen(/)"
read -p "kies operator: " operator

while [ "$operator" -lt 1 ] || [ "$operator" -gt 4 ]; do
      read -p "operator niet in lijst , kies een nieuwe operator!: " operator
done


if [ "$operator" -eq 1 ]; then
	oplossing=$((getal_1 + getal_2))
elif [ "$operator" -eq 2 ]; then
  	oplossing=$((getal_1 - getal_2))
elif [ "$operator" -eq 3 ]; then
	oplossing=$((getal_1 * getal_2))
else
	if [ "$getal_2" -eq 0 ]; then
		echo "je kan niet delen door 0!"
		exit 1
	else
		oplossing=$((getal_1 / getal_2))
	fi
fi

echo "de oplossing is: $oplossing"
