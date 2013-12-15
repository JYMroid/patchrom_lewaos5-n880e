#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

BUILD_OUT=out
XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify

function appendPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

if [ $1 = "Settings" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	appendPart $1
fi

if [ $1 = "LewaLauncherX" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	appendPart $1
fi

