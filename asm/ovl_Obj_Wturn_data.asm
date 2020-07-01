.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_808A7DA0
/* 000284 0x808A7DA0 */ .word	0x00270700
/* 000285 0x808A7DA4 */ .word	0x02100010
/* 000286 0x808A7DA8 */ .word	0x00010000
/* 000287 0x808A7DAC */ .word	0x0000014C
/* 000288 0x808A7DB0 */ .word	ObjWturn_Init
/* 000289 0x808A7DB4 */ .word	func_800BDFB0
/* 000290 0x808A7DB8 */ .word	ObjWturn_Update
/* 000291 0x808A7DBC */ .word	0x00000000
glabel D_808A7DC0
/* 000292 0x808A7DC0 */ .word	0x00000000
/* 000293 0x808A7DC4 */ .word	0xBF800000
/* 000294 0x808A7DC8 */ .word	0x00000000
/* 000295 0x808A7DCC */ .word	0x00000000
glabel objWturnOverlayInfo
/* 000296 0x808A7DD0 */ .word	0x00000470
/* 000297 0x808A7DD4 */ .word	0x00000030
/* 000298 0x808A7DD8 */ .word	0x00000000
/* 000299 0x808A7DDC */ .word	0x00000000
/* 000300 0x808A7DE0 */ .word	0x00000010
glabel objWturnOverlayRelocations
/* 000301 0x808A7DE4 */ .word	0x4400000C
/* 000302 0x808A7DE8 */ .word	0x45000024
/* 000303 0x808A7DEC */ .word	0x46000028
/* 000304 0x808A7DF0 */ .word	0x440000D8
/* 000305 0x808A7DF4 */ .word	0x45000110
/* 000306 0x808A7DF8 */ .word	0x46000114
/* 000307 0x808A7DFC */ .word	0x44000154
/* 000308 0x808A7E00 */ .word	0x45000250
/* 000309 0x808A7E04 */ .word	0x46000254
/* 000310 0x808A7E08 */ .word	0x4400029C
/* 000311 0x808A7E0C */ .word	0x45000328
/* 000312 0x808A7E10 */ .word	0x4600032C
/* 000313 0x808A7E14 */ .word	0x45000390
/* 000314 0x808A7E18 */ .word	0x46000394
/* 000315 0x808A7E1C */ .word	0x82000010
/* 000316 0x808A7E20 */ .word	0x82000018
/* 000317 0x808A7E24 */ .word	0x00000000
/* 000318 0x808A7E28 */ .word	0x00000000
glabel objWturnOverlayInfoOffset
/* 000319 0x808A7E2C */ .word	0x00000060
