#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

NESP_FILES=./nesp-files

#unzip Webview.apk to stockrom
tar -xf $NESP_FILES/webview.tar.gz -C ../stockrom/system/app
#unzip LIB files
tar -xf $NESP_FILES/lib64.tar.gz -C ./system
tar -xf $NESP_FILES/lib.tar.gz -C ./system
