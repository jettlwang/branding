#!/bin/bash

# Crop all the logos & icons we want to crop.
convert master/icon_bw_trans.png -gravity Center -crop 52x52%+0+0 icon_bw_trans_trimmed.png
convert master/icon_color_trans.png -gravity Center -crop 52x52%+0+0 icon_color_trans_trimmed.png
convert master/icon_wb_trans.png -gravity Center -crop 52x52%+0+0 icon_wb_trans_trimmed.png
convert master/logo_bw_trans.png -trim logo_bw_trans_trimmed.png
convert master/logo_color_trans.png -trim logo_color_trans_trimmed.png
convert master/logo_wb_trans.png -trim logo_wb_trans_trimmed.png

# And here are the circle versions for the ones with opaque backgrounds.
convert master/icon_bw_bg.png \( -size 1111x1111 xc:none -fill white \
    -draw "circle 555.5,555.5 555.5,90" \) -compose copy_opacity \
    -composite -trim icon_bw_bg_circle.png
convert master/icon_color_bg.png \( -size 1111x1111 xc:none -fill white \
    -draw "circle 555.5,555.5 555.5,90" \) -compose copy_opacity \
    -composite -trim icon_color_bg_circle.png
convert master/icon_invcolor.png \( -size 1111x1111 xc:none -fill white \
    -draw "circle 555.5,555.5 555.5,90" \) -compose copy_opacity \
    -composite -trim icon_invcolor_circle.png
convert master/icon_wb_bg.png \( -size 1111x1111 xc:none -fill white \
    -draw "circle 555.5,555.5 555.5,90" \) -compose copy_opacity \
    -composite -trim icon_wb_bg_circle.png

# Copy over the ones we don't want to crop.
cp master/icon_bw_bg.png .
cp master/icon_color_bg.png .
cp master/icon_invcolor.png .
cp master/icon_wb_bg.png .
cp master/logo_bw_bg.png .
cp master/logo_color_bg.png .
cp master/logo_invcolor.png .
cp master/logo_wb_bg.png .
