
#-tslib \
#-make tools \
#-v 是详细输出模式
# -no-icu, this will disable the webkit.
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j4
#make install

# dont't user -c++std c++11  qtwayland不支持c++11 \

sudo apt install autoconf
sudo apt install libtool
sudo apt install libffi-dev
sudo apt install libexpat1-dev
sudo apt install libxml2-dev
sudo apt install doxygen xmlto graphviz
sudo apt-get install weston



export TISDKSYSTEMHOME=/home/codebee/ti-linux-am57xx/linux-devkit/sysroots
export TIROOT=$TISDKSYSTEMHOME/cortexa15hf-neon-linux-gnueabi
export TOOLROOT=$TISDKSYSTEMHOME/x86_64-arago-linux
 

./configure -release -opengl es2 -nomake examples -nomake tests -opensource -confirm-license -v \
-device AM5728 -device-option CROSS_COMPILE=~/ti-linux-am57xx/linux-devkit/sysroots/x86_64-arago-linux/usr/bin/arm-linux-gnueabihf-  \
-sysroot $TIROOT -prefix /usr/local/qt5 -extprefix $TIROOT/qt5 -hostprefix $TIROOT/qt5-host



