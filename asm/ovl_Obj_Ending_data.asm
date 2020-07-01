.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80C25CC0
/* 000064 0x80C25CC0 */ .word	0x02B00100
/* 000065 0x80C25CC4 */ .word	0x00000030
/* 000066 0x80C25CC8 */ .word	0x02810000
/* 000067 0x80C25CCC */ .word	0x0000014C
/* 000068 0x80C25CD0 */ .word	ObjEnding_Init
/* 000069 0x80C25CD4 */ .word	func_800BDFB0
/* 000070 0x80C25CD8 */ .word	ObjEnding_Update
/* 000071 0x80C25CDC */ .word	ObjEnding_Draw
glabel D_80C25CE0
/* 000072 0x80C25CE0 */ .word	0x06003440
/* 000073 0x80C25CE4 */ .word	0x060031A0
/* 000074 0x80C25CE8 */ .word	0x00000000
/* 000075 0x80C25CEC */ .word	0x00000000
/* 000076 0x80C25CF0 */ .word	0x060003D0
/* 000077 0x80C25CF4 */ .word	0x06001FF8
glabel D_80C25CF8
/* 000078 0x80C25CF8 */ .word	0x48580064
/* 000079 0x80C25CFC */ .word	0x00000000
glabel objEndingOverlayInfo
/* 000080 0x80C25D00 */ .word	0x00000100
/* 000081 0x80C25D04 */ .word	0x00000040
/* 000082 0x80C25D08 */ .word	0x00000000
/* 000083 0x80C25D0C */ .word	0x00000000
/* 000084 0x80C25D10 */ .word	0x00000007
glabel objEndingOverlayRelocations
/* 000085 0x80C25D14 */ .word	0x45000010
/* 000086 0x80C25D18 */ .word	0x46000014
/* 000087 0x80C25D1C */ .word	0x45000028
/* 000088 0x80C25D20 */ .word	0x4600002C
/* 000089 0x80C25D24 */ .word	0x82000010
/* 000090 0x80C25D28 */ .word	0x82000018
/* 000091 0x80C25D2C */ .word	0x8200001C
/* 000092 0x80C25D30 */ .word	0x00000000
/* 000093 0x80C25D34 */ .word	0x00000000
/* 000094 0x80C25D38 */ .word	0x00000000
glabel objEndingOverlayInfoOffset
/* 000095 0x80C25D3C */ .word	0x00000040
