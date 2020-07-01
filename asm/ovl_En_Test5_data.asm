.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80A906E0
/* 000204 0x80A906E0 */ .word	0x018B0700
/* 000205 0x80A906E4 */ .word	0x00000010
/* 000206 0x80A906E8 */ .word	0x00010000
/* 000207 0x80A906EC */ .word	0x0000015C
/* 000208 0x80A906F0 */ .word	EnTest5_Init
/* 000209 0x80A906F4 */ .word	EnTest5_Destroy
/* 000210 0x80A906F8 */ .word	EnTest5_Update
/* 000211 0x80A906FC */ .word	0x00000000
glabel enTest5OverlayInfo
/* 000212 0x80A90700 */ .word	0x00000330
/* 000213 0x80A90704 */ .word	0x00000020
/* 000214 0x80A90708 */ .word	0x00000000
/* 000215 0x80A9070C */ .word	0x00000000
/* 000216 0x80A90710 */ .word	0x00000006
glabel enTest5OverlayRelocations
/* 000217 0x80A90714 */ .word	0x45000068
/* 000218 0x80A90718 */ .word	0x4600006C
/* 000219 0x80A9071C */ .word	0x4400009C
/* 000220 0x80A90720 */ .word	0x82000010
/* 000221 0x80A90724 */ .word	0x82000014
/* 000222 0x80A90728 */ .word	0x82000018
glabel enTest5OverlayInfoOffset
/* 000223 0x80A9072C */ .word	0x00000030
