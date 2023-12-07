section .data
    message: db "goodbye, world",0Ah

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, 15
    syscall
    mov rax, 60
    mov rdi, 0
    syscall
