.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80C23860
/* 000116 0x80C23860 */ .word	0x02AA0400
/* 000117 0x80C23864 */ .word	0x00000009
/* 000118 0x80C23868 */ .word	0x01B60000
/* 000119 0x80C2386C */ .word	0x0000025C
/* 000120 0x80C23870 */ .word	EnEndingHero4_Init
/* 000121 0x80C23874 */ .word	EnEndingHero4_Destroy
/* 000122 0x80C23878 */ .word	EnEndingHero4_Update
/* 000123 0x80C2387C */ .word	EnEndingHero4_Draw
glabel enEndingHero4OverlayInfo
/* 000124 0x80C23880 */ .word	0x000001D0
/* 000125 0x80C23884 */ .word	0x00000020
/* 000126 0x80C23888 */ .word	0x00000000
/* 000127 0x80C2388C */ .word	0x00000000
/* 000128 0x80C23890 */ .word	0x00000007
glabel enEndingHero4OverlayRelocations
/* 000129 0x80C23894 */ .word	0x4400008C
/* 000130 0x80C23898 */ .word	0x450000B8
/* 000131 0x80C2389C */ .word	0x460000C0
/* 000132 0x80C238A0 */ .word	0x82000010
/* 000133 0x80C238A4 */ .word	0x82000014
/* 000134 0x80C238A8 */ .word	0x82000018
/* 000135 0x80C238AC */ .word	0x8200001C
/* 000136 0x80C238B0 */ .word	0x00000000
/* 000137 0x80C238B4 */ .word	0x00000000
/* 000138 0x80C238B8 */ .word	0x00000000
glabel enEndingHero4OverlayInfoOffset
/* 000139 0x80C238BC */ .word	0x00000040
