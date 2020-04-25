.text
.global ex2a
.type ex2a, "function"

ex2a:   fmov        s4, 3.0
        fsub        s5, s0, s1
        fmul        s5, s5, s2
        fadd        s6, s3, s0
        fsub        s6, s6, s4
        fdiv        s0, s5, s6
        ret
 
