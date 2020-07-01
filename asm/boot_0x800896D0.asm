.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_800896D0
/* 009628 0x800896D0 27BDFFD0 */ addiu	$sp, $sp, -48
/* 009629 0x800896D4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 009630 0x800896D8 AFB00018 */ sw	$s0, 0X18($sp)
/* 009631 0x800896DC 8C8E0008 */ lw	$t6, 0X8($a0)
/* 009632 0x800896E0 8C990000 */ lw	$t9, 0X0($a0)
/* 009633 0x800896E4 3C18800A */ lui	$t8, %hi(D_8009CDB0)
/* 009634 0x800896E8 2718CDB0 */ addiu	$t8, $t8, %lo(D_8009CDB0)
/* 009635 0x800896EC 000E7980 */ sll	$t7, $t6, 6
/* 009636 0x800896F0 33290008 */ andi	$t1, $t9, 0X8
/* 009637 0x800896F4 00808025 */ move	$s0, $a0
/* 009638 0x800896F8 00A03825 */ move	$a3, $a1
/* 009639 0x800896FC 15200003 */ bnez	$t1, .L_8008970C
/* 009640 0x80089700 01F84021 */ addu	$t0, $t7, $t8
/* 009641 0x80089704 10000047 */ b	.L_80089824
/* 009642 0x80089708 24020005 */ li	$v0, 5
.L_8008970C:
/* 009643 0x8008970C AFA70034 */ sw	$a3, 0X34($sp)
/* 009644 0x80089710 0C0226BC */ jal	__osSiGetAccess
/* 009645 0x80089714 AFA80024 */ sw	$t0, 0X24($sp)
/* 009646 0x80089718 8E0B0008 */ lw	$t3, 0X8($s0)
/* 009647 0x8008971C 3C06800A */ lui	$a2, %hi(D_8009CDB0)
/* 009648 0x80089720 24C6CDB0 */ addiu	$a2, $a2, %lo(D_8009CDB0)
/* 009649 0x80089724 000B6180 */ sll	$t4, $t3, 6
/* 009650 0x80089728 00CC6821 */ addu	$t5, $a2, $t4
/* 009651 0x8008972C 240A0001 */ li	$t2, 1
/* 009652 0x80089730 ADAA003C */ sw	$t2, 0X3C($t5)
/* 009653 0x80089734 8FA80024 */ lw	$t0, 0X24($sp)
/* 009654 0x80089738 8E0E0008 */ lw	$t6, 0X8($s0)
/* 009655 0x8008973C 8FA70034 */ lw	$a3, 0X34($sp)
/* 009656 0x80089740 00001825 */ move	$v1, $zero
/* 009657 0x80089744 010E4021 */ addu	$t0, $t0, $t6
/* 009658 0x80089748 01001025 */ move	$v0, $t0
/* 009659 0x8008974C 24040020 */ li	$a0, 32
.L_80089750:
/* 009660 0x80089750 24630004 */ addiu	$v1, $v1, 4
/* 009661 0x80089754 A0470007 */ sb	$a3, 0X7($v0)
/* 009662 0x80089758 A0470008 */ sb	$a3, 0X8($v0)
/* 009663 0x8008975C A0470009 */ sb	$a3, 0X9($v0)
/* 009664 0x80089760 24420004 */ addiu	$v0, $v0, 4
/* 009665 0x80089764 1464FFFA */ bne	$v1, $a0, .L_80089750
/* 009666 0x80089768 A0470002 */ sb	$a3, 0X2($v0)
/* 009667 0x8008976C 240F00FE */ li	$t7, 254
/* 009668 0x80089770 3C01800A */ lui	$at, %hi(__osContLastCmd)
/* 009669 0x80089774 A02FCF10 */ sb	$t7, %lo(__osContLastCmd)($at)
/* 009670 0x80089778 8E180008 */ lw	$t8, 0X8($s0)
/* 009671 0x8008977C AFA80024 */ sw	$t0, 0X24($sp)
/* 009672 0x80089780 AFA70034 */ sw	$a3, 0X34($sp)
/* 009673 0x80089784 0018C980 */ sll	$t9, $t8, 6
/* 009674 0x80089788 00D92821 */ addu	$a1, $a2, $t9
/* 009675 0x8008978C 0C022B5C */ jal	__osSiRawStartDma
/* 009676 0x80089790 24040001 */ li	$a0, 1
/* 009677 0x80089794 8E040004 */ lw	$a0, 0X4($s0)
/* 009678 0x80089798 00002825 */ move	$a1, $zero
/* 009679 0x8008979C 0C021FB4 */ jal	osRecvMesg
/* 009680 0x800897A0 24060001 */ li	$a2, 1
/* 009681 0x800897A4 8E090008 */ lw	$t1, 0X8($s0)
/* 009682 0x800897A8 3C0C800A */ lui	$t4, %hi(D_8009CDB0)
/* 009683 0x800897AC 258CCDB0 */ addiu	$t4, $t4, %lo(D_8009CDB0)
/* 009684 0x800897B0 00095980 */ sll	$t3, $t1, 6
/* 009685 0x800897B4 016C2821 */ addu	$a1, $t3, $t4
/* 009686 0x800897B8 0C022B5C */ jal	__osSiRawStartDma
/* 009687 0x800897BC 00002025 */ move	$a0, $zero
/* 009688 0x800897C0 8E040004 */ lw	$a0, 0X4($s0)
/* 009689 0x800897C4 00002825 */ move	$a1, $zero
/* 009690 0x800897C8 0C021FB4 */ jal	osRecvMesg
/* 009691 0x800897CC 24060001 */ li	$a2, 1
/* 009692 0x800897D0 8FA80024 */ lw	$t0, 0X24($sp)
/* 009693 0x800897D4 8FA70034 */ lw	$a3, 0X34($sp)
/* 009694 0x800897D8 91100002 */ lbu	$s0, 0X2($t0)
/* 009695 0x800897DC 320A00C0 */ andi	$t2, $s0, 0XC0
/* 009696 0x800897E0 1540000D */ bnez	$t2, .L_80089818
/* 009697 0x800897E4 01408025 */ move	$s0, $t2
/* 009698 0x800897E8 54E00007 */ bnezl	$a3, .L_80089808
/* 009699 0x800897EC 910E0026 */ lbu	$t6, 0X26($t0)
/* 009700 0x800897F0 910D0026 */ lbu	$t5, 0X26($t0)
/* 009701 0x800897F4 11A00008 */ beqz	$t5, .L_80089818
/* 009702 0x800897F8 00000000 */ nop
/* 009703 0x800897FC 10000006 */ b	.L_80089818
/* 009704 0x80089800 24100004 */ li	$s0, 4
/* 009705 0x80089804 910E0026 */ lbu	$t6, 0X26($t0)
.L_80089808:
/* 009706 0x80089808 240100EB */ li	$at, 235
/* 009707 0x8008980C 11C10002 */ beq	$t6, $at, .L_80089818
/* 009708 0x80089810 00000000 */ nop
/* 009709 0x80089814 24100004 */ li	$s0, 4
.L_80089818:
/* 009710 0x80089818 0C0226CD */ jal	__osSiRelAccess
/* 009711 0x8008981C 00000000 */ nop
/* 009712 0x80089820 02001025 */ move	$v0, $s0
.L_80089824:
/* 009713 0x80089824 8FBF001C */ lw	$ra, 0X1C($sp)
/* 009714 0x80089828 8FB00018 */ lw	$s0, 0X18($sp)
/* 009715 0x8008982C 27BD0030 */ addiu	$sp, $sp, 48
/* 009716 0x80089830 03E00008 */ jr	$ra
/* 009717 0x80089834 00000000 */ nop

glabel func_80089838
/* 009718 0x80089838 27BDFFB0 */ addiu	$sp, $sp, -80
/* 009719 0x8008983C AFBF0014 */ sw	$ra, 0X14($sp)
/* 009720 0x80089840 00803025 */ move	$a2, $a0
/* 009721 0x80089844 240E00FF */ li	$t6, 255
/* 009722 0x80089848 240F0023 */ li	$t7, 35
/* 009723 0x8008984C 24180001 */ li	$t8, 1
/* 009724 0x80089850 24190003 */ li	$t9, 3
/* 009725 0x80089854 240800C0 */ li	$t0, 192
/* 009726 0x80089858 A3AE0024 */ sb	$t6, 0X24($sp)
/* 009727 0x8008985C A3AF0025 */ sb	$t7, 0X25($sp)
/* 009728 0x80089860 A3B80026 */ sb	$t8, 0X26($sp)
/* 009729 0x80089864 A3B90027 */ sb	$t9, 0X27($sp)
/* 009730 0x80089868 A3A80028 */ sb	$t0, 0X28($sp)
/* 009731 0x8008986C AFA60050 */ sw	$a2, 0X50($sp)
/* 009732 0x80089870 24040600 */ li	$a0, 1536
/* 009733 0x80089874 0C024428 */ jal	__osContAddressCrc
/* 009734 0x80089878 AFA5004C */ sw	$a1, 0X4C($sp)
/* 009735 0x8008987C 8FA60050 */ lw	$a2, 0X50($sp)
/* 009736 0x80089880 3449C000 */ ori	$t1, $v0, 0XC000
/* 009737 0x80089884 A3A90029 */ sb	$t1, 0X29($sp)
/* 009738 0x80089888 10C00012 */ beqz	$a2, .L_800898D4
/* 009739 0x8008988C 8FA3004C */ lw	$v1, 0X4C($sp)
/* 009740 0x80089890 18C00010 */ blez	$a2, .L_800898D4
/* 009741 0x80089894 00001025 */ move	$v0, $zero
/* 009742 0x80089898 30C50003 */ andi	$a1, $a2, 0X3
/* 009743 0x8008989C 10A00006 */ beqz	$a1, .L_800898B8
/* 009744 0x800898A0 00A02025 */ move	$a0, $a1
.L_800898A4:
/* 009745 0x800898A4 24420001 */ addiu	$v0, $v0, 1
/* 009746 0x800898A8 A0600000 */ sb	$zero, 0X0($v1)
/* 009747 0x800898AC 1482FFFD */ bne	$a0, $v0, .L_800898A4
/* 009748 0x800898B0 24630001 */ addiu	$v1, $v1, 1
/* 009749 0x800898B4 10460007 */ beq	$v0, $a2, .L_800898D4
.L_800898B8:
/* 009750 0x800898B8 24420004 */ addiu	$v0, $v0, 4
/* 009751 0x800898BC A0600001 */ sb	$zero, 0X1($v1)
/* 009752 0x800898C0 A0600002 */ sb	$zero, 0X2($v1)
/* 009753 0x800898C4 A0600003 */ sb	$zero, 0X3($v1)
/* 009754 0x800898C8 24630004 */ addiu	$v1, $v1, 4
/* 009755 0x800898CC 1446FFFA */ bne	$v0, $a2, .L_800898B8
/* 009756 0x800898D0 A060FFFC */ sb	$zero, -0X4($v1)
.L_800898D4:
/* 009757 0x800898D4 27AA0024 */ addiu	$t2, $sp, 36
/* 009758 0x800898D8 254C0024 */ addiu	$t4, $t2, 36
/* 009759 0x800898DC 00606825 */ move	$t5, $v1
.L_800898E0:
/* 009760 0x800898E0 8D410000 */ lw	$at, 0X0($t2)
/* 009761 0x800898E4 254A000C */ addiu	$t2, $t2, 12
/* 009762 0x800898E8 25AD000C */ addiu	$t5, $t5, 12
/* 009763 0x800898EC A9A1FFF4 */ swl	$at, -0XC($t5)
/* 009764 0x800898F0 B9A1FFF7 */ swr	$at, -0X9($t5)
/* 009765 0x800898F4 8D41FFF8 */ lw	$at, -0X8($t2)
/* 009766 0x800898F8 A9A1FFF8 */ swl	$at, -0X8($t5)
/* 009767 0x800898FC B9A1FFFB */ swr	$at, -0X5($t5)
/* 009768 0x80089900 8D41FFFC */ lw	$at, -0X4($t2)
/* 009769 0x80089904 A9A1FFFC */ swl	$at, -0X4($t5)
/* 009770 0x80089908 154CFFF5 */ bne	$t2, $t4, .L_800898E0
/* 009771 0x8008990C B9A1FFFF */ swr	$at, -0X1($t5)
/* 009772 0x80089910 91410000 */ lbu	$at, 0X0($t2)
/* 009773 0x80089914 240E00FE */ li	$t6, 254
/* 009774 0x80089918 24630027 */ addiu	$v1, $v1, 39
/* 009775 0x8008991C A1A10000 */ sb	$at, 0X0($t5)
/* 009776 0x80089920 914C0001 */ lbu	$t4, 0X1($t2)
/* 009777 0x80089924 A1AC0001 */ sb	$t4, 0X1($t5)
/* 009778 0x80089928 91410002 */ lbu	$at, 0X2($t2)
/* 009779 0x8008992C A1A10002 */ sb	$at, 0X2($t5)
/* 009780 0x80089930 A06E0000 */ sb	$t6, 0X0($v1)
/* 009781 0x80089934 8FBF0014 */ lw	$ra, 0X14($sp)
/* 009782 0x80089938 27BD0050 */ addiu	$sp, $sp, 80
/* 009783 0x8008993C 03E00008 */ jr	$ra
/* 009784 0x80089940 00000000 */ nop

glabel func_80089944
/* 009785 0x80089944 27BDFFB8 */ addiu	$sp, $sp, -72
/* 009786 0x80089948 AFBF001C */ sw	$ra, 0X1C($sp)
/* 009787 0x8008994C AFB00018 */ sw	$s0, 0X18($sp)
/* 009788 0x80089950 AFA40048 */ sw	$a0, 0X48($sp)
/* 009789 0x80089954 AFA60050 */ sw	$a2, 0X50($sp)
/* 009790 0x80089958 ACA40004 */ sw	$a0, 0X4($a1)
/* 009791 0x8008995C 8FAF0050 */ lw	$t7, 0X50($sp)
/* 009792 0x80089960 241800FF */ li	$t8, 255
/* 009793 0x80089964 00A08025 */ move	$s0, $a1
/* 009794 0x80089968 A0B80065 */ sb	$t8, 0X65($a1)
/* 009795 0x8008996C ACA00000 */ sw	$zero, 0X0($a1)
/* 009796 0x80089970 00A02025 */ move	$a0, $a1
/* 009797 0x80089974 ACAF0008 */ sw	$t7, 0X8($a1)
/* 009798 0x80089978 0C024B00 */ jal	__osPfsSelectBank
/* 009799 0x8008997C 240500FE */ li	$a1, 254
/* 009800 0x80089980 24010002 */ li	$at, 2
/* 009801 0x80089984 14410005 */ bne	$v0, $at, .L_8008999C
/* 009802 0x80089988 00401825 */ move	$v1, $v0
/* 009803 0x8008998C 02002025 */ move	$a0, $s0
/* 009804 0x80089990 0C024B00 */ jal	__osPfsSelectBank
/* 009805 0x80089994 24050080 */ li	$a1, 128
/* 009806 0x80089998 00401825 */ move	$v1, $v0
.L_8008999C:
/* 009807 0x8008999C 10400003 */ beqz	$v0, .L_800899AC
/* 009808 0x800899A0 8FA40048 */ lw	$a0, 0X48($sp)
/* 009809 0x800899A4 10000039 */ b	.L_80089A8C
/* 009810 0x800899A8 00601025 */ move	$v0, $v1
.L_800899AC:
/* 009811 0x800899AC 8FA50050 */ lw	$a1, 0X50($sp)
/* 009812 0x800899B0 24060400 */ li	$a2, 1024
/* 009813 0x800899B4 0C024310 */ jal	__osContRamRead
/* 009814 0x800899B8 27A70024 */ addiu	$a3, $sp, 36
/* 009815 0x800899BC 24010002 */ li	$at, 2
/* 009816 0x800899C0 14410002 */ bne	$v0, $at, .L_800899CC
/* 009817 0x800899C4 00401825 */ move	$v1, $v0
/* 009818 0x800899C8 24030004 */ li	$v1, 4
.L_800899CC:
/* 009819 0x800899CC 10600003 */ beqz	$v1, .L_800899DC
/* 009820 0x800899D0 93B90043 */ lbu	$t9, 0X43($sp)
/* 009821 0x800899D4 1000002D */ b	.L_80089A8C
/* 009822 0x800899D8 00601025 */ move	$v0, $v1
.L_800899DC:
/* 009823 0x800899DC 240100FE */ li	$at, 254
/* 009824 0x800899E0 17210003 */ bne	$t9, $at, .L_800899F0
/* 009825 0x800899E4 02002025 */ move	$a0, $s0
/* 009826 0x800899E8 10000028 */ b	.L_80089A8C
/* 009827 0x800899EC 2402000B */ li	$v0, 11
.L_800899F0:
/* 009828 0x800899F0 0C024B00 */ jal	__osPfsSelectBank
/* 009829 0x800899F4 24050080 */ li	$a1, 128
/* 009830 0x800899F8 24010002 */ li	$at, 2
/* 009831 0x800899FC 14410002 */ bne	$v0, $at, .L_80089A08
/* 009832 0x80089A00 00401825 */ move	$v1, $v0
/* 009833 0x80089A04 24030004 */ li	$v1, 4
.L_80089A08:
/* 009834 0x80089A08 10600003 */ beqz	$v1, .L_80089A18
/* 009835 0x80089A0C 8FA40048 */ lw	$a0, 0X48($sp)
/* 009836 0x80089A10 1000001E */ b	.L_80089A8C
/* 009837 0x80089A14 00601025 */ move	$v0, $v1
.L_80089A18:
/* 009838 0x80089A18 8FA50050 */ lw	$a1, 0X50($sp)
/* 009839 0x80089A1C 24060400 */ li	$a2, 1024
/* 009840 0x80089A20 0C024310 */ jal	__osContRamRead
/* 009841 0x80089A24 27A70024 */ addiu	$a3, $sp, 36
/* 009842 0x80089A28 24010002 */ li	$at, 2
/* 009843 0x80089A2C 14410002 */ bne	$v0, $at, .L_80089A38
/* 009844 0x80089A30 00401825 */ move	$v1, $v0
/* 009845 0x80089A34 24030004 */ li	$v1, 4
.L_80089A38:
/* 009846 0x80089A38 10600003 */ beqz	$v1, .L_80089A48
/* 009847 0x80089A3C 93A80043 */ lbu	$t0, 0X43($sp)
/* 009848 0x80089A40 10000012 */ b	.L_80089A8C
/* 009849 0x80089A44 00601025 */ move	$v0, $v1
.L_80089A48:
/* 009850 0x80089A48 24010080 */ li	$at, 128
/* 009851 0x80089A4C 51010004 */ beql	$t0, $at, .L_80089A60
/* 009852 0x80089A50 8E090000 */ lw	$t1, 0X0($s0)
/* 009853 0x80089A54 1000000D */ b	.L_80089A8C
/* 009854 0x80089A58 2402000B */ li	$v0, 11
/* 009855 0x80089A5C 8E090000 */ lw	$t1, 0X0($s0)
.L_80089A60:
/* 009856 0x80089A60 8FA40050 */ lw	$a0, 0X50($sp)
/* 009857 0x80089A64 3C0D800A */ lui	$t5, %hi(D_8009CDB0)
/* 009858 0x80089A68 312A0008 */ andi	$t2, $t1, 0X8
/* 009859 0x80089A6C 15400004 */ bnez	$t2, .L_80089A80
/* 009860 0x80089A70 00046180 */ sll	$t4, $a0, 6
/* 009861 0x80089A74 25ADCDB0 */ addiu	$t5, $t5, %lo(D_8009CDB0)
/* 009862 0x80089A78 0C02260E */ jal	func_80089838
/* 009863 0x80089A7C 018D2821 */ addu	$a1, $t4, $t5
.L_80089A80:
/* 009864 0x80089A80 240E0008 */ li	$t6, 8
/* 009865 0x80089A84 AE0E0000 */ sw	$t6, 0X0($s0)
/* 009866 0x80089A88 00001025 */ move	$v0, $zero
.L_80089A8C:
/* 009867 0x80089A8C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 009868 0x80089A90 8FB00018 */ lw	$s0, 0X18($sp)
/* 009869 0x80089A94 27BD0048 */ addiu	$sp, $sp, 72
/* 009870 0x80089A98 03E00008 */ jr	$ra
/* 009871 0x80089A9C 00000000 */ nop
