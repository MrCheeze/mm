.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80B23E80
/* 000076 0x80B23E80 */ .word	0x01EC0700
/* 000077 0x80B23E84 */ .word	0x00000010
/* 000078 0x80B23E88 */ .word	0x00010000
/* 000079 0x80B23E8C */ .word	0x00000144
/* 000080 0x80B23E90 */ .word	ObjDowsing_Init
/* 000081 0x80B23E94 */ .word	ObjDowsing_Destroy
/* 000082 0x80B23E98 */ .word	ObjDowsing_Update
/* 000083 0x80B23E9C */ .word	0x00000000
glabel objDowsingOverlayInfo
/* 000084 0x80B23EA0 */ .word	0x00000130
/* 000085 0x80B23EA4 */ .word	0x00000020
/* 000086 0x80B23EA8 */ .word	0x00000000
/* 000087 0x80B23EAC */ .word	0x00000000
/* 000088 0x80B23EB0 */ .word	0x00000006
glabel objDowsingOverlayRelocations
/* 000089 0x80B23EB4 */ .word	0x4400008C
/* 000090 0x80B23EB8 */ .word	0x440000C8
/* 000091 0x80B23EBC */ .word	0x44000104
/* 000092 0x80B23EC0 */ .word	0x82000010
/* 000093 0x80B23EC4 */ .word	0x82000014
/* 000094 0x80B23EC8 */ .word	0x82000018
glabel objDowsingOverlayInfoOffset
/* 000095 0x80B23ECC */ .word	0x00000030
