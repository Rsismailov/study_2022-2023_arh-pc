%include 'in_out.asm'
SECTION .data
    msg:	DB 'Как вас зовут?: ',0
    msg2: DB 'name.txt',0
    msg3: DB 'Меня зовут:',0
SECTION .bss
    X:	RESB 80

SECTION .text
    GLOBAL _start

_start:

    mov eax,msg
    call sprint

    mov ecx,X
    mov edx,80
    call sread

    mov ecx, 0777o
    mov ebx, msg2
    mov eax, 8
    int 80h
 
    mov esi, eax 

    mov eax, msg3
    call slen 

    mov edx, eax 
    mov ecx, msg3
    mov ebx, esi 
    mov eax, 4
    int 80h 

    mov ebx, esi 
    mov eax, 6 
    int 80h

    mov ecx,1 
    mov ebx, msg2 
    mov eax, 5
    int 80h 

    mov esi, eax  
   
    mov edx, 2 
    mov ecx,0
    mov ebx, eax 
    mov eax, 19 
    int 80h 
    
    mov eax, X
    call slen 
   
    mov edx,eax 
    mov ecx, X 
    mov ebx, esi 
    mov eax, 4
    int 80h

    mov ebx, esi 
    mov eax, 6 
    int 80h 
    
    call quit

