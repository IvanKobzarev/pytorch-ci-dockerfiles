#!/bin/bash

set -ex

[ -n "$NINJA_VERSION" ]

url="https://github.com/ninja-build/ninja/releases/download/v${NINJA_VERSION}/ninja-linux.zip"

pushd /tmp
curl -Os "$url"
unzip -d /usr/local/bin ninja-linux.zip
rm -f ninja-linux.zip
popd
