.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_809C3DC0
/* 000016 0x809C3DC0 */ .word	0x01180400
/* 000017 0x809C3DC4 */ .word	0x00000019
/* 000018 0x809C3DC8 */ .word	0x00010000
/* 000019 0x809C3DCC */ .word	0x00000314
/* 000020 0x809C3DD0 */ .word	EnBoj01_Init
/* 000021 0x809C3DD4 */ .word	EnBoj01_Destroy
/* 000022 0x809C3DD8 */ .word	EnBoj01_Update
/* 000023 0x809C3DDC */ .word	EnBoj01_Draw
glabel enBoj01OverlayInfo
/* 000024 0x809C3DE0 */ .word	0x00000040
/* 000025 0x809C3DE4 */ .word	0x00000020
/* 000026 0x809C3DE8 */ .word	0x00000000
/* 000027 0x809C3DEC */ .word	0x00000000
/* 000028 0x809C3DF0 */ .word	0x00000004
glabel enBoj01OverlayRelocations
/* 000029 0x809C3DF4 */ .word	0x82000010
/* 000030 0x809C3DF8 */ .word	0x82000014
/* 000031 0x809C3DFC */ .word	0x82000018
/* 000032 0x809C3E00 */ .word	0x8200001C
/* 000033 0x809C3E04 */ .word	0x00000000
/* 000034 0x809C3E08 */ .word	0x00000000
glabel enBoj01OverlayInfoOffset
/* 000035 0x809C3E0C */ .word	0x00000030
