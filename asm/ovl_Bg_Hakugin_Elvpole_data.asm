.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80ABDC50
/* 000264 0x80ABDC50 */ .word	0x01A30100
/* 000265 0x80ABDC54 */ .word	0x00000010
/* 000266 0x80ABDC58 */ .word	0x01900000
/* 000267 0x80ABDC5C */ .word	0x00000168
/* 000268 0x80ABDC60 */ .word	BgHakuginElvpole_Init
/* 000269 0x80ABDC64 */ .word	BgHakuginElvpole_Destroy
/* 000270 0x80ABDC68 */ .word	BgHakuginElvpole_Update
/* 000271 0x80ABDC6C */ .word	BgHakuginElvpole_Draw
glabel bgHakuginElvpoleOverlayInfo
/* 000272 0x80ABDC70 */ .word	0x00000420
/* 000273 0x80ABDC74 */ .word	0x00000020
/* 000274 0x80ABDC78 */ .word	0x00000000
/* 000275 0x80ABDC7C */ .word	0x00000000
/* 000276 0x80ABDC80 */ .word	0x00000006
glabel bgHakuginElvpoleOverlayRelocations
/* 000277 0x80ABDC84 */ .word	0x45000028
/* 000278 0x80ABDC88 */ .word	0x4600002C
/* 000279 0x80ABDC8C */ .word	0x82000010
/* 000280 0x80ABDC90 */ .word	0x82000014
/* 000281 0x80ABDC94 */ .word	0x82000018
/* 000282 0x80ABDC98 */ .word	0x8200001C
glabel bgHakuginElvpoleOverlayInfoOffset
/* 000283 0x80ABDC9C */ .word	0x00000030
