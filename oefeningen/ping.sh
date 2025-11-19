#!/bin/bash

bestand=hosts.txt

while read -r line
do
        ping -c 1 ${bestand} >> /tmp/ping
done < $bestand
