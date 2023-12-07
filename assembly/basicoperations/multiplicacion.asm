section .bss
    res resb 1 

section .text
    global _start

_start:
    mov ax, 3
    mov cx, 3

    mul cx
    add ax, 48
    mov [res], ax

    mov eax, 4
    mov ebx, 1
    mov ecx, res
    mov edx, 1
    int 0x80

    mov edx, 1
    mov ebx, 0
    int 0x80
