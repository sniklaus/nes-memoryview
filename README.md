# nes-memoryview
The working memory of early computers is quite small. It is so small in fact, that we can plot the history of values of each byte in memory. Below, you can find a NES emulator together with a time series for each byte in the 2 KB of working memory. Feel free to load a different ROM, for example Super Mario Bros, and notice that some bytes in memory correspond to the location of sprites. This demo is using [MedNES](https://github.com/wpmed92/MedNES)> and [Chase](https://shiru.untergrund.net/software.shtml).

<p align="center"><a href="https://sniklaus.com/nesmem" rel="Paper"><img src="https://content.sniklaus.com/nesmem/screenshot.png" alt="Screenshot"></a></p>

For a live demo, please see: https://sniklaus.com/nesmem

## compile
To download MediNES, run `bash download.bash`. Afterwards, simpy run `bash emscripten.bash` to perform the compilation. Please note that this step requires [Emscripten](https://github.com/emscripten-core/emscripten) to be installed. You can then open `emscripten.html` in your browser and everything should work as expected.

## license
Please refer to the appropriate file within this repository.