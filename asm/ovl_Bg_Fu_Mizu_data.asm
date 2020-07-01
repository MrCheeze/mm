.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80ADAD80
/* 000164 0x80ADAD80 */ .word	0x01BC0100
/* 000165 0x80ADAD84 */ .word	0x00000030
/* 000166 0x80ADAD88 */ .word	0x01A00000
/* 000167 0x80ADAD8C */ .word	0x00000164
/* 000168 0x80ADAD90 */ .word	BgFuMizu_Init
/* 000169 0x80ADAD94 */ .word	BgFuMizu_Destroy
/* 000170 0x80ADAD98 */ .word	BgFuMizu_Update
/* 000171 0x80ADAD9C */ .word	BgFuMizu_Draw
glabel bgFuMizuOverlayInfo
/* 000172 0x80ADADA0 */ .word	0x00000290
/* 000173 0x80ADADA4 */ .word	0x00000020
/* 000174 0x80ADADA8 */ .word	0x00000000
/* 000175 0x80ADADAC */ .word	0x00000000
/* 000176 0x80ADADB0 */ .word	0x00000005
glabel bgFuMizuOverlayRelocations
/* 000177 0x80ADADB4 */ .word	0x44000128
/* 000178 0x80ADADB8 */ .word	0x82000010
/* 000179 0x80ADADBC */ .word	0x82000014
/* 000180 0x80ADADC0 */ .word	0x82000018
/* 000181 0x80ADADC4 */ .word	0x8200001C
/* 000182 0x80ADADC8 */ .word	0x00000000
glabel bgFuMizuOverlayInfoOffset
/* 000183 0x80ADADCC */ .word	0x00000030
