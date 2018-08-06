#!/bin/bash 

if [ $# -eq 0 ]
then
	echo $ANDROID_SERIAL
elif [ $1 = "unset" ]
then
	unset ANDROID_SERIAL
else
	export ANDROID_SERIAL=$1
fi 
