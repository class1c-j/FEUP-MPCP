.text
.global MIN
.type MIN, "function"

// o valor mínimo de um vetor com dados do tipo double word.

MIN:    mov     x3, 2147483647  // maximum value for signed long int

LOOP:   cbz     x1, END
        ldr     x2, [x0]
        cmp     x2, x3
        bge     NEXT
        mov     x3, x2

NEXT:   add     x0, x0, 8
        sub     x1, x1, 1
        b       LOOP

END:    mov     x0, x3
        ret
