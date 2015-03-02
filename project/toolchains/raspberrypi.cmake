set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR arm)

###
set(TOOLCHAIN_PREFIX arm-linux-gnueabihf)
set(TOOLCHAIN_BASE_PATH /opt/tools-master/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64)
set(TOOLCHAIN_BIN_PATH ${TOOLCHAIN_BASE_PATH}/bin)
set(PKG_CONFIG_EXECUTABLE ${TOOLCHAIN_BIN_PATH}/${TOOLCHAIN_PREFIX}-pkg-config)
###

set(CMAKE_C_COMPILER    ${TOOLCHAIN_BIN_PATH}/${TOOLCHAIN_PREFIX}-gcc)
set(CMAKE_CXX_COMPILER  ${TOOLCHAIN_BIN_PATH}/${TOOLCHAIN_PREFIX}-g++)
message("${TOOLCHAIN_BIN_PATH}/${TOOLCHAIN_PREFIX}-gcc")
set(CMAKE_AR  ${TOOLCHAIN_BIN_PATH}/${TOOLCHAIN_PREFIX}-ar CACHE PATH "archive")
set(ARM_LINUX_SYSROOT ${TOOLCHAIN_BIN_PATH} CACHE PATH "ARM cross compilation system root")

set(CMAKE_SKIP_RPATH TRUE CACHE BOOL "If set, runtime paths are not added when using shared libraries." )
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ONLY)

set(CMAKE_FIND_ROOT_PATH ${CMAKE_FIND_ROOT_PATH} ${ARM_LINUX_SYSROOT})
message(${ARM_LINUX_SYSROOT})