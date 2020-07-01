.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80AFDBB0
/* 000136 0x80AFDBB0 */ .word	0x01D80100
/* 000137 0x80AFDBB4 */ .word	0x00000010
/* 000138 0x80AFDBB8 */ .word	0x00010000
/* 000139 0x80AFDBBC */ .word	0x00000148
/* 000140 0x80AFDBC0 */ .word	ElfMsg5_Init
/* 000141 0x80AFDBC4 */ .word	ElfMsg5_Destroy
/* 000142 0x80AFDBC8 */ .word	ElfMsg5_Update
/* 000143 0x80AFDBCC */ .word	0x00000000
glabel D_80AFDBD0
/* 000144 0x80AFDBD0 */ .word	0xC85800C8
/* 000145 0x80AFDBD4 */ .word	0x30FC03E8
/* 000146 0x80AFDBD8 */ .word	0x00000000
/* 000147 0x80AFDBDC */ .word	0x00000000
/* 000148 0x80AFDBE0 */ .word	0xB6A6C5DD
/* 000149 0x80AFDBE4 */ .word	0xA4EC0000
/* 000150 0x80AFDBE8 */ .word	0xB6A6C5DD
/* 000151 0x80AFDBEC */ .word	0xA4ECA3B2
/* 000152 0x80AFDBF0 */ .word	0x00000000
/* 000153 0x80AFDBF4 */ .word	0xB6A6C5DD
/* 000154 0x80AFDBF8 */ .word	0xA4EC0000
/* 000155 0x80AFDBFC */ .word	0x00000000
glabel elfMsg5OverlayInfo
/* 000156 0x80AFDC00 */ .word	0x00000220
/* 000157 0x80AFDC04 */ .word	0x00000030
/* 000158 0x80AFDC08 */ .word	0x00000020
/* 000159 0x80AFDC0C */ .word	0x00000000
/* 000160 0x80AFDC10 */ .word	0x00000008
glabel elfMsg5OverlayRelocations
/* 000161 0x80AFDC14 */ .word	0x44000140
/* 000162 0x80AFDC18 */ .word	0x45000150
/* 000163 0x80AFDC1C */ .word	0x46000154
/* 000164 0x80AFDC20 */ .word	0x45000164
/* 000165 0x80AFDC24 */ .word	0x46000168
/* 000166 0x80AFDC28 */ .word	0x82000010
/* 000167 0x80AFDC2C */ .word	0x82000014
/* 000168 0x80AFDC30 */ .word	0x82000018
/* 000169 0x80AFDC34 */ .word	0x00000000
/* 000170 0x80AFDC38 */ .word	0x00000000
glabel elfMsg5OverlayInfoOffset
/* 000171 0x80AFDC3C */ .word	0x00000040
