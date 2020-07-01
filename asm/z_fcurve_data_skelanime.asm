.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_800F2620
/* 078552 0x800F2620 44800000 */ mtc1	$zero, $f0
/* 078553 0x800F2624 00000000 */ nop
/* 078554 0x800F2628 A0800000 */ sb	$zero, 0X0($a0)
/* 078555 0x800F262C AC800004 */ sw	$zero, 0X4($a0)
/* 078556 0x800F2630 AC800008 */ sw	$zero, 0X8($a0)
/* 078557 0x800F2634 E4800018 */ swc1	$f0, 0X18($a0)
/* 078558 0x800F2638 E4800014 */ swc1	$f0, 0X14($a0)
/* 078559 0x800F263C E4800010 */ swc1	$f0, 0X10($a0)
/* 078560 0x800F2640 E480000C */ swc1	$f0, 0XC($a0)
/* 078561 0x800F2644 AC80001C */ sw	$zero, 0X1C($a0)
/* 078562 0x800F2648 03E00008 */ jr	$ra
/* 078563 0x800F264C 00000000 */ nop

glabel func_800F2650
/* 078564 0x800F2650 27BDFFE0 */ addiu	$sp, $sp, -32
/* 078565 0x800F2654 AFB00018 */ sw	$s0, 0X18($sp)
/* 078566 0x800F2658 00A08025 */ move	$s0, $a1
/* 078567 0x800F265C AFBF001C */ sw	$ra, 0X1C($sp)
/* 078568 0x800F2660 AFA40020 */ sw	$a0, 0X20($sp)
/* 078569 0x800F2664 AFA7002C */ sw	$a3, 0X2C($sp)
/* 078570 0x800F2668 0C040141 */ jal	Lib_PtrSegToVirt
/* 078571 0x800F266C 00C02025 */ move	$a0, $a2
/* 078572 0x800F2670 904E0004 */ lbu	$t6, 0X4($v0)
/* 078573 0x800F2674 A20E0000 */ sb	$t6, 0X0($s0)
/* 078574 0x800F2678 0C040141 */ jal	Lib_PtrSegToVirt
/* 078575 0x800F267C 8C440000 */ lw	$a0, 0X0($v0)
/* 078576 0x800F2680 92040000 */ lbu	$a0, 0X0($s0)
/* 078577 0x800F2684 AE020004 */ sw	$v0, 0X4($s0)
/* 078578 0x800F2688 00800821 */ addu	$at, $a0, $zero
/* 078579 0x800F268C 000420C0 */ sll	$a0, $a0, 3
/* 078580 0x800F2690 00812021 */ addu	$a0, $a0, $at
/* 078581 0x800F2694 0C040B18 */ jal	zelda_malloc
/* 078582 0x800F2698 00042040 */ sll	$a0, $a0, 1
/* 078583 0x800F269C 44802000 */ mtc1	$zero, $f4
/* 078584 0x800F26A0 AE02001C */ sw	$v0, 0X1C($s0)
/* 078585 0x800F26A4 24020001 */ li	$v0, 1
/* 078586 0x800F26A8 E6040018 */ swc1	$f4, 0X18($s0)
/* 078587 0x800F26AC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 078588 0x800F26B0 8FB00018 */ lw	$s0, 0X18($sp)
/* 078589 0x800F26B4 27BD0020 */ addiu	$sp, $sp, 32
/* 078590 0x800F26B8 03E00008 */ jr	$ra
/* 078591 0x800F26BC 00000000 */ nop

glabel func_800F26C0
/* 078592 0x800F26C0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 078593 0x800F26C4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 078594 0x800F26C8 AFA40018 */ sw	$a0, 0X18($sp)
/* 078595 0x800F26CC 8CA4001C */ lw	$a0, 0X1C($a1)
/* 078596 0x800F26D0 50800004 */ beqzl	$a0, .L_800F26E4
/* 078597 0x800F26D4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 078598 0x800F26D8 0C040B38 */ jal	zelda_free
/* 078599 0x800F26DC 00000000 */ nop
/* 078600 0x800F26E0 8FBF0014 */ lw	$ra, 0X14($sp)
.L_800F26E4:
/* 078601 0x800F26E4 27BD0018 */ addiu	$sp, $sp, 24
/* 078602 0x800F26E8 03E00008 */ jr	$ra
/* 078603 0x800F26EC 00000000 */ nop

glabel func_800F26F0
/* 078604 0x800F26F0 44866000 */ mtc1	$a2, $f12
/* 078605 0x800F26F4 44877000 */ mtc1	$a3, $f14
/* 078606 0x800F26F8 00000000 */ nop
/* 078607 0x800F26FC C4840014 */ lwc1	$f4, 0X14($a0)
/* 078608 0x800F2700 E48E0010 */ swc1	$f14, 0X10($a0)
/* 078609 0x800F2704 46046181 */ sub.s	$f6, $f12, $f4
/* 078610 0x800F2708 E486000C */ swc1	$f6, 0XC($a0)
/* 078611 0x800F270C C7A80010 */ lwc1	$f8, 0X10($sp)
/* 078612 0x800F2710 E4880018 */ swc1	$f8, 0X18($a0)
/* 078613 0x800F2714 C7AA0014 */ lwc1	$f10, 0X14($sp)
/* 078614 0x800F2718 AC850008 */ sw	$a1, 0X8($a0)
/* 078615 0x800F271C E48A0014 */ swc1	$f10, 0X14($a0)
/* 078616 0x800F2720 03E00008 */ jr	$ra
/* 078617 0x800F2724 00000000 */ nop

glabel func_800F2728
/* 078618 0x800F2728 27BDFF90 */ addiu	$sp, $sp, -112
/* 078619 0x800F272C AFB10034 */ sw	$s1, 0X34($sp)
/* 078620 0x800F2730 00808825 */ move	$s1, $a0
/* 078621 0x800F2734 AFBF0054 */ sw	$ra, 0X54($sp)
/* 078622 0x800F2738 AFBE0050 */ sw	$fp, 0X50($sp)
/* 078623 0x800F273C AFB7004C */ sw	$s7, 0X4C($sp)
/* 078624 0x800F2740 AFB60048 */ sw	$s6, 0X48($sp)
/* 078625 0x800F2744 AFB50044 */ sw	$s5, 0X44($sp)
/* 078626 0x800F2748 AFB40040 */ sw	$s4, 0X40($sp)
/* 078627 0x800F274C AFB3003C */ sw	$s3, 0X3C($sp)
/* 078628 0x800F2750 AFB20038 */ sw	$s2, 0X38($sp)
/* 078629 0x800F2754 AFB00030 */ sw	$s0, 0X30($sp)
/* 078630 0x800F2758 F7B80028 */ sdc1	$f24, 0X28($sp)
/* 078631 0x800F275C F7B60020 */ sdc1	$f22, 0X20($sp)
/* 078632 0x800F2760 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 078633 0x800F2764 AFA50074 */ sw	$a1, 0X74($sp)
/* 078634 0x800F2768 8FAE0074 */ lw	$t6, 0X74($sp)
/* 078635 0x800F276C AFA00058 */ sw	$zero, 0X58($sp)
/* 078636 0x800F2770 0C040141 */ jal	Lib_PtrSegToVirt
/* 078637 0x800F2774 8DC40008 */ lw	$a0, 0X8($t6)
/* 078638 0x800F2778 00408025 */ move	$s0, $v0
/* 078639 0x800F277C 0C040141 */ jal	Lib_PtrSegToVirt
/* 078640 0x800F2780 8C440000 */ lw	$a0, 0X0($v0)
/* 078641 0x800F2784 00409825 */ move	$s3, $v0
/* 078642 0x800F2788 0C040141 */ jal	Lib_PtrSegToVirt
/* 078643 0x800F278C 8E040004 */ lw	$a0, 0X4($s0)
/* 078644 0x800F2790 0040A025 */ move	$s4, $v0
/* 078645 0x800F2794 0C040141 */ jal	Lib_PtrSegToVirt
/* 078646 0x800F2798 8E040008 */ lw	$a0, 0X8($s0)
/* 078647 0x800F279C 922F00A2 */ lbu	$t7, 0XA2($s1)
/* 078648 0x800F27A0 3C013F00 */ lui	$at, 0x3F00
/* 078649 0x800F27A4 44814000 */ mtc1	$at, $f8
/* 078650 0x800F27A8 448F2000 */ mtc1	$t7, $f4
/* 078651 0x800F27AC 8FA30074 */ lw	$v1, 0X74($sp)
/* 078652 0x800F27B0 44806000 */ mtc1	$zero, $f12
/* 078653 0x800F27B4 468021A0 */ cvt.s.w	$f6, $f4
/* 078654 0x800F27B8 C4620014 */ lwc1	$f2, 0X14($v1)
/* 078655 0x800F27BC C4720018 */ lwc1	$f18, 0X18($v1)
/* 078656 0x800F27C0 0040A825 */ move	$s5, $v0
/* 078657 0x800F27C4 3C0142C8 */ lui	$at, 0x42C8
/* 078658 0x800F27C8 4602603E */ c.le.s	$f12, $f2
/* 078659 0x800F27CC 46083282 */ mul.s	$f10, $f6, $f8
/* 078660 0x800F27D0 241E0001 */ li	$fp, 1
/* 078661 0x800F27D4 2417000C */ li	$s7, 12
/* 078662 0x800F27D8 8C70001C */ lw	$s0, 0X1C($v1)
/* 078663 0x800F27DC 460A1402 */ mul.s	$f16, $f2, $f10
/* 078664 0x800F27E0 46109100 */ add.s	$f4, $f18, $f16
/* 078665 0x800F27E4 45000007 */ bc1f .L_800F2804
/* 078666 0x800F27E8 E4640018 */ swc1	$f4, 0X18($v1)
/* 078667 0x800F27EC C4600010 */ lwc1	$f0, 0X10($v1)
/* 078668 0x800F27F0 C4660018 */ lwc1	$f6, 0X18($v1)
/* 078669 0x800F27F4 4606003C */ c.lt.s	$f0, $f6
/* 078670 0x800F27F8 00000000 */ nop
/* 078671 0x800F27FC 4503000C */ bc1tl .L_800F2830
/* 078672 0x800F2800 E4600018 */ swc1	$f0, 0X18($v1)
.L_800F2804:
/* 078673 0x800F2804 460C103C */ c.lt.s	$f2, $f12
/* 078674 0x800F2808 00000000 */ nop
/* 078675 0x800F280C 4502000B */ bc1fl .L_800F283C
/* 078676 0x800F2810 AFA0005C */ sw	$zero, 0X5C($sp)
/* 078677 0x800F2814 C4600010 */ lwc1	$f0, 0X10($v1)
/* 078678 0x800F2818 C4680018 */ lwc1	$f8, 0X18($v1)
/* 078679 0x800F281C 4600403C */ c.lt.s	$f8, $f0
/* 078680 0x800F2820 00000000 */ nop
/* 078681 0x800F2824 45020005 */ bc1fl .L_800F283C
/* 078682 0x800F2828 AFA0005C */ sw	$zero, 0X5C($sp)
/* 078683 0x800F282C E4600018 */ swc1	$f0, 0X18($v1)
.L_800F2830:
/* 078684 0x800F2830 24180001 */ li	$t8, 1
/* 078685 0x800F2834 AFB80058 */ sw	$t8, 0X58($sp)
/* 078686 0x800F2838 AFA0005C */ sw	$zero, 0X5C($sp)
.L_800F283C:
/* 078687 0x800F283C 90790000 */ lbu	$t9, 0X0($v1)
/* 078688 0x800F2840 5B200048 */ blezl	$t9, .L_800F2964
/* 078689 0x800F2844 8FA20058 */ lw	$v0, 0X58($sp)
/* 078690 0x800F2848 4481C000 */ mtc1	$at, $f24
/* 078691 0x800F284C 3C01801E */ lui	$at, %hi(D_801DD7C0)
/* 078692 0x800F2850 C436D7C0 */ lwc1	$f22, %lo(D_801DD7C0)($at)
/* 078693 0x800F2854 3C014480 */ lui	$at, 0x4480
/* 078694 0x800F2858 4481A000 */ mtc1	$at, $f20
/* 078695 0x800F285C 24160003 */ li	$s6, 3
/* 078696 0x800F2860 00009025 */ move	$s2, $zero
.L_800F2864:
/* 078697 0x800F2864 00008825 */ move	$s1, $zero
.L_800F2868:
/* 078698 0x800F2868 92660000 */ lbu	$a2, 0X0($s3)
.L_800F286C:
/* 078699 0x800F286C 02802825 */ move	$a1, $s4
/* 078700 0x800F2870 14C0000E */ bnez	$a2, .L_800F28AC
/* 078701 0x800F2874 00000000 */ nop
/* 078702 0x800F2878 96A80000 */ lhu	$t0, 0X0($s5)
/* 078703 0x800F287C 3C014F80 */ lui	$at, 0x4F80
/* 078704 0x800F2880 44885000 */ mtc1	$t0, $f10
/* 078705 0x800F2884 05010004 */ bgez	$t0, .L_800F2898
/* 078706 0x800F2888 46805020 */ cvt.s.w	$f0, $f10
/* 078707 0x800F288C 44819000 */ mtc1	$at, $f18
/* 078708 0x800F2890 00000000 */ nop
/* 078709 0x800F2894 46120000 */ add.s	$f0, $f0, $f18
.L_800F2898:
/* 078710 0x800F2898 4600040D */ trunc.w.s	$f16, $f0
/* 078711 0x800F289C 26B50002 */ addiu	$s5, $s5, 2
/* 078712 0x800F28A0 440A8000 */ mfc1	$t2, $f16
/* 078713 0x800F28A4 1000001F */ b	.L_800F2924
/* 078714 0x800F28A8 A60A0000 */ sh	$t2, 0X0($s0)
.L_800F28AC:
/* 078715 0x800F28AC 0C03C91E */ jal	func_800F2478
/* 078716 0x800F28B0 C46C0018 */ lwc1	$f12, 0X18($v1)
/* 078717 0x800F28B4 926B0000 */ lbu	$t3, 0X0($s3)
/* 078718 0x800F28B8 01770019 */ multu	$t3, $s7
/* 078719 0x800F28BC 00006012 */ mflo	$t4
/* 078720 0x800F28C0 028CA021 */ addu	$s4, $s4, $t4
/* 078721 0x800F28C4 16400008 */ bnez	$s2, .L_800F28E8
/* 078722 0x800F28C8 00000000 */ nop
/* 078723 0x800F28CC 46140102 */ mul.s	$f4, $f0, $f20
/* 078724 0x800F28D0 4600218D */ trunc.w.s	$f6, $f4
/* 078725 0x800F28D4 440E3000 */ mfc1	$t6, $f6
/* 078726 0x800F28D8 00000000 */ nop
/* 078727 0x800F28DC A60E0000 */ sh	$t6, 0X0($s0)
/* 078728 0x800F28E0 10000010 */ b	.L_800F2924
/* 078729 0x800F28E4 8FA30074 */ lw	$v1, 0X74($sp)
.L_800F28E8:
/* 078730 0x800F28E8 165E0008 */ bne	$s2, $fp, .L_800F290C
/* 078731 0x800F28EC 00000000 */ nop
/* 078732 0x800F28F0 46160202 */ mul.s	$f8, $f0, $f22
/* 078733 0x800F28F4 4600428D */ trunc.w.s	$f10, $f8
/* 078734 0x800F28F8 44185000 */ mfc1	$t8, $f10
/* 078735 0x800F28FC 00000000 */ nop
/* 078736 0x800F2900 A6180000 */ sh	$t8, 0X0($s0)
/* 078737 0x800F2904 10000007 */ b	.L_800F2924
/* 078738 0x800F2908 8FA30074 */ lw	$v1, 0X74($sp)
.L_800F290C:
/* 078739 0x800F290C 46180482 */ mul.s	$f18, $f0, $f24
/* 078740 0x800F2910 4600940D */ trunc.w.s	$f16, $f18
/* 078741 0x800F2914 44088000 */ mfc1	$t0, $f16
/* 078742 0x800F2918 00000000 */ nop
/* 078743 0x800F291C A6080000 */ sh	$t0, 0X0($s0)
/* 078744 0x800F2920 8FA30074 */ lw	$v1, 0X74($sp)
.L_800F2924:
/* 078745 0x800F2924 26730001 */ addiu	$s3, $s3, 1
/* 078746 0x800F2928 26100002 */ addiu	$s0, $s0, 2
/* 078747 0x800F292C 26310001 */ addiu	$s1, $s1, 1
/* 078748 0x800F2930 5636FFCE */ bnel	$s1, $s6, .L_800F286C
/* 078749 0x800F2934 92660000 */ lbu	$a2, 0X0($s3)
/* 078750 0x800F2938 26520001 */ addiu	$s2, $s2, 1
/* 078751 0x800F293C 5656FFCA */ bnel	$s2, $s6, .L_800F2868
/* 078752 0x800F2940 00008825 */ move	$s1, $zero
/* 078753 0x800F2944 8FA9005C */ lw	$t1, 0X5C($sp)
/* 078754 0x800F2948 252A0001 */ addiu	$t2, $t1, 1
/* 078755 0x800F294C AFAA005C */ sw	$t2, 0X5C($sp)
/* 078756 0x800F2950 906B0000 */ lbu	$t3, 0X0($v1)
/* 078757 0x800F2954 014B082A */ slt	$at, $t2, $t3
/* 078758 0x800F2958 5420FFC2 */ bnezl	$at, .L_800F2864
/* 078759 0x800F295C 00009025 */ move	$s2, $zero
/* 078760 0x800F2960 8FA20058 */ lw	$v0, 0X58($sp)
.L_800F2964:
/* 078761 0x800F2964 8FBF0054 */ lw	$ra, 0X54($sp)
/* 078762 0x800F2968 D7B40018 */ ldc1	$f20, 0X18($sp)
/* 078763 0x800F296C D7B60020 */ ldc1	$f22, 0X20($sp)
/* 078764 0x800F2970 D7B80028 */ ldc1	$f24, 0X28($sp)
/* 078765 0x800F2974 8FB00030 */ lw	$s0, 0X30($sp)
/* 078766 0x800F2978 8FB10034 */ lw	$s1, 0X34($sp)
/* 078767 0x800F297C 8FB20038 */ lw	$s2, 0X38($sp)
/* 078768 0x800F2980 8FB3003C */ lw	$s3, 0X3C($sp)
/* 078769 0x800F2984 8FB40040 */ lw	$s4, 0X40($sp)
/* 078770 0x800F2988 8FB50044 */ lw	$s5, 0X44($sp)
/* 078771 0x800F298C 8FB60048 */ lw	$s6, 0X48($sp)
/* 078772 0x800F2990 8FB7004C */ lw	$s7, 0X4C($sp)
/* 078773 0x800F2994 8FBE0050 */ lw	$fp, 0X50($sp)
/* 078774 0x800F2998 03E00008 */ jr	$ra
/* 078775 0x800F299C 27BD0070 */ addiu	$sp, $sp, 112

glabel func_800F29A0
/* 078776 0x800F29A0 27BDFF78 */ addiu	$sp, $sp, -136
/* 078777 0x800F29A4 AFBF002C */ sw	$ra, 0X2C($sp)
/* 078778 0x800F29A8 AFB00028 */ sw	$s0, 0X28($sp)
/* 078779 0x800F29AC AFA40088 */ sw	$a0, 0X88($sp)
/* 078780 0x800F29B0 AFA5008C */ sw	$a1, 0X8C($sp)
/* 078781 0x800F29B4 AFA60090 */ sw	$a2, 0X90($sp)
/* 078782 0x800F29B8 AFA70094 */ sw	$a3, 0X94($sp)
/* 078783 0x800F29BC 8FAE0090 */ lw	$t6, 0X90($sp)
/* 078784 0x800F29C0 8FB8008C */ lw	$t8, 0X8C($sp)
/* 078785 0x800F29C4 8DCF0004 */ lw	$t7, 0X4($t6)
/* 078786 0x800F29C8 0018C880 */ sll	$t9, $t8, 2
/* 078787 0x800F29CC 01F94021 */ addu	$t0, $t7, $t9
/* 078788 0x800F29D0 0C040141 */ jal	Lib_PtrSegToVirt
/* 078789 0x800F29D4 8D040000 */ lw	$a0, 0X0($t0)
/* 078790 0x800F29D8 AFA20084 */ sw	$v0, 0X84($sp)
/* 078791 0x800F29DC 8FA90088 */ lw	$t1, 0X88($sp)
/* 078792 0x800F29E0 0C060067 */ jal	SysMatrix_StatePush
/* 078793 0x800F29E4 8D300000 */ lw	$s0, 0X0($t1)
/* 078794 0x800F29E8 8FAA0094 */ lw	$t2, 0X94($sp)
/* 078795 0x800F29EC 51400009 */ beqzl	$t2, .L_800F2A14
/* 078796 0x800F29F0 3C013A80 */ lui	$at, 0x3A80
/* 078797 0x800F29F4 1140008E */ beqz	$t2, .L_800F2C30
/* 078798 0x800F29F8 8FA40088 */ lw	$a0, 0X88($sp)
/* 078799 0x800F29FC 8FA50090 */ lw	$a1, 0X90($sp)
/* 078800 0x800F2A00 8FA6008C */ lw	$a2, 0X8C($sp)
/* 078801 0x800F2A04 0140F809 */ jalr	$t2
/* 078802 0x800F2A08 8FA700A0 */ lw	$a3, 0XA0($sp)
/* 078803 0x800F2A0C 10400088 */ beqz	$v0, .L_800F2C30
/* 078804 0x800F2A10 3C013A80 */ lui	$at, 0x3A80
.L_800F2A14:
/* 078805 0x800F2A14 44810000 */ mtc1	$at, $f0
/* 078806 0x800F2A18 8FAB0090 */ lw	$t3, 0X90($sp)
/* 078807 0x800F2A1C 8FAD008C */ lw	$t5, 0X8C($sp)
/* 078808 0x800F2A20 8D6C001C */ lw	$t4, 0X1C($t3)
/* 078809 0x800F2A24 27A4005C */ addiu	$a0, $sp, 92
/* 078810 0x800F2A28 000D70C0 */ sll	$t6, $t5, 3
/* 078811 0x800F2A2C 01CD7021 */ addu	$t6, $t6, $t5
/* 078812 0x800F2A30 000E7040 */ sll	$t6, $t6, 1
/* 078813 0x800F2A34 018E1021 */ addu	$v0, $t4, $t6
/* 078814 0x800F2A38 84580000 */ lh	$t8, 0X0($v0)
/* 078815 0x800F2A3C 2442000C */ addiu	$v0, $v0, 12
/* 078816 0x800F2A40 27A50068 */ addiu	$a1, $sp, 104
/* 078817 0x800F2A44 44982000 */ mtc1	$t8, $f4
/* 078818 0x800F2A48 00000000 */ nop
/* 078819 0x800F2A4C 468021A0 */ cvt.s.w	$f6, $f4
/* 078820 0x800F2A50 46003202 */ mul.s	$f8, $f6, $f0
/* 078821 0x800F2A54 E7A80070 */ swc1	$f8, 0X70($sp)
/* 078822 0x800F2A58 844FFFF6 */ lh	$t7, -0XA($v0)
/* 078823 0x800F2A5C 448F5000 */ mtc1	$t7, $f10
/* 078824 0x800F2A60 00000000 */ nop
/* 078825 0x800F2A64 46805420 */ cvt.s.w	$f16, $f10
/* 078826 0x800F2A68 46008482 */ mul.s	$f18, $f16, $f0
/* 078827 0x800F2A6C E7B20074 */ swc1	$f18, 0X74($sp)
/* 078828 0x800F2A70 8459FFF8 */ lh	$t9, -0X8($v0)
/* 078829 0x800F2A74 44992000 */ mtc1	$t9, $f4
/* 078830 0x800F2A78 00000000 */ nop
/* 078831 0x800F2A7C 468021A0 */ cvt.s.w	$f6, $f4
/* 078832 0x800F2A80 46003202 */ mul.s	$f8, $f6, $f0
/* 078833 0x800F2A84 E7A80078 */ swc1	$f8, 0X78($sp)
/* 078834 0x800F2A88 8448FFFA */ lh	$t0, -0X6($v0)
/* 078835 0x800F2A8C A7A80068 */ sh	$t0, 0X68($sp)
/* 078836 0x800F2A90 8449FFFC */ lh	$t1, -0X4($v0)
/* 078837 0x800F2A94 A7A9006A */ sh	$t1, 0X6A($sp)
/* 078838 0x800F2A98 844AFFFE */ lh	$t2, -0X2($v0)
/* 078839 0x800F2A9C A7AA006C */ sh	$t2, 0X6C($sp)
/* 078840 0x800F2AA0 844B0000 */ lh	$t3, 0X0($v0)
/* 078841 0x800F2AA4 448B5000 */ mtc1	$t3, $f10
/* 078842 0x800F2AA8 00000000 */ nop
/* 078843 0x800F2AAC 46805420 */ cvt.s.w	$f16, $f10
/* 078844 0x800F2AB0 E7B0005C */ swc1	$f16, 0X5C($sp)
/* 078845 0x800F2AB4 844D0002 */ lh	$t5, 0X2($v0)
/* 078846 0x800F2AB8 448D9000 */ mtc1	$t5, $f18
/* 078847 0x800F2ABC 00000000 */ nop
/* 078848 0x800F2AC0 46809120 */ cvt.s.w	$f4, $f18
/* 078849 0x800F2AC4 E7A40060 */ swc1	$f4, 0X60($sp)
/* 078850 0x800F2AC8 844C0004 */ lh	$t4, 0X4($v0)
/* 078851 0x800F2ACC 448C3000 */ mtc1	$t4, $f6
/* 078852 0x800F2AD0 00000000 */ nop
/* 078853 0x800F2AD4 46803220 */ cvt.s.w	$f8, $f6
/* 078854 0x800F2AD8 0C0604BF */ jal	SysMatrix_RotateAndTranslateState
/* 078855 0x800F2ADC E7A80064 */ swc1	$f8, 0X64($sp)
/* 078856 0x800F2AE0 C7AC0070 */ lwc1	$f12, 0X70($sp)
/* 078857 0x800F2AE4 C7AE0074 */ lwc1	$f14, 0X74($sp)
/* 078858 0x800F2AE8 8FA60078 */ lw	$a2, 0X78($sp)
/* 078859 0x800F2AEC 0C0600E7 */ jal	SysMatrix_InsertScale
/* 078860 0x800F2AF0 24070001 */ li	$a3, 1
/* 078861 0x800F2AF4 8FAE009C */ lw	$t6, 0X9C($sp)
/* 078862 0x800F2AF8 8FB80084 */ lw	$t8, 0X84($sp)
/* 078863 0x800F2AFC 8FAB009C */ lw	$t3, 0X9C($sp)
/* 078864 0x800F2B00 15C0001A */ bnez	$t6, .L_800F2B6C
/* 078865 0x800F2B04 24010001 */ li	$at, 1
/* 078866 0x800F2B08 8F050004 */ lw	$a1, 0X4($t8)
/* 078867 0x800F2B0C 50A00049 */ beqzl	$a1, .L_800F2C34
/* 078868 0x800F2B10 8FB00098 */ lw	$s0, 0X98($sp)
/* 078869 0x800F2B14 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 078870 0x800F2B18 3C19DA38 */ lui	$t9, 0xDA38
/* 078871 0x800F2B1C 37390003 */ ori	$t9, $t9, 0X3
/* 078872 0x800F2B20 244F0008 */ addiu	$t7, $v0, 8
/* 078873 0x800F2B24 AE0F02B0 */ sw	$t7, 0X2B0($s0)
/* 078874 0x800F2B28 AC590000 */ sw	$t9, 0X0($v0)
/* 078875 0x800F2B2C 8FA80088 */ lw	$t0, 0X88($sp)
/* 078876 0x800F2B30 8D040000 */ lw	$a0, 0X0($t0)
/* 078877 0x800F2B34 AFA50058 */ sw	$a1, 0X58($sp)
/* 078878 0x800F2B38 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 078879 0x800F2B3C AFA2004C */ sw	$v0, 0X4C($sp)
/* 078880 0x800F2B40 8FA3004C */ lw	$v1, 0X4C($sp)
/* 078881 0x800F2B44 8FA50058 */ lw	$a1, 0X58($sp)
/* 078882 0x800F2B48 AC620004 */ sw	$v0, 0X4($v1)
/* 078883 0x800F2B4C 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 078884 0x800F2B50 3C0ADE00 */ lui	$t2, 0xDE00
/* 078885 0x800F2B54 24490008 */ addiu	$t1, $v0, 8
/* 078886 0x800F2B58 AE0902B0 */ sw	$t1, 0X2B0($s0)
/* 078887 0x800F2B5C AC450004 */ sw	$a1, 0X4($v0)
/* 078888 0x800F2B60 AC4A0000 */ sw	$t2, 0X0($v0)
/* 078889 0x800F2B64 10000033 */ b	.L_800F2C34
/* 078890 0x800F2B68 8FB00098 */ lw	$s0, 0X98($sp)
.L_800F2B6C:
/* 078891 0x800F2B6C 15610030 */ bne	$t3, $at, .L_800F2C30
/* 078892 0x800F2B70 8FAD0084 */ lw	$t5, 0X84($sp)
/* 078893 0x800F2B74 8DA50004 */ lw	$a1, 0X4($t5)
/* 078894 0x800F2B78 50A00016 */ beqzl	$a1, .L_800F2BD4
/* 078895 0x800F2B7C 8FA80084 */ lw	$t0, 0X84($sp)
/* 078896 0x800F2B80 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 078897 0x800F2B84 3C0EDA38 */ lui	$t6, 0xDA38
/* 078898 0x800F2B88 35CE0003 */ ori	$t6, $t6, 0X3
/* 078899 0x800F2B8C 244C0008 */ addiu	$t4, $v0, 8
/* 078900 0x800F2B90 AE0C02B0 */ sw	$t4, 0X2B0($s0)
/* 078901 0x800F2B94 AC4E0000 */ sw	$t6, 0X0($v0)
/* 078902 0x800F2B98 8FB80088 */ lw	$t8, 0X88($sp)
/* 078903 0x800F2B9C 8F040000 */ lw	$a0, 0X0($t8)
/* 078904 0x800F2BA0 AFA50058 */ sw	$a1, 0X58($sp)
/* 078905 0x800F2BA4 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 078906 0x800F2BA8 AFA20040 */ sw	$v0, 0X40($sp)
/* 078907 0x800F2BAC 8FA30040 */ lw	$v1, 0X40($sp)
/* 078908 0x800F2BB0 8FA50058 */ lw	$a1, 0X58($sp)
/* 078909 0x800F2BB4 AC620004 */ sw	$v0, 0X4($v1)
/* 078910 0x800F2BB8 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 078911 0x800F2BBC 3C19DE00 */ lui	$t9, 0xDE00
/* 078912 0x800F2BC0 244F0008 */ addiu	$t7, $v0, 8
/* 078913 0x800F2BC4 AE0F02B0 */ sw	$t7, 0X2B0($s0)
/* 078914 0x800F2BC8 AC450004 */ sw	$a1, 0X4($v0)
/* 078915 0x800F2BCC AC590000 */ sw	$t9, 0X0($v0)
/* 078916 0x800F2BD0 8FA80084 */ lw	$t0, 0X84($sp)
.L_800F2BD4:
/* 078917 0x800F2BD4 8D050008 */ lw	$a1, 0X8($t0)
/* 078918 0x800F2BD8 50A00016 */ beqzl	$a1, .L_800F2C34
/* 078919 0x800F2BDC 8FB00098 */ lw	$s0, 0X98($sp)
/* 078920 0x800F2BE0 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 078921 0x800F2BE4 3C0ADA38 */ lui	$t2, 0xDA38
/* 078922 0x800F2BE8 354A0003 */ ori	$t2, $t2, 0X3
/* 078923 0x800F2BEC 24490008 */ addiu	$t1, $v0, 8
/* 078924 0x800F2BF0 AE0902C0 */ sw	$t1, 0X2C0($s0)
/* 078925 0x800F2BF4 AC4A0000 */ sw	$t2, 0X0($v0)
/* 078926 0x800F2BF8 8FAB0088 */ lw	$t3, 0X88($sp)
/* 078927 0x800F2BFC 8D640000 */ lw	$a0, 0X0($t3)
/* 078928 0x800F2C00 AFA50058 */ sw	$a1, 0X58($sp)
/* 078929 0x800F2C04 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 078930 0x800F2C08 AFA20038 */ sw	$v0, 0X38($sp)
/* 078931 0x800F2C0C 8FA30038 */ lw	$v1, 0X38($sp)
/* 078932 0x800F2C10 8FA50058 */ lw	$a1, 0X58($sp)
/* 078933 0x800F2C14 AC620004 */ sw	$v0, 0X4($v1)
/* 078934 0x800F2C18 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 078935 0x800F2C1C 3C0CDE00 */ lui	$t4, 0xDE00
/* 078936 0x800F2C20 244D0008 */ addiu	$t5, $v0, 8
/* 078937 0x800F2C24 AE0D02C0 */ sw	$t5, 0X2C0($s0)
/* 078938 0x800F2C28 AC450004 */ sw	$a1, 0X4($v0)
/* 078939 0x800F2C2C AC4C0000 */ sw	$t4, 0X0($v0)
.L_800F2C30:
/* 078940 0x800F2C30 8FB00098 */ lw	$s0, 0X98($sp)
.L_800F2C34:
/* 078941 0x800F2C34 8FA40088 */ lw	$a0, 0X88($sp)
/* 078942 0x800F2C38 8FA50090 */ lw	$a1, 0X90($sp)
/* 078943 0x800F2C3C 12000003 */ beqz	$s0, .L_800F2C4C
/* 078944 0x800F2C40 8FA6008C */ lw	$a2, 0X8C($sp)
/* 078945 0x800F2C44 0200F809 */ jalr	$s0
/* 078946 0x800F2C48 8FA700A0 */ lw	$a3, 0XA0($sp)
.L_800F2C4C:
/* 078947 0x800F2C4C 8FAE0084 */ lw	$t6, 0X84($sp)
/* 078948 0x800F2C50 240100FF */ li	$at, 255
/* 078949 0x800F2C54 8FA40088 */ lw	$a0, 0X88($sp)
/* 078950 0x800F2C58 91C50000 */ lbu	$a1, 0X0($t6)
/* 078951 0x800F2C5C 8FA60090 */ lw	$a2, 0X90($sp)
/* 078952 0x800F2C60 8FA70094 */ lw	$a3, 0X94($sp)
/* 078953 0x800F2C64 10A10007 */ beq	$a1, $at, .L_800F2C84
/* 078954 0x800F2C68 00000000 */ nop
/* 078955 0x800F2C6C 8FB8009C */ lw	$t8, 0X9C($sp)
/* 078956 0x800F2C70 8FAF00A0 */ lw	$t7, 0XA0($sp)
/* 078957 0x800F2C74 AFB00010 */ sw	$s0, 0X10($sp)
/* 078958 0x800F2C78 AFB80014 */ sw	$t8, 0X14($sp)
/* 078959 0x800F2C7C 0C03CA68 */ jal	func_800F29A0
/* 078960 0x800F2C80 AFAF0018 */ sw	$t7, 0X18($sp)
.L_800F2C84:
/* 078961 0x800F2C84 0C060073 */ jal	SysMatrix_StatePop
/* 078962 0x800F2C88 00000000 */ nop
/* 078963 0x800F2C8C 8FB90084 */ lw	$t9, 0X84($sp)
/* 078964 0x800F2C90 240100FF */ li	$at, 255
/* 078965 0x800F2C94 8FA40088 */ lw	$a0, 0X88($sp)
/* 078966 0x800F2C98 93250001 */ lbu	$a1, 0X1($t9)
/* 078967 0x800F2C9C 8FA60090 */ lw	$a2, 0X90($sp)
/* 078968 0x800F2CA0 8FA70094 */ lw	$a3, 0X94($sp)
/* 078969 0x800F2CA4 50A10008 */ beql	$a1, $at, .L_800F2CC8
/* 078970 0x800F2CA8 8FBF002C */ lw	$ra, 0X2C($sp)
/* 078971 0x800F2CAC 8FA8009C */ lw	$t0, 0X9C($sp)
/* 078972 0x800F2CB0 8FA900A0 */ lw	$t1, 0XA0($sp)
/* 078973 0x800F2CB4 AFB00010 */ sw	$s0, 0X10($sp)
/* 078974 0x800F2CB8 AFA80014 */ sw	$t0, 0X14($sp)
/* 078975 0x800F2CBC 0C03CA68 */ jal	func_800F29A0
/* 078976 0x800F2CC0 AFA90018 */ sw	$t1, 0X18($sp)
/* 078977 0x800F2CC4 8FBF002C */ lw	$ra, 0X2C($sp)
.L_800F2CC8:
/* 078978 0x800F2CC8 8FB00028 */ lw	$s0, 0X28($sp)
/* 078979 0x800F2CCC 27BD0088 */ addiu	$sp, $sp, 136
/* 078980 0x800F2CD0 03E00008 */ jr	$ra
/* 078981 0x800F2CD4 00000000 */ nop

glabel func_800F2CD8
/* 078982 0x800F2CD8 27BDFFD8 */ addiu	$sp, $sp, -40
/* 078983 0x800F2CDC AFA40028 */ sw	$a0, 0X28($sp)
/* 078984 0x800F2CE0 00A02025 */ move	$a0, $a1
/* 078985 0x800F2CE4 AFBF0024 */ sw	$ra, 0X24($sp)
/* 078986 0x800F2CE8 8CCE001C */ lw	$t6, 0X1C($a2)
/* 078987 0x800F2CEC 00002825 */ move	$a1, $zero
/* 078988 0x800F2CF0 8FAF0038 */ lw	$t7, 0X38($sp)
/* 078989 0x800F2CF4 51C00008 */ beqzl	$t6, .L_800F2D18
/* 078990 0x800F2CF8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 078991 0x800F2CFC 8FB8003C */ lw	$t8, 0X3C($sp)
/* 078992 0x800F2D00 8FB90040 */ lw	$t9, 0X40($sp)
/* 078993 0x800F2D04 AFAF0010 */ sw	$t7, 0X10($sp)
/* 078994 0x800F2D08 AFB80014 */ sw	$t8, 0X14($sp)
/* 078995 0x800F2D0C 0C03CA68 */ jal	func_800F29A0
/* 078996 0x800F2D10 AFB90018 */ sw	$t9, 0X18($sp)
/* 078997 0x800F2D14 8FBF0024 */ lw	$ra, 0X24($sp)
.L_800F2D18:
/* 078998 0x800F2D18 27BD0028 */ addiu	$sp, $sp, 40
/* 078999 0x800F2D1C 03E00008 */ jr	$ra
/* 079000 0x800F2D20 00000000 */ nop
/* 079001 0x800F2D24 00000000 */ nop
/* 079002 0x800F2D28 00000000 */ nop
/* 079003 0x800F2D2C 00000000 */ nop
