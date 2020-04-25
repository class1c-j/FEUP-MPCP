
.text
.global ex4b
.type ex4b, "function"

// verifca se uma sequência de carateres tem parêntesis curvos, parêntesis retos e chavetas corretamente emparelhadas.

ex4b:       mov     x3, sp
            stp     x29, x30, [sp, -16]!
            mov     x29, sp
            mov     x7, 1

loop:       ldrb    w1, [x0]

            cmp     w1, '('
            beq     push
            cmp     w1, '['
            beq     push
            cmp     w1, '{'
            beq     push
            cmp     w1, ')'
            beq     checkA
            cmp     w1, ']'
            beq     checkB
            cmp     w1, '}'
            beq     checkC

next:       add     x0, x0, 1
            cbz     w1, end
            b       loop

push:       str     w1, [sp, -16]!
            b       next

checkA:     ldrb    w2, [sp], 16
            cmp     w2, '('
            bne     unmatch
            b       next

checkB:     ldrb    w2, [sp], 16
            cmp     w2, '['
            bne     unmatch
            b       next

checkC:     ldrb    w2, [sp], 16
            cmp     w2, '{'
            bne     unmatch
            b       next

unmatch:    mov    x7, 0
            b      next

end:        sub     x3, x3, 16
            cmp     sp, x3
            bne     unmatch2
            mov     x0, x7
            ldp     x29, x30, [sp], 16
            ret

unmatch2:   mov  sp, x3
            mov  x0, 0
            ldp     x29, x30, [sp], 16
            ret
