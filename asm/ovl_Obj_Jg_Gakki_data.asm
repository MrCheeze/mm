.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80B963C0
/* 000120 0x80B963C0 */ .word	0x02260600
/* 000121 0x80B963C4 */ .word	0x00000020
/* 000122 0x80B963C8 */ .word	0x01F80000
/* 000123 0x80B963CC */ .word	0x000001D4
/* 000124 0x80B963D0 */ .word	ObjJgGakki_Init
/* 000125 0x80B963D4 */ .word	ObjJgGakki_Destroy
/* 000126 0x80B963D8 */ .word	ObjJgGakki_Update
/* 000127 0x80B963DC */ .word	ObjJgGakki_Draw
glabel objJgGakkiOverlayInfo
/* 000128 0x80B963E0 */ .word	0x000001E0
/* 000129 0x80B963E4 */ .word	0x00000020
/* 000130 0x80B963E8 */ .word	0x00000000
/* 000131 0x80B963EC */ .word	0x00000000
/* 000132 0x80B963F0 */ .word	0x00000004
glabel objJgGakkiOverlayRelocations
/* 000133 0x80B963F4 */ .word	0x82000010
/* 000134 0x80B963F8 */ .word	0x82000014
/* 000135 0x80B963FC */ .word	0x82000018
/* 000136 0x80B96400 */ .word	0x8200001C
/* 000137 0x80B96404 */ .word	0x00000000
/* 000138 0x80B96408 */ .word	0x00000000
glabel objJgGakkiOverlayInfoOffset
/* 000139 0x80B9640C */ .word	0x00000030
