
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
org 100h
 .data
a   dw 5
b   dw 4
c   dw 6
d   dw 3
e   dw 7
result dw ?

.code

mov ax,a
mul b
mov bx,ax

mov ax,c
mul d

div e
mov cx,dx

mov  ax,bx
sub  ax,cx

mov result,ax

ret 
