%include"asm_io.asm"

segment .bss
segment .data
        msg1 db"[+] Enter n: ", 0
        msg2 db"∏(i=1,n)i= ", 0
segment .text
global main
main:
MOV EAX, msg1
CALL print_string
CALL read_int
MOV ECX, EAX
SUB ECX, 1
MOV EBX, EAX
SUB EBX, 1

boucle:
        MUL EBX
        DEC EBX
        loop boucle

MOV EBX, 2
XOR EDX, EDX
DIV EBX
MOV EBX, EAX
MOV EAX, msg2
CALL print_string
MOV EAX, EBX
CALL print_int
CALL print_nl

MOV EAX, 1
MOV EBX, 0
INT 0x80
