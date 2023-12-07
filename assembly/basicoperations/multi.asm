section .data 
    result db 0 
     
section .text 
     global _start 
    
_start: 
    ; Load the values of num1 and num2 into registers 
    mov al, 5 
    mov bl, 10         
    
    ; Multiply the values in AL and BL 
    mul bl
    
    ; Store the result in the result variable 
    mov result, al

    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80
     
    ; Exit the program 
    mov eax, 1 
    mov ebx, 0
    int 0x80 
