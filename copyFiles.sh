#!/bin/bash

fromfolder=$1
tofolder=( $2 )
filestocopy=( .cmp .cmp-meta.xml Controller.js Helper.js .svg )

dir="/Users/sbelvadi/Documents/workspace/sbelvadi-wealth1/wealth1/"
auradir="src/aura/"

for foldername in "${tofolder[@]}"; do
    if [ -z "$foldername" ]; then
        continue
    fi

    folder=$dir$auradir$foldername
    mkdir $folder

    for filename in "${filestocopy[@]}"; do
        cp -R $dir$auradir$fromfolder/$fromfolder$filename $folder/$foldername$filename
        cd $dir
    done
done
