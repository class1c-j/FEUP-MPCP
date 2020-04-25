.text
.global BIT1
.type BIT1, "function"

// Contar o número de bits a 1 na representação binária do valor de X0

BIT1:   mov     x7, 0
        mov     x0, 45  // testing

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
 
