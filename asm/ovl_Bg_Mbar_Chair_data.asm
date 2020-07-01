.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel bgMbarChairInitData
/* 000052 0x80B7EA00 */ .word	0x02170100
/* 000053 0x80B7EA04 */ .word	0x00000000
/* 000054 0x80B7EA08 */ .word	0x02020000
/* 000055 0x80B7EA0C */ .word	0x0000015C
/* 000056 0x80B7EA10 */ .word	BgMbarChair_Init
/* 000057 0x80B7EA14 */ .word	BgMbarChair_Destroy
/* 000058 0x80B7EA18 */ .word	BgMbarChair_Update
/* 000059 0x80B7EA1C */ .word	BgMbarChair_Draw
glabel bgMbarChairInitVars
/* 000060 0x80B7EA20 */ .word	0xB0FC07D0
/* 000061 0x80B7EA24 */ .word	0xB100003C
/* 000062 0x80B7EA28 */ .word	0xB1040050
/* 000063 0x80B7EA2C */ .word	0x48580064
glabel bgMbarChairOverlayInfo
/* 000064 0x80B7EA30 */ .word	0x000000D0
/* 000065 0x80B7EA34 */ .word	0x00000030
/* 000066 0x80B7EA38 */ .word	0x00000000
/* 000067 0x80B7EA3C */ .word	0x00000000
/* 000068 0x80B7EA40 */ .word	0x00000006
glabel bgMbarChairOverlayRelocations
/* 000069 0x80B7EA44 */ .word	0x45000010
/* 000070 0x80B7EA48 */ .word	0x46000014
/* 000071 0x80B7EA4C */ .word	0x82000010
/* 000072 0x80B7EA50 */ .word	0x82000014
/* 000073 0x80B7EA54 */ .word	0x82000018
/* 000074 0x80B7EA58 */ .word	0x8200001C
glabel bgMbarChairOverlayInfoOffset
/* 000075 0x80B7EA5C */ .word	0x00000030
