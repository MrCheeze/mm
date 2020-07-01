.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80A56100
/* 000016 0x80A56100 */ .word	0x016E0500
/* 000017 0x80A56104 */ .word	0x00005015
/* 000018 0x80A56108 */ .word	0x000B0000
/* 000019 0x80A5610C */ .word	0x0000036C
/* 000020 0x80A56110 */ .word	EnFirefly2_Init
/* 000021 0x80A56114 */ .word	EnFirefly2_Destroy
/* 000022 0x80A56118 */ .word	EnFirefly2_Update
/* 000023 0x80A5611C */ .word	EnFirefly2_Draw
glabel enFirefly2OverlayInfo
/* 000024 0x80A56120 */ .word	0x00000040
/* 000025 0x80A56124 */ .word	0x00000020
/* 000026 0x80A56128 */ .word	0x00000000
/* 000027 0x80A5612C */ .word	0x00000000
/* 000028 0x80A56130 */ .word	0x00000004
glabel enFirefly2OverlayRelocations
/* 000029 0x80A56134 */ .word	0x82000010
/* 000030 0x80A56138 */ .word	0x82000014
/* 000031 0x80A5613C */ .word	0x82000018
/* 000032 0x80A56140 */ .word	0x8200001C
/* 000033 0x80A56144 */ .word	0x00000000
/* 000034 0x80A56148 */ .word	0x00000000
glabel enFirefly2OverlayInfoOffset
/* 000035 0x80A5614C */ .word	0x00000030
