#!/bin/sh

INPUT_DIR=`dirname $1`
INPUT_FILE=`basename $1`

WEB_ROOT_DIR=/opt/local/www/apache2/html/entwine
OUTPUT_DIR=$WEB_ROOT_DIR/${INPUT_FILE%.*}

rm -rf $OUTPUT_DIR
mkdir -p $OUTPUT_DIR

rm -rf $PWD/output
mkdir $PWD/output

docker run -it --rm \
-v $INPUT_DIR:/input \
-v $PWD/output:/output \
lidar-converter-alpine:latest \
entwine build \
-i /input/$INPUT_FILE \
-o /output

cp -R $PWD/output/* $OUTPUT_DIR
rm -rf $PWD/output

open https://potree.entwine.io/data/view.html?r=%22http://localhost/entwine//${INPUT_FILE%.*}%22
