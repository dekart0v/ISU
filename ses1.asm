%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
   ; stc
    
    mov dh, 67 
    add dh, 111

    pop ebp
    ret