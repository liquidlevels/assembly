section .data
res db '0'

section .text
global _start

_start:

mov eax, 5
mov ebx, 2

sub eax, ebx
add eax, 48
mov [res], eax

mov eax, 4 ; indicar que vamos a imprimir
mov ebx, 1
mov ecx, res
mov edx, 1
int 0x80

mov edx, 1
mov ebx, 0
int 0x80
