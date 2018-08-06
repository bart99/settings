#!/bin/bash

ROOT=/Users/shpark/work/hoffice9/
WEBROOT=/Users/shpark/work/

if [ $1 = "hwp" ]
then
	cd $ROOT'Hwp'
elif [ $1 = "common" ]
then
	cd $ROOT'Common'
elif [ $1 = "apc" ]
then
	cd $ROOT'apc'
elif [ $1 = "libhwp" ]
then
	cd $ROOT'Hwp/Android/libhwp'
elif [ $1 = "hwpeditor" ]
then
	cd $ROOT'apc/Hwp_editor_apk'
elif [ $1 = "hwpviewer" ]
then
	cd $ROOT'apc/Hwp_viewer_apk'
elif [ $1 = "hwpcore" ]
then
	cd $ROOT'apc/Hwp_corelib'
elif [ $1 = "libhsp" ]
then
	cd $ROOT'libhsp'
elif [ $1 = "libbuild" ]
then
	cd $ROOT'Common/Android/libbuild'
elif [ $1 = "webhwpctrl" ]
then
	cd $WEBROOT'webhwpctrl'
elif [ $1 = "cloudoffice" ]
then
	cd $WEBROOT'CloudOffice'
else
	cd $ROOT$1
fi
