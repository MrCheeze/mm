.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80944040
/* 000740 0x80944040 */ .word	0x009C0400
/* 000741 0x80944044 */ .word	0x00000009
/* 000742 0x80944048 */ .word	0x00F10000
/* 000743 0x8094404C */ .word	0x000002E8
/* 000744 0x80944050 */ .word	EnDaiku_Init
/* 000745 0x80944054 */ .word	EnDaiku_Destroy
/* 000746 0x80944058 */ .word	EnDaiku_Update
/* 000747 0x8094405C */ .word	EnDaiku_Draw
glabel D_80944060
/* 000748 0x80944060 */ .word	0x061C061A
/* 000749 0x80944064 */ .word	0x061B061C
/* 000750 0x80944068 */ .word	0x061C061D
/* 000751 0x8094406C */ .word	0x061E061F
/* 000752 0x80944070 */ .word	0x061C0620
/* 000753 0x80944074 */ .word	0x06210622
glabel D_80944078
/* 000754 0x80944078 */ .word	0x0A000039
/* 000755 0x8094407C */ .word	0x20010000
/* 000756 0x80944080 */ .word	0x00000000
/* 000757 0x80944084 */ .word	0x00000000
/* 000758 0x80944088 */ .word	0x00000000
/* 000759 0x8094408C */ .word	0xF7CFFFFF
/* 000760 0x80944090 */ .word	0x00000000
/* 000761 0x80944094 */ .word	0x00000100
/* 000762 0x80944098 */ .word	0x0014003C
/* 000763 0x8094409C */ .word	0x00000000
/* 000764 0x809440A0 */ .word	0x00000000
glabel D_809440A4
/* 000765 0x809440A4 */ .word	0x06002FA0
/* 000766 0x809440A8 */ .word	0x0600ACD0
/* 000767 0x809440AC */ .word	0x0600C92C
/* 000768 0x809440B0 */ .word	0x06000C44
/* 000769 0x809440B4 */ .word	0x0600C234
/* 000770 0x809440B8 */ .word	0x06000600
/* 000771 0x809440BC */ .word	0x06001114
/* 000772 0x809440C0 */ .word	0x0600B690
/* 000773 0x809440C4 */ .word	0x0600BEAC
glabel D_809440C8
/* 000774 0x809440C8 */ .word	0x00000000
/* 000775 0x809440CC */ .word	0x02000002
/* 000776 0x809440D0 */ .word	0x02000000
glabel D_809440D4
/* 000777 0x809440D4 */ .word	0x060070C0
/* 000778 0x809440D8 */ .word	0x06006FB0
/* 000779 0x809440DC */ .word	0x06006E80
/* 000780 0x809440E0 */ .word	0x06006D70
/* 000781 0x809440E4 */ .word	0x00000000
/* 000782 0x809440E8 */ .word	0x00000000
/* 000783 0x809440EC */ .word	0x00000000
glabel D_809440F0
/* 000784 0x809440F0 */ .word	0x44228000
glabel __switch_D_809440F4
/* 000785 0x809440F4 */ .word	.L_80943F30
/* 000786 0x809440F8 */ .word	.L_80943F58
/* 000787 0x809440FC */ .word	.L_80943F80
/* 000788 0x80944100 */ .word	.L_80943FA8
/* 000789 0x80944104 */ .word	.L_80943FD0
/* 000790 0x80944108 */ .word	0x00000000
/* 000791 0x8094410C */ .word	0x00000000
glabel enDaikuOverlayInfo
/* 000792 0x80944110 */ .word	0x00000B90
/* 000793 0x80944114 */ .word	0x000000B0
/* 000794 0x80944118 */ .word	0x00000020
/* 000795 0x8094411C */ .word	0x00000000
/* 000796 0x80944120 */ .word	0x0000002C
glabel enDaikuOverlayRelocations
/* 000797 0x80944124 */ .word	0x45000038
/* 000798 0x80944128 */ .word	0x4600003C
/* 000799 0x8094412C */ .word	0x44000244
/* 000800 0x80944130 */ .word	0x450002A0
/* 000801 0x80944134 */ .word	0x460002A4
/* 000802 0x80944138 */ .word	0x450002CC
/* 000803 0x8094413C */ .word	0x460002F4
/* 000804 0x80944140 */ .word	0x440003C8
/* 000805 0x80944144 */ .word	0x440003D8
/* 000806 0x80944148 */ .word	0x440003E8
/* 000807 0x8094414C */ .word	0x450003F8
/* 000808 0x80944150 */ .word	0x46000420
/* 000809 0x80944154 */ .word	0x45000410
/* 000810 0x80944158 */ .word	0x46000414
/* 000811 0x8094415C */ .word	0x450004B4
/* 000812 0x80944160 */ .word	0x460004D0
/* 000813 0x80944164 */ .word	0x440004E8
/* 000814 0x80944168 */ .word	0x44000548
/* 000815 0x8094416C */ .word	0x44000558
/* 000816 0x80944170 */ .word	0x44000680
/* 000817 0x80944174 */ .word	0x45000710
/* 000818 0x80944178 */ .word	0x46000718
/* 000819 0x8094417C */ .word	0x44000790
/* 000820 0x80944180 */ .word	0x440007A0
/* 000821 0x80944184 */ .word	0x440007D8
/* 000822 0x80944188 */ .word	0x4500091C
/* 000823 0x8094418C */ .word	0x46000920
/* 000824 0x80944190 */ .word	0x450009CC
/* 000825 0x80944194 */ .word	0x460009EC
/* 000826 0x80944198 */ .word	0x45000A6C
/* 000827 0x8094419C */ .word	0x46000A74
/* 000828 0x809441A0 */ .word	0x45000B4C
/* 000829 0x809441A4 */ .word	0x46000B58
/* 000830 0x809441A8 */ .word	0x45000B50
/* 000831 0x809441AC */ .word	0x46000B54
/* 000832 0x809441B0 */ .word	0x82000010
/* 000833 0x809441B4 */ .word	0x82000014
/* 000834 0x809441B8 */ .word	0x82000018
/* 000835 0x809441BC */ .word	0x8200001C
/* 000836 0x809441C0 */ .word	0xC2000004
/* 000837 0x809441C4 */ .word	0xC2000008
/* 000838 0x809441C8 */ .word	0xC200000C
/* 000839 0x809441CC */ .word	0xC2000010
/* 000840 0x809441D0 */ .word	0xC2000014
/* 000841 0x809441D4 */ .word	0x00000000
/* 000842 0x809441D8 */ .word	0x00000000
glabel enDaikuOverlayInfoOffset
/* 000843 0x809441DC */ .word	0x000000D0
