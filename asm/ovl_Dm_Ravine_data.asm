.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80A2E910
/* 000092 0x80A2E910 */ .word	0x01480700
/* 000093 0x80A2E914 */ .word	0x00000030
/* 000094 0x80A2E918 */ .word	0x01690000
/* 000095 0x80A2E91C */ .word	0x0000014C
/* 000096 0x80A2E920 */ .word	DmRavine_Init
/* 000097 0x80A2E924 */ .word	DmRavine_Destroy
/* 000098 0x80A2E928 */ .word	DmRavine_Update
/* 000099 0x80A2E92C */ .word	DmRavine_Draw
glabel dmRavineOverlayInfo
/* 000100 0x80A2E930 */ .word	0x00000170
/* 000101 0x80A2E934 */ .word	0x00000020
/* 000102 0x80A2E938 */ .word	0x00000000
/* 000103 0x80A2E93C */ .word	0x00000000
/* 000104 0x80A2E940 */ .word	0x00000006
glabel dmRavineOverlayRelocations
/* 000105 0x80A2E944 */ .word	0x4500006C
/* 000106 0x80A2E948 */ .word	0x46000070
/* 000107 0x80A2E94C */ .word	0x82000010
/* 000108 0x80A2E950 */ .word	0x82000014
/* 000109 0x80A2E954 */ .word	0x82000018
/* 000110 0x80A2E958 */ .word	0x8200001C
glabel dmRavineOverlayInfoOffset
/* 000111 0x80A2E95C */ .word	0x00000030
