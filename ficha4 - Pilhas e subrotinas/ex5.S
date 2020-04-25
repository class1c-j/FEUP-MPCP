.text
.global EX5
.type EX5, "function"

//x0->base do vetor1, x1->tamanho do vetor1, x2->base do vetor2, x3->tamanho do vetor2

EX5:

MAXMED: stp     x29, x30, [sp, -16]!  //prologo
        mov     x29, sp

        mov     x21, x1
        mov     x22, x3

        bl      MEDIA
        mov     x23, x0   // media do primeiro vetor em x23

        mov     x0, x2
        mov     x1, x3

        bl      MEDIA

        mov     x24, x0  // media do 2o vetor em x24
        cmp     x23, x24
        csel    x0, x23, x24, gt

        mov     x29, sp            // epilogo
        ldp     x29, x30, [sp], 16
        ret



MEDIA:  stp     x29, x30, [sp, -16]!  //prologo
        mov     x29, sp

        bl      SOMA
        sdiv    x0, x0, x1

        mov     x29, sp
        ldp     x29, x30, [sp], 16  //epilogo
        ret


SOMA:   stp     x29, x30, [sp, -16]!  // prologo
        mov     x29, sp

        str     x1, [sp, -16]!  // preserve for later use in the program
        mov     x10, 0  //to store the result

LOOPS:  cbz     x1, ENDS
        ldr     w11, [x0]
        add     w10, w10, w11
        add     x0, x0, 4
        sub     x1, x1, 1
        b       LOOPS

ENDS:   ldr     x1, [sp], 16   //epilogo
        mov     sp, x29
        ldp     x29, x30, [sp], 16
        mov     x0, x10
        ret
 
