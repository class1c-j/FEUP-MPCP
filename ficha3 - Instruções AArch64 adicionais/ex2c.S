.text
.global MAXH
.type MAXH, "function"

// o valor máximo de um vetor com dados do tipo halfword.

MAXH:   mov     x3, -32767  // minimum value for signed short int
        mov     x2, 0

LOOP:   cbz     w1, END
        ldrsh   w2, [x0]
        cmp     w2, w3
        ble     NEXT
        mov     w3, w2

NEXT:   add     x0, x0, 2
        sub     w1, w1, 1
        b       LOOP

END:    mov     w0, w3
        ret
 
