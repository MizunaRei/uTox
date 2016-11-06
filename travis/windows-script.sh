#!/bin/sh
set -eux

. ./travis/env.sh

export CFLAGS="-I$CACHE_DIR/usr/include -I/usr/share/mingw-w64/include/"

cmake . -DCMAKE_TOOLCHAIN_FILE=cmake/toolchain-win64.cmake
make VERBOSE=1
