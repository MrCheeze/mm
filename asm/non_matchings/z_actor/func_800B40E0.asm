glabel func_800B40E0
/* 014728 0x800B40E0 27BDFFC0 */ addiu	$sp, $sp, -64
/* 014729 0x800B40E4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 014730 0x800B40E8 AFB00018 */ sw	$s0, 0X18($sp)
/* 014731 0x800B40EC AFA40040 */ sw	$a0, 0X40($sp)
/* 014732 0x800B40F0 AFA60048 */ sw	$a2, 0X48($sp)
/* 014733 0x800B40F4 8FAE0040 */ lw	$t6, 0X40($sp)
/* 014734 0x800B40F8 3C013F80 */ lui	$at, 0x3F80
/* 014735 0x800B40FC 44818000 */ mtc1	$at, $f16
/* 014736 0x800B4100 8DD00000 */ lw	$s0, 0X0($t6)
/* 014737 0x800B4104 8E0302B0 */ lw	$v1, 0X2B0($s0)
/* 014738 0x800B4108 44872000 */ mtc1	$a3, $f4
/* 014739 0x800B410C 3C18FA00 */ lui	$t8, 0xFA00
/* 014740 0x800B4110 246F0008 */ addiu	$t7, $v1, 8
/* 014741 0x800B4114 468021A0 */ cvt.s.w	$f6, $f4
/* 014742 0x800B4118 AE0F02B0 */ sw	$t7, 0X2B0($s0)
/* 014743 0x800B411C 3C01801E */ lui	$at, %hi(D_801DCA18)
/* 014744 0x800B4120 AC780000 */ sw	$t8, 0X0($v1)
/* 014745 0x800B4124 C428CA18 */ lwc1	$f8, %lo(D_801DCA18)($at)
/* 014746 0x800B4128 C7AA0050 */ lwc1	$f10, 0X50($sp)
/* 014747 0x800B412C 46083002 */ mul.s	$f0, $f6, $f8
/* 014748 0x800B4130 4600803C */ c.lt.s	$f16, $f0
/* 014749 0x800B4134 00000000 */ nop
/* 014750 0x800B4138 45020004 */ bc1fl .L_800B414C
/* 014751 0x800B413C 46000086 */ mov.s	$f2, $f0
/* 014752 0x800B4140 10000002 */ b	.L_800B414C
/* 014753 0x800B4144 46008086 */ mov.s	$f2, $f16
/* 014754 0x800B4148 46000086 */ mov.s	$f2, $f0
.L_800B414C:
/* 014755 0x800B414C 460A1482 */ mul.s	$f18, $f2, $f10
/* 014756 0x800B4150 24080001 */ li	$t0, 1
/* 014757 0x800B4154 4459F800 */ cfc1	$t9, $31
/* 014758 0x800B4158 44C8F800 */ ctc1	$t0, $31
/* 014759 0x800B415C 00000000 */ nop
/* 014760 0x800B4160 46009124 */ cvt.w.s	$f4, $f18
/* 014761 0x800B4164 4448F800 */ cfc1	$t0, $31
/* 014762 0x800B4168 00000000 */ nop
/* 014763 0x800B416C 31080078 */ andi	$t0, $t0, 0X78
/* 014764 0x800B4170 11000012 */ beqz	$t0, .L_800B41BC
/* 014765 0x800B4174 3C014F00 */ lui	$at, 0x4F00
/* 014766 0x800B4178 44812000 */ mtc1	$at, $f4
/* 014767 0x800B417C 24080001 */ li	$t0, 1
/* 014768 0x800B4180 46049101 */ sub.s	$f4, $f18, $f4
/* 014769 0x800B4184 44C8F800 */ ctc1	$t0, $31
/* 014770 0x800B4188 00000000 */ nop
/* 014771 0x800B418C 46002124 */ cvt.w.s	$f4, $f4
/* 014772 0x800B4190 4448F800 */ cfc1	$t0, $31
/* 014773 0x800B4194 00000000 */ nop
/* 014774 0x800B4198 31080078 */ andi	$t0, $t0, 0X78
/* 014775 0x800B419C 15000005 */ bnez	$t0, .L_800B41B4
/* 014776 0x800B41A0 00000000 */ nop
/* 014777 0x800B41A4 44082000 */ mfc1	$t0, $f4
/* 014778 0x800B41A8 3C018000 */ lui	$at, 0x8000
/* 014779 0x800B41AC 10000007 */ b	.L_800B41CC
/* 014780 0x800B41B0 01014025 */ or	$t0, $t0, $at
.L_800B41B4:
/* 014781 0x800B41B4 10000005 */ b	.L_800B41CC
/* 014782 0x800B41B8 2408FFFF */ li	$t0, -1
.L_800B41BC:
/* 014783 0x800B41BC 44082000 */ mfc1	$t0, $f4
/* 014784 0x800B41C0 00000000 */ nop
/* 014785 0x800B41C4 0500FFFB */ bltz	$t0, .L_800B41B4
/* 014786 0x800B41C8 00000000 */ nop
.L_800B41CC:
/* 014787 0x800B41CC 44D9F800 */ ctc1	$t9, $31
/* 014788 0x800B41D0 310A00FF */ andi	$t2, $t0, 0XFF
/* 014789 0x800B41D4 AC6A0004 */ sw	$t2, 0X4($v1)
/* 014790 0x800B41D8 80AB0008 */ lb	$t3, 0X8($a1)
/* 014791 0x800B41DC 80AC000A */ lb	$t4, 0XA($a1)
/* 014792 0x800B41E0 AFA50044 */ sw	$a1, 0X44($sp)
/* 014793 0x800B41E4 448B3000 */ mtc1	$t3, $f6
/* 014794 0x800B41E8 448C4000 */ mtc1	$t4, $f8
/* 014795 0x800B41EC 468033A0 */ cvt.s.w	$f14, $f6
/* 014796 0x800B41F0 0C060040 */ jal	atans_flip
/* 014797 0x800B41F4 46804320 */ cvt.s.w	$f12, $f8
/* 014798 0x800B41F8 8FA50044 */ lw	$a1, 0X44($sp)
/* 014799 0x800B41FC 3C013F80 */ lui	$at, 0x3F80
/* 014800 0x800B4200 44811000 */ mtc1	$at, $f2
/* 014801 0x800B4204 80AD0009 */ lb	$t5, 0X9($a1)
/* 014802 0x800B4208 3C01801E */ lui	$at, %hi(D_801DCA1C)
/* 014803 0x800B420C C424CA1C */ lwc1	$f4, %lo(D_801DCA1C)($at)
/* 014804 0x800B4210 448D5000 */ mtc1	$t5, $f10
/* 014805 0x800B4214 3C014090 */ lui	$at, 0x4090
/* 014806 0x800B4218 44814000 */ mtc1	$at, $f8
/* 014807 0x800B421C 468054A0 */ cvt.s.w	$f18, $f10
/* 014808 0x800B4220 C7A00058 */ lwc1	$f0, 0X58($sp)
/* 014809 0x800B4224 00023400 */ sll	$a2, $v0, 16
/* 014810 0x800B4228 00063403 */ sra	$a2, $a2, 16
/* 014811 0x800B422C 8FA40048 */ lw	$a0, 0X48($sp)
/* 014812 0x800B4230 46049182 */ mul.s	$f6, $f18, $f4
/* 014813 0x800B4234 46064281 */ sub.s	$f10, $f8, $f6
/* 014814 0x800B4238 460A0002 */ mul.s	$f0, $f0, $f10
/* 014815 0x800B423C 4602003C */ c.lt.s	$f0, $f2
/* 014816 0x800B4240 00000000 */ nop
/* 014817 0x800B4244 45020003 */ bc1fl .L_800B4254
/* 014818 0x800B4248 A7A6003A */ sh	$a2, 0X3A($sp)
/* 014819 0x800B424C 46001006 */ mov.s	$f0, $f2
/* 014820 0x800B4250 A7A6003A */ sh	$a2, 0X3A($sp)
.L_800B4254:
/* 014821 0x800B4254 0C060083 */ jal	SysMatrix_SetCurrentState
/* 014822 0x800B4258 E7A00058 */ swc1	$f0, 0X58($sp)
/* 014823 0x800B425C 87A6003A */ lh	$a2, 0X3A($sp)
/* 014824 0x800B4260 24050001 */ li	$a1, 1
/* 014825 0x800B4264 00062400 */ sll	$a0, $a2, 16
/* 014826 0x800B4268 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 014827 0x800B426C 00042403 */ sra	$a0, $a0, 16
/* 014828 0x800B4270 C7A00058 */ lwc1	$f0, 0X58($sp)
/* 014829 0x800B4274 C7AC0054 */ lwc1	$f12, 0X54($sp)
/* 014830 0x800B4278 3C013F80 */ lui	$at, 0x3F80
/* 014831 0x800B427C 44817000 */ mtc1	$at, $f14
/* 014832 0x800B4280 46006482 */ mul.s	$f18, $f12, $f0
/* 014833 0x800B4284 24070001 */ li	$a3, 1
/* 014834 0x800B4288 44069000 */ mfc1	$a2, $f18
/* 014835 0x800B428C 0C0600E7 */ jal	SysMatrix_InsertScale
/* 014836 0x800B4290 00000000 */ nop
/* 014837 0x800B4294 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 014838 0x800B4298 3C0FDA38 */ lui	$t7, 0xDA38
/* 014839 0x800B429C 35EF0003 */ ori	$t7, $t7, 0X3
/* 014840 0x800B42A0 244E0008 */ addiu	$t6, $v0, 8
/* 014841 0x800B42A4 AE0E02B0 */ sw	$t6, 0X2B0($s0)
/* 014842 0x800B42A8 AC4F0000 */ sw	$t7, 0X0($v0)
/* 014843 0x800B42AC 8FB80040 */ lw	$t8, 0X40($sp)
/* 014844 0x800B42B0 8F040000 */ lw	$a0, 0X0($t8)
/* 014845 0x800B42B4 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 014846 0x800B42B8 AFA20020 */ sw	$v0, 0X20($sp)
/* 014847 0x800B42BC 8FA30020 */ lw	$v1, 0X20($sp)
/* 014848 0x800B42C0 3C08DE00 */ lui	$t0, 0xDE00
/* 014849 0x800B42C4 AC620004 */ sw	$v0, 0X4($v1)
/* 014850 0x800B42C8 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 014851 0x800B42CC 3C090407 */ lui	$t1, 0x0407
/* 014852 0x800B42D0 25295B30 */ addiu	$t1, $t1, 23344
/* 014853 0x800B42D4 24590008 */ addiu	$t9, $v0, 8
/* 014854 0x800B42D8 AE1902B0 */ sw	$t9, 0X2B0($s0)
/* 014855 0x800B42DC AC490004 */ sw	$t1, 0X4($v0)
/* 014856 0x800B42E0 AC480000 */ sw	$t0, 0X0($v0)
/* 014857 0x800B42E4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 014858 0x800B42E8 8FB00018 */ lw	$s0, 0X18($sp)
/* 014859 0x800B42EC 27BD0040 */ addiu	$sp, $sp, 64
/* 014860 0x800B42F0 03E00008 */ jr	$ra
/* 014861 0x800B42F4 00000000 */ nop

