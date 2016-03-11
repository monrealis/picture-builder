#!/usr/bin/env bash

me=$0
dir=$(cd $(dirname $me); pwd)
echo $dir 

#cd output
n=$(ls | wc -l)
paste <(ls | shuf) <(seq $n | xargs printf "%03d\n") | xargs -n2 $dir/rename-with-prefix.sh
