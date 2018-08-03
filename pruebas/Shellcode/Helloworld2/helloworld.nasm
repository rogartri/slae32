


global _start


section .text

_start:

jmp short llamar_shellcode

shellcode:

	xor eax, eax
        mov al, 0x4

        xor ebx, ebx
        mov bl, 0x1

        pop ecx

        xor edx, edx
        mov dl, 14
        int 0x80


        mov al, 0x1
        mov bl, 0x5

        int 0x80

llamar_shellcode:
	call shellcode
	mensaje: db "Hello, World!", 0xA




