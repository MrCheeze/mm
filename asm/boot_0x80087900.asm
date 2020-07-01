.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80087900
/* 007720 0x80087900 27BDFFE8 */ addiu	$sp, $sp, -24
/* 007721 0x80087904 AFA5001C */ sw	$a1, 0X1C($sp)
/* 007722 0x80087908 00802825 */ move	$a1, $a0
/* 007723 0x8008790C AFBF0014 */ sw	$ra, 0X14($sp)
/* 007724 0x80087910 AFA40018 */ sw	$a0, 0X18($sp)
/* 007725 0x80087914 00C03825 */ move	$a3, $a2
/* 007726 0x80087918 8FA6001C */ lw	$a2, 0X1C($sp)
/* 007727 0x8008791C 0C023814 */ jal	_Printf
/* 007728 0x80087920 8C840000 */ lw	$a0, 0X0($a0)
/* 007729 0x80087924 8FBF0014 */ lw	$ra, 0X14($sp)
/* 007730 0x80087928 27BD0018 */ addiu	$sp, $sp, 24
/* 007731 0x8008792C 03E00008 */ jr	$ra
/* 007732 0x80087930 00000000 */ nop

glabel func_80087934
/* 007733 0x80087934 27BDFFE0 */ addiu	$sp, $sp, -32
/* 007734 0x80087938 AFBF0014 */ sw	$ra, 0X14($sp)
/* 007735 0x8008793C AFA60028 */ sw	$a2, 0X28($sp)
/* 007736 0x80087940 AFA50024 */ sw	$a1, 0X24($sp)
/* 007737 0x80087944 AFA7002C */ sw	$a3, 0X2C($sp)
/* 007738 0x80087948 0C021E40 */ jal	func_80087900
/* 007739 0x8008794C 27A60028 */ addiu	$a2, $sp, 40
/* 007740 0x80087950 8FBF0014 */ lw	$ra, 0X14($sp)
/* 007741 0x80087954 27BD0020 */ addiu	$sp, $sp, 32
/* 007742 0x80087958 03E00008 */ jr	$ra
/* 007743 0x8008795C 00000000 */ nop

glabel wait_cycles
/* 007744 0x80087960 27BDFF98 */ addiu	$sp, $sp, -104
/* 007745 0x80087964 AFBF0024 */ sw	$ra, 0X24($sp)
/* 007746 0x80087968 AFA40068 */ sw	$a0, 0X68($sp)
/* 007747 0x8008796C AFA5006C */ sw	$a1, 0X6C($sp)
/* 007748 0x80087970 27A5004C */ addiu	$a1, $sp, 76
/* 007749 0x80087974 27A40050 */ addiu	$a0, $sp, 80
/* 007750 0x80087978 0C023C90 */ jal	osCreateMesgQueue
/* 007751 0x8008797C 24060001 */ li	$a2, 1
/* 007752 0x80087980 240E0000 */ li	$t6, 0
/* 007753 0x80087984 240F0000 */ li	$t7, 0
/* 007754 0x80087988 27B80050 */ addiu	$t8, $sp, 80
/* 007755 0x8008798C AFB80018 */ sw	$t8, 0X18($sp)
/* 007756 0x80087990 AFAF0014 */ sw	$t7, 0X14($sp)
/* 007757 0x80087994 AFAE0010 */ sw	$t6, 0X10($sp)
/* 007758 0x80087998 27A40028 */ addiu	$a0, $sp, 40
/* 007759 0x8008799C 8FA60068 */ lw	$a2, 0X68($sp)
/* 007760 0x800879A0 8FA7006C */ lw	$a3, 0X6C($sp)
/* 007761 0x800879A4 0C025054 */ jal	osSetTimer
/* 007762 0x800879A8 AFA0001C */ sw	$zero, 0X1C($sp)
/* 007763 0x800879AC 27A40050 */ addiu	$a0, $sp, 80
/* 007764 0x800879B0 00002825 */ move	$a1, $zero
/* 007765 0x800879B4 0C021FB4 */ jal	osRecvMesg
/* 007766 0x800879B8 24060001 */ li	$a2, 1
/* 007767 0x800879BC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 007768 0x800879C0 27BD0068 */ addiu	$sp, $sp, 104
/* 007769 0x800879C4 03E00008 */ jr	$ra
/* 007770 0x800879C8 00000000 */ nop

glabel func_800879CC
/* 007771 0x800879CC 27BDFFE8 */ addiu	$sp, $sp, -24
/* 007772 0x800879D0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 007773 0x800879D4 AFA40018 */ sw	$a0, 0X18($sp)
/* 007774 0x800879D8 00802825 */ move	$a1, $a0
/* 007775 0x800879DC 24040000 */ li	$a0, 0
/* 007776 0x800879E0 24060000 */ li	$a2, 0
/* 007777 0x800879E4 0C02226A */ jal	__ll_mul
/* 007778 0x800879E8 24070003 */ li	$a3, 3
/* 007779 0x800879EC 00402025 */ move	$a0, $v0
/* 007780 0x800879F0 00602825 */ move	$a1, $v1
/* 007781 0x800879F4 24060000 */ li	$a2, 0
/* 007782 0x800879F8 0C02222A */ jal	__ull_div
/* 007783 0x800879FC 24070040 */ li	$a3, 64
/* 007784 0x80087A00 00402025 */ move	$a0, $v0
/* 007785 0x80087A04 0C021E58 */ jal	wait_cycles
/* 007786 0x80087A08 00602825 */ move	$a1, $v1
/* 007787 0x80087A0C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 007788 0x80087A10 27BD0018 */ addiu	$sp, $sp, 24
/* 007789 0x80087A14 03E00008 */ jr	$ra
/* 007790 0x80087A18 00000000 */ nop

glabel func_80087A1C
/* 007791 0x80087A1C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 007792 0x80087A20 AFBF0014 */ sw	$ra, 0X14($sp)
/* 007793 0x80087A24 AFA40018 */ sw	$a0, 0X18($sp)
/* 007794 0x80087A28 00802825 */ move	$a1, $a0
/* 007795 0x80087A2C 24040000 */ li	$a0, 0
/* 007796 0x80087A30 24060000 */ li	$a2, 0
/* 007797 0x80087A34 0C02226A */ jal	__ll_mul
/* 007798 0x80087A38 24070BB8 */ li	$a3, 3000
/* 007799 0x80087A3C 00402025 */ move	$a0, $v0
/* 007800 0x80087A40 00602825 */ move	$a1, $v1
/* 007801 0x80087A44 24060000 */ li	$a2, 0
/* 007802 0x80087A48 0C02222A */ jal	__ull_div
/* 007803 0x80087A4C 24070040 */ li	$a3, 64
/* 007804 0x80087A50 00402025 */ move	$a0, $v0
/* 007805 0x80087A54 0C021E58 */ jal	wait_cycles
/* 007806 0x80087A58 00602825 */ move	$a1, $v1
/* 007807 0x80087A5C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 007808 0x80087A60 27BD0018 */ addiu	$sp, $sp, 24
/* 007809 0x80087A64 03E00008 */ jr	$ra
/* 007810 0x80087A68 00000000 */ nop

glabel func_80087A6C
/* 007811 0x80087A6C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 007812 0x80087A70 AFBF0014 */ sw	$ra, 0X14($sp)
/* 007813 0x80087A74 AFA40018 */ sw	$a0, 0X18($sp)
/* 007814 0x80087A78 00802825 */ move	$a1, $a0
/* 007815 0x80087A7C 3C0702CB */ lui	$a3, 0x02CB
/* 007816 0x80087A80 34E74178 */ ori	$a3, $a3, 0X4178
/* 007817 0x80087A84 24040000 */ li	$a0, 0
/* 007818 0x80087A88 0C02226A */ jal	__ll_mul
/* 007819 0x80087A8C 24060000 */ li	$a2, 0
/* 007820 0x80087A90 00402025 */ move	$a0, $v0
/* 007821 0x80087A94 00602825 */ move	$a1, $v1
/* 007822 0x80087A98 24060000 */ li	$a2, 0
/* 007823 0x80087A9C 0C02222A */ jal	__ull_div
/* 007824 0x80087AA0 240703E8 */ li	$a3, 1000
/* 007825 0x80087AA4 00402025 */ move	$a0, $v0
/* 007826 0x80087AA8 0C021E58 */ jal	wait_cycles
/* 007827 0x80087AAC 00602825 */ move	$a1, $v1
/* 007828 0x80087AB0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 007829 0x80087AB4 27BD0018 */ addiu	$sp, $sp, 24
/* 007830 0x80087AB8 03E00008 */ jr	$ra
/* 007831 0x80087ABC 00000000 */ nop

glabel func_80087AC0
/* 007832 0x80087AC0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 007833 0x80087AC4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 007834 0x80087AC8 AFA40018 */ sw	$a0, 0X18($sp)
/* 007835 0x80087ACC 00802825 */ move	$a1, $a0
/* 007836 0x80087AD0 3C0702CB */ lui	$a3, 0x02CB
/* 007837 0x80087AD4 34E74178 */ ori	$a3, $a3, 0X4178
/* 007838 0x80087AD8 24040000 */ li	$a0, 0
/* 007839 0x80087ADC 0C02226A */ jal	__ll_mul
/* 007840 0x80087AE0 24060000 */ li	$a2, 0
/* 007841 0x80087AE4 00402025 */ move	$a0, $v0
/* 007842 0x80087AE8 0C021E58 */ jal	wait_cycles
/* 007843 0x80087AEC 00602825 */ move	$a1, $v1
/* 007844 0x80087AF0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 007845 0x80087AF4 27BD0018 */ addiu	$sp, $sp, 24
/* 007846 0x80087AF8 03E00008 */ jr	$ra
/* 007847 0x80087AFC 00000000 */ nop
