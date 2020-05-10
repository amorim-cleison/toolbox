#!/bin/bash
# Script for downloading file from Google Drive
# Usage:
# $ ./download-from-gdrive.sh <file-id> <target-file-path>
fileid=$1
filename=$2

curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

rm -rf ./cookie
rm $1

