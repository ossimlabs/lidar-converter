#!/bin/sh

rm -rf output
mkdir output

docker run -it --rm  \
-v $PWD/input:/input \
-v $PWD/output:/output \
potree-centos:latest /usr/local/bin/PotreeConverter \
-i /input/USGS_LPC_MD_VA_Sandy_NCR_2014_18SUJ322306_LAS_2015.las \
-o /output \
-p index 

rm -rf /opt/local/www/apache2/html/potree/foobar
cp -R output /opt/local/www/apache2/html/potree/foobar
