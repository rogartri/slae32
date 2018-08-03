; HelloWorld.asm
; author: Roberto Garcia Trillo
; telinsec.com


global _start

section .text

_start:
	;print Hello World! en pantalla
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, mlen
	int 0x80

	;salida del programa

	mov eax, 0x01
	mov ebx, 0x5
	int 0x80

section .data

	message: db "Hello World!"
	mlen	equ $-message

