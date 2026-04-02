%include "io.inc"

section .data
n DD 5

section .text
global CMAIN
CMAIN:
    MOV EAX, [n]
    MOV ECX, [n]
    SUB ECX, 1
    fatorial:
        IMUL EAX, ECX
        LOOP fatorial
    PRINT_UDEC 4, EAX
    MOV EAX, 0
    MOV ECX, 0
    RET