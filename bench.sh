#!/bin/sh

set -ex

mkdir -p result

./native.sh | grep 'Total time' | awk -F ':' '{ print $2 }' > result/native.txt
./lfi.sh | grep 'Total time' | awk -F ':' '{ print $2 }' > result/lfi.txt
./wasm2c.sh | grep 'Total time' | awk -F ':' '{ print $2 }' > result/wasm2c.txt
./wamr.sh | grep 'Total time' | awk -F ':' '{ print $2 }' > result/wamr.txt
./wasmtime.sh | grep 'Total time' | awk -F ':' '{ print $2 }' > result/wasmtime.txt
