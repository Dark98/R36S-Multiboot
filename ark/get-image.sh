#!/bin/bash

if [[ ! -f "$ThisImgName" ]]
then
    [[ -f "${ThisImgName}.xz" ]] && rm ${ThisImgName}.xz
    thisdl=https://dark98.co.uk/Downloads/R36S/ArkOS_R35S-R36S.img.xz
    wget  --no-verbose --quiet --no-check-certificate "$thisdl" -O${ThisImgName}.xz
    unxz -T0 --force --decompress ${ThisImgName}.xz
fi
