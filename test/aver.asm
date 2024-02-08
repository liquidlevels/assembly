section .bss
    res resb 1

section .text 
    global _start

_start:
    mov eax, 2
    mov ecx, 8

    add eax, ecx
    add eax, 48
    mov [res], eax

    mov eax, 4
    mov ebx, 1
    mov ecx, res
    mov edx, 1
    int 0x80

    mov edx, 1
    mov ebx, 0
    int 0x80
