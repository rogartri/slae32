global _start

section .text

_start:

        xor eax, eax
        mov al, 0x4

        xor ebx, ebx
        mov bl, 0x1

        xor edx, edx
        push edx

        push 0x0a616472
        push 0x65694d20
        push 0x6564206f
	push 0x6c6c7570
	push 0x61432061
	push 0x6c656d61
	push 0x70756843
	push 0x2c594590

        mov ecx, esp

        mov dl, 12

        int 0x80



        xor eax, eax
        mov al, 0x1

        xor ebx, ebx

        int 0x80

