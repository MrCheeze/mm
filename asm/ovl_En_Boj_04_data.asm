.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_809CB240
/* 000016 0x809CB240 */ .word	0x01210400
/* 000017 0x809CB244 */ .word	0x00000019
/* 000018 0x809CB248 */ .word	0x00010000
/* 000019 0x809CB24C */ .word	0x0000061C
/* 000020 0x809CB250 */ .word	EnBoj04_Init
/* 000021 0x809CB254 */ .word	EnBoj04_Destroy
/* 000022 0x809CB258 */ .word	EnBoj04_Update
/* 000023 0x809CB25C */ .word	EnBoj04_Draw
glabel enBoj04OverlayInfo
/* 000024 0x809CB260 */ .word	0x00000040
/* 000025 0x809CB264 */ .word	0x00000020
/* 000026 0x809CB268 */ .word	0x00000000
/* 000027 0x809CB26C */ .word	0x00000000
/* 000028 0x809CB270 */ .word	0x00000004
glabel enBoj04OverlayRelocations
/* 000029 0x809CB274 */ .word	0x82000010
/* 000030 0x809CB278 */ .word	0x82000014
/* 000031 0x809CB27C */ .word	0x82000018
/* 000032 0x809CB280 */ .word	0x8200001C
/* 000033 0x809CB284 */ .word	0x00000000
/* 000034 0x809CB288 */ .word	0x00000000
glabel enBoj04OverlayInfoOffset
/* 000035 0x809CB28C */ .word	0x00000030
