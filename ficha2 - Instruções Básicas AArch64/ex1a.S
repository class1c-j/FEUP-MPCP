.text
.global DECR
.type DECR, "function"

// Decrementar de uma unidade o valor da posição de memória endereçada por X10.

DECR:   ldr     x1, [x10]
        sub     x1, x1, 1
        str     x1, [x10]
        ret
 
