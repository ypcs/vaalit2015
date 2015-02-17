#!/bin/sh
set -e

SIZES="600x 800x 1000x 1200x"

for p in *.jpg
do
    for s in ${SIZES}
    do
        mkdir -p $s
        convert -resize ${s} $p $s/$p
    done
done
