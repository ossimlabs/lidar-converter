#!/bin/sh
docker tag lidar-converter-builder-alpine:latest nexus-docker-public-hosted.ossim.io/lidar-converter-builder-alpine:latest
docker push nexus-docker-public-hosted.ossim.io/lidar-converter-builder-alpine:latest
