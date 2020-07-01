.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80C181E0
/* 000048 0x80C181E0 */ .word	0x02970100
/* 000049 0x80C181E4 */ .word	0x00000000
/* 000050 0x80C181E8 */ .word	0x027F0000
/* 000051 0x80C181EC */ .word	0x00000160
/* 000052 0x80C181F0 */ .word	BgLbfshot_Init
/* 000053 0x80C181F4 */ .word	BgLbfshot_Destroy
/* 000054 0x80C181F8 */ .word	func_800BDFB0
/* 000055 0x80C181FC */ .word	BgLbfshot_Draw
glabel D_80C18200
/* 000056 0x80C18200 */ .word	0x48580064
/* 000057 0x80C18204 */ .word	0x00000000
/* 000058 0x80C18208 */ .word	0x00000000
/* 000059 0x80C1820C */ .word	0x00000000
glabel bgLbfshotOverlayInfo
/* 000060 0x80C18210 */ .word	0x000000C0
/* 000061 0x80C18214 */ .word	0x00000030
/* 000062 0x80C18218 */ .word	0x00000000
/* 000063 0x80C1821C */ .word	0x00000000
/* 000064 0x80C18220 */ .word	0x00000005
glabel bgLbfshotOverlayRelocations
/* 000065 0x80C18224 */ .word	0x45000010
/* 000066 0x80C18228 */ .word	0x46000014
/* 000067 0x80C1822C */ .word	0x82000010
/* 000068 0x80C18230 */ .word	0x82000014
/* 000069 0x80C18234 */ .word	0x8200001C
/* 000070 0x80C18238 */ .word	0x00000000
glabel bgLbfshotOverlayInfoOffset
/* 000071 0x80C1823C */ .word	0x00000030
