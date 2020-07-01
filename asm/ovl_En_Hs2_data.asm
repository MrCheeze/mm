.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_8098EFF0
/* 000036 0x8098EFF0 */ .word	0x00E70400
/* 000037 0x8098EFF4 */ .word	0x00000009
/* 000038 0x8098EFF8 */ .word	0x00010000
/* 000039 0x8098EFFC */ .word	0x00000398
/* 000040 0x8098F000 */ .word	EnHs2_Init
/* 000041 0x8098F004 */ .word	EnHs2_Destroy
/* 000042 0x8098F008 */ .word	EnHs2_Update
/* 000043 0x8098F00C */ .word	EnHs2_Draw
glabel enHs2OverlayInfo
/* 000044 0x8098F010 */ .word	0x00000090
/* 000045 0x8098F014 */ .word	0x00000020
/* 000046 0x8098F018 */ .word	0x00000000
/* 000047 0x8098F01C */ .word	0x00000000
/* 000048 0x8098F020 */ .word	0x00000006
glabel enHs2OverlayRelocations
/* 000049 0x8098F024 */ .word	0x45000020
/* 000050 0x8098F028 */ .word	0x46000024
/* 000051 0x8098F02C */ .word	0x82000010
/* 000052 0x8098F030 */ .word	0x82000014
/* 000053 0x8098F034 */ .word	0x82000018
/* 000054 0x8098F038 */ .word	0x8200001C
glabel enHs2OverlayInfoOffset
/* 000055 0x8098F03C */ .word	0x00000030
