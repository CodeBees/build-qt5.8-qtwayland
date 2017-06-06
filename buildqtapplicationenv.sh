

#编译qt时的环境变量设置 source ..
export RPI_SYSROOT=~/ti-linux-am57xx/linux-devkit/sysroots/cortexa15hf-neon-linux-gnueabi
export TOOLCHAIN=~/ti-linux-am57xx/linux-devkit/sysroots/x86_64-arago-linux/usr
export QTDIR=$RPI_SYSROOT/opt/qt5
export PATH=$QTDIR/bin:$TOOLCHAIN/bin:$PATH
export PREFIX=/opt/qt5
export PKG_CONFIG_PATH="$RPI_SYSROOT/usr/lib/pkgconfig:$RPI_SYSROOT/$PREFIX/lib/pkgconfig:$RPI_SYSROOT/$PREFIX/share/pkgconfig"
export PKG_CONFIG_SYSROOT_DIR="$RPI_SYSROOT"
export PKG_CONFIG_ALLOW_SYSTEM_LIBS=1
export PKG_CONFIG_ALLOW_SYSTEM_CFLAGS=1

#编译工具链配置
export CPP=$TOOLCHAIN/bin/arm-linux-gnueabihf-cpp
export CC=$TOOLCHAIN/bin/arm-linux-gnueabihf-gcc
export CXX=$TOOLCHAIN/bin/arm-linux-gnueabihf-g++
export CFLAGS="—sysroot=$RPI_SYSROOT"
export CXXFLAGS="—sysroot=$RPI_SYSROOT"
export CPPFLAGS="—sysroot=$RPI_SYSROOT"
export LD=$TOOLCHAIN/bin/arm-linux-gnueabihf-ld
export LDFLAGS="—sysroot=$RPI_SYSROOT"
export AS=$TOOLCHAIN/bin/arm-linux-gnueabihf-as
export STRIP=$TOOLCHAIN/bin/arm-linux-gnueabihf-strip
export AR=$TOOLCHAIN/bin/arm-linux-gnueabihf-ar


git clone git://github.com/atgreen/libffi.git
cd libffi
./configure —host=arm-linux —prefix=$RPI_SYSROOT$PREFIX
make
sudo make install
