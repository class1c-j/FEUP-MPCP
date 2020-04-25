.text
.global SLEN
.type SLEN, "function"

// Determinar o comprimento de uma cadeia de carateres

SLEN:   mov     x3, 0

LOOP:   ldrb    w2, [x0]
        cbz     w2, END
        add     x3, x3, 1
        add     x0, x0, 1
        b       LOOP

END:    mov     x0, x3
        ret
 
