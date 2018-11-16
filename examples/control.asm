; ColecoVision/Sega Controller Routines
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

; joystick ports
joystick_port   equ $C0
keypad_port     equ $80
player_1_port   equ $FC
player_2_port   equ $FF

; button bit masks
dir_mask        equ $0F
btn_mask        equ $50

; button bit positions
btn_fire        equ 6
btn_arm         equ 5
btn_a           equ 7
btn_b           equ 6
btn_start       equ 5
btn_c           equ 4
dir_left        equ 3
dir_down        equ 2
dir_right       equ 1
dir_up          equ 0

; keypad constants
keypad_none     equ $0F
keypad_star     equ $0A
keypad_pound    equ $0B

; map diode-encoded keypad to numeric values
keypad_map:
    db  keypad_none
    db  6
    db  1
    db  3
    db  9
    db  0
    db  keypad_star
    db  keypad_none
    db  2
    db  keypad_pound
    db  7
    db  keypad_none
    db  5
    db  4
    db  8
    db  keypad_none

; read joystick and buttons
;   return:
;       joystick value in A (directions in lower nybble, buttons in upper nybble)
;   params:
;       player port in C
;   clobbers:
;       D
read_joystick:
    out (keypad_port), a        ; set flip-flop to read secondary buttons
    in a, (c)                   ; read from controller port in C
    cpl                         ; swap 0<->1
    and btn_mask                ; mask off unwanted bits
    add a, a                    ; shift bits left 1 place
    ld d, a                     ; save in D
    out (joystick_port), a      ; set flip-flop to read primary buttons
    in a, (c)                   ; read from controller port in C
    cpl                         ; swap 0<->1
    and dir_mask | btn_mask     ; mask off unwanted bits
    or d                        ; add bits from secondary buttons
    ret

; read numeric keypad
;   return:
;       keypad value in A
;   params:
;       player port in C
;   clobbers:
;       D, E
read_keypad:
    out (keypad_port), a        ; set flip flop to read from keypad
    in a, (c)                   ; read from controller port in C
    cpl                         ; swap 0<->1
    and dir_mask                ; mask off unwanted bits
    ld d, 0                     ; relative offset into table in DE
    ld e, a
    ld hl, keypad_map           ; calculate absolute address in HL
    add hl, de
    ld a, (hl)                  ; load value from table
    ret