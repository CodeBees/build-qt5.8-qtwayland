#wayland.sourceme
WLD=$HOME/Apps/Wayland # change this to another location if you prefer
LD_LIBRARY_PATH=/home/codebee/ti-processor-sdk-linux/linux-devkit/sysroots/cortexa15hf-neon-linux-gnueabi/usr/lib
PKG_CONFIG_PATH=/home/codebee/ti-processor-sdk-linux/linux-devkit/sysroots/cortexa15hf-neon-linux-gnueabi/usr/share/pkgconfig
ACLOCAL="aclocal -I $WLD/share/aclocal"
PATH=$WLD/bin:$PATH
XDG_RUNTIME_DIR=/tmp

export WLD LD_LIBRARY_PATH PKG_CONFIG_PATH ACLOCAL PATH XDG_RUNTIME_DIR
