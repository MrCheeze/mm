.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_808C3BA0
/* 000084 0x808C3BA0 */ .word	0x003F0600
/* 000085 0x808C3BA4 */ .word	0x00000000
/* 000086 0x808C3BA8 */ .word	0x017E0000
/* 000087 0x808C3BAC */ .word	0x00000144
/* 000088 0x808C3BB0 */ .word	BgKeikokuSpr_Init
/* 000089 0x808C3BB4 */ .word	BgKeikokuSpr_Destroy
/* 000090 0x808C3BB8 */ .word	BgKeikokuSpr_Update
/* 000091 0x808C3BBC */ .word	BgKeikokuSpr_Draw
glabel D_808C3BC0
/* 000092 0x808C3BC0 */ .word	0xB0FC0BB8
/* 000093 0x808C3BC4 */ .word	0xB10000C8
/* 000094 0x808C3BC8 */ .word	0xB1040190
/* 000095 0x808C3BCC */ .word	0x48580014
glabel bgKeikokuSprOverlayInfo
/* 000096 0x808C3BD0 */ .word	0x00000150
/* 000097 0x808C3BD4 */ .word	0x00000030
/* 000098 0x808C3BD8 */ .word	0x00000000
/* 000099 0x808C3BDC */ .word	0x00000000
/* 000100 0x808C3BE0 */ .word	0x00000006
glabel bgKeikokuSprOverlayRelocations
/* 000101 0x808C3BE4 */ .word	0x4500000C
/* 000102 0x808C3BE8 */ .word	0x46000014
/* 000103 0x808C3BEC */ .word	0x82000010
/* 000104 0x808C3BF0 */ .word	0x82000014
/* 000105 0x808C3BF4 */ .word	0x82000018
/* 000106 0x808C3BF8 */ .word	0x8200001C
glabel bgKeikokuSprOverlayInfoOffset
/* 000107 0x808C3BFC */ .word	0x00000030
