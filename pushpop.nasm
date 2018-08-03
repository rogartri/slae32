;Programa para examinar los valores del stack y como cambia
;el registro ESP, para comprobar la estructura FILO

global _start

section .text
_start:

	mov eax, 0xAAAAAAAA
	mov ebx, 0xBBBBBBBB
	mov ecx, 0xCCCCCCCC

	push eax
	push ebx
	push ecx

	pop eax
	pop ecx
	pop ebx


	mov eax,1
	mov ebx,0
	int 0x80
