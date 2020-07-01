.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80B2C200
/* 000628 0x80B2C200 */ .word	0x02091F09
/* 000629 0x80B2C204 */ .word	0x23030400
/* 000630 0x80B2C208 */ .word	0x01040002
glabel D_80B2C20C
/* 000631 0x80B2C20C */ .word	0x020A030A
/* 000632 0x80B2C210 */ .word	0x07030400
/* 000633 0x80B2C214 */ .word	0x01040002
glabel D_80B2C218
/* 000634 0x80B2C218 */ .word	0x020A230A
/* 000635 0x80B2C21C */ .word	0x27030400
/* 000636 0x80B2C220 */ .word	0x01040002
glabel D_80B2C224
/* 000637 0x80B2C224 */ .word	0x020A350A
/* 000638 0x80B2C228 */ .word	0x39030400
/* 000639 0x80B2C22C */ .word	0x01040002
glabel D_80B2C230
/* 000640 0x80B2C230 */ .word	0x020B190B
/* 000641 0x80B2C234 */ .word	0x1D030400
/* 000642 0x80B2C238 */ .word	0x01040002
glabel D_80B2C23C
/* 000643 0x80B2C23C */ .word	0x0E27840C
/* 000644 0x80B2C240 */ .word	0x0E00FF2B
/* 000645 0x80B2C244 */ .word	0x00000031
/* 000646 0x80B2C248 */ .word	0x00392800
/* 000647 0x80B2C24C */ .word	0x0A122C27
/* 000648 0x80B2C250 */ .word	0xA40C2F00
/* 000649 0x80B2C254 */ .word	0x000C1012
/* 000650 0x80B2C258 */ .word	0x2C27870C
/* 000651 0x80B2C25C */ .word	0x2F00000C
/* 000652 0x80B2C260 */ .word	0x111B022A
/* 000653 0x80B2C264 */ .word	0x002F001B
/* 000654 0x80B2C268 */ .word	0x4000080F
/* 000655 0x80B2C26C */ .word	0x27882D00
/* 000656 0x80B2C270 */ .word	0x180C100F
/* 000657 0x80B2C274 */ .word	0x27892D00
/* 000658 0x80B2C278 */ .word	0x180C1012
/* 000659 0x80B2C27C */ .word	0x2C27850C
/* 000660 0x80B2C280 */ .word	0x2FFFD20E
/* 000661 0x80B2C284 */ .word	0x27860C10
glabel D_80B2C288
/* 000662 0x80B2C288 */ .word	0x0E27840C
/* 000663 0x80B2C28C */ .word	0x0E00FF2B
/* 000664 0x80B2C290 */ .word	0x00000031
/* 000665 0x80B2C294 */ .word	0x00392800
/* 000666 0x80B2C298 */ .word	0x0A122C27
/* 000667 0x80B2C29C */ .word	0xA40C2F00
/* 000668 0x80B2C2A0 */ .word	0x000C1012
/* 000669 0x80B2C2A4 */ .word	0x2C27870C
/* 000670 0x80B2C2A8 */ .word	0x2F00000C
/* 000671 0x80B2C2AC */ .word	0x111B042A
/* 000672 0x80B2C2B0 */ .word	0x002F001B
/* 000673 0x80B2C2B4 */ .word	0x8000080F
/* 000674 0x80B2C2B8 */ .word	0x27882D00
/* 000675 0x80B2C2BC */ .word	0x180C100F
/* 000676 0x80B2C2C0 */ .word	0x27892D00
/* 000677 0x80B2C2C4 */ .word	0x180C1012
/* 000678 0x80B2C2C8 */ .word	0x2C27850C
/* 000679 0x80B2C2CC */ .word	0x2FFFD20E
/* 000680 0x80B2C2D0 */ .word	0x27860C10
glabel D_80B2C2D4
/* 000681 0x80B2C2D4 */ .word	0x0E27840C
/* 000682 0x80B2C2D8 */ .word	0x0E00FF2B
/* 000683 0x80B2C2DC */ .word	0x00000031
/* 000684 0x80B2C2E0 */ .word	0x00392800
/* 000685 0x80B2C2E4 */ .word	0x0A122C27
/* 000686 0x80B2C2E8 */ .word	0xA40C2F00
/* 000687 0x80B2C2EC */ .word	0x000C1012
/* 000688 0x80B2C2F0 */ .word	0x2C27870C
/* 000689 0x80B2C2F4 */ .word	0x2F00000C
/* 000690 0x80B2C2F8 */ .word	0x111B082A
/* 000691 0x80B2C2FC */ .word	0x002F001C
/* 000692 0x80B2C300 */ .word	0x0100080F
/* 000693 0x80B2C304 */ .word	0x27882D00
/* 000694 0x80B2C308 */ .word	0x180C100F
/* 000695 0x80B2C30C */ .word	0x27892D00
/* 000696 0x80B2C310 */ .word	0x180C1012
/* 000697 0x80B2C314 */ .word	0x2C27850C
/* 000698 0x80B2C318 */ .word	0x2FFFD20E
/* 000699 0x80B2C31C */ .word	0x27860C10
glabel D_80B2C320
/* 000700 0x80B2C320 */ .word	0x0E27840C
/* 000701 0x80B2C324 */ .word	0x0E00FF2B
/* 000702 0x80B2C328 */ .word	0x00000031
/* 000703 0x80B2C32C */ .word	0x00392800
/* 000704 0x80B2C330 */ .word	0x0A122C27
/* 000705 0x80B2C334 */ .word	0xA40C2F00
/* 000706 0x80B2C338 */ .word	0x000C1012
/* 000707 0x80B2C33C */ .word	0x2C27870C
/* 000708 0x80B2C340 */ .word	0x2F00000C
/* 000709 0x80B2C344 */ .word	0x111B102A
/* 000710 0x80B2C348 */ .word	0x002F001C
/* 000711 0x80B2C34C */ .word	0x0200080F
/* 000712 0x80B2C350 */ .word	0x27882D00
/* 000713 0x80B2C354 */ .word	0x180C100F
/* 000714 0x80B2C358 */ .word	0x27892D00
/* 000715 0x80B2C35C */ .word	0x180C1012
/* 000716 0x80B2C360 */ .word	0x2C27850C
/* 000717 0x80B2C364 */ .word	0x2FFFD20E
/* 000718 0x80B2C368 */ .word	0x27860C10
glabel D_80B2C36C
/* 000719 0x80B2C36C */ .word	0x0E27840C
/* 000720 0x80B2C370 */ .word	0x0E00FF2B
/* 000721 0x80B2C374 */ .word	0x00000031
/* 000722 0x80B2C378 */ .word	0x00392800
/* 000723 0x80B2C37C */ .word	0x0A122C27
/* 000724 0x80B2C380 */ .word	0xA40C2F00
/* 000725 0x80B2C384 */ .word	0x000C1012
/* 000726 0x80B2C388 */ .word	0x2C27870C
/* 000727 0x80B2C38C */ .word	0x2F00000C
/* 000728 0x80B2C390 */ .word	0x111B202A
/* 000729 0x80B2C394 */ .word	0x002F001C
/* 000730 0x80B2C398 */ .word	0x0400080F
/* 000731 0x80B2C39C */ .word	0x27882D00
/* 000732 0x80B2C3A0 */ .word	0x180C100F
/* 000733 0x80B2C3A4 */ .word	0x27892D00
/* 000734 0x80B2C3A8 */ .word	0x180C1012
/* 000735 0x80B2C3AC */ .word	0x2C27850C
/* 000736 0x80B2C3B0 */ .word	0x2FFFD20E
/* 000737 0x80B2C3B4 */ .word	0x27860C10
glabel D_80B2C3B8
/* 000738 0x80B2C3B8 */ .word	0x0E27A10C
/* 000739 0x80B2C3BC */ .word	0x0F27A20C
/* 000740 0x80B2C3C0 */ .word	0x12005108
/* 000741 0x80B2C3C4 */ .word	0x000F0600
/* 000742 0x80B2C3C8 */ .word	0x0C000013
/* 000743 0x80B2C3CC */ .word	0x000C0C11
/* 000744 0x80B2C3D0 */ .word	0x51080700
/* 000745 0x80B2C3D4 */ .word	0x0C060001
/* 000746 0x80B2C3D8 */ .word	0x00001300
/* 000747 0x80B2C3DC */ .word	0x010C0700
/* 000748 0x80B2C3E0 */ .word	0x000E27A3
/* 000749 0x80B2C3E4 */ .word	0x0C161000
glabel D_80B2C3E8
/* 000750 0x80B2C3E8 */ .word	0x2C27870C
/* 000751 0x80B2C3EC */ .word	0x111B022A
/* 000752 0x80B2C3F0 */ .word	0x002F001B
/* 000753 0x80B2C3F4 */ .word	0x4000080F
/* 000754 0x80B2C3F8 */ .word	0x27882D00
/* 000755 0x80B2C3FC */ .word	0x180C100F
/* 000756 0x80B2C400 */ .word	0x27892D00
/* 000757 0x80B2C404 */ .word	0x180C1000
glabel D_80B2C408
/* 000758 0x80B2C408 */ .word	0x2C27870C
/* 000759 0x80B2C40C */ .word	0x111B042A
/* 000760 0x80B2C410 */ .word	0x002F001B
/* 000761 0x80B2C414 */ .word	0x8000080F
/* 000762 0x80B2C418 */ .word	0x27882D00
/* 000763 0x80B2C41C */ .word	0x180C100F
/* 000764 0x80B2C420 */ .word	0x27892D00
/* 000765 0x80B2C424 */ .word	0x180C1000
glabel D_80B2C428
/* 000766 0x80B2C428 */ .word	0x2C27870C
/* 000767 0x80B2C42C */ .word	0x111B082A
/* 000768 0x80B2C430 */ .word	0x002F001C
/* 000769 0x80B2C434 */ .word	0x0100080F
/* 000770 0x80B2C438 */ .word	0x27882D00
/* 000771 0x80B2C43C */ .word	0x180C100F
/* 000772 0x80B2C440 */ .word	0x27892D00
/* 000773 0x80B2C444 */ .word	0x180C1000
glabel D_80B2C448
/* 000774 0x80B2C448 */ .word	0x2C27870C
/* 000775 0x80B2C44C */ .word	0x111B102A
/* 000776 0x80B2C450 */ .word	0x002F001C
/* 000777 0x80B2C454 */ .word	0x0200080F
/* 000778 0x80B2C458 */ .word	0x27882D00
/* 000779 0x80B2C45C */ .word	0x180C100F
/* 000780 0x80B2C460 */ .word	0x27892D00
/* 000781 0x80B2C464 */ .word	0x180C1000
glabel D_80B2C468
/* 000782 0x80B2C468 */ .word	0x2C27870C
/* 000783 0x80B2C46C */ .word	0x111B202A
/* 000784 0x80B2C470 */ .word	0x002F001C
/* 000785 0x80B2C474 */ .word	0x0400080F
/* 000786 0x80B2C478 */ .word	0x27882D00
/* 000787 0x80B2C47C */ .word	0x180C100F
/* 000788 0x80B2C480 */ .word	0x27892D00
/* 000789 0x80B2C484 */ .word	0x180C1000
glabel D_80B2C488
/* 000790 0x80B2C488 */ .word	0x2C27A40C
/* 000791 0x80B2C48C */ .word	0x10000000
glabel D_80B2C490
/* 000792 0x80B2C490 */ .word	0x2C27850C
/* 000793 0x80B2C494 */ .word	0x10000000
glabel D_80B2C498
/* 000794 0x80B2C498 */ .word	0x01F20600
/* 000795 0x80B2C49C */ .word	0x00000001
/* 000796 0x80B2C4A0 */ .word	0x01CB0000
/* 000797 0x80B2C4A4 */ .word	0x00000220
/* 000798 0x80B2C4A8 */ .word	EnPst_Init
/* 000799 0x80B2C4AC */ .word	EnPst_Destroy
/* 000800 0x80B2C4B0 */ .word	EnPst_Update
/* 000801 0x80B2C4B4 */ .word	EnPst_Draw
glabel D_80B2C4B8
/* 000802 0x80B2C4B8 */ .word	0x01000039
/* 000803 0x80B2C4BC */ .word	0x10010000
/* 000804 0x80B2C4C0 */ .word	0x01000000
/* 000805 0x80B2C4C4 */ .word	0x00000000
/* 000806 0x80B2C4C8 */ .word	0x00000000
/* 000807 0x80B2C4CC */ .word	0x00000000
/* 000808 0x80B2C4D0 */ .word	0x00000000
/* 000809 0x80B2C4D4 */ .word	0x00000100
/* 000810 0x80B2C4D8 */ .word	0x001C0048
/* 000811 0x80B2C4DC */ .word	0x00000000
/* 000812 0x80B2C4E0 */ .word	0x00000000
glabel D_80B2C4E4
/* 000813 0x80B2C4E4 */ .word	0x01000000
/* 000814 0x80B2C4E8 */ .word	0x00000000
/* 000815 0x80B2C4EC */ .word	0xFF000000
glabel D_80B2C4F0
/* 000816 0x80B2C4F0 */ .word	0x06000018
/* 000817 0x80B2C4F4 */ .word	0x3F800000
/* 000818 0x80B2C4F8 */ .word	0x0000FFFF
/* 000819 0x80B2C4FC */ .word	0x02000000
glabel D_80B2C500
/* 000820 0x80B2C500 */ .word	D_80B2C200
/* 000821 0x80B2C504 */ .word	D_80B2C20C
/* 000822 0x80B2C508 */ .word	D_80B2C218
/* 000823 0x80B2C50C */ .word	D_80B2C224
/* 000824 0x80B2C510 */ .word	D_80B2C230
/* 000825 0x80B2C514 */ .word	0x00000000
/* 000826 0x80B2C518 */ .word	0x00000000
/* 000827 0x80B2C51C */ .word	0x00000000
glabel __switch_D_80B2C520
/* 000828 0x80B2C520 */ .word	.L_80B2B89C
/* 000829 0x80B2C524 */ .word	.L_80B2B8AC
/* 000830 0x80B2C528 */ .word	.L_80B2B8BC
/* 000831 0x80B2C52C */ .word	.L_80B2B8CC
/* 000832 0x80B2C530 */ .word	.L_80B2B8DC
glabel __switch_D_80B2C534
/* 000833 0x80B2C534 */ .word	.L_80B2B91C
/* 000834 0x80B2C538 */ .word	.L_80B2B92C
/* 000835 0x80B2C53C */ .word	.L_80B2B93C
/* 000836 0x80B2C540 */ .word	.L_80B2B94C
/* 000837 0x80B2C544 */ .word	.L_80B2B95C
glabel __switch_D_80B2C548
/* 000838 0x80B2C548 */ .word	.L_80B2BB08
/* 000839 0x80B2C54C */ .word	.L_80B2BB14
/* 000840 0x80B2C550 */ .word	.L_80B2BB20
/* 000841 0x80B2C554 */ .word	.L_80B2BB2C
/* 000842 0x80B2C558 */ .word	.L_80B2BB38
glabel __switch_D_80B2C55C
/* 000843 0x80B2C55C */ .word	.L_80B2BBAC
/* 000844 0x80B2C560 */ .word	.L_80B2BBB8
/* 000845 0x80B2C564 */ .word	.L_80B2BBC4
/* 000846 0x80B2C568 */ .word	.L_80B2BBD0
/* 000847 0x80B2C56C */ .word	.L_80B2BBDC
glabel enPstOverlayInfo
/* 000848 0x80B2C570 */ .word	0x000009D0
/* 000849 0x80B2C574 */ .word	0x00000320
/* 000850 0x80B2C578 */ .word	0x00000050
/* 000851 0x80B2C57C */ .word	0x00000000
/* 000852 0x80B2C580 */ .word	0x0000005A
glabel enPstOverlayRelocations
/* 000853 0x80B2C584 */ .word	0x45000058
/* 000854 0x80B2C588 */ .word	0x46000060
/* 000855 0x80B2C58C */ .word	0x450000D8
/* 000856 0x80B2C590 */ .word	0x460000E0
/* 000857 0x80B2C594 */ .word	0x45000298
/* 000858 0x80B2C598 */ .word	0x460002A0
/* 000859 0x80B2C59C */ .word	0x450002C4
/* 000860 0x80B2C5A0 */ .word	0x460002CC
/* 000861 0x80B2C5A4 */ .word	0x450002D8
/* 000862 0x80B2C5A8 */ .word	0x460002E0
/* 000863 0x80B2C5AC */ .word	0x450002E4
/* 000864 0x80B2C5B0 */ .word	0x460002EC
/* 000865 0x80B2C5B4 */ .word	0x450002F0
/* 000866 0x80B2C5B8 */ .word	0x460002F8
/* 000867 0x80B2C5BC */ .word	0x450002FC
/* 000868 0x80B2C5C0 */ .word	0x46000304
/* 000869 0x80B2C5C4 */ .word	0x45000308
/* 000870 0x80B2C5C8 */ .word	0x46000310
/* 000871 0x80B2C5CC */ .word	0x45000338
/* 000872 0x80B2C5D0 */ .word	0x46000340
/* 000873 0x80B2C5D4 */ .word	0x4500032C
/* 000874 0x80B2C5D8 */ .word	0x46000348
/* 000875 0x80B2C5DC */ .word	0x45000350
/* 000876 0x80B2C5E0 */ .word	0x46000354
/* 000877 0x80B2C5E4 */ .word	0x45000368
/* 000878 0x80B2C5E8 */ .word	0x46000370
/* 000879 0x80B2C5EC */ .word	0x4500037C
/* 000880 0x80B2C5F0 */ .word	0x46000384
/* 000881 0x80B2C5F4 */ .word	0x45000388
/* 000882 0x80B2C5F8 */ .word	0x46000390
/* 000883 0x80B2C5FC */ .word	0x45000394
/* 000884 0x80B2C600 */ .word	0x4600039C
/* 000885 0x80B2C604 */ .word	0x450003A0
/* 000886 0x80B2C608 */ .word	0x460003A8
/* 000887 0x80B2C60C */ .word	0x450003AC
/* 000888 0x80B2C610 */ .word	0x460003B4
/* 000889 0x80B2C614 */ .word	0x44000460
/* 000890 0x80B2C618 */ .word	0x44000494
/* 000891 0x80B2C61C */ .word	0x4500049C
/* 000892 0x80B2C620 */ .word	0x460004A0
/* 000893 0x80B2C624 */ .word	0x44000530
/* 000894 0x80B2C628 */ .word	0x4500057C
/* 000895 0x80B2C62C */ .word	0x4600058C
/* 000896 0x80B2C630 */ .word	0x440005BC
/* 000897 0x80B2C634 */ .word	0x4400060C
/* 000898 0x80B2C638 */ .word	0x44000654
/* 000899 0x80B2C63C */ .word	0x440006A8
/* 000900 0x80B2C640 */ .word	0x450006E8
/* 000901 0x80B2C644 */ .word	0x460006EC
/* 000902 0x80B2C648 */ .word	0x4500076C
/* 000903 0x80B2C64C */ .word	0x46000770
/* 000904 0x80B2C650 */ .word	0x4500078C
/* 000905 0x80B2C654 */ .word	0x46000790
/* 000906 0x80B2C658 */ .word	0x450007B0
/* 000907 0x80B2C65C */ .word	0x460007B4
/* 000908 0x80B2C660 */ .word	0x450007DC
/* 000909 0x80B2C664 */ .word	0x460007E0
/* 000910 0x80B2C668 */ .word	0x44000860
/* 000911 0x80B2C66C */ .word	0x440008D0
/* 000912 0x80B2C670 */ .word	0x45000994
/* 000913 0x80B2C674 */ .word	0x46000998
/* 000914 0x80B2C678 */ .word	0x820002A8
/* 000915 0x80B2C67C */ .word	0x820002AC
/* 000916 0x80B2C680 */ .word	0x820002B0
/* 000917 0x80B2C684 */ .word	0x820002B4
/* 000918 0x80B2C688 */ .word	0x82000300
/* 000919 0x80B2C68C */ .word	0x82000304
/* 000920 0x80B2C690 */ .word	0x82000308
/* 000921 0x80B2C694 */ .word	0x8200030C
/* 000922 0x80B2C698 */ .word	0x82000310
/* 000923 0x80B2C69C */ .word	0xC2000000
/* 000924 0x80B2C6A0 */ .word	0xC2000004
/* 000925 0x80B2C6A4 */ .word	0xC2000008
/* 000926 0x80B2C6A8 */ .word	0xC200000C
/* 000927 0x80B2C6AC */ .word	0xC2000010
/* 000928 0x80B2C6B0 */ .word	0xC2000014
/* 000929 0x80B2C6B4 */ .word	0xC2000018
/* 000930 0x80B2C6B8 */ .word	0xC200001C
/* 000931 0x80B2C6BC */ .word	0xC2000020
/* 000932 0x80B2C6C0 */ .word	0xC2000024
/* 000933 0x80B2C6C4 */ .word	0xC2000028
/* 000934 0x80B2C6C8 */ .word	0xC200002C
/* 000935 0x80B2C6CC */ .word	0xC2000030
/* 000936 0x80B2C6D0 */ .word	0xC2000034
/* 000937 0x80B2C6D4 */ .word	0xC2000038
/* 000938 0x80B2C6D8 */ .word	0xC200003C
/* 000939 0x80B2C6DC */ .word	0xC2000040
/* 000940 0x80B2C6E0 */ .word	0xC2000044
/* 000941 0x80B2C6E4 */ .word	0xC2000048
/* 000942 0x80B2C6E8 */ .word	0xC200004C
glabel enPstOverlayInfoOffset
/* 000943 0x80B2C6EC */ .word	0x00000180
