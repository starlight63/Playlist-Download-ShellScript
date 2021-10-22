#!/bin/bash
mkdir withcover


for f in *.mp3
do
    echo "$f"
    ffmpeg -i "$f" -i "./jpg/jpg-crop/${f%%.*}.JPEG" -map 0:0 -map 1:0 -codec copy -id3v2_version 3 \
-metadata:s:v title="Album cover" -metadata:s:v comment="Cover (front)" "../Music/$f"
done


