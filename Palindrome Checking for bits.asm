
org 100h  
clc
mov bl,0
mov cl,8
mov al,01011110b
mov [012h],al
count:
rol al,1
rcr bl,1
loop count
mov al,[012h]
cmp al,bl
jz x
xor dx,dx
mov dx,0
ret

x:
xor dx,dx
mov dx,1
ret


