glabel func_800C76EC
/* 034571 0x800C76EC 27BDFF78 */ addiu	$sp, $sp, -136
/* 034572 0x800C76F0 AFB60050 */ sw	$s6, 0X50($sp)
/* 034573 0x800C76F4 AFB5004C */ sw	$s5, 0X4C($sp)
/* 034574 0x800C76F8 AFB00038 */ sw	$s0, 0X38($sp)
/* 034575 0x800C76FC 00808025 */ move	$s0, $a0
/* 034576 0x800C7700 3415FFFF */ ori	$s5, $zero, 0XFFFF
/* 034577 0x800C7704 00A0B025 */ move	$s6, $a1
/* 034578 0x800C7708 AFBF005C */ sw	$ra, 0X5C($sp)
/* 034579 0x800C770C AFBE0058 */ sw	$fp, 0X58($sp)
/* 034580 0x800C7710 AFB70054 */ sw	$s7, 0X54($sp)
/* 034581 0x800C7714 AFB40048 */ sw	$s4, 0X48($sp)
/* 034582 0x800C7718 AFB30044 */ sw	$s3, 0X44($sp)
/* 034583 0x800C771C AFB20040 */ sw	$s2, 0X40($sp)
/* 034584 0x800C7720 AFB1003C */ sw	$s1, 0X3C($sp)
/* 034585 0x800C7724 F7B80030 */ sdc1	$f24, 0X30($sp)
/* 034586 0x800C7728 F7B60028 */ sdc1	$f22, 0X28($sp)
/* 034587 0x800C772C F7B40020 */ sdc1	$f20, 0X20($sp)
/* 034588 0x800C7730 8E0E0030 */ lw	$t6, 0X30($s0)
/* 034589 0x800C7734 C6140010 */ lwc1	$f20, 0X10($s0)
/* 034590 0x800C7738 3C01801E */ lui	$at, %hi(D_801DCD98)
/* 034591 0x800C773C 95C60000 */ lhu	$a2, 0X0($t6)
/* 034592 0x800C7740 241E0001 */ li	$fp, 1
/* 034593 0x800C7744 24170002 */ li	$s7, 2
/* 034594 0x800C7748 16A60003 */ bne	$s5, $a2, .L_800C7758
/* 034595 0x800C774C 0006C080 */ sll	$t8, $a2, 2
/* 034596 0x800C7750 10000079 */ b	.L_800C7938
/* 034597 0x800C7754 4600A006 */ mov.s	$f0, $f20
.L_800C7758:
/* 034598 0x800C7758 8E02002C */ lw	$v0, 0X2C($s0)
/* 034599 0x800C775C 96030008 */ lhu	$v1, 0X8($s0)
/* 034600 0x800C7760 4480C000 */ mtc1	$zero, $f24
/* 034601 0x800C7764 8C4F1400 */ lw	$t7, 0X1400($v0)
/* 034602 0x800C7768 30640007 */ andi	$a0, $v1, 0X7
/* 034603 0x800C776C 00042340 */ sll	$a0, $a0, 13
/* 034604 0x800C7770 C436CD98 */ lwc1	$f22, %lo(D_801DCD98)($at)
/* 034605 0x800C7774 8C5413F0 */ lw	$s4, 0X13F0($v0)
/* 034606 0x800C7778 01F88821 */ addu	$s1, $t7, $t8
.L_800C777C:
/* 034607 0x800C777C 86220000 */ lh	$v0, 0X0($s1)
/* 034608 0x800C7780 00029100 */ sll	$s2, $v0, 4
/* 034609 0x800C7784 02929821 */ addu	$s3, $s4, $s2
/* 034610 0x800C7788 96790002 */ lhu	$t9, 0X2($s3)
/* 034611 0x800C778C 03244024 */ and	$t0, $t9, $a0
/* 034612 0x800C7790 5500001A */ bnezl	$t0, .L_800C77FC
/* 034613 0x800C7794 96220002 */ lhu	$v0, 0X2($s1)
/* 034614 0x800C7798 96690004 */ lhu	$t1, 0X4($s3)
/* 034615 0x800C779C 312A8000 */ andi	$t2, $t1, 0X8000
/* 034616 0x800C77A0 5140000C */ beqzl	$t2, .L_800C77D4
/* 034617 0x800C77A4 8E0C0024 */ lw	$t4, 0X24($s0)
/* 034618 0x800C77A8 8E020020 */ lw	$v0, 0X20($s0)
/* 034619 0x800C77AC 10400004 */ beqz	$v0, .L_800C77C0
/* 034620 0x800C77B0 00000000 */ nop
/* 034621 0x800C77B4 904B0002 */ lbu	$t3, 0X2($v0)
/* 034622 0x800C77B8 56EB0010 */ bnel	$s7, $t3, .L_800C77FC
/* 034623 0x800C77BC 96220002 */ lhu	$v0, 0X2($s1)
.L_800C77C0:
/* 034624 0x800C77C0 54400004 */ bnezl	$v0, .L_800C77D4
/* 034625 0x800C77C4 8E0C0024 */ lw	$t4, 0X24($s0)
/* 034626 0x800C77C8 57C3000C */ bnel	$fp, $v1, .L_800C77FC
/* 034627 0x800C77CC 96220002 */ lhu	$v0, 0X2($s1)
/* 034628 0x800C77D0 8E0C0024 */ lw	$t4, 0X24($s0)
.L_800C77D4:
/* 034629 0x800C77D4 02542821 */ addu	$a1, $s2, $s4
/* 034630 0x800C77D8 318D0020 */ andi	$t5, $t4, 0X20
/* 034631 0x800C77DC 51A00012 */ beqzl	$t5, .L_800C7828
/* 034632 0x800C77E0 32D90006 */ andi	$t9, $s6, 0X6
/* 034633 0x800C77E4 8E040004 */ lw	$a0, 0X4($s0)
/* 034634 0x800C77E8 0C0326DA */ jal	func_800C9B68
/* 034635 0x800C77EC 8E06001C */ lw	$a2, 0X1C($s0)
/* 034636 0x800C77F0 5040000D */ beqzl	$v0, .L_800C7828
/* 034637 0x800C77F4 32D90006 */ andi	$t9, $s6, 0X6
/* 034638 0x800C77F8 96220002 */ lhu	$v0, 0X2($s1)
.L_800C77FC:
/* 034639 0x800C77FC 52A2004E */ beql	$s5, $v0, .L_800C7938
/* 034640 0x800C7800 4600A006 */ mov.s	$f0, $f20
/* 034641 0x800C7804 8E0E002C */ lw	$t6, 0X2C($s0)
/* 034642 0x800C7808 96030008 */ lhu	$v1, 0X8($s0)
/* 034643 0x800C780C 0002C080 */ sll	$t8, $v0, 2
/* 034644 0x800C7810 8DCF1400 */ lw	$t7, 0X1400($t6)
/* 034645 0x800C7814 30640007 */ andi	$a0, $v1, 0X7
/* 034646 0x800C7818 00042340 */ sll	$a0, $a0, 13
/* 034647 0x800C781C 1000FFD7 */ b	.L_800C777C
/* 034648 0x800C7820 01F88821 */ addu	$s1, $t7, $t8
/* 034649 0x800C7824 32D90006 */ andi	$t9, $s6, 0X6
.L_800C7828:
/* 034650 0x800C7828 5320001A */ beqzl	$t9, .L_800C7894
/* 034651 0x800C782C 8E020014 */ lw	$v0, 0X14($s0)
/* 034652 0x800C7830 8E080024 */ lw	$t0, 0X24($s0)
/* 034653 0x800C7834 31090010 */ andi	$t1, $t0, 0X10
/* 034654 0x800C7838 51200016 */ beqzl	$t1, .L_800C7894
/* 034655 0x800C783C 8E020014 */ lw	$v0, 0X14($s0)
/* 034656 0x800C7840 866A000A */ lh	$t2, 0XA($s3)
/* 034657 0x800C7844 448A2000 */ mtc1	$t2, $f4
/* 034658 0x800C7848 00000000 */ nop
/* 034659 0x800C784C 468021A0 */ cvt.s.w	$f6, $f4
/* 034660 0x800C7850 46163202 */ mul.s	$f8, $f6, $f22
/* 034661 0x800C7854 4618403C */ c.lt.s	$f8, $f24
/* 034662 0x800C7858 00000000 */ nop
/* 034663 0x800C785C 4502000D */ bc1fl .L_800C7894
/* 034664 0x800C7860 8E020014 */ lw	$v0, 0X14($s0)
/* 034665 0x800C7864 96220002 */ lhu	$v0, 0X2($s1)
/* 034666 0x800C7868 52A20033 */ beql	$s5, $v0, .L_800C7938
/* 034667 0x800C786C 4600A006 */ mov.s	$f0, $f20
/* 034668 0x800C7870 8E0B002C */ lw	$t3, 0X2C($s0)
/* 034669 0x800C7874 96030008 */ lhu	$v1, 0X8($s0)
/* 034670 0x800C7878 00026880 */ sll	$t5, $v0, 2
/* 034671 0x800C787C 8D6C1400 */ lw	$t4, 0X1400($t3)
/* 034672 0x800C7880 30640007 */ andi	$a0, $v1, 0X7
/* 034673 0x800C7884 00042340 */ sll	$a0, $a0, 13
/* 034674 0x800C7888 1000FFBC */ b	.L_800C777C
/* 034675 0x800C788C 018D8821 */ addu	$s1, $t4, $t5
/* 034676 0x800C7890 8E020014 */ lw	$v0, 0X14($s0)
.L_800C7894:
/* 034677 0x800C7894 8E0E002C */ lw	$t6, 0X2C($s0)
/* 034678 0x800C7898 27AF0078 */ addiu	$t7, $sp, 120
/* 034679 0x800C789C 8C460000 */ lw	$a2, 0X0($v0)
/* 034680 0x800C78A0 8C470008 */ lw	$a3, 0X8($v0)
/* 034681 0x800C78A4 8DC513F4 */ lw	$a1, 0X13F4($t6)
/* 034682 0x800C78A8 AFAF0010 */ sw	$t7, 0X10($sp)
/* 034683 0x800C78AC C60A0028 */ lwc1	$f10, 0X28($s0)
/* 034684 0x800C78B0 02542021 */ addu	$a0, $s2, $s4
/* 034685 0x800C78B4 0C0300D0 */ jal	func_800C0340
/* 034686 0x800C78B8 E7AA0014 */ swc1	$f10, 0X14($sp)
/* 034687 0x800C78BC 50400013 */ beqzl	$v0, .L_800C790C
/* 034688 0x800C78C0 96220002 */ lhu	$v0, 0X2($s1)
/* 034689 0x800C78C4 8E180014 */ lw	$t8, 0X14($s0)
/* 034690 0x800C78C8 C7B00078 */ lwc1	$f16, 0X78($sp)
/* 034691 0x800C78CC C7120004 */ lwc1	$f18, 0X4($t8)
/* 034692 0x800C78D0 4612803C */ c.lt.s	$f16, $f18
/* 034693 0x800C78D4 00000000 */ nop
/* 034694 0x800C78D8 4502000C */ bc1fl .L_800C790C
/* 034695 0x800C78DC 96220002 */ lhu	$v0, 0X2($s1)
/* 034696 0x800C78E0 4610A03C */ c.lt.s	$f20, $f16
/* 034697 0x800C78E4 00000000 */ nop
/* 034698 0x800C78E8 45020008 */ bc1fl .L_800C790C
/* 034699 0x800C78EC 96220002 */ lhu	$v0, 0X2($s1)
/* 034700 0x800C78F0 8E19002C */ lw	$t9, 0X2C($s0)
/* 034701 0x800C78F4 8E0A000C */ lw	$t2, 0XC($s0)
/* 034702 0x800C78F8 46008506 */ mov.s	$f20, $f16
/* 034703 0x800C78FC 8F2813F0 */ lw	$t0, 0X13F0($t9)
/* 034704 0x800C7900 01124821 */ addu	$t1, $t0, $s2
/* 034705 0x800C7904 AD490000 */ sw	$t1, 0X0($t2)
/* 034706 0x800C7908 96220002 */ lhu	$v0, 0X2($s1)
.L_800C790C:
/* 034707 0x800C790C 52A2000A */ beql	$s5, $v0, .L_800C7938
/* 034708 0x800C7910 4600A006 */ mov.s	$f0, $f20
/* 034709 0x800C7914 8E0B002C */ lw	$t3, 0X2C($s0)
/* 034710 0x800C7918 96030008 */ lhu	$v1, 0X8($s0)
/* 034711 0x800C791C 00026880 */ sll	$t5, $v0, 2
/* 034712 0x800C7920 8D6C1400 */ lw	$t4, 0X1400($t3)
/* 034713 0x800C7924 30640007 */ andi	$a0, $v1, 0X7
/* 034714 0x800C7928 00042340 */ sll	$a0, $a0, 13
/* 034715 0x800C792C 1000FF93 */ b	.L_800C777C
/* 034716 0x800C7930 018D8821 */ addu	$s1, $t4, $t5
/* 034717 0x800C7934 4600A006 */ mov.s	$f0, $f20
.L_800C7938:
/* 034718 0x800C7938 8FBF005C */ lw	$ra, 0X5C($sp)
/* 034719 0x800C793C D7B40020 */ ldc1	$f20, 0X20($sp)
/* 034720 0x800C7940 D7B60028 */ ldc1	$f22, 0X28($sp)
/* 034721 0x800C7944 D7B80030 */ ldc1	$f24, 0X30($sp)
/* 034722 0x800C7948 8FB00038 */ lw	$s0, 0X38($sp)
/* 034723 0x800C794C 8FB1003C */ lw	$s1, 0X3C($sp)
/* 034724 0x800C7950 8FB20040 */ lw	$s2, 0X40($sp)
/* 034725 0x800C7954 8FB30044 */ lw	$s3, 0X44($sp)
/* 034726 0x800C7958 8FB40048 */ lw	$s4, 0X48($sp)
/* 034727 0x800C795C 8FB5004C */ lw	$s5, 0X4C($sp)
/* 034728 0x800C7960 8FB60050 */ lw	$s6, 0X50($sp)
/* 034729 0x800C7964 8FB70054 */ lw	$s7, 0X54($sp)
/* 034730 0x800C7968 8FBE0058 */ lw	$fp, 0X58($sp)
/* 034731 0x800C796C 03E00008 */ jr	$ra
/* 034732 0x800C7970 27BD0088 */ addiu	$sp, $sp, 136

