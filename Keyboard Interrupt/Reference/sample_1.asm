;在屏幕中间一次显示'a'~~'z'，并且可以让人看清。在显示的过程中，按下esc键后，改变显示的颜色是  
  
  
assume cs:code  
  
stack segment  
    db 123 dup(0)  
stack ends  
  
data segment  
    dw 0,0
data ends  
      
code segment  
start:  
    ;set the stack  
    mov ax,stack  
    mov ss,ax  
    mov sp,128  
      
    ;set ds  
    mov ax,data  
    mov ds,ax  
  
    ;set es  
    mov ax,0  
    mov es,ax  
  
    ;将原来的int9中断例程的入口地址存储在ds：0和2中  
    push es:[9*4]  
    pop ds:[0]  
    push es:[9*4+2]  
    pop ds:[2]  
  
    ;设置新的中断向量表的入口地址  
    mov word ptr es:[9*4],offset int9  
    mov es:[9*4+2],cs  
  
    ;show the string  
    mov ax,0b800h  
    mov es,ax  
    mov ah,'a'  
s:  mov es:[160*12+40*2],ah  
    call delay  
    inc ah  
    cmp ah,'z'  
    jna s  
  
    mov ax,0  
    mov es,ax  
  
    push ds:[0]  
    pop es:[9*4]  
    push ds:[2]  
    pop es:[9*4+2]  
  
    mov ax,4c00h  
    int 21h  
  
delay:  push ax  
    push dx  
  
    mov dx,1000h  
    mov ax,0  
s1: sub ax,1  
    sbb dx,0  
    cmp ax,0  
    jne s1  
    cmp dx,0  
    jne s1  
    pop dx  
    pop ax  
    ret  
;---------new int9---------------------------  
  
int9:  
    push ax  
    push bx  
    push es  
  
    in al,60h  
  
    ;对int指令进行模拟 调用原来的int9中断例程  
    pushf           ;save the flag0  
    pushf           ;flag1 for the int  
    pop bx          ;to change the flag1  
    and bh,11111100b    ;IF=0 TF=0  
    push bx         ;change the flag1  
    popf            ;restore the flag0  
    call dword ptr ds:[0]   ;use the int  
  
    cmp  al,1       ;is esc  
    jne int9ret  
  
    mov ax,0b800h  
    mov es,ax  
    inc byte ptr es:[160*12+40*2+1];属性值+1，改变颜色    
  
int9ret:  
    pop es  
    pop bx  
    pop ax  
    iret  
  
code ends  
end start  
  
  
;这本书里面的键盘程序要在windows 2000的dos方式下运行实现。  
;蛋疼