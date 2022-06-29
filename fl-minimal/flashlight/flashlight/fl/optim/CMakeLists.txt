cmake_minimum_required(VERSION 3.10)

# ----------------------------- Optim -----------------------------

set(
  OPTIM_SOURCES
  ${CMAKE_CURRENT_LIST_DIR}/Optimizers.cpp
  ${CMAKE_CURRENT_LIST_DIR}/Utils.cpp
  ${CMAKE_CURRENT_LIST_DIR}/SGDOptimizer.cpp
  )

target_sources(
  flashlight
  PRIVATE
  ${OPTIM_SOURCES}
  )
