.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80A22D40
/* 000000 0x80A22D40 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000001 0x80A22D44 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80A22D48 AFA40020 */ sw	$a0, 0X20($sp)
/* 000003 0x80A22D4C 00A03025 */ move	$a2, $a1
/* 000004 0x80A22D50 3C010001 */ lui	$at, 0x0001
/* 000005 0x80A22D54 34217D88 */ ori	$at, $at, 0X7D88
/* 000006 0x80A22D58 00C12021 */ addu	$a0, $a2, $at
/* 000007 0x80A22D5C AFA40018 */ sw	$a0, 0X18($sp)
/* 000008 0x80A22D60 0C04BD82 */ jal	Scene_FindSceneObjectIndex
/* 000009 0x80A22D64 24050167 */ li	$a1, 359
/* 000010 0x80A22D68 8FA30020 */ lw	$v1, 0X20($sp)
/* 000011 0x80A22D6C 00027400 */ sll	$t6, $v0, 16
/* 000012 0x80A22D70 000E7C03 */ sra	$t7, $t6, 16
/* 000013 0x80A22D74 8FA40018 */ lw	$a0, 0X18($sp)
/* 000014 0x80A22D78 05E00005 */ bltz	$t7, .L_80A22D90
/* 000015 0x80A22D7C A4620040 */ sh	$v0, 0X40($v1)
/* 000016 0x80A22D80 0C04BD9A */ jal	Scene_IsObjectLoaded
/* 000017 0x80A22D84 84650040 */ lh	$a1, 0X40($v1)
/* 000018 0x80A22D88 14400006 */ bnez	$v0, .L_80A22DA4
/* 000019 0x80A22D8C 8FA30020 */ lw	$v1, 0X20($sp)
.L_80A22D90:
/* 000020 0x80A22D90 2418FFFF */ li	$t8, -1
/* 000021 0x80A22D94 A478005C */ sh	$t8, 0X5C($v1)
/* 000022 0x80A22D98 AC600028 */ sw	$zero, 0X28($v1)
/* 000023 0x80A22D9C 10000002 */ b	.L_80A22DA8
/* 000024 0x80A22DA0 00001025 */ move	$v0, $zero
.L_80A22DA4:
/* 000025 0x80A22DA4 24020001 */ li	$v0, 1
.L_80A22DA8:
/* 000026 0x80A22DA8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000027 0x80A22DAC 27BD0020 */ addiu	$sp, $sp, 32
/* 000028 0x80A22DB0 03E00008 */ jr	$ra
/* 000029 0x80A22DB4 00000000 */ nop

glabel func_80A22DB8
/* 000030 0x80A22DB8 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000031 0x80A22DBC AFB00018 */ sw	$s0, 0X18($sp)
/* 000032 0x80A22DC0 00C08025 */ move	$s0, $a2
/* 000033 0x80A22DC4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000034 0x80A22DC8 AFA40020 */ sw	$a0, 0X20($sp)
/* 000035 0x80A22DCC AFA50024 */ sw	$a1, 0X24($sp)
/* 000036 0x80A22DD0 AFA7002C */ sw	$a3, 0X2C($sp)
/* 000037 0x80A22DD4 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000038 0x80A22DD8 02002025 */ move	$a0, $s0
/* 000039 0x80A22DDC 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000040 0x80A22DE0 24A50004 */ addiu	$a1, $a1, 4
/* 000041 0x80A22DE4 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000042 0x80A22DE8 2604000C */ addiu	$a0, $s0, 12
/* 000043 0x80A22DEC 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000044 0x80A22DF0 24A50010 */ addiu	$a1, $a1, 16
/* 000045 0x80A22DF4 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000046 0x80A22DF8 26040018 */ addiu	$a0, $s0, 24
/* 000047 0x80A22DFC 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000048 0x80A22E00 24A5001C */ addiu	$a1, $a1, 28
/* 000049 0x80A22E04 8FAE002C */ lw	$t6, 0X2C($sp)
/* 000050 0x80A22E08 85CF0028 */ lh	$t7, 0X28($t6)
/* 000051 0x80A22E0C 0C021BF7 */ jal	randZeroOne
/* 000052 0x80A22E10 A60F0042 */ sh	$t7, 0X42($s0)
/* 000053 0x80A22E14 3C0180A2 */ lui	$at, %hi(D_80A23030)
/* 000054 0x80A22E18 C4243030 */ lwc1	$f4, %lo(D_80A23030)($at)
/* 000055 0x80A22E1C 46040182 */ mul.s	$f6, $f0, $f4
/* 000056 0x80A22E20 4600320D */ trunc.w.s	$f8, $f6
/* 000057 0x80A22E24 44194000 */ mfc1	$t9, $f8
/* 000058 0x80A22E28 0C021BF7 */ jal	randZeroOne
/* 000059 0x80A22E2C A6190044 */ sh	$t9, 0X44($s0)
/* 000060 0x80A22E30 3C014400 */ lui	$at, 0x4400
/* 000061 0x80A22E34 44815000 */ mtc1	$at, $f10
/* 000062 0x80A22E38 3C0C80A2 */ lui	$t4, %hi(func_80A22E94)
/* 000063 0x80A22E3C 3C0D80A2 */ lui	$t5, %hi(func_80A22FE4)
/* 000064 0x80A22E40 460A0402 */ mul.s	$f16, $f0, $f10
/* 000065 0x80A22E44 240B0028 */ li	$t3, 40
/* 000066 0x80A22E48 258C2E94 */ addiu	$t4, $t4, %lo(func_80A22E94)
/* 000067 0x80A22E4C 25AD2FE4 */ addiu	$t5, $t5, %lo(func_80A22FE4)
/* 000068 0x80A22E50 A60B005C */ sh	$t3, 0X5C($s0)
/* 000069 0x80A22E54 AE0C0028 */ sw	$t4, 0X28($s0)
/* 000070 0x80A22E58 AE0D0024 */ sw	$t5, 0X24($s0)
/* 000071 0x80A22E5C 4600848D */ trunc.w.s	$f18, $f16
/* 000072 0x80A22E60 02002025 */ move	$a0, $s0
/* 000073 0x80A22E64 44099000 */ mfc1	$t1, $f18
/* 000074 0x80A22E68 00000000 */ nop
/* 000075 0x80A22E6C 252A0400 */ addiu	$t2, $t1, 1024
/* 000076 0x80A22E70 A60A0046 */ sh	$t2, 0X46($s0)
/* 000077 0x80A22E74 0C288B50 */ jal	func_80A22D40
/* 000078 0x80A22E78 8FA50020 */ lw	$a1, 0X20($sp)
/* 000079 0x80A22E7C 24020001 */ li	$v0, 1
/* 000080 0x80A22E80 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000081 0x80A22E84 8FB00018 */ lw	$s0, 0X18($sp)
/* 000082 0x80A22E88 27BD0020 */ addiu	$sp, $sp, 32
/* 000083 0x80A22E8C 03E00008 */ jr	$ra
/* 000084 0x80A22E90 00000000 */ nop

glabel func_80A22E94
/* 000085 0x80A22E94 27BDFFC8 */ addiu	$sp, $sp, -56
/* 000086 0x80A22E98 AFB1001C */ sw	$s1, 0X1C($sp)
/* 000087 0x80A22E9C AFB00018 */ sw	$s0, 0X18($sp)
/* 000088 0x80A22EA0 00C08025 */ move	$s0, $a2
/* 000089 0x80A22EA4 00808825 */ move	$s1, $a0
/* 000090 0x80A22EA8 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000091 0x80A22EAC AFB20020 */ sw	$s2, 0X20($sp)
/* 000092 0x80A22EB0 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000093 0x80A22EB4 8E320000 */ lw	$s2, 0X0($s1)
/* 000094 0x80A22EB8 02002025 */ move	$a0, $s0
/* 000095 0x80A22EBC 0C288B50 */ jal	func_80A22D40
/* 000096 0x80A22EC0 02202825 */ move	$a1, $s1
/* 000097 0x80A22EC4 50400042 */ beqzl	$v0, .L_80A22FD0
/* 000098 0x80A22EC8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000099 0x80A22ECC 860E0042 */ lh	$t6, 0X42($s0)
/* 000100 0x80A22ED0 3C0180A2 */ lui	$at, %hi(D_80A23034)
/* 000101 0x80A22ED4 C4283034 */ lwc1	$f8, %lo(D_80A23034)($at)
/* 000102 0x80A22ED8 448E2000 */ mtc1	$t6, $f4
/* 000103 0x80A22EDC 3C0180A2 */ lui	$at, %hi(D_80A23038)
/* 000104 0x80A22EE0 C4303038 */ lwc1	$f16, %lo(D_80A23038)($at)
/* 000105 0x80A22EE4 468021A0 */ cvt.s.w	$f6, $f4
/* 000106 0x80A22EE8 46083282 */ mul.s	$f10, $f6, $f8
/* 000107 0x80A22EEC 00000000 */ nop
/* 000108 0x80A22EF0 46105482 */ mul.s	$f18, $f10, $f16
/* 000109 0x80A22EF4 E7B2002C */ swc1	$f18, 0X2C($sp)
/* 000110 0x80A22EF8 8E4202C0 */ lw	$v0, 0X2C0($s2)
/* 000111 0x80A22EFC 3C18DB06 */ lui	$t8, 0xDB06
/* 000112 0x80A22F00 37180018 */ ori	$t8, $t8, 0X18
/* 000113 0x80A22F04 244F0008 */ addiu	$t7, $v0, 8
/* 000114 0x80A22F08 AE4F02C0 */ sw	$t7, 0X2C0($s2)
/* 000115 0x80A22F0C AC580000 */ sw	$t8, 0X0($v0)
/* 000116 0x80A22F10 86190040 */ lh	$t9, 0X40($s0)
/* 000117 0x80A22F14 3C0A0001 */ lui	$t2, 0x0001
/* 000118 0x80A22F18 00194100 */ sll	$t0, $t9, 4
/* 000119 0x80A22F1C 01194021 */ addu	$t0, $t0, $t9
/* 000120 0x80A22F20 00084080 */ sll	$t0, $t0, 2
/* 000121 0x80A22F24 02284821 */ addu	$t1, $s1, $t0
/* 000122 0x80A22F28 01495021 */ addu	$t2, $t2, $t1
/* 000123 0x80A22F2C 8D4A7D98 */ lw	$t2, 0X7D98($t2)
/* 000124 0x80A22F30 AC4A0004 */ sw	$t2, 0X4($v0)
/* 000125 0x80A22F34 0C04B0B7 */ jal	func_8012C2DC
/* 000126 0x80A22F38 8E240000 */ lw	$a0, 0X0($s1)
/* 000127 0x80A22F3C C60C0000 */ lwc1	$f12, 0X0($s0)
/* 000128 0x80A22F40 C60E0004 */ lwc1	$f14, 0X4($s0)
/* 000129 0x80A22F44 8E060008 */ lw	$a2, 0X8($s0)
/* 000130 0x80A22F48 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000131 0x80A22F4C 00003825 */ move	$a3, $zero
/* 000132 0x80A22F50 C7AC002C */ lwc1	$f12, 0X2C($sp)
/* 000133 0x80A22F54 24070001 */ li	$a3, 1
/* 000134 0x80A22F58 44066000 */ mfc1	$a2, $f12
/* 000135 0x80A22F5C 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000136 0x80A22F60 46006386 */ mov.s	$f14, $f12
/* 000137 0x80A22F64 3C010001 */ lui	$at, 0x0001
/* 000138 0x80A22F68 342187FC */ ori	$at, $at, 0X87FC
/* 000139 0x80A22F6C 02212021 */ addu	$a0, $s1, $at
/* 000140 0x80A22F70 0C060091 */ jal	SysMatrix_InsertMatrix
/* 000141 0x80A22F74 24050001 */ li	$a1, 1
/* 000142 0x80A22F78 86040044 */ lh	$a0, 0X44($s0)
/* 000143 0x80A22F7C 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 000144 0x80A22F80 24050001 */ li	$a1, 1
/* 000145 0x80A22F84 8E4202C0 */ lw	$v0, 0X2C0($s2)
/* 000146 0x80A22F88 3C0CDA38 */ lui	$t4, 0xDA38
/* 000147 0x80A22F8C 358C0003 */ ori	$t4, $t4, 0X3
/* 000148 0x80A22F90 244B0008 */ addiu	$t3, $v0, 8
/* 000149 0x80A22F94 AE4B02C0 */ sw	$t3, 0X2C0($s2)
/* 000150 0x80A22F98 02402025 */ move	$a0, $s2
/* 000151 0x80A22F9C AC4C0000 */ sw	$t4, 0X0($v0)
/* 000152 0x80A22FA0 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000153 0x80A22FA4 00408025 */ move	$s0, $v0
/* 000154 0x80A22FA8 AE020004 */ sw	$v0, 0X4($s0)
/* 000155 0x80A22FAC 8E4202C0 */ lw	$v0, 0X2C0($s2)
/* 000156 0x80A22FB0 3C0F0600 */ lui	$t7, 0x0600
/* 000157 0x80A22FB4 25EF0A38 */ addiu	$t7, $t7, 2616
/* 000158 0x80A22FB8 244D0008 */ addiu	$t5, $v0, 8
/* 000159 0x80A22FBC AE4D02C0 */ sw	$t5, 0X2C0($s2)
/* 000160 0x80A22FC0 3C0EDE00 */ lui	$t6, 0xDE00
/* 000161 0x80A22FC4 AC4E0000 */ sw	$t6, 0X0($v0)
/* 000162 0x80A22FC8 AC4F0004 */ sw	$t7, 0X4($v0)
/* 000163 0x80A22FCC 8FBF0024 */ lw	$ra, 0X24($sp)
.L_80A22FD0:
/* 000164 0x80A22FD0 8FB00018 */ lw	$s0, 0X18($sp)
/* 000165 0x80A22FD4 8FB1001C */ lw	$s1, 0X1C($sp)
/* 000166 0x80A22FD8 8FB20020 */ lw	$s2, 0X20($sp)
/* 000167 0x80A22FDC 03E00008 */ jr	$ra
/* 000168 0x80A22FE0 27BD0038 */ addiu	$sp, $sp, 56

glabel func_80A22FE4
/* 000169 0x80A22FE4 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000170 0x80A22FE8 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000171 0x80A22FEC 00802825 */ move	$a1, $a0
/* 000172 0x80A22FF0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000173 0x80A22FF4 AFA40018 */ sw	$a0, 0X18($sp)
/* 000174 0x80A22FF8 84CE0044 */ lh	$t6, 0X44($a2)
/* 000175 0x80A22FFC 84CF0046 */ lh	$t7, 0X46($a2)
/* 000176 0x80A23000 00C02025 */ move	$a0, $a2
/* 000177 0x80A23004 01CFC021 */ addu	$t8, $t6, $t7
/* 000178 0x80A23008 0C288B50 */ jal	func_80A22D40
/* 000179 0x80A2300C A4D80044 */ sh	$t8, 0X44($a2)
/* 000180 0x80A23010 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000181 0x80A23014 27BD0018 */ addiu	$sp, $sp, 24
/* 000182 0x80A23018 03E00008 */ jr	$ra
/* 000183 0x80A2301C 00000000 */ nop
