.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80C07C20
/* 000064 0x80C07C20 */ .word	0x02870600
/* 000065 0x80C07C24 */ .word	0x00000000
/* 000066 0x80C07C28 */ .word	0x02560000
/* 000067 0x80C07C2C */ .word	0x00000160
/* 000068 0x80C07C30 */ .word	ObjKepnKoya_Init
/* 000069 0x80C07C34 */ .word	ObjKepnKoya_Destroy
/* 000070 0x80C07C38 */ .word	ObjKepnKoya_Update
/* 000071 0x80C07C3C */ .word	ObjKepnKoya_Draw
glabel D_80C07C40
/* 000072 0x80C07C40 */ .word	0xB10004B0
/* 000073 0x80C07C44 */ .word	0x31040384
/* 000074 0x80C07C48 */ .word	0x00000000
/* 000075 0x80C07C4C */ .word	0x00000000
glabel objKepnKoyaOverlayInfo
/* 000076 0x80C07C50 */ .word	0x00000100
/* 000077 0x80C07C54 */ .word	0x00000030
/* 000078 0x80C07C58 */ .word	0x00000000
/* 000079 0x80C07C5C */ .word	0x00000000
/* 000080 0x80C07C60 */ .word	0x00000006
glabel objKepnKoyaOverlayRelocations
/* 000081 0x80C07C64 */ .word	0x45000014
/* 000082 0x80C07C68 */ .word	0x46000018
/* 000083 0x80C07C6C */ .word	0x82000010
/* 000084 0x80C07C70 */ .word	0x82000014
/* 000085 0x80C07C74 */ .word	0x82000018
/* 000086 0x80C07C78 */ .word	0x8200001C
glabel objKepnKoyaOverlayInfoOffset
/* 000087 0x80C07C7C */ .word	0x00000030
