#!/usr/bin/env bash

letters="AĄBCČDEĘĖFGHIĮYJKLMNOPRSŠTUŲŪVZŽ0123456789"
echo $letters | grep -o . | cat -n

mkdir -p output
convert -strokewidth 2 -font Liberation-Sans -stroke black -fill white -pointsize 80 label:One output/final.jpg
