.data
ZERO:   .single     0
A:      .single     1.5
B:      .single     -12.5
C:      .single     7.0
INC:    .single     0.1

.text
.global calc_poly_tab
.type calc_poly_tab, "function"

//Escreva a sub-rotina calc_poly_tab que calcula o polinómio para valores de x pertencentes a {0; 0,1; 0,2;···; 9,9; 10}
//polinómio: p(x)=1.5x^3 -12.5x + 7
//ao todo 101 valores
//x0->base do vetor


calc_poly_tab:  mov     x20, 101        // times to be repeated
                ldr     s1, ZERO        // start at 0
                ldr     s21, INC        // increment


loop:           cbz     x20, end
                fmul    s2, s1, s1
                fmul    s2, s2, s1
                ldr     s10, A
                fmul    s2, s2, s10
                ldr     s11, B
                fmul    s3, s1, s11
                fadd    s2, s2, s3
                ldr     s12, C
                fadd    s0, s2, s12
                str     s0, [x0]
                fadd    s1, s1, s21
                add     x0, x0, 4
                sub     x20, x20, 1
                b       loop

end:            ret
 
