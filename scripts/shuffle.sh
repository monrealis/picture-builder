#!/usr/bin/env bash

cd gallery-output
n=$(ls | wc -l)
paste <(ls | shuf) <(seq $n | xargs printf "%03d\n") | xargs -n2 ../rename-with-prefix.sh
