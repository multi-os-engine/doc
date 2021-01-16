#!/bin/sh

#
# BUILD moe doc
#

make html
cd ./build/html
tar -zcvf ../html.tar.gz *
