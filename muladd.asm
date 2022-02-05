%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    
    pop ebp
    ret
    
MulAdd:
    push ebp
    mov ebp, esp
    
    sub esp, 4
    
    mov esp, ebp
    pop ebp
    ret