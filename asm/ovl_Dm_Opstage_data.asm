.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80A9FD10
/* 000240 0x80A9FD10 */ .word	0x01900700
/* 000241 0x80A9FD14 */ .word	0x00000030
/* 000242 0x80A9FD18 */ .word	0x01690000
/* 000243 0x80A9FD1C */ .word	0x000001B0
/* 000244 0x80A9FD20 */ .word	DmOpstage_Init
/* 000245 0x80A9FD24 */ .word	DmOpstage_Destroy
/* 000246 0x80A9FD28 */ .word	DmOpstage_Update
/* 000247 0x80A9FD2C */ .word	DmOpstage_Draw
glabel D_80A9FD30
/* 000248 0x80A9FD30 */ .word	0x3100012C
/* 000249 0x80A9FD34 */ .word	0x00000000
/* 000250 0x80A9FD38 */ .word	0x00000000
/* 000251 0x80A9FD3C */ .word	0x00000000
glabel D_80A9FD40
/* 000252 0x80A9FD40 */ .word	0x3D99999A
glabel D_80A9FD44
/* 000253 0x80A9FD44 */ .word	0x3E99999A
glabel D_80A9FD48
/* 000254 0x80A9FD48 */ .word	0x3DCCCCCD
glabel D_80A9FD4C
/* 000255 0x80A9FD4C */ .word	0x3DCCCCCD
glabel dmOpstageOverlayInfo
/* 000256 0x80A9FD50 */ .word	0x000003C0
/* 000257 0x80A9FD54 */ .word	0x00000030
/* 000258 0x80A9FD58 */ .word	0x00000010
/* 000259 0x80A9FD5C */ .word	0x00000000
/* 000260 0x80A9FD60 */ .word	0x00000011
glabel dmOpstageOverlayRelocations
/* 000261 0x80A9FD64 */ .word	0x45000020
/* 000262 0x80A9FD68 */ .word	0x46000024
/* 000263 0x80A9FD6C */ .word	0x45000030
/* 000264 0x80A9FD70 */ .word	0x46000034
/* 000265 0x80A9FD74 */ .word	0x44000038
/* 000266 0x80A9FD78 */ .word	0x45000170
/* 000267 0x80A9FD7C */ .word	0x46000174
/* 000268 0x80A9FD80 */ .word	0x45000178
/* 000269 0x80A9FD84 */ .word	0x46000180
/* 000270 0x80A9FD88 */ .word	0x4500018C
/* 000271 0x80A9FD8C */ .word	0x46000190
/* 000272 0x80A9FD90 */ .word	0x450002D0
/* 000273 0x80A9FD94 */ .word	0x460002D4
/* 000274 0x80A9FD98 */ .word	0x82000010
/* 000275 0x80A9FD9C */ .word	0x82000014
/* 000276 0x80A9FDA0 */ .word	0x82000018
/* 000277 0x80A9FDA4 */ .word	0x8200001C
/* 000278 0x80A9FDA8 */ .word	0x00000000
glabel dmOpstageOverlayInfoOffset
/* 000279 0x80A9FDAC */ .word	0x00000060
