.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80B95E20
/* 000000 0x80B95E20 27BDFFB8 */ addiu	$sp, $sp, -72
/* 000001 0x80B95E24 AFB10034 */ sw	$s1, 0X34($sp)
/* 000002 0x80B95E28 00808825 */ move	$s1, $a0
/* 000003 0x80B95E2C AFBF0044 */ sw	$ra, 0X44($sp)
/* 000004 0x80B95E30 AFB40040 */ sw	$s4, 0X40($sp)
/* 000005 0x80B95E34 AFB3003C */ sw	$s3, 0X3C($sp)
/* 000006 0x80B95E38 AFB20038 */ sw	$s2, 0X38($sp)
/* 000007 0x80B95E3C AFB00030 */ sw	$s0, 0X30($sp)
/* 000008 0x80B95E40 F7B80028 */ sdc1	$f24, 0X28($sp)
/* 000009 0x80B95E44 F7B60020 */ sdc1	$f22, 0X20($sp)
/* 000010 0x80B95E48 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 000011 0x80B95E4C 3C014396 */ lui	$at, 0x4396
/* 000012 0x80B95E50 4481A000 */ mtc1	$at, $f20
/* 000013 0x80B95E54 3C0143BE */ lui	$at, 0x43BE
/* 000014 0x80B95E58 4481C000 */ mtc1	$at, $f24
/* 000015 0x80B95E5C 3C014416 */ lui	$at, 0x4416
/* 000016 0x80B95E60 4481B000 */ mtc1	$at, $f22
/* 000017 0x80B95E64 2632015C */ addiu	$s2, $s1, 348
/* 000018 0x80B95E68 00009825 */ move	$s3, $zero
/* 000019 0x80B95E6C 24140002 */ li	$s4, 2
.L_80B95E70:
/* 000020 0x80B95E70 8E500000 */ lw	$s0, 0X0($s2)
/* 000021 0x80B95E74 8E0E0138 */ lw	$t6, 0X138($s0)
/* 000022 0x80B95E78 15C00003 */ bnez	$t6, .L_80B95E88
/* 000023 0x80B95E7C 00000000 */ nop
/* 000024 0x80B95E80 10000014 */ b	.L_80B95ED4
/* 000025 0x80B95E84 AE400000 */ sw	$zero, 0X0($s2)
.L_80B95E88:
/* 000026 0x80B95E88 0C03FB61 */ jal	Math_Sins
/* 000027 0x80B95E8C 862400BE */ lh	$a0, 0XBE($s1)
/* 000028 0x80B95E90 46140102 */ mul.s	$f4, $f0, $f20
/* 000029 0x80B95E94 C6260024 */ lwc1	$f6, 0X24($s1)
/* 000030 0x80B95E98 46062200 */ add.s	$f8, $f4, $f6
/* 000031 0x80B95E9C E6080024 */ swc1	$f8, 0X24($s0)
/* 000032 0x80B95EA0 C630005C */ lwc1	$f16, 0X5C($s1)
/* 000033 0x80B95EA4 C62A0028 */ lwc1	$f10, 0X28($s1)
/* 000034 0x80B95EA8 4610C482 */ mul.s	$f18, $f24, $f16
/* 000035 0x80B95EAC 46125100 */ add.s	$f4, $f10, $f18
/* 000036 0x80B95EB0 E6040028 */ swc1	$f4, 0X28($s0)
/* 000037 0x80B95EB4 0C03FB51 */ jal	Math_Coss
/* 000038 0x80B95EB8 862400BE */ lh	$a0, 0XBE($s1)
/* 000039 0x80B95EBC 46140182 */ mul.s	$f6, $f0, $f20
/* 000040 0x80B95EC0 C628002C */ lwc1	$f8, 0X2C($s1)
/* 000041 0x80B95EC4 46083400 */ add.s	$f16, $f6, $f8
/* 000042 0x80B95EC8 E610002C */ swc1	$f16, 0X2C($s0)
/* 000043 0x80B95ECC 862F00BE */ lh	$t7, 0XBE($s1)
/* 000044 0x80B95ED0 A60F00BE */ sh	$t7, 0XBE($s0)
.L_80B95ED4:
/* 000045 0x80B95ED4 26730001 */ addiu	$s3, $s3, 1
/* 000046 0x80B95ED8 26520004 */ addiu	$s2, $s2, 4
/* 000047 0x80B95EDC 1674FFE4 */ bne	$s3, $s4, .L_80B95E70
/* 000048 0x80B95EE0 4616A501 */ sub.s	$f20, $f20, $f22
/* 000049 0x80B95EE4 8FBF0044 */ lw	$ra, 0X44($sp)
/* 000050 0x80B95EE8 D7B40018 */ ldc1	$f20, 0X18($sp)
/* 000051 0x80B95EEC D7B60020 */ ldc1	$f22, 0X20($sp)
/* 000052 0x80B95EF0 D7B80028 */ ldc1	$f24, 0X28($sp)
/* 000053 0x80B95EF4 8FB00030 */ lw	$s0, 0X30($sp)
/* 000054 0x80B95EF8 8FB10034 */ lw	$s1, 0X34($sp)
/* 000055 0x80B95EFC 8FB20038 */ lw	$s2, 0X38($sp)
/* 000056 0x80B95F00 8FB3003C */ lw	$s3, 0X3C($sp)
/* 000057 0x80B95F04 8FB40040 */ lw	$s4, 0X40($sp)
/* 000058 0x80B95F08 03E00008 */ jr	$ra
/* 000059 0x80B95F0C 27BD0048 */ addiu	$sp, $sp, 72

glabel ObjRotlift_Init
/* 000060 0x80B95F10 27BDFFA0 */ addiu	$sp, $sp, -96
/* 000061 0x80B95F14 AFB30040 */ sw	$s3, 0X40($sp)
/* 000062 0x80B95F18 AFB00034 */ sw	$s0, 0X34($sp)
/* 000063 0x80B95F1C 00808025 */ move	$s0, $a0
/* 000064 0x80B95F20 00A09825 */ move	$s3, $a1
/* 000065 0x80B95F24 AFBF004C */ sw	$ra, 0X4C($sp)
/* 000066 0x80B95F28 AFB50048 */ sw	$s5, 0X48($sp)
/* 000067 0x80B95F2C AFB40044 */ sw	$s4, 0X44($sp)
/* 000068 0x80B95F30 AFB2003C */ sw	$s2, 0X3C($sp)
/* 000069 0x80B95F34 AFB10038 */ sw	$s1, 0X38($sp)
/* 000070 0x80B95F38 860E001C */ lh	$t6, 0X1C($s0)
/* 000071 0x80B95F3C 3C0580B9 */ lui	$a1, %hi(D_80B96178)
/* 000072 0x80B95F40 24A56178 */ addiu	$a1, $a1, %lo(D_80B96178)
/* 000073 0x80B95F44 31CF0001 */ andi	$t7, $t6, 0X1
/* 000074 0x80B95F48 AFAF0054 */ sw	$t7, 0X54($sp)
/* 000075 0x80B95F4C 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000076 0x80B95F50 02002025 */ move	$a0, $s0
/* 000077 0x80B95F54 8FB80054 */ lw	$t8, 0X54($sp)
/* 000078 0x80B95F58 2612015C */ addiu	$s2, $s0, 348
/* 000079 0x80B95F5C 00008825 */ move	$s1, $zero
/* 000080 0x80B95F60 17000022 */ bnez	$t8, .L_80B95FEC
/* 000081 0x80B95F64 26741CA0 */ addiu	$s4, $s3, 7328
/* 000082 0x80B95F68 24150002 */ li	$s5, 2
.L_80B95F6C:
/* 000083 0x80B95F6C 8619001C */ lh	$t9, 0X1C($s0)
/* 000084 0x80B95F70 33284000 */ andi	$t0, $t9, 0X4000
/* 000085 0x80B95F74 11000003 */ beqz	$t0, .L_80B95F84
/* 000086 0x80B95F78 00000000 */ nop
/* 000087 0x80B95F7C 12200003 */ beqz	$s1, .L_80B95F8C
/* 000088 0x80B95F80 24020100 */ li	$v0, 256
.L_80B95F84:
/* 000089 0x80B95F84 10000001 */ b	.L_80B95F8C
/* 000090 0x80B95F88 00001025 */ move	$v0, $zero
.L_80B95F8C:
/* 000091 0x80B95F8C C6040024 */ lwc1	$f4, 0X24($s0)
/* 000092 0x80B95F90 02802025 */ move	$a0, $s4
/* 000093 0x80B95F94 02002825 */ move	$a1, $s0
/* 000094 0x80B95F98 E7A40010 */ swc1	$f4, 0X10($sp)
/* 000095 0x80B95F9C C6060028 */ lwc1	$f6, 0X28($s0)
/* 000096 0x80B95FA0 02603025 */ move	$a2, $s3
/* 000097 0x80B95FA4 24070183 */ li	$a3, 387
/* 000098 0x80B95FA8 E7A60014 */ swc1	$f6, 0X14($sp)
/* 000099 0x80B95FAC C608002C */ lwc1	$f8, 0X2C($s0)
/* 000100 0x80B95FB0 E7A80018 */ swc1	$f8, 0X18($sp)
/* 000101 0x80B95FB4 860900BC */ lh	$t1, 0XBC($s0)
/* 000102 0x80B95FB8 AFA9001C */ sw	$t1, 0X1C($sp)
/* 000103 0x80B95FBC 860A00BE */ lh	$t2, 0XBE($s0)
/* 000104 0x80B95FC0 AFAA0020 */ sw	$t2, 0X20($sp)
/* 000105 0x80B95FC4 860B00C0 */ lh	$t3, 0XC0($s0)
/* 000106 0x80B95FC8 AFA20028 */ sw	$v0, 0X28($sp)
/* 000107 0x80B95FCC 0C02EC30 */ jal	Actor_SpawnWithParent
/* 000108 0x80B95FD0 AFAB0024 */ sw	$t3, 0X24($sp)
/* 000109 0x80B95FD4 26310001 */ addiu	$s1, $s1, 1
/* 000110 0x80B95FD8 26520004 */ addiu	$s2, $s2, 4
/* 000111 0x80B95FDC 1635FFE3 */ bne	$s1, $s5, .L_80B95F6C
/* 000112 0x80B95FE0 AE42FFFC */ sw	$v0, -0X4($s2)
/* 000113 0x80B95FE4 0C2E5788 */ jal	func_80B95E20
/* 000114 0x80B95FE8 02002025 */ move	$a0, $s0
.L_80B95FEC:
/* 000115 0x80B95FEC 02002025 */ move	$a0, $s0
/* 000116 0x80B95FF0 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000117 0x80B95FF4 24050003 */ li	$a1, 3
/* 000118 0x80B95FF8 8FAC0054 */ lw	$t4, 0X54($sp)
/* 000119 0x80B95FFC 3C0E80B9 */ lui	$t6, %hi(D_80B96160)
/* 000120 0x80B96000 25CE6160 */ addiu	$t6, $t6, %lo(D_80B96160)
/* 000121 0x80B96004 000C6880 */ sll	$t5, $t4, 2
/* 000122 0x80B96008 01AC6823 */ subu	$t5, $t5, $t4
/* 000123 0x80B9600C 000D6880 */ sll	$t5, $t5, 2
/* 000124 0x80B96010 01AE8821 */ addu	$s1, $t5, $t6
/* 000125 0x80B96014 8E260008 */ lw	$a2, 0X8($s1)
/* 000126 0x80B96018 02602025 */ move	$a0, $s3
/* 000127 0x80B9601C 0C032B8D */ jal	BgCheck3_LoadMesh
/* 000128 0x80B96020 02002825 */ move	$a1, $s0
/* 000129 0x80B96024 0C040141 */ jal	Lib_PtrSegToVirt
/* 000130 0x80B96028 8E240004 */ lw	$a0, 0X4($s1)
/* 000131 0x80B9602C AE220004 */ sw	$v0, 0X4($s1)
/* 000132 0x80B96030 8FBF004C */ lw	$ra, 0X4C($sp)
/* 000133 0x80B96034 8FB00034 */ lw	$s0, 0X34($sp)
/* 000134 0x80B96038 8FB10038 */ lw	$s1, 0X38($sp)
/* 000135 0x80B9603C 8FB2003C */ lw	$s2, 0X3C($sp)
/* 000136 0x80B96040 8FB30040 */ lw	$s3, 0X40($sp)
/* 000137 0x80B96044 8FB40044 */ lw	$s4, 0X44($sp)
/* 000138 0x80B96048 8FB50048 */ lw	$s5, 0X48($sp)
/* 000139 0x80B9604C 03E00008 */ jr	$ra
/* 000140 0x80B96050 27BD0060 */ addiu	$sp, $sp, 96

glabel ObjRotlift_Destroy
/* 000141 0x80B96054 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000142 0x80B96058 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000143 0x80B9605C AFA40018 */ sw	$a0, 0X18($sp)
/* 000144 0x80B96060 00A03825 */ move	$a3, $a1
/* 000145 0x80B96064 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000146 0x80B96068 00E02025 */ move	$a0, $a3
/* 000147 0x80B9606C 24E50880 */ addiu	$a1, $a3, 2176
/* 000148 0x80B96070 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000149 0x80B96074 8DC60144 */ lw	$a2, 0X144($t6)
/* 000150 0x80B96078 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000151 0x80B9607C 27BD0018 */ addiu	$sp, $sp, 24
/* 000152 0x80B96080 03E00008 */ jr	$ra
/* 000153 0x80B96084 00000000 */ nop

glabel ObjRotlift_Update
/* 000154 0x80B96088 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000155 0x80B9608C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000156 0x80B96090 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000157 0x80B96094 8482001C */ lh	$v0, 0X1C($a0)
/* 000158 0x80B96098 304E0001 */ andi	$t6, $v0, 0X1
/* 000159 0x80B9609C 15C00005 */ bnez	$t6, .L_80B960B4
/* 000160 0x80B960A0 00000000 */ nop
/* 000161 0x80B960A4 0C2E5788 */ jal	func_80B95E20
/* 000162 0x80B960A8 AFA40018 */ sw	$a0, 0X18($sp)
/* 000163 0x80B960AC 8FA40018 */ lw	$a0, 0X18($sp)
/* 000164 0x80B960B0 8482001C */ lh	$v0, 0X1C($a0)
.L_80B960B4:
/* 000165 0x80B960B4 04420004 */ bltzl	$v0, .L_80B960C8
/* 000166 0x80B960B8 240200C8 */ li	$v0, 200
/* 000167 0x80B960BC 10000002 */ b	.L_80B960C8
/* 000168 0x80B960C0 2402FF38 */ li	$v0, -200
/* 000169 0x80B960C4 240200C8 */ li	$v0, 200
.L_80B960C8:
/* 000170 0x80B960C8 848F00BE */ lh	$t7, 0XBE($a0)
/* 000171 0x80B960CC 01E24021 */ addu	$t0, $t7, $v0
/* 000172 0x80B960D0 A48800BE */ sh	$t0, 0XBE($a0)
/* 000173 0x80B960D4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000174 0x80B960D8 03E00008 */ jr	$ra
/* 000175 0x80B960DC 27BD0018 */ addiu	$sp, $sp, 24

glabel ObjRotlift_Draw
/* 000176 0x80B960E0 27BDFFD8 */ addiu	$sp, $sp, -40
/* 000177 0x80B960E4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000178 0x80B960E8 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000179 0x80B960EC 00803025 */ move	$a2, $a0
/* 000180 0x80B960F0 84CE001C */ lh	$t6, 0X1C($a2)
/* 000181 0x80B960F4 3C1980B9 */ lui	$t9, %hi(D_80B96160)
/* 000182 0x80B960F8 27396160 */ addiu	$t9, $t9, %lo(D_80B96160)
/* 000183 0x80B960FC 31CF0001 */ andi	$t7, $t6, 0X1
/* 000184 0x80B96100 000FC080 */ sll	$t8, $t7, 2
/* 000185 0x80B96104 030FC023 */ subu	$t8, $t8, $t7
/* 000186 0x80B96108 0018C080 */ sll	$t8, $t8, 2
/* 000187 0x80B9610C 03191021 */ addu	$v0, $t8, $t9
/* 000188 0x80B96110 8C450004 */ lw	$a1, 0X4($v0)
/* 000189 0x80B96114 AFA2001C */ sw	$v0, 0X1C($sp)
/* 000190 0x80B96118 0C04C5D6 */ jal	SceneProc_DrawAllSceneAnimatedTextures
/* 000191 0x80B9611C 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000192 0x80B96120 8FA2001C */ lw	$v0, 0X1C($sp)
/* 000193 0x80B96124 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000194 0x80B96128 0C02F7F0 */ jal	func_800BDFC0
/* 000195 0x80B9612C 8C450000 */ lw	$a1, 0X0($v0)
/* 000196 0x80B96130 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000197 0x80B96134 27BD0028 */ addiu	$sp, $sp, 40
/* 000198 0x80B96138 03E00008 */ jr	$ra
/* 000199 0x80B9613C 00000000 */ nop
