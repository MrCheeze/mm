.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80B91EA0
/* 000120 0x80B91EA0 */ .word	0x02210100
/* 000121 0x80B91EA4 */ .word	0x00000000
/* 000122 0x80B91EA8 */ .word	0x02050000
/* 000123 0x80B91EAC */ .word	0x0000015C
/* 000124 0x80B91EB0 */ .word	ObjTokeiTurret_Init
/* 000125 0x80B91EB4 */ .word	ObjTokeiTurret_Destroy
/* 000126 0x80B91EB8 */ .word	ObjTokeiTurret_Update
/* 000127 0x80B91EBC */ .word	ObjTokeiTurret_Draw
glabel D_80B91EC0
/* 000128 0x80B91EC0 */ .word	0xB0FC04B0
/* 000129 0x80B91EC4 */ .word	0x48580064
/* 000130 0x80B91EC8 */ .word	0x00000000
/* 000131 0x80B91ECC */ .word	0x00000000
glabel D_80B91ED0
/* 000132 0x80B91ED0 */ .word	0x44A28000
/* 000133 0x80B91ED4 */ .word	0x00000000
/* 000134 0x80B91ED8 */ .word	0x00000000
/* 000135 0x80B91EDC */ .word	0x00000000
glabel objTokeiTurretOverlayInfo
/* 000136 0x80B91EE0 */ .word	0x000001E0
/* 000137 0x80B91EE4 */ .word	0x00000030
/* 000138 0x80B91EE8 */ .word	0x00000010
/* 000139 0x80B91EEC */ .word	0x00000000
/* 000140 0x80B91EF0 */ .word	0x00000008
glabel objTokeiTurretOverlayRelocations
/* 000141 0x80B91EF4 */ .word	0x45000014
/* 000142 0x80B91EF8 */ .word	0x46000018
/* 000143 0x80B91EFC */ .word	0x450000A0
/* 000144 0x80B91F00 */ .word	0x460000A4
/* 000145 0x80B91F04 */ .word	0x82000010
/* 000146 0x80B91F08 */ .word	0x82000014
/* 000147 0x80B91F0C */ .word	0x82000018
/* 000148 0x80B91F10 */ .word	0x8200001C
/* 000149 0x80B91F14 */ .word	0x00000000
/* 000150 0x80B91F18 */ .word	0x00000000
glabel objTokeiTurretOverlayInfoOffset
/* 000151 0x80B91F1C */ .word	0x00000040
