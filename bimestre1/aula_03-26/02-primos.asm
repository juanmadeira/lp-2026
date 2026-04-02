%include "io.inc"

section .data
n DD 11
primo_output db "O número é primo.", 0
nao_primo_output db "O número não é primo.", 0

section .text
global CMAIN
CMAIN:
    MOV EAX, [n]
    MOV ECX, 2
    MOV EDX, 0
    
    IDIV ECX
    
    CMP EDX, 0
    JNZ primo
    PRINT_STRING nao_primo_output
    JMP continue
    primo:
        PRINT_STRING primo_output
    continue:
    
    MOV EAX, 0
    MOV ECX, 0
    MOV EDX, 0
    RET