# Controller Example Programs

## Assembling

I have tried to stick to a common subset of assembler features that will work with any of the following cross-assemblers:

- [Sjasm](http://www.xl2s.tk/): Windows binaries available for download.  Compiles on Linux using sources on [Github](https://github.com/Konamiman/Sjasm).
- [SjasmPlus](https://sourceforge.net/projects/sjasmplus/):  Windows binaries available for download.  Compiles on Linux using sources on [Github](https://github.com/sjasmplus/sjasmplus).
- [z80asm](https://www.nongnu.org/z80asm/): Binaries available in the Debian repository. Mac binaries on [Homebrew](https://brew.sh/). Compiles on Windows.
- [z88dk](https://github.com/z88dk/z88dk)'s z80asm (not to be confused with above). Windows and Mac binaries available for download. Compiles on Linux.
- [pasmo](http://pasmo.speccy.org/): Windows and Mac binaries available for download. Binaries available in the Debain repository.

My preferred assembler is sjasm. I try to maintain compatibility with all of the above, but may not always test every change against the others.  If you have trouble assembling with any of the above, please try sjasm, and file a bug to let me know about the problem.

## About the Programs

- `control.asm`: Reusable assembly library for reading controller; used by `example.asm`.
- `example.asm`: Example assembly program reads controller status and prints it on the serial port.
- `loader.asm`: CP/M loader for ColecoVision games.