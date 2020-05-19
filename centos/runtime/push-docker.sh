#!/bin/sh
docker tag lidar-converter-centos:latest nexus-docker-public-hosted.ossim.io/lidar-converter-centos:latest
docker push nexus-docker-public-hosted.ossim.io/lidar-converter-centos:latest
