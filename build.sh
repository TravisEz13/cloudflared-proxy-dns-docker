#!/bin/bash
SCRIPTFOLDER=$(dirname $0)
IMAGE_NAME="cloudflared-proxy-dns-docker:branch-$(git rev-parse --abbrev-ref HEAD)"
export IMAGE_NAME
pushd $SCRIPTFOLDER
"$SCRIPTFOLDER/hooks/build"
popd
