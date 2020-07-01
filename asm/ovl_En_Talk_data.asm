.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80BDE140
/* 000088 0x80BDE140 */ .word	0x02610700
/* 000089 0x80BDE144 */ .word	0x00000009
/* 000090 0x80BDE148 */ .word	0x00010000
/* 000091 0x80BDE14C */ .word	0x00000148
/* 000092 0x80BDE150 */ .word	EnTalk_Init
/* 000093 0x80BDE154 */ .word	EnTalk_Destroy
/* 000094 0x80BDE158 */ .word	EnTalk_Update
/* 000095 0x80BDE15C */ .word	0x00000000
glabel enTalkOverlayInfo
/* 000096 0x80BDE160 */ .word	0x00000160
/* 000097 0x80BDE164 */ .word	0x00000020
/* 000098 0x80BDE168 */ .word	0x00000000
/* 000099 0x80BDE16C */ .word	0x00000000
/* 000100 0x80BDE170 */ .word	0x00000009
glabel enTalkOverlayRelocations
/* 000101 0x80BDE174 */ .word	0x45000040
/* 000102 0x80BDE178 */ .word	0x46000044
/* 000103 0x80BDE17C */ .word	0x45000094
/* 000104 0x80BDE180 */ .word	0x46000098
/* 000105 0x80BDE184 */ .word	0x450000D0
/* 000106 0x80BDE188 */ .word	0x460000D4
/* 000107 0x80BDE18C */ .word	0x82000010
/* 000108 0x80BDE190 */ .word	0x82000014
/* 000109 0x80BDE194 */ .word	0x82000018
/* 000110 0x80BDE198 */ .word	0x00000000
glabel enTalkOverlayInfoOffset
/* 000111 0x80BDE19C */ .word	0x00000040
