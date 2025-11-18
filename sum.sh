#!/bin/bash

read -p "geef een eerst getal: " getal_1

read -p "geef een tweede getal: " getal_2

getal_1=${getal_1:=0}
getal_2=${getal_2:=0}

echo "$((${getal_1} + ${getal_2}))"
