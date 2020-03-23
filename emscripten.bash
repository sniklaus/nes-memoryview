#!/bin/bash

~/emscripten/emsdk activate latest

source ~/emscripten/emsdk_env.sh
mkdir ./build

emcc -O2 -std=c++14 -I./mednes -c -o ./build/6502.o ./mednes/6502.cpp
emcc -O2 -std=c++14 -I./mednes -c -o ./build/Controller.o ./mednes/Controller.cpp
emcc -O2 -std=c++14 -I./mednes -c -o ./build/PPU.o ./mednes/PPU.cpp
emcc -O2 -std=c++14 -I./mednes -c -o ./build/RAM.o ./mednes/RAM.cpp
emcc -O2 -std=c++14 -I./mednes -c -o ./build/ROM.o ./mednes/ROM.cpp
emcc -O2 -std=c++14 -I./mednes -c -o ./build/CNROM.o ./mednes/Mapper/CNROM.cpp
emcc -O2 -std=c++14 -I./mednes -c -o ./build/Mapper.o ./mednes/Mapper/Mapper.cpp
emcc -O2 -std=c++14 -I./mednes -c -o ./build/NROM.o ./mednes/Mapper/NROM.cpp
emcc -O2 -std=c++14 -I./mednes -c -o ./build/UnROM.o ./mednes/Mapper/UnROM.cpp

emcc -O2 -std=c++14 -I./mednes -c -o ./build/emscripten.o ./emscripten.cpp

emcc -O2 -std=c++14 --memory-init-file 0 -s WASM=0 --bind -s MODULARIZE=1 -s EXPORT_NAME="'Emscripten'" -s EXTRA_EXPORTED_RUNTIME_METHODS="['cwrap', 'FS', '_init', '_render', '_key', '_ram']" ./build/*.o -o emscripten.js

rm -r ./build