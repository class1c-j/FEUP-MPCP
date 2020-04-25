.text
.global SEQ
.type SEQ, "function"

// Determinar quantas vezes a sequência ’10110’ aparece na representação binária do valor de X3 sem sobreposições

SEQ:    mov     x7, 0
        mov     x1, 0b10110
        mov     x2, 0
        mov     x3, 0b10110001011010  // testing

LOOP:   cmp     x3, 0
        beq     END
        bfi     x2, x3, 0, 5
        cmp     x2, x1
        bne     NEXT
        add     x7, x7, 1
        b       NEXT

NEXT:   lsr     x3, x3, 1
        b       LOOP

END:    ret
 
