; ColecoVision Game Loader for CP/M on RC2014
;
; Works with RomWBW 512K RAM/ROM Board
; Incompatible with 64KB Pageable ROM Board due to port conflicts
;
; Assemble with sjasm. ColecoVision BIOS ROM must be in "coleco.rom" 
; in the same directory where loader.asm is assembled.
;
; CP/M file loader code from https://github.com/MMaciocia/RC2014-YM2149
; Modified to load ColecoVision games by J.B. Langston

boot:		equ	0			; boot location
bdos:		equ	5			; bdos entry point
fcb:		equ	$5c			; file control block
fcbcr:		equ	fcb+$20			; fcb current record
buff:		equ	$80			; DMA buffer
printf:		equ	9			; BDOS print string function
openf:		equ	15			; BDOS open file function
closef:		equ	16			; BDOS close file function
readf:		equ	20			; BDOS sequential read function

gametop:	equ	$ffff			; top of game cartridge location
gamelen:	equ	$8000			; length of game cartridge
bioslen: 	equ	$2000			; length of BIOS

cr:		equ	$0d			; carriage return
lf:		equ	$0a			; line feed
eos:		equ	'$'			; end of string marker

		org 	$100
		ld	(oldsp),sp		; save old stack pointer
		ld	sp,stack		; set new stack pointer
		ld	de,fcb			; try to open file specified on command line
		call	open
		inc	a			; 255 indicates failure
		jr	z,badfile
		ld	a,0			; clear current record
		ld	(fcbcr),a
		ld	de,gameaddr		; set destination address
		ld	(dest),de

loop:	
		ld	de,fcb			; read from file
		call	read
		or	a
		jr	nz,eof			; non-zero accumulator means EOF

		ld	hl,buff			; copy from DMA buffer to destination
		ld	de,(dest)
		ld	bc,$80
		ldir
		ld	(dest),de		; increment next destination address
		jr	loop

eof:	
		ld	de,fcb			; close the file
		call	close

		ld	de,success		; tell user that game was loaded
		call	print
		jp	rungame			; copy the game to the final location and run

badfile:	
		ld	de,nofile		; print error if file is not found
		call	print
		ld	sp,(oldsp)		; restore stack pointer
		ret				; return to CP/M

open:	
		ld	c,openf			; BDOS call to open file
		jp	bdos

close:	
		ld	c,closef		; BDOS call to close file
		jp	bdos

read:	
		ld	c,readf			; BDOS call to read file
		jp	bdos

print:	
		ld	c,printf		; BDOS call to print string
		jp	bdos
		
nofile:		db 	"file not found",cr,lf,eos
success:	db	"game loaded",eos

dest:		dw	gameaddr		; destination pointer
oldsp:		dw	0			; original stack pointer
 		ds	$40			; space for stack
stack:						; top of stack

bios:	
		incbin "coleco.rom"		; include ColecoVision BIOS in program
rungame:	
		di				; don't need interrupts anymore

		ld 	bc,gamelen		; copy game to $8000-$FFFF
		ld 	hl,gameaddr+gamelen-1
		ld 	de,gametop
		lddr

		ld 	bc,bioslen		; copy ColecoVision BIOS to $0000-$1FFF
		ld 	hl,bios	
		ld 	de,boot	
		ldir	

		jp 	boot			; jump to BIOS entry point
gameaddr:					; temporarily load game at end of program