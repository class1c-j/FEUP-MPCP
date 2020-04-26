.text
.global ex1b
.type ex1b, "function"

// Y = sqrt(X) + W
// d0->W, w0->X

ex1b:   fsqrt   d7, d0
        scvtf   d1, w0
        fadd    d7, d7, d1
        fmov    d0, d7
        ret
