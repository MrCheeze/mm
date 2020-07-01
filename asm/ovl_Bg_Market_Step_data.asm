.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80AF00F0
/* 000036 0x80AF00F0 */ .word	0x01CC0100
/* 000037 0x80AF00F4 */ .word	0x10000020
/* 000038 0x80AF00F8 */ .word	0x01B00000
/* 000039 0x80AF00FC */ .word	0x00000144
/* 000040 0x80AF0100 */ .word	BgMarketStep_Init
/* 000041 0x80AF0104 */ .word	func_800BDFB0
/* 000042 0x80AF0108 */ .word	func_800BDFB0
/* 000043 0x80AF010C */ .word	BgMarketStep_Draw
glabel D_80AF0110
/* 000044 0x80AF0110 */ .word	0xB0FC0001
/* 000045 0x80AF0114 */ .word	0xB1000001
/* 000046 0x80AF0118 */ .word	0xB1040001
/* 000047 0x80AF011C */ .word	0x485803E8
glabel D_80AF0120
/* 000048 0x80AF0120 */ .word	0x0601F050
/* 000049 0x80AF0124 */ .word	0x06018DA0
glabel D_80AF0128
/* 000050 0x80AF0128 */ .word	0x0601EF10
/* 000051 0x80AF012C */ .word	0x06018C60
glabel bgMarketStepOverlayInfo
/* 000052 0x80AF0130 */ .word	0x00000090
/* 000053 0x80AF0134 */ .word	0x00000040
/* 000054 0x80AF0138 */ .word	0x00000000
/* 000055 0x80AF013C */ .word	0x00000000
/* 000056 0x80AF0140 */ .word	0x00000008
glabel bgMarketStepOverlayRelocations
/* 000057 0x80AF0144 */ .word	0x4500000C
/* 000058 0x80AF0148 */ .word	0x46000014
/* 000059 0x80AF014C */ .word	0x4500003C
/* 000060 0x80AF0150 */ .word	0x46000050
/* 000061 0x80AF0154 */ .word	0x45000060
/* 000062 0x80AF0158 */ .word	0x46000070
/* 000063 0x80AF015C */ .word	0x82000010
/* 000064 0x80AF0160 */ .word	0x8200001C
/* 000065 0x80AF0164 */ .word	0x00000000
/* 000066 0x80AF0168 */ .word	0x00000000
glabel bgMarketStepOverlayInfoOffset
/* 000067 0x80AF016C */ .word	0x00000040
