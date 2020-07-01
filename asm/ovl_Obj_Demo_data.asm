.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80983890
/* 000220 0x80983890 */ .word	0x00D80600
/* 000221 0x80983894 */ .word	0x00000010
/* 000222 0x80983898 */ .word	0x00010000
/* 000223 0x8098389C */ .word	0x00000154
/* 000224 0x809838A0 */ .word	ObjDemo_Init
/* 000225 0x809838A4 */ .word	func_800BDFB0
/* 000226 0x809838A8 */ .word	ObjDemo_Update
/* 000227 0x809838AC */ .word	0x00000000
glabel objDemoOverlayInfo
/* 000228 0x809838B0 */ .word	0x00000370
/* 000229 0x809838B4 */ .word	0x00000020
/* 000230 0x809838B8 */ .word	0x00000000
/* 000231 0x809838BC */ .word	0x00000000
/* 000232 0x809838C0 */ .word	0x00000009
glabel objDemoOverlayRelocations
/* 000233 0x809838C4 */ .word	0x440000EC
/* 000234 0x809838C8 */ .word	0x450000F8
/* 000235 0x809838CC */ .word	0x460000FC
/* 000236 0x809838D0 */ .word	0x44000168
/* 000237 0x809838D4 */ .word	0x450001C4
/* 000238 0x809838D8 */ .word	0x460001C8
/* 000239 0x809838DC */ .word	0x440002E8
/* 000240 0x809838E0 */ .word	0x82000010
/* 000241 0x809838E4 */ .word	0x82000018
/* 000242 0x809838E8 */ .word	0x00000000
glabel objDemoOverlayInfoOffset
/* 000243 0x809838EC */ .word	0x00000040
