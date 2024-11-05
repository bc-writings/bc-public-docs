#!/bin/bash

fic="$1"
if [ ! -f "$fic" ]
then
    echo "File not found..."
    exit 1
fi

inc=1
rubber -df "$fic"
xreader "${fic/%.tex/.pdf}" &
oldmd5=$(md5sum "$fic")

while true
do
    sleep 1
    newmd5=$(md5sum "$fic")
    if [ "$oldmd5" != "$newmd5" ]
    then
        inc=$((inc+1))
        echo -n "version $inc : "
        rubber -df "$fic"
        oldmd5="$newmd5"
    fi
done 
