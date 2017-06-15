
#-tslib \
#-make tools \
#-v 是详细输出模式
# -no-icu, this will disable the webkit.
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j4
#make install

# 5.9 dont't user -c++std c++11  qtwayland不支持c++11 \

sudo apt install build-essential 
sudo apt-get install Git git-core
sudo apt-get install autoconf bison flex gperf
sudo apt-get install re2c
sudo apt install libtool
sudo apt install libffi-dev
sudo apt install libexpat1-dev
sudo apt install libxml2-dev
sudo apt install doxygen xmlto graphviz
sudo apt-get install weston

---------------------------------------------------------------------------------------------------
#5.6 qtwayland编译成功

#1
export TISDKSYSTEMHOME=~/sdk/linux-devkit/sysroots
export TIROOT=$TISDKSYSTEMHOME/cortexa15hf-neon-linux-gnueabi
export TOOLROOT=$TISDKSYSTEMHOME/x86_64-arago-linux
 

./configure -debug -c++std c++11 -shared -developer-build  -opengl es2 -nomake examples -nomake tests -opensource -confirm-license -v \
 -qt-zlib -qt-libjpeg -qt-libpng -qt-freetype  \
-skip qtwebsockets -skip qtwebengine \
-device AM5728 -device-option CROSS_COMPILE=$TOOLROOT/usr/bin/arm-linux-gnueabihf-  \
-sysroot $TIROOT -prefix /usr/local/Qt-5.6.2  -hostprefix $TIROOT/qt5-host

#2
make -j2

#3
make install 


---------------------------------------------------------------------------------------------------
#5.8
export TISDKSYSTEMHOME=~/ti-processor-sdk-linux/linux-devkit/sysroots
export TIROOT=$TISDKSYSTEMHOME/cortexa15hf-neon-linux-gnueabi
export TOOLROOT=$TISDKSYSTEMHOME/x86_64-arago-linux
 

./configure -debug -opengl es2 -nomake examples -nomake tests -opensource -confirm-license -v -optimized-tools \
-device AM5728 -device-option CROSS_COMPILE=$TOOLROOT/usr/bin/arm-linux-gnueabihf-  \
-sysroot $TIROOT -prefix /opt/qt5 -extprefix $TIROOT/qt5 -hostprefix $TIROOT/qt5-host


---------------------------------------------------------------------------------

