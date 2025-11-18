#!/bin/bash

read -p "welk woord wil je zoeken: " woord

echo "zoeken naar het woord: ${woord}"

grep -E "$woord" ~/text.txt
