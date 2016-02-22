#!/usr/bin/env bash

if [ $# -ne 3 ]; then
    echo "Illegal number of parameters"
    exit 1
fi

inputFile=$1
outputFile=$2
text=$3

convert $inputFile -resize 800 -gravity South -strokewidth 2 -font Liberation-Sans  -stroke black -fill white -pointsize 80 -annotate 0  "$text" $outputFile
