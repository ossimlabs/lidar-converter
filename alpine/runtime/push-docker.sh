#!/bin/sh
docker tag lidar-converter:latest nexus-docker-public-hosted.ossim.io/lidar-converter:latest
docker push nexus-docker-public-hosted.ossim.io/lidar-converter:latest
