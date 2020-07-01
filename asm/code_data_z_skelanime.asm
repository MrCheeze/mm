.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_801C5CB0
/* 295036 0x801C5CB0 */ .word	func_80135C3C
/* 295037 0x801C5CB4 */ .word	func_80135C6C
/* 295038 0x801C5CB8 */ .word	func_80135CDC
/* 295039 0x801C5CBC */ .word	func_80135D38
/* 295040 0x801C5CC0 */ .word	func_80135DB8
/* 295041 0x801C5CC4 */ .word	func_80135E3C
/* 295042 0x801C5CC8 */ .word	0x00000000
/* 295043 0x801C5CCC */ .word	0x00000000
