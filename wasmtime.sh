#!/bin/bash
CC=clang make link WASM=1 -B
wasmtime compile -o coremark.cwasm coremark.exe
wasmtime --allow-precompiled run coremark.aot 0x0 0x0 0x66 0 7 1 2000
