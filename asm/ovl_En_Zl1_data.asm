.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel enZl1ActorInitData
/* 000016 0x8089EDD0 */ .word	0x001B0400
/* 000017 0x8089EDD4 */ .word	0x00000019
/* 000018 0x8089EDD8 */ .word	0x00190000
/* 000019 0x8089EDDC */ .word	0x00000204
/* 000020 0x8089EDE0 */ .word	EnZl1_Init
/* 000021 0x8089EDE4 */ .word	EnZl1_Destroy
/* 000022 0x8089EDE8 */ .word	EnZl1_Update
/* 000023 0x8089EDEC */ .word	EnZl1_Draw
glabel enZl1OverlayInfo
/* 000024 0x8089EDF0 */ .word	0x00000040
/* 000025 0x8089EDF4 */ .word	0x00000020
/* 000026 0x8089EDF8 */ .word	0x00000000
/* 000027 0x8089EDFC */ .word	0x00000000
/* 000028 0x8089EE00 */ .word	0x00000004
glabel enZl1OverlayRelocations
/* 000029 0x8089EE04 */ .word	0x82000010
/* 000030 0x8089EE08 */ .word	0x82000014
/* 000031 0x8089EE0C */ .word	0x82000018
/* 000032 0x8089EE10 */ .word	0x8200001C
/* 000033 0x8089EE14 */ .word	0x00000000
/* 000034 0x8089EE18 */ .word	0x00000000
glabel enZl1OverlayInfoOffset
/* 000035 0x8089EE1C */ .word	0x00000030
