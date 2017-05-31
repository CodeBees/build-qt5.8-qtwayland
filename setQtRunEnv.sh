export QTDIR=/opt
export QT_QPA_FONTDIR=$QTDIR/lib/fonts
export QT_QPA_PLATFORM_PLUGIN_PATH=$QTDIR/plugins
export LD_LIBRARY_PATH=$QTDIR/lib:$LD_LIBRARY_PATH
#export QT_QPA_PLATFORM=linuxfb:fb=/dev/fb0:size=1920x1080:mmSize=1024x768:offset=0x0:tty=/dev/tty1
export QML_IMPORT_PATH=$QTDIR/qml
export QML2_IMPORT_PATH=$QTDIR/qml
export QT_QPA_EGLFS_FB="/dev/fb0"
#export QT_QPA_EGLFS_WIDTH=1920
#export QT_QPA_EGLFS_HEIGHT=1080
export QT_QPA_EGLFS_DEPTH=32
#export QT_QPA_EGLFS_PHYSICAL_WIDTH=1920
#export QT_QPA_EGLFS_PHYSICAL_HEIGHT=1080
export QT_LOGGING_RULES=qt.qpa.*=true


