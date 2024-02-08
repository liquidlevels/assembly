section .data
    msg db 'adios mundo', 10

section .text
    global _start

_start:
    mov edx, 12
    mov ecx, msg
    mov ebx, 1 ;stdout
    mov eax, 4 ; sys write
    int 0x80 ;call kernel/so

    mov eax, 1 ; sys exit
    int 0x80

