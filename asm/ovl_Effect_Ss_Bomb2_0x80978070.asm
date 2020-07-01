.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80978070
/* 000000 0x80978070 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000001 0x80978074 AFB10018 */ sw	$s1, 0X18($sp)
/* 000002 0x80978078 AFB00014 */ sw	$s0, 0X14($sp)
/* 000003 0x8097807C 00C08025 */ move	$s0, $a2
/* 000004 0x80978080 00E08825 */ move	$s1, $a3
/* 000005 0x80978084 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000006 0x80978088 AFA40020 */ sw	$a0, 0X20($sp)
/* 000007 0x8097808C AFA50024 */ sw	$a1, 0X24($sp)
/* 000008 0x80978090 02002025 */ move	$a0, $s0
/* 000009 0x80978094 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000010 0x80978098 02202825 */ move	$a1, $s1
/* 000011 0x8097809C 2604000C */ addiu	$a0, $s0, 12
/* 000012 0x809780A0 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000013 0x809780A4 2625000C */ addiu	$a1, $s1, 12
/* 000014 0x809780A8 26040018 */ addiu	$a0, $s0, 24
/* 000015 0x809780AC 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000016 0x809780B0 26250018 */ addiu	$a1, $s1, 24
/* 000017 0x809780B4 3C0E0402 */ lui	$t6, 0x0402
/* 000018 0x809780B8 3C188098 */ lui	$t8, %hi(func_80978628)
/* 000019 0x809780BC 25CEA4D0 */ addiu	$t6, $t6, -23344
/* 000020 0x809780C0 240F0018 */ li	$t7, 24
/* 000021 0x809780C4 27188628 */ addiu	$t8, $t8, %lo(func_80978628)
/* 000022 0x809780C8 AE0E0038 */ sw	$t6, 0X38($s0)
/* 000023 0x809780CC A60F005C */ sh	$t7, 0X5C($s0)
/* 000024 0x809780D0 AE180024 */ sw	$t8, 0X24($s0)
/* 000025 0x809780D4 92390028 */ lbu	$t9, 0X28($s1)
/* 000026 0x809780D8 3C098098 */ lui	$t1, %hi(D_809787F8)
/* 000027 0x809780DC 240300FF */ li	$v1, 255
/* 000028 0x809780E0 00194080 */ sll	$t0, $t9, 2
/* 000029 0x809780E4 01284821 */ addu	$t1, $t1, $t0
/* 000030 0x809780E8 8D2987F8 */ lw	$t1, %lo(D_809787F8)($t1)
/* 000031 0x809780EC 240C00C8 */ li	$t4, 200
/* 000032 0x809780F0 24020001 */ li	$v0, 1
/* 000033 0x809780F4 AE090028 */ sw	$t1, 0X28($s0)
/* 000034 0x809780F8 862A0024 */ lh	$t2, 0X24($s1)
/* 000035 0x809780FC A60A0040 */ sh	$t2, 0X40($s0)
/* 000036 0x80978100 862B0026 */ lh	$t3, 0X26($s1)
/* 000037 0x80978104 A6030044 */ sh	$v1, 0X44($s0)
/* 000038 0x80978108 A6030046 */ sh	$v1, 0X46($s0)
/* 000039 0x8097810C A6030048 */ sh	$v1, 0X48($s0)
/* 000040 0x80978110 A603004A */ sh	$v1, 0X4A($s0)
/* 000041 0x80978114 A600004C */ sh	$zero, 0X4C($s0)
/* 000042 0x80978118 A600004E */ sh	$zero, 0X4E($s0)
/* 000043 0x8097811C A60C0050 */ sh	$t4, 0X50($s0)
/* 000044 0x80978120 A60B0052 */ sh	$t3, 0X52($s0)
/* 000045 0x80978124 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000046 0x80978128 8FB00014 */ lw	$s0, 0X14($sp)
/* 000047 0x8097812C 8FB10018 */ lw	$s1, 0X18($sp)
/* 000048 0x80978130 03E00008 */ jr	$ra
/* 000049 0x80978134 27BD0020 */ addiu	$sp, $sp, 32

glabel func_80978138
/* 000050 0x80978138 27BDFEB0 */ addiu	$sp, $sp, -336
/* 000051 0x8097813C AFB10018 */ sw	$s1, 0X18($sp)
/* 000052 0x80978140 00C08825 */ move	$s1, $a2
/* 000053 0x80978144 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000054 0x80978148 AFB00014 */ sw	$s0, 0X14($sp)
/* 000055 0x8097814C AFA40150 */ sw	$a0, 0X150($sp)
/* 000056 0x80978150 AFA50154 */ sw	$a1, 0X154($sp)
/* 000057 0x80978154 8FAE0150 */ lw	$t6, 0X150($sp)
/* 000058 0x80978158 8DD00000 */ lw	$s0, 0X0($t6)
/* 000059 0x8097815C 862F0040 */ lh	$t7, 0X40($s1)
/* 000060 0x80978160 3C018098 */ lui	$at, %hi(D_80978840)
/* 000061 0x80978164 C4288840 */ lwc1	$f8, %lo(D_80978840)($at)
/* 000062 0x80978168 448F2000 */ mtc1	$t7, $f4
/* 000063 0x8097816C 8E250000 */ lw	$a1, 0X0($s1)
/* 000064 0x80978170 8E260004 */ lw	$a2, 0X4($s1)
/* 000065 0x80978174 468021A0 */ cvt.s.w	$f6, $f4
/* 000066 0x80978178 8E270008 */ lw	$a3, 0X8($s1)
/* 000067 0x8097817C 27A4010C */ addiu	$a0, $sp, 268
/* 000068 0x80978180 46083002 */ mul.s	$f0, $f6, $f8
/* 000069 0x80978184 0C04E5EB */ jal	Matrix_MakeTranslation
/* 000070 0x80978188 E7A00040 */ swc1	$f0, 0X40($sp)
/* 000071 0x8097818C C7A00040 */ lwc1	$f0, 0X40($sp)
/* 000072 0x80978190 27A400CC */ addiu	$a0, $sp, 204
/* 000073 0x80978194 3C073F80 */ lui	$a3, 0x3F80
/* 000074 0x80978198 44050000 */ mfc1	$a1, $f0
/* 000075 0x8097819C 44060000 */ mfc1	$a2, $f0
/* 000076 0x809781A0 0C04E50A */ jal	Matrix_MakeScale
/* 000077 0x809781A4 00000000 */ nop
/* 000078 0x809781A8 8FA50150 */ lw	$a1, 0X150($sp)
/* 000079 0x809781AC 3C010001 */ lui	$at, 0x0001
/* 000080 0x809781B0 342187FC */ ori	$at, $at, 0X87FC
/* 000081 0x809781B4 27A4010C */ addiu	$a0, $sp, 268
/* 000082 0x809781B8 27A6004C */ addiu	$a2, $sp, 76
/* 000083 0x809781BC 0C04E34E */ jal	Matrix_Multiply
/* 000084 0x809781C0 00A12821 */ addu	$a1, $a1, $at
/* 000085 0x809781C4 27A4004C */ addiu	$a0, $sp, 76
/* 000086 0x809781C8 27A500CC */ addiu	$a1, $sp, 204
/* 000087 0x809781CC 0C04E34E */ jal	Matrix_Multiply
/* 000088 0x809781D0 27A6008C */ addiu	$a2, $sp, 140
/* 000089 0x809781D4 02002025 */ move	$a0, $s0
/* 000090 0x809781D8 0C04E706 */ jal	Matrix_AppendToPloyOpaDisp
/* 000091 0x809781DC 27A5008C */ addiu	$a1, $sp, 140
/* 000092 0x809781E0 50400044 */ beqzl	$v0, .L_809782F4
/* 000093 0x809781E4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000094 0x809781E8 8E0302C0 */ lw	$v1, 0X2C0($s0)
/* 000095 0x809781EC 3C19DA38 */ lui	$t9, 0xDA38
/* 000096 0x809781F0 37390003 */ ori	$t9, $t9, 0X3
/* 000097 0x809781F4 24780008 */ addiu	$t8, $v1, 8
/* 000098 0x809781F8 AE1802C0 */ sw	$t8, 0X2C0($s0)
/* 000099 0x809781FC AC620004 */ sw	$v0, 0X4($v1)
/* 000100 0x80978200 AC790000 */ sw	$t9, 0X0($v1)
/* 000101 0x80978204 0C04B25D */ jal	func_8012C974
/* 000102 0x80978208 02002025 */ move	$a0, $s0
/* 000103 0x8097820C 8E0302C0 */ lw	$v1, 0X2C0($s0)
/* 000104 0x80978210 3C09FA00 */ lui	$t1, 0xFA00
/* 000105 0x80978214 24680008 */ addiu	$t0, $v1, 8
/* 000106 0x80978218 AE0802C0 */ sw	$t0, 0X2C0($s0)
/* 000107 0x8097821C AC690000 */ sw	$t1, 0X0($v1)
/* 000108 0x80978220 862A004A */ lh	$t2, 0X4A($s1)
/* 000109 0x80978224 86380046 */ lh	$t8, 0X46($s1)
/* 000110 0x80978228 862D0044 */ lh	$t5, 0X44($s1)
/* 000111 0x8097822C 314B00FF */ andi	$t3, $t2, 0XFF
/* 000112 0x80978230 862A0048 */ lh	$t2, 0X48($s1)
/* 000113 0x80978234 331900FF */ andi	$t9, $t8, 0XFF
/* 000114 0x80978238 000D7600 */ sll	$t6, $t5, 24
/* 000115 0x8097823C 016E7825 */ or	$t7, $t3, $t6
/* 000116 0x80978240 00194400 */ sll	$t0, $t9, 16
/* 000117 0x80978244 314C00FF */ andi	$t4, $t2, 0XFF
/* 000118 0x80978248 000C6A00 */ sll	$t5, $t4, 8
/* 000119 0x8097824C 01E84825 */ or	$t1, $t7, $t0
/* 000120 0x80978250 012D5825 */ or	$t3, $t1, $t5
/* 000121 0x80978254 AC6B0004 */ sw	$t3, 0X4($v1)
/* 000122 0x80978258 8E0302C0 */ lw	$v1, 0X2C0($s0)
/* 000123 0x8097825C 3C18FB00 */ lui	$t8, 0xFB00
/* 000124 0x80978260 246E0008 */ addiu	$t6, $v1, 8
/* 000125 0x80978264 AE0E02C0 */ sw	$t6, 0X2C0($s0)
/* 000126 0x80978268 AC780000 */ sw	$t8, 0X0($v1)
/* 000127 0x8097826C 86390050 */ lh	$t9, 0X50($s1)
/* 000128 0x80978270 862B004E */ lh	$t3, 0X4E($s1)
/* 000129 0x80978274 862C004C */ lh	$t4, 0X4C($s1)
/* 000130 0x80978278 332F00FF */ andi	$t7, $t9, 0XFF
/* 000131 0x8097827C 000F4200 */ sll	$t0, $t7, 8
/* 000132 0x80978280 316E00FF */ andi	$t6, $t3, 0XFF
/* 000133 0x80978284 000C4E00 */ sll	$t1, $t4, 24
/* 000134 0x80978288 01096825 */ or	$t5, $t0, $t1
/* 000135 0x8097828C 000EC400 */ sll	$t8, $t6, 16
/* 000136 0x80978290 01B8C825 */ or	$t9, $t5, $t8
/* 000137 0x80978294 AC790004 */ sw	$t9, 0X4($v1)
/* 000138 0x80978298 8E0302C0 */ lw	$v1, 0X2C0($s0)
/* 000139 0x8097829C 3C0ADB06 */ lui	$t2, 0xDB06
/* 000140 0x809782A0 354A0020 */ ori	$t2, $t2, 0X20
/* 000141 0x809782A4 246F0008 */ addiu	$t7, $v1, 8
/* 000142 0x809782A8 AE0F02C0 */ sw	$t7, 0X2C0($s0)
/* 000143 0x809782AC AC6A0000 */ sw	$t2, 0X0($v1)
/* 000144 0x809782B0 862C0042 */ lh	$t4, 0X42($s1)
/* 000145 0x809782B4 3C048098 */ lui	$a0, %hi(D_80978800)
/* 000146 0x809782B8 AFA30028 */ sw	$v1, 0X28($sp)
/* 000147 0x809782BC 000C4080 */ sll	$t0, $t4, 2
/* 000148 0x809782C0 00882021 */ addu	$a0, $a0, $t0
/* 000149 0x809782C4 0C040141 */ jal	Lib_PtrSegToVirt
/* 000150 0x809782C8 8C848800 */ lw	$a0, %lo(D_80978800)($a0)
/* 000151 0x809782CC 8FA50028 */ lw	$a1, 0X28($sp)
/* 000152 0x809782D0 ACA20004 */ sw	$v0, 0X4($a1)
/* 000153 0x809782D4 8E0302C0 */ lw	$v1, 0X2C0($s0)
/* 000154 0x809782D8 3C0BDE00 */ lui	$t3, 0xDE00
/* 000155 0x809782DC 24690008 */ addiu	$t1, $v1, 8
/* 000156 0x809782E0 AE0902C0 */ sw	$t1, 0X2C0($s0)
/* 000157 0x809782E4 AC6B0000 */ sw	$t3, 0X0($v1)
/* 000158 0x809782E8 8E2E0038 */ lw	$t6, 0X38($s1)
/* 000159 0x809782EC AC6E0004 */ sw	$t6, 0X4($v1)
/* 000160 0x809782F0 8FBF001C */ lw	$ra, 0X1C($sp)
.L_809782F4:
/* 000161 0x809782F4 8FB00014 */ lw	$s0, 0X14($sp)
/* 000162 0x809782F8 8FB10018 */ lw	$s1, 0X18($sp)
/* 000163 0x809782FC 03E00008 */ jr	$ra
/* 000164 0x80978300 27BD0150 */ addiu	$sp, $sp, 336

glabel func_80978304
/* 000165 0x80978304 27BDFE00 */ addiu	$sp, $sp, -512
/* 000166 0x80978308 AFB70060 */ sw	$s7, 0X60($sp)
/* 000167 0x8097830C AFB40054 */ sw	$s4, 0X54($sp)
/* 000168 0x80978310 AFB00044 */ sw	$s0, 0X44($sp)
/* 000169 0x80978314 27B001BC */ addiu	$s0, $sp, 444
/* 000170 0x80978318 00C0A025 */ move	$s4, $a2
/* 000171 0x8097831C 0080B825 */ move	$s7, $a0
/* 000172 0x80978320 AFBF0064 */ sw	$ra, 0X64($sp)
/* 000173 0x80978324 AFB6005C */ sw	$s6, 0X5C($sp)
/* 000174 0x80978328 AFB50058 */ sw	$s5, 0X58($sp)
/* 000175 0x8097832C AFB30050 */ sw	$s3, 0X50($sp)
/* 000176 0x80978330 AFB2004C */ sw	$s2, 0X4C($sp)
/* 000177 0x80978334 AFB10048 */ sw	$s1, 0X48($sp)
/* 000178 0x80978338 F7BE0038 */ sdc1	$f30, 0X38($sp)
/* 000179 0x8097833C F7BC0030 */ sdc1	$f28, 0X30($sp)
/* 000180 0x80978340 F7BA0028 */ sdc1	$f26, 0X28($sp)
/* 000181 0x80978344 F7B80020 */ sdc1	$f24, 0X20($sp)
/* 000182 0x80978348 F7B60018 */ sdc1	$f22, 0X18($sp)
/* 000183 0x8097834C F7B40010 */ sdc1	$f20, 0X10($sp)
/* 000184 0x80978350 AFA50204 */ sw	$a1, 0X204($sp)
/* 000185 0x80978354 3C018098 */ lui	$at, %hi(D_80978844)
/* 000186 0x80978358 8EF20000 */ lw	$s2, 0X0($s7)
/* 000187 0x8097835C C4368844 */ lwc1	$f22, %lo(D_80978844)($at)
/* 000188 0x80978360 868F0040 */ lh	$t7, 0X40($s4)
/* 000189 0x80978364 868E0054 */ lh	$t6, 0X54($s4)
/* 000190 0x80978368 3C018098 */ lui	$at, %hi(D_80978848)
/* 000191 0x8097836C 448F3000 */ mtc1	$t7, $f6
/* 000192 0x80978370 C42A8848 */ lwc1	$f10, %lo(D_80978848)($at)
/* 000193 0x80978374 448E2000 */ mtc1	$t6, $f4
/* 000194 0x80978378 46803220 */ cvt.s.w	$f8, $f6
/* 000195 0x8097837C 02002025 */ move	$a0, $s0
/* 000196 0x80978380 8E850000 */ lw	$a1, 0X0($s4)
/* 000197 0x80978384 8E860004 */ lw	$a2, 0X4($s4)
/* 000198 0x80978388 8E870008 */ lw	$a3, 0X8($s4)
/* 000199 0x8097838C 468027A0 */ cvt.s.w	$f30, $f4
/* 000200 0x80978390 460A4502 */ mul.s	$f20, $f8, $f10
/* 000201 0x80978394 0C04E5EB */ jal	Matrix_MakeTranslation
/* 000202 0x80978398 00000000 */ nop
/* 000203 0x8097839C 27B1017C */ addiu	$s1, $sp, 380
/* 000204 0x809783A0 4405A000 */ mfc1	$a1, $f20
/* 000205 0x809783A4 4406A000 */ mfc1	$a2, $f20
/* 000206 0x809783A8 02202025 */ move	$a0, $s1
/* 000207 0x809783AC 0C04E50A */ jal	Matrix_MakeScale
/* 000208 0x809783B0 3C073F80 */ lui	$a3, 0x3F80
/* 000209 0x809783B4 3C010001 */ lui	$at, 0x0001
/* 000210 0x809783B8 27B300FC */ addiu	$s3, $sp, 252
/* 000211 0x809783BC 342187FC */ ori	$at, $at, 0X87FC
/* 000212 0x809783C0 02E12821 */ addu	$a1, $s7, $at
/* 000213 0x809783C4 02603025 */ move	$a2, $s3
/* 000214 0x809783C8 0C04E34E */ jal	Matrix_Multiply
/* 000215 0x809783CC 02002025 */ move	$a0, $s0
/* 000216 0x809783D0 27B0013C */ addiu	$s0, $sp, 316
/* 000217 0x809783D4 02003025 */ move	$a2, $s0
/* 000218 0x809783D8 02602025 */ move	$a0, $s3
/* 000219 0x809783DC 0C04E34E */ jal	Matrix_Multiply
/* 000220 0x809783E0 02202825 */ move	$a1, $s1
/* 000221 0x809783E4 02402025 */ move	$a0, $s2
/* 000222 0x809783E8 0C04E706 */ jal	Matrix_AppendToPloyOpaDisp
/* 000223 0x809783EC 02002825 */ move	$a1, $s0
/* 000224 0x809783F0 1040007C */ beqz	$v0, .L_809785E4
/* 000225 0x809783F4 3C16DA38 */ lui	$s6, 0xDA38
/* 000226 0x809783F8 36D60003 */ ori	$s6, $s6, 0X3
/* 000227 0x809783FC 8E4302C0 */ lw	$v1, 0X2C0($s2)
/* 000228 0x80978400 02402025 */ move	$a0, $s2
/* 000229 0x80978404 24780008 */ addiu	$t8, $v1, 8
/* 000230 0x80978408 AE5802C0 */ sw	$t8, 0X2C0($s2)
/* 000231 0x8097840C AC620004 */ sw	$v0, 0X4($v1)
/* 000232 0x80978410 AC760000 */ sw	$s6, 0X0($v1)
/* 000233 0x80978414 0C04E706 */ jal	Matrix_AppendToPloyOpaDisp
/* 000234 0x80978418 02002825 */ move	$a1, $s0
/* 000235 0x8097841C 10400071 */ beqz	$v0, .L_809785E4
/* 000236 0x80978420 00408825 */ move	$s1, $v0
/* 000237 0x80978424 0C04B25D */ jal	func_8012C974
/* 000238 0x80978428 02402025 */ move	$a0, $s2
/* 000239 0x8097842C 8E4302C0 */ lw	$v1, 0X2C0($s2)
/* 000240 0x80978430 3C08FA00 */ lui	$t0, 0xFA00
/* 000241 0x80978434 24790008 */ addiu	$t9, $v1, 8
/* 000242 0x80978438 AE5902C0 */ sw	$t9, 0X2C0($s2)
/* 000243 0x8097843C AC680000 */ sw	$t0, 0X0($v1)
/* 000244 0x80978440 8689004A */ lh	$t1, 0X4A($s4)
/* 000245 0x80978444 868F0046 */ lh	$t7, 0X46($s4)
/* 000246 0x80978448 868C0044 */ lh	$t4, 0X44($s4)
/* 000247 0x8097844C 312A00FF */ andi	$t2, $t1, 0XFF
/* 000248 0x80978450 86890048 */ lh	$t1, 0X48($s4)
/* 000249 0x80978454 31F800FF */ andi	$t8, $t7, 0XFF
/* 000250 0x80978458 000C6E00 */ sll	$t5, $t4, 24
/* 000251 0x8097845C 014D7025 */ or	$t6, $t2, $t5
/* 000252 0x80978460 0018CC00 */ sll	$t9, $t8, 16
/* 000253 0x80978464 312B00FF */ andi	$t3, $t1, 0XFF
/* 000254 0x80978468 000B6200 */ sll	$t4, $t3, 8
/* 000255 0x8097846C 01D94025 */ or	$t0, $t6, $t9
/* 000256 0x80978470 010C5025 */ or	$t2, $t0, $t4
/* 000257 0x80978474 AC6A0004 */ sw	$t2, 0X4($v1)
/* 000258 0x80978478 8E4302C0 */ lw	$v1, 0X2C0($s2)
/* 000259 0x8097847C 3C0FFB00 */ lui	$t7, 0xFB00
/* 000260 0x80978480 246D0008 */ addiu	$t5, $v1, 8
/* 000261 0x80978484 AE4D02C0 */ sw	$t5, 0X2C0($s2)
/* 000262 0x80978488 AC6F0000 */ sw	$t7, 0X0($v1)
/* 000263 0x8097848C 86980050 */ lh	$t8, 0X50($s4)
/* 000264 0x80978490 868A004E */ lh	$t2, 0X4E($s4)
/* 000265 0x80978494 868B004C */ lh	$t3, 0X4C($s4)
/* 000266 0x80978498 330E00FF */ andi	$t6, $t8, 0XFF
/* 000267 0x8097849C 000ECA00 */ sll	$t9, $t6, 8
/* 000268 0x809784A0 314D00FF */ andi	$t5, $t2, 0XFF
/* 000269 0x809784A4 000B4600 */ sll	$t0, $t3, 24
/* 000270 0x809784A8 03286025 */ or	$t4, $t9, $t0
/* 000271 0x809784AC 000D7C00 */ sll	$t7, $t5, 16
/* 000272 0x809784B0 018FC025 */ or	$t8, $t4, $t7
/* 000273 0x809784B4 AC780004 */ sw	$t8, 0X4($v1)
/* 000274 0x809784B8 8E5002C0 */ lw	$s0, 0X2C0($s2)
/* 000275 0x809784BC 3C09DB06 */ lui	$t1, 0xDB06
/* 000276 0x809784C0 35290020 */ ori	$t1, $t1, 0X20
/* 000277 0x809784C4 260E0008 */ addiu	$t6, $s0, 8
/* 000278 0x809784C8 AE4E02C0 */ sw	$t6, 0X2C0($s2)
/* 000279 0x809784CC AE090000 */ sw	$t1, 0X0($s0)
/* 000280 0x809784D0 868B0042 */ lh	$t3, 0X42($s4)
/* 000281 0x809784D4 3C048098 */ lui	$a0, %hi(D_80978820)
/* 000282 0x809784D8 000BC880 */ sll	$t9, $t3, 2
/* 000283 0x809784DC 00992021 */ addu	$a0, $a0, $t9
/* 000284 0x809784E0 0C040141 */ jal	Lib_PtrSegToVirt
/* 000285 0x809784E4 8C848820 */ lw	$a0, %lo(D_80978820)($a0)
/* 000286 0x809784E8 AE020004 */ sw	$v0, 0X4($s0)
/* 000287 0x809784EC 3C15DE00 */ lui	$s5, 0xDE00
/* 000288 0x809784F0 8E4302C0 */ lw	$v1, 0X2C0($s2)
/* 000289 0x809784F4 3C0A0402 */ lui	$t2, 0x0402
/* 000290 0x809784F8 254AA538 */ addiu	$t2, $t2, -23240
/* 000291 0x809784FC 24680008 */ addiu	$t0, $v1, 8
/* 000292 0x80978500 AE4802C0 */ sw	$t0, 0X2C0($s2)
/* 000293 0x80978504 AC6A0004 */ sw	$t2, 0X4($v1)
/* 000294 0x80978508 AC750000 */ sw	$s5, 0X0($v1)
/* 000295 0x8097850C 8E4302C0 */ lw	$v1, 0X2C0($s2)
/* 000296 0x80978510 3C130402 */ lui	$s3, 0x0402
/* 000297 0x80978514 2673A590 */ addiu	$s3, $s3, -23152
/* 000298 0x80978518 246D0008 */ addiu	$t5, $v1, 8
/* 000299 0x8097851C AE4D02C0 */ sw	$t5, 0X2C0($s2)
/* 000300 0x80978520 AC730004 */ sw	$s3, 0X4($v1)
/* 000301 0x80978524 AC750000 */ sw	$s5, 0X0($v1)
/* 000302 0x80978528 27B000BC */ addiu	$s0, $sp, 188
/* 000303 0x8097852C 02002825 */ move	$a1, $s0
/* 000304 0x80978530 0C060759 */ jal	SysMatrix_FromRSPMatrix
/* 000305 0x80978534 02202025 */ move	$a0, $s1
/* 000306 0x80978538 0C060083 */ jal	SysMatrix_SetCurrentState
/* 000307 0x8097853C 02002025 */ move	$a0, $s0
/* 000308 0x80978540 3C018098 */ lui	$at, %hi(D_8097884C)
/* 000309 0x80978544 C43C884C */ lwc1	$f28, %lo(D_8097884C)($at)
/* 000310 0x80978548 3C014334 */ lui	$at, 0x4334
/* 000311 0x8097854C 4481D000 */ mtc1	$at, $f26
/* 000312 0x80978550 3C018098 */ lui	$at, %hi(D_80978850)
/* 000313 0x80978554 4480A000 */ mtc1	$zero, $f20
/* 000314 0x80978558 C4388850 */ lwc1	$f24, %lo(D_80978850)($at)
/* 000315 0x8097855C 24110001 */ li	$s1, 1
.L_80978560:
/* 000316 0x80978560 4406F000 */ mfc1	$a2, $f30
/* 000317 0x80978564 4600A306 */ mov.s	$f12, $f20
/* 000318 0x80978568 4600A386 */ mov.s	$f14, $f20
/* 000319 0x8097856C 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000320 0x80978570 24070001 */ li	$a3, 1
/* 000321 0x80978574 868C005C */ lh	$t4, 0X5C($s4)
/* 000322 0x80978578 24050001 */ li	$a1, 1
/* 000323 0x8097857C 448C8000 */ mtc1	$t4, $f16
/* 000324 0x80978580 00000000 */ nop
/* 000325 0x80978584 468084A0 */ cvt.s.w	$f18, $f16
/* 000326 0x80978588 46189102 */ mul.s	$f4, $f18, $f24
/* 000327 0x8097858C 0C0603A4 */ jal	SysMatrix_InsertZRotation_f
/* 000328 0x80978590 461A2300 */ add.s	$f12, $f4, $f26
/* 000329 0x80978594 4406B000 */ mfc1	$a2, $f22
/* 000330 0x80978598 4600B306 */ mov.s	$f12, $f22
/* 000331 0x8097859C 4600B386 */ mov.s	$f14, $f22
/* 000332 0x809785A0 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000333 0x809785A4 24070001 */ li	$a3, 1
/* 000334 0x809785A8 8E5002C0 */ lw	$s0, 0X2C0($s2)
/* 000335 0x809785AC 260F0008 */ addiu	$t7, $s0, 8
/* 000336 0x809785B0 AE4F02C0 */ sw	$t7, 0X2C0($s2)
/* 000337 0x809785B4 AE160000 */ sw	$s6, 0X0($s0)
/* 000338 0x809785B8 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000339 0x809785BC 8EE40000 */ lw	$a0, 0X0($s7)
/* 000340 0x809785C0 AE020004 */ sw	$v0, 0X4($s0)
/* 000341 0x809785C4 8E4302C0 */ lw	$v1, 0X2C0($s2)
/* 000342 0x809785C8 2631FFFF */ addiu	$s1, $s1, -1
/* 000343 0x809785CC 24780008 */ addiu	$t8, $v1, 8
/* 000344 0x809785D0 AE5802C0 */ sw	$t8, 0X2C0($s2)
/* 000345 0x809785D4 AC730004 */ sw	$s3, 0X4($v1)
/* 000346 0x809785D8 AC750000 */ sw	$s5, 0X0($v1)
/* 000347 0x809785DC 0621FFE0 */ bgez	$s1, .L_80978560
/* 000348 0x809785E0 461CB581 */ sub.s	$f22, $f22, $f28
.L_809785E4:
/* 000349 0x809785E4 8FBF0064 */ lw	$ra, 0X64($sp)
/* 000350 0x809785E8 D7B40010 */ ldc1	$f20, 0X10($sp)
/* 000351 0x809785EC D7B60018 */ ldc1	$f22, 0X18($sp)
/* 000352 0x809785F0 D7B80020 */ ldc1	$f24, 0X20($sp)
/* 000353 0x809785F4 D7BA0028 */ ldc1	$f26, 0X28($sp)
/* 000354 0x809785F8 D7BC0030 */ ldc1	$f28, 0X30($sp)
/* 000355 0x809785FC D7BE0038 */ ldc1	$f30, 0X38($sp)
/* 000356 0x80978600 8FB00044 */ lw	$s0, 0X44($sp)
/* 000357 0x80978604 8FB10048 */ lw	$s1, 0X48($sp)
/* 000358 0x80978608 8FB2004C */ lw	$s2, 0X4C($sp)
/* 000359 0x8097860C 8FB30050 */ lw	$s3, 0X50($sp)
/* 000360 0x80978610 8FB40054 */ lw	$s4, 0X54($sp)
/* 000361 0x80978614 8FB50058 */ lw	$s5, 0X58($sp)
/* 000362 0x80978618 8FB6005C */ lw	$s6, 0X5C($sp)
/* 000363 0x8097861C 8FB70060 */ lw	$s7, 0X60($sp)
/* 000364 0x80978620 03E00008 */ jr	$ra
/* 000365 0x80978624 27BD0200 */ addiu	$sp, $sp, 512

glabel func_80978628
/* 000366 0x80978628 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000367 0x8097862C AFB00014 */ sw	$s0, 0X14($sp)
/* 000368 0x80978630 00C08025 */ move	$s0, $a2
/* 000369 0x80978634 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000370 0x80978638 AFB10018 */ sw	$s1, 0X18($sp)
/* 000371 0x8097863C AFA40020 */ sw	$a0, 0X20($sp)
/* 000372 0x80978640 AFA50024 */ sw	$a1, 0X24($sp)
/* 000373 0x80978644 860E005C */ lh	$t6, 0X5C($s0)
/* 000374 0x80978648 240F0017 */ li	$t7, 23
/* 000375 0x8097864C 24010003 */ li	$at, 3
/* 000376 0x80978650 01EEC023 */ subu	$t8, $t7, $t6
/* 000377 0x80978654 0301001A */ div	$zero, $t8, $at
/* 000378 0x80978658 86020052 */ lh	$v0, 0X52($s0)
/* 000379 0x8097865C 86080040 */ lh	$t0, 0X40($s0)
/* 000380 0x80978660 0000C812 */ mflo	$t9
/* 000381 0x80978664 2401001E */ li	$at, 30
/* 000382 0x80978668 01024821 */ addu	$t1, $t0, $v0
/* 000383 0x8097866C A6190042 */ sh	$t9, 0X42($s0)
/* 000384 0x80978670 14410005 */ bne	$v0, $at, .L_80978688
/* 000385 0x80978674 A6090040 */ sh	$t1, 0X40($s0)
/* 000386 0x80978678 860A0054 */ lh	$t2, 0X54($s0)
/* 000387 0x8097867C 254B0004 */ addiu	$t3, $t2, 4
/* 000388 0x80978680 10000004 */ b	.L_80978694
/* 000389 0x80978684 A60B0054 */ sh	$t3, 0X54($s0)
.L_80978688:
/* 000390 0x80978688 860C0054 */ lh	$t4, 0X54($s0)
/* 000391 0x8097868C 258D0002 */ addiu	$t5, $t4, 2
/* 000392 0x80978690 A60D0054 */ sh	$t5, 0X54($s0)
.L_80978694:
/* 000393 0x80978694 8602005C */ lh	$v0, 0X5C($s0)
/* 000394 0x80978698 28410017 */ slti	$at, $v0, 23
/* 000395 0x8097869C 10200027 */ beqz	$at, .L_8097873C
/* 000396 0x809786A0 2841000E */ slti	$at, $v0, 14
/* 000397 0x809786A4 14200025 */ bnez	$at, .L_8097873C
/* 000398 0x809786A8 2451FFF3 */ addiu	$s1, $v0, -13
/* 000399 0x809786AC 86040044 */ lh	$a0, 0X44($s0)
/* 000400 0x809786B0 240500FF */ li	$a1, 255
/* 000401 0x809786B4 0C02C25B */ jal	func_800B096C
/* 000402 0x809786B8 02203025 */ move	$a2, $s1
/* 000403 0x809786BC A6020044 */ sh	$v0, 0X44($s0)
/* 000404 0x809786C0 86040046 */ lh	$a0, 0X46($s0)
/* 000405 0x809786C4 240500FF */ li	$a1, 255
/* 000406 0x809786C8 0C02C25B */ jal	func_800B096C
/* 000407 0x809786CC 02203025 */ move	$a2, $s1
/* 000408 0x809786D0 A6020046 */ sh	$v0, 0X46($s0)
/* 000409 0x809786D4 86040048 */ lh	$a0, 0X48($s0)
/* 000410 0x809786D8 24050096 */ li	$a1, 150
/* 000411 0x809786DC 0C02C25B */ jal	func_800B096C
/* 000412 0x809786E0 02203025 */ move	$a2, $s1
/* 000413 0x809786E4 A6020048 */ sh	$v0, 0X48($s0)
/* 000414 0x809786E8 8604004A */ lh	$a0, 0X4A($s0)
/* 000415 0x809786EC 240500FF */ li	$a1, 255
/* 000416 0x809786F0 0C02C25B */ jal	func_800B096C
/* 000417 0x809786F4 02203025 */ move	$a2, $s1
/* 000418 0x809786F8 A602004A */ sh	$v0, 0X4A($s0)
/* 000419 0x809786FC 8604004C */ lh	$a0, 0X4C($s0)
/* 000420 0x80978700 24050096 */ li	$a1, 150
/* 000421 0x80978704 0C02C25B */ jal	func_800B096C
/* 000422 0x80978708 02203025 */ move	$a2, $s1
/* 000423 0x8097870C A602004C */ sh	$v0, 0X4C($s0)
/* 000424 0x80978710 8604004E */ lh	$a0, 0X4E($s0)
/* 000425 0x80978714 00002825 */ move	$a1, $zero
/* 000426 0x80978718 0C02C25B */ jal	func_800B096C
/* 000427 0x8097871C 02203025 */ move	$a2, $s1
/* 000428 0x80978720 A602004E */ sh	$v0, 0X4E($s0)
/* 000429 0x80978724 86040050 */ lh	$a0, 0X50($s0)
/* 000430 0x80978728 00002825 */ move	$a1, $zero
/* 000431 0x8097872C 0C02C25B */ jal	func_800B096C
/* 000432 0x80978730 02203025 */ move	$a2, $s1
/* 000433 0x80978734 10000029 */ b	.L_809787DC
/* 000434 0x80978738 A6020050 */ sh	$v0, 0X50($s0)
.L_8097873C:
/* 000435 0x8097873C 2841000E */ slti	$at, $v0, 14
/* 000436 0x80978740 50200027 */ beqzl	$at, .L_809787E0
/* 000437 0x80978744 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000438 0x80978748 04400024 */ bltz	$v0, .L_809787DC
/* 000439 0x8097874C 24510001 */ addiu	$s1, $v0, 1
/* 000440 0x80978750 86040044 */ lh	$a0, 0X44($s0)
/* 000441 0x80978754 24050032 */ li	$a1, 50
/* 000442 0x80978758 0C02C25B */ jal	func_800B096C
/* 000443 0x8097875C 02203025 */ move	$a2, $s1
/* 000444 0x80978760 A6020044 */ sh	$v0, 0X44($s0)
/* 000445 0x80978764 86040046 */ lh	$a0, 0X46($s0)
/* 000446 0x80978768 24050032 */ li	$a1, 50
/* 000447 0x8097876C 0C02C25B */ jal	func_800B096C
/* 000448 0x80978770 02203025 */ move	$a2, $s1
/* 000449 0x80978774 A6020046 */ sh	$v0, 0X46($s0)
/* 000450 0x80978778 86040048 */ lh	$a0, 0X48($s0)
/* 000451 0x8097877C 24050032 */ li	$a1, 50
/* 000452 0x80978780 0C02C25B */ jal	func_800B096C
/* 000453 0x80978784 02203025 */ move	$a2, $s1
/* 000454 0x80978788 A6020048 */ sh	$v0, 0X48($s0)
/* 000455 0x8097878C 8604004A */ lh	$a0, 0X4A($s0)
/* 000456 0x80978790 24050096 */ li	$a1, 150
/* 000457 0x80978794 0C02C25B */ jal	func_800B096C
/* 000458 0x80978798 02203025 */ move	$a2, $s1
/* 000459 0x8097879C A602004A */ sh	$v0, 0X4A($s0)
/* 000460 0x809787A0 8604004C */ lh	$a0, 0X4C($s0)
/* 000461 0x809787A4 2405000A */ li	$a1, 10
/* 000462 0x809787A8 0C02C25B */ jal	func_800B096C
/* 000463 0x809787AC 02203025 */ move	$a2, $s1
/* 000464 0x809787B0 A602004C */ sh	$v0, 0X4C($s0)
/* 000465 0x809787B4 8604004E */ lh	$a0, 0X4E($s0)
/* 000466 0x809787B8 2405000A */ li	$a1, 10
/* 000467 0x809787BC 0C02C25B */ jal	func_800B096C
/* 000468 0x809787C0 02203025 */ move	$a2, $s1
/* 000469 0x809787C4 A602004E */ sh	$v0, 0X4E($s0)
/* 000470 0x809787C8 86040050 */ lh	$a0, 0X50($s0)
/* 000471 0x809787CC 2405000A */ li	$a1, 10
/* 000472 0x809787D0 0C02C25B */ jal	func_800B096C
/* 000473 0x809787D4 02203025 */ move	$a2, $s1
/* 000474 0x809787D8 A6020050 */ sh	$v0, 0X50($s0)
.L_809787DC:
/* 000475 0x809787DC 8FBF001C */ lw	$ra, 0X1C($sp)
.L_809787E0:
/* 000476 0x809787E0 8FB00014 */ lw	$s0, 0X14($sp)
/* 000477 0x809787E4 8FB10018 */ lw	$s1, 0X18($sp)
/* 000478 0x809787E8 03E00008 */ jr	$ra
/* 000479 0x809787EC 27BD0020 */ addiu	$sp, $sp, 32
