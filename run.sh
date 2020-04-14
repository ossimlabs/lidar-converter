#!/bin/sh

INPUT_DIR=`dirname $1`
INPUT_FILE=`basename $1`

WEB_ROOT_DIR=/opt/local/www/apache2/html/potree
OUTPUT_DIR=$WEB_ROOT_DIR/${INPUT_FILE%.*}

rm -rf $OUTPUT_DIR
mkdir -p $OUTPUT_DIR

#ln -s $OUTPUT_DIR $PWD/output

docker run -it --rm  \
-v $INPUT_DIR:/input \
-v $PWD/output:/output \
potree-centos:latest /usr/local/bin/PotreeConverter \
--source /input/$INPUT_FILE \
--outdir /output \
--generate-page index \
--material INTENSITY \
--edl-enabled \
--output-format LAS

#rm $PWD/output
cp -R $PWD/output/* $OUTPUT_DIR
rm -rf $PWD/output
