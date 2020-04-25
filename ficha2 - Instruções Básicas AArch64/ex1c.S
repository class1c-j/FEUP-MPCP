.text
.global ABSV
.type ABSV, "function"

// Substituir o conteúdo de X15 pelo seu valor absoluto.


ABSV:   mov     x15, -5   // testing
        cmp     x15, 0
        bge     END
        neg     x15, x15
END:    ret 
