#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Gebruik: $0 <directory>"
    exit 1
fi

dir=$1

if [ ! -d "$dir" ]; then
    echo "Fout: '$dir' is geen directory!"
    exit 1
fi

for item in "$dir"/*; do
    if [ -f "$item" ]; then
        echo "$item is een bestand"
    elif [ -d "$item" ]; then
        echo "$item is een directory"

    else
        echo "$item is iets anders (bijv. link)"
    fi

done

