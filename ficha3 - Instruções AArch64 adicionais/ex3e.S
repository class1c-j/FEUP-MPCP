.text
.global PAL
.type PAL, "function"

// Implementar um programa que determine se uma cadeia de carateres é palíndromo.

PAL:    ldr     x1, [x0]
        rev     x2, x1
        cmp     x2, x2
        cset    x0, eq
        ret
 
