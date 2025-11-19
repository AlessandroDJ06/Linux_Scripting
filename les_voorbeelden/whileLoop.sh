#!/bin/bash

while [ ${#} -ne 0 ]
do 
	echo "${1}" #toont het huidige 1ste argument
	shift #shift schuift het argument altijd 1plek op naar links, dus aaantal args zakt
done
