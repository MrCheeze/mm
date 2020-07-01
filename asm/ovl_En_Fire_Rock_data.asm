.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_808E2020
/* 000016 0x808E2020 */ .word	0x00600500
/* 000017 0x808E2024 */ .word	0x00000030
/* 000018 0x808E2028 */ .word	0x00700000
/* 000019 0x808E202C */ .word	0x000001D8
/* 000020 0x808E2030 */ .word	EnFireRock_Init
/* 000021 0x808E2034 */ .word	EnFireRock_Destroy
/* 000022 0x808E2038 */ .word	EnFireRock_Update
/* 000023 0x808E203C */ .word	EnFireRock_Draw
glabel enFireRockOverlayInfo
/* 000024 0x808E2040 */ .word	0x00000040
/* 000025 0x808E2044 */ .word	0x00000020
/* 000026 0x808E2048 */ .word	0x00000000
/* 000027 0x808E204C */ .word	0x00000000
/* 000028 0x808E2050 */ .word	0x00000004
glabel enFireRockOverlayRelocations
/* 000029 0x808E2054 */ .word	0x82000010
/* 000030 0x808E2058 */ .word	0x82000014
/* 000031 0x808E205C */ .word	0x82000018
/* 000032 0x808E2060 */ .word	0x8200001C
/* 000033 0x808E2064 */ .word	0x00000000
/* 000034 0x808E2068 */ .word	0x00000000
glabel enFireRockOverlayInfoOffset
/* 000035 0x808E206C */ .word	0x00000030
