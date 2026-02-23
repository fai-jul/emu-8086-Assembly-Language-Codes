
org 100h
mov ax,0A452h
mov bx,ax
rcr ax,1

jc odd
xor dx,dx
mov dx,01h

ret

odd:

xor dx,dx
mov dx,00h

ret 
