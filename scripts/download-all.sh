#!/usr/bin/env bash

#der Schleim - http://media2.giga.de/2013/07/perfekter-Schleim-rcm992x0.jpg
#das Kraut - http://www.goebbertsgardencenter.com/uploads/2012/07/fresh-herb-basket.jpg
#die Wurzel - http://www.duden.de/_media_/full/W/Wurzel-201020526889.jpg

mkdir -p gallery
cat gallery.txt  | gawk -F\; '{print "gallery/" $1,$3}' | xargs -n2 ./download.sh

