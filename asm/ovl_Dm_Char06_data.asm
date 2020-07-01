.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80AAE960
/* 000184 0x80AAE960 */ .word	0x01980700
/* 000185 0x80AAE964 */ .word	0x00000030
/* 000186 0x80AAE968 */ .word	0x01E60000
/* 000187 0x80AAE96C */ .word	0x000002A4
/* 000188 0x80AAE970 */ .word	DmChar06_Init
/* 000189 0x80AAE974 */ .word	DmChar06_Destroy
/* 000190 0x80AAE978 */ .word	DmChar06_Update
/* 000191 0x80AAE97C */ .word	DmChar06_Draw
glabel dmChar06OverlayInfo
/* 000192 0x80AAE980 */ .word	0x000002E0
/* 000193 0x80AAE984 */ .word	0x00000020
/* 000194 0x80AAE988 */ .word	0x00000000
/* 000195 0x80AAE98C */ .word	0x00000000
/* 000196 0x80AAE990 */ .word	0x00000007
glabel dmChar06OverlayRelocations
/* 000197 0x80AAE994 */ .word	0x45000040
/* 000198 0x80AAE998 */ .word	0x46000044
/* 000199 0x80AAE99C */ .word	0x44000048
/* 000200 0x80AAE9A0 */ .word	0x82000010
/* 000201 0x80AAE9A4 */ .word	0x82000014
/* 000202 0x80AAE9A8 */ .word	0x82000018
/* 000203 0x80AAE9AC */ .word	0x8200001C
/* 000204 0x80AAE9B0 */ .word	0x00000000
/* 000205 0x80AAE9B4 */ .word	0x00000000
/* 000206 0x80AAE9B8 */ .word	0x00000000
glabel dmChar06OverlayInfoOffset
/* 000207 0x80AAE9BC */ .word	0x00000040
