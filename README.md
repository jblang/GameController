# ColecoVision Controller Board for RC2014

This board provides a Joystick interface compatible with unmodified ColecoVision software.  In addition to ColecoVision controllers, this board will interface with Sega Genesis Controllers or Atari Joysticks for use with ColecoVision games on the RC2014.

This board is based on the schematics I found for the ColecoVision and its controller, linked below.  REV1 of the PCB contained a mistake, and I am currently preparing to manufacture a new revision.  Make sure you're using the latest files if you have boards
manufactured.

## Controller Compatibility Modes

The Atari Joystick, ColecoVision Controllers, and Sega Genesis Gamepads all share the same basic DB-9 pinout, but the Genesis
and ColecoVision expand on the standard set by Atari in different, incompatible ways.  **J5** and **J6** select between Sega and Coleco controller modes.  Both jumpers must be set to either Sega mode (left position) or Coleco mode (right position).  Atari joysticks will work in either mode.  Because Coleco mode switches the polarity of the power supply, it's possible Sega 
controllers could be damaged if connected in this mode, so be careful!

## Coleco Keypad Buttons

Most ColecoVision games require the keypad to select a skill level before you can start them.  To support Coleco games when using a Sega controller, I have put buttons on the board itself.  Besides the skill level select, most games only use the keypad for things like pause and restart, so not having them on the controller is not a big hardship. 

For Player 1, **J2** selects between keypad input from the on-board buttons (left position) and pass-through from the controller (right position). The on-board buttons should be disabled when using ColecoVision controllers or if you want to use a 6-button Sega controller with software that supports it directly rather than ColecoVision games. Player 2 input is always passed through from the controller (there was no room on the board for an additional multiplexer), so if not using ColecoVision controllers, it's possible that pressing two directional buttons at once be interpreted incorrectly as keypad input.

## Ports

The board uses the standard Colecovision ports:

- A write to port 80 will select keypad input and the secondary trigger (A on the Genesis controller). The value written is unimportant.
- A write to port C0 will select directional input and the primary trigger (B on the Genesis controller). The value written is unimportant.
- A read from port FC will read the status of the currently selected controls on player 1's controller, and a read from port FF will read the status of player 2's controller. 

 For more information on how to interpret the values returned, refer to [ColecoVision Programming Info](http://www.atarihq.com/danb/files/CV-Tech.txt) and [How to Read Sega Controllers](https://github.com/jonthysell/SegaController/wiki/How-To-Read-Sega-Controllers).

The address lines are not fully decoded, so actually the entire range of ports 80-9F, C0-DF, and E0-FF are used by the board. In range E0-FF, addresses with the A1 line low (e.g., FC or ED) correspond to player 1, and addresses with the A1 line high (e.g., FF or EE) correspond to player 2. This is the same as on the original ColecoVision. It's possible that some games may use non-standard ports in these ranges.

Since port 80 and C0 are write-only ports, it should not matter if there is a conflict with other boards in this range, since no bus contention can occur.  Writing to ports for other boards in the 80-9F or C0-DF range will switch the controller mode, but unless you're actually using the controller, it won't matter. However, be careful if you have any boards that use addresses in range E0-FF since reading from an address in this range could lead to bus contention if both boards respond.

## Bill of Materials

| Reference | Part |
|-|-|
| J1 | 1x40 right angle pin header |
| J2, J5, J6 | 1x3 straight pin header |
| J3, J4 | Norcomp 182-009-113R562 male DB-9 connector |
| C1-C7 | 0.1uf disc or MLCC capactor 
| D1 - D22 | 1N4148 diode |
| RN1, RN2, RN3 | Bussed 10K SIP 6 resistor network (e.g., Bourns 4607X-101-103LF)|
| SW1 - SW12 | Tactile switches (e.g. KSL0Axxx1LFTR) |
| U2 | 74HCT138 3-8 line decoder | 
| U3 | 74HCT00 Quad 2-input NAND gate |
| U4, U5 | 74HCT541 Tristate octal buffer |
| U6 | 74HCT257 Quad 2-input MUX |

If you don't need Player 2 input, then you only need 1 74HCT541 and 1 DB-9 connector.

## References

- [ColecoVision Schematics](http://www.atarihq.com/danb/files/colecovision.pdf)
- [ColecoVision Controller Schematics](http://www.chromesphere.net/coleco/Documents/ColecoController.pdf)
- [ColecoVision Programming Info](http://www.atarihq.com/danb/files/CV-Tech.txt)
- [How to Read Sega Controllers](https://github.com/jonthysell/SegaController/wiki/How-To-Read-Sega-Controllers)

## License

Copyright 2018 J.B. Langston

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
