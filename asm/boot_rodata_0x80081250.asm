.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel __switch_D_80098260
/* 024704 0x80098260 */ .word	.L_800816E8
/* 024705 0x80098264 */ .word	.L_80081730
/* 024706 0x80098268 */ .word	.L_80081730
/* 024707 0x8009826C */ .word	.L_800816F8
/* 024708 0x80098270 */ .word	.L_80081730
/* 024709 0x80098274 */ .word	.L_80081708
/* 024710 0x80098278 */ .word	.L_80081718
/* 024711 0x8009827C */ .word	.L_80081728
