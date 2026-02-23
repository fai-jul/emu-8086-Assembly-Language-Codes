
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
lea si,String1
mov bl,0h

count:
    lodsb
    cmp al,'$'
    jz done
cmp al,'a'
jz vowel 

cmp al,'e'
jz vowel

cmp al,'i'
jz vowel

cmp al,'o'
jz vowel

cmp al,'u'
jz vowel

cmp al,'A'
jz vowel

cmp al,'E'
jz vowel

cmp al,'I'
jz vowel

cmp al,'O'
jz vowel

cmp al,'U'
jz vowel

jmp count  

vowel:
    inc bl
    jmp count


done:
    mov ah,02h
    add bl,30h 
    mov dl,bl
    int 21h

String1 db 'Faijul Islam Sajid$',0
String2 db 0


