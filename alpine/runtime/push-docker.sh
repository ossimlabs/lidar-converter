#!/bin/sh
docker tag lidar-converter-alpine:latest nexus-docker-public-hosted.ossim.io/lidar-converter-alpine:latest
docker push nexus-docker-public-hosted.ossim.io/lidar-converter-alpine:latest
