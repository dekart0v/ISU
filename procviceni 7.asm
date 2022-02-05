%include "rw32-2018.inc"

section .data

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov ax, word 100
    
    call mypow
    call WriteInt32
    
    pop ebp
    ret
    
mypow:
    push edx
    
    imul ax
    cwde
    
    rol edx, 16
    mov dx, ax
    mov eax, edx
    
    
    pop edx
    ret