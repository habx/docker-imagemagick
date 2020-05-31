#  ImageMagick 7 on Debian 10

## Overview

Delivers the latest version of the [ImageMagick](https://github.com/ImageMagick/ImageMagick) 7 to Debian 10.

## Usage

By default container will run convert command

```
$ docker run -v /your/images:/imgs habx/imagemagick /imgs/sample.png -resize 100x100 /imgs/resized-sample.png
```

You can change entrypoint and pass other IM commands to execute. For instance,

```
$ docker run --entrypoint=identify -v /your/images:/imgs habx/imagemagick /imgs/sample.png
```
