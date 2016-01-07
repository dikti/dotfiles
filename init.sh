#!/bin/sh

CURDIR=$(pwd)
BASEDIR=$(dirname $0)
if [ $BASEDIR = "." ]; then
	BASEDIR=$CURDIR
fi

for i in $(ls $BASEDIR); do
	ln -Fs "$BASEDIR"/"$i" ~/."$i"
done
