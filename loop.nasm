global _start

section .text

_start:

	mov ecx,0x5
	
l1:
	push ecx	

	mov eax, 0x4
	mov ebx, 1
	mov ecx, message
	mov edx, mlen
	int 0x80

	pop ecx
	loop l1

	mov eax, 0x1
	mov ebx, 0xa
	int 0x80

section .data

	message: db "Hello World!", 0xA
	mlen 	 equ $-message


	
