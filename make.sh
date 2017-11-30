#!/bin/bash

## Array of sizes (size == height in pixels of the output file).
declare -a SIZES=(
    "16"
    "32"
    "64"
    "100"
    "150"
    "300"
    "500"
    )

## now loop through the above array
for FILE in svg/*
do
    for SIZE in "${SIZES[@]}"
    do
        TEMP=$(basename "$FILE")
        SLUG="${TEMP%.*}"
        convert -background none -size x"$SIZE" "$FILE" png/"$SLUG"_"$SIZE".png
    done
done

# Create the favicon specially.
cp png/icon_color_trimmed_16.png png/favicon.png
