%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    mov  AL, 42
    cmp AL, 0 ; ?????????? cf
    ja  navesti
    inc  AL
navesti:
    call WriteInt8

    pop ebp
    ret