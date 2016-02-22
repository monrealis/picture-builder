#!/usr/bin/env bash

mkdir -p gallery
mkdir -p gallery-output

./download-all.sh

cat gallery.txt  | gawk -F\; 'BEGIN{ORS=""}{print "gallery/"$1 "\0" "gallery-output/"$1".jpg" "\0" $2 }' | xargs -0 -n3 ./add-text.sh

#convert barrel.png -gravity South -strokewidth 2 -font Liberation-Sans  -stroke black -fill white  -pointsize 80 -annotate 0  'das Fass\ncask' temp1.jpg
#xdg-open temp1.jpg
