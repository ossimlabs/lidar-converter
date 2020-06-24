#!/bin/sh
docker run -it -v $OSSIM_DATA:/input --rm lidar-converter-alpine
