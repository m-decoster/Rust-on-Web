#!/bin/sh

mkdir -p src/wasm
rm src/wasm/*
cp ../wasm_generated/* src/wasm/
npm run ${ROW_MODE}
cp src/*.html ../build/
