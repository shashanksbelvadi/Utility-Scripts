#!/bin/bash

recordtypes=( $1 )
filestocopy=( .cmp Controller.js Helper.js .svg )

dir="/Users/sbelvadi/Documents/workspace/sbelvadi-wealth1/wealth1/"
auradir="src/aura/"
loanAccountFolder="loanAccount"

for foldername in "${recordtypes[@]}"; do
    if [ -z "$foldername" ]; then
        continue
    fi

    folder=$dir$auradir$foldername
    mkdir $folder

    for filename in "${filestocopy[@]}"; do
        cp -R $dir$auradir$loanAccountFolder/$loanAccountFolder$filename $folder/$foldername$filename
        cd $dir
    done
done
