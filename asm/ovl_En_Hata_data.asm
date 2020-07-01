.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_8089ED10
/* 000268 0x8089ED10 */ .word	0x001A0600
/* 000269 0x8089ED14 */ .word	0x00000000
/* 000270 0x8089ED18 */ .word	0x005F0000
/* 000271 0x8089ED1C */ .word	0x000002B0
/* 000272 0x8089ED20 */ .word	EnHata_Init
/* 000273 0x8089ED24 */ .word	EnHata_Destroy
/* 000274 0x8089ED28 */ .word	EnHata_Update
/* 000275 0x8089ED2C */ .word	EnHata_Draw
glabel D_8089ED30
/* 000276 0x8089ED30 */ .word	0x45098000
glabel D_8089ED34
/* 000277 0x8089ED34 */ .word	0x3DCCCCCD
glabel D_8089ED38
/* 000278 0x8089ED38 */ .word	0x3ECCCCCD
/* 000279 0x8089ED3C */ .word	0x00000000
glabel enHataOverlayInfo
/* 000280 0x8089ED40 */ .word	0x00000430
/* 000281 0x8089ED44 */ .word	0x00000020
/* 000282 0x8089ED48 */ .word	0x00000010
/* 000283 0x8089ED4C */ .word	0x00000000
/* 000284 0x8089ED50 */ .word	0x0000000C
glabel enHataOverlayRelocations
/* 000285 0x8089ED54 */ .word	0x450000D8
/* 000286 0x8089ED58 */ .word	0x460000E4
/* 000287 0x8089ED5C */ .word	0x4500027C
/* 000288 0x8089ED60 */ .word	0x46000280
/* 000289 0x8089ED64 */ .word	0x45000288
/* 000290 0x8089ED68 */ .word	0x460002A8
/* 000291 0x8089ED6C */ .word	0x450003FC
/* 000292 0x8089ED70 */ .word	0x46000400
/* 000293 0x8089ED74 */ .word	0x82000010
/* 000294 0x8089ED78 */ .word	0x82000014
/* 000295 0x8089ED7C */ .word	0x82000018
/* 000296 0x8089ED80 */ .word	0x8200001C
/* 000297 0x8089ED84 */ .word	0x00000000
/* 000298 0x8089ED88 */ .word	0x00000000
glabel enHataOverlayInfoOffset
/* 000299 0x8089ED8C */ .word	0x00000050
