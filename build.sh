#!/bin/sh

ROW_MODE=debug
if [ "$1" == "release" ]; then
    ROW_MODE=release
fi

export ROW_MODE

rm -rf build/*
rm -rf wasm_generated/*

cd row-backend
./build.sh
cd ../row-frontend
./build.sh
cd ..
