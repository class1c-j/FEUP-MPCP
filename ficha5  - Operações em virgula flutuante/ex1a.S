.text
.global ex1a
.type ex1a, "function"

ex1a:   fadd     d0, d0, d2
        fneg     d1, d1
        fmul     d0, d0, d1
        ret
 
