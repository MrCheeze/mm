.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80A198B0
/* 000092 0x80A198B0 */ .word	0x013B0600
/* 000093 0x80A198B4 */ .word	0x00000030
/* 000094 0x80A198B8 */ .word	0x01620000
/* 000095 0x80A198BC */ .word	0x00000144
/* 000096 0x80A198C0 */ .word	ObjFunen_Init
/* 000097 0x80A198C4 */ .word	func_800BDFB0
/* 000098 0x80A198C8 */ .word	func_800BDFB0
/* 000099 0x80A198CC */ .word	ObjFunen_Draw
glabel D_80A198D0
/* 000100 0x80A198D0 */ .word	0x3DCCCCCD
/* 000101 0x80A198D4 */ .word	0x3CC7CE0D
/* 000102 0x80A198D8 */ .word	0x00000000
/* 000103 0x80A198DC */ .word	0x00000000
glabel objFunenOverlayInfo
/* 000104 0x80A198E0 */ .word	0x00000170
/* 000105 0x80A198E4 */ .word	0x00000030
/* 000106 0x80A198E8 */ .word	0x00000000
/* 000107 0x80A198EC */ .word	0x00000000
/* 000108 0x80A198F0 */ .word	0x00000004
glabel objFunenOverlayRelocations
/* 000109 0x80A198F4 */ .word	0x45000010
/* 000110 0x80A198F8 */ .word	0x46000024
/* 000111 0x80A198FC */ .word	0x82000010
/* 000112 0x80A19900 */ .word	0x8200001C
/* 000113 0x80A19904 */ .word	0x00000000
/* 000114 0x80A19908 */ .word	0x00000000
glabel objFunenOverlayInfoOffset
/* 000115 0x80A1990C */ .word	0x00000030
