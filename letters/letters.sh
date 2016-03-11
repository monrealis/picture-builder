#!/usr/bin/env bash

mkdir -p output

letters="AĄBCČDEĘĖFGHIĮYJKLMNOPRSŠTUŲŪVZŽ0123456789"
index=1
for letter in $(echo $letters | grep -o .) ; do
	convert -strokewidth 2 -font Liberation-Sans -stroke black -fill white -pointsize 80 "label:$letter" output/$index-$letter.jpg
	index=$[$index + 1]
done
