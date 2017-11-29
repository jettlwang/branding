#!/bin/bash

./copy_and_crop.sh
./thumbs_icons.sh
./thumbs_logos.sh

# Create the favicon specially.
cp icon_color_trans_trimmed_16x16.png favicon.png
