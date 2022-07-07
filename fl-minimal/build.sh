#!/bin/bash

# Copyright (c) 2022 Alexander Williams <alexwilliams@protonmail.ch>
# SPDX-License-Identifier: LicenseRef-MIT-Alex

PROJECT_DIR=$(dirname $(realpath $0))
BUILD_DIR=$PROJECT_DIR/build

mkdir -p $BUILD_DIR

cmake .. -DCMAKE_BUILD_TYPE=Release \
	-DFL_BUILD_ARRAYFIRE=ON \
  -DFL_ARRAYFIRE_USE_CUDA=ON \
	-DFL_BUILD_TESTS=ON \
	-DCMAKE_CUDA_COMPILER='/usr/local/cuda/bin/nvcc' \
	-B $BUILD_DIR \
	-S $PROJECT_DIR/flashlight \
	-DCMAKE_EXE_LINKER_FLAGS="-B=mold" # for gcc-12: "-fuse-ld=mold"

cd $BUILD_DIR && make -j$(nproc)
cd $BUILD_DIR && make install
