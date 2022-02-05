%include "rw32-2018.inc"

section .data
    ; zde budou vase data

section .text
_main:
    push ebp
    mov ebp, esp
    
    call test
    call WriteInt32
    pop ebp
    ret
    
test:
    push ebp
    mov ebp, esp
    
    sub esp, 4
    
    mov [ebp-4], dword 5
    mov eax, [ebp-4]
    
    mov esp, ebp
    pop ebp
    ret