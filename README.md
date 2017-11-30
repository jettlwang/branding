![Luna logo](https://github.com/lunalabs/branding/raw/master/png/logo_color_trimmed_64.png)

----

Luna branding, including logo and wordmark,
in many color modes and sizes.

All the PNG files are generated from master SVGs.

In general there are versions for most combinations of logo|wordmark,
bw|wb|color|invcolor, framed|trimmed|circle-cropped.
However, some possible combinations of properties,
like "trimmed invcolor", are omitted.

To generate PNG versions from the master SVGs, you must
have ImageMagick installed with the `rsvg` library.
If you do, simply navigate to the Luna branding directory and run
```
$ ./make.sh
```


### Custom sizes
You can easily modify the file `make.sh` to create PNG versions
at whatever sizes you require. The default sizes are:
16, 32, 64, 100, 150, 300, 500. Keep in mind that the *sizes
refer to the height of the output file in pixels.* The `framed`
and `circle` versions of the icon are square, but `trimmed`
versions are not square at larger sizes. (The bounding box of
the heart+moon shape is not a square.)


### A note on the RSVG library
On Mac OS, you can install ImageMagick with the `rsvg` library via
```brew install imagemagick --with-librsvg```
If you already have ImageMagick installed, you can check if the
library is installed with
```$ convert -version
Version: ImageMagick 7.0.7-12 Q16 x86_64 2017-11-30 http://www.imagemagick.org
Copyright: © 1999-2017 ImageMagick Studio LLC
License: http://www.imagemagick.org/script/license.php
Features: Cipher DPC HDRI Modules
Delegates (built-in): bzlib cairo fontconfig freetype jng jpeg ltdl lzma png rsvg tiff xml zlib```
You will need to reinstall if you don't already have it:
```brew uninstall --force imagemagick
brew install imagemagick --with-librsvg```
