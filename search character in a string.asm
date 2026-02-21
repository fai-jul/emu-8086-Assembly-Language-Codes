
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 


mov ax, cs
mov es, ax 

lea di,String
mov cx,13
mov al,'w'
cld

repe_scasb:
      repne scasb
      jz found 
      mov ax, 0000h
      jmp done
      
found:
    mov ax,0ffffh 
    jmp done

done:
    int 20h

String db 'Hello, world',0





