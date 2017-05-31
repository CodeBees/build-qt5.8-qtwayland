
#-tslib \
#-make tools \
#-v 是详细输出模式
# -no-icu, this will disable the webkit.
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j4
#make install


export TISDKSYSTEMHOME=~/ti-sdk-linux/linux-devkit/sysroots
export TIROOT=$TISDKSYSTEMHOME/armv7ahf-neon-linux-gnueabi
export TOOLROOT=$TISDKSYSTEMHOME/x86_64-arago-linux
 

./configure -release -opengl es2 -nomake examples -nomake tests -opensource -confirm-license -v \
-release -c++std c++11 \
-skip qtenginio -skip qtlocation -skip qtmultimedia  -skip qttools \
-device AM5728 -device-option CROSS_COMPILE=$TOOLROOT/usr/bin/arm-linux-gnueabihf- \
-sysroot $TIROOT -prefix /usr/local/qt5 -extprefix $TIROOT/qt5 -hostprefix $TIROOT/qt5-host



