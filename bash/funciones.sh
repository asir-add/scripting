#!/bin/bash


function a_pesetas () {
	EURO=166
	echo `expr $1 \* $EURO`
}

var=`a_pesetas 213`
echo $var
