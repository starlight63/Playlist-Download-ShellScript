#!/bin/bash
yt-dlp -i --write-thumbnail --skip-download --yes-playlist `cat ../playlist-id`

mkdir jpg
mkdir ./jpg/jpg-crop

magick mogrify -format JPEG -path jpg *.webp
cp ./*.jpg ./jpg
cd ./jpg

for f in *.*
do
    echo "$f"
    convert "$f" -resize 300x300^  -gravity center -extent 300x300 "./jpg-crop/$f"
done

