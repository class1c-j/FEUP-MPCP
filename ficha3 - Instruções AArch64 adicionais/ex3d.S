.text
.global CUPP
.type CUPP, "function"

// Determinar o número de letras maiúsculas de uma cadeia de carateres.
// 'A'=65, 'Z'=90

CUPP:   mov     x7, 0

LOOP:   ldrb    w1, [x0]
        cbz     w1, END
        cmp     w1, 65
        blt     NEXT
        cmp     w1, 90
        bgt     NEXT
        add     x7, x7, 1

NEXT:   add     x0, x0, 1
        b       LOOP

END:    mov     x0, x7
        ret
