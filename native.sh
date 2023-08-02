#!/bin/bash
CC=/opt/native-toolchain/clang make link -B
./coremark.exe 0x0 0x0 0x66 0 7 1 2000
