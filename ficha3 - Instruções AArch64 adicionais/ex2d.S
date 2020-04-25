 .text
.global AVG
.type AVG, "function"

// Calcular o valor médio de um vetor com dados de 64 bits.

AVG:    mov     x3, 0
        mov     x4, x1

LOOP:   cbz     x1, END
        ldr     x2, [x0]
        add     x3, x3, x2
        add     x0, x0, 8
        sub     x1, x1, 1
        b       LOOP

END:    sdiv    x0, x3, x4
        ret
