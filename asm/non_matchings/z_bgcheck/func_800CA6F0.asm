glabel func_800CA6F0
/* 037644 0x800CA6F0 27BDFFF8 */ addiu	$sp, $sp, -8
/* 037645 0x800CA6F4 44866000 */ mtc1	$a2, $f12
/* 037646 0x800CA6F8 44877000 */ mtc1	$a3, $f14
/* 037647 0x800CA6FC 8FA70020 */ lw	$a3, 0X20($sp)
/* 037648 0x800CA700 8FA6001C */ lw	$a2, 0X1C($sp)
/* 037649 0x800CA704 AFB00004 */ sw	$s0, 0X4($sp)
/* 037650 0x800CA708 AFA40008 */ sw	$a0, 0X8($sp)
/* 037651 0x800CA70C 24020032 */ li	$v0, 50
/* 037652 0x800CA710 ACC00000 */ sw	$zero, 0X0($a2)
/* 037653 0x800CA714 ACE20000 */ sw	$v0, 0X0($a3)
/* 037654 0x800CA718 8CA30000 */ lw	$v1, 0X0($a1)
/* 037655 0x800CA71C 94680024 */ lhu	$t0, 0X24($v1)
/* 037656 0x800CA720 11000005 */ beqz	$t0, .L_800CA738
/* 037657 0x800CA724 00000000 */ nop
/* 037658 0x800CA728 8C640028 */ lw	$a0, 0X28($v1)
/* 037659 0x800CA72C 00087100 */ sll	$t6, $t0, 4
/* 037660 0x800CA730 14800003 */ bnez	$a0, .L_800CA740
/* 037661 0x800CA734 008E4821 */ addu	$t1, $a0, $t6
.L_800CA738:
/* 037662 0x800CA738 100000A2 */ b	.L_800CA9C4
/* 037663 0x800CA73C 00001025 */ move	$v0, $zero
.L_800CA740:
/* 037664 0x800CA740 0089082B */ sltu	$at, $a0, $t1
/* 037665 0x800CA744 1020003F */ beqz	$at, .L_800CA844
/* 037666 0x800CA748 00801825 */ move	$v1, $a0
/* 037667 0x800CA74C 8FAF0008 */ lw	$t7, 0X8($sp)
/* 037668 0x800CA750 3C0A0002 */ lui	$t2, 0x0002
/* 037669 0x800CA754 3C100008 */ lui	$s0, 0x0008
/* 037670 0x800CA758 014F5021 */ addu	$t2, $t2, $t7
/* 037671 0x800CA75C 814A86E0 */ lb	$t2, -0X7920($t2)
/* 037672 0x800CA760 240B003F */ li	$t3, 63
/* 037673 0x800CA764 8C68000C */ lw	$t0, 0XC($v1)
.L_800CA768:
/* 037674 0x800CA768 00082343 */ sra	$a0, $t0, 13
/* 037675 0x800CA76C 3084003F */ andi	$a0, $a0, 0X3F
/* 037676 0x800CA770 108A0003 */ beq	$a0, $t2, .L_800CA780
/* 037677 0x800CA774 0110C024 */ and	$t8, $t0, $s0
/* 037678 0x800CA778 548B002F */ bnel	$a0, $t3, .L_800CA838
/* 037679 0x800CA77C 24630010 */ addiu	$v1, $v1, 16
.L_800CA780:
/* 037680 0x800CA780 5300002D */ beqzl	$t8, .L_800CA838
/* 037681 0x800CA784 24630010 */ addiu	$v1, $v1, 16
/* 037682 0x800CA788 84640000 */ lh	$a0, 0X0($v1)
/* 037683 0x800CA78C 44842000 */ mtc1	$a0, $f4
/* 037684 0x800CA790 00000000 */ nop
/* 037685 0x800CA794 468021A0 */ cvt.s.w	$f6, $f4
/* 037686 0x800CA798 460C303C */ c.lt.s	$f6, $f12
/* 037687 0x800CA79C 00000000 */ nop
/* 037688 0x800CA7A0 45020025 */ bc1fl .L_800CA838
/* 037689 0x800CA7A4 24630010 */ addiu	$v1, $v1, 16
/* 037690 0x800CA7A8 84790006 */ lh	$t9, 0X6($v1)
/* 037691 0x800CA7AC 00997021 */ addu	$t6, $a0, $t9
/* 037692 0x800CA7B0 448E4000 */ mtc1	$t6, $f8
/* 037693 0x800CA7B4 00000000 */ nop
/* 037694 0x800CA7B8 468042A0 */ cvt.s.w	$f10, $f8
/* 037695 0x800CA7BC 460A603C */ c.lt.s	$f12, $f10
/* 037696 0x800CA7C0 00000000 */ nop
/* 037697 0x800CA7C4 4502001C */ bc1fl .L_800CA838
/* 037698 0x800CA7C8 24630010 */ addiu	$v1, $v1, 16
/* 037699 0x800CA7CC 84640004 */ lh	$a0, 0X4($v1)
/* 037700 0x800CA7D0 44848000 */ mtc1	$a0, $f16
/* 037701 0x800CA7D4 00000000 */ nop
/* 037702 0x800CA7D8 468084A0 */ cvt.s.w	$f18, $f16
/* 037703 0x800CA7DC 460E903C */ c.lt.s	$f18, $f14
/* 037704 0x800CA7E0 00000000 */ nop
/* 037705 0x800CA7E4 45020014 */ bc1fl .L_800CA838
/* 037706 0x800CA7E8 24630010 */ addiu	$v1, $v1, 16
/* 037707 0x800CA7EC 846F0008 */ lh	$t7, 0X8($v1)
/* 037708 0x800CA7F0 008FC021 */ addu	$t8, $a0, $t7
/* 037709 0x800CA7F4 44982000 */ mtc1	$t8, $f4
/* 037710 0x800CA7F8 00000000 */ nop
/* 037711 0x800CA7FC 468021A0 */ cvt.s.w	$f6, $f4
/* 037712 0x800CA800 4606703C */ c.lt.s	$f14, $f6
/* 037713 0x800CA804 00000000 */ nop
/* 037714 0x800CA808 4502000B */ bc1fl .L_800CA838
/* 037715 0x800CA80C 24630010 */ addiu	$v1, $v1, 16
/* 037716 0x800CA810 ACC30000 */ sw	$v1, 0X0($a2)
/* 037717 0x800CA814 84790002 */ lh	$t9, 0X2($v1)
/* 037718 0x800CA818 8FAE0018 */ lw	$t6, 0X18($sp)
/* 037719 0x800CA81C 24020001 */ li	$v0, 1
/* 037720 0x800CA820 44994000 */ mtc1	$t9, $f8
/* 037721 0x800CA824 00000000 */ nop
/* 037722 0x800CA828 468042A0 */ cvt.s.w	$f10, $f8
/* 037723 0x800CA82C 10000065 */ b	.L_800CA9C4
/* 037724 0x800CA830 E5CA0000 */ swc1	$f10, 0X0($t6)
/* 037725 0x800CA834 24630010 */ addiu	$v1, $v1, 16
.L_800CA838:
/* 037726 0x800CA838 0069082B */ sltu	$at, $v1, $t1
/* 037727 0x800CA83C 5420FFCA */ bnezl	$at, .L_800CA768
/* 037728 0x800CA840 8C68000C */ lw	$t0, 0XC($v1)
.L_800CA844:
/* 037729 0x800CA844 3C100008 */ lui	$s0, 0x0008
/* 037730 0x800CA848 00004025 */ move	$t0, $zero
/* 037731 0x800CA84C 00A04825 */ move	$t1, $a1
/* 037732 0x800CA850 240D0064 */ li	$t5, 100
.L_800CA854:
/* 037733 0x800CA854 952313DC */ lhu	$v1, 0X13DC($t1)
/* 037734 0x800CA858 306F0001 */ andi	$t7, $v1, 0X1
/* 037735 0x800CA85C 11E00055 */ beqz	$t7, .L_800CA9B4
/* 037736 0x800CA860 30780002 */ andi	$t8, $v1, 0X2
/* 037737 0x800CA864 57000054 */ bnezl	$t8, .L_800CA9B8
/* 037738 0x800CA868 25080001 */ addiu	$t0, $t0, 1
/* 037739 0x800CA86C 010D0019 */ multu	$t0, $t5
/* 037740 0x800CA870 8CAB144C */ lw	$t3, 0X144C($a1)
/* 037741 0x800CA874 0000C812 */ mflo	$t9
/* 037742 0x800CA878 00B92021 */ addu	$a0, $a1, $t9
/* 037743 0x800CA87C 8C980058 */ lw	$t8, 0X58($a0)
/* 037744 0x800CA880 948E0066 */ lhu	$t6, 0X66($a0)
/* 037745 0x800CA884 248A0054 */ addiu	$t2, $a0, 84
/* 037746 0x800CA888 97190024 */ lhu	$t9, 0X24($t8)
/* 037747 0x800CA88C 000E7900 */ sll	$t7, $t6, 4
/* 037748 0x800CA890 016F1821 */ addu	$v1, $t3, $t7
/* 037749 0x800CA894 00197100 */ sll	$t6, $t9, 4
/* 037750 0x800CA898 006E7821 */ addu	$t7, $v1, $t6
/* 037751 0x800CA89C 006F082B */ sltu	$at, $v1, $t7
/* 037752 0x800CA8A0 50200045 */ beqzl	$at, .L_800CA9B8
/* 037753 0x800CA8A4 25080001 */ addiu	$t0, $t0, 1
/* 037754 0x800CA8A8 8C78000C */ lw	$t8, 0XC($v1)
.L_800CA8AC:
/* 037755 0x800CA8AC 0310C824 */ and	$t9, $t8, $s0
/* 037756 0x800CA8B0 5720000A */ bnezl	$t9, .L_800CA8DC
/* 037757 0x800CA8B4 84640000 */ lh	$a0, 0X0($v1)
/* 037758 0x800CA8B8 954E0012 */ lhu	$t6, 0X12($t2)
/* 037759 0x800CA8BC 8D590004 */ lw	$t9, 0X4($t2)
/* 037760 0x800CA8C0 000E7900 */ sll	$t7, $t6, 4
/* 037761 0x800CA8C4 972E0024 */ lhu	$t6, 0X24($t9)
/* 037762 0x800CA8C8 016FC021 */ addu	$t8, $t3, $t7
/* 037763 0x800CA8CC 000E7900 */ sll	$t7, $t6, 4
/* 037764 0x800CA8D0 10000034 */ b	.L_800CA9A4
/* 037765 0x800CA8D4 030F2021 */ addu	$a0, $t8, $t7
/* 037766 0x800CA8D8 84640000 */ lh	$a0, 0X0($v1)
.L_800CA8DC:
/* 037767 0x800CA8DC 44848000 */ mtc1	$a0, $f16
/* 037768 0x800CA8E0 00000000 */ nop
/* 037769 0x800CA8E4 468084A0 */ cvt.s.w	$f18, $f16
/* 037770 0x800CA8E8 460C903C */ c.lt.s	$f18, $f12
/* 037771 0x800CA8EC 00000000 */ nop
/* 037772 0x800CA8F0 45020026 */ bc1fl .L_800CA98C
/* 037773 0x800CA8F4 95580012 */ lhu	$t8, 0X12($t2)
/* 037774 0x800CA8F8 84790006 */ lh	$t9, 0X6($v1)
/* 037775 0x800CA8FC 00997021 */ addu	$t6, $a0, $t9
/* 037776 0x800CA900 448E2000 */ mtc1	$t6, $f4
/* 037777 0x800CA904 00000000 */ nop
/* 037778 0x800CA908 468021A0 */ cvt.s.w	$f6, $f4
/* 037779 0x800CA90C 4606603C */ c.lt.s	$f12, $f6
/* 037780 0x800CA910 00000000 */ nop
/* 037781 0x800CA914 4502001D */ bc1fl .L_800CA98C
/* 037782 0x800CA918 95580012 */ lhu	$t8, 0X12($t2)
/* 037783 0x800CA91C 84640004 */ lh	$a0, 0X4($v1)
/* 037784 0x800CA920 44844000 */ mtc1	$a0, $f8
/* 037785 0x800CA924 00000000 */ nop
/* 037786 0x800CA928 468042A0 */ cvt.s.w	$f10, $f8
/* 037787 0x800CA92C 460E503C */ c.lt.s	$f10, $f14
/* 037788 0x800CA930 00000000 */ nop
/* 037789 0x800CA934 45020015 */ bc1fl .L_800CA98C
/* 037790 0x800CA938 95580012 */ lhu	$t8, 0X12($t2)
/* 037791 0x800CA93C 84780008 */ lh	$t8, 0X8($v1)
/* 037792 0x800CA940 00987821 */ addu	$t7, $a0, $t8
/* 037793 0x800CA944 448F8000 */ mtc1	$t7, $f16
/* 037794 0x800CA948 00000000 */ nop
/* 037795 0x800CA94C 468084A0 */ cvt.s.w	$f18, $f16
/* 037796 0x800CA950 4612703C */ c.lt.s	$f14, $f18
/* 037797 0x800CA954 00000000 */ nop
/* 037798 0x800CA958 4502000C */ bc1fl .L_800CA98C
/* 037799 0x800CA95C 95580012 */ lhu	$t8, 0X12($t2)
/* 037800 0x800CA960 ACC30000 */ sw	$v1, 0X0($a2)
/* 037801 0x800CA964 84790002 */ lh	$t9, 0X2($v1)
/* 037802 0x800CA968 8FAE0018 */ lw	$t6, 0X18($sp)
/* 037803 0x800CA96C 24020001 */ li	$v0, 1
/* 037804 0x800CA970 44992000 */ mtc1	$t9, $f4
/* 037805 0x800CA974 00000000 */ nop
/* 037806 0x800CA978 468021A0 */ cvt.s.w	$f6, $f4
/* 037807 0x800CA97C E5C60000 */ swc1	$f6, 0X0($t6)
/* 037808 0x800CA980 10000010 */ b	.L_800CA9C4
/* 037809 0x800CA984 ACE80000 */ sw	$t0, 0X0($a3)
/* 037810 0x800CA988 95580012 */ lhu	$t8, 0X12($t2)
.L_800CA98C:
/* 037811 0x800CA98C 8D4E0004 */ lw	$t6, 0X4($t2)
/* 037812 0x800CA990 00187900 */ sll	$t7, $t8, 4
/* 037813 0x800CA994 95D80024 */ lhu	$t8, 0X24($t6)
/* 037814 0x800CA998 016FC821 */ addu	$t9, $t3, $t7
/* 037815 0x800CA99C 00187900 */ sll	$t7, $t8, 4
/* 037816 0x800CA9A0 032F2021 */ addu	$a0, $t9, $t7
.L_800CA9A4:
/* 037817 0x800CA9A4 24630010 */ addiu	$v1, $v1, 16
/* 037818 0x800CA9A8 0064082B */ sltu	$at, $v1, $a0
/* 037819 0x800CA9AC 5420FFBF */ bnezl	$at, .L_800CA8AC
/* 037820 0x800CA9B0 8C78000C */ lw	$t8, 0XC($v1)
.L_800CA9B4:
/* 037821 0x800CA9B4 25080001 */ addiu	$t0, $t0, 1
.L_800CA9B8:
/* 037822 0x800CA9B8 1502FFA6 */ bne	$t0, $v0, .L_800CA854
/* 037823 0x800CA9BC 25290002 */ addiu	$t1, $t1, 2
/* 037824 0x800CA9C0 00001025 */ move	$v0, $zero
.L_800CA9C4:
/* 037825 0x800CA9C4 8FB00004 */ lw	$s0, 0X4($sp)
/* 037826 0x800CA9C8 03E00008 */ jr	$ra
/* 037827 0x800CA9CC 27BD0008 */ addiu	$sp, $sp, 8

