section .data
res db '0', 0xa 

section .text
global _start

_start:

mov eax, 1
mov ebx, 7

add eax, ebx
add eax, 48
mov [res], eax

mov eax, 4 ; indicar que vamos a imprimir
mov ebx, 1
mov ecx, res
int 0x80

;exit
mov edx, 1
mov ebx, 0
int 0x80

;mov eax, 60
;mov edi, 0
;syscall
