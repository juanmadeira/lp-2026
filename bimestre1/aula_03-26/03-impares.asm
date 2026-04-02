%include "io.inc"

section .data
n DD 10

section .text
global CMAIN
CMAIN:
    MOV ECX, [n]

    verificador:
        MOV EAX, ECX
        MOV EBX, ECX
        AND EAX, 1 ; se o último bit é 1, é ímpar
        CMP EAX, 0
        JNZ impar
        JMP continue
        impar:
            PRINT_UDEC 4, EBX
            PRINT_CHAR 10
        continue:
        DEC ECX
        JNZ verificador
    
    MOV EAX, 0
    MOV EBX, 0
    MOV ECX, 0
    RET