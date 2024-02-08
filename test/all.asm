section .bss
    asd resb 1

section .data
    res db '0'

section .text
    global _start

_start:
    mov eax, 1
    mov ebx, 7

    add eax, ebx
    add eax, 48
    mov [res], eax

    mov eax, 4
    mov ebx, 1
    mov ecx, res
    int 0x80

    mov edx, 1
    mov ebx, 0
    int 0x80
