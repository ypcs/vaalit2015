#!/bin/sh
set -e

for f in *.mts
do
    avconv -i $f -t 60 -y -vcodec copy -acodec aac -strict experimental -ab 128k $(echo $f |sed 's/\.mts$/\.mp4/g')
done

