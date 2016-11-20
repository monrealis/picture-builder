#!/usr/bin/env bash

mkdir -p gallery
mkdir -p gallery-output

if [ $# -eq 1 ]; then
	file=$1
else
	file=gallery.txt
fi

./download-all.sh $file

awk -F\; 'NF==3' $file  | awk -F\; 'BEGIN{ORS="\0"}{print "gallery/"$1 "\0" "gallery-output/"$1".jpg" "\0" $2 }' | xargs -0 -n3 ./add-text.sh
