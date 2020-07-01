.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80AC9D50
/* 000548 0x80AC9D50 */ .word	0x01AA0100
/* 000549 0x80AC9D54 */ .word	0x00000010
/* 000550 0x80AC9D58 */ .word	0x01630000
/* 000551 0x80AC9D5C */ .word	0x00000178
/* 000552 0x80AC9D60 */ .word	ObjOcarinalift_Init
/* 000553 0x80AC9D64 */ .word	ObjOcarinalift_Destroy
/* 000554 0x80AC9D68 */ .word	ObjOcarinalift_Update
/* 000555 0x80AC9D6C */ .word	ObjOcarinalift_Draw
glabel D_80AC9D70
/* 000556 0x80AC9D70 */ .word	0x801F0002
/* 000557 0x80AC9D74 */ .word	0xB0FC0FA0
/* 000558 0x80AC9D78 */ .word	0xB10000C8
/* 000559 0x80AC9D7C */ .word	0xB104012C
/* 000560 0x80AC9D80 */ .word	0x48580064
/* 000561 0x80AC9D84 */ .word	0x00000000
/* 000562 0x80AC9D88 */ .word	0x00000000
/* 000563 0x80AC9D8C */ .word	0x00000000
glabel D_80AC9D90
/* 000564 0x80AC9D90 */ .word	0x3DCCCCCD
glabel D_80AC9D94
/* 000565 0x80AC9D94 */ .word	0x3C23D70A
glabel D_80AC9D98
/* 000566 0x80AC9D98 */ .word	0x3DCCCCCD
glabel D_80AC9D9C
/* 000567 0x80AC9D9C */ .word	0x3CF5C28F
glabel D_80AC9DA0
/* 000568 0x80AC9DA0 */ .word	0x3E23D70A
glabel D_80AC9DA4
/* 000569 0x80AC9DA4 */ .word	0x3D4CCCCD
glabel D_80AC9DA8
/* 000570 0x80AC9DA8 */ .word	0x3ECCCCCD
/* 000571 0x80AC9DAC */ .word	0x00000000
glabel objOcarinaliftOverlayInfo
/* 000572 0x80AC9DB0 */ .word	0x00000890
/* 000573 0x80AC9DB4 */ .word	0x00000040
/* 000574 0x80AC9DB8 */ .word	0x00000020
/* 000575 0x80AC9DBC */ .word	0x00000000
/* 000576 0x80AC9DC0 */ .word	0x00000033
glabel objOcarinaliftOverlayRelocations
/* 000577 0x80AC9DC4 */ .word	0x45000050
/* 000578 0x80AC9DC8 */ .word	0x46000054
/* 000579 0x80AC9DCC */ .word	0x45000094
/* 000580 0x80AC9DD0 */ .word	0x46000098
/* 000581 0x80AC9DD4 */ .word	0x450000A0
/* 000582 0x80AC9DD8 */ .word	0x460000B4
/* 000583 0x80AC9DDC */ .word	0x440000D0
/* 000584 0x80AC9DE0 */ .word	0x44000128
/* 000585 0x80AC9DE4 */ .word	0x44000160
/* 000586 0x80AC9DE8 */ .word	0x44000170
/* 000587 0x80AC9DEC */ .word	0x450001C8
/* 000588 0x80AC9DF0 */ .word	0x460001CC
/* 000589 0x80AC9DF4 */ .word	0x450001F8
/* 000590 0x80AC9DF8 */ .word	0x460001FC
/* 000591 0x80AC9DFC */ .word	0x450002B4
/* 000592 0x80AC9E00 */ .word	0x460002CC
/* 000593 0x80AC9E04 */ .word	0x450002D0
/* 000594 0x80AC9E08 */ .word	0x460002D4
/* 000595 0x80AC9E0C */ .word	0x450002EC
/* 000596 0x80AC9E10 */ .word	0x460002F0
/* 000597 0x80AC9E14 */ .word	0x45000310
/* 000598 0x80AC9E18 */ .word	0x46000314
/* 000599 0x80AC9E1C */ .word	0x45000390
/* 000600 0x80AC9E20 */ .word	0x460003A0
/* 000601 0x80AC9E24 */ .word	0x440003F8
/* 000602 0x80AC9E28 */ .word	0x44000460
/* 000603 0x80AC9E2C */ .word	0x440004A0
/* 000604 0x80AC9E30 */ .word	0x440004CC
/* 000605 0x80AC9E34 */ .word	0x440004E4
/* 000606 0x80AC9E38 */ .word	0x45000500
/* 000607 0x80AC9E3C */ .word	0x46000504
/* 000608 0x80AC9E40 */ .word	0x44000538
/* 000609 0x80AC9E44 */ .word	0x4400057C
/* 000610 0x80AC9E48 */ .word	0x4400058C
/* 000611 0x80AC9E4C */ .word	0x450005A8
/* 000612 0x80AC9E50 */ .word	0x460005AC
/* 000613 0x80AC9E54 */ .word	0x440005E0
/* 000614 0x80AC9E58 */ .word	0x45000604
/* 000615 0x80AC9E5C */ .word	0x46000608
/* 000616 0x80AC9E60 */ .word	0x4400064C
/* 000617 0x80AC9E64 */ .word	0x45000688
/* 000618 0x80AC9E68 */ .word	0x4600068C
/* 000619 0x80AC9E6C */ .word	0x4400071C
/* 000620 0x80AC9E70 */ .word	0x44000744
/* 000621 0x80AC9E74 */ .word	0x4500076C
/* 000622 0x80AC9E78 */ .word	0x46000770
/* 000623 0x80AC9E7C */ .word	0x440007C4
/* 000624 0x80AC9E80 */ .word	0x82000010
/* 000625 0x80AC9E84 */ .word	0x82000014
/* 000626 0x80AC9E88 */ .word	0x82000018
/* 000627 0x80AC9E8C */ .word	0x8200001C
/* 000628 0x80AC9E90 */ .word	0x00000000
/* 000629 0x80AC9E94 */ .word	0x00000000
/* 000630 0x80AC9E98 */ .word	0x00000000
glabel objOcarinaliftOverlayInfoOffset
/* 000631 0x80AC9E9C */ .word	0x000000F0
