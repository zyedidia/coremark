#!/bin/bash
set -ex
CC=clang make link WASM=1 -B
WASM2BIN=~/programming/wasm2bin wasm2bin -n coremark --wasm2c --flags "-O3 -fomit-frame-pointer" --cc clang coremark.exe -o a.out
./a.out 0x0 0x0 0x66 800000 7 1 2000
