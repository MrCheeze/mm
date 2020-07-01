.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_801B4610
/* 277204 0x801B4610 */ .word	0x00000000
/* 277205 0x801B4614 */ .word	0x00000000
/* 277206 0x801B4618 */ .word	0x00000000
/* 277207 0x801B461C */ .word	0x00000000
