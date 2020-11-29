#!/bin/bash

wget https://github.com/wpmed92/MedNES/archive/9c29af2c46b1b3b9b1d3825bc1322bfa72ae75e6.zip
unzip 9c29af2c46b1b3b9b1d3825bc1322bfa72ae75e6.zip MedNES-9c29af2c46b1b3b9b1d3825bc1322bfa72ae75e6/Source/Core/*
rm 9c29af2c46b1b3b9b1d3825bc1322bfa72ae75e6.zip
mv MedNES-9c29af2c46b1b3b9b1d3825bc1322bfa72ae75e6/Source/Core mednes
rm -rf MedNES-9c29af2c46b1b3b9b1d3825bc1322bfa72ae75e6

sed -i 's#    RAM ram;#public:\n    RAM ram;\nprivate:#g' mednes/6502.hpp
sed -i 's#    u8 vram\[2048\] = { 0 };#public:\n    u8 vram\[2048\] = { 0 };\nprivate:#g' mednes/PPU.hpp
sed -i 's#    u8 ram\[2048\] = {0};#public:\n    u8 ram\[2048\] = {0};\nprivate:#g' mednes/RAM.hpp
