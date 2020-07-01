.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_8099FE10
/* 000244 0x8099FE10 */ .word	0x00F90700
/* 000245 0x8099FE14 */ .word	0x00000010
/* 000246 0x8099FE18 */ .word	0x00010000
/* 000247 0x8099FE1C */ .word	0x00000148
/* 000248 0x8099FE20 */ .word	ObjMakekinsuta_Init
/* 000249 0x8099FE24 */ .word	ObjMakekinsuta_Destroy
/* 000250 0x8099FE28 */ .word	ObjMakekinsuta_Update
/* 000251 0x8099FE2C */ .word	0x00000000
glabel D_8099FE30
/* 000252 0x8099FE30 */ .word	0xB0FC0001
/* 000253 0x8099FE34 */ .word	0xB1000001
/* 000254 0x8099FE38 */ .word	0x31040001
glabel D_8099FE3C
/* 000255 0x8099FE3C */ .word	0x00000000
/* 000256 0x8099FE40 */ .word	0x3F800000
/* 000257 0x8099FE44 */ .word	0x00000000
/* 000258 0x8099FE48 */ .word	0x00000000
/* 000259 0x8099FE4C */ .word	0x00000000
glabel D_8099FE50
/* 000260 0x8099FE50 */ .word	0x3DCCCCCD
/* 000261 0x8099FE54 */ .word	0x00000000
/* 000262 0x8099FE58 */ .word	0x00000000
/* 000263 0x8099FE5C */ .word	0x00000000
glabel objMakekinsutaOverlayInfo
/* 000264 0x8099FE60 */ .word	0x000003D0
/* 000265 0x8099FE64 */ .word	0x00000040
/* 000266 0x8099FE68 */ .word	0x00000010
/* 000267 0x8099FE6C */ .word	0x00000000
/* 000268 0x8099FE70 */ .word	0x0000000E
glabel objMakekinsutaOverlayRelocations
/* 000269 0x8099FE74 */ .word	0x45000084
/* 000270 0x8099FE78 */ .word	0x46000088
/* 000271 0x8099FE7C */ .word	0x44000098
/* 000272 0x8099FE80 */ .word	0x440000F4
/* 000273 0x8099FE84 */ .word	0x45000188
/* 000274 0x8099FE88 */ .word	0x4600018C
/* 000275 0x8099FE8C */ .word	0x450002A8
/* 000276 0x8099FE90 */ .word	0x460002AC
/* 000277 0x8099FE94 */ .word	0x450002EC
/* 000278 0x8099FE98 */ .word	0x460002F0
/* 000279 0x8099FE9C */ .word	0x44000388
/* 000280 0x8099FEA0 */ .word	0x82000010
/* 000281 0x8099FEA4 */ .word	0x82000014
/* 000282 0x8099FEA8 */ .word	0x82000018
glabel objMakekinsutaOverlayInfoOffset
/* 000283 0x8099FEAC */ .word	0x00000050
