 .text
.global MAX
.type MAX, "function"

// calcular o valor máximo de um vetor com dados do tipo word

MAX:    mov     w3, -32767   // smallest value for signed int
        mov     x2, 0

LOOP:   cbz     x1, END
        ldr     w2, [x0]
        cmp     w2, w3
        ble     NEXT
        mov     w3, w2

NEXT:   add     x0, x0, 4
        sub     x1, x1, 1
        b       LOOP

END:    mov     w0, w3
        ret
