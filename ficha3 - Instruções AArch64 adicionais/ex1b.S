.text
.global SOMA_V
.type SOMA_V, "function"

// Pretende-se calcular a soma dos Nelementos de um vetor (array) V
// Descrever que alterações seriam necessárias se o vetor tivesse valores de 64 bits.

SOMA_V:    mov     x3, 0

LOOP:   cmp     x1, 0
        beq     FIM
        ldr     x2, [x0]
        add     x3, x3, x2
        add     x0, x0, 4
        sub     x1, x1, 1
        b       LOOP

FIM:    mov     x0, x3
        ret
 
