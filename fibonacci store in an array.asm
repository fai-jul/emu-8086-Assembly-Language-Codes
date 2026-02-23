
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

arr db 0,0,0,0,0,0,0,0,0,0,0
mov al,1h
mov bl,1h
mov si,0
mov dl,84
mov cx,1000

mov arr[si],al
inc si
mov arr[si],bl

looping:
    
    mov al,arr[si]     
    mov bl,arr[si-1]   
    add al,bl         
    inc si
    mov arr[si],al
    
    cmp al,dl
    ja x
    loop looping



 x: 
 dec si 
 xor cx,cx
 mov cx,si 
 inc cx
 print:   
    mov al,arr[si]
    dec si
    loop print




