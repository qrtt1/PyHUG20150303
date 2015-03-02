cmake_minimum_required (VERSION 2.6)
project (PyHUGLab)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake-modules)

include(FindPkgConfig)
find_package(FFMPEG REQUIRED)

include_directories(${LIBAVUTIL_INCLUDE_DIRS})
include_directories(${LIBAVFORMAT_INCLUDE_DIRS})
include_directories(${LIBAVCODEC_INCLUDE_DIRS})

file(GLOB SRC_LIST *.c)

add_executable(PyHUGLab ${SRC_LIST})

target_link_libraries(PyHUGLab ${LIBAVUTIL_LIBRARIES})
target_link_libraries(PyHUGLab ${LIBAVFORMAT_LIBRARIES})
target_link_libraries(PyHUGLab ${LIBAVCODEC_LIBRARIES})

