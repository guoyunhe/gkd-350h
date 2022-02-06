#!/bin/bash

PATH=$(realpath gkdmini_buildroot/output/host/bin):$PATH

# Download buildroot source
if [ ! -d "gkdmini_buildroot" ]; then
    git clone --depth 1 https://github.com/gameblabla/gkdmini_buildroot.git
fi

# Build buildroot toolchain
cd gkdmini_buildroot
make gkdmini_defconfig
make
cd ..