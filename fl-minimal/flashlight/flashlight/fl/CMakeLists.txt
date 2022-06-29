cmake_minimum_required(VERSION 3.10)

# ----------------------------- Setup -----------------------------
set(FL_CORE_COMPONENT_SRC_DIR "${CMAKE_CURRENT_LIST_DIR}") # module root

# -------------------------------- Components --------------------------------

# Internal includes are implicitly defined as <flashlight...>
target_include_directories(
  flashlight
  PUBLIC
  $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}>
)

# -------------------------------- Components --------------------------------

# Common
include(${FL_CORE_COMPONENT_SRC_DIR}/common/CMakeLists.txt)

# Autograd
include(${FL_CORE_COMPONENT_SRC_DIR}/autograd/CMakeLists.txt)

# Dataset
include(${FL_CORE_COMPONENT_SRC_DIR}/dataset/CMakeLists.txt)

# Memory
include(${FL_CORE_COMPONENT_SRC_DIR}/memory/CMakeLists.txt)

# NN
include(${FL_CORE_COMPONENT_SRC_DIR}/nn/CMakeLists.txt)

# Optim
include(${FL_CORE_COMPONENT_SRC_DIR}/optim/CMakeLists.txt)

# Tensor
include(${FL_CORE_COMPONENT_SRC_DIR}/tensor/CMakeLists.txt)

# --------------------------- Configure Examples/Tests ---------------------------

# Build tests
if (FL_BUILD_TESTS)
  add_subdirectory(${FL_CORE_COMPONENT_SRC_DIR}/test)
endif ()
