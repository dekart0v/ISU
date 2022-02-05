%include "rw32-2020.inc"

section .data
    task21A dd 3072,-768,2304,-2048,-1792,512,-15360,-15360
    task21B dd 88891136,863176133,-735770586,-2000242937,857694750,-759030504,-1271280161,-1998579986
    task22A db 48,-12,36,-32,-28,8,-240,-240
    task22B db -1,-83,93,86,54,-76,-45,-101
    task23A dw 384,144,336,64,80,224,-768,-768

section .text
CMAIN:
    push ebp
    mov ebp,esp
                
    mov eax,task21A
    mov EBX,-109
    mov ecx,8
    call task21

    
    ; eax = task22(task22A,8)
    call task22    


        
    mov ecx,9
    call task23

    pop ebp
    ret    
;
;--- Task 1 ---
;
; Create a function 'task21' to find a value in an array of the 32bit signed values.  
; Pointer to the array is in the register EAX, the value to be found is in the register EBX 
; and the count of the elements of the array is in the register ECX.
;
; Function parameters:
;   EAX = pointer to the array of the 32bit signed values (EAX is always a valid pointer)
;   EBX = 32bit signed value to be found
;   ECX = count of the elements of the array (ECX is an unsigned 32bit value, always greater than 0)
;
; Return values:
;   EAX = 1, if the value has been found in the array, otherwise EAX = 0
;
; Important:
;   - the function does not have to preserve content of any register
;
task21:
    ; insert your code here
    ret
;
;--- Task 2 ---
;
; Create a function: char task22(const char *pA, int N) to find maximum in an array pA of N 8bit signed values. 
; The parameters are passed, the stack is cleaned and the result is returned according to the CDECL calling convention.
;
; Function parameters:
;   pA: pointer to the array A
;    N: length of the array A
;
; Return values:
;   EAX = 0x80000000 if the pointer pA is invalid (pA == 0) or N <= 0
;   AL = value of the 8bit signed maximum 
;
; Important:
;   - the function MUST preserve content of all the registers except for the EAX and flags registers.
;
task22:
    ; insert your code here
    ret
;
;--- Task 3 ---
;
; Create a function 'task23' to allocate and fill an array of the 16bit unsigned elements by the
; Lucas numbers L(0), L(1), ... , L(N-1). Requested count of the Lucas numbers is 
; in the register ECX (32bit signed integer) and the function returns a pointer to the array  
; allocated using the 'malloc' function from the standard C library in the register EAX.
;
; Lucas numbers are defined as follows:
;
;   L(0) = 2
;   L(1) = 1
;   L(n) = L(n-1) + L(n-2)
;
; Function parameters:
;   ECX = requested count of the Lucas numbers (32bit signed integer).
;
; Return values:
;   EAX = 0, if ECX <= 0, do not allocate any memory and return value 0 (NULL),
;   EAX = 0, if memory allocation by the 'malloc' function fails ('malloc' returns 0),
;   EAX = pointer to the array of N 16bit unsigned integer elements of the Lucas sequence.
;
; Important:
;   - the function MUST preserve content of all the registers except for the EAX and flags registers,
;   - the 'malloc' function may change the content of the ECX and EDX registers.
;
; The 'malloc' function is defined as follows: 
;
;   void* malloc(size_t N)
;     N: count of bytes to be allocated (32bit unsigned integer),
;     - in the EAX register it returns the pointer to the allocated memory,
;     - in the EAX register it returns 0 (NULL) in case of a memory allocation error,
;     - the function may change the content of the ECX and EDX registers.
task23:
    ; insert your code here
    ret
