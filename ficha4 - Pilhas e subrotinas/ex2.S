.text
.global TEST
.type TEST, "function"

TEST:   str     x0, [sp, -16]!
        // alocar 16 bytes de memória na stack, push do valor de x0,
        // e mover o sp para o inicio desse espaço

        ldr     x2, [sp], 16
        // pop do valor que está no topo da stack para o registo x2

        stp     x1, x0, [sp, -16]!
        // push dos valores de x1 e x0 para a stack, move o sp
        // para o inicio da stack
