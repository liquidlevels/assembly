section .data
    num1 dd 5
    num2 dd 3

section .text
    global _start

_start:
    mov eax, [num1]
    mov ebx, [num2]

    add eax, ebx

    mov eax, 1
    int 0x80
