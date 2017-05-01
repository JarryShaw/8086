data segment

    ;-----------------------------------------
    ;ARRAY OF 50 INTEGERS.
    arr dw 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13, -14, -15, -16, -17, -18, -19, -20, -21, -22, -23, -24, -25
    ;-----------------------------------------

    i   dw  ? 
    j   dw  ?
    p   dw  ?
    r   dw  ?
    q   dw  ?
    x   dw  ?

ends

stack segment

    stk db  100  dup(0)
    top equ 100

ends

code segment

    assume cs: code, ds: data, ss:stack

    start:

        ;INITIALIZE DATA SEGMENT.
        mov  ax, @data
        mov  ds, ax
        mov  ax, stack
        mov  ss, ax
        mov  sp, top

        ;CALL QUICKSORT(A, 0, A.LENGTH).
        mov  p, 0
        mov  r, 49
        call quicksort

        ;WAIT FOR ANY KEY.
        mov  ah, 7
        int  21h

        ;FINISH PROGRAM.
        mov  ax, 4c00h
        int  21h

        ;-----------------------------------------
        ;QUICKSORT(A, p, r)
        ;    if p < r
        ;        q = QUICKSORT(A, p, r)
        ;        QUICKSORT(A, p, q-1)
        ;        QUICKSORT(A, q+1, r)

        quicksort proc

            ;COMPARE P WITH R.
            mov  ax, p 
            cmp  ax, r                  ;COMPARE P WITH R
            jge  bigger1                ;IF P ≥ R, SORT IS DONE.

            ;CALL PARTITION(A, P, R).
            call partition

            ;GET Q = PARTITION(A, P, R).
            mov  q, ax

            ;PUSH Q+1, R INTO STACK FOR LATER USAGE.
            inc  ax
            push ax
            push r

            ;CALL QUICKSORT(A, P, Q-1).
            mov  ax, q
            mov  r, ax
            dec  r
            call quicksort

            ;CALL QUICKSORT(A, Q+1, R).
            pop  r
            pop  p 
            call quicksort 

            ;WHEN SORT IS DONE.
            bigger1:
                ret

        quicksort endp

        ;-----------------------------------------
        ;PARTITION(A, p, r)
        ;    x = A[r]
        ;    i = p - 1
        ;    for j = p to r-1
        ;        if A[j] ≤ x
        ;            i = i + 1
        ;            exchange A[i] with A[j]
        ;    exchange A[i+1] with A[r]
        ;    return i+1

        partition proc

            ;GET X = ARR[ R ].
            mov  si, offset arr
            mov  ax, r
            shl  ax, 1                  ;R * 2, BECAUSE EVERY COUNTER IS 2 BYTES.
            add  si, ax
            mov  ax, [ si ]       
            mov  x,  ax                 ;X = ARR[ R ].

            ;GET I = P - 1.
            mov  ax, p
            mov  i,  ax
            dec  i

            ;INITIALISE J WITH P.
            mov  ax, p
            mov  j,  ax

            ;LOOP J FROM P TO R-1.
            for_j:

                ;GET ARR[ J ].
                mov  si, offset arr
                mov  ax, j
                shl  ax, 1              ;J * 2, BECAUSE EVERY COUNTER IS 2 BYTES.
                add  si, ax
                mov  ax, [ si ]         ;AX = ARR[ J ]

                ;COMPARE A[ J ] WITH X.
                cmp  ax, x
                jg   bigger             ;IF A[ J ] > X, NO SWAP

                ;GET I = I + 1.
                inc  i
                
                ;GET ARR[ I ].
                mov  di, offset arr
                mov  cx, i
                shl  cx, 1              ;I * 2, BECAUSE EVERY COUNTER IS 2 BYTES.
                add  di, cx
                mov  cx, [ di ]         ;CX = ARR[ I ].

                ;EXCHANGE ARR[ I ] WITH ARR[ J ].
                mov  [ di ], ax
                mov  [ si ], cx
            
                ;GET NEXT J.
                bigger:

                    inc  j              ;J = J + 1.
                    mov  ax, r
                    cmp  j,  ax         ;COMPARE J WITH R.
                    jl   for_j          ;IF J ≤ R-1 CONTINUE LOOP.

            ;GET ARR[ i+1 ].
            inc  i
            mov  si, offset arr
            mov  ax, i
            shl  ax, 1                  ;(I+1) * 2, BECAUSE EVERY COUNTER IS 2 BYTES.
            add  si, ax
            mov  ax, [ si ]             ;AX = ARR[ I+1 ].

            ;GET ARR[ R ].
            mov  di, offset arr
            mov  cx, r
            shl  cx, 1                  ;R * 2, BECAUSE EVERY COUNTER IS 2 BYTES.
            add  di, cx
            mov  cx, [ di ]             ;CX = ARR[ R ].

            ;EXCHANGE ARR[ I+1 ] WITH ARR[ R ].
            mov  [ di ], ax
            mov  [ si ], cx  

            ;RETURN I+1.
            mov  ax, i
            ret

        partition endp
    
ends

    end start
