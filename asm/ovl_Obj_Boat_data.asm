.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80B9B660
/* 000452 0x80B9B660 */ .word	0x022C0100
/* 000453 0x80B9B664 */ .word	0x00000010
/* 000454 0x80B9B668 */ .word	0x020E0000
/* 000455 0x80B9B66C */ .word	0x00000168
/* 000456 0x80B9B670 */ .word	ObjBoat_Init
/* 000457 0x80B9B674 */ .word	ObjBoat_Destroy
/* 000458 0x80B9B678 */ .word	ObjBoat_Update
/* 000459 0x80B9B67C */ .word	ObjBoat_Draw
glabel D_80B9B680
/* 000460 0x80B9B680 */ .word	0xC8580064
/* 000461 0x80B9B684 */ .word	0xB0FC0FA0
/* 000462 0x80B9B688 */ .word	0xB10003E8
/* 000463 0x80B9B68C */ .word	0x310403E8
glabel objBoatOverlayInfo
/* 000464 0x80B9B690 */ .word	0x00000710
/* 000465 0x80B9B694 */ .word	0x00000030
/* 000466 0x80B9B698 */ .word	0x00000000
/* 000467 0x80B9B69C */ .word	0x00000000
/* 000468 0x80B9B6A0 */ .word	0x0000000C
glabel objBoatOverlayRelocations
/* 000469 0x80B9B6A4 */ .word	0x450000A4
/* 000470 0x80B9B6A8 */ .word	0x460000A8
/* 000471 0x80B9B6AC */ .word	0x450000E8
/* 000472 0x80B9B6B0 */ .word	0x460000EC
/* 000473 0x80B9B6B4 */ .word	0x4400016C
/* 000474 0x80B9B6B8 */ .word	0x44000358
/* 000475 0x80B9B6BC */ .word	0x440004BC
/* 000476 0x80B9B6C0 */ .word	0x44000670
/* 000477 0x80B9B6C4 */ .word	0x82000010
/* 000478 0x80B9B6C8 */ .word	0x82000014
/* 000479 0x80B9B6CC */ .word	0x82000018
/* 000480 0x80B9B6D0 */ .word	0x8200001C
/* 000481 0x80B9B6D4 */ .word	0x00000000
/* 000482 0x80B9B6D8 */ .word	0x00000000
glabel objBoatOverlayInfoOffset
/* 000483 0x80B9B6DC */ .word	0x00000050
