#!/bin/bash

read -p "geef een bericht: " msg

echo "${msg:-Hello World}"
