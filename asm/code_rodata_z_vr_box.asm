.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel __switch_D_801DF130
/* 320924 0x801DF130 */ .word	.L_801424A0
/* 320925 0x801DF134 */ .word	.L_801424A0
/* 320926 0x801DF138 */ .word	.L_801425A0
/* 320927 0x801DF13C */ .word	.L_801425A0
/* 320928 0x801DF140 */ .word	.L_801426A0
/* 320929 0x801DF144 */ .word	.L_801426A0
glabel D_801DF148
/* 320930 0x801DF148 */ .word	0x4049999A
/* 320931 0x801DF14C */ .word	0x00000000
