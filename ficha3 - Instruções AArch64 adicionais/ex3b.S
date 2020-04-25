.text
.global COCCUR
.type COCCUR, "function"

// Determinar o número de ocorrências de um caráter numa cadeia de carateres.

COCCUR: mov     x4, 0

LOOP:   ldrb    w2, [x0]
        cbz     w2, END
        cmp     w2, w1
        bne     NEXT
        add     x4, x4, 1

NEXT:   add     x0, x0, 1
        b       LOOP


END:    mov     x0, x4
        ret
 
