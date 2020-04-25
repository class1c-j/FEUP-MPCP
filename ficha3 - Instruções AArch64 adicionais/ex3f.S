.text
.global CWORD
.type CWORD, "function"

// Contar quantas palavras tem uma cadeia de carateres, assumindo que há um único espaço entre palavras consecutivas.
// ' '=32

CWORD:  mov     x7, 1

LOOP:   ldrb    w1, [x0]
        cbz     w1, END
        cmp     w1, 32
        bne     NEXT
        add     x7, x7, 1

NEXT:   add     w0, w0, 1
        b       LOOP


END:    mov     x0, x7
        ret
 
