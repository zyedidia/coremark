#!/bin/bash
CC=clang make link WASM=1 -B
wasmtime compile -o coremark.cwasm coremark.exe
wasmtime run --allow-precompiled coremark.cwasm 0x0 0x0 0x66 800000 7 1 2000
