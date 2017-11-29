#!/bin/bash

## array of files
declare -a files=(
    "logo_bw_bg"
    "logo_bw_trans_trimmed"
    "logo_color_bg"
    "logo_color_trans_trimmed"
    "logo_invcolor"
    "logo_wb_bg"
    "logo_wb_trans_trimmed"
    )

## array of sizes
declare -a sizes=(
    "x16"
    "x32"
    "x64"
    "x100"
    "x150"
    "x300"
    "x500"
    )

## now loop through the above array
for f in "${files[@]}"
do
    for s in "${sizes[@]}"
    do
        magick "$f".png["$s"] -set filename:area '%h' "$f"_%[filename:area].png
    done
done
