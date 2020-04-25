.text
.global CEQ
.type CEQ, "function"

// Determinar o número de bits iguais em posições correspondentes de X0 e X1.

CEQ:    mov     x7, 0
        eon     x0, x0, x1  // puts positions with equal bits at 1

// can now use last exercise to count bits at 1

LOOP:   cmp     x0, 0
        beq     END
        and     x1, x0, 1
        lsr     x0, x0, 1
        cmp     x1, 1
        beq     FOUND
        b       LOOP

FOUND:  add     x7, x7, 1
        b       LOOP

END:    ret
 
