# Colecovision Controller Board for RC2014

This board will interface with Sega Genesis Controllers or Atari Joysticks for use with ColecoVision games on the RC2014. The ColecoVision controllers and Sega gamepads are mutually incompatible.  ColecoVision controllers are somewhat hard to find and Sega controllers can still be bought new for under $10, so I chose to support Sega controllers and perhaps ironically, the does not support actual Colecovision controllers.  

The numeric keypad for Player 1 is simulated by buttons on the board itself.  The keypad is required to select a skill level on most games before you can start them, so I had to provide some way for unmodified games to receive this input.  Besides the skill level select, most games only use the keypad for things like pause and reset, so not having them on the controller is not a big hardship. 

The board contains a multiplexer that hides the directional input in keypad mode. It was necessary to do this to prevent spurious inputs if the keypad was polled while certain directions on the dpad were pressed.  Unfortunately, this makes it impossible to poll the XYZ and Mode buttons on a 6-button Sega controller.  

This circuit is based on the schematics I found for the ColecoVision and its controller, linked below.  I have tested the circuit on a breadboard but have not yet manufactured this PCB.

## Ports

The board uses the standard Colecovision ports:

- A write to any port 80 will select keypad input and the secondary trigger (A on the Sega controller). The value written is unimportant.
- A write to any port C0 will select directional input and the primary trigger (B on the Sega controller). The value written is unimportant.
- A read from port FC will read the status of the currently selected controls on player 1's controller.  A read from FF will do the same for player 2's controller.

The address lines are not fully decoded, so actually the entire range of ports 80-9F, C0-DF, and E0-FF are used by the board.  This is the same as on the original ColecoVision. It's possible that some games may use non-standard ports in these ranges but I'm not aware of any.  Since port 80 and C0 are write-only ports, it should not matter if there is a conflict with other boards in this range, since no bus contention can occur.  Writing to the other boards will switch the controller mode, but unless you're actually using the controller, it won't matter, and it can easily be switched back.  However, be careful if you have any boards that use addresses in range E0-FF since this could lead to bus contention.

## References

- [ColecoVision Schematics](http://www.atarihq.com/danb/files/colecovision.pdf)
- [ColecoVision Controller Schematics](http://www.chromesphere.net/coleco/Documents/ColecoController.pdf)
- [ColecoVision Programming Info](http://www.atarihq.com/danb/files/CV-Tech.txt)

## License

Copyright 2018 J.B. Langston

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
