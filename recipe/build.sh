#!/usr/bin/env bash
set -euo pipefail

mkdir -p build
cd build

cmake ${CMAKE_ARGS} \
    -DCMAKE_BUILD_TYPE=Release \
    -Dmomentum:STRING=GEV \
    -Dlength:STRING=MM \
    ../source

make -j${CPU_COUNT}
make test
make install
