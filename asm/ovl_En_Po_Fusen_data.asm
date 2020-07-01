.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80AC1D80
/* 000708 0x80AC1D80 */ .word	0x01A60600
/* 000709 0x80AC1D84 */ .word	0x80100030
/* 000710 0x80AC1D88 */ .word	0x019B0000
/* 000711 0x80AC1D8C */ .word	0x00000274
/* 000712 0x80AC1D90 */ .word	EnPoFusen_Init
/* 000713 0x80AC1D94 */ .word	EnPoFusen_Destroy
/* 000714 0x80AC1D98 */ .word	EnPoFusen_Update
/* 000715 0x80AC1D9C */ .word	EnPoFusen_Draw
glabel D_80AC1DA0
/* 000716 0x80AC1DA0 */ .word	0x0A000939
/* 000717 0x80AC1DA4 */ .word	0x12040000
/* 000718 0x80AC1DA8 */ .word	0x00000000
/* 000719 0x80AC1DAC */ .word	0xF7CFFFFF
/* 000720 0x80AC1DB0 */ .word	0x00000000
/* 000721 0x80AC1DB4 */ .word	0xF7CFFFFF
/* 000722 0x80AC1DB8 */ .word	0x00000000
/* 000723 0x80AC1DBC */ .word	0x00010100
/* 000724 0x80AC1DC0 */ .word	0x00000000
/* 000725 0x80AC1DC4 */ .word	0x00000000
/* 000726 0x80AC1DC8 */ .word	0x00C80064
glabel D_80AC1DCC
/* 000727 0x80AC1DCC */ .word	0x00000000
/* 000728 0x80AC1DD0 */ .word	0x00F10000
/* 000729 0x80AC1DD4 */ .word	0x000000F1
/* 000730 0x80AC1DD8 */ .word	0xF1F1F100
/* 000731 0x80AC1DDC */ .word	0x00000000
/* 000732 0x80AC1DE0 */ .word	0x00000000
/* 000733 0x80AC1DE4 */ .word	0x00000000
/* 000734 0x80AC1DE8 */ .word	0x00000000
/* 000735 0x80AC1DEC */ .word	0x00000000
glabel D_80AC1DF0
/* 000736 0x80AC1DF0 */ .word	0x3BE56042
glabel D_80AC1DF4
/* 000737 0x80AC1DF4 */ .word	0x44638000
glabel D_80AC1DF8
/* 000738 0x80AC1DF8 */ .word	0x3DA3D70A
glabel D_80AC1DFC
/* 000739 0x80AC1DFC */ .word	0x3DA3D70A
glabel D_80AC1E00
/* 000740 0x80AC1E00 */ .word	0x452AA000
glabel D_80AC1E04
/* 000741 0x80AC1E04 */ .word	0x452AA000
/* 000742 0x80AC1E08 */ .word	0x00000000
/* 000743 0x80AC1E0C */ .word	0x00000000
glabel enPoFusenOverlayInfo
/* 000744 0x80AC1E10 */ .word	0x00000B10
/* 000745 0x80AC1E14 */ .word	0x00000070
/* 000746 0x80AC1E18 */ .word	0x00000020
/* 000747 0x80AC1E1C */ .word	0x00000000
/* 000748 0x80AC1E20 */ .word	0x00000029
glabel enPoFusenOverlayRelocations
/* 000749 0x80AC1E24 */ .word	0x45000008
/* 000750 0x80AC1E28 */ .word	0x4600000C
/* 000751 0x80AC1E2C */ .word	0x4500001C
/* 000752 0x80AC1E30 */ .word	0x46000024
/* 000753 0x80AC1E34 */ .word	0x4500004C
/* 000754 0x80AC1E38 */ .word	0x46000054
/* 000755 0x80AC1E3C */ .word	0x440000E4
/* 000756 0x80AC1E40 */ .word	0x44000188
/* 000757 0x80AC1E44 */ .word	0x44000198
/* 000758 0x80AC1E48 */ .word	0x45000248
/* 000759 0x80AC1E4C */ .word	0x4600024C
/* 000760 0x80AC1E50 */ .word	0x45000304
/* 000761 0x80AC1E54 */ .word	0x46000308
/* 000762 0x80AC1E58 */ .word	0x450003A4
/* 000763 0x80AC1E5C */ .word	0x460003A8
/* 000764 0x80AC1E60 */ .word	0x45000680
/* 000765 0x80AC1E64 */ .word	0x46000684
/* 000766 0x80AC1E68 */ .word	0x45000748
/* 000767 0x80AC1E6C */ .word	0x4600074C
/* 000768 0x80AC1E70 */ .word	0x44000774
/* 000769 0x80AC1E74 */ .word	0x44000794
/* 000770 0x80AC1E78 */ .word	0x440007D0
/* 000771 0x80AC1E7C */ .word	0x440007E0
/* 000772 0x80AC1E80 */ .word	0x45000820
/* 000773 0x80AC1E84 */ .word	0x46000824
/* 000774 0x80AC1E88 */ .word	0x4500084C
/* 000775 0x80AC1E8C */ .word	0x46000850
/* 000776 0x80AC1E90 */ .word	0x45000878
/* 000777 0x80AC1E94 */ .word	0x4600087C
/* 000778 0x80AC1E98 */ .word	0x450008A0
/* 000779 0x80AC1E9C */ .word	0x460008A4
/* 000780 0x80AC1EA0 */ .word	0x45000AC4
/* 000781 0x80AC1EA4 */ .word	0x46000AE4
/* 000782 0x80AC1EA8 */ .word	0x45000AC8
/* 000783 0x80AC1EAC */ .word	0x46000AE0
/* 000784 0x80AC1EB0 */ .word	0x45000AD8
/* 000785 0x80AC1EB4 */ .word	0x46000ADC
/* 000786 0x80AC1EB8 */ .word	0x82000010
/* 000787 0x80AC1EBC */ .word	0x82000014
/* 000788 0x80AC1EC0 */ .word	0x82000018
/* 000789 0x80AC1EC4 */ .word	0x8200001C
/* 000790 0x80AC1EC8 */ .word	0x00000000
glabel enPoFusenOverlayInfoOffset
/* 000791 0x80AC1ECC */ .word	0x000000C0
