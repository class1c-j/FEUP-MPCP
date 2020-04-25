 .text
.global CEVEN
.type CEVEN, "function"

// Contar quantos números pares existem num vetor de inteiros

CEVEN:  mov     x7, 0
        mov     x6, 0

LOOP:   cmp     x1, 0
        beq     END
        ldr     w2, [x0]
        bfi     w6, w2, 0, 1
        and     w6, w6, 1
        cmp     w6, 0
        beq     EVEN
        b       NEXT

EVEN:   add     x7, x7, 1

NEXT:   add     x0, x0, 4
        sub     x1, x1, 1
        b       LOOP

END:    ret
