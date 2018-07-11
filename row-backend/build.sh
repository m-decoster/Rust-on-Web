#!/bin/sh

cargo +nightly build --target wasm32-unknown-unknown
if [ $? == 0 ]; then
    wasm-bindgen target/wasm32-unknown-unknown/${ROW_MODE}/row_backend.wasm --out-dir ../wasm_generated
    if [ $? == 0 ]; then
        exit 0
    else
        echo wasm-bindgen failed...
        exit 1
    fi
else
    echo cargo build failed...
    exit 1
fi
