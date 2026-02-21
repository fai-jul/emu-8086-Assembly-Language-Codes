
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
lea si,String1
lea di,String2
mov cx,12
cld

repe_compare:
      repe cmpsb
      jz strings_equal
      jnz strings_not_equal
      
strings_equal:
    mov ax, 0000h
    jmp done

strings_not_equal:
    mov ax, 0ffffh
done:
    int 20h

String1 db 'Hello, world',0
String2 db 'Hello, World',0




