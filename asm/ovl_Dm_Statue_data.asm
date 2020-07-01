.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80A4CA40
/* 000036 0x80A4CA40 */ .word	0x01610700
/* 000037 0x80A4CA44 */ .word	0x04000030
/* 000038 0x80A4CA48 */ .word	0x026C0000
/* 000039 0x80A4CA4C */ .word	0x00000194
/* 000040 0x80A4CA50 */ .word	DmStatue_Init
/* 000041 0x80A4CA54 */ .word	DmStatue_Destroy
/* 000042 0x80A4CA58 */ .word	DmStatue_Update
/* 000043 0x80A4CA5C */ .word	DmStatue_Draw
glabel dmStatueOverlayInfo
/* 000044 0x80A4CA60 */ .word	0x00000090
/* 000045 0x80A4CA64 */ .word	0x00000020
/* 000046 0x80A4CA68 */ .word	0x00000000
/* 000047 0x80A4CA6C */ .word	0x00000000
/* 000048 0x80A4CA70 */ .word	0x00000004
glabel dmStatueOverlayRelocations
/* 000049 0x80A4CA74 */ .word	0x82000010
/* 000050 0x80A4CA78 */ .word	0x82000014
/* 000051 0x80A4CA7C */ .word	0x82000018
/* 000052 0x80A4CA80 */ .word	0x8200001C
/* 000053 0x80A4CA84 */ .word	0x00000000
/* 000054 0x80A4CA88 */ .word	0x00000000
glabel dmStatueOverlayInfoOffset
/* 000055 0x80A4CA8C */ .word	0x00000030
