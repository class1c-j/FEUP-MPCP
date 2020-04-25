.text
.global CVOW
.type CVOW, "function"

// Determinar o número de vogais de uma cadeia de carateres.
// 66 69 73 79 85, 97, 101, 105, 111, 117

CVOW: mov     x4, 0

LOOP:   ldrb    w2, [x0]
        cbz     w2, END
        cmp     w2, 66
        beq     VOWEL
        cmp     w2, 69
        beq     VOWEL
        cmp     w2, 73
        beq     VOWEL
        cmp     w2, 79
        beq     VOWEL
        cmp     w2, 85
        beq     VOWEL
        cmp     w2, 97
        beq     VOWEL
        cmp     w2, 101
        beq     VOWEL
        cmp     w2, 105
        beq     VOWEL
        cmp     w2, 111
        beq     VOWEL
        cmp     w2, 117
        beq     VOWEL
        add     x0, x0, 1
        b       LOOP

VOWEL:  add     x4, x4, 1
        add     x0, x0, 1
        b       LOOP


END:    mov     x0, x4
        ret
