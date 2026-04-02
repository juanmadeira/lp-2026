%include "io.inc"

section .data
n DD 10

section .text
global CMAIN
CMAIN:
    MOV ECX, [n]
    MOV EBX, 0
    IMUL ECX, 2

    verificador:
        MOV EAX, EBX
        AND EAX, 1 ; se o último bit é 1, é ímpar
        CMP EAX, 0
        JNZ impar
        JMP continue
        impar:
            PRINT_UDEC 4, EBX
            PRINT_CHAR 10
        continue:
        ADD EBX, 1
        CMP EBX, ECX
        JNE verificador
    
    MOV EAX, 0
    MOV EBX, 0
    MOV ECX, 0
    RET