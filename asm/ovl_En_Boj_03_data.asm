.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_809C3EE0
/* 000016 0x809C3EE0 */ .word	0x011A0400
/* 000017 0x809C3EE4 */ .word	0x00000019
/* 000018 0x809C3EE8 */ .word	0x00010000
/* 000019 0x809C3EEC */ .word	0x0000061C
/* 000020 0x809C3EF0 */ .word	EnBoj03_Init
/* 000021 0x809C3EF4 */ .word	EnBoj03_Destroy
/* 000022 0x809C3EF8 */ .word	EnBoj03_Update
/* 000023 0x809C3EFC */ .word	EnBoj03_Draw
glabel enBoj03OverlayInfo
/* 000024 0x809C3F00 */ .word	0x00000040
/* 000025 0x809C3F04 */ .word	0x00000020
/* 000026 0x809C3F08 */ .word	0x00000000
/* 000027 0x809C3F0C */ .word	0x00000000
/* 000028 0x809C3F10 */ .word	0x00000004
glabel enBoj03OverlayRelocations
/* 000029 0x809C3F14 */ .word	0x82000010
/* 000030 0x809C3F18 */ .word	0x82000014
/* 000031 0x809C3F1C */ .word	0x82000018
/* 000032 0x809C3F20 */ .word	0x8200001C
/* 000033 0x809C3F24 */ .word	0x00000000
/* 000034 0x809C3F28 */ .word	0x00000000
glabel enBoj03OverlayInfoOffset
/* 000035 0x809C3F2C */ .word	0x00000030
