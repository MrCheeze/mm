.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80ACB390
/* 000108 0x80ACB390 */ .word	0x01AD0600
/* 000109 0x80ACB394 */ .word	0x00000010
/* 000110 0x80ACB398 */ .word	0x019F0000
/* 000111 0x80ACB39C */ .word	0x00000148
/* 000112 0x80ACB3A0 */ .word	BgOpenSpot_Init
/* 000113 0x80ACB3A4 */ .word	BgOpenSpot_Destroy
/* 000114 0x80ACB3A8 */ .word	BgOpenSpot_Update
/* 000115 0x80ACB3AC */ .word	0x00000000
glabel D_80ACB3B0
/* 000116 0x80ACB3B0 */ .word	0xB0FC0FA0
/* 000117 0x80ACB3B4 */ .word	0xB1000230
/* 000118 0x80ACB3B8 */ .word	0xB1040320
/* 000119 0x80ACB3BC */ .word	0x48580064
glabel bgOpenSpotOverlayInfo
/* 000120 0x80ACB3C0 */ .word	0x000001B0
/* 000121 0x80ACB3C4 */ .word	0x00000030
/* 000122 0x80ACB3C8 */ .word	0x00000000
/* 000123 0x80ACB3CC */ .word	0x00000000
/* 000124 0x80ACB3D0 */ .word	0x00000007
glabel bgOpenSpotOverlayRelocations
/* 000125 0x80ACB3D4 */ .word	0x45000010
/* 000126 0x80ACB3D8 */ .word	0x46000014
/* 000127 0x80ACB3DC */ .word	0x450000B4
/* 000128 0x80ACB3E0 */ .word	0x460000B8
/* 000129 0x80ACB3E4 */ .word	0x82000010
/* 000130 0x80ACB3E8 */ .word	0x82000014
/* 000131 0x80ACB3EC */ .word	0x82000018
/* 000132 0x80ACB3F0 */ .word	0x00000000
/* 000133 0x80ACB3F4 */ .word	0x00000000
/* 000134 0x80ACB3F8 */ .word	0x00000000
glabel bgOpenSpotOverlayInfoOffset
/* 000135 0x80ACB3FC */ .word	0x00000040
