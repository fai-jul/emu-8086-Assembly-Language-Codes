
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
lea si,String1 
mov dx,0

find_length: 
    lodsb
    cmp al,'$'  
    jz next
    inc dx
    jmp find_length

next:
mov length,dx

mov cx,length
mov di,cx 
dec di

lea si,String1

string_add: 
    cmp di,-1
    jz pallindrome
    lodsb 
    mov String2[di],al
    dec di
    loop string_add

pallindrome:
    lea si,String1
    lea di,String2
    mov cx,length
    cld
    
    repe cmpsb 
    jz yes 
    mov ah,02h
    mov dl,30h 
    int 21h
    jmp done

yes:
    mov ah,02h 
    mov dl,31h 
    int 21h

done:
    ret
String1 db 'faijul$',0
String2 db 10 dup(0)
length dw 0

