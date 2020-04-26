.text
.global DIST
.type DIST, "function"

// a distância entre dois pontos
// d0->xa, d1->ya, d2->xb, d3->yb
// sqrt((xa-xb)^2+(ya-yb)^2)

DIST:   fsub    d10, d0, d2
        fmul    d10, d10, d10
        fsub    d11, d1, d3
        fmul    d11, d11, d11
        fadd     d12, d10, d11
        fsqrt   d0, d12
        ret
 
