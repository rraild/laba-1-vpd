.section .rodata
message:
    .asciz "Hello to 304 from Vladimir, number 8, group М3О-104БВ-26!"

.text
.global main
.type main, %function
.extern puts
main:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    adrp x0, message
    add x0, x0, :lo12:message
    bl puts
    mov w0, #0
    ldp x29, x30, [sp], #16
    ret
.size main, .-main
.section .note.GNU-stack,"",%progbits
