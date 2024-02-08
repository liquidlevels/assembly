section .data
    res db 'adios mundo', 10

section .text
    global _start

_start:
    mov edx, 12
    mov ecx, res
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80


