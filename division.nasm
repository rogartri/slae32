
global _start

section .text

_start:

	mov ax, 0x4
	mov bl, 0x2
	div bl

	mov ax, 0x44
	mov dx, 0x44
	mov bl, 0x0022
	div bl
	
	mov eax, 0x22222222
	mov edx, 0x00000222
	mov ebx, 0x00000002
	div ebx

	mov eax,1
	mov ebx,10
	int 0x80
