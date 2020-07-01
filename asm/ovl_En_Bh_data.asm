.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80C231C0
/* 000288 0x80C231C0 */ .word	0x02A70700
/* 000289 0x80C231C4 */ .word	0x00000000
/* 000290 0x80C231C8 */ .word	0x027A0000
/* 000291 0x80C231CC */ .word	0x000001EC
/* 000292 0x80C231D0 */ .word	EnBh_Init
/* 000293 0x80C231D4 */ .word	EnBh_Destroy
/* 000294 0x80C231D8 */ .word	EnBh_Update
/* 000295 0x80C231DC */ .word	EnBh_Draw
glabel D_80C231E0
/* 000296 0x80C231E0 */ .word	0x453B8000
/* 000297 0x80C231E4 */ .word	0x00000000
/* 000298 0x80C231E8 */ .word	0x00000000
/* 000299 0x80C231EC */ .word	0x00000000
glabel enBhOverlayInfo
/* 000300 0x80C231F0 */ .word	0x00000480
/* 000301 0x80C231F4 */ .word	0x00000020
/* 000302 0x80C231F8 */ .word	0x00000010
/* 000303 0x80C231FC */ .word	0x00000000
/* 000304 0x80C23200 */ .word	0x00000008
glabel enBhOverlayRelocations
/* 000305 0x80C23204 */ .word	0x4500007C
/* 000306 0x80C23208 */ .word	0x46000080
/* 000307 0x80C2320C */ .word	0x450002D4
/* 000308 0x80C23210 */ .word	0x460002EC
/* 000309 0x80C23214 */ .word	0x82000010
/* 000310 0x80C23218 */ .word	0x82000014
/* 000311 0x80C2321C */ .word	0x82000018
/* 000312 0x80C23220 */ .word	0x8200001C
/* 000313 0x80C23224 */ .word	0x00000000
/* 000314 0x80C23228 */ .word	0x00000000
glabel enBhOverlayInfoOffset
/* 000315 0x80C2322C */ .word	0x00000040
