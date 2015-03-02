if [ -e /.bashrc ]; then
  source /.bashrc
fi
export PKG_CONFIG_PATH=/opt/$VENDOR/lib/pkgconfig
echo "vendor name: $VENDOR"

# generate Makefile
rm -rf CMakeCache.txt CMakeFiles

EXTRA_ARGS=

if [ -e toolchains/$VENDOR.cmake ]; then
  EXTRA_ARGS="-DCMAKE_TOOLCHAIN_FILE=toolchains/$VENDOR.cmake"
fi

cmake CMakeLists.txt $EXTRA_ARGS

# build file
make
