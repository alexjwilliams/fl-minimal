#!/bin/bash

# Copyright (c) 2022 Alexander Williams <alexwilliams@protonmail.ch>
# SPDX-License-Identifier: LicenseRef-MIT-Alex

PROJECT_DIR=$(dirname $(realpath $0))
BUILD_DIR=$PROJECT_DIR/build

cd $BUILD_DIR && CTEST_OUTPUT_ON_FAILURE=1 make -j$(nproc) test
