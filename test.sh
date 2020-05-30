#!/bin/sh -x
docker build -t im .
docker run --rm im -list format
docker run --rm im -list delegate
docker run --rm -v $(pwd):/imgs im /imgs/test.svg /imgs/test-svg.png
docker run --rm -v $(pwd):/imgs -ti --entrypoint=/bin/bash im 
