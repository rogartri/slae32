
global _start

section .text

_start:

	mov al, 2
	mov bl, 3
	mul bl

	mov ax, 0x0
	mov ax, 0x0011
	mov bl, 0x0022
	mul bl
	
	mov eax, 0x00000000
	mov eax, 0x11111111
	mov ebx, 0x00000000
	mov ebx, 0x00001234
	mul ebx

	mov eax,1
	mov ebx,10
	int 0x80
