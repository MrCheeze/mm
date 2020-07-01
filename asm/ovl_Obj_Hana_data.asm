.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_8095FB90
/* 000032 0x8095FB90 */ .word	0x00B10600
/* 000033 0x8095FB94 */ .word	0x00000000
/* 000034 0x8095FB98 */ .word	0x01BA0000
/* 000035 0x8095FB9C */ .word	0x00000144
/* 000036 0x8095FBA0 */ .word	ObjHana_Init
/* 000037 0x8095FBA4 */ .word	ObjHana_Destroy
/* 000038 0x8095FBA8 */ .word	ObjHana_Update
/* 000039 0x8095FBAC */ .word	ObjHana_Draw
glabel D_8095FBB0
/* 000040 0x8095FBB0 */ .word	0xC858000A
/* 000041 0x8095FBB4 */ .word	0xB0FC0384
/* 000042 0x8095FBB8 */ .word	0xB1000028
/* 000043 0x8095FBBC */ .word	0x31040028
glabel objHanaOverlayInfo
/* 000044 0x8095FBC0 */ .word	0x00000080
/* 000045 0x8095FBC4 */ .word	0x00000030
/* 000046 0x8095FBC8 */ .word	0x00000000
/* 000047 0x8095FBCC */ .word	0x00000000
/* 000048 0x8095FBD0 */ .word	0x00000006
glabel objHanaOverlayRelocations
/* 000049 0x8095FBD4 */ .word	0x4500000C
/* 000050 0x8095FBD8 */ .word	0x46000014
/* 000051 0x8095FBDC */ .word	0x82000010
/* 000052 0x8095FBE0 */ .word	0x82000014
/* 000053 0x8095FBE4 */ .word	0x82000018
/* 000054 0x8095FBE8 */ .word	0x8200001C
glabel objHanaOverlayInfoOffset
/* 000055 0x8095FBEC */ .word	0x00000030
