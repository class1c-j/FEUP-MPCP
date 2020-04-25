// a) calcula a soma do quadrado com o triplo com 1 de um numero
// quando x0 = 7, o resultado será 71

//b)

.text
.global POLI
.type POLI, "function"
.global QUAD
.type QUAD, "function"

POLI:   stp     x29, x30, [sp, -32]!        // prologo
        mov     x29, sp                     // necessário para usar a stack
        str     x20, [sp, 16]

        mov     x10, x0   //<1>
        bl      QUAD
        mov     x20, x0
        mov     x0, 3
        mul     x10, x10, x0
        add     x0, x20, x10
        add     x0, x0, 1

        ldp     x29, x30, [sp], 16      // epilogo
        ldr     x20, [sp], 16           // necessário depois de usar a stack

        ret     // <2>

QUAD:   mul     x0, x0, x0
        ret

//c) em <1>, a stack tem os valores de x29 (FP, contem o endereço para a moldura
//   da função POLI), x30 (LR, contem o endereço de retorno para seguir o fluxo do programa após a invocação da
//   subrotina com bl) e x20 (registo usado pela função POLI que deve ser preservado pela "calee")

//   em <2>, dá se pop aos valores que estavam na stack, pelo que fica vazia
