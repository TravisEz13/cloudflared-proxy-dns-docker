#!/bin/bash
SCRIPTFOLDER=$(dirname $0)
DOCKERFILE_PATH="$SCRIPTFOLDER/docker/Dockerfile"
IMAGE_NAME="cloudflared-proxy-dns-docker-local"
export DOCKERFILE_PATH
export IMAGE_NAME
"$SCRIPTFOLDER/docker/hooks/build"
