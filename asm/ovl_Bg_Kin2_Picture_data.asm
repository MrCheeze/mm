.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80B6F970
/* 000628 0x80B6F970 */ .word	0x02100600
/* 000629 0x80B6F974 */ .word	0x00000000
/* 000630 0x80B6F978 */ .word	0x01F50000
/* 000631 0x80B6F97C */ .word	0x00000244
/* 000632 0x80B6F980 */ .word	BgKin2Picture_Init
/* 000633 0x80B6F984 */ .word	BgKin2Picture_Destroy
/* 000634 0x80B6F988 */ .word	BgKin2Picture_Update
/* 000635 0x80B6F98C */ .word	BgKin2Picture_Draw
glabel D_80B6F990
/* 000636 0x80B6F990 */ .word	0x04000000
/* 000637 0x80B6F994 */ .word	0x00000000
/* 000638 0x80B6F998 */ .word	0x00000000
/* 000639 0x80B6F99C */ .word	0x000138B0
/* 000640 0x80B6F9A0 */ .word	0x00000000
/* 000641 0x80B6F9A4 */ .word	0x00010000
/* 000642 0x80B6F9A8 */ .word	0xC1A00000
/* 000643 0x80B6F9AC */ .word	0x42553333
/* 000644 0x80B6F9B0 */ .word	0x41100000
/* 000645 0x80B6F9B4 */ .word	0xC1A00000
/* 000646 0x80B6F9B8 */ .word	0x40400000
/* 000647 0x80B6F9BC */ .word	0x41100000
/* 000648 0x80B6F9C0 */ .word	0x41A00000
/* 000649 0x80B6F9C4 */ .word	0x40400000
/* 000650 0x80B6F9C8 */ .word	0x41100000
/* 000651 0x80B6F9CC */ .word	0x04000000
/* 000652 0x80B6F9D0 */ .word	0x00000000
/* 000653 0x80B6F9D4 */ .word	0x00000000
/* 000654 0x80B6F9D8 */ .word	0x000138B0
/* 000655 0x80B6F9DC */ .word	0x00000000
/* 000656 0x80B6F9E0 */ .word	0x00010000
/* 000657 0x80B6F9E4 */ .word	0xC1A00000
/* 000658 0x80B6F9E8 */ .word	0x42553333
/* 000659 0x80B6F9EC */ .word	0x41100000
/* 000660 0x80B6F9F0 */ .word	0x41A00000
/* 000661 0x80B6F9F4 */ .word	0x40400000
/* 000662 0x80B6F9F8 */ .word	0x41100000
/* 000663 0x80B6F9FC */ .word	0x41A00000
/* 000664 0x80B6FA00 */ .word	0x42553333
/* 000665 0x80B6FA04 */ .word	0x41100000
glabel D_80B6FA08
/* 000666 0x80B6FA08 */ .word	0x0A000900
/* 000667 0x80B6FA0C */ .word	0x00020000
/* 000668 0x80B6FA10 */ .word	0x00000002
/* 000669 0x80B6FA14 */ .word	D_80B6F990
glabel D_80B6FA18
/* 000670 0x80B6FA18 */ .word	0x00000000
/* 000671 0x80B6FA1C */ .word	0x41B80000
/* 000672 0x80B6FA20 */ .word	0x00000000
glabel D_80B6FA24
/* 000673 0x80B6FA24 */ .word	0xB874F830
/* 000674 0x80B6FA28 */ .word	0xB878B1E0
/* 000675 0x80B6FA2C */ .word	0xB0FC0FA0
/* 000676 0x80B6FA30 */ .word	0xB1000064
/* 000677 0x80B6FA34 */ .word	0xB1040064
/* 000678 0x80B6FA38 */ .word	0x48580064
/* 000679 0x80B6FA3C */ .word	0x00000000
glabel D_80B6FA40
/* 000680 0x80B6FA40 */ .word	0x3E4CCCCD
glabel D_80B6FA44
/* 000681 0x80B6FA44 */ .word	0x454CC000
glabel D_80B6FA48
/* 000682 0x80B6FA48 */ .word	0xBDB851EC
glabel D_80B6FA4C
/* 000683 0x80B6FA4C */ .word	0x3E2AAAAB
glabel D_80B6FA50
/* 000684 0x80B6FA50 */ .word	0x3DCCCCCD
glabel D_80B6FA54
/* 000685 0x80B6FA54 */ .word	0x3E4CCCCD
glabel D_80B6FA58
/* 000686 0x80B6FA58 */ .word	0x3C23D70A
glabel D_80B6FA5C
/* 000687 0x80B6FA5C */ .word	0xBF333333
glabel bgKin2PictureOverlayInfo
/* 000688 0x80B6FA60 */ .word	0x000009D0
/* 000689 0x80B6FA64 */ .word	0x000000D0
/* 000690 0x80B6FA68 */ .word	0x00000020
/* 000691 0x80B6FA6C */ .word	0x00000000
/* 000692 0x80B6FA70 */ .word	0x0000002E
glabel bgKin2PictureOverlayRelocations
/* 000693 0x80B6FA74 */ .word	0x44000080
/* 000694 0x80B6FA78 */ .word	0x45000164
/* 000695 0x80B6FA7C */ .word	0x46000168
/* 000696 0x80B6FA80 */ .word	0x4500017C
/* 000697 0x80B6FA84 */ .word	0x46000180
/* 000698 0x80B6FA88 */ .word	0x45000184
/* 000699 0x80B6FA8C */ .word	0x46000188
/* 000700 0x80B6FA90 */ .word	0x45000198
/* 000701 0x80B6FA94 */ .word	0x4600019C
/* 000702 0x80B6FA98 */ .word	0x450001A4
/* 000703 0x80B6FA9C */ .word	0x460001AC
/* 000704 0x80B6FAA0 */ .word	0x45000370
/* 000705 0x80B6FAA4 */ .word	0x46000374
/* 000706 0x80B6FAA8 */ .word	0x450003C0
/* 000707 0x80B6FAAC */ .word	0x460003C4
/* 000708 0x80B6FAB0 */ .word	0x4400048C
/* 000709 0x80B6FAB4 */ .word	0x440004A0
/* 000710 0x80B6FAB8 */ .word	0x45000520
/* 000711 0x80B6FABC */ .word	0x46000524
/* 000712 0x80B6FAC0 */ .word	0x44000564
/* 000713 0x80B6FAC4 */ .word	0x4500059C
/* 000714 0x80B6FAC8 */ .word	0x460005A0
/* 000715 0x80B6FACC */ .word	0x45000604
/* 000716 0x80B6FAD0 */ .word	0x46000608
/* 000717 0x80B6FAD4 */ .word	0x44000654
/* 000718 0x80B6FAD8 */ .word	0x4500067C
/* 000719 0x80B6FADC */ .word	0x46000684
/* 000720 0x80B6FAE0 */ .word	0x440006D8
/* 000721 0x80B6FAE4 */ .word	0x45000714
/* 000722 0x80B6FAE8 */ .word	0x46000718
/* 000723 0x80B6FAEC */ .word	0x45000768
/* 000724 0x80B6FAF0 */ .word	0x46000770
/* 000725 0x80B6FAF4 */ .word	0x440007C0
/* 000726 0x80B6FAF8 */ .word	0x45000828
/* 000727 0x80B6FAFC */ .word	0x4600082C
/* 000728 0x80B6FB00 */ .word	0x4500084C
/* 000729 0x80B6FB04 */ .word	0x46000850
/* 000730 0x80B6FB08 */ .word	0x440008BC
/* 000731 0x80B6FB0C */ .word	0x44000918
/* 000732 0x80B6FB10 */ .word	0x45000958
/* 000733 0x80B6FB14 */ .word	0x4600095C
/* 000734 0x80B6FB18 */ .word	0x82000010
/* 000735 0x80B6FB1C */ .word	0x82000014
/* 000736 0x80B6FB20 */ .word	0x82000018
/* 000737 0x80B6FB24 */ .word	0x8200001C
/* 000738 0x80B6FB28 */ .word	0x820000A4
glabel bgKin2PictureOverlayInfoOffset
/* 000739 0x80B6FB2C */ .word	0x000000D0
