#!/bin/sh
docker tag lidar-converter-builder-centos:latest nexus-docker-public-hosted.ossim.io/lidar-converter-builder-centos:latest
docker push nexus-docker-public-hosted.ossim.io/lidar-converter-builder-centos:latest
