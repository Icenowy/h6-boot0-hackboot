mov     x0, #0x400
movk    x0, #0x700, lsl #16
mov     x1, #0x400
movk    x1, #0x700, lsl #16
ldr     w1, [x1]
and     w1, w1, #0xfffffffe
str     w1, [x0]
mov     x0, #0x4000
movk    x0, #0x10, lsl #16
//str     x0, [x29,#24]
//ldr     x0, [x29,#24]
br      x0
