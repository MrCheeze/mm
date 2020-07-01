.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80C23630
/* 000116 0x80C23630 */ .word	0x02A90400
/* 000117 0x80C23634 */ .word	0x00000009
/* 000118 0x80C23638 */ .word	0x00F00000
/* 000119 0x80C2363C */ .word	0x0000025C
/* 000120 0x80C23640 */ .word	EnEndingHero3_Init
/* 000121 0x80C23644 */ .word	EnEndingHero3_Destroy
/* 000122 0x80C23648 */ .word	EnEndingHero3_Update
/* 000123 0x80C2364C */ .word	EnEndingHero3_Draw
glabel enEndingHero3OverlayInfo
/* 000124 0x80C23650 */ .word	0x000001D0
/* 000125 0x80C23654 */ .word	0x00000020
/* 000126 0x80C23658 */ .word	0x00000000
/* 000127 0x80C2365C */ .word	0x00000000
/* 000128 0x80C23660 */ .word	0x00000007
glabel enEndingHero3OverlayRelocations
/* 000129 0x80C23664 */ .word	0x4400008C
/* 000130 0x80C23668 */ .word	0x450000B8
/* 000131 0x80C2366C */ .word	0x460000C0
/* 000132 0x80C23670 */ .word	0x82000010
/* 000133 0x80C23674 */ .word	0x82000014
/* 000134 0x80C23678 */ .word	0x82000018
/* 000135 0x80C2367C */ .word	0x8200001C
/* 000136 0x80C23680 */ .word	0x00000000
/* 000137 0x80C23684 */ .word	0x00000000
/* 000138 0x80C23688 */ .word	0x00000000
glabel enEndingHero3OverlayInfoOffset
/* 000139 0x80C2368C */ .word	0x00000040
