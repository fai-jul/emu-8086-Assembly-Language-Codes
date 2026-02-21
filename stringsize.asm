
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
mov di,300h
lea si,String
xor dl,dl
looping:
    lodsb
    stosb 
    inc dl
    cmp al,0 
    jz  x
    loop looping
 
x: 
mov size,dl
int 20h
String db "Hello, World",0
size db 0          