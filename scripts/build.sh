#!/bin/bash

set -euo pipefail

rm -rf ./target
mkdir ./target
cp -r ./src/* ./target
cp \
    ./node_modules/fontfaceobserver/fontfaceobserver.js \
    ./node_modules/fg-loadcss/src/{loadCSS.js,cssrelpreload.js} \
    ./target
