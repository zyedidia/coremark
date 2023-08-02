#!/bin/bash
CC=clang make link WASM=1 -B
wamrc --target=aarch64 -o coremark.aot coremark.exe
iwasm coremark.aot 0x0 0x0 0x66 0 7 1 2000
