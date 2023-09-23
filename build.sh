#!/bin/bash

set -eu

test -d binjgb/out || ./build-binjgb.sh
test -f rgbds/rgbasm.wasm || ./build-rgbds.sh
npm install
npm run build

