.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80BE6150
/* 000068 0x80BE6150 */ .word	0x02690500
/* 000069 0x80BE6154 */ .word	0x00000005
/* 000070 0x80BE6158 */ .word	0x02400000
/* 000071 0x80BE615C */ .word	0x00000204
/* 000072 0x80BE6160 */ .word	EnTanron6_Init
/* 000073 0x80BE6164 */ .word	EnTanron6_Destroy
/* 000074 0x80BE6168 */ .word	EnTanron6_Update
/* 000075 0x80BE616C */ .word	EnTanron6_Draw
glabel D_80BE6170
/* 000076 0x80BE6170 */ .word	0xF0F000F1
/* 000077 0x80BE6174 */ .word	0xE1E100E1
/* 000078 0x80BE6178 */ .word	0xF0F0F0E1
/* 000079 0x80BE617C */ .word	0xE146F0F0
/* 000080 0x80BE6180 */ .word	0xE1F0F000
/* 000081 0x80BE6184 */ .word	0x00F0E100
/* 000082 0x80BE6188 */ .word	0xF0000000
/* 000083 0x80BE618C */ .word	0x000000F0
glabel enTanron6OverlayInfo
/* 000084 0x80BE6190 */ .word	0x00000110
/* 000085 0x80BE6194 */ .word	0x00000040
/* 000086 0x80BE6198 */ .word	0x00000000
/* 000087 0x80BE619C */ .word	0x00000000
/* 000088 0x80BE61A0 */ .word	0x00000009
glabel enTanron6OverlayRelocations
/* 000089 0x80BE61A4 */ .word	0x45000034
/* 000090 0x80BE61A8 */ .word	0x4600003C
/* 000091 0x80BE61AC */ .word	0x44000050
/* 000092 0x80BE61B0 */ .word	0x4500007C
/* 000093 0x80BE61B4 */ .word	0x46000080
/* 000094 0x80BE61B8 */ .word	0x82000010
/* 000095 0x80BE61BC */ .word	0x82000014
/* 000096 0x80BE61C0 */ .word	0x82000018
/* 000097 0x80BE61C4 */ .word	0x8200001C
/* 000098 0x80BE61C8 */ .word	0x00000000
glabel enTanron6OverlayInfoOffset
/* 000099 0x80BE61CC */ .word	0x00000040
