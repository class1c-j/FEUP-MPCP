.text
.global MLSIG
.type MLSIG, "function"

// Determinar se os 32 bits menos significativos de X0 são iguais aos 32 bits mais significativos do mesmo registo.
// Em caso afirmativo X7 deverá assumir o valor 1, caso contrário deverá ser 0.

MLSIG:  mov     x11, 1
        lsr     x1, x0, 32
        cmp     w1, w0
        csel    x7, x11, xzr, eq
        ret
 
