.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_809805D0
/* 000000 0x809805D0 27BDFFD0 */ addiu	$sp, $sp, -48
/* 000001 0x809805D4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x809805D8 AFA40030 */ sw	$a0, 0X30($sp)
/* 000003 0x809805DC AFA50034 */ sw	$a1, 0X34($sp)
/* 000004 0x809805E0 8FA40030 */ lw	$a0, 0X30($sp)
/* 000005 0x809805E4 3C010001 */ lui	$at, 0x0001
/* 000006 0x809805E8 34217D88 */ ori	$at, $at, 0X7D88
/* 000007 0x809805EC 00812021 */ addu	$a0, $a0, $at
/* 000008 0x809805F0 AFA4001C */ sw	$a0, 0X1C($sp)
/* 000009 0x809805F4 240500E7 */ li	$a1, 231
/* 000010 0x809805F8 AFA60038 */ sw	$a2, 0X38($sp)
/* 000011 0x809805FC 0C04BD82 */ jal	Scene_FindSceneObjectIndex
/* 000012 0x80980600 AFA7003C */ sw	$a3, 0X3C($sp)
/* 000013 0x80980604 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000014 0x80980608 8FA60038 */ lw	$a2, 0X38($sp)
/* 000015 0x8098060C 8FA7003C */ lw	$a3, 0X3C($sp)
/* 000016 0x80980610 0440003B */ bltz	$v0, .L_80980700
/* 000017 0x80980614 00402825 */ move	$a1, $v0
/* 000018 0x80980618 AFA20024 */ sw	$v0, 0X24($sp)
/* 000019 0x8098061C AFA60038 */ sw	$a2, 0X38($sp)
/* 000020 0x80980620 0C04BD9A */ jal	Scene_IsObjectLoaded
/* 000021 0x80980624 AFA7003C */ sw	$a3, 0X3C($sp)
/* 000022 0x80980628 8FA50024 */ lw	$a1, 0X24($sp)
/* 000023 0x8098062C 8FA60038 */ lw	$a2, 0X38($sp)
/* 000024 0x80980630 10400033 */ beqz	$v0, .L_80980700
/* 000025 0x80980634 8FA7003C */ lw	$a3, 0X3C($sp)
/* 000026 0x80980638 3C048020 */ lui	$a0, %hi(gRspSegmentPhysAddrs)
/* 000027 0x8098063C 24848180 */ addiu	$a0, $a0, %lo(gRspSegmentPhysAddrs)
/* 000028 0x80980640 8FAE0030 */ lw	$t6, 0X30($sp)
/* 000029 0x80980644 00057900 */ sll	$t7, $a1, 4
/* 000030 0x80980648 01E57821 */ addu	$t7, $t7, $a1
/* 000031 0x8098064C 000F7880 */ sll	$t7, $t7, 2
/* 000032 0x80980650 3C190001 */ lui	$t9, 0x0001
/* 000033 0x80980654 01CFC021 */ addu	$t8, $t6, $t7
/* 000034 0x80980658 0338C821 */ addu	$t9, $t9, $t8
/* 000035 0x8098065C 8F397D98 */ lw	$t9, 0X7D98($t9)
/* 000036 0x80980660 3C018000 */ lui	$at, 0x8000
/* 000037 0x80980664 8C830018 */ lw	$v1, 0X18($a0)
/* 000038 0x80980668 03214021 */ addu	$t0, $t9, $at
/* 000039 0x8098066C AC880018 */ sw	$t0, 0X18($a0)
/* 000040 0x80980670 8CEA0000 */ lw	$t2, 0X0($a3)
/* 000041 0x80980674 3C0F8098 */ lui	$t7, %hi(func_80980714)
/* 000042 0x80980678 3C188098 */ lui	$t8, %hi(func_8098087C)
/* 000043 0x8098067C ACCA0000 */ sw	$t2, 0X0($a2)
/* 000044 0x80980680 8CE90004 */ lw	$t1, 0X4($a3)
/* 000045 0x80980684 25EF0714 */ addiu	$t7, $t7, %lo(func_80980714)
/* 000046 0x80980688 2718087C */ addiu	$t8, $t8, %lo(func_8098087C)
/* 000047 0x8098068C ACC90004 */ sw	$t1, 0X4($a2)
/* 000048 0x80980690 8CEA0008 */ lw	$t2, 0X8($a3)
/* 000049 0x80980694 24190032 */ li	$t9, 50
/* 000050 0x80980698 24020001 */ li	$v0, 1
/* 000051 0x8098069C ACCA0008 */ sw	$t2, 0X8($a2)
/* 000052 0x809806A0 8CEC000C */ lw	$t4, 0XC($a3)
/* 000053 0x809806A4 240A0005 */ li	$t2, 5
/* 000054 0x809806A8 ACCC000C */ sw	$t4, 0XC($a2)
/* 000055 0x809806AC 8CEB0010 */ lw	$t3, 0X10($a3)
/* 000056 0x809806B0 ACCB0010 */ sw	$t3, 0X10($a2)
/* 000057 0x809806B4 8CEC0014 */ lw	$t4, 0X14($a3)
/* 000058 0x809806B8 ACCC0014 */ sw	$t4, 0X14($a2)
/* 000059 0x809806BC 8CEE0018 */ lw	$t6, 0X18($a3)
/* 000060 0x809806C0 ACCE0018 */ sw	$t6, 0X18($a2)
/* 000061 0x809806C4 8CED001C */ lw	$t5, 0X1C($a3)
/* 000062 0x809806C8 ACCD001C */ sw	$t5, 0X1C($a2)
/* 000063 0x809806CC 8CEE0020 */ lw	$t6, 0X20($a3)
/* 000064 0x809806D0 ACCF0028 */ sw	$t7, 0X28($a2)
/* 000065 0x809806D4 ACD80024 */ sw	$t8, 0X24($a2)
/* 000066 0x809806D8 A4D9005C */ sh	$t9, 0X5C($a2)
/* 000067 0x809806DC ACCE0020 */ sw	$t6, 0X20($a2)
/* 000068 0x809806E0 84E80026 */ lh	$t0, 0X26($a3)
/* 000069 0x809806E4 A4C80044 */ sh	$t0, 0X44($a2)
/* 000070 0x809806E8 84E90024 */ lh	$t1, 0X24($a3)
/* 000071 0x809806EC A4CA0042 */ sh	$t2, 0X42($a2)
/* 000072 0x809806F0 A4C50040 */ sh	$a1, 0X40($a2)
/* 000073 0x809806F4 A4C90046 */ sh	$t1, 0X46($a2)
/* 000074 0x809806F8 10000002 */ b	.L_80980704
/* 000075 0x809806FC AC830018 */ sw	$v1, 0X18($a0)
.L_80980700:
/* 000076 0x80980700 00001025 */ move	$v0, $zero
.L_80980704:
/* 000077 0x80980704 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000078 0x80980708 27BD0030 */ addiu	$sp, $sp, 48
/* 000079 0x8098070C 03E00008 */ jr	$ra
/* 000080 0x80980710 00000000 */ nop

glabel func_80980714
/* 000081 0x80980714 27BDFFB8 */ addiu	$sp, $sp, -72
/* 000082 0x80980718 AFB20020 */ sw	$s2, 0X20($sp)
/* 000083 0x8098071C AFB1001C */ sw	$s1, 0X1C($sp)
/* 000084 0x80980720 00808825 */ move	$s1, $a0
/* 000085 0x80980724 00C09025 */ move	$s2, $a2
/* 000086 0x80980728 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000087 0x8098072C AFB00018 */ sw	$s0, 0X18($sp)
/* 000088 0x80980730 AFA5004C */ sw	$a1, 0X4C($sp)
/* 000089 0x80980734 864E0046 */ lh	$t6, 0X46($s2)
/* 000090 0x80980738 3C0142C8 */ lui	$at, 0x42C8
/* 000091 0x8098073C 44814000 */ mtc1	$at, $f8
/* 000092 0x80980740 448E2000 */ mtc1	$t6, $f4
/* 000093 0x80980744 3C050001 */ lui	$a1, 0x0001
/* 000094 0x80980748 3C018000 */ lui	$at, 0x8000
/* 000095 0x8098074C 468021A0 */ cvt.s.w	$f6, $f4
/* 000096 0x80980750 00003825 */ move	$a3, $zero
/* 000097 0x80980754 46083283 */ div.s	$f10, $f6, $f8
/* 000098 0x80980758 E7AA0040 */ swc1	$f10, 0X40($sp)
/* 000099 0x8098075C 864F0040 */ lh	$t7, 0X40($s2)
/* 000100 0x80980760 000FC100 */ sll	$t8, $t7, 4
/* 000101 0x80980764 030FC021 */ addu	$t8, $t8, $t7
/* 000102 0x80980768 0018C080 */ sll	$t8, $t8, 2
/* 000103 0x8098076C 0238C821 */ addu	$t9, $s1, $t8
/* 000104 0x80980770 00B92821 */ addu	$a1, $a1, $t9
/* 000105 0x80980774 8CA57D98 */ lw	$a1, 0X7D98($a1)
/* 000106 0x80980778 00A14021 */ addu	$t0, $a1, $at
/* 000107 0x8098077C 8E300000 */ lw	$s0, 0X0($s1)
/* 000108 0x80980780 3C018020 */ lui	$at, %hi(gRspSegmentPhysAddrs + 0x18)
/* 000109 0x80980784 AC288198 */ sw	$t0, %lo(gRspSegmentPhysAddrs + 0x18)($at)
/* 000110 0x80980788 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000111 0x8098078C 3C0ADB06 */ lui	$t2, 0xDB06
/* 000112 0x80980790 354A0018 */ ori	$t2, $t2, 0X18
/* 000113 0x80980794 24490008 */ addiu	$t1, $v0, 8
/* 000114 0x80980798 AE0902C0 */ sw	$t1, 0X2C0($s0)
/* 000115 0x8098079C AC450004 */ sw	$a1, 0X4($v0)
/* 000116 0x809807A0 AC4A0000 */ sw	$t2, 0X0($v0)
/* 000117 0x809807A4 C64C0000 */ lwc1	$f12, 0X0($s2)
/* 000118 0x809807A8 C64E0004 */ lwc1	$f14, 0X4($s2)
/* 000119 0x809807AC 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000120 0x809807B0 8E460008 */ lw	$a2, 0X8($s2)
/* 000121 0x809807B4 C7AC0040 */ lwc1	$f12, 0X40($sp)
/* 000122 0x809807B8 24070001 */ li	$a3, 1
/* 000123 0x809807BC 44066000 */ mfc1	$a2, $f12
/* 000124 0x809807C0 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000125 0x809807C4 46006386 */ mov.s	$f14, $f12
/* 000126 0x809807C8 0C04B0B7 */ jal	func_8012C2DC
/* 000127 0x809807CC 8E240000 */ lw	$a0, 0X0($s1)
/* 000128 0x809807D0 3C010001 */ lui	$at, 0x0001
/* 000129 0x809807D4 342187FC */ ori	$at, $at, 0X87FC
/* 000130 0x809807D8 0C060828 */ jal	SysMatrix_NormalizeXYZ
/* 000131 0x809807DC 02212021 */ addu	$a0, $s1, $at
/* 000132 0x809807E0 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000133 0x809807E4 3C0CDA38 */ lui	$t4, 0xDA38
/* 000134 0x809807E8 358C0003 */ ori	$t4, $t4, 0X3
/* 000135 0x809807EC 244B0008 */ addiu	$t3, $v0, 8
/* 000136 0x809807F0 AE0B02C0 */ sw	$t3, 0X2C0($s0)
/* 000137 0x809807F4 AC4C0000 */ sw	$t4, 0X0($v0)
/* 000138 0x809807F8 8E240000 */ lw	$a0, 0X0($s1)
/* 000139 0x809807FC 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000140 0x80980800 AFA2002C */ sw	$v0, 0X2C($sp)
/* 000141 0x80980804 8FA3002C */ lw	$v1, 0X2C($sp)
/* 000142 0x80980808 AC620004 */ sw	$v0, 0X4($v1)
/* 000143 0x8098080C 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000144 0x80980810 3C0EDB06 */ lui	$t6, 0xDB06
/* 000145 0x80980814 35CE0020 */ ori	$t6, $t6, 0X20
/* 000146 0x80980818 244D0008 */ addiu	$t5, $v0, 8
/* 000147 0x8098081C AE0D02C0 */ sw	$t5, 0X2C0($s0)
/* 000148 0x80980820 AC4E0000 */ sw	$t6, 0X0($v0)
/* 000149 0x80980824 864F0044 */ lh	$t7, 0X44($s2)
/* 000150 0x80980828 3C048098 */ lui	$a0, %hi(D_809808F0)
/* 000151 0x8098082C 00408825 */ move	$s1, $v0
/* 000152 0x80980830 000FC080 */ sll	$t8, $t7, 2
/* 000153 0x80980834 00982021 */ addu	$a0, $a0, $t8
/* 000154 0x80980838 0C040141 */ jal	Lib_PtrSegToVirt
/* 000155 0x8098083C 8C8408F0 */ lw	$a0, %lo(D_809808F0)($a0)
/* 000156 0x80980840 AE220004 */ sw	$v0, 0X4($s1)
/* 000157 0x80980844 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000158 0x80980848 3C090600 */ lui	$t1, 0x0600
/* 000159 0x8098084C 25290DC0 */ addiu	$t1, $t1, 3520
/* 000160 0x80980850 24590008 */ addiu	$t9, $v0, 8
/* 000161 0x80980854 AE1902C0 */ sw	$t9, 0X2C0($s0)
/* 000162 0x80980858 3C08DE00 */ lui	$t0, 0xDE00
/* 000163 0x8098085C AC480000 */ sw	$t0, 0X0($v0)
/* 000164 0x80980860 AC490004 */ sw	$t1, 0X4($v0)
/* 000165 0x80980864 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000166 0x80980868 8FB00018 */ lw	$s0, 0X18($sp)
/* 000167 0x8098086C 8FB1001C */ lw	$s1, 0X1C($sp)
/* 000168 0x80980870 8FB20020 */ lw	$s2, 0X20($sp)
/* 000169 0x80980874 03E00008 */ jr	$ra
/* 000170 0x80980878 27BD0048 */ addiu	$sp, $sp, 72

glabel func_8098087C
/* 000171 0x8098087C AFA50004 */ sw	$a1, 0X4($sp)
/* 000172 0x80980880 84C20042 */ lh	$v0, 0X42($a2)
/* 000173 0x80980884 10400003 */ beqz	$v0, .L_80980894
/* 000174 0x80980888 244EFFFF */ addiu	$t6, $v0, -1
/* 000175 0x8098088C 10000004 */ b	.L_809808A0
/* 000176 0x80980890 A4CE0042 */ sh	$t6, 0X42($a2)
.L_80980894:
/* 000177 0x80980894 44802000 */ mtc1	$zero, $f4
/* 000178 0x80980898 00000000 */ nop
/* 000179 0x8098089C E4C40010 */ swc1	$f4, 0X10($a2)
.L_809808A0:
/* 000180 0x809808A0 84CF0042 */ lh	$t7, 0X42($a2)
/* 000181 0x809808A4 24010001 */ li	$at, 1
/* 000182 0x809808A8 15E10009 */ bne	$t7, $at, .L_809808D0
/* 000183 0x809808AC 00000000 */ nop
/* 000184 0x809808B0 84D80044 */ lh	$t8, 0X44($a2)
/* 000185 0x809808B4 3C088098 */ lui	$t0, %hi(D_809808E0)
/* 000186 0x809808B8 3C010001 */ lui	$at, 0x0001
/* 000187 0x809808BC 0018C840 */ sll	$t9, $t8, 1
/* 000188 0x809808C0 01194021 */ addu	$t0, $t0, $t9
/* 000189 0x809808C4 850808E0 */ lh	$t0, %lo(D_809808E0)($t0)
/* 000190 0x809808C8 00240821 */ addu	$at, $at, $a0
/* 000191 0x809808CC A4286C44 */ sh	$t0, 0X6C44($at)
.L_809808D0:
/* 000192 0x809808D0 03E00008 */ jr	$ra
/* 000193 0x809808D4 00000000 */ nop
/* 000194 0x809808D8 00000000 */ nop
/* 000195 0x809808DC 00000000 */ nop
