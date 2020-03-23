#!/bin/bash

wget https://github.com/wpmed92/MedNES/archive/6dea45ae5b3d4e36d03a4d2b5ea6a66b6d148e3d.zip
unzip 6dea45ae5b3d4e36d03a4d2b5ea6a66b6d148e3d.zip MedNES-6dea45ae5b3d4e36d03a4d2b5ea6a66b6d148e3d/NES/*
rm 6dea45ae5b3d4e36d03a4d2b5ea6a66b6d148e3d.zip
mv MedNES-6dea45ae5b3d4e36d03a4d2b5ea6a66b6d148e3d/NES mednes
rmdir MedNES-6dea45ae5b3d4e36d03a4d2b5ea6a66b6d148e3d

sed -i 's#    RAM ram;#public:\n    RAM ram;\nprivate:#g' mednes/6502.hpp
sed -i 's#    u8 vram\[2048\] = { 0 };#public:\n    u8 vram\[2048\] = { 0 };\nprivate:#g' mednes/PPU.hpp
sed -i 's#    u8 ram\[2048\] = {0};#public:\n    u8 ram\[2048\] = {0};\nprivate:#g' mednes/RAM.hpp
