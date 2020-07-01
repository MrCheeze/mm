.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80A1FDB0
/* 000616 0x80A1FDB0 */ .word	0x01400700
/* 000617 0x80A1FDB4 */ .word	0x00000030
/* 000618 0x80A1FDB8 */ .word	0x01CC0000
/* 000619 0x80A1FDBC */ .word	0x00000184
/* 000620 0x80A1FDC0 */ .word	DmHina_Init
/* 000621 0x80A1FDC4 */ .word	DmHina_Destroy
/* 000622 0x80A1FDC8 */ .word	DmHina_Update
/* 000623 0x80A1FDCC */ .word	DmHina_Draw
glabel D_80A1FDD0
/* 000624 0x80A1FDD0 */ .word	0x3A83126F
glabel D_80A1FDD4
/* 000625 0x80A1FDD4 */ .word	0x3DCCCCCD
glabel D_80A1FDD8
/* 000626 0x80A1FDD8 */ .word	0x3A83126F
glabel D_80A1FDDC
/* 000627 0x80A1FDDC */ .word	0x40C90FDB
glabel dmHinaOverlayInfo
/* 000628 0x80A1FDE0 */ .word	0x000009A0
/* 000629 0x80A1FDE4 */ .word	0x00000020
/* 000630 0x80A1FDE8 */ .word	0x00000010
/* 000631 0x80A1FDEC */ .word	0x00000000
/* 000632 0x80A1FDF0 */ .word	0x00000016
glabel dmHinaOverlayRelocations
/* 000633 0x80A1FDF4 */ .word	0x4500001C
/* 000634 0x80A1FDF8 */ .word	0x46000024
/* 000635 0x80A1FDFC */ .word	0x45000078
/* 000636 0x80A1FE00 */ .word	0x4600007C
/* 000637 0x80A1FE04 */ .word	0x45000110
/* 000638 0x80A1FE08 */ .word	0x46000130
/* 000639 0x80A1FE0C */ .word	0x4500017C
/* 000640 0x80A1FE10 */ .word	0x46000180
/* 000641 0x80A1FE14 */ .word	0x4500020C
/* 000642 0x80A1FE18 */ .word	0x46000210
/* 000643 0x80A1FE1C */ .word	0x450002C4
/* 000644 0x80A1FE20 */ .word	0x460002C8
/* 000645 0x80A1FE24 */ .word	0x45000394
/* 000646 0x80A1FE28 */ .word	0x46000398
/* 000647 0x80A1FE2C */ .word	0x44000584
/* 000648 0x80A1FE30 */ .word	0x450007CC
/* 000649 0x80A1FE34 */ .word	0x460007D4
/* 000650 0x80A1FE38 */ .word	0x44000980
/* 000651 0x80A1FE3C */ .word	0x82000010
/* 000652 0x80A1FE40 */ .word	0x82000014
/* 000653 0x80A1FE44 */ .word	0x82000018
/* 000654 0x80A1FE48 */ .word	0x8200001C
glabel dmHinaOverlayInfoOffset
/* 000655 0x80A1FE4C */ .word	0x00000070
