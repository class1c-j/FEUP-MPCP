.text
.global SOMA_V
.type SOMA_V, "function"

// Pretende-se calcular a soma dos N elementos de um vetor (array) V

SOMA_V: mov     x3, 0

LOOP:   cmp     x1, 0
        beq     FIM
        ldr     w2, [x0]
        add     w3, w3, w2
        add     x0, x0, 4
        sub     x1, x1, 1
        b       LOOP

FIM:    mov     x0, x3
        ret
 
