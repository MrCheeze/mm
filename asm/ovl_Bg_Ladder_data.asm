.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80A4DE20
/* 000268 0x80A4DE20 */ .word	0x01630600
/* 000269 0x80A4DE24 */ .word	0x00000010
/* 000270 0x80A4DE28 */ .word	0x01790000
/* 000271 0x80A4DE2C */ .word	0x00000164
/* 000272 0x80A4DE30 */ .word	BgLadder_Init
/* 000273 0x80A4DE34 */ .word	BgLadder_Destroy
/* 000274 0x80A4DE38 */ .word	BgLadder_Update
/* 000275 0x80A4DE3C */ .word	BgLadder_Draw
glabel D_80A4DE40
/* 000276 0x80A4DE40 */ .word	0x48580064
glabel D_80A4DE44
/* 000277 0x80A4DE44 */ .word	0x060000A0
/* 000278 0x80A4DE48 */ .word	0x060002D0
/* 000279 0x80A4DE4C */ .word	0x06000500
/* 000280 0x80A4DE50 */ .word	0x06000730
/* 000281 0x80A4DE54 */ .word	0x00000000
/* 000282 0x80A4DE58 */ .word	0x00000000
/* 000283 0x80A4DE5C */ .word	0x00000000
glabel bgLadderOverlayInfo
/* 000284 0x80A4DE60 */ .word	0x00000430
/* 000285 0x80A4DE64 */ .word	0x00000040
/* 000286 0x80A4DE68 */ .word	0x00000000
/* 000287 0x80A4DE6C */ .word	0x00000000
/* 000288 0x80A4DE70 */ .word	0x00000014
glabel bgLadderOverlayRelocations
/* 000289 0x80A4DE74 */ .word	0x45000018
/* 000290 0x80A4DE78 */ .word	0x4600001C
/* 000291 0x80A4DE7C */ .word	0x4500010C
/* 000292 0x80A4DE80 */ .word	0x46000114
/* 000293 0x80A4DE84 */ .word	0x45000140
/* 000294 0x80A4DE88 */ .word	0x46000144
/* 000295 0x80A4DE8C */ .word	0x450001CC
/* 000296 0x80A4DE90 */ .word	0x460001D0
/* 000297 0x80A4DE94 */ .word	0x45000214
/* 000298 0x80A4DE98 */ .word	0x46000218
/* 000299 0x80A4DE9C */ .word	0x4500022C
/* 000300 0x80A4DEA0 */ .word	0x46000230
/* 000301 0x80A4DEA4 */ .word	0x450002B4
/* 000302 0x80A4DEA8 */ .word	0x460002BC
/* 000303 0x80A4DEAC */ .word	0x450003E0
/* 000304 0x80A4DEB0 */ .word	0x460003F8
/* 000305 0x80A4DEB4 */ .word	0x82000010
/* 000306 0x80A4DEB8 */ .word	0x82000014
/* 000307 0x80A4DEBC */ .word	0x82000018
/* 000308 0x80A4DEC0 */ .word	0x8200001C
/* 000309 0x80A4DEC4 */ .word	0x00000000
/* 000310 0x80A4DEC8 */ .word	0x00000000
glabel bgLadderOverlayInfoOffset
/* 000311 0x80A4DECC */ .word	0x00000070
