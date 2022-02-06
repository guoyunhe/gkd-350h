#!/bin/bash

PATH=$(realpath gkdmini_buildroot/output/host/bin):$PATH

# Download love source
LOVE_VERSION=11.4
LOVE_DIR="love-$LOVE_VERSION"
if [ ! -d "love-$LOVE_VERSION" ]; then
    LOVE_TARBALL="love-$LOVE_VERSION-linux-src.tar.gz"
    wget "https://github.com/love2d/love/releases/download/$LOVE_VERSION/$LOVE_TARBALL"
    tar -xf $LOVE_TARBALL
    rm $LOVE_TARBALL
fi

# Build love
cd $LOVE_DIR
./configure --host=mipsel-linux --with-lua=lua --with-luaversion=5.3
make
cd ..