# ColecoVision Controller Board for RC2014

This board provides a RC2014 joystick interface compatible with unmodified ColecoVision games.  In addition to ColecoVision controllers, this board will work with Sega Genesis Controllers or Atari Joysticks.

This board is based on the schematics I found for the ColecoVision and its controller, linked below.  REV1 of the PCB contained a mistake, and I am currently preparing to manufacture a new revision to test.  Make sure you're using the latest files if you have boards manufactured.

## Controller Compatibility Modes

The Atari joystick, ColecoVision controllers, and Sega Genesis gamepads all share the same basic DB-9 pinout, but the Genesis and ColecoVision expand on the standard set by Atari in different, incompatible ways.  **J5** and **J6** select between Sega and Coleco controller modes.  Both jumpers must be set to either Sega mode (left position) or Coleco mode (right position).  Atari joysticks will work in either mode.  Because Coleco mode switches the polarity of the power supply, it's possible Sega controllers could be damaged if connected in this mode, so be careful!

## Coleco Keypad Buttons

Most ColecoVision games require the keypad to select a skill level before you can start them.  To support Coleco games when using a Sega controller or Atari joystick, I have put buttons on the board itself.  Besides the skill level select, most games only use the keypad for things like pause and restart, so not having them on the controller is not a big hardship. 

For Player 1, **J2** selects between keypad input from the on-board buttons (left position) and pass-through from the controller (right position). Pass-through mode should be selected when using ColecoVision controllers or if you want to use a 6-button Sega controller with software that supports it directly rather than ColecoVision games. 

Player 2 input is always passed through directly from the controller (there was no room on the board for an additional multiplexer, much less the diodes or buttons). When not using ColecoVision controllers, it's possible that Player 2 pressing two directions at once will be erroneously interpreted as keypad input.

## Ports

The board uses the standard Colecovision ports:

- A write to port 80 will select keypad input and the secondary trigger (A on the Genesis controller). The value written is unimportant.
- A write to port C0 will select directional input and the primary trigger (B on the Genesis controller). The value written is unimportant.
- A read from port FC will read the status of the currently selected buttons on Player 1's controller.
- A read from port FF will read the status of the currently selected buttons on Player 2's controller. 

 For more information on how to interpret the values returned, refer to [ColecoVision Programming Info](http://www.atarihq.com/danb/files/CV-Tech.txt) and [How to Read Sega Controllers](https://github.com/jonthysell/SegaController/wiki/How-To-Read-Sega-Controllers).

The address lines are not fully decoded, so actually the entire range of ports 80-9F, C0-DF, and E0-FF are used by the board. In range E0-FF, addresses with the A1 line low (e.g., FC or ED) correspond to player 1, and addresses with the A1 line high (e.g., FF or EE) correspond to player 2. This is the same as on the original ColecoVision. It's possible that some games may use non-standard ports in these ranges.

Since port 80 and C0 are write-only ports, it should not matter if there is a conflict with other boards using ports in the 80-9F or C0-DF range, since no bus contention will occur.  Writing to ports for other boards in these ranges will switch the controller mode, but unless you're actually using the controller, it won't matter. However, be careful if you have any boards that use addresses in range E0-FF since reading from an address in this range could lead to bus contention when both boards respond.

## Bill of Materials

| Reference | Part |
|-|-|
| J1 | 1x40 right angle pin header |
| J2, J5, J6 | 1x3 straight pin header |
| J3, J4 | Norcomp 182-009-113R562 male DB-9 connector |
| C1-C7 | 0.1uf disc or MLCC capacitors |
| D1 - D22 | 1N4148 diodes |
| RN1, RN2, RN3 | Bussed 10K SIP 6 resistor network (Bourns 4607X-101-103LF or similar)|
| SW1 - SW12 | 4-pin tactile pushbuttons (KSL0Axxx1LFTR or similar) |
| U2 | 74HCT138 3-8 line decoder | 
| U3 | 74HCT00 quad 2-input NAND gate |
| U4, U5 | 74HCT541 tri-state octal buffer |
| U6 | 74HCT257 quad 2-input MUX |

If you don't need Player 2 input, then the second 74HCT541 and DB-9 connector can be omitted.

If you don't want to play ColecoVision games with Sega or Atari controllers, D1-D22 and SW1-SW12 can be omitted.

## References

- [ColecoVision Schematics](http://www.atarihq.com/danb/files/colecovision.pdf)
- [ColecoVision Controller Schematics](http://www.chromesphere.net/coleco/Documents/ColecoController.pdf)
- [ColecoVision Programming Info](http://www.atarihq.com/danb/files/CV-Tech.txt)
- [How to Read Sega Controllers](https://github.com/jonthysell/SegaController/wiki/How-To-Read-Sega-Controllers)

## Other Boards

- [rc9918](https://github.com/jblang/rc9918): my TMS9918A video card for the RC2014 project can be used with this board to play ColecoVision games.
- [SN76489](https://github.com/jblang/SN76489): my SN76489 sound card can be used witht his board to play ColecoVision games.
- [z80ctrl](https://github.com/jblang/z80ctrl): my RC2014 bus monitor board which can be used as a bootloader for ColecoVision games.

## License

Copyright 2018 J.B. Langston

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
