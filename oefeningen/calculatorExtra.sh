#!/bin/bash


if [ $# -gt 3 ]; then
	echo "commando verwacht max 2 atgumenten vb: commando [getal1] [getal2] [operator]"
	exit 1
fi

if [ $# -lt 3 ]; then
	echo "commando verwacht minstens 3 argumenten vb: commando [getal1] [getal2] [opeator]"
	exit 1
fi


getal_1=$1
getal_2=$2
operator=$3
geldige_operatoren=( + - \* / )
geldig=false


for op in "${geldige_operatoren[@]}"; do
	if [ "$operator" = "$op" ]; then
		geldig=true
		break
	fi
done

if [ "$geldig" = false ]; then
	echo "ongeldige operator, geef een geldige operator!: "
	echo -e "Welke operator wil je gebruiken?:
          1. optellen (+)
          2. aftrekken (-)
          3. vermenigvuldigen (*)
          4. delen(/)"
	read -p "kies operator: " oppNum

	while [ "$oppNum" -lt 1 ] || [ "$oppNum" -gt 4 ]; do
      		read -p "operator niet in lijst , kies een nieuwe operator!: " operator
	done
	
	if [ "$oppNum" -eq 1 ]; then
		operator="+"
	elif [ "$oppNum" -eq 2 ]; then
		operator="-"
	elif [ "$oppNum" -eq 3 ]; then
		operator="*"
	else
		operator="/"
	fi		 

fi

if [ "$operator" = "+" ]; then
        oplossing=$(( getal_1 + getal_2))
elif [ "$opeartor" = "-" ]; then
        oplossing=$((getal_1 - getal_2))
elif [ "$operator" = "*" ]; then
        oplossing=$((getal_1 * getal_2))
elif [ "$operator" = "/" ]; then
        if [ "$getal_2" -eq 0 ]; then
                echo "je kan niet delen door 0!"
                exit 1
        else
                oplossing=$((getal_1 / getal_2|bc -l))
        fi
else
	echo "ongeldige opp"
fi

echo "de oplossing is: $oplossing"
