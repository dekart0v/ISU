%include "rw32-2018.inc"

section .data

section .text
Soucet:
    push ebp ; stack-frame enter (EBP define)
    mov ebp, esp ; stack-frame enter (EBP ukazuje na vrchol stack-a)
    sub esp, 4
    
    mov edx, [ebp+8] ; EDX = a = 128 -- 1st arg
    mov ecx, [ebp+12] ; ECX = b = 2 -- 2nd arg
    add edx, ecx ; EDX = a + b
    mov [ebp-4], edx ; c = a+b
    mov eax, [ebp-4] ; ;return c
    
    mov esp, ebp ; stack-frame leave (reload ESP)
    pop ebp ; stack-frame leav (reload EBP)
    ret 8 ; stdcall odstraneni parametru s zasobniku (2*32bit == 8 byte)

_main:
    push dword 2 ; b=2
    push dword 128 ; a=128
    call Soucet ; soucet(128,2)
    call WriteInt8
    call WriteNewLine
    ret