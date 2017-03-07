#!/bin/bash

foldername=$1
declare -a filetypes=( '.cmp' '.cmp-meta.xml' 'Controller.js' 'Helper.js' '.svg' )

dir="/Users/sbelvadi/Documents/workspace/sbelvadi-wealth1/wealth1"
auradir="/src/aura/"

aurafolder=$dir$auradir
cd $aurafolder

echo "Creating folder: "$foldername
mkdir $foldername

cd $foldername

for filetype in "${filetypes[@]}"; do
    echo "Creating file: "$foldername$filetype
    echo "New file..." > $foldername$filetype
done
