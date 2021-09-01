; ColecoVision Game Loader for CP/M on Z180
;
; Works with SC126 SBC
;
; Assemble with sjasm. ColecoVision BIOS ROM must be in "coleco.rom" 
; in the same directory where loader.asm is assembled.
;
; CP/M file loader code from https://github.com/MMaciocia/RC2014-YM2149
; Modified to load ColecoVision games by J.B. Langston

boot:       equ 0           ; boot location
bdos:       equ 5           ; bdos entry point
fcb:        equ $5c         ; file control block
fcbcr:      equ fcb+$20         ; fcb current record
buff:       equ $80         ; DMA buffer
printf:     equ 9           ; BDOS print string function
openf:      equ 15          ; BDOS open file function
closef:     equ 16          ; BDOS close file function
readf:      equ 20          ; BDOS sequential read function

gametop:    equ $ffff           ; top of game cartridge location
gamelen:    equ $8000           ; length of game cartridge
bioslen:    equ $2000           ; length of BIOS

cr:     equ $0d         ; carriage return
lf:     equ $0a         ; line feed
eos:        equ '$'         ; end of string marker

        org     $100
        ld  (oldsp),sp      ; save old stack pointer
        ld  sp,stack        ; set new stack pointer
        ld  de,fcb          ; try to open file specified on command line
        call    open
        inc a           ; 255 indicates failure
        jr  z,badfile
        ld  a,0         ; clear current record
        ld  (fcbcr),a
        ld  de,gameaddr     ; set destination address
        ld  (dest),de

loop:   
        ld  de,fcb          ; read from file
        call    read
        or  a
        jr  nz,eof          ; non-zero accumulator means EOF

        ld  hl,buff         ; copy from DMA buffer to destination
        ld  de,(dest)
        ld  bc,$80
        ldir
        ld  (dest),de       ; increment next destination address
        jr  loop

eof:    
        ld  de,fcb          ; close the file
        call    close

        ld  de,success      ; tell user that game was loaded
        call    print
        jp  rungame         ; copy the game to the final location and run

badfile:    
        ld  de,nofile       ; print error if file is not found
        call    print
        ld  sp,(oldsp)      ; restore stack pointer
        ret             ; return to CP/M

open:   
        ld  c,openf         ; BDOS call to open file
        jp  bdos

close:  
        ld  c,closef        ; BDOS call to close file
        jp  bdos

read:   
        ld  c,readf         ; BDOS call to read file
        jp  bdos

print:  
        ld  c,printf        ; BDOS call to print string
        jp  bdos
        
nofile:     defb    "file not found",cr,lf,eos
success:    defb    "game loaded",eos

dest:       defw    gameaddr        ; destination pointer
oldsp:      defw    0           ; original stack pointer
        defs    $40         ; space for stack
stack:                      ; top of stack

bios:   
        incbin "coleco.rom"     ; include ColecoVision BIOS in program
rungame:    
        di              ; don't need interrupts anymore

        ld  bc,gamelen      ; copy game to $8000-$FFFF
        ld  hl,gameaddr+gamelen-1
        ld  de,gametop
        lddr

        ld  hl,trap         ; copy trap handler to unused memory at 4000h
        ld  de,4000h
        ld  bc,traplen
        ldir

        ld  bc,bioslen      ; copy ColecoVision BIOS to $0000-$1FFF
        ld  hl,bios 
        ld  de,boot 
        ldir    

        ld  bc, 0ffh        ; move I/O control register to bank 0
        ld  a, 0            ; to avoid interference with colecovision ports
        out (c), a

        ld  bc, 032h        ; set maximum memory and io wait states
        ld  a, 0f0h
        out (c),a

        ld  bc, 01fh        ; divide clock by two
        ld  a, 0
        out (c),a

        ld  bc, 036h        ; enable refresh cycle every 10 T states
        ld  a, 0c0h         ; and make refresh wait 3 cycles long
        out (c), a          ; this adds additional delay to the bus cycle

        xor a               ; disable interrupts for internal peripherals
        ld  bc, 10h         ; Timer
        out (c),a       
        ld  bc, 30h         ; DMA controller
        out (c),a       
        ld  bc, 0ah         ; CSI/O
        out (c),a       
        ld bc,4h            ; ASCI 1
        out (c),a       
        ld bc,5h            ; ASCI 2
        out (c),a       

        ld  hl,boot         ; install trap vector at 0H
        ld  (hl),0c3h
        ld  bc,4000h
        inc hl
        ld  e,(hl)          ; we're overwriting ld sp, nn instruction at 0H
        ld  (hl),c          ; so save new stack address in de before overwriting
        inc hl
        ld  d,(hl)
        ld  (hl),b
        ex  de,hl
        ld  sp,hl           ; set stack pointer to address in de
        jp  boot+3          ; jump to next instruction after trap handler

trap:
        ld  bc,34h          ; get Interrupt/Trap control register
        in  a,(c)
        out (0dh),a         ; display it on LEDs
        halt
traplen:    equ $ - trap

gameaddr:                   ; temporarily load game at end of program