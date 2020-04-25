.text
.global INV
.type INV, "function"

INV:    mov     x1, x0          //copy the address of the start of the string to write the result later
        mov     x2, 0           //start counter to keep the number of elements in the string
        stp     x29, x30, [sp, -16]!

PUSH:   ldrb    w3, [x1]        // push the string to the stack
        cbz     w3, POP
        strb    w3, [sp, -16]!
        add     x1, x1, 1
        add     x2, x2, 1
        b       PUSH

POP:    cbz     x2, END         // pop the string from the stack
        ldrb    w3, [sp], 16
        strb    w3, [x0]
        sub     x2, x2, 1
        add     x0, x0, 1
        b       POP

END:    ldp     x29, x30, [sp], 16
        ret
 
