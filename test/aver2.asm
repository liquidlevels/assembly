section .bss 
    res resb 1

section .text 
    global _start

_start:
    mov ax, 3
    mov cx, 3

    mul cx
    add ax, 
