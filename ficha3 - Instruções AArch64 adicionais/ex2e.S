.text
.global CRANGE
.type CRANGE, "function"

// o número de valores de um vetor que pertencem ao intervalo [a;b].

CRANGE: mov     x7, 0
        mov     x6, 0

LOOP:   cbz     x1, END
        ldr     w6, [x0]
        cmp     w6, w2
        blt     NEXT
        cmp     w6, w3
        bgt     NEXT
        add     x7, x7, 1

NEXT:   add     x0, x0, 4
        sub     x1, x1, 1
        b       LOOP

END:    mov     x0, x7
        ret
