#!/bin/sh
docker tag lidar-converter-builder:latest nexus-docker-public-hosted.ossim.io/lidar-converter-builder:latest
docker push nexus-docker-public-hosted.ossim.io/lidar-converter-builder:latest
