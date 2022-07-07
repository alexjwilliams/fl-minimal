/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT-style license found in the
 * LICENSE file in the root directory of this source tree.
 */

#include "flashlight/fl/autograd/tensor/backend/cudnn/CudnnAutogradExtension.h"

#include <cudnn.h>

namespace fl {

bool CudnnAutogradExtension::isDataTypeSupported(const fl::dtype& dtype) const {
  switch (dtype) {
    case fl::dtype::f16:
    case fl::dtype::f32:
    case fl::dtype::f64:
      return true;
    default:
      return false;
  }
}

} // namespace fl
