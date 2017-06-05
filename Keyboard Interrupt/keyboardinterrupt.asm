data segment

    ;--------------------------------------------
    ;SCAN CODE OF KEYBOARD ASSCENDINGLY (ALPHABETS ONLY).
    key db 1eh, 30h, 2eh, 20h, 12h, 21h, 22h, 23h, 17h, 24h, 25h, 26h, 32h, 31h, 18h, 19h, 10h, 13h, 1fh, 14h, 16h, 2fh, 11h, 2dh, 15h, 2ch
    ;--------------------------------------------

    ctr dw 0   ;TIME COUNTER.
    sf  dw 0   ;STATE FLAG - 1 FOR ENABLED, 0 FOR DISABLED.
    ef  dw 0   ;EXIT FLAG - 1 FOR EXIT THE PROGRAM.

data ends

stack segment

    stk db  100  dup(0)
    top equ 100

stack ends

code segment

    assume cs:code, ds:data, ss:stack

    start:

        ;----------------------------------------
        ;INNITIALISATION.

        ;DATA SEGMENT.
        mov  ax, data
        mov  ds, ax
        mov  ax, stack
        mov  ss, ax
        mov  sp, top

        ;PROCESSORS.
        call far ptr init0  ;8259 - PROGRAMMABLE INTERRUPT CONTROLLER.
        call far ptr init1  ;8253 - PROGRAMMABLE INTERVAL TIMER.
        call far ptr init2  ;KEYBOARD.

        jmp  disable

        ;----------------------------------------
        ;WHEN KEYBOARD INTERRUPT ENABLED.

        loop_sti:

            mov  ax, ef
            cmp  ax, 1
            je   exit

            mov  ax, 600*2
            mov  bx, ctr
            cmp  bx, ax
            ja   clear      ;IF COUNTER OVERFLOWED.

            jmp  loop_sti

        ;----------------------------------------
        ;WHEN KEYBOARD INTERRUPT DISABLED.

        loop_cli:

            mov  ax, 600
            mov  bx, ctr
            cmp  bx, ax
            ja   enable     ;IF COUNTER TRIGGERED.

            jmp  loop_cli

        ;----------------------------------------
        ;SET STATE FLAG TO ENABLED.

        enable:

            mov  ax, 1
            mov  sf, ax
            jmp  loop_sti

        ;----------------------------------------
        ;SET STATE FLAG TO DISABLED.

        disable:

            mov  ax, 0
            mov  sf, ax
            jmp  loop_cli

        ;----------------------------------------
        ;RESET COUNTER.

        clear:

            mov  ax, 0
            mov  ctr, ax
            jmp  disable

        ;----------------------------------------
        ;EXIT THE PROGRAM.

        exit:

            mov  dx, offset start
            int  27h                ;INT 27H - TERMINATE BUT STAY RESIDENT.

        ;----------------------------------------
        ;INITIALISE PIC 8259.

        init0 proc far

            push ax

            ;ICW_1.
            mov  al, 13h
            out  20h, al

            ;ICW_2.
            mov  al, 08h
            out  21h, al

            ;ICW_4.
            mov  al, 09h
            out  21h, al

            pop  ax
            ret

        init0 endp

        ;----------------------------------------
        ;INITIALISE PIT 8253.

        init1 proc far

            push ax
            push bx
            push es

            ;CONTROL WORD REGISTER.
            mov  al, 36h
            out  43h, al
            mov  al, 20h
            out  40h, al
            mov  al, 4eh
            out  40h, al

            ;OVERWRITE INT 08H - TIMER INTERRUPT.
            cli
            mov  ax, 0
            mov  es, ax
            mov  bx, 8*4
            mov  ax, offset int08
            mov  es:[bx], ax
            mov  ax, seg int08
            mov  es:[bx+2], ax
            sti

            pop  es
            pop  bx
            pop  ax
            ret

        init1 endp

        ;----------------------------------------
        ;INITIALISE KEYBOARD.

        init2 proc far

            push ax
            push bx
            push es

            ;OVERWRITE INT 09H - KEYBOARD INTERRUPT.
            cli
            mov  ax, 0
            mov  es, ax
            mov  bx, 9*4
            mov  ax, offset int09
            mov  es:[bx], ax
            mov  ax, seg int09
            mov  es:[bx+2], ax
            sti

            pop  es
            pop  bx
            pop  ax
            ret

        init2 endp

        ;----------------------------------------
        ;USER MODIFIED INT 08.

        int08:

            sti
            push ax

            mov  ax, ctr
            inc  ax
            mov  ctr, ax

            cli
            mov  al, 20h
            out  20h, al

            pop  ax
            iret

        ;----------------------------------------
        ;USER MODIFIED INT 09.

        int09:

            push ax
            push dx
            push ds
            sti

            ;READ BUFFER.
            in   al, 60h
            push ax
            in   al, 61h
            mov  ah, al
            or   al, 80h
            out  61h, al
            xchg ah, al
            out  61h, al
            pop  ax

            ;ESC PRESSED - EXIT THE PROGRAM.
            cmp  al, 1
            je   exit_esc

            ;CHECK STATE.
            mov  bx, sf
            cmp  bx, 0
            je   nohit

            compare:
                mov  bx, seg key
                mov  ds, bx
                mov  bx, 0

            proc_cmp:
                mov  dl, [bx]
                cmp  al, dl
                je   hit        ;HIT.
                inc  bx
                cmp  bx, 26
                je   nohit      ;NONE HIT.
                jmp  proc_cmp

            hit:
                mov  dl, bl
                inc  dl
                cmp  dl, 26
                jne  not_z
                mov  dx, 0

            not_z:
                add  dx, 61h
                mov  ah, 2
                int  21h        ;INT 21H, AH=02H - DISPLAY OUTPUT.

            nohit:
                cli
                mov  al, 20h
                out  20h, al

                pop  ds
                pop  dx
                pop  ax
                iret

            ;----------------------------------------
            ;RESPONDING PRESS OF ESC - EXIT THE PROGRAM.
            
            exit_esc:
                mov  ax, 1
                mov  ef, ax
                jmp  nohit

code ends

    end start
