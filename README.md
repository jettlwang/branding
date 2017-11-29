![Luna logo](https://github.com/lunalabs/branding/raw/master/logo_color_trans_trimmed_100.png)

----

Luna branding, including logo and wordmark,
in many color modes and sizes.

All the sizes and cropped versions are generated from
the following 14 master files:
```
icon_bw_bg.png
icon_bw_trans_cropped.png
icon_color_bg.png
icon_color_trans_cropped.png
icon_invcolor.png
icon_wb_bg.png
icon_wb_trans_cropped.png
logo_bw_bg.png
logo_bw_trans_cropped.png
logo_color_bg.png
logo_color_trans_cropped.png
logo_invcolor.png
logo_wb_bg.png
logo_wb_trans_cropped.png
```
In general there are versions for any combination of icon|logo,
bw|wb|color|invcolor, opaque|transparent, cropped|uncropped.
However, some possible combinations of properties,
like "uncropped with transparent background", have been
omitted — in the case of "uncropped with transparent background"
it is because there is no reason to have a big transparent
border around an image.

To generate images of all sizes from the master files, you must
have ImageMagick installed. If you do, simply navigate to the
Luna branding directory and run
```
$ ./MAKE.sh
```
