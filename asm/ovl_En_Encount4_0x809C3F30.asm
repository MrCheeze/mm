.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel EnEncount4_Init
/* 000000 0x809C3F30 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000001 0x809C3F34 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x809C3F38 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000003 0x809C3F3C 00803025 */ move	$a2, $a0
/* 000004 0x809C3F40 84C2001C */ lh	$v0, 0X1C($a2)
/* 000005 0x809C3F44 2401007F */ li	$at, 127
/* 000006 0x809C3F48 2419FFFF */ li	$t9, -1
/* 000007 0x809C3F4C 3058007F */ andi	$t8, $v0, 0X7F
/* 000008 0x809C3F50 A4D8014A */ sh	$t8, 0X14A($a2)
/* 000009 0x809C3F54 84C7014A */ lh	$a3, 0X14A($a2)
/* 000010 0x809C3F58 00027303 */ sra	$t6, $v0, 12
/* 000011 0x809C3F5C 31CF000F */ andi	$t7, $t6, 0XF
/* 000012 0x809C3F60 14E10003 */ bne	$a3, $at, .L_809C3F70
/* 000013 0x809C3F64 A4CF0148 */ sh	$t7, 0X148($a2)
/* 000014 0x809C3F68 A4D9014A */ sh	$t9, 0X14A($a2)
/* 000015 0x809C3F6C 84C7014A */ lh	$a3, 0X14A($a2)
.L_809C3F70:
/* 000016 0x809C3F70 04E0000A */ bltz	$a3, .L_809C3F9C
/* 000017 0x809C3F74 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000018 0x809C3F78 00E02825 */ move	$a1, $a3
/* 000019 0x809C3F7C 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000020 0x809C3F80 AFA60018 */ sw	$a2, 0X18($sp)
/* 000021 0x809C3F84 10400005 */ beqz	$v0, .L_809C3F9C
/* 000022 0x809C3F88 8FA60018 */ lw	$a2, 0X18($sp)
/* 000023 0x809C3F8C 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000024 0x809C3F90 00C02025 */ move	$a0, $a2
/* 000025 0x809C3F94 10000009 */ b	.L_809C3FBC
/* 000026 0x809C3F98 8FBF0014 */ lw	$ra, 0X14($sp)
.L_809C3F9C:
/* 000027 0x809C3F9C 8CC80004 */ lw	$t0, 0X4($a2)
/* 000028 0x809C3FA0 2401FFFE */ li	$at, -2
/* 000029 0x809C3FA4 3C0A809C */ lui	$t2, %hi(func_809C3FD8)
/* 000030 0x809C3FA8 254A3FD8 */ addiu	$t2, $t2, %lo(func_809C3FD8)
/* 000031 0x809C3FAC 01014824 */ and	$t1, $t0, $at
/* 000032 0x809C3FB0 ACC90004 */ sw	$t1, 0X4($a2)
/* 000033 0x809C3FB4 ACCA0144 */ sw	$t2, 0X144($a2)
/* 000034 0x809C3FB8 8FBF0014 */ lw	$ra, 0X14($sp)
.L_809C3FBC:
/* 000035 0x809C3FBC 27BD0018 */ addiu	$sp, $sp, 24
/* 000036 0x809C3FC0 03E00008 */ jr	$ra
/* 000037 0x809C3FC4 00000000 */ nop

glabel EnEncount4_Destroy
/* 000038 0x809C3FC8 AFA40000 */ sw	$a0, 0X0($sp)
/* 000039 0x809C3FCC AFA50004 */ sw	$a1, 0X4($sp)
/* 000040 0x809C3FD0 03E00008 */ jr	$ra
/* 000041 0x809C3FD4 00000000 */ nop

glabel func_809C3FD8
/* 000042 0x809C3FD8 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000043 0x809C3FDC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000044 0x809C3FE0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000045 0x809C3FE4 00803025 */ move	$a2, $a0
/* 000046 0x809C3FE8 84C7014A */ lh	$a3, 0X14A($a2)
/* 000047 0x809C3FEC A4C0014E */ sh	$zero, 0X14E($a2)
/* 000048 0x809C3FF0 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000049 0x809C3FF4 04E0000B */ bltz	$a3, .L_809C4024
/* 000050 0x809C3FF8 00E02825 */ move	$a1, $a3
/* 000051 0x809C3FFC 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000052 0x809C4000 AFA60018 */ sw	$a2, 0X18($sp)
/* 000053 0x809C4004 10400007 */ beqz	$v0, .L_809C4024
/* 000054 0x809C4008 8FA60018 */ lw	$a2, 0X18($sp)
/* 000055 0x809C400C 3C0F809C */ lui	$t7, %hi(func_809C464C)
/* 000056 0x809C4010 240E0064 */ li	$t6, 100
/* 000057 0x809C4014 25EF464C */ addiu	$t7, $t7, %lo(func_809C464C)
/* 000058 0x809C4018 A4CE0150 */ sh	$t6, 0X150($a2)
/* 000059 0x809C401C 10000012 */ b	.L_809C4068
/* 000060 0x809C4020 ACCF0144 */ sw	$t7, 0X144($a2)
.L_809C4024:
/* 000061 0x809C4024 8FB8001C */ lw	$t8, 0X1C($sp)
/* 000062 0x809C4028 3C08809C */ lui	$t0, %hi(func_809C4078)
/* 000063 0x809C402C 2403028F */ li	$v1, 655
/* 000064 0x809C4030 8F021D20 */ lw	$v0, 0X1D20($t8)
/* 000065 0x809C4034 25084078 */ addiu	$t0, $t0, %lo(func_809C4078)
/* 000066 0x809C4038 5040000C */ beqzl	$v0, .L_809C406C
/* 000067 0x809C403C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000068 0x809C4040 84590000 */ lh	$t9, 0X0($v0)
.L_809C4044:
/* 000069 0x809C4044 50790004 */ beql	$v1, $t9, .L_809C4058
/* 000070 0x809C4048 ACC20154 */ sw	$v0, 0X154($a2)
/* 000071 0x809C404C 10000004 */ b	.L_809C4060
/* 000072 0x809C4050 8C42012C */ lw	$v0, 0X12C($v0)
/* 000073 0x809C4054 ACC20154 */ sw	$v0, 0X154($a2)
.L_809C4058:
/* 000074 0x809C4058 10000003 */ b	.L_809C4068
/* 000075 0x809C405C ACC80144 */ sw	$t0, 0X144($a2)
.L_809C4060:
/* 000076 0x809C4060 5440FFF8 */ bnezl	$v0, .L_809C4044
/* 000077 0x809C4064 84590000 */ lh	$t9, 0X0($v0)
.L_809C4068:
/* 000078 0x809C4068 8FBF0014 */ lw	$ra, 0X14($sp)
.L_809C406C:
/* 000079 0x809C406C 27BD0018 */ addiu	$sp, $sp, 24
/* 000080 0x809C4070 03E00008 */ jr	$ra
/* 000081 0x809C4074 00000000 */ nop

glabel func_809C4078
/* 000082 0x809C4078 27BDFF98 */ addiu	$sp, $sp, -104
/* 000083 0x809C407C AFB70060 */ sw	$s7, 0X60($sp)
/* 000084 0x809C4080 AFB30050 */ sw	$s3, 0X50($sp)
/* 000085 0x809C4084 00809825 */ move	$s3, $a0
/* 000086 0x809C4088 00A0B825 */ move	$s7, $a1
/* 000087 0x809C408C AFBF0064 */ sw	$ra, 0X64($sp)
/* 000088 0x809C4090 AFB6005C */ sw	$s6, 0X5C($sp)
/* 000089 0x809C4094 AFB50058 */ sw	$s5, 0X58($sp)
/* 000090 0x809C4098 AFB40054 */ sw	$s4, 0X54($sp)
/* 000091 0x809C409C AFB2004C */ sw	$s2, 0X4C($sp)
/* 000092 0x809C40A0 AFB10048 */ sw	$s1, 0X48($sp)
/* 000093 0x809C40A4 AFB00044 */ sw	$s0, 0X44($sp)
/* 000094 0x809C40A8 F7B60038 */ sdc1	$f22, 0X38($sp)
/* 000095 0x809C40AC F7B40030 */ sdc1	$f20, 0X30($sp)
/* 000096 0x809C40B0 8666014A */ lh	$a2, 0X14A($s3)
/* 000097 0x809C40B4 8E700154 */ lw	$s0, 0X154($s3)
/* 000098 0x809C40B8 02E02025 */ move	$a0, $s7
/* 000099 0x809C40BC 04C0000A */ bltz	$a2, .L_809C40E8
/* 000100 0x809C40C0 00000000 */ nop
/* 000101 0x809C40C4 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000102 0x809C40C8 00C02825 */ move	$a1, $a2
/* 000103 0x809C40CC 10400006 */ beqz	$v0, .L_809C40E8
/* 000104 0x809C40D0 240E0064 */ li	$t6, 100
/* 000105 0x809C40D4 3C0F809C */ lui	$t7, %hi(func_809C464C)
/* 000106 0x809C40D8 25EF464C */ addiu	$t7, $t7, %lo(func_809C464C)
/* 000107 0x809C40DC A66E0150 */ sh	$t6, 0X150($s3)
/* 000108 0x809C40E0 10000064 */ b	.L_809C4274
/* 000109 0x809C40E4 AE6F0144 */ sw	$t7, 0X144($s3)
.L_809C40E8:
/* 000110 0x809C40E8 3C18801F */ lui	$t8, %hi(gStaticContext)
/* 000111 0x809C40EC 8F183F60 */ lw	$t8, %lo(gStaticContext)($t8)
/* 000112 0x809C40F0 871912D6 */ lh	$t9, 0X12D6($t8)
/* 000113 0x809C40F4 57200060 */ bnezl	$t9, .L_809C4278
/* 000114 0x809C40F8 8FBF0064 */ lw	$ra, 0X64($sp)
/* 000115 0x809C40FC 8E680154 */ lw	$t0, 0X154($s3)
/* 000116 0x809C4100 2401028F */ li	$at, 655
/* 000117 0x809C4104 85090000 */ lh	$t1, 0X0($t0)
/* 000118 0x809C4108 15210004 */ bne	$t1, $at, .L_809C411C
/* 000119 0x809C410C 00000000 */ nop
/* 000120 0x809C4110 8E0A0138 */ lw	$t2, 0X138($s0)
/* 000121 0x809C4114 55400006 */ bnezl	$t2, .L_809C4130
/* 000122 0x809C4118 86630148 */ lh	$v1, 0X148($s3)
.L_809C411C:
/* 000123 0x809C411C 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000124 0x809C4120 02602025 */ move	$a0, $s3
/* 000125 0x809C4124 10000054 */ b	.L_809C4278
/* 000126 0x809C4128 8FBF0064 */ lw	$ra, 0X64($sp)
/* 000127 0x809C412C 86630148 */ lh	$v1, 0X148($s3)
.L_809C4130:
/* 000128 0x809C4130 3C014370 */ lui	$at, 0x4370
/* 000129 0x809C4134 14600008 */ bnez	$v1, .L_809C4158
/* 000130 0x809C4138 00000000 */ nop
/* 000131 0x809C413C C6640098 */ lwc1	$f4, 0X98($s3)
/* 000132 0x809C4140 44813000 */ mtc1	$at, $f6
/* 000133 0x809C4144 00000000 */ nop
/* 000134 0x809C4148 4606203C */ c.lt.s	$f4, $f6
/* 000135 0x809C414C 00000000 */ nop
/* 000136 0x809C4150 45020049 */ bc1fl .L_809C4278
/* 000137 0x809C4154 8FBF0064 */ lw	$ra, 0X64($sp)
.L_809C4158:
/* 000138 0x809C4158 14600008 */ bnez	$v1, .L_809C417C
/* 000139 0x809C415C 00000000 */ nop
/* 000140 0x809C4160 8E0B02DC */ lw	$t3, 0X2DC($s0)
/* 000141 0x809C4164 11600005 */ beqz	$t3, .L_809C417C
/* 000142 0x809C4168 00000000 */ nop
/* 000143 0x809C416C 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000144 0x809C4170 02602025 */ move	$a0, $s3
/* 000145 0x809C4174 10000040 */ b	.L_809C4278
/* 000146 0x809C4178 8FBF0064 */ lw	$ra, 0X64($sp)
.L_809C417C:
/* 000147 0x809C417C 10600004 */ beqz	$v1, .L_809C4190
/* 000148 0x809C4180 0000B025 */ move	$s6, $zero
/* 000149 0x809C4184 8E0C02DC */ lw	$t4, 0X2DC($s0)
/* 000150 0x809C4188 5180003B */ beqzl	$t4, .L_809C4278
/* 000151 0x809C418C 8FBF0064 */ lw	$ra, 0X64($sp)
.L_809C4190:
/* 000152 0x809C4190 10600003 */ beqz	$v1, .L_809C41A0
/* 000153 0x809C4194 00001025 */ move	$v0, $zero
/* 000154 0x809C4198 24160001 */ li	$s6, 1
/* 000155 0x809C419C 24020002 */ li	$v0, 2
.L_809C41A0:
/* 000156 0x809C41A0 28410005 */ slti	$at, $v0, 5
/* 000157 0x809C41A4 10200030 */ beqz	$at, .L_809C4268
/* 000158 0x809C41A8 00026840 */ sll	$t5, $v0, 1
/* 000159 0x809C41AC 3C0E809C */ lui	$t6, %hi(D_809C46D0)
/* 000160 0x809C41B0 3C18809C */ lui	$t8, %hi(D_809C46DC)
/* 000161 0x809C41B4 271846DC */ addiu	$t8, $t8, %lo(D_809C46DC)
/* 000162 0x809C41B8 25CE46D0 */ addiu	$t6, $t6, %lo(D_809C46D0)
/* 000163 0x809C41BC 00027880 */ sll	$t7, $v0, 2
/* 000164 0x809C41C0 3C15809C */ lui	$s5, %hi(D_809C46F0)
/* 000165 0x809C41C4 26B546F0 */ addiu	$s5, $s5, %lo(D_809C46F0)
/* 000166 0x809C41C8 01F88021 */ addu	$s0, $t7, $t8
/* 000167 0x809C41CC 01AE8821 */ addu	$s1, $t5, $t6
/* 000168 0x809C41D0 26F41CA0 */ addiu	$s4, $s7, 7328
.L_809C41D4:
/* 000169 0x809C41D4 86390000 */ lh	$t9, 0X0($s1)
/* 000170 0x809C41D8 86680032 */ lh	$t0, 0X32($s3)
/* 000171 0x809C41DC 03289021 */ addu	$s2, $t9, $t0
/* 000172 0x809C41E0 00129400 */ sll	$s2, $s2, 16
/* 000173 0x809C41E4 00129403 */ sra	$s2, $s2, 16
/* 000174 0x809C41E8 00122400 */ sll	$a0, $s2, 16
/* 000175 0x809C41EC 0C03FB61 */ jal	Math_Sins
/* 000176 0x809C41F0 00042403 */ sra	$a0, $a0, 16
/* 000177 0x809C41F4 C6080000 */ lwc1	$f8, 0X0($s0)
/* 000178 0x809C41F8 C6700024 */ lwc1	$f16, 0X24($s3)
/* 000179 0x809C41FC 00122400 */ sll	$a0, $s2, 16
/* 000180 0x809C4200 46004282 */ mul.s	$f10, $f8, $f0
/* 000181 0x809C4204 C6760028 */ lwc1	$f22, 0X28($s3)
/* 000182 0x809C4208 00042403 */ sra	$a0, $a0, 16
/* 000183 0x809C420C 0C03FB51 */ jal	Math_Coss
/* 000184 0x809C4210 46105500 */ add.s	$f20, $f10, $f16
/* 000185 0x809C4214 C6120000 */ lwc1	$f18, 0X0($s0)
/* 000186 0x809C4218 C666002C */ lwc1	$f6, 0X2C($s3)
/* 000187 0x809C421C AFA0001C */ sw	$zero, 0X1C($sp)
/* 000188 0x809C4220 46009102 */ mul.s	$f4, $f18, $f0
/* 000189 0x809C4224 E7B60014 */ swc1	$f22, 0X14($sp)
/* 000190 0x809C4228 E7B40010 */ swc1	$f20, 0X10($sp)
/* 000191 0x809C422C 02802025 */ move	$a0, $s4
/* 000192 0x809C4230 02602825 */ move	$a1, $s3
/* 000193 0x809C4234 02E03025 */ move	$a2, $s7
/* 000194 0x809C4238 24070110 */ li	$a3, 272
/* 000195 0x809C423C 46062080 */ add.s	$f2, $f4, $f6
/* 000196 0x809C4240 E7A20018 */ swc1	$f2, 0X18($sp)
/* 000197 0x809C4244 86690032 */ lh	$t1, 0X32($s3)
/* 000198 0x809C4248 AFB60028 */ sw	$s6, 0X28($sp)
/* 000199 0x809C424C AFA00024 */ sw	$zero, 0X24($sp)
/* 000200 0x809C4250 0C02EC30 */ jal	Actor_SpawnWithParent
/* 000201 0x809C4254 AFA90020 */ sw	$t1, 0X20($sp)
/* 000202 0x809C4258 26100004 */ addiu	$s0, $s0, 4
/* 000203 0x809C425C 0215082B */ sltu	$at, $s0, $s5
/* 000204 0x809C4260 1420FFDC */ bnez	$at, .L_809C41D4
/* 000205 0x809C4264 26310002 */ addiu	$s1, $s1, 2
.L_809C4268:
/* 000206 0x809C4268 3C0A809C */ lui	$t2, %hi(func_809C42A8)
/* 000207 0x809C426C 254A42A8 */ addiu	$t2, $t2, %lo(func_809C42A8)
/* 000208 0x809C4270 AE6A0144 */ sw	$t2, 0X144($s3)
.L_809C4274:
/* 000209 0x809C4274 8FBF0064 */ lw	$ra, 0X64($sp)
.L_809C4278:
/* 000210 0x809C4278 D7B40030 */ ldc1	$f20, 0X30($sp)
/* 000211 0x809C427C D7B60038 */ ldc1	$f22, 0X38($sp)
/* 000212 0x809C4280 8FB00044 */ lw	$s0, 0X44($sp)
/* 000213 0x809C4284 8FB10048 */ lw	$s1, 0X48($sp)
/* 000214 0x809C4288 8FB2004C */ lw	$s2, 0X4C($sp)
/* 000215 0x809C428C 8FB30050 */ lw	$s3, 0X50($sp)
/* 000216 0x809C4290 8FB40054 */ lw	$s4, 0X54($sp)
/* 000217 0x809C4294 8FB50058 */ lw	$s5, 0X58($sp)
/* 000218 0x809C4298 8FB6005C */ lw	$s6, 0X5C($sp)
/* 000219 0x809C429C 8FB70060 */ lw	$s7, 0X60($sp)
/* 000220 0x809C42A0 03E00008 */ jr	$ra
/* 000221 0x809C42A4 27BD0068 */ addiu	$sp, $sp, 104

glabel func_809C42A8
/* 000222 0x809C42A8 27BDFF90 */ addiu	$sp, $sp, -112
/* 000223 0x809C42AC AFB00038 */ sw	$s0, 0X38($sp)
/* 000224 0x809C42B0 00808025 */ move	$s0, $a0
/* 000225 0x809C42B4 AFBF003C */ sw	$ra, 0X3C($sp)
/* 000226 0x809C42B8 AFA50074 */ sw	$a1, 0X74($sp)
/* 000227 0x809C42BC 8FAE0074 */ lw	$t6, 0X74($sp)
/* 000228 0x809C42C0 8DCF1CCC */ lw	$t7, 0X1CCC($t6)
/* 000229 0x809C42C4 01C02025 */ move	$a0, $t6
/* 000230 0x809C42C8 AFAF006C */ sw	$t7, 0X6C($sp)
/* 000231 0x809C42CC 8606014A */ lh	$a2, 0X14A($s0)
/* 000232 0x809C42D0 8E030154 */ lw	$v1, 0X154($s0)
/* 000233 0x809C42D4 04C0000B */ bltz	$a2, .L_809C4304
/* 000234 0x809C42D8 00C02825 */ move	$a1, $a2
/* 000235 0x809C42DC 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000236 0x809C42E0 AFA30068 */ sw	$v1, 0X68($sp)
/* 000237 0x809C42E4 10400007 */ beqz	$v0, .L_809C4304
/* 000238 0x809C42E8 8FA30068 */ lw	$v1, 0X68($sp)
/* 000239 0x809C42EC 3C19809C */ lui	$t9, %hi(func_809C464C)
/* 000240 0x809C42F0 24180064 */ li	$t8, 100
/* 000241 0x809C42F4 2739464C */ addiu	$t9, $t9, %lo(func_809C464C)
/* 000242 0x809C42F8 A6180150 */ sh	$t8, 0X150($s0)
/* 000243 0x809C42FC 100000A1 */ b	.L_809C4584
/* 000244 0x809C4300 AE190144 */ sw	$t9, 0X144($s0)
.L_809C4304:
/* 000245 0x809C4304 86080148 */ lh	$t0, 0X148($s0)
/* 000246 0x809C4308 24010001 */ li	$at, 1
/* 000247 0x809C430C 5501000E */ bnel	$t0, $at, .L_809C4348
/* 000248 0x809C4310 860C014E */ lh	$t4, 0X14E($s0)
/* 000249 0x809C4314 8E090154 */ lw	$t1, 0X154($s0)
/* 000250 0x809C4318 2401028F */ li	$at, 655
/* 000251 0x809C431C 852A0000 */ lh	$t2, 0X0($t1)
/* 000252 0x809C4320 15410004 */ bne	$t2, $at, .L_809C4334
/* 000253 0x809C4324 00000000 */ nop
/* 000254 0x809C4328 8C6B0138 */ lw	$t3, 0X138($v1)
/* 000255 0x809C432C 55600096 */ bnezl	$t3, .L_809C4588
/* 000256 0x809C4330 8FBF003C */ lw	$ra, 0X3C($sp)
.L_809C4334:
/* 000257 0x809C4334 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000258 0x809C4338 02002025 */ move	$a0, $s0
/* 000259 0x809C433C 10000092 */ b	.L_809C4588
/* 000260 0x809C4340 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000261 0x809C4344 860C014E */ lh	$t4, 0X14E($s0)
.L_809C4348:
/* 000262 0x809C4348 240D0064 */ li	$t5, 100
/* 000263 0x809C434C 3C0F809C */ lui	$t7, %hi(func_809C464C)
/* 000264 0x809C4350 29810002 */ slti	$at, $t4, 2
/* 000265 0x809C4354 14200005 */ bnez	$at, .L_809C436C
/* 000266 0x809C4358 3C0E801F */ lui	$t6, %hi(gSaveContext + 0xF4D)
/* 000267 0x809C435C 25EF464C */ addiu	$t7, $t7, %lo(func_809C464C)
/* 000268 0x809C4360 A60D0150 */ sh	$t5, 0X150($s0)
/* 000269 0x809C4364 10000087 */ b	.L_809C4584
/* 000270 0x809C4368 AE0F0144 */ sw	$t7, 0X144($s0)
.L_809C436C:
/* 000271 0x809C436C 91CE05BD */ lbu	$t6, %lo(gSaveContext + 0xF4D)($t6)
/* 000272 0x809C4370 31D80040 */ andi	$t8, $t6, 0X40
/* 000273 0x809C4374 57000084 */ bnezl	$t8, .L_809C4588
/* 000274 0x809C4378 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000275 0x809C437C 8619014C */ lh	$t9, 0X14C($s0)
/* 000276 0x809C4380 2B210002 */ slti	$at, $t9, 2
/* 000277 0x809C4384 1020007F */ beqz	$at, .L_809C4584
/* 000278 0x809C4388 3C014370 */ lui	$at, 0x4370
/* 000279 0x809C438C 44812000 */ mtc1	$at, $f4
/* 000280 0x809C4390 C6060098 */ lwc1	$f6, 0X98($s0)
/* 000281 0x809C4394 4606203C */ c.lt.s	$f4, $f6
/* 000282 0x809C4398 00000000 */ nop
/* 000283 0x809C439C 4503007A */ bc1tl .L_809C4588
/* 000284 0x809C43A0 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000285 0x809C43A4 0C03FB61 */ jal	Math_Sins
/* 000286 0x809C43A8 86040032 */ lh	$a0, 0X32($s0)
/* 000287 0x809C43AC 3C0141F0 */ lui	$at, 0x41F0
/* 000288 0x809C43B0 44814000 */ mtc1	$at, $f8
/* 000289 0x809C43B4 C6100024 */ lwc1	$f16, 0X24($s0)
/* 000290 0x809C43B8 8FA8006C */ lw	$t0, 0X6C($sp)
/* 000291 0x809C43BC 46080282 */ mul.s	$f10, $f0, $f8
/* 000292 0x809C43C0 3C0142F0 */ lui	$at, 0x42F0
/* 000293 0x809C43C4 44813000 */ mtc1	$at, $f6
/* 000294 0x809C43C8 46105480 */ add.s	$f18, $f10, $f16
/* 000295 0x809C43CC E7B2005C */ swc1	$f18, 0X5C($sp)
/* 000296 0x809C43D0 C5040088 */ lwc1	$f4, 0X88($t0)
/* 000297 0x809C43D4 46062200 */ add.s	$f8, $f4, $f6
/* 000298 0x809C43D8 E7A80060 */ swc1	$f8, 0X60($sp)
/* 000299 0x809C43DC 0C03FB51 */ jal	Math_Coss
/* 000300 0x809C43E0 86040032 */ lh	$a0, 0X32($s0)
/* 000301 0x809C43E4 3C0141F0 */ lui	$at, 0x41F0
/* 000302 0x809C43E8 44815000 */ mtc1	$at, $f10
/* 000303 0x809C43EC C612002C */ lwc1	$f18, 0X2C($s0)
/* 000304 0x809C43F0 8FA40074 */ lw	$a0, 0X74($sp)
/* 000305 0x809C43F4 460A0402 */ mul.s	$f16, $f0, $f10
/* 000306 0x809C43F8 27A9005C */ addiu	$t1, $sp, 92
/* 000307 0x809C43FC AFA90010 */ sw	$t1, 0X10($sp)
/* 000308 0x809C4400 27A50050 */ addiu	$a1, $sp, 80
/* 000309 0x809C4404 27A6004C */ addiu	$a2, $sp, 76
/* 000310 0x809C4408 02003825 */ move	$a3, $s0
/* 000311 0x809C440C 24840830 */ addiu	$a0, $a0, 2096
/* 000312 0x809C4410 46128100 */ add.s	$f4, $f16, $f18
/* 000313 0x809C4414 0C031047 */ jal	func_800C411C
/* 000314 0x809C4418 E7A40064 */ swc1	$f4, 0X64($sp)
/* 000315 0x809C441C 3C01C6FA */ lui	$at, 0xC6FA
/* 000316 0x809C4420 44816000 */ mtc1	$at, $f12
/* 000317 0x809C4424 46000386 */ mov.s	$f14, $f0
/* 000318 0x809C4428 8FAA006C */ lw	$t2, 0X6C($sp)
/* 000319 0x809C442C 460C003E */ c.le.s	$f0, $f12
/* 000320 0x809C4430 00000000 */ nop
/* 000321 0x809C4434 45030054 */ bc1tl .L_809C4588
/* 000322 0x809C4438 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000323 0x809C443C C542008C */ lwc1	$f2, 0X8C($t2)
/* 000324 0x809C4440 3C014400 */ lui	$at, 0x4400
/* 000325 0x809C4444 46026032 */ c.eq.s	$f12, $f2
/* 000326 0x809C4448 00000000 */ nop
/* 000327 0x809C444C 45030008 */ bc1tl .L_809C4470
/* 000328 0x809C4450 44816000 */ mtc1	$at, $f12
/* 000329 0x809C4454 C5460028 */ lwc1	$f6, 0X28($t2)
/* 000330 0x809C4458 46023201 */ sub.s	$f8, $f6, $f2
/* 000331 0x809C445C 4608003C */ c.lt.s	$f0, $f8
/* 000332 0x809C4460 00000000 */ nop
/* 000333 0x809C4464 45030048 */ bc1tl .L_809C4588
/* 000334 0x809C4468 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000335 0x809C446C 44816000 */ mtc1	$at, $f12
.L_809C4470:
/* 000336 0x809C4470 0C05E565 */ jal	randZeroOneScaled
/* 000337 0x809C4474 E7AE0060 */ swc1	$f14, 0X60($sp)
/* 000338 0x809C4478 4600028D */ trunc.w.s	$f10, $f0
/* 000339 0x809C447C 860D0032 */ lh	$t5, 0X32($s0)
/* 000340 0x809C4480 860F014C */ lh	$t7, 0X14C($s0)
/* 000341 0x809C4484 34018000 */ ori	$at, $zero, 0X8000
/* 000342 0x809C4488 440C5000 */ mfc1	$t4, $f10
/* 000343 0x809C448C 00000000 */ nop
/* 000344 0x809C4490 018D2021 */ addu	$a0, $t4, $t5
/* 000345 0x809C4494 24843800 */ addiu	$a0, $a0, 14336
/* 000346 0x809C4498 00042400 */ sll	$a0, $a0, 16
/* 000347 0x809C449C 11E00004 */ beqz	$t7, .L_809C44B0
/* 000348 0x809C44A0 00042403 */ sra	$a0, $a0, 16
/* 000349 0x809C44A4 00812021 */ addu	$a0, $a0, $at
/* 000350 0x809C44A8 00042400 */ sll	$a0, $a0, 16
/* 000351 0x809C44AC 00042403 */ sra	$a0, $a0, 16
.L_809C44B0:
/* 000352 0x809C44B0 3C014220 */ lui	$at, 0x4220
/* 000353 0x809C44B4 44816000 */ mtc1	$at, $f12
/* 000354 0x809C44B8 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000355 0x809C44BC A7A40056 */ sh	$a0, 0X56($sp)
/* 000356 0x809C44C0 87A40056 */ lh	$a0, 0X56($sp)
/* 000357 0x809C44C4 0C03FB61 */ jal	Math_Sins
/* 000358 0x809C44C8 E7A00044 */ swc1	$f0, 0X44($sp)
/* 000359 0x809C44CC 3C014220 */ lui	$at, 0x4220
/* 000360 0x809C44D0 44816000 */ mtc1	$at, $f12
/* 000361 0x809C44D4 C7B20044 */ lwc1	$f18, 0X44($sp)
/* 000362 0x809C44D8 C7B0005C */ lwc1	$f16, 0X5C($sp)
/* 000363 0x809C44DC 46126100 */ add.s	$f4, $f12, $f18
/* 000364 0x809C44E0 46040182 */ mul.s	$f6, $f0, $f4
/* 000365 0x809C44E4 46068200 */ add.s	$f8, $f16, $f6
/* 000366 0x809C44E8 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000367 0x809C44EC E7A8005C */ swc1	$f8, 0X5C($sp)
/* 000368 0x809C44F0 87A40056 */ lh	$a0, 0X56($sp)
/* 000369 0x809C44F4 0C03FB51 */ jal	Math_Coss
/* 000370 0x809C44F8 E7A00044 */ swc1	$f0, 0X44($sp)
/* 000371 0x809C44FC 3C014220 */ lui	$at, 0x4220
/* 000372 0x809C4500 44815000 */ mtc1	$at, $f10
/* 000373 0x809C4504 C7B20044 */ lwc1	$f18, 0X44($sp)
/* 000374 0x809C4508 C7A20064 */ lwc1	$f2, 0X64($sp)
/* 000375 0x809C450C 8FA60074 */ lw	$a2, 0X74($sp)
/* 000376 0x809C4510 46125100 */ add.s	$f4, $f10, $f18
/* 000377 0x809C4514 C7A6005C */ lwc1	$f6, 0X5C($sp)
/* 000378 0x809C4518 C7A80060 */ lwc1	$f8, 0X60($sp)
/* 000379 0x809C451C 02002825 */ move	$a1, $s0
/* 000380 0x809C4520 46040402 */ mul.s	$f16, $f0, $f4
/* 000381 0x809C4524 240700ED */ li	$a3, 237
/* 000382 0x809C4528 AFA0001C */ sw	$zero, 0X1C($sp)
/* 000383 0x809C452C AFA00020 */ sw	$zero, 0X20($sp)
/* 000384 0x809C4530 AFA00024 */ sw	$zero, 0X24($sp)
/* 000385 0x809C4534 AFA00028 */ sw	$zero, 0X28($sp)
/* 000386 0x809C4538 24C41CA0 */ addiu	$a0, $a2, 7328
/* 000387 0x809C453C 46101080 */ add.s	$f2, $f2, $f16
/* 000388 0x809C4540 E7A60010 */ swc1	$f6, 0X10($sp)
/* 000389 0x809C4544 E7A80014 */ swc1	$f8, 0X14($sp)
/* 000390 0x809C4548 E7A20018 */ swc1	$f2, 0X18($sp)
/* 000391 0x809C454C 0C02EC30 */ jal	Actor_SpawnWithParent
/* 000392 0x809C4550 E7A20064 */ swc1	$f2, 0X64($sp)
/* 000393 0x809C4554 5040000C */ beqzl	$v0, .L_809C4588
/* 000394 0x809C4558 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000395 0x809C455C 8618014C */ lh	$t8, 0X14C($s0)
/* 000396 0x809C4560 3C09809C */ lui	$t1, %hi(func_809C4598)
/* 000397 0x809C4564 25294598 */ addiu	$t1, $t1, %lo(func_809C4598)
/* 000398 0x809C4568 27190001 */ addiu	$t9, $t8, 1
/* 000399 0x809C456C A619014C */ sh	$t9, 0X14C($s0)
/* 000400 0x809C4570 8608014C */ lh	$t0, 0X14C($s0)
/* 000401 0x809C4574 29010002 */ slti	$at, $t0, 2
/* 000402 0x809C4578 54200003 */ bnezl	$at, .L_809C4588
/* 000403 0x809C457C 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000404 0x809C4580 AE090144 */ sw	$t1, 0X144($s0)
.L_809C4584:
/* 000405 0x809C4584 8FBF003C */ lw	$ra, 0X3C($sp)
.L_809C4588:
/* 000406 0x809C4588 8FB00038 */ lw	$s0, 0X38($sp)
/* 000407 0x809C458C 27BD0070 */ addiu	$sp, $sp, 112
/* 000408 0x809C4590 03E00008 */ jr	$ra
/* 000409 0x809C4594 00000000 */ nop

glabel func_809C4598
/* 000410 0x809C4598 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000411 0x809C459C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000412 0x809C45A0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000413 0x809C45A4 00803825 */ move	$a3, $a0
/* 000414 0x809C45A8 84E6014A */ lh	$a2, 0X14A($a3)
/* 000415 0x809C45AC 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000416 0x809C45B0 04C0000B */ bltz	$a2, .L_809C45E0
/* 000417 0x809C45B4 00C02825 */ move	$a1, $a2
/* 000418 0x809C45B8 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000419 0x809C45BC AFA70018 */ sw	$a3, 0X18($sp)
/* 000420 0x809C45C0 10400007 */ beqz	$v0, .L_809C45E0
/* 000421 0x809C45C4 8FA70018 */ lw	$a3, 0X18($sp)
/* 000422 0x809C45C8 3C0F809C */ lui	$t7, %hi(func_809C464C)
/* 000423 0x809C45CC 240E0064 */ li	$t6, 100
/* 000424 0x809C45D0 25EF464C */ addiu	$t7, $t7, %lo(func_809C464C)
/* 000425 0x809C45D4 A4EE0150 */ sh	$t6, 0X150($a3)
/* 000426 0x809C45D8 10000018 */ b	.L_809C463C
/* 000427 0x809C45DC ACEF0144 */ sw	$t7, 0X144($a3)
.L_809C45E0:
/* 000428 0x809C45E0 84F8014E */ lh	$t8, 0X14E($a3)
/* 000429 0x809C45E4 2B010002 */ slti	$at, $t8, 2
/* 000430 0x809C45E8 5420000F */ bnezl	$at, .L_809C4628
/* 000431 0x809C45EC 84E9014C */ lh	$t1, 0X14C($a3)
/* 000432 0x809C45F0 84E6014A */ lh	$a2, 0X14A($a3)
/* 000433 0x809C45F4 24190064 */ li	$t9, 100
/* 000434 0x809C45F8 A4F90150 */ sh	$t9, 0X150($a3)
/* 000435 0x809C45FC 04C00005 */ bltz	$a2, .L_809C4614
/* 000436 0x809C4600 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000437 0x809C4604 00C02825 */ move	$a1, $a2
/* 000438 0x809C4608 0C02D6FD */ jal	Actor_SetSwitchFlag
/* 000439 0x809C460C AFA70018 */ sw	$a3, 0X18($sp)
/* 000440 0x809C4610 8FA70018 */ lw	$a3, 0X18($sp)
.L_809C4614:
/* 000441 0x809C4614 3C08809C */ lui	$t0, %hi(func_809C464C)
/* 000442 0x809C4618 2508464C */ addiu	$t0, $t0, %lo(func_809C464C)
/* 000443 0x809C461C 10000007 */ b	.L_809C463C
/* 000444 0x809C4620 ACE80144 */ sw	$t0, 0X144($a3)
/* 000445 0x809C4624 84E9014C */ lh	$t1, 0X14C($a3)
.L_809C4628:
/* 000446 0x809C4628 3C0A809C */ lui	$t2, %hi(func_809C42A8)
/* 000447 0x809C462C 254A42A8 */ addiu	$t2, $t2, %lo(func_809C42A8)
/* 000448 0x809C4630 55200003 */ bnezl	$t1, .L_809C4640
/* 000449 0x809C4634 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000450 0x809C4638 ACEA0144 */ sw	$t2, 0X144($a3)
.L_809C463C:
/* 000451 0x809C463C 8FBF0014 */ lw	$ra, 0X14($sp)
.L_809C4640:
/* 000452 0x809C4640 27BD0018 */ addiu	$sp, $sp, 24
/* 000453 0x809C4644 03E00008 */ jr	$ra
/* 000454 0x809C4648 00000000 */ nop

glabel func_809C464C
/* 000455 0x809C464C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000456 0x809C4650 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000457 0x809C4654 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000458 0x809C4658 848E0150 */ lh	$t6, 0X150($a0)
/* 000459 0x809C465C 55C00004 */ bnezl	$t6, .L_809C4670
/* 000460 0x809C4660 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000461 0x809C4664 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000462 0x809C4668 00000000 */ nop
/* 000463 0x809C466C 8FBF0014 */ lw	$ra, 0X14($sp)
.L_809C4670:
/* 000464 0x809C4670 27BD0018 */ addiu	$sp, $sp, 24
/* 000465 0x809C4674 03E00008 */ jr	$ra
/* 000466 0x809C4678 00000000 */ nop

glabel EnEncount4_Update
/* 000467 0x809C467C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000468 0x809C4680 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000469 0x809C4684 84820150 */ lh	$v0, 0X150($a0)
/* 000470 0x809C4688 10400002 */ beqz	$v0, .L_809C4694
/* 000471 0x809C468C 244EFFFF */ addiu	$t6, $v0, -1
/* 000472 0x809C4690 A48E0150 */ sh	$t6, 0X150($a0)
.L_809C4694:
/* 000473 0x809C4694 8C990144 */ lw	$t9, 0X144($a0)
/* 000474 0x809C4698 0320F809 */ jalr	$t9
/* 000475 0x809C469C 00000000 */ nop
/* 000476 0x809C46A0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000477 0x809C46A4 27BD0018 */ addiu	$sp, $sp, 24
/* 000478 0x809C46A8 03E00008 */ jr	$ra
/* 000479 0x809C46AC 00000000 */ nop
