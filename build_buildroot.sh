#!/bin/bash

# Download buildroot source
if [ ! -d "gkdmini_buildroot" ]; then
    git clone --depth 1 git@github.com:guoyunhe/gkdmini_buildroot.git
fi

# Build buildroot toolchain
cd gkdmini_buildroot
make gkdmini_defconfig
make
cd ..