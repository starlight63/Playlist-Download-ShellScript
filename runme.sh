#!/bin/bash
mkdir Music
cd Download
sh scrape.sh
sh convert-jpg.sh
sh embed-art.sh
cd ..
