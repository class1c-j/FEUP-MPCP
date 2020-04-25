.text
.global MAX
.type MAX, "function"

// Colocar no registo X9 o maior dos valores dos registos X10 e X11.


MAX:    mov     x10, 20
        mov     x11, 21   // values for testing
        cmp     x10, x11
        bge     FIRST
        mov     x9, x11
        b       END

FIRST:  mov     x9, x10

END:    ret
 
