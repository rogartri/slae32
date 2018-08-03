global _start

section .text
_start:

	mov esi, origen
	mov ecx, len
	mov edi, destino
	cld	
	rep movsb


	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, destino
	mov edx, len
	int 0x80
	
	mov eax, 1
	mov ebx, 10
	int 0x80


section .bss

	


section .data

	origen: db "Hola Mundo!"
	len equ $-origen
	destino: db "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"


	;seccion añadida para comprobar las variables
	var1: db 0x1
	var2: db 0x1234
	var3: dw 0x12
	var4: dw 0x1234
	var5: dd 0x1234
	var6: dd 0x123456
	var7: dq 0x12345678
	var8: dq 0x1234567890
	var9: dt 1.234567890
	var10: dt 1.2345678901212  
