glabel Actor_SpawnTransitionActors
/* 021920 0x800BB140 27BDFFA0 */ addiu	$sp, $sp, -96
/* 021921 0x800BB144 AFB40058 */ sw	$s4, 0X58($sp)
/* 021922 0x800BB148 AFB30054 */ sw	$s3, 0X54($sp)
/* 021923 0x800BB14C 00809825 */ move	$s3, $a0
/* 021924 0x800BB150 00A0A025 */ move	$s4, $a1
/* 021925 0x800BB154 AFBF005C */ sw	$ra, 0X5C($sp)
/* 021926 0x800BB158 AFB20050 */ sw	$s2, 0X50($sp)
/* 021927 0x800BB15C AFB1004C */ sw	$s1, 0X4C($sp)
/* 021928 0x800BB160 AFB00048 */ sw	$s0, 0X48($sp)
/* 021929 0x800BB164 F7B40040 */ sdc1	$f20, 0X40($sp)
/* 021930 0x800BB168 3C010001 */ lui	$at, 0x0001
/* 021931 0x800BB16C 34218000 */ ori	$at, $at, 0X8000
/* 021932 0x800BB170 02618821 */ addu	$s1, $s3, $at
/* 021933 0x800BB174 92230760 */ lbu	$v1, 0X760($s1)
/* 021934 0x800BB178 8E300764 */ lw	$s0, 0X764($s1)
/* 021935 0x800BB17C 3C01801E */ lui	$at, %hi(D_801DCA9C)
/* 021936 0x800BB180 1860004A */ blez	$v1, .L_800BB2AC
/* 021937 0x800BB184 00009025 */ move	$s2, $zero
/* 021938 0x800BB188 C434CA9C */ lwc1	$f20, %lo(D_801DCA9C)($at)
.L_800BB18C:
/* 021939 0x800BB18C 86080004 */ lh	$t0, 0X4($s0)
/* 021940 0x800BB190 05020043 */ bltzl	$t0, .L_800BB2A0
/* 021941 0x800BB194 26520001 */ addiu	$s2, $s2, 1
/* 021942 0x800BB198 82020000 */ lb	$v0, 0X0($s0)
/* 021943 0x800BB19C 04420008 */ bltzl	$v0, .L_800BB1C0
/* 021944 0x800BB1A0 82020002 */ lb	$v0, 0X2($s0)
/* 021945 0x800BB1A4 822E06E0 */ lb	$t6, 0X6E0($s1)
/* 021946 0x800BB1A8 51C2000E */ beql	$t6, $v0, .L_800BB1E4
/* 021947 0x800BB1AC 8602000C */ lh	$v0, 0XC($s0)
/* 021948 0x800BB1B0 822F06F4 */ lb	$t7, 0X6F4($s1)
/* 021949 0x800BB1B4 51E2000B */ beql	$t7, $v0, .L_800BB1E4
/* 021950 0x800BB1B8 8602000C */ lh	$v0, 0XC($s0)
/* 021951 0x800BB1BC 82020002 */ lb	$v0, 0X2($s0)
.L_800BB1C0:
/* 021952 0x800BB1C0 04420037 */ bltzl	$v0, .L_800BB2A0
/* 021953 0x800BB1C4 26520001 */ addiu	$s2, $s2, 1
/* 021954 0x800BB1C8 823806E0 */ lb	$t8, 0X6E0($s1)
/* 021955 0x800BB1CC 53020005 */ beql	$t8, $v0, .L_800BB1E4
/* 021956 0x800BB1D0 8602000C */ lh	$v0, 0XC($s0)
/* 021957 0x800BB1D4 823906F4 */ lb	$t9, 0X6F4($s1)
/* 021958 0x800BB1D8 57220031 */ bnel	$t9, $v0, .L_800BB2A0
/* 021959 0x800BB1DC 26520001 */ addiu	$s2, $s2, 1
/* 021960 0x800BB1E0 8602000C */ lh	$v0, 0XC($s0)
.L_800BB1E4:
/* 021961 0x800BB1E4 860D0008 */ lh	$t5, 0X8($s0)
/* 021962 0x800BB1E8 860C0006 */ lh	$t4, 0X6($s0)
/* 021963 0x800BB1EC 000249C3 */ sra	$t1, $v0, 7
/* 021964 0x800BB1F0 312A01FF */ andi	$t2, $t1, 0X1FF
/* 021965 0x800BB1F4 448A2000 */ mtc1	$t2, $f4
/* 021966 0x800BB1F8 448D9000 */ mtc1	$t5, $f18
/* 021967 0x800BB1FC 448C8000 */ mtc1	$t4, $f16
/* 021968 0x800BB200 468021A0 */ cvt.s.w	$f6, $f4
/* 021969 0x800BB204 31061FFF */ andi	$a2, $t0, 0X1FFF
/* 021970 0x800BB208 00127A80 */ sll	$t7, $s2, 10
/* 021971 0x800BB20C 00063400 */ sll	$a2, $a2, 16
/* 021972 0x800BB210 240B03FF */ li	$t3, 1023
/* 021973 0x800BB214 46809120 */ cvt.s.w	$f4, $f18
/* 021974 0x800BB218 46143202 */ mul.s	$f8, $f6, $f20
/* 021975 0x800BB21C 304A007F */ andi	$t2, $v0, 0X7F
/* 021976 0x800BB220 00063403 */ sra	$a2, $a2, 16
/* 021977 0x800BB224 02802025 */ move	$a0, $s4
/* 021978 0x800BB228 02602825 */ move	$a1, $s3
/* 021979 0x800BB22C E7A40010 */ swc1	$f4, 0X10($sp)
/* 021980 0x800BB230 860E000A */ lh	$t6, 0XA($s0)
/* 021981 0x800BB234 4600428D */ trunc.w.s	$f10, $f8
/* 021982 0x800BB238 AFA00020 */ sw	$zero, 0X20($sp)
/* 021983 0x800BB23C 448E3000 */ mtc1	$t6, $f6
/* 021984 0x800BB240 46808420 */ cvt.s.w	$f16, $f16
/* 021985 0x800BB244 44035000 */ mfc1	$v1, $f10
/* 021986 0x800BB248 AFA00018 */ sw	$zero, 0X18($sp)
/* 021987 0x800BB24C 00031C00 */ sll	$v1, $v1, 16
/* 021988 0x800BB250 46803220 */ cvt.s.w	$f8, $f6
/* 021989 0x800BB254 00031C03 */ sra	$v1, $v1, 16
/* 021990 0x800BB258 AFA3001C */ sw	$v1, 0X1C($sp)
/* 021991 0x800BB25C 44078000 */ mfc1	$a3, $f16
/* 021992 0x800BB260 E7A80014 */ swc1	$f8, 0X14($sp)
/* 021993 0x800BB264 9618000E */ lhu	$t8, 0XE($s0)
/* 021994 0x800BB268 AFA00030 */ sw	$zero, 0X30($sp)
/* 021995 0x800BB26C AFAB002C */ sw	$t3, 0X2C($sp)
/* 021996 0x800BB270 331903FF */ andi	$t9, $t8, 0X3FF
/* 021997 0x800BB274 01F94821 */ addu	$t1, $t7, $t9
/* 021998 0x800BB278 AFA90024 */ sw	$t1, 0X24($sp)
/* 021999 0x800BB27C 0C02EB85 */ jal	Actor_SpawnWithParentAndCutscene
/* 022000 0x800BB280 AFAA0028 */ sw	$t2, 0X28($sp)
/* 022001 0x800BB284 50400005 */ beqzl	$v0, .L_800BB29C
/* 022002 0x800BB288 92230760 */ lbu	$v1, 0X760($s1)
/* 022003 0x800BB28C 860C0004 */ lh	$t4, 0X4($s0)
/* 022004 0x800BB290 000C6823 */ negu	$t5, $t4
/* 022005 0x800BB294 A60D0004 */ sh	$t5, 0X4($s0)
/* 022006 0x800BB298 92230760 */ lbu	$v1, 0X760($s1)
.L_800BB29C:
/* 022007 0x800BB29C 26520001 */ addiu	$s2, $s2, 1
.L_800BB2A0:
/* 022008 0x800BB2A0 0243082A */ slt	$at, $s2, $v1
/* 022009 0x800BB2A4 1420FFB9 */ bnez	$at, .L_800BB18C
/* 022010 0x800BB2A8 26100010 */ addiu	$s0, $s0, 16
.L_800BB2AC:
/* 022011 0x800BB2AC 8FBF005C */ lw	$ra, 0X5C($sp)
/* 022012 0x800BB2B0 D7B40040 */ ldc1	$f20, 0X40($sp)
/* 022013 0x800BB2B4 8FB00048 */ lw	$s0, 0X48($sp)
/* 022014 0x800BB2B8 8FB1004C */ lw	$s1, 0X4C($sp)
/* 022015 0x800BB2BC 8FB20050 */ lw	$s2, 0X50($sp)
/* 022016 0x800BB2C0 8FB30054 */ lw	$s3, 0X54($sp)
/* 022017 0x800BB2C4 8FB40058 */ lw	$s4, 0X58($sp)
/* 022018 0x800BB2C8 03E00008 */ jr	$ra
/* 022019 0x800BB2CC 27BD0060 */ addiu	$sp, $sp, 96

