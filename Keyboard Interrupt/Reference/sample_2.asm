
data segment

    dw 0, 0

data ends

stack segment

    db 128 dup(0)

stack ends

code segment

    assume cs: code, ds: data, ss:stack

    start:

        ;------------------------------
        ;INITIALIZE DATA SEGMENT.

        ;SET STACK.
        mov  ax, stack
        mov  ss, ax
        mov  sp, 128
          
        ;SET DS.
        mov  ax, data
        mov  ds, ax

        ;SET ES.
        mov  ax, 0
        mov  es, ax

        ;------------------------------
        ;MODIFY INTERRUPT.

        ;BACKUP ORIGINAL KEYBOARD INTERRUPT ADDRESS INTO DS:[0].
        push es:[9*4]
        pop  ds:[0]
        push es:[9*4+2]
        pop  ds:[2]

        ;REWRITE ADDRESS OF USER MODIFIED INT9.
        mov  word ptr es:[9*4], offset int9
        mov  es:[9*4+2], cs                     ;INT9

        ;------------------------------
        ;MAIN PROCESS.

        intloop:
            mov  ax, 10
            dec  ax
            cmp  ax, 0
            jle  reset
            cmp  ax, 5
            jge  setif

            sti
            jmp  intloop

            setif:
                sti     ;cli
                ;GET KEYBOARD INPUT (STORED IN AL)
                ;mov  ah, 00h
                ;int  16h

                ;cmp  al, 'a'
                ;jl   intloop
                ;cmp  al, 'z'
                ;jg   intloop
                ;je   special1

                ;CASESAR ENCRYPTION (OUT = (IN + 1) MOD 26)
                ;sub  al, 'a'
                ;inc  al
                ;xor  ah, ah
                ;mov  dl, 1ah
                ;div  dl
                ;add  ah, 'a'
                ;mov  al, ah

                ;out1:

                    ;OUTPUT ENCRYPTED CHARACTER
                    ;mov  ah, 0eh
                    ;mov  bl, 07h
                    ;int  10h

                jmp  intloop

                ;special1:
                    ;mov  al, 'a'
                    ;jmp  out1

            reset:
                sti
                mov  ax, 10
                jmp  intloop

        ;------------------------------
        ;AFTER PROCESS.

        mov  ax, 0
        mov  es, ax

        ;RESTORE INTERRUPT VECTER TABLE.
        push ds:[0]
        pop  es:[9*4]
        push ds:[2]
        pop  es:[9*4+2]

        ;FINISH PROGRAM.
        mov  ax, 4c00h
        int  21h

        ;------------------------------
        ;USER MODIFIED INT9.

        int9:

            ;STORE ORIGINAL STATE.
            push ax
            push bx
            push es

            ;GET KEYBOARD INPUT.
            in   al, 60h

            ;EMULATE ORIGINAL INTERRUPT INSTRUCTION.
            pushf                   ;SAVE FLAG0.
            pushf                   ;FLAG1 FOR INT.
            pop  bx                 ;CHANGE FLAG1.
            and  bh,11111100b       ;IF=0, TF=0.
            push bx                 ;CHANGE FLAG1.
            popf                    ;RESTORE FLAG0.
            call dword ptr ds:[0]   ;CALL ORIGINAL INT9.

            ;UNLESS INPUT LETTERS.
            cmp  al, 'a'
            jl   return
            cmp  al, 'z'
            jg   return
            je   special    ;IF INPUT 'Z'.

            ;CASESAR ENCRYPTION (OUT = (IN + 1) MOD 26).
            sub  al, 'a'
            inc  al
            xor  ah, ah
            mov  dl, 1ah
            div  dl
            add  ah, 'a'
            mov  al, ah

            ;OUTPUT ENCRYPTED CHARACTER.
            output:

                mov  ah, 0eh
                mov  bl, 07h
                int  10h

            ;RESTORE AND RETURN.
            return:

                pop  es
                pop  bx
                pop  ax
                iret

            special:
                mov  al, 'a'
                jmp  output

code ends

    end start
