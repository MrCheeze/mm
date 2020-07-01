.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel objBellInitData
/* 000600 0x80A35E70 */ .word	0x014E0600
/* 000601 0x80A35E74 */ .word	0x00000030
/* 000602 0x80A35E78 */ .word	0x016C0000
/* 000603 0x80A35E7C */ .word	0x00000228
/* 000604 0x80A35E80 */ .word	ObjBell_Init
/* 000605 0x80A35E84 */ .word	ObjBell_Destroy
/* 000606 0x80A35E88 */ .word	ObjBell_Update
/* 000607 0x80A35E8C */ .word	ObjBell_Draw
glabel D_80A35E90
/* 000608 0x80A35E90 */ .word	0x09110039
/* 000609 0x80A35E94 */ .word	0x10040000
/* 000610 0x80A35E98 */ .word	0x02000000
/* 000611 0x80A35E9C */ .word	0x20000000
/* 000612 0x80A35EA0 */ .word	0x00040000
/* 000613 0x80A35EA4 */ .word	0x00000000
/* 000614 0x80A35EA8 */ .word	0x00000000
/* 000615 0x80A35EAC */ .word	0x01000100
/* 000616 0x80A35EB0 */ .word	0x00000000
/* 000617 0x80A35EB4 */ .word	0x03C00000
/* 000618 0x80A35EB8 */ .word	0x00460064
glabel D_80A35EBC
/* 000619 0x80A35EBC */ .word	0x09000900
/* 000620 0x80A35EC0 */ .word	0x10040000
/* 000621 0x80A35EC4 */ .word	0x02000000
/* 000622 0x80A35EC8 */ .word	0x00000000
/* 000623 0x80A35ECC */ .word	0x00000000
/* 000624 0x80A35ED0 */ .word	0xF7CFFFFF
/* 000625 0x80A35ED4 */ .word	0x00000000
/* 000626 0x80A35ED8 */ .word	0x00010000
/* 000627 0x80A35EDC */ .word	0x00000000
/* 000628 0x80A35EE0 */ .word	0x044C0000
/* 000629 0x80A35EE4 */ .word	0x004A0064
glabel D_80A35EE8
/* 000630 0x80A35EE8 */ .word	0x00000000
/* 000631 0x80A35EEC */ .word	0x00000000
/* 000632 0x80A35EF0 */ .word	0xFF000000
glabel D_80A35EF4
/* 000633 0x80A35EF4 */ .word	0x010101E1
/* 000634 0x80A35EF8 */ .word	0x01010101
/* 000635 0x80A35EFC */ .word	0xF1010101
/* 000636 0x80A35F00 */ .word	0x0101F101
/* 000637 0x80A35F04 */ .word	0x01010101
/* 000638 0x80A35F08 */ .word	0x01010101
/* 000639 0x80A35F0C */ .word	0x01010101
/* 000640 0x80A35F10 */ .word	0x010101E1
/* 000641 0x80A35F14 */ .word	0x00000000
/* 000642 0x80A35F18 */ .word	0x00000000
/* 000643 0x80A35F1C */ .word	0x00000000
glabel D_80A35F20
/* 000644 0x80A35F20 */ .word	0x453B8000
glabel D_80A35F24
/* 000645 0x80A35F24 */ .word	0x443B8000
glabel D_80A35F28
/* 000646 0x80A35F28 */ .word	0x460CA000
glabel D_80A35F2C
/* 000647 0x80A35F2C */ .word	0x468CA000
glabel D_80A35F30
/* 000648 0x80A35F30 */ .word	0x468CA000
glabel D_80A35F34
/* 000649 0x80A35F34 */ .word	0x3E3851EC
glabel D_80A35F38
/* 000650 0x80A35F38 */ .word	0x45228000
glabel D_80A35F3C
/* 000651 0x80A35F3C */ .word	0xC5228000
glabel objBellOverlayInfo
/* 000652 0x80A35F40 */ .word	0x00000960
/* 000653 0x80A35F44 */ .word	0x000000B0
/* 000654 0x80A35F48 */ .word	0x00000020
/* 000655 0x80A35F4C */ .word	0x00000000
/* 000656 0x80A35F50 */ .word	0x00000025
glabel objBellOverlayRelocations
/* 000657 0x80A35F54 */ .word	0x45000078
/* 000658 0x80A35F58 */ .word	0x460000C0
/* 000659 0x80A35F5C */ .word	0x450000C4
/* 000660 0x80A35F60 */ .word	0x460000DC
/* 000661 0x80A35F64 */ .word	0x450000F4
/* 000662 0x80A35F68 */ .word	0x460000F8
/* 000663 0x80A35F6C */ .word	0x4500010C
/* 000664 0x80A35F70 */ .word	0x4600012C
/* 000665 0x80A35F74 */ .word	0x450002B0
/* 000666 0x80A35F78 */ .word	0x460002CC
/* 000667 0x80A35F7C */ .word	0x45000304
/* 000668 0x80A35F80 */ .word	0x46000310
/* 000669 0x80A35F84 */ .word	0x4400039C
/* 000670 0x80A35F88 */ .word	0x440003BC
/* 000671 0x80A35F8C */ .word	0x440003CC
/* 000672 0x80A35F90 */ .word	0x450004E4
/* 000673 0x80A35F94 */ .word	0x460004E8
/* 000674 0x80A35F98 */ .word	0x4500052C
/* 000675 0x80A35F9C */ .word	0x46000530
/* 000676 0x80A35FA0 */ .word	0x450007CC
/* 000677 0x80A35FA4 */ .word	0x460007D0
/* 000678 0x80A35FA8 */ .word	0x450007E4
/* 000679 0x80A35FAC */ .word	0x460007E8
/* 000680 0x80A35FB0 */ .word	0x450007FC
/* 000681 0x80A35FB4 */ .word	0x46000808
/* 000682 0x80A35FB8 */ .word	0x45000800
/* 000683 0x80A35FBC */ .word	0x46000804
/* 000684 0x80A35FC0 */ .word	0x440008A0
/* 000685 0x80A35FC4 */ .word	0x440008A8
/* 000686 0x80A35FC8 */ .word	0x440008B4
/* 000687 0x80A35FCC */ .word	0x440008E4
/* 000688 0x80A35FD0 */ .word	0x440008F0
/* 000689 0x80A35FD4 */ .word	0x440008FC
/* 000690 0x80A35FD8 */ .word	0x82000010
/* 000691 0x80A35FDC */ .word	0x82000014
/* 000692 0x80A35FE0 */ .word	0x82000018
/* 000693 0x80A35FE4 */ .word	0x8200001C
/* 000694 0x80A35FE8 */ .word	0x00000000
glabel objBellOverlayInfoOffset
/* 000695 0x80A35FEC */ .word	0x000000B0
