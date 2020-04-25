.text
.global SUM
.type SUM, "function"

// Somar os valores 11, 21, 31, . . . , 101 usando um ciclo.

SUM:    mov     x1, 11
        mov     x7, 0

LOOP:   cmp     x1, 111
        beq     END
        add     x7, x7, x1
        add     x1, x1, 10
        b       LOOP

END:    ret
 
