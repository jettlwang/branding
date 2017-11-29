#!/bin/bash

## array of files
declare -a files=(
    "icon_bw_bg"
    "icon_bw_bg_circle"
    "icon_bw_trans_trimmed"
    "icon_color_bg"
    "icon_color_bg_circle"
    "icon_color_trans_trimmed"
    "icon_invcolor"
    "icon_invcolor_circle"
    "icon_wb_bg"
    "icon_wb_bg_circle"
    "icon_wb_trans_trimmed"
    )

## array of sizes
declare -a sizes=(
    "16x16"
    "32x32"
    "64x64"
    "100x100"
    "150x150"
    "300x300"
    "500x500"
    )

## now loop through the above array
for f in "${files[@]}"
do
    for s in "${sizes[@]}"
    do
        magick "$f".png["$s"] -set filename:area '%wx%h' "$f"_%[filename:area].png
    done
done
