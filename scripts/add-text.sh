#!/usr/bin/env bash

if [ $# -ne 3 ]; then
    echo add-text.sh: illegal number of parameters: $#
	echo Parameters: $@    
    exit 1
fi

inputFile=$1
outputFile=$2
text=$3

convert $inputFile -resize 800x640 -gravity South -strokewidth 1 -font Liberation-Sans  -stroke black -fill white -pointsize 60 -annotate 0  "$text" $outputFile
