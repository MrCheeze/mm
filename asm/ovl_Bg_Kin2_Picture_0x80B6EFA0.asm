.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80B6EFA0
/* 000000 0x80B6EFA0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000001 0x80B6EFA4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80B6EFA8 30AF0003 */ andi	$t7, $a1, 0X3
/* 000003 0x80B6EFAC 11E00004 */ beqz	$t7, .L_80B6EFC0
/* 000004 0x80B6EFB0 2406FFFF */ li	$a2, -1
/* 000005 0x80B6EFB4 30A603FC */ andi	$a2, $a1, 0X3FC
/* 000006 0x80B6EFB8 00063083 */ sra	$a2, $a2, 2
/* 000007 0x80B6EFBC 30C600FF */ andi	$a2, $a2, 0XFF
.L_80B6EFC0:
/* 000008 0x80B6EFC0 28C20000 */ slti	$v0, $a2, 0
/* 000009 0x80B6EFC4 38420001 */ xori	$v0, $v0, 0X1
/* 000010 0x80B6EFC8 50400005 */ beqzl	$v0, .L_80B6EFE0
/* 000011 0x80B6EFCC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000012 0x80B6EFD0 0C02D71E */ jal	Actor_GetChestFlag
/* 000013 0x80B6EFD4 00C02825 */ move	$a1, $a2
/* 000014 0x80B6EFD8 0002102B */ sltu	$v0, $zero, $v0
/* 000015 0x80B6EFDC 8FBF0014 */ lw	$ra, 0X14($sp)
.L_80B6EFE0:
/* 000016 0x80B6EFE0 27BD0018 */ addiu	$sp, $sp, 24
/* 000017 0x80B6EFE4 03E00008 */ jr	$ra
/* 000018 0x80B6EFE8 00000000 */ nop

glabel func_80B6EFEC
/* 000019 0x80B6EFEC 27BDFFC0 */ addiu	$sp, $sp, -64
/* 000020 0x80B6EFF0 AFB00030 */ sw	$s0, 0X30($sp)
/* 000021 0x80B6EFF4 00808025 */ move	$s0, $a0
/* 000022 0x80B6EFF8 AFBF0034 */ sw	$ra, 0X34($sp)
/* 000023 0x80B6EFFC AFA50044 */ sw	$a1, 0X44($sp)
/* 000024 0x80B6F000 8602001C */ lh	$v0, 0X1C($s0)
/* 000025 0x80B6F004 8FA40044 */ lw	$a0, 0X44($sp)
/* 000026 0x80B6F008 00027143 */ sra	$t6, $v0, 5
/* 000027 0x80B6F00C 31CF0001 */ andi	$t7, $t6, 0X1
/* 000028 0x80B6F010 15E0001C */ bnez	$t7, .L_80B6F084
/* 000029 0x80B6F014 3045001F */ andi	$a1, $v0, 0X1F
/* 000030 0x80B6F018 00052880 */ sll	$a1, $a1, 2
/* 000031 0x80B6F01C 34A5FF03 */ ori	$a1, $a1, 0XFF03
/* 000032 0x80B6F020 0C2DBBE8 */ jal	func_80B6EFA0
/* 000033 0x80B6F024 AFA50038 */ sw	$a1, 0X38($sp)
/* 000034 0x80B6F028 14400016 */ bnez	$v0, .L_80B6F084
/* 000035 0x80B6F02C 8FA50044 */ lw	$a1, 0X44($sp)
/* 000036 0x80B6F030 3C0141B8 */ lui	$at, 0x41B8
/* 000037 0x80B6F034 44813000 */ mtc1	$at, $f6
/* 000038 0x80B6F038 C604000C */ lwc1	$f4, 0XC($s0)
/* 000039 0x80B6F03C 8E070008 */ lw	$a3, 0X8($s0)
/* 000040 0x80B6F040 8FB90038 */ lw	$t9, 0X38($sp)
/* 000041 0x80B6F044 46062200 */ add.s	$f8, $f4, $f6
/* 000042 0x80B6F048 24A41CA0 */ addiu	$a0, $a1, 7328
/* 000043 0x80B6F04C 24060050 */ li	$a2, 80
/* 000044 0x80B6F050 E7A80010 */ swc1	$f8, 0X10($sp)
/* 000045 0x80B6F054 C60A0010 */ lwc1	$f10, 0X10($s0)
/* 000046 0x80B6F058 AFA00018 */ sw	$zero, 0X18($sp)
/* 000047 0x80B6F05C E7AA0014 */ swc1	$f10, 0X14($sp)
/* 000048 0x80B6F060 86180016 */ lh	$t8, 0X16($s0)
/* 000049 0x80B6F064 AFA00020 */ sw	$zero, 0X20($sp)
/* 000050 0x80B6F068 AFB90024 */ sw	$t9, 0X24($sp)
/* 000051 0x80B6F06C 0C02EB18 */ jal	Actor_Spawn
/* 000052 0x80B6F070 AFB8001C */ sw	$t8, 0X1C($sp)
/* 000053 0x80B6F074 50400004 */ beqzl	$v0, .L_80B6F088
/* 000054 0x80B6F078 8FBF0034 */ lw	$ra, 0X34($sp)
/* 000055 0x80B6F07C 0C067C32 */ jal	play_sound
/* 000056 0x80B6F080 24044807 */ li	$a0, 18439
.L_80B6F084:
/* 000057 0x80B6F084 8FBF0034 */ lw	$ra, 0X34($sp)
.L_80B6F088:
/* 000058 0x80B6F088 8FB00030 */ lw	$s0, 0X30($sp)
/* 000059 0x80B6F08C 27BD0040 */ addiu	$sp, $sp, 64
/* 000060 0x80B6F090 03E00008 */ jr	$ra
/* 000061 0x80B6F094 00000000 */ nop

glabel func_80B6F098
/* 000062 0x80B6F098 27BDFF38 */ addiu	$sp, $sp, -200
/* 000063 0x80B6F09C AFB40060 */ sw	$s4, 0X60($sp)
/* 000064 0x80B6F0A0 00A0A025 */ move	$s4, $a1
/* 000065 0x80B6F0A4 AFBF0074 */ sw	$ra, 0X74($sp)
/* 000066 0x80B6F0A8 AFBE0070 */ sw	$fp, 0X70($sp)
/* 000067 0x80B6F0AC AFB7006C */ sw	$s7, 0X6C($sp)
/* 000068 0x80B6F0B0 AFB60068 */ sw	$s6, 0X68($sp)
/* 000069 0x80B6F0B4 AFB50064 */ sw	$s5, 0X64($sp)
/* 000070 0x80B6F0B8 AFB3005C */ sw	$s3, 0X5C($sp)
/* 000071 0x80B6F0BC AFB20058 */ sw	$s2, 0X58($sp)
/* 000072 0x80B6F0C0 AFB10054 */ sw	$s1, 0X54($sp)
/* 000073 0x80B6F0C4 AFB00050 */ sw	$s0, 0X50($sp)
/* 000074 0x80B6F0C8 F7BE0048 */ sdc1	$f30, 0X48($sp)
/* 000075 0x80B6F0CC F7BC0040 */ sdc1	$f28, 0X40($sp)
/* 000076 0x80B6F0D0 F7BA0038 */ sdc1	$f26, 0X38($sp)
/* 000077 0x80B6F0D4 F7B80030 */ sdc1	$f24, 0X30($sp)
/* 000078 0x80B6F0D8 F7B60028 */ sdc1	$f22, 0X28($sp)
/* 000079 0x80B6F0DC F7B40020 */ sdc1	$f20, 0X20($sp)
/* 000080 0x80B6F0E0 C48400C4 */ lwc1	$f4, 0XC4($a0)
/* 000081 0x80B6F0E4 C486005C */ lwc1	$f6, 0X5C($a0)
/* 000082 0x80B6F0E8 C48A0028 */ lwc1	$f10, 0X28($a0)
/* 000083 0x80B6F0EC C48C0024 */ lwc1	$f12, 0X24($a0)
/* 000084 0x80B6F0F0 46062202 */ mul.s	$f8, $f4, $f6
/* 000085 0x80B6F0F4 8C86002C */ lw	$a2, 0X2C($a0)
/* 000086 0x80B6F0F8 248700BC */ addiu	$a3, $a0, 188
/* 000087 0x80B6F0FC 0C060594 */ jal	SysMatrix_SetStateRotationAndTranslation
/* 000088 0x80B6F100 46085380 */ add.s	$f14, $f10, $f8
/* 000089 0x80B6F104 3C0480B7 */ lui	$a0, %hi(D_80B6FA18)
/* 000090 0x80B6F108 2484FA18 */ addiu	$a0, $a0, %lo(D_80B6FA18)
/* 000091 0x80B6F10C 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000092 0x80B6F110 27A500B8 */ addiu	$a1, $sp, 184
/* 000093 0x80B6F114 3C0140E0 */ lui	$at, 0x40E0
/* 000094 0x80B6F118 44819000 */ mtc1	$at, $f18
/* 000095 0x80B6F11C 3C0180B7 */ lui	$at, %hi(D_80B6FA40)
/* 000096 0x80B6F120 C42AFA40 */ lwc1	$f10, %lo(D_80B6FA40)($at)
/* 000097 0x80B6F124 3C0180B7 */ lui	$at, %hi(D_80B6FA44)
/* 000098 0x80B6F128 C43EFA44 */ lwc1	$f30, %lo(D_80B6FA44)($at)
/* 000099 0x80B6F12C 3C014120 */ lui	$at, 0x4120
/* 000100 0x80B6F130 C7B000BC */ lwc1	$f16, 0XBC($sp)
/* 000101 0x80B6F134 4481E000 */ mtc1	$at, $f28
/* 000102 0x80B6F138 3C0180B7 */ lui	$at, %hi(D_80B6FA48)
/* 000103 0x80B6F13C C43AFA48 */ lwc1	$f26, %lo(D_80B6FA48)($at)
/* 000104 0x80B6F140 46128101 */ sub.s	$f4, $f16, $f18
/* 000105 0x80B6F144 3C0180B7 */ lui	$at, %hi(D_80B6FA4C)
/* 000106 0x80B6F148 44803000 */ mtc1	$zero, $f6
/* 000107 0x80B6F14C C438FA4C */ lwc1	$f24, %lo(D_80B6FA4C)($at)
/* 000108 0x80B6F150 3C013F00 */ lui	$at, 0x3F00
/* 000109 0x80B6F154 4481B000 */ mtc1	$at, $f22
/* 000110 0x80B6F158 E7A400B0 */ swc1	$f4, 0XB0($sp)
/* 000111 0x80B6F15C 00009025 */ move	$s2, $zero
/* 000112 0x80B6F160 00009825 */ move	$s3, $zero
/* 000113 0x80B6F164 241E0014 */ li	$fp, 20
/* 000114 0x80B6F168 27B70094 */ addiu	$s7, $sp, 148
/* 000115 0x80B6F16C 27B600A0 */ addiu	$s6, $sp, 160
/* 000116 0x80B6F170 27B500AC */ addiu	$s5, $sp, 172
/* 000117 0x80B6F174 E7AA0098 */ swc1	$f10, 0X98($sp)
/* 000118 0x80B6F178 E7A600A4 */ swc1	$f6, 0XA4($sp)
.L_80B6F17C:
/* 000119 0x80B6F17C 0C021BF7 */ jal	randZeroOne
/* 000120 0x80B6F180 00000000 */ nop
/* 000121 0x80B6F184 461E0202 */ mul.s	$f8, $f0, $f30
/* 000122 0x80B6F188 4600440D */ trunc.w.s	$f16, $f8
/* 000123 0x80B6F18C 440F8000 */ mfc1	$t7, $f16
/* 000124 0x80B6F190 0C021BF7 */ jal	randZeroOne
/* 000125 0x80B6F194 01F38821 */ addu	$s1, $t7, $s3
/* 000126 0x80B6F198 3C014160 */ lui	$at, 0x4160
/* 000127 0x80B6F19C 44819000 */ mtc1	$at, $f18
/* 000128 0x80B6F1A0 3C014080 */ lui	$at, 0x4080
/* 000129 0x80B6F1A4 00118400 */ sll	$s0, $s1, 16
/* 000130 0x80B6F1A8 46120102 */ mul.s	$f4, $f0, $f18
/* 000131 0x80B6F1AC 44813000 */ mtc1	$at, $f6
/* 000132 0x80B6F1B0 00108403 */ sra	$s0, $s0, 16
/* 000133 0x80B6F1B4 00102400 */ sll	$a0, $s0, 16
/* 000134 0x80B6F1B8 00042403 */ sra	$a0, $a0, 16
/* 000135 0x80B6F1BC 0C03FB61 */ jal	Math_Sins
/* 000136 0x80B6F1C0 46062500 */ add.s	$f20, $f4, $f6
/* 000137 0x80B6F1C4 46140282 */ mul.s	$f10, $f0, $f20
/* 000138 0x80B6F1C8 00102400 */ sll	$a0, $s0, 16
/* 000139 0x80B6F1CC 00042403 */ sra	$a0, $a0, 16
/* 000140 0x80B6F1D0 0C03FB51 */ jal	Math_Coss
/* 000141 0x80B6F1D4 E7AA00AC */ swc1	$f10, 0XAC($sp)
/* 000142 0x80B6F1D8 46140302 */ mul.s	$f12, $f0, $f20
/* 000143 0x80B6F1DC 0C021BF7 */ jal	randZeroOne
/* 000144 0x80B6F1E0 E7AC00B4 */ swc1	$f12, 0XB4($sp)
/* 000145 0x80B6F1E4 C7B000AC */ lwc1	$f16, 0XAC($sp)
/* 000146 0x80B6F1E8 46160201 */ sub.s	$f8, $f0, $f22
/* 000147 0x80B6F1EC 46188482 */ mul.s	$f18, $f16, $f24
/* 000148 0x80B6F1F0 46124100 */ add.s	$f4, $f8, $f18
/* 000149 0x80B6F1F4 0C021BF7 */ jal	randZeroOne
/* 000150 0x80B6F1F8 E7A400A0 */ swc1	$f4, 0XA0($sp)
/* 000151 0x80B6F1FC C7AC00B4 */ lwc1	$f12, 0XB4($sp)
/* 000152 0x80B6F200 46160181 */ sub.s	$f6, $f0, $f22
/* 000153 0x80B6F204 C7B000AC */ lwc1	$f16, 0XAC($sp)
/* 000154 0x80B6F208 46186282 */ mul.s	$f10, $f12, $f24
/* 000155 0x80B6F20C C7A800B8 */ lwc1	$f8, 0XB8($sp)
/* 000156 0x80B6F210 C7A400C0 */ lwc1	$f4, 0XC0($sp)
/* 000157 0x80B6F214 46088480 */ add.s	$f18, $f16, $f8
/* 000158 0x80B6F218 460A3080 */ add.s	$f2, $f6, $f10
/* 000159 0x80B6F21C C7A600A0 */ lwc1	$f6, 0XA0($sp)
/* 000160 0x80B6F220 E7B200AC */ swc1	$f18, 0XAC($sp)
/* 000161 0x80B6F224 46046300 */ add.s	$f12, $f12, $f4
/* 000162 0x80B6F228 461A3282 */ mul.s	$f10, $f6, $f26
/* 000163 0x80B6F22C E7A200A8 */ swc1	$f2, 0XA8($sp)
/* 000164 0x80B6F230 461A1402 */ mul.s	$f16, $f2, $f26
/* 000165 0x80B6F234 E7AC00B4 */ swc1	$f12, 0XB4($sp)
/* 000166 0x80B6F238 E7AA0094 */ swc1	$f10, 0X94($sp)
/* 000167 0x80B6F23C 0C021BF7 */ jal	randZeroOne
/* 000168 0x80B6F240 E7B0009C */ swc1	$f16, 0X9C($sp)
/* 000169 0x80B6F244 461C0202 */ mul.s	$f8, $f0, $f28
/* 000170 0x80B6F248 4600448D */ trunc.w.s	$f18, $f8
/* 000171 0x80B6F24C 44109000 */ mfc1	$s0, $f18
/* 000172 0x80B6F250 0C021BF7 */ jal	randZeroOne
/* 000173 0x80B6F254 2610000A */ addiu	$s0, $s0, 10
/* 000174 0x80B6F258 461C0102 */ mul.s	$f4, $f0, $f28
/* 000175 0x80B6F25C 02802025 */ move	$a0, $s4
/* 000176 0x80B6F260 02A02825 */ move	$a1, $s5
/* 000177 0x80B6F264 02C03025 */ move	$a2, $s6
/* 000178 0x80B6F268 02E03825 */ move	$a3, $s7
/* 000179 0x80B6F26C AFB00010 */ sw	$s0, 0X10($sp)
/* 000180 0x80B6F270 4600218D */ trunc.w.s	$f6, $f4
/* 000181 0x80B6F274 44083000 */ mfc1	$t0, $f6
/* 000182 0x80B6F278 00000000 */ nop
/* 000183 0x80B6F27C 2509000F */ addiu	$t1, $t0, 15
/* 000184 0x80B6F280 0C02C484 */ jal	func_800B1210
/* 000185 0x80B6F284 AFA90014 */ sw	$t1, 0X14($sp)
/* 000186 0x80B6F288 26520001 */ addiu	$s2, $s2, 1
/* 000187 0x80B6F28C 165EFFBB */ bne	$s2, $fp, .L_80B6F17C
/* 000188 0x80B6F290 26730CCC */ addiu	$s3, $s3, 3276
/* 000189 0x80B6F294 8FBF0074 */ lw	$ra, 0X74($sp)
/* 000190 0x80B6F298 D7B40020 */ ldc1	$f20, 0X20($sp)
/* 000191 0x80B6F29C D7B60028 */ ldc1	$f22, 0X28($sp)
/* 000192 0x80B6F2A0 D7B80030 */ ldc1	$f24, 0X30($sp)
/* 000193 0x80B6F2A4 D7BA0038 */ ldc1	$f26, 0X38($sp)
/* 000194 0x80B6F2A8 D7BC0040 */ ldc1	$f28, 0X40($sp)
/* 000195 0x80B6F2AC D7BE0048 */ ldc1	$f30, 0X48($sp)
/* 000196 0x80B6F2B0 8FB00050 */ lw	$s0, 0X50($sp)
/* 000197 0x80B6F2B4 8FB10054 */ lw	$s1, 0X54($sp)
/* 000198 0x80B6F2B8 8FB20058 */ lw	$s2, 0X58($sp)
/* 000199 0x80B6F2BC 8FB3005C */ lw	$s3, 0X5C($sp)
/* 000200 0x80B6F2C0 8FB40060 */ lw	$s4, 0X60($sp)
/* 000201 0x80B6F2C4 8FB50064 */ lw	$s5, 0X64($sp)
/* 000202 0x80B6F2C8 8FB60068 */ lw	$s6, 0X68($sp)
/* 000203 0x80B6F2CC 8FB7006C */ lw	$s7, 0X6C($sp)
/* 000204 0x80B6F2D0 8FBE0070 */ lw	$fp, 0X70($sp)
/* 000205 0x80B6F2D4 03E00008 */ jr	$ra
/* 000206 0x80B6F2D8 27BD00C8 */ addiu	$sp, $sp, 200

glabel BgKin2Picture_Init
/* 000207 0x80B6F2DC 27BDFF68 */ addiu	$sp, $sp, -152
/* 000208 0x80B6F2E0 AFB60038 */ sw	$s6, 0X38($sp)
/* 000209 0x80B6F2E4 0080B025 */ move	$s6, $a0
/* 000210 0x80B6F2E8 AFBF0044 */ sw	$ra, 0X44($sp)
/* 000211 0x80B6F2EC AFBE0040 */ sw	$fp, 0X40($sp)
/* 000212 0x80B6F2F0 AFB7003C */ sw	$s7, 0X3C($sp)
/* 000213 0x80B6F2F4 AFB50034 */ sw	$s5, 0X34($sp)
/* 000214 0x80B6F2F8 AFB40030 */ sw	$s4, 0X30($sp)
/* 000215 0x80B6F2FC AFB3002C */ sw	$s3, 0X2C($sp)
/* 000216 0x80B6F300 AFB20028 */ sw	$s2, 0X28($sp)
/* 000217 0x80B6F304 AFB10024 */ sw	$s1, 0X24($sp)
/* 000218 0x80B6F308 AFB00020 */ sw	$s0, 0X20($sp)
/* 000219 0x80B6F30C AFA5009C */ sw	$a1, 0X9C($sp)
/* 000220 0x80B6F310 3C0580B7 */ lui	$a1, %hi(D_80B6FA24)
/* 000221 0x80B6F314 24A5FA24 */ addiu	$a1, $a1, %lo(D_80B6FA24)
/* 000222 0x80B6F318 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000223 0x80B6F31C 02C02025 */ move	$a0, $s6
/* 000224 0x80B6F320 02C02025 */ move	$a0, $s6
/* 000225 0x80B6F324 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000226 0x80B6F328 00002825 */ move	$a1, $zero
/* 000227 0x80B6F32C 3C060600 */ lui	$a2, 0x0600
/* 000228 0x80B6F330 24C60798 */ addiu	$a2, $a2, 1944
/* 000229 0x80B6F334 8FA4009C */ lw	$a0, 0X9C($sp)
/* 000230 0x80B6F338 0C032B8D */ jal	BgCheck3_LoadMesh
/* 000231 0x80B6F33C 02C02825 */ move	$a1, $s6
/* 000232 0x80B6F340 8FA4009C */ lw	$a0, 0X9C($sp)
/* 000233 0x80B6F344 8EC60144 */ lw	$a2, 0X144($s6)
/* 000234 0x80B6F348 0C0318AF */ jal	func_800C62BC
/* 000235 0x80B6F34C 24850880 */ addiu	$a1, $a0, 2176
/* 000236 0x80B6F350 26C5015C */ addiu	$a1, $s6, 348
/* 000237 0x80B6F354 AFA5004C */ sw	$a1, 0X4C($sp)
/* 000238 0x80B6F358 0C0385B4 */ jal	Collision_InitTriGroupDefault
/* 000239 0x80B6F35C 8FA4009C */ lw	$a0, 0X9C($sp)
/* 000240 0x80B6F360 3C1380B7 */ lui	$s3, %hi(D_80B6FA08)
/* 000241 0x80B6F364 2673FA08 */ addiu	$s3, $s3, %lo(D_80B6FA08)
/* 000242 0x80B6F368 26CE017C */ addiu	$t6, $s6, 380
/* 000243 0x80B6F36C AFAE0010 */ sw	$t6, 0X10($sp)
/* 000244 0x80B6F370 02603825 */ move	$a3, $s3
/* 000245 0x80B6F374 8FA4009C */ lw	$a0, 0X9C($sp)
/* 000246 0x80B6F378 8FA5004C */ lw	$a1, 0X4C($sp)
/* 000247 0x80B6F37C 0C038656 */ jal	Collision_InitTriGroupWithData
/* 000248 0x80B6F380 02C03025 */ move	$a2, $s6
/* 000249 0x80B6F384 C6CC0024 */ lwc1	$f12, 0X24($s6)
/* 000250 0x80B6F388 C6CE0028 */ lwc1	$f14, 0X28($s6)
/* 000251 0x80B6F38C 8EC6002C */ lw	$a2, 0X2C($s6)
/* 000252 0x80B6F390 0C060594 */ jal	SysMatrix_SetStateRotationAndTranslation
/* 000253 0x80B6F394 26C700BC */ addiu	$a3, $s6, 188
/* 000254 0x80B6F398 0000A825 */ move	$s5, $zero
/* 000255 0x80B6F39C 00009025 */ move	$s2, $zero
/* 000256 0x80B6F3A0 27BE0074 */ addiu	$fp, $sp, 116
/* 000257 0x80B6F3A4 27B70068 */ addiu	$s7, $sp, 104
/* 000258 0x80B6F3A8 27B4008C */ addiu	$s4, $sp, 140
.L_80B6F3AC:
/* 000259 0x80B6F3AC 00008825 */ move	$s1, $zero
/* 000260 0x80B6F3B0 27B00068 */ addiu	$s0, $sp, 104
.L_80B6F3B4:
/* 000261 0x80B6F3B4 8E6F000C */ lw	$t7, 0XC($s3)
/* 000262 0x80B6F3B8 02002825 */ move	$a1, $s0
/* 000263 0x80B6F3BC 024F1021 */ addu	$v0, $s2, $t7
/* 000264 0x80B6F3C0 00512021 */ addu	$a0, $v0, $s1
/* 000265 0x80B6F3C4 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000266 0x80B6F3C8 24840018 */ addiu	$a0, $a0, 24
/* 000267 0x80B6F3CC 2610000C */ addiu	$s0, $s0, 12
/* 000268 0x80B6F3D0 1614FFF8 */ bne	$s0, $s4, .L_80B6F3B4
/* 000269 0x80B6F3D4 2631000C */ addiu	$s1, $s1, 12
/* 000270 0x80B6F3D8 27B80080 */ addiu	$t8, $sp, 128
/* 000271 0x80B6F3DC AFB80010 */ sw	$t8, 0X10($sp)
/* 000272 0x80B6F3E0 8FA4004C */ lw	$a0, 0X4C($sp)
/* 000273 0x80B6F3E4 02A02825 */ move	$a1, $s5
/* 000274 0x80B6F3E8 02E03025 */ move	$a2, $s7
/* 000275 0x80B6F3EC 0C039FB3 */ jal	Collision_TriGroupSetCoordsAtIndex
/* 000276 0x80B6F3F0 03C03825 */ move	$a3, $fp
/* 000277 0x80B6F3F4 26B50001 */ addiu	$s5, $s5, 1
/* 000278 0x80B6F3F8 24010002 */ li	$at, 2
/* 000279 0x80B6F3FC 16A1FFEB */ bne	$s5, $at, .L_80B6F3AC
/* 000280 0x80B6F400 2652003C */ addiu	$s2, $s2, 60
/* 000281 0x80B6F404 02C02025 */ move	$a0, $s6
/* 000282 0x80B6F408 0C02D9D7 */ jal	Actor_SetHeight
/* 000283 0x80B6F40C 3C0541B8 */ lui	$a1, 0x41B8
/* 000284 0x80B6F410 86C2001C */ lh	$v0, 0X1C($s6)
/* 000285 0x80B6F414 3045001F */ andi	$a1, $v0, 0X1F
/* 000286 0x80B6F418 0002C943 */ sra	$t9, $v0, 5
/* 000287 0x80B6F41C 00052880 */ sll	$a1, $a1, 2
/* 000288 0x80B6F420 33280001 */ andi	$t0, $t9, 0X1
/* 000289 0x80B6F424 15000004 */ bnez	$t0, .L_80B6F438
/* 000290 0x80B6F428 34A5FF03 */ ori	$a1, $a1, 0XFF03
/* 000291 0x80B6F42C 0C2DBBE8 */ jal	func_80B6EFA0
/* 000292 0x80B6F430 8FA4009C */ lw	$a0, 0X9C($sp)
/* 000293 0x80B6F434 10400002 */ beqz	$v0, .L_80B6F440
.L_80B6F438:
/* 000294 0x80B6F438 2409FFFF */ li	$t1, -1
/* 000295 0x80B6F43C A2C90242 */ sb	$t1, 0X242($s6)
.L_80B6F440:
/* 000296 0x80B6F440 0C2DBD30 */ jal	func_80B6F4C0
/* 000297 0x80B6F444 02C02025 */ move	$a0, $s6
/* 000298 0x80B6F448 8FBF0044 */ lw	$ra, 0X44($sp)
/* 000299 0x80B6F44C 8FB00020 */ lw	$s0, 0X20($sp)
/* 000300 0x80B6F450 8FB10024 */ lw	$s1, 0X24($sp)
/* 000301 0x80B6F454 8FB20028 */ lw	$s2, 0X28($sp)
/* 000302 0x80B6F458 8FB3002C */ lw	$s3, 0X2C($sp)
/* 000303 0x80B6F45C 8FB40030 */ lw	$s4, 0X30($sp)
/* 000304 0x80B6F460 8FB50034 */ lw	$s5, 0X34($sp)
/* 000305 0x80B6F464 8FB60038 */ lw	$s6, 0X38($sp)
/* 000306 0x80B6F468 8FB7003C */ lw	$s7, 0X3C($sp)
/* 000307 0x80B6F46C 8FBE0040 */ lw	$fp, 0X40($sp)
/* 000308 0x80B6F470 03E00008 */ jr	$ra
/* 000309 0x80B6F474 27BD0098 */ addiu	$sp, $sp, 152

glabel BgKin2Picture_Destroy
/* 000310 0x80B6F478 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000311 0x80B6F47C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000312 0x80B6F480 AFA40018 */ sw	$a0, 0X18($sp)
/* 000313 0x80B6F484 00A03825 */ move	$a3, $a1
/* 000314 0x80B6F488 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000315 0x80B6F48C 00E02025 */ move	$a0, $a3
/* 000316 0x80B6F490 24E50880 */ addiu	$a1, $a3, 2176
/* 000317 0x80B6F494 8DC60144 */ lw	$a2, 0X144($t6)
/* 000318 0x80B6F498 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000319 0x80B6F49C AFA7001C */ sw	$a3, 0X1C($sp)
/* 000320 0x80B6F4A0 8FA50018 */ lw	$a1, 0X18($sp)
/* 000321 0x80B6F4A4 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000322 0x80B6F4A8 0C0385ED */ jal	Collision_FiniTriGroup
/* 000323 0x80B6F4AC 24A5015C */ addiu	$a1, $a1, 348
/* 000324 0x80B6F4B0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000325 0x80B6F4B4 27BD0018 */ addiu	$sp, $sp, 24
/* 000326 0x80B6F4B8 03E00008 */ jr	$ra
/* 000327 0x80B6F4BC 00000000 */ nop

glabel func_80B6F4C0
/* 000328 0x80B6F4C0 3C0E80B7 */ lui	$t6, %hi(func_80B6F4D4)
/* 000329 0x80B6F4C4 25CEF4D4 */ addiu	$t6, $t6, %lo(func_80B6F4D4)
/* 000330 0x80B6F4C8 AC8E0234 */ sw	$t6, 0X234($a0)
/* 000331 0x80B6F4CC 03E00008 */ jr	$ra
/* 000332 0x80B6F4D0 00000000 */ nop

glabel func_80B6F4D4
/* 000333 0x80B6F4D4 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000334 0x80B6F4D8 AFB00018 */ sw	$s0, 0X18($sp)
/* 000335 0x80B6F4DC 00808025 */ move	$s0, $a0
/* 000336 0x80B6F4E0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000337 0x80B6F4E4 AFA50024 */ sw	$a1, 0X24($sp)
/* 000338 0x80B6F4E8 9202016D */ lbu	$v0, 0X16D($s0)
/* 000339 0x80B6F4EC 304E0002 */ andi	$t6, $v0, 0X2
/* 000340 0x80B6F4F0 11C00008 */ beqz	$t6, .L_80B6F514
/* 000341 0x80B6F4F4 304FFFFD */ andi	$t7, $v0, 0XFFFD
/* 000342 0x80B6F4F8 A20F016D */ sb	$t7, 0X16D($s0)
/* 000343 0x80B6F4FC 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000344 0x80B6F500 82040038 */ lb	$a0, 0X38($s0)
/* 000345 0x80B6F504 0C2DBD69 */ jal	func_80B6F5A4
/* 000346 0x80B6F508 02002025 */ move	$a0, $s0
/* 000347 0x80B6F50C 10000021 */ b	.L_80B6F594
/* 000348 0x80B6F510 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80B6F514:
/* 000349 0x80B6F514 82020242 */ lb	$v0, 0X242($s0)
/* 000350 0x80B6F518 04420018 */ bltzl	$v0, .L_80B6F57C
/* 000351 0x80B6F51C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000352 0x80B6F520 14400014 */ bnez	$v0, .L_80B6F574
/* 000353 0x80B6F524 2459FFFF */ addiu	$t9, $v0, -1
/* 000354 0x80B6F528 02002025 */ move	$a0, $s0
/* 000355 0x80B6F52C 0C02E3B2 */ jal	func_800B8EC8
/* 000356 0x80B6F530 240539DA */ li	$a1, 14810
/* 000357 0x80B6F534 0C021BF7 */ jal	randZeroOne
/* 000358 0x80B6F538 00000000 */ nop
/* 000359 0x80B6F53C 3C0180B7 */ lui	$at, %hi(D_80B6FA50)
/* 000360 0x80B6F540 C424FA50 */ lwc1	$f4, %lo(D_80B6FA50)($at)
/* 000361 0x80B6F544 24040028 */ li	$a0, 40
/* 000362 0x80B6F548 24180008 */ li	$t8, 8
/* 000363 0x80B6F54C 4604003C */ c.lt.s	$f0, $f4
/* 000364 0x80B6F550 00000000 */ nop
/* 000365 0x80B6F554 45000005 */ bc1f .L_80B6F56C
/* 000366 0x80B6F558 00000000 */ nop
/* 000367 0x80B6F55C 0C03FD14 */ jal	Math_Rand_S16Offset
/* 000368 0x80B6F560 24050050 */ li	$a1, 80
/* 000369 0x80B6F564 10000004 */ b	.L_80B6F578
/* 000370 0x80B6F568 A2020242 */ sb	$v0, 0X242($s0)
.L_80B6F56C:
/* 000371 0x80B6F56C 10000002 */ b	.L_80B6F578
/* 000372 0x80B6F570 A2180242 */ sb	$t8, 0X242($s0)
.L_80B6F574:
/* 000373 0x80B6F574 A2190242 */ sb	$t9, 0X242($s0)
.L_80B6F578:
/* 000374 0x80B6F578 8FA40024 */ lw	$a0, 0X24($sp)
.L_80B6F57C:
/* 000375 0x80B6F57C 3C010001 */ lui	$at, 0x0001
/* 000376 0x80B6F580 34218884 */ ori	$at, $at, 0X8884
/* 000377 0x80B6F584 2606015C */ addiu	$a2, $s0, 348
/* 000378 0x80B6F588 0C0389D0 */ jal	Collision_AddAC
/* 000379 0x80B6F58C 00812821 */ addu	$a1, $a0, $at
/* 000380 0x80B6F590 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80B6F594:
/* 000381 0x80B6F594 8FB00018 */ lw	$s0, 0X18($sp)
/* 000382 0x80B6F598 27BD0020 */ addiu	$sp, $sp, 32
/* 000383 0x80B6F59C 03E00008 */ jr	$ra
/* 000384 0x80B6F5A0 00000000 */ nop

glabel func_80B6F5A4
/* 000385 0x80B6F5A4 3C0E80B7 */ lui	$t6, %hi(func_80B6F5B8)
/* 000386 0x80B6F5A8 25CEF5B8 */ addiu	$t6, $t6, %lo(func_80B6F5B8)
/* 000387 0x80B6F5AC AC8E0234 */ sw	$t6, 0X234($a0)
/* 000388 0x80B6F5B0 03E00008 */ jr	$ra
/* 000389 0x80B6F5B4 00000000 */ nop

glabel func_80B6F5B8
/* 000390 0x80B6F5B8 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000391 0x80B6F5BC AFA5001C */ sw	$a1, 0X1C($sp)
/* 000392 0x80B6F5C0 00802825 */ move	$a1, $a0
/* 000393 0x80B6F5C4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000394 0x80B6F5C8 AFA40018 */ sw	$a0, 0X18($sp)
/* 000395 0x80B6F5CC 80A40038 */ lb	$a0, 0X38($a1)
/* 000396 0x80B6F5D0 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000397 0x80B6F5D4 AFA50018 */ sw	$a1, 0X18($sp)
/* 000398 0x80B6F5D8 1040000A */ beqz	$v0, .L_80B6F604
/* 000399 0x80B6F5DC 8FA50018 */ lw	$a1, 0X18($sp)
/* 000400 0x80B6F5E0 80A40038 */ lb	$a0, 0X38($a1)
/* 000401 0x80B6F5E4 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000402 0x80B6F5E8 AFA50018 */ sw	$a1, 0X18($sp)
/* 000403 0x80B6F5EC 8FA40018 */ lw	$a0, 0X18($sp)
/* 000404 0x80B6F5F0 240E0001 */ li	$t6, 1
/* 000405 0x80B6F5F4 0C2DBD87 */ jal	func_80B6F61C
/* 000406 0x80B6F5F8 A08E0240 */ sb	$t6, 0X240($a0)
/* 000407 0x80B6F5FC 10000004 */ b	.L_80B6F610
/* 000408 0x80B6F600 8FBF0014 */ lw	$ra, 0X14($sp)
.L_80B6F604:
/* 000409 0x80B6F604 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000410 0x80B6F608 80A40038 */ lb	$a0, 0X38($a1)
/* 000411 0x80B6F60C 8FBF0014 */ lw	$ra, 0X14($sp)
.L_80B6F610:
/* 000412 0x80B6F610 27BD0018 */ addiu	$sp, $sp, 24
/* 000413 0x80B6F614 03E00008 */ jr	$ra
/* 000414 0x80B6F618 00000000 */ nop

glabel func_80B6F61C
/* 000415 0x80B6F61C 3C0F80B7 */ lui	$t7, %hi(func_80B6F640)
/* 000416 0x80B6F620 240E000D */ li	$t6, 13
/* 000417 0x80B6F624 25EFF640 */ addiu	$t7, $t7, %lo(func_80B6F640)
/* 000418 0x80B6F628 A08E023A */ sb	$t6, 0X23A($a0)
/* 000419 0x80B6F62C A480023C */ sh	$zero, 0X23C($a0)
/* 000420 0x80B6F630 A480023E */ sh	$zero, 0X23E($a0)
/* 000421 0x80B6F634 AC8F0234 */ sw	$t7, 0X234($a0)
/* 000422 0x80B6F638 03E00008 */ jr	$ra
/* 000423 0x80B6F63C 00000000 */ nop

glabel func_80B6F640
/* 000424 0x80B6F640 27BDFFC0 */ addiu	$sp, $sp, -64
/* 000425 0x80B6F644 AFB00018 */ sw	$s0, 0X18($sp)
/* 000426 0x80B6F648 00808025 */ move	$s0, $a0
/* 000427 0x80B6F64C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000428 0x80B6F650 AFA50044 */ sw	$a1, 0X44($sp)
/* 000429 0x80B6F654 820E023A */ lb	$t6, 0X23A($s0)
/* 000430 0x80B6F658 26040024 */ addiu	$a0, $s0, 36
/* 000431 0x80B6F65C 25CFFFFF */ addiu	$t7, $t6, -1
/* 000432 0x80B6F660 A20F023A */ sb	$t7, 0X23A($s0)
/* 000433 0x80B6F664 8218023A */ lb	$t8, 0X23A($s0)
/* 000434 0x80B6F668 5F000008 */ bgtzl	$t8, .L_80B6F68C
/* 000435 0x80B6F66C 8619023C */ lh	$t9, 0X23C($s0)
/* 000436 0x80B6F670 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000437 0x80B6F674 26050008 */ addiu	$a1, $s0, 8
/* 000438 0x80B6F678 0C2DBDC2 */ jal	func_80B6F708
/* 000439 0x80B6F67C 02002025 */ move	$a0, $s0
/* 000440 0x80B6F680 1000001D */ b	.L_80B6F6F8
/* 000441 0x80B6F684 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000442 0x80B6F688 8619023C */ lh	$t9, 0X23C($s0)
.L_80B6F68C:
/* 000443 0x80B6F68C 8609023E */ lh	$t1, 0X23E($s0)
/* 000444 0x80B6F690 27287BAC */ addiu	$t0, $t9, 31660
/* 000445 0x80B6F694 A608023C */ sh	$t0, 0X23C($s0)
/* 000446 0x80B6F698 252A4E20 */ addiu	$t2, $t1, 20000
/* 000447 0x80B6F69C A60A023E */ sh	$t2, 0X23E($s0)
/* 000448 0x80B6F6A0 0C03FB51 */ jal	Math_Coss
/* 000449 0x80B6F6A4 8604023C */ lh	$a0, 0X23C($s0)
/* 000450 0x80B6F6A8 E7A00030 */ swc1	$f0, 0X30($sp)
/* 000451 0x80B6F6AC 0C03FB51 */ jal	Math_Coss
/* 000452 0x80B6F6B0 8604023E */ lh	$a0, 0X23E($s0)
/* 000453 0x80B6F6B4 3C0180B7 */ lui	$at, %hi(D_80B6FA54)
/* 000454 0x80B6F6B8 C424FA54 */ lwc1	$f4, %lo(D_80B6FA54)($at)
/* 000455 0x80B6F6BC 44804000 */ mtc1	$zero, $f8
/* 000456 0x80B6F6C0 00002825 */ move	$a1, $zero
/* 000457 0x80B6F6C4 46040182 */ mul.s	$f6, $f0, $f4
/* 000458 0x80B6F6C8 E7A80038 */ swc1	$f8, 0X38($sp)
/* 000459 0x80B6F6CC E7A60034 */ swc1	$f6, 0X34($sp)
/* 000460 0x80B6F6D0 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000461 0x80B6F6D4 860400BE */ lh	$a0, 0XBE($s0)
/* 000462 0x80B6F6D8 27A40030 */ addiu	$a0, $sp, 48
/* 000463 0x80B6F6DC 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000464 0x80B6F6E0 27A50024 */ addiu	$a1, $sp, 36
/* 000465 0x80B6F6E4 26040008 */ addiu	$a0, $s0, 8
/* 000466 0x80B6F6E8 27A50024 */ addiu	$a1, $sp, 36
/* 000467 0x80B6F6EC 0C03FD6F */ jal	Math_Vec3f_Sum
/* 000468 0x80B6F6F0 26060024 */ addiu	$a2, $s0, 36
/* 000469 0x80B6F6F4 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80B6F6F8:
/* 000470 0x80B6F6F8 8FB00018 */ lw	$s0, 0X18($sp)
/* 000471 0x80B6F6FC 27BD0040 */ addiu	$sp, $sp, 64
/* 000472 0x80B6F700 03E00008 */ jr	$ra
/* 000473 0x80B6F704 00000000 */ nop

glabel func_80B6F708
/* 000474 0x80B6F708 3C0F80B7 */ lui	$t7, %hi(func_80B6F72C)
/* 000475 0x80B6F70C 240E0004 */ li	$t6, 4
/* 000476 0x80B6F710 25EFF72C */ addiu	$t7, $t7, %lo(func_80B6F72C)
/* 000477 0x80B6F714 A080023B */ sb	$zero, 0X23B($a0)
/* 000478 0x80B6F718 A4800238 */ sh	$zero, 0X238($a0)
/* 000479 0x80B6F71C A08E023A */ sb	$t6, 0X23A($a0)
/* 000480 0x80B6F720 AC8F0234 */ sw	$t7, 0X234($a0)
/* 000481 0x80B6F724 03E00008 */ jr	$ra
/* 000482 0x80B6F728 00000000 */ nop

glabel func_80B6F72C
/* 000483 0x80B6F72C 27BDFFD8 */ addiu	$sp, $sp, -40
/* 000484 0x80B6F730 AFB00020 */ sw	$s0, 0X20($sp)
/* 000485 0x80B6F734 00808025 */ move	$s0, $a0
/* 000486 0x80B6F738 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000487 0x80B6F73C AFA5002C */ sw	$a1, 0X2C($sp)
/* 000488 0x80B6F740 8202023A */ lb	$v0, 0X23A($s0)
/* 000489 0x80B6F744 18400008 */ blez	$v0, .L_80B6F768
/* 000490 0x80B6F748 244EFFFF */ addiu	$t6, $v0, -1
/* 000491 0x80B6F74C A20E023A */ sb	$t6, 0X23A($s0)
/* 000492 0x80B6F750 820F023A */ lb	$t7, 0X23A($s0)
/* 000493 0x80B6F754 02002025 */ move	$a0, $s0
/* 000494 0x80B6F758 15E00003 */ bnez	$t7, .L_80B6F768
/* 000495 0x80B6F75C 00000000 */ nop
/* 000496 0x80B6F760 0C2DBBFB */ jal	func_80B6EFEC
/* 000497 0x80B6F764 8FA5002C */ lw	$a1, 0X2C($sp)
.L_80B6F768:
/* 000498 0x80B6F768 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 000499 0x80B6F76C 02002025 */ move	$a0, $s0
/* 000500 0x80B6F770 44800000 */ mtc1	$zero, $f0
/* 000501 0x80B6F774 24180004 */ li	$t8, 4
/* 000502 0x80B6F778 AFB80014 */ sw	$t8, 0X14($sp)
/* 000503 0x80B6F77C 44060000 */ mfc1	$a2, $f0
/* 000504 0x80B6F780 44070000 */ mfc1	$a3, $f0
/* 000505 0x80B6F784 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000506 0x80B6F788 02002825 */ move	$a1, $s0
/* 000507 0x80B6F78C 0C02DE2E */ jal	func_800B78B8
/* 000508 0x80B6F790 E7A00010 */ swc1	$f0, 0X10($sp)
/* 000509 0x80B6F794 96190090 */ lhu	$t9, 0X90($s0)
/* 000510 0x80B6F798 26040238 */ addiu	$a0, $s0, 568
/* 000511 0x80B6F79C 240507D0 */ li	$a1, 2000
/* 000512 0x80B6F7A0 33280001 */ andi	$t0, $t9, 0X1
/* 000513 0x80B6F7A4 51000023 */ beqzl	$t0, .L_80B6F834
/* 000514 0x80B6F7A8 02002025 */ move	$a0, $s0
/* 000515 0x80B6F7AC 0C03FBCB */ jal	Lib_StepTowardsCheck_s
/* 000516 0x80B6F7B0 24060078 */ li	$a2, 120
/* 000517 0x80B6F7B4 8203023B */ lb	$v1, 0X23B($s0)
/* 000518 0x80B6F7B8 28610003 */ slti	$at, $v1, 3
/* 000519 0x80B6F7BC 1020001C */ beqz	$at, .L_80B6F830
/* 000520 0x80B6F7C0 24690001 */ addiu	$t1, $v1, 1
/* 000521 0x80B6F7C4 A209023B */ sb	$t1, 0X23B($s0)
/* 000522 0x80B6F7C8 3C0180B7 */ lui	$at, %hi(D_80B6FA58)
/* 000523 0x80B6F7CC C424FA58 */ lwc1	$f4, %lo(D_80B6FA58)($at)
/* 000524 0x80B6F7D0 C6000068 */ lwc1	$f0, 0X68($s0)
/* 000525 0x80B6F7D4 3C0140C0 */ lui	$at, 0x40C0
/* 000526 0x80B6F7D8 4604003E */ c.le.s	$f0, $f4
/* 000527 0x80B6F7DC 00000000 */ nop
/* 000528 0x80B6F7E0 45020014 */ bc1fl .L_80B6F834
/* 000529 0x80B6F7E4 02002025 */ move	$a0, $s0
/* 000530 0x80B6F7E8 44811000 */ mtc1	$at, $f2
/* 000531 0x80B6F7EC 3C0180B7 */ lui	$at, %hi(D_80B6FA5C)
/* 000532 0x80B6F7F0 C426FA5C */ lwc1	$f6, %lo(D_80B6FA5C)($at)
/* 000533 0x80B6F7F4 02002025 */ move	$a0, $s0
/* 000534 0x80B6F7F8 46060202 */ mul.s	$f8, $f0, $f6
/* 000535 0x80B6F7FC E6080068 */ swc1	$f8, 0X68($s0)
/* 000536 0x80B6F800 C60A0068 */ lwc1	$f10, 0X68($s0)
/* 000537 0x80B6F804 460A103C */ c.lt.s	$f2, $f10
/* 000538 0x80B6F808 00000000 */ nop
/* 000539 0x80B6F80C 45020003 */ bc1fl .L_80B6F81C
/* 000540 0x80B6F810 820A023B */ lb	$t2, 0X23B($s0)
/* 000541 0x80B6F814 E6020068 */ swc1	$f2, 0X68($s0)
/* 000542 0x80B6F818 820A023B */ lb	$t2, 0X23B($s0)
.L_80B6F81C:
/* 000543 0x80B6F81C 29410003 */ slti	$at, $t2, 3
/* 000544 0x80B6F820 50200004 */ beqzl	$at, .L_80B6F834
/* 000545 0x80B6F824 02002025 */ move	$a0, $s0
/* 000546 0x80B6F828 0C02E3B2 */ jal	func_800B8EC8
/* 000547 0x80B6F82C 2405298F */ li	$a1, 10639
.L_80B6F830:
/* 000548 0x80B6F830 02002025 */ move	$a0, $s0
.L_80B6F834:
/* 000549 0x80B6F834 0C02D9D7 */ jal	Actor_SetHeight
/* 000550 0x80B6F838 3C0541B8 */ lui	$a1, 0x41B8
/* 000551 0x80B6F83C 820B0241 */ lb	$t3, 0X241($s0)
/* 000552 0x80B6F840 5560000B */ bnezl	$t3, .L_80B6F870
/* 000553 0x80B6F844 260400BC */ addiu	$a0, $s0, 188
/* 000554 0x80B6F848 860C00BC */ lh	$t4, 0XBC($s0)
/* 000555 0x80B6F84C 02002025 */ move	$a0, $s0
/* 000556 0x80B6F850 29813301 */ slti	$at, $t4, 13057
/* 000557 0x80B6F854 54200006 */ bnezl	$at, .L_80B6F870
/* 000558 0x80B6F858 260400BC */ addiu	$a0, $s0, 188
/* 000559 0x80B6F85C 0C2DBC26 */ jal	func_80B6F098
/* 000560 0x80B6F860 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000561 0x80B6F864 240D0001 */ li	$t5, 1
/* 000562 0x80B6F868 A20D0241 */ sb	$t5, 0X241($s0)
/* 000563 0x80B6F86C 260400BC */ addiu	$a0, $s0, 188
.L_80B6F870:
/* 000564 0x80B6F870 24054000 */ li	$a1, 16384
/* 000565 0x80B6F874 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000566 0x80B6F878 86060238 */ lh	$a2, 0X238($s0)
/* 000567 0x80B6F87C 10400012 */ beqz	$v0, .L_80B6F8C8
/* 000568 0x80B6F880 3C014220 */ lui	$at, 0x4220
/* 000569 0x80B6F884 820E0240 */ lb	$t6, 0X240($s0)
/* 000570 0x80B6F888 44818000 */ mtc1	$at, $f16
/* 000571 0x80B6F88C 11C00003 */ beqz	$t6, .L_80B6F89C
/* 000572 0x80B6F890 E61000C4 */ swc1	$f16, 0XC4($s0)
/* 000573 0x80B6F894 0C03C7EF */ jal	ActorCutscene_Stop
/* 000574 0x80B6F898 82040038 */ lb	$a0, 0X38($s0)
.L_80B6F89C:
/* 000575 0x80B6F89C 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000576 0x80B6F8A0 8E060144 */ lw	$a2, 0X144($s0)
/* 000577 0x80B6F8A4 0C0318C5 */ jal	func_800C6314
/* 000578 0x80B6F8A8 24850880 */ addiu	$a1, $a0, 2176
/* 000579 0x80B6F8AC 02002025 */ move	$a0, $s0
/* 000580 0x80B6F8B0 0C02E3B2 */ jal	func_800B8EC8
/* 000581 0x80B6F8B4 2405293A */ li	$a1, 10554
/* 000582 0x80B6F8B8 0C2DBE3E */ jal	func_80B6F8F8
/* 000583 0x80B6F8BC 02002025 */ move	$a0, $s0
/* 000584 0x80B6F8C0 10000009 */ b	.L_80B6F8E8
/* 000585 0x80B6F8C4 8FBF0024 */ lw	$ra, 0X24($sp)
.L_80B6F8C8:
/* 000586 0x80B6F8C8 0C03FB61 */ jal	Math_Sins
/* 000587 0x80B6F8CC 860400BC */ lh	$a0, 0XBC($s0)
/* 000588 0x80B6F8D0 3C014220 */ lui	$at, 0x4220
/* 000589 0x80B6F8D4 44819000 */ mtc1	$at, $f18
/* 000590 0x80B6F8D8 00000000 */ nop
/* 000591 0x80B6F8DC 46120102 */ mul.s	$f4, $f0, $f18
/* 000592 0x80B6F8E0 E60400C4 */ swc1	$f4, 0XC4($s0)
/* 000593 0x80B6F8E4 8FBF0024 */ lw	$ra, 0X24($sp)
.L_80B6F8E8:
/* 000594 0x80B6F8E8 8FB00020 */ lw	$s0, 0X20($sp)
/* 000595 0x80B6F8EC 27BD0028 */ addiu	$sp, $sp, 40
/* 000596 0x80B6F8F0 03E00008 */ jr	$ra
/* 000597 0x80B6F8F4 00000000 */ nop

glabel func_80B6F8F8
/* 000598 0x80B6F8F8 3C0E80B7 */ lui	$t6, %hi(func_80B6F90C)
/* 000599 0x80B6F8FC 25CEF90C */ addiu	$t6, $t6, %lo(func_80B6F90C)
/* 000600 0x80B6F900 AC8E0234 */ sw	$t6, 0X234($a0)
/* 000601 0x80B6F904 03E00008 */ jr	$ra
/* 000602 0x80B6F908 00000000 */ nop

glabel func_80B6F90C
/* 000603 0x80B6F90C AFA40000 */ sw	$a0, 0X0($sp)
/* 000604 0x80B6F910 AFA50004 */ sw	$a1, 0X4($sp)
/* 000605 0x80B6F914 03E00008 */ jr	$ra
/* 000606 0x80B6F918 00000000 */ nop

glabel BgKin2Picture_Update
/* 000607 0x80B6F91C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000608 0x80B6F920 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000609 0x80B6F924 8C990234 */ lw	$t9, 0X234($a0)
/* 000610 0x80B6F928 0320F809 */ jalr	$t9
/* 000611 0x80B6F92C 00000000 */ nop
/* 000612 0x80B6F930 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000613 0x80B6F934 27BD0018 */ addiu	$sp, $sp, 24
/* 000614 0x80B6F938 03E00008 */ jr	$ra
/* 000615 0x80B6F93C 00000000 */ nop

glabel BgKin2Picture_Draw
/* 000616 0x80B6F940 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000617 0x80B6F944 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000618 0x80B6F948 AFA40018 */ sw	$a0, 0X18($sp)
/* 000619 0x80B6F94C 00A03025 */ move	$a2, $a1
/* 000620 0x80B6F950 3C050600 */ lui	$a1, 0x0600
/* 000621 0x80B6F954 24A50658 */ addiu	$a1, $a1, 1624
/* 000622 0x80B6F958 0C02F7F0 */ jal	func_800BDFC0
/* 000623 0x80B6F95C 00C02025 */ move	$a0, $a2
/* 000624 0x80B6F960 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000625 0x80B6F964 27BD0018 */ addiu	$sp, $sp, 24
/* 000626 0x80B6F968 03E00008 */ jr	$ra
/* 000627 0x80B6F96C 00000000 */ nop
