#!/usr/bin/env bash

if [ $# -ne 2 ]; then
    echo "Illegal number of parameters"
    exit 1
fi

file=$1
text=$2

convert $file -gravity South -strokewidth 2 -font Liberation-Sans  -stroke black -fill white -pointsize 80 -annotate 0  "$text" $file-final.jpg
