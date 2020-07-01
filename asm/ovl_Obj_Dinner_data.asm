.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80BEBA70
/* 000076 0x80BEBA70 */ .word	0x02710600
/* 000077 0x80BEBA74 */ .word	0x00000020
/* 000078 0x80BEBA78 */ .word	0x02440000
/* 000079 0x80BEBA7C */ .word	0x00000148
/* 000080 0x80BEBA80 */ .word	ObjDinner_Init
/* 000081 0x80BEBA84 */ .word	ObjDinner_Destroy
/* 000082 0x80BEBA88 */ .word	ObjDinner_Update
/* 000083 0x80BEBA8C */ .word	ObjDinner_Draw
glabel objDinnerOverlayInfo
/* 000084 0x80BEBA90 */ .word	0x00000130
/* 000085 0x80BEBA94 */ .word	0x00000020
/* 000086 0x80BEBA98 */ .word	0x00000000
/* 000087 0x80BEBA9C */ .word	0x00000000
/* 000088 0x80BEBAA0 */ .word	0x00000004
glabel objDinnerOverlayRelocations
/* 000089 0x80BEBAA4 */ .word	0x82000010
/* 000090 0x80BEBAA8 */ .word	0x82000014
/* 000091 0x80BEBAAC */ .word	0x82000018
/* 000092 0x80BEBAB0 */ .word	0x8200001C
/* 000093 0x80BEBAB4 */ .word	0x00000000
/* 000094 0x80BEBAB8 */ .word	0x00000000
glabel objDinnerOverlayInfoOffset
/* 000095 0x80BEBABC */ .word	0x00000030
