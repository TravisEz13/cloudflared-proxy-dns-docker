#!/bin/bash
SCRIPTFOLDER=$(dirname $0)
IMAGE_NAME="cloudflared-proxy-dns-docker-local"
export IMAGE_NAME
pushd $SCRIPTFOLDER
"$SCRIPTFOLDER/hooks/build"
popd
