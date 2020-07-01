.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80B6E820
/* 000000 0x80B6E820 8C820178 */ lw	$v0, 0X178($a0)
/* 000001 0x80B6E824 904E0016 */ lbu	$t6, 0X16($v0)
/* 000002 0x80B6E828 31CF0002 */ andi	$t7, $t6, 0X2
/* 000003 0x80B6E82C 51E00004 */ beqzl	$t7, .L_80B6E840
/* 000004 0x80B6E830 90580056 */ lbu	$t8, 0X56($v0)
/* 000005 0x80B6E834 03E00008 */ jr	$ra
/* 000006 0x80B6E838 00001025 */ move	$v0, $zero
/* 000007 0x80B6E83C 90580056 */ lbu	$t8, 0X56($v0)
.L_80B6E840:
/* 000008 0x80B6E840 33190002 */ andi	$t9, $t8, 0X2
/* 000009 0x80B6E844 53200004 */ beqzl	$t9, .L_80B6E858
/* 000010 0x80B6E848 90480096 */ lbu	$t0, 0X96($v0)
/* 000011 0x80B6E84C 03E00008 */ jr	$ra
/* 000012 0x80B6E850 24020001 */ li	$v0, 1
/* 000013 0x80B6E854 90480096 */ lbu	$t0, 0X96($v0)
.L_80B6E858:
/* 000014 0x80B6E858 31090002 */ andi	$t1, $t0, 0X2
/* 000015 0x80B6E85C 51200004 */ beqzl	$t1, .L_80B6E870
/* 000016 0x80B6E860 904A00D6 */ lbu	$t2, 0XD6($v0)
/* 000017 0x80B6E864 03E00008 */ jr	$ra
/* 000018 0x80B6E868 24020002 */ li	$v0, 2
/* 000019 0x80B6E86C 904A00D6 */ lbu	$t2, 0XD6($v0)
.L_80B6E870:
/* 000020 0x80B6E870 2402FFFF */ li	$v0, -1
/* 000021 0x80B6E874 314B0002 */ andi	$t3, $t2, 0X2
/* 000022 0x80B6E878 11600003 */ beqz	$t3, .L_80B6E888
/* 000023 0x80B6E87C 00000000 */ nop
/* 000024 0x80B6E880 03E00008 */ jr	$ra
/* 000025 0x80B6E884 24020003 */ li	$v0, 3
.L_80B6E888:
/* 000026 0x80B6E888 03E00008 */ jr	$ra
/* 000027 0x80B6E88C 00000000 */ nop

glabel func_80B6E890
/* 000028 0x80B6E890 27BDFF98 */ addiu	$sp, $sp, -104
/* 000029 0x80B6E894 AFB40034 */ sw	$s4, 0X34($sp)
/* 000030 0x80B6E898 AFB2002C */ sw	$s2, 0X2C($sp)
/* 000031 0x80B6E89C 00C09025 */ move	$s2, $a2
/* 000032 0x80B6E8A0 00A0A025 */ move	$s4, $a1
/* 000033 0x80B6E8A4 AFBF0044 */ sw	$ra, 0X44($sp)
/* 000034 0x80B6E8A8 AFB70040 */ sw	$s7, 0X40($sp)
/* 000035 0x80B6E8AC AFB6003C */ sw	$s6, 0X3C($sp)
/* 000036 0x80B6E8B0 AFB50038 */ sw	$s5, 0X38($sp)
/* 000037 0x80B6E8B4 AFB30030 */ sw	$s3, 0X30($sp)
/* 000038 0x80B6E8B8 AFB10028 */ sw	$s1, 0X28($sp)
/* 000039 0x80B6E8BC AFB00024 */ sw	$s0, 0X24($sp)
/* 000040 0x80B6E8C0 C48C0024 */ lwc1	$f12, 0X24($a0)
/* 000041 0x80B6E8C4 C48E0028 */ lwc1	$f14, 0X28($a0)
/* 000042 0x80B6E8C8 8C86002C */ lw	$a2, 0X2C($a0)
/* 000043 0x80B6E8CC 0C060594 */ jal	SysMatrix_SetStateRotationAndTranslation
/* 000044 0x80B6E8D0 248700BC */ addiu	$a3, $a0, 188
/* 000045 0x80B6E8D4 00127080 */ sll	$t6, $s2, 2
/* 000046 0x80B6E8D8 01D27023 */ subu	$t6, $t6, $s2
/* 000047 0x80B6E8DC 3C0F80B7 */ lui	$t7, %hi(D_80B6EE80)
/* 000048 0x80B6E8E0 25EFEE80 */ addiu	$t7, $t7, %lo(D_80B6EE80)
/* 000049 0x80B6E8E4 000E70C0 */ sll	$t6, $t6, 3
/* 000050 0x80B6E8E8 3C1680B7 */ lui	$s6, %hi(D_80B6EEE4)
/* 000051 0x80B6E8EC 3C1580B7 */ lui	$s5, %hi(D_80B6EEE0)
/* 000052 0x80B6E8F0 3C13801D */ lui	$s3, %hi(D_801D15B0)
/* 000053 0x80B6E8F4 267315B0 */ addiu	$s3, $s3, %lo(D_801D15B0)
/* 000054 0x80B6E8F8 26B5EEE0 */ addiu	$s5, $s5, %lo(D_80B6EEE0)
/* 000055 0x80B6E8FC 26D6EEE4 */ addiu	$s6, $s6, %lo(D_80B6EEE4)
/* 000056 0x80B6E900 01CF8821 */ addu	$s1, $t6, $t7
/* 000057 0x80B6E904 27B20058 */ addiu	$s2, $sp, 88
/* 000058 0x80B6E908 00008025 */ move	$s0, $zero
/* 000059 0x80B6E90C 24170018 */ li	$s7, 24
.L_80B6E910:
/* 000060 0x80B6E910 02202025 */ move	$a0, $s1
/* 000061 0x80B6E914 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000062 0x80B6E918 02402825 */ move	$a1, $s2
/* 000063 0x80B6E91C 24181770 */ li	$t8, 6000
/* 000064 0x80B6E920 2419FFF6 */ li	$t9, -10
/* 000065 0x80B6E924 AFB9001C */ sw	$t9, 0X1C($sp)
/* 000066 0x80B6E928 AFB80018 */ sw	$t8, 0X18($sp)
/* 000067 0x80B6E92C 02802025 */ move	$a0, $s4
/* 000068 0x80B6E930 02402825 */ move	$a1, $s2
/* 000069 0x80B6E934 02603025 */ move	$a2, $s3
/* 000070 0x80B6E938 02603825 */ move	$a3, $s3
/* 000071 0x80B6E93C AFB50010 */ sw	$s5, 0X10($sp)
/* 000072 0x80B6E940 0C02C5BD */ jal	EffectSS_SpawnSparkle
/* 000073 0x80B6E944 AFB60014 */ sw	$s6, 0X14($sp)
/* 000074 0x80B6E948 2610000C */ addiu	$s0, $s0, 12
/* 000075 0x80B6E94C 1617FFF0 */ bne	$s0, $s7, .L_80B6E910
/* 000076 0x80B6E950 2631000C */ addiu	$s1, $s1, 12
/* 000077 0x80B6E954 8FBF0044 */ lw	$ra, 0X44($sp)
/* 000078 0x80B6E958 8FB00024 */ lw	$s0, 0X24($sp)
/* 000079 0x80B6E95C 8FB10028 */ lw	$s1, 0X28($sp)
/* 000080 0x80B6E960 8FB2002C */ lw	$s2, 0X2C($sp)
/* 000081 0x80B6E964 8FB30030 */ lw	$s3, 0X30($sp)
/* 000082 0x80B6E968 8FB40034 */ lw	$s4, 0X34($sp)
/* 000083 0x80B6E96C 8FB50038 */ lw	$s5, 0X38($sp)
/* 000084 0x80B6E970 8FB6003C */ lw	$s6, 0X3C($sp)
/* 000085 0x80B6E974 8FB70040 */ lw	$s7, 0X40($sp)
/* 000086 0x80B6E978 03E00008 */ jr	$ra
/* 000087 0x80B6E97C 27BD0068 */ addiu	$sp, $sp, 104

glabel BgKin2Fence_Init
/* 000088 0x80B6E980 27BDFFD0 */ addiu	$sp, $sp, -48
/* 000089 0x80B6E984 AFB10020 */ sw	$s1, 0X20($sp)
/* 000090 0x80B6E988 00808825 */ move	$s1, $a0
/* 000091 0x80B6E98C AFBF002C */ sw	$ra, 0X2C($sp)
/* 000092 0x80B6E990 AFB30028 */ sw	$s3, 0X28($sp)
/* 000093 0x80B6E994 AFB20024 */ sw	$s2, 0X24($sp)
/* 000094 0x80B6E998 AFB0001C */ sw	$s0, 0X1C($sp)
/* 000095 0x80B6E99C AFA50034 */ sw	$a1, 0X34($sp)
/* 000096 0x80B6E9A0 3C0580B7 */ lui	$a1, %hi(D_80B6EEE8)
/* 000097 0x80B6E9A4 24A5EEE8 */ addiu	$a1, $a1, %lo(D_80B6EEE8)
/* 000098 0x80B6E9A8 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000099 0x80B6E9AC 02202025 */ move	$a0, $s1
/* 000100 0x80B6E9B0 02202025 */ move	$a0, $s1
/* 000101 0x80B6E9B4 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000102 0x80B6E9B8 00002825 */ move	$a1, $zero
/* 000103 0x80B6E9BC 3C060600 */ lui	$a2, 0x0600
/* 000104 0x80B6E9C0 24C60908 */ addiu	$a2, $a2, 2312
/* 000105 0x80B6E9C4 8FA40034 */ lw	$a0, 0X34($sp)
/* 000106 0x80B6E9C8 0C032B8D */ jal	BgCheck3_LoadMesh
/* 000107 0x80B6E9CC 02202825 */ move	$a1, $s1
/* 000108 0x80B6E9D0 2633015C */ addiu	$s3, $s1, 348
/* 000109 0x80B6E9D4 02602825 */ move	$a1, $s3
/* 000110 0x80B6E9D8 0C0382D3 */ jal	Collision_InitSphereGroupDefault
/* 000111 0x80B6E9DC 8FA40034 */ lw	$a0, 0X34($sp)
/* 000112 0x80B6E9E0 3C0780B7 */ lui	$a3, %hi(D_80B6EE70)
/* 000113 0x80B6E9E4 262E017C */ addiu	$t6, $s1, 380
/* 000114 0x80B6E9E8 AFAE0010 */ sw	$t6, 0X10($sp)
/* 000115 0x80B6E9EC 24E7EE70 */ addiu	$a3, $a3, %lo(D_80B6EE70)
/* 000116 0x80B6E9F0 8FA40034 */ lw	$a0, 0X34($sp)
/* 000117 0x80B6E9F4 02602825 */ move	$a1, $s3
/* 000118 0x80B6E9F8 0C038398 */ jal	Collision_InitSphereGroupWithData
/* 000119 0x80B6E9FC 02203025 */ move	$a2, $s1
/* 000120 0x80B6EA00 C62C0024 */ lwc1	$f12, 0X24($s1)
/* 000121 0x80B6EA04 C62E0028 */ lwc1	$f14, 0X28($s1)
/* 000122 0x80B6EA08 8E26002C */ lw	$a2, 0X2C($s1)
/* 000123 0x80B6EA0C 0C060594 */ jal	SysMatrix_SetStateRotationAndTranslation
/* 000124 0x80B6EA10 262700BC */ addiu	$a3, $s1, 188
/* 000125 0x80B6EA14 C62C0058 */ lwc1	$f12, 0X58($s1)
/* 000126 0x80B6EA18 C62E005C */ lwc1	$f14, 0X5C($s1)
/* 000127 0x80B6EA1C 8E260060 */ lw	$a2, 0X60($s1)
/* 000128 0x80B6EA20 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000129 0x80B6EA24 24070001 */ li	$a3, 1
/* 000130 0x80B6EA28 00008025 */ move	$s0, $zero
/* 000131 0x80B6EA2C 24120004 */ li	$s2, 4
/* 000132 0x80B6EA30 02002025 */ move	$a0, $s0
.L_80B6EA34:
/* 000133 0x80B6EA34 0C039FF7 */ jal	func_800E7FDC
/* 000134 0x80B6EA38 02602825 */ move	$a1, $s3
/* 000135 0x80B6EA3C 26100001 */ addiu	$s0, $s0, 1
/* 000136 0x80B6EA40 5612FFFC */ bnel	$s0, $s2, .L_80B6EA34
/* 000137 0x80B6EA44 02002025 */ move	$a0, $s0
/* 000138 0x80B6EA48 8625001C */ lh	$a1, 0X1C($s1)
/* 000139 0x80B6EA4C 8FA40034 */ lw	$a0, 0X34($sp)
/* 000140 0x80B6EA50 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000141 0x80B6EA54 30A5007F */ andi	$a1, $a1, 0X7F
/* 000142 0x80B6EA58 10400005 */ beqz	$v0, .L_80B6EA70
/* 000143 0x80B6EA5C 00000000 */ nop
/* 000144 0x80B6EA60 0C2DBB4C */ jal	func_80B6ED30
/* 000145 0x80B6EA64 02202025 */ move	$a0, $s1
/* 000146 0x80B6EA68 10000004 */ b	.L_80B6EA7C
/* 000147 0x80B6EA6C 8FBF002C */ lw	$ra, 0X2C($sp)
.L_80B6EA70:
/* 000148 0x80B6EA70 0C2DBAB7 */ jal	func_80B6EADC
/* 000149 0x80B6EA74 02202025 */ move	$a0, $s1
/* 000150 0x80B6EA78 8FBF002C */ lw	$ra, 0X2C($sp)
.L_80B6EA7C:
/* 000151 0x80B6EA7C 8FB0001C */ lw	$s0, 0X1C($sp)
/* 000152 0x80B6EA80 8FB10020 */ lw	$s1, 0X20($sp)
/* 000153 0x80B6EA84 8FB20024 */ lw	$s2, 0X24($sp)
/* 000154 0x80B6EA88 8FB30028 */ lw	$s3, 0X28($sp)
/* 000155 0x80B6EA8C 03E00008 */ jr	$ra
/* 000156 0x80B6EA90 27BD0030 */ addiu	$sp, $sp, 48

glabel BgKin2Fence_Destroy
/* 000157 0x80B6EA94 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000158 0x80B6EA98 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000159 0x80B6EA9C AFA40018 */ sw	$a0, 0X18($sp)
/* 000160 0x80B6EAA0 00A03825 */ move	$a3, $a1
/* 000161 0x80B6EAA4 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000162 0x80B6EAA8 00E02025 */ move	$a0, $a3
/* 000163 0x80B6EAAC 24E50880 */ addiu	$a1, $a3, 2176
/* 000164 0x80B6EAB0 8DC60144 */ lw	$a2, 0X144($t6)
/* 000165 0x80B6EAB4 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000166 0x80B6EAB8 AFA7001C */ sw	$a3, 0X1C($sp)
/* 000167 0x80B6EABC 8FA50018 */ lw	$a1, 0X18($sp)
/* 000168 0x80B6EAC0 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000169 0x80B6EAC4 0C038306 */ jal	Collision_FiniSphereGroup
/* 000170 0x80B6EAC8 24A5015C */ addiu	$a1, $a1, 348
/* 000171 0x80B6EACC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000172 0x80B6EAD0 27BD0018 */ addiu	$sp, $sp, 24
/* 000173 0x80B6EAD4 03E00008 */ jr	$ra
/* 000174 0x80B6EAD8 00000000 */ nop

glabel func_80B6EADC
/* 000175 0x80B6EADC 3C0E80B7 */ lui	$t6, %hi(func_80B6EAF4)
/* 000176 0x80B6EAE0 25CEEAF4 */ addiu	$t6, $t6, %lo(func_80B6EAF4)
/* 000177 0x80B6EAE4 A0800280 */ sb	$zero, 0X280($a0)
/* 000178 0x80B6EAE8 AC8E027C */ sw	$t6, 0X27C($a0)
/* 000179 0x80B6EAEC 03E00008 */ jr	$ra
/* 000180 0x80B6EAF0 00000000 */ nop

glabel func_80B6EAF4
/* 000181 0x80B6EAF4 27BDFFD8 */ addiu	$sp, $sp, -40
/* 000182 0x80B6EAF8 AFB00018 */ sw	$s0, 0X18($sp)
/* 000183 0x80B6EAFC 00808025 */ move	$s0, $a0
/* 000184 0x80B6EB00 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000185 0x80B6EB04 00A03825 */ move	$a3, $a1
/* 000186 0x80B6EB08 920E016D */ lbu	$t6, 0X16D($s0)
/* 000187 0x80B6EB0C 02002025 */ move	$a0, $s0
/* 000188 0x80B6EB10 31CF0002 */ andi	$t7, $t6, 0X2
/* 000189 0x80B6EB14 51E00028 */ beqzl	$t7, .L_80B6EBB8
/* 000190 0x80B6EB18 82020281 */ lb	$v0, 0X281($s0)
/* 000191 0x80B6EB1C 0C2DBA08 */ jal	func_80B6E820
/* 000192 0x80B6EB20 AFA7002C */ sw	$a3, 0X2C($sp)
/* 000193 0x80B6EB24 04400017 */ bltz	$v0, .L_80B6EB84
/* 000194 0x80B6EB28 8FA7002C */ lw	$a3, 0X2C($sp)
/* 000195 0x80B6EB2C 82180280 */ lb	$t8, 0X280($s0)
/* 000196 0x80B6EB30 3C06801F */ lui	$a2, %hi(gSaveContext + 0xFF5)
/* 000197 0x80B6EB34 24044807 */ li	$a0, 18439
/* 000198 0x80B6EB38 00D83021 */ addu	$a2, $a2, $t8
/* 000199 0x80B6EB3C 80C60665 */ lb	$a2, %lo(gSaveContext + 0xFF5)($a2)
/* 000200 0x80B6EB40 1446000D */ bne	$v0, $a2, .L_80B6EB78
/* 000201 0x80B6EB44 00000000 */ nop
/* 000202 0x80B6EB48 AFA60020 */ sw	$a2, 0X20($sp)
/* 000203 0x80B6EB4C 0C067C32 */ jal	play_sound
/* 000204 0x80B6EB50 AFA7002C */ sw	$a3, 0X2C($sp)
/* 000205 0x80B6EB54 82190280 */ lb	$t9, 0X280($s0)
/* 000206 0x80B6EB58 8FA60020 */ lw	$a2, 0X20($sp)
/* 000207 0x80B6EB5C 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000208 0x80B6EB60 27280001 */ addiu	$t0, $t9, 1
/* 000209 0x80B6EB64 A2080280 */ sb	$t0, 0X280($s0)
/* 000210 0x80B6EB68 0C2DBA24 */ jal	func_80B6E890
/* 000211 0x80B6EB6C 02002025 */ move	$a0, $s0
/* 000212 0x80B6EB70 10000005 */ b	.L_80B6EB88
/* 000213 0x80B6EB74 9209016D */ lbu	$t1, 0X16D($s0)
.L_80B6EB78:
/* 000214 0x80B6EB78 0C067C32 */ jal	play_sound
/* 000215 0x80B6EB7C 24044806 */ li	$a0, 18438
/* 000216 0x80B6EB80 A2000280 */ sb	$zero, 0X280($s0)
.L_80B6EB84:
/* 000217 0x80B6EB84 9209016D */ lbu	$t1, 0X16D($s0)
.L_80B6EB88:
/* 000218 0x80B6EB88 820C0280 */ lb	$t4, 0X280($s0)
/* 000219 0x80B6EB8C 240B0005 */ li	$t3, 5
/* 000220 0x80B6EB90 312AFFFD */ andi	$t2, $t1, 0XFFFD
/* 000221 0x80B6EB94 29810006 */ slti	$at, $t4, 6
/* 000222 0x80B6EB98 A20A016D */ sb	$t2, 0X16D($s0)
/* 000223 0x80B6EB9C 14200010 */ bnez	$at, .L_80B6EBE0
/* 000224 0x80B6EBA0 A20B0281 */ sb	$t3, 0X281($s0)
/* 000225 0x80B6EBA4 0C2DBAFD */ jal	func_80B6EBF4
/* 000226 0x80B6EBA8 02002025 */ move	$a0, $s0
/* 000227 0x80B6EBAC 1000000D */ b	.L_80B6EBE4
/* 000228 0x80B6EBB0 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000229 0x80B6EBB4 82020281 */ lb	$v0, 0X281($s0)
.L_80B6EBB8:
/* 000230 0x80B6EBB8 3C010001 */ lui	$at, 0x0001
/* 000231 0x80B6EBBC 34218884 */ ori	$at, $at, 0X8884
/* 000232 0x80B6EBC0 18400004 */ blez	$v0, .L_80B6EBD4
/* 000233 0x80B6EBC4 00E02025 */ move	$a0, $a3
/* 000234 0x80B6EBC8 244DFFFF */ addiu	$t5, $v0, -1
/* 000235 0x80B6EBCC 10000004 */ b	.L_80B6EBE0
/* 000236 0x80B6EBD0 A20D0281 */ sb	$t5, 0X281($s0)
.L_80B6EBD4:
/* 000237 0x80B6EBD4 00E12821 */ addu	$a1, $a3, $at
/* 000238 0x80B6EBD8 0C0389D0 */ jal	Collision_AddAC
/* 000239 0x80B6EBDC 2606015C */ addiu	$a2, $s0, 348
.L_80B6EBE0:
/* 000240 0x80B6EBE0 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80B6EBE4:
/* 000241 0x80B6EBE4 8FB00018 */ lw	$s0, 0X18($sp)
/* 000242 0x80B6EBE8 27BD0028 */ addiu	$sp, $sp, 40
/* 000243 0x80B6EBEC 03E00008 */ jr	$ra
/* 000244 0x80B6EBF0 00000000 */ nop

glabel func_80B6EBF4
/* 000245 0x80B6EBF4 3C0E80B7 */ lui	$t6, %hi(func_80B6EC08)
/* 000246 0x80B6EBF8 25CEEC08 */ addiu	$t6, $t6, %lo(func_80B6EC08)
/* 000247 0x80B6EBFC AC8E027C */ sw	$t6, 0X27C($a0)
/* 000248 0x80B6EC00 03E00008 */ jr	$ra
/* 000249 0x80B6EC04 00000000 */ nop

glabel func_80B6EC08
/* 000250 0x80B6EC08 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000251 0x80B6EC0C AFB00018 */ sw	$s0, 0X18($sp)
/* 000252 0x80B6EC10 00808025 */ move	$s0, $a0
/* 000253 0x80B6EC14 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000254 0x80B6EC18 AFA50024 */ sw	$a1, 0X24($sp)
/* 000255 0x80B6EC1C 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000256 0x80B6EC20 82040038 */ lb	$a0, 0X38($s0)
/* 000257 0x80B6EC24 1040000B */ beqz	$v0, .L_80B6EC54
/* 000258 0x80B6EC28 02002825 */ move	$a1, $s0
/* 000259 0x80B6EC2C 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000260 0x80B6EC30 82040038 */ lb	$a0, 0X38($s0)
/* 000261 0x80B6EC34 8605001C */ lh	$a1, 0X1C($s0)
/* 000262 0x80B6EC38 8FA40024 */ lw	$a0, 0X24($sp)
/* 000263 0x80B6EC3C 0C02D6FD */ jal	Actor_SetSwitchFlag
/* 000264 0x80B6EC40 30A5007F */ andi	$a1, $a1, 0X7F
/* 000265 0x80B6EC44 0C2DBB1C */ jal	func_80B6EC70
/* 000266 0x80B6EC48 02002025 */ move	$a0, $s0
/* 000267 0x80B6EC4C 10000004 */ b	.L_80B6EC60
/* 000268 0x80B6EC50 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80B6EC54:
/* 000269 0x80B6EC54 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000270 0x80B6EC58 82040038 */ lb	$a0, 0X38($s0)
/* 000271 0x80B6EC5C 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80B6EC60:
/* 000272 0x80B6EC60 8FB00018 */ lw	$s0, 0X18($sp)
/* 000273 0x80B6EC64 27BD0020 */ addiu	$sp, $sp, 32
/* 000274 0x80B6EC68 03E00008 */ jr	$ra
/* 000275 0x80B6EC6C 00000000 */ nop

glabel func_80B6EC70
/* 000276 0x80B6EC70 3C0F80B7 */ lui	$t7, %hi(func_80B6EC8C)
/* 000277 0x80B6EC74 240E000E */ li	$t6, 14
/* 000278 0x80B6EC78 25EFEC8C */ addiu	$t7, $t7, %lo(func_80B6EC8C)
/* 000279 0x80B6EC7C A08E0282 */ sb	$t6, 0X282($a0)
/* 000280 0x80B6EC80 AC8F027C */ sw	$t7, 0X27C($a0)
/* 000281 0x80B6EC84 03E00008 */ jr	$ra
/* 000282 0x80B6EC88 00000000 */ nop

glabel func_80B6EC8C
/* 000283 0x80B6EC8C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000284 0x80B6EC90 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000285 0x80B6EC94 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000286 0x80B6EC98 80820282 */ lb	$v0, 0X282($a0)
/* 000287 0x80B6EC9C 18400003 */ blez	$v0, .L_80B6ECAC
/* 000288 0x80B6ECA0 244EFFFF */ addiu	$t6, $v0, -1
/* 000289 0x80B6ECA4 10000003 */ b	.L_80B6ECB4
/* 000290 0x80B6ECA8 A08E0282 */ sb	$t6, 0X282($a0)
.L_80B6ECAC:
/* 000291 0x80B6ECAC 0C2DBB31 */ jal	func_80B6ECC4
/* 000292 0x80B6ECB0 00000000 */ nop
.L_80B6ECB4:
/* 000293 0x80B6ECB4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000294 0x80B6ECB8 27BD0018 */ addiu	$sp, $sp, 24
/* 000295 0x80B6ECBC 03E00008 */ jr	$ra
/* 000296 0x80B6ECC0 00000000 */ nop

glabel func_80B6ECC4
/* 000297 0x80B6ECC4 3C0E80B7 */ lui	$t6, %hi(func_80B6ECD8)
/* 000298 0x80B6ECC8 25CEECD8 */ addiu	$t6, $t6, %lo(func_80B6ECD8)
/* 000299 0x80B6ECCC AC8E027C */ sw	$t6, 0X27C($a0)
/* 000300 0x80B6ECD0 03E00008 */ jr	$ra
/* 000301 0x80B6ECD4 00000000 */ nop

glabel func_80B6ECD8
/* 000302 0x80B6ECD8 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000303 0x80B6ECDC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000304 0x80B6ECE0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000305 0x80B6ECE4 00803825 */ move	$a3, $a0
/* 000306 0x80B6ECE8 3C014268 */ lui	$at, 0x4268
/* 000307 0x80B6ECEC 44813000 */ mtc1	$at, $f6
/* 000308 0x80B6ECF0 C4E4000C */ lwc1	$f4, 0XC($a3)
/* 000309 0x80B6ECF4 AFA70018 */ sw	$a3, 0X18($sp)
/* 000310 0x80B6ECF8 24E40028 */ addiu	$a0, $a3, 40
/* 000311 0x80B6ECFC 46062200 */ add.s	$f8, $f4, $f6
/* 000312 0x80B6ED00 3C0640A0 */ lui	$a2, 0x40A0
/* 000313 0x80B6ED04 44054000 */ mfc1	$a1, $f8
/* 000314 0x80B6ED08 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000315 0x80B6ED0C 00000000 */ nop
/* 000316 0x80B6ED10 10400003 */ beqz	$v0, .L_80B6ED20
/* 000317 0x80B6ED14 8FA70018 */ lw	$a3, 0X18($sp)
/* 000318 0x80B6ED18 0C2DBB4C */ jal	func_80B6ED30
/* 000319 0x80B6ED1C 00E02025 */ move	$a0, $a3
.L_80B6ED20:
/* 000320 0x80B6ED20 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000321 0x80B6ED24 27BD0018 */ addiu	$sp, $sp, 24
/* 000322 0x80B6ED28 03E00008 */ jr	$ra
/* 000323 0x80B6ED2C 00000000 */ nop

glabel func_80B6ED30
/* 000324 0x80B6ED30 3C014268 */ lui	$at, 0x4268
/* 000325 0x80B6ED34 44813000 */ mtc1	$at, $f6
/* 000326 0x80B6ED38 C484000C */ lwc1	$f4, 0XC($a0)
/* 000327 0x80B6ED3C 3C0E80B7 */ lui	$t6, %hi(func_80B6ED58)
/* 000328 0x80B6ED40 25CEED58 */ addiu	$t6, $t6, %lo(func_80B6ED58)
/* 000329 0x80B6ED44 46062200 */ add.s	$f8, $f4, $f6
/* 000330 0x80B6ED48 AC8E027C */ sw	$t6, 0X27C($a0)
/* 000331 0x80B6ED4C E4880028 */ swc1	$f8, 0X28($a0)
/* 000332 0x80B6ED50 03E00008 */ jr	$ra
/* 000333 0x80B6ED54 00000000 */ nop

glabel func_80B6ED58
/* 000334 0x80B6ED58 AFA40000 */ sw	$a0, 0X0($sp)
/* 000335 0x80B6ED5C AFA50004 */ sw	$a1, 0X4($sp)
/* 000336 0x80B6ED60 03E00008 */ jr	$ra
/* 000337 0x80B6ED64 00000000 */ nop

glabel BgKin2Fence_Update
/* 000338 0x80B6ED68 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000339 0x80B6ED6C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000340 0x80B6ED70 8C99027C */ lw	$t9, 0X27C($a0)
/* 000341 0x80B6ED74 0320F809 */ jalr	$t9
/* 000342 0x80B6ED78 00000000 */ nop
/* 000343 0x80B6ED7C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000344 0x80B6ED80 27BD0018 */ addiu	$sp, $sp, 24
/* 000345 0x80B6ED84 03E00008 */ jr	$ra
/* 000346 0x80B6ED88 00000000 */ nop

glabel BgKin2Fence_Draw
/* 000347 0x80B6ED8C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000348 0x80B6ED90 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000349 0x80B6ED94 AFA40018 */ sw	$a0, 0X18($sp)
/* 000350 0x80B6ED98 00A03025 */ move	$a2, $a1
/* 000351 0x80B6ED9C 3C050600 */ lui	$a1, 0x0600
/* 000352 0x80B6EDA0 24A50828 */ addiu	$a1, $a1, 2088
/* 000353 0x80B6EDA4 0C02F7F0 */ jal	func_800BDFC0
/* 000354 0x80B6EDA8 00C02025 */ move	$a0, $a2
/* 000355 0x80B6EDAC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000356 0x80B6EDB0 27BD0018 */ addiu	$sp, $sp, 24
/* 000357 0x80B6EDB4 03E00008 */ jr	$ra
/* 000358 0x80B6EDB8 00000000 */ nop
/* 000359 0x80B6EDBC 00000000 */ nop
