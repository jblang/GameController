; ColecoVision/Sega Controller Example
; Prints status of all controller buttons
;
; Copyright 2018 J.B. Langston
;
; Permission is hereby granted, free of charge, to any person obtaining a 
; copy of this software and associated documentation files (the "Software"), 
; to deal in the Software without restriction, including without limitation 
; the rights to use, copy, modify, merge, publish, distribute, sublicense, 
; and/or sell copies of the Software, and to permit persons to whom the 
; Software is furnished to do so, subject to the following conditions:
; 
; The above copyright notice and this permission notice shall be included in
; all copies or substantial portions of the Software.
; 
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
; FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
; DEALINGS IN THE SOFTWARE.    

ramtop:         equ $FFFF
lf:             equ $0C
cr:             equ $0D
uarts:          equ $10
uartd:          equ $11

    org $100

    jp start

    include "control.asm"

start:
    ld sp, ramtop

loop:
    call show_control               ; show the buttons pressed on the controller
    call space
    call show_keypad                ; show keypad buttons pressed
    call crlf
    ld de, $ffff                    ; wait a while
    call delay
    jp loop                         ; do it again

show_control:
    ld c, player_1_port             ; read joystick for player 1
    call read_joystick
    ld b, a
    ld a, 'U'                       ; output U if up pressed
    bit dir_up, b
    call nz, chrout
    call z, space
    ld a, 'R'                       ; output R if right pressed
    bit dir_right, b
    call nz, chrout
    call z, space
    ld a, 'L'                       ; output L if left pressed
    bit dir_left, b
    call nz, chrout
    call z, space
    ld a, 'D'                       ; output D if down pressed
    bit dir_down, b
    call nz, chrout
    call z, space
    ld a, 'A'                       ; output A if A pressed
    bit btn_a, b
    call nz, chrout
    call z, space
    ld a, 'B'                       ; output B if B pressed
    bit btn_b, b
    call nz, chrout
    call z, space
    ld a, 'C'                       ; output C if C pressed
    bit btn_c, b
    call nz, chrout
    call z, space
    ld a, 'S'                       ; output S if start pressed
    bit btn_start, b
    call nz, chrout
    call z, space
    ret

show_keypad:
    ld c, player_1_port             ; read keypad for player 1
    call read_keypad
    cp keypad_none                  ; exit early if no buttons pressed
    ret z
    cp keypad_star                  ; check for star
    jp z, show_star
    cp keypad_pound                 ; check for pound
    jp z, show_pound
    add a, '0'                      ; get ascii value of number
    jp chrout
show_star:
    ld a, '*'                       ; show a *
    jp chrout
show_pound:
    ld a, '#'                       ; show a #
    jp chrout

crlf:
    ld a, cr                        ; go to new line
    call chrout
    ld a, lf
    jp chrout
space:
    ld a, ' '                       ; output a space
chrout: 
    push af                         ; save char to output
rdylp:
    in a, (uarts)                   ; wait for UART ready
	bit 1,a
	jr z, rdylp
	pop af                          ; restore char
    out (uartd), a                  ; output it
	ret

delay:
    dec de                          ; loop number of times in DE
    ld a, d
    or e
    jp nz, delay
    ret