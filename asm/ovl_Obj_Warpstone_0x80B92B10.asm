.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80B92B10
/* 000000 0x80B92B10 AC8501AC */ sw	$a1, 0X1AC($a0)
/* 000001 0x80B92B14 03E00008 */ jr	$ra
/* 000002 0x80B92B18 00000000 */ nop

glabel ObjWarpstone_Init
/* 000003 0x80B92B1C 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000004 0x80B92B20 AFB00018 */ sw	$s0, 0X18($sp)
/* 000005 0x80B92B24 00808025 */ move	$s0, $a0
/* 000006 0x80B92B28 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000007 0x80B92B2C AFA50024 */ sw	$a1, 0X24($sp)
/* 000008 0x80B92B30 3C0580B9 */ lui	$a1, %hi(D_80B9324C)
/* 000009 0x80B92B34 24A5324C */ addiu	$a1, $a1, %lo(D_80B9324C)
/* 000010 0x80B92B38 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000011 0x80B92B3C 02002025 */ move	$a0, $s0
/* 000012 0x80B92B40 3C0780B9 */ lui	$a3, %hi(D_80B93220)
/* 000013 0x80B92B44 24E73220 */ addiu	$a3, $a3, %lo(D_80B93220)
/* 000014 0x80B92B48 8FA40024 */ lw	$a0, 0X24($sp)
/* 000015 0x80B92B4C 2605015C */ addiu	$a1, $s0, 348
/* 000016 0x80B92B50 0C0384DD */ jal	Collision_InitCylinder
/* 000017 0x80B92B54 02003025 */ move	$a2, $s0
/* 000018 0x80B92B58 02002025 */ move	$a0, $s0
/* 000019 0x80B92B5C 0C02D9D7 */ jal	Actor_SetHeight
/* 000020 0x80B92B60 3C054220 */ lui	$a1, 0x4220
/* 000021 0x80B92B64 860F001C */ lh	$t7, 0X1C($s0)
/* 000022 0x80B92B68 3C08801C */ lui	$t0, %hi(gBitFlags + 0x2)
/* 000023 0x80B92B6C 3C02801F */ lui	$v0, %hi(gSaveContext + 0x46)
/* 000024 0x80B92B70 31F8000F */ andi	$t8, $t7, 0XF
/* 000025 0x80B92B74 0018C880 */ sll	$t9, $t8, 2
/* 000026 0x80B92B78 01194021 */ addu	$t0, $t0, $t9
/* 000027 0x80B92B7C 95081D32 */ lhu	$t0, %lo(gBitFlags + 0x2)($t0)
/* 000028 0x80B92B80 9442F6B6 */ lhu	$v0, %lo(gSaveContext + 0x46)($v0)
/* 000029 0x80B92B84 02002025 */ move	$a0, $s0
/* 000030 0x80B92B88 3C0580B9 */ lui	$a1, %hi(func_80B92DC4)
/* 000031 0x80B92B8C 01024824 */ and	$t1, $t0, $v0
/* 000032 0x80B92B90 15200007 */ bnez	$t1, .L_80B92BB0
/* 000033 0x80B92B94 00000000 */ nop
/* 000034 0x80B92B98 3C0580B9 */ lui	$a1, %hi(func_80B92C00)
/* 000035 0x80B92B9C 24A52C00 */ addiu	$a1, $a1, %lo(func_80B92C00)
/* 000036 0x80B92BA0 0C2E4AC4 */ jal	func_80B92B10
/* 000037 0x80B92BA4 02002025 */ move	$a0, $s0
/* 000038 0x80B92BA8 10000006 */ b	.L_80B92BC4
/* 000039 0x80B92BAC 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80B92BB0:
/* 000040 0x80B92BB0 0C2E4AC4 */ jal	func_80B92B10
/* 000041 0x80B92BB4 24A52DC4 */ addiu	$a1, $a1, %lo(func_80B92DC4)
/* 000042 0x80B92BB8 240A0001 */ li	$t2, 1
/* 000043 0x80B92BBC A20A01AA */ sb	$t2, 0X1AA($s0)
/* 000044 0x80B92BC0 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80B92BC4:
/* 000045 0x80B92BC4 8FB00018 */ lw	$s0, 0X18($sp)
/* 000046 0x80B92BC8 27BD0020 */ addiu	$sp, $sp, 32
/* 000047 0x80B92BCC 03E00008 */ jr	$ra
/* 000048 0x80B92BD0 00000000 */ nop

glabel ObjWarpstone_Destroy
/* 000049 0x80B92BD4 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000050 0x80B92BD8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000051 0x80B92BDC 00803025 */ move	$a2, $a0
/* 000052 0x80B92BE0 00A03825 */ move	$a3, $a1
/* 000053 0x80B92BE4 00E02025 */ move	$a0, $a3
/* 000054 0x80B92BE8 0C03847B */ jal	Collision_FiniCylinder
/* 000055 0x80B92BEC 24C5015C */ addiu	$a1, $a2, 348
/* 000056 0x80B92BF0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000057 0x80B92BF4 27BD0018 */ addiu	$sp, $sp, 24
/* 000058 0x80B92BF8 03E00008 */ jr	$ra
/* 000059 0x80B92BFC 00000000 */ nop

glabel func_80B92C00
/* 000060 0x80B92C00 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000061 0x80B92C04 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000062 0x80B92C08 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000063 0x80B92C0C 908E016D */ lbu	$t6, 0X16D($a0)
/* 000064 0x80B92C10 3C0580B9 */ lui	$a1, %hi(func_80B92C48)
/* 000065 0x80B92C14 24180C00 */ li	$t8, 3072
/* 000066 0x80B92C18 31CF0002 */ andi	$t7, $t6, 0X2
/* 000067 0x80B92C1C 11E00005 */ beqz	$t7, .L_80B92C34
/* 000068 0x80B92C20 00001025 */ move	$v0, $zero
/* 000069 0x80B92C24 0C2E4AC4 */ jal	func_80B92B10
/* 000070 0x80B92C28 24A52C48 */ addiu	$a1, $a1, %lo(func_80B92C48)
/* 000071 0x80B92C2C 10000002 */ b	.L_80B92C38
/* 000072 0x80B92C30 24020001 */ li	$v0, 1
.L_80B92C34:
/* 000073 0x80B92C34 A4980116 */ sh	$t8, 0X116($a0)
.L_80B92C38:
/* 000074 0x80B92C38 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000075 0x80B92C3C 27BD0018 */ addiu	$sp, $sp, 24
/* 000076 0x80B92C40 03E00008 */ jr	$ra
/* 000077 0x80B92C44 00000000 */ nop

glabel func_80B92C48
/* 000078 0x80B92C48 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000079 0x80B92C4C AFB00018 */ sw	$s0, 0X18($sp)
/* 000080 0x80B92C50 00808025 */ move	$s0, $a0
/* 000081 0x80B92C54 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000082 0x80B92C58 AFA50024 */ sw	$a1, 0X24($sp)
/* 000083 0x80B92C5C 82060038 */ lb	$a2, 0X38($s0)
/* 000084 0x80B92C60 04C00006 */ bltz	$a2, .L_80B92C7C
/* 000085 0x80B92C64 00062400 */ sll	$a0, $a2, 16
/* 000086 0x80B92C68 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000087 0x80B92C6C 00042403 */ sra	$a0, $a0, 16
/* 000088 0x80B92C70 1040000F */ beqz	$v0, .L_80B92CB0
/* 000089 0x80B92C74 00000000 */ nop
/* 000090 0x80B92C78 82060038 */ lb	$a2, 0X38($s0)
.L_80B92C7C:
/* 000091 0x80B92C7C 00062400 */ sll	$a0, $a2, 16
/* 000092 0x80B92C80 00042403 */ sra	$a0, $a0, 16
/* 000093 0x80B92C84 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000094 0x80B92C88 02002825 */ move	$a1, $s0
/* 000095 0x80B92C8C 3C0580B9 */ lui	$a1, %hi(func_80B92CD0)
/* 000096 0x80B92C90 24A52CD0 */ addiu	$a1, $a1, %lo(func_80B92CD0)
/* 000097 0x80B92C94 0C2E4AC4 */ jal	func_80B92B10
/* 000098 0x80B92C98 02002025 */ move	$a0, $s0
/* 000099 0x80B92C9C 02002025 */ move	$a0, $s0
/* 000100 0x80B92CA0 0C02E3B2 */ jal	func_800B8EC8
/* 000101 0x80B92CA4 24052967 */ li	$a1, 10599
/* 000102 0x80B92CA8 10000004 */ b	.L_80B92CBC
/* 000103 0x80B92CAC 24020001 */ li	$v0, 1
.L_80B92CB0:
/* 000104 0x80B92CB0 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000105 0x80B92CB4 82040038 */ lb	$a0, 0X38($s0)
/* 000106 0x80B92CB8 24020001 */ li	$v0, 1
.L_80B92CBC:
/* 000107 0x80B92CBC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000108 0x80B92CC0 8FB00018 */ lw	$s0, 0X18($sp)
/* 000109 0x80B92CC4 27BD0020 */ addiu	$sp, $sp, 32
/* 000110 0x80B92CC8 03E00008 */ jr	$ra
/* 000111 0x80B92CCC 00000000 */ nop

glabel func_80B92CD0
/* 000112 0x80B92CD0 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000113 0x80B92CD4 AFB00018 */ sw	$s0, 0X18($sp)
/* 000114 0x80B92CD8 00808025 */ move	$s0, $a0
/* 000115 0x80B92CDC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000116 0x80B92CE0 AFA50024 */ sw	$a1, 0X24($sp)
/* 000117 0x80B92CE4 920201A9 */ lbu	$v0, 0X1A9($s0)
/* 000118 0x80B92CE8 28430042 */ slti	$v1, $v0, 66
/* 000119 0x80B92CEC 38630001 */ xori	$v1, $v1, 0X1
/* 000120 0x80B92CF0 244E0001 */ addiu	$t6, $v0, 1
/* 000121 0x80B92CF4 1060000D */ beqz	$v1, .L_80B92D2C
/* 000122 0x80B92CF8 A20E01A9 */ sb	$t6, 0X1A9($s0)
/* 000123 0x80B92CFC 0C03C7EF */ jal	ActorCutscene_Stop
/* 000124 0x80B92D00 82040038 */ lb	$a0, 0X38($s0)
/* 000125 0x80B92D04 8604001C */ lh	$a0, 0X1C($s0)
/* 000126 0x80B92D08 3084000F */ andi	$a0, $a0, 0XF
/* 000127 0x80B92D0C 0C050E84 */ jal	func_80143A10
/* 000128 0x80B92D10 308400FF */ andi	$a0, $a0, 0XFF
/* 000129 0x80B92D14 3C0580B9 */ lui	$a1, %hi(func_80B92DC4)
/* 000130 0x80B92D18 24A52DC4 */ addiu	$a1, $a1, %lo(func_80B92DC4)
/* 000131 0x80B92D1C 0C2E4AC4 */ jal	func_80B92B10
/* 000132 0x80B92D20 02002025 */ move	$a0, $s0
/* 000133 0x80B92D24 10000022 */ b	.L_80B92DB0
/* 000134 0x80B92D28 24020001 */ li	$v0, 1
.L_80B92D2C:
/* 000135 0x80B92D2C 920F01A9 */ lbu	$t7, 0X1A9($s0)
/* 000136 0x80B92D30 26040064 */ addiu	$a0, $s0, 100
/* 000137 0x80B92D34 3C0541A0 */ lui	$a1, 0x41A0
/* 000138 0x80B92D38 29E10019 */ slti	$at, $t7, 25
/* 000139 0x80B92D3C 1020000D */ beqz	$at, .L_80B92D74
/* 000140 0x80B92D40 3C063C23 */ lui	$a2, 0x3C23
/* 000141 0x80B92D44 3C053C23 */ lui	$a1, 0x3C23
/* 000142 0x80B92D48 3C063A83 */ lui	$a2, 0x3A83
/* 000143 0x80B92D4C 34C6126F */ ori	$a2, $a2, 0X126F
/* 000144 0x80B92D50 34A5D70A */ ori	$a1, $a1, 0XD70A
/* 000145 0x80B92D54 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000146 0x80B92D58 26040064 */ addiu	$a0, $s0, 100
/* 000147 0x80B92D5C 26040014 */ addiu	$a0, $s0, 20
/* 000148 0x80B92D60 240500FF */ li	$a1, 255
/* 000149 0x80B92D64 0C03FBCB */ jal	Lib_StepTowardsCheck_s
/* 000150 0x80B92D68 24060012 */ li	$a2, 18
/* 000151 0x80B92D6C 10000010 */ b	.L_80B92DB0
/* 000152 0x80B92D70 24020001 */ li	$v0, 1
.L_80B92D74:
/* 000153 0x80B92D74 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000154 0x80B92D78 34C6D70A */ ori	$a2, $a2, 0XD70A
/* 000155 0x80B92D7C 3C0180B9 */ lui	$at, %hi(D_80B93260)
/* 000156 0x80B92D80 C4243260 */ lwc1	$f4, %lo(D_80B93260)($at)
/* 000157 0x80B92D84 C6060064 */ lwc1	$f6, 0X64($s0)
/* 000158 0x80B92D88 24180001 */ li	$t8, 1
/* 000159 0x80B92D8C 26040014 */ addiu	$a0, $s0, 20
/* 000160 0x80B92D90 4606203C */ c.lt.s	$f4, $f6
/* 000161 0x80B92D94 00002825 */ move	$a1, $zero
/* 000162 0x80B92D98 24060014 */ li	$a2, 20
/* 000163 0x80B92D9C 45020004 */ bc1fl .L_80B92DB0
/* 000164 0x80B92DA0 24020001 */ li	$v0, 1
/* 000165 0x80B92DA4 0C03FBCB */ jal	Lib_StepTowardsCheck_s
/* 000166 0x80B92DA8 A21801AA */ sb	$t8, 0X1AA($s0)
/* 000167 0x80B92DAC 24020001 */ li	$v0, 1
.L_80B92DB0:
/* 000168 0x80B92DB0 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000169 0x80B92DB4 8FB00018 */ lw	$s0, 0X18($sp)
/* 000170 0x80B92DB8 27BD0020 */ addiu	$sp, $sp, 32
/* 000171 0x80B92DBC 03E00008 */ jr	$ra
/* 000172 0x80B92DC0 00000000 */ nop

glabel func_80B92DC4
/* 000173 0x80B92DC4 AFA50004 */ sw	$a1, 0X4($sp)
/* 000174 0x80B92DC8 240E0C01 */ li	$t6, 3073
/* 000175 0x80B92DCC A48E0116 */ sh	$t6, 0X116($a0)
/* 000176 0x80B92DD0 00001025 */ move	$v0, $zero
/* 000177 0x80B92DD4 03E00008 */ jr	$ra
/* 000178 0x80B92DD8 00000000 */ nop

glabel ObjWarpstone_Update
/* 000179 0x80B92DDC 27BDFFD0 */ addiu	$sp, $sp, -48
/* 000180 0x80B92DE0 AFB10018 */ sw	$s1, 0X18($sp)
/* 000181 0x80B92DE4 AFB00014 */ sw	$s0, 0X14($sp)
/* 000182 0x80B92DE8 00A08025 */ move	$s0, $a1
/* 000183 0x80B92DEC 00808825 */ move	$s1, $a0
/* 000184 0x80B92DF0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000185 0x80B92DF4 922E01A8 */ lbu	$t6, 0X1A8($s1)
/* 000186 0x80B92DF8 02002825 */ move	$a1, $s0
/* 000187 0x80B92DFC 02202025 */ move	$a0, $s1
/* 000188 0x80B92E00 11C00029 */ beqz	$t6, .L_80B92EA8
/* 000189 0x80B92E04 00000000 */ nop
/* 000190 0x80B92E08 0C02E19F */ jal	func_800B867C
/* 000191 0x80B92E0C 02202025 */ move	$a0, $s1
/* 000192 0x80B92E10 10400003 */ beqz	$v0, .L_80B92E20
/* 000193 0x80B92E14 00000000 */ nop
/* 000194 0x80B92E18 10000032 */ b	.L_80B92EE4
/* 000195 0x80B92E1C A22001A8 */ sb	$zero, 0X1A8($s1)
.L_80B92E20:
/* 000196 0x80B92E20 0C054926 */ jal	func_80152498
/* 000197 0x80B92E24 26044908 */ addiu	$a0, $s0, 18696
/* 000198 0x80B92E28 24010004 */ li	$at, 4
/* 000199 0x80B92E2C 5441002E */ bnel	$v0, $at, .L_80B92EE8
/* 000200 0x80B92E30 2625015C */ addiu	$a1, $s1, 348
/* 000201 0x80B92E34 0C051D89 */ jal	func_80147624
/* 000202 0x80B92E38 02002025 */ move	$a0, $s0
/* 000203 0x80B92E3C 10400029 */ beqz	$v0, .L_80B92EE4
/* 000204 0x80B92E40 3C0F0001 */ lui	$t7, 0x0001
/* 000205 0x80B92E44 01F07821 */ addu	$t7, $t7, $s0
/* 000206 0x80B92E48 91EF6929 */ lbu	$t7, 0X6929($t7)
/* 000207 0x80B92E4C 11E00012 */ beqz	$t7, .L_80B92E98
/* 000208 0x80B92E50 00000000 */ nop
/* 000209 0x80B92E54 0C067C82 */ jal	func_8019F208
/* 000210 0x80B92E58 00000000 */ nop
/* 000211 0x80B92E5C 3C010001 */ lui	$at, 0x0001
/* 000212 0x80B92E60 00300821 */ addu	$at, $at, $s0
/* 000213 0x80B92E64 2418004D */ li	$t8, 77
/* 000214 0x80B92E68 A038682A */ sb	$t8, 0X682A($at)
/* 000215 0x80B92E6C 3C010001 */ lui	$at, 0x0001
/* 000216 0x80B92E70 00300821 */ addu	$at, $at, $s0
/* 000217 0x80B92E74 A42069DE */ sh	$zero, 0X69DE($at)
/* 000218 0x80B92E78 3C010001 */ lui	$at, 0x0001
/* 000219 0x80B92E7C 00300821 */ addu	$at, $at, $s0
/* 000220 0x80B92E80 A42069DC */ sh	$zero, 0X69DC($at)
/* 000221 0x80B92E84 8639001C */ lh	$t9, 0X1C($s1)
/* 000222 0x80B92E88 3C01801F */ lui	$at, %hi(gSaveContext + 0xE)
/* 000223 0x80B92E8C 3328000F */ andi	$t0, $t9, 0XF
/* 000224 0x80B92E90 10000014 */ b	.L_80B92EE4
/* 000225 0x80B92E94 A428F67E */ sh	$t0, %lo(gSaveContext + 0xE)($at)
.L_80B92E98:
/* 000226 0x80B92E98 0C051DED */ jal	func_801477B4
/* 000227 0x80B92E9C 02002025 */ move	$a0, $s0
/* 000228 0x80B92EA0 10000011 */ b	.L_80B92EE8
/* 000229 0x80B92EA4 2625015C */ addiu	$a1, $s1, 348
.L_80B92EA8:
/* 000230 0x80B92EA8 0C02E134 */ jal	func_800B84D0
/* 000231 0x80B92EAC 02002825 */ move	$a1, $s0
/* 000232 0x80B92EB0 10400003 */ beqz	$v0, .L_80B92EC0
/* 000233 0x80B92EB4 24090001 */ li	$t1, 1
/* 000234 0x80B92EB8 1000000A */ b	.L_80B92EE4
/* 000235 0x80B92EBC A22901A8 */ sb	$t1, 0X1A8($s1)
.L_80B92EC0:
/* 000236 0x80B92EC0 8E3901AC */ lw	$t9, 0X1AC($s1)
/* 000237 0x80B92EC4 02202025 */ move	$a0, $s1
/* 000238 0x80B92EC8 02002825 */ move	$a1, $s0
/* 000239 0x80B92ECC 0320F809 */ jalr	$t9
/* 000240 0x80B92ED0 00000000 */ nop
/* 000241 0x80B92ED4 14400003 */ bnez	$v0, .L_80B92EE4
/* 000242 0x80B92ED8 02202025 */ move	$a0, $s1
/* 000243 0x80B92EDC 0C02E18F */ jal	func_800B863C
/* 000244 0x80B92EE0 02002825 */ move	$a1, $s0
.L_80B92EE4:
/* 000245 0x80B92EE4 2625015C */ addiu	$a1, $s1, 348
.L_80B92EE8:
/* 000246 0x80B92EE8 AFA50020 */ sw	$a1, 0X20($sp)
/* 000247 0x80B92EEC 0C038500 */ jal	Collision_ResetCylinderForAC
/* 000248 0x80B92EF0 02002025 */ move	$a0, $s0
/* 000249 0x80B92EF4 02202025 */ move	$a0, $s1
/* 000250 0x80B92EF8 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000251 0x80B92EFC 8FA50020 */ lw	$a1, 0X20($sp)
/* 000252 0x80B92F00 3C010001 */ lui	$at, 0x0001
/* 000253 0x80B92F04 34218884 */ ori	$at, $at, 0X8884
/* 000254 0x80B92F08 02012821 */ addu	$a1, $s0, $at
/* 000255 0x80B92F0C AFA50024 */ sw	$a1, 0X24($sp)
/* 000256 0x80B92F10 02002025 */ move	$a0, $s0
/* 000257 0x80B92F14 0C038A4A */ jal	Collision_AddOT
/* 000258 0x80B92F18 8FA60020 */ lw	$a2, 0X20($sp)
/* 000259 0x80B92F1C 8FA50024 */ lw	$a1, 0X24($sp)
/* 000260 0x80B92F20 02002025 */ move	$a0, $s0
/* 000261 0x80B92F24 0C0389D0 */ jal	Collision_AddAC
/* 000262 0x80B92F28 8FA60020 */ lw	$a2, 0X20($sp)
/* 000263 0x80B92F2C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000264 0x80B92F30 8FB00014 */ lw	$s0, 0X14($sp)
/* 000265 0x80B92F34 8FB10018 */ lw	$s1, 0X18($sp)
/* 000266 0x80B92F38 03E00008 */ jr	$ra
/* 000267 0x80B92F3C 27BD0030 */ addiu	$sp, $sp, 48

glabel ObjWarpstone_Draw
/* 000268 0x80B92F40 27BDFFA8 */ addiu	$sp, $sp, -88
/* 000269 0x80B92F44 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000270 0x80B92F48 AFB00018 */ sw	$s0, 0X18($sp)
/* 000271 0x80B92F4C AFA40058 */ sw	$a0, 0X58($sp)
/* 000272 0x80B92F50 AFA5005C */ sw	$a1, 0X5C($sp)
/* 000273 0x80B92F54 8FAE0058 */ lw	$t6, 0X58($sp)
/* 000274 0x80B92F58 3C0580B9 */ lui	$a1, %hi(D_80B93250)
/* 000275 0x80B92F5C 8FA4005C */ lw	$a0, 0X5C($sp)
/* 000276 0x80B92F60 91CF01AA */ lbu	$t7, 0X1AA($t6)
/* 000277 0x80B92F64 000FC080 */ sll	$t8, $t7, 2
/* 000278 0x80B92F68 00B82821 */ addu	$a1, $a1, $t8
/* 000279 0x80B92F6C 0C02F7F0 */ jal	func_800BDFC0
/* 000280 0x80B92F70 8CA53250 */ lw	$a1, %lo(D_80B93250)($a1)
/* 000281 0x80B92F74 8FB90058 */ lw	$t9, 0X58($sp)
/* 000282 0x80B92F78 8FA9005C */ lw	$t1, 0X5C($sp)
/* 000283 0x80B92F7C 87280014 */ lh	$t0, 0X14($t9)
/* 000284 0x80B92F80 5100009B */ beqzl	$t0, .L_80B931F0
/* 000285 0x80B92F84 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000286 0x80B92F88 8D240000 */ lw	$a0, 0X0($t1)
/* 000287 0x80B92F8C 0C04B0B7 */ jal	func_8012C2DC
/* 000288 0x80B92F90 00808025 */ move	$s0, $a0
/* 000289 0x80B92F94 8FA20058 */ lw	$v0, 0X58($sp)
/* 000290 0x80B92F98 3C014208 */ lui	$at, 0x4208
/* 000291 0x80B92F9C 44813000 */ mtc1	$at, $f6
/* 000292 0x80B92FA0 C4440028 */ lwc1	$f4, 0X28($v0)
/* 000293 0x80B92FA4 00003825 */ move	$a3, $zero
/* 000294 0x80B92FA8 C44C0024 */ lwc1	$f12, 0X24($v0)
/* 000295 0x80B92FAC 8C46002C */ lw	$a2, 0X2C($v0)
/* 000296 0x80B92FB0 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000297 0x80B92FB4 46062380 */ add.s	$f14, $f4, $f6
/* 000298 0x80B92FB8 8FA4005C */ lw	$a0, 0X5C($sp)
/* 000299 0x80B92FBC 3C010001 */ lui	$at, 0x0001
/* 000300 0x80B92FC0 342187FC */ ori	$at, $at, 0X87FC
/* 000301 0x80B92FC4 24050001 */ li	$a1, 1
/* 000302 0x80B92FC8 0C060091 */ jal	SysMatrix_InsertMatrix
/* 000303 0x80B92FCC 00812021 */ addu	$a0, $a0, $at
/* 000304 0x80B92FD0 44806000 */ mtc1	$zero, $f12
/* 000305 0x80B92FD4 3C0641F0 */ lui	$a2, 0x41F0
/* 000306 0x80B92FD8 24070001 */ li	$a3, 1
/* 000307 0x80B92FDC 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000308 0x80B92FE0 46006386 */ mov.s	$f14, $f12
/* 000309 0x80B92FE4 8FAA0058 */ lw	$t2, 0X58($sp)
/* 000310 0x80B92FE8 24070001 */ li	$a3, 1
/* 000311 0x80B92FEC C54C0064 */ lwc1	$f12, 0X64($t2)
/* 000312 0x80B92FF0 44066000 */ mfc1	$a2, $f12
/* 000313 0x80B92FF4 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000314 0x80B92FF8 46006386 */ mov.s	$f14, $f12
/* 000315 0x80B92FFC 0C060067 */ jal	SysMatrix_StatePush
/* 000316 0x80B93000 00000000 */ nop
/* 000317 0x80B93004 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000318 0x80B93008 3C0CE700 */ lui	$t4, 0xE700
/* 000319 0x80B9300C 3C0AFB00 */ lui	$t2, 0xFB00
/* 000320 0x80B93010 244B0008 */ addiu	$t3, $v0, 8
/* 000321 0x80B93014 AE0B02C0 */ sw	$t3, 0X2C0($s0)
/* 000322 0x80B93018 AC400004 */ sw	$zero, 0X4($v0)
/* 000323 0x80B9301C AC4C0000 */ sw	$t4, 0X0($v0)
/* 000324 0x80B93020 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000325 0x80B93024 3C0EFA00 */ lui	$t6, 0xFA00
/* 000326 0x80B93028 35CE8080 */ ori	$t6, $t6, 0X8080
/* 000327 0x80B9302C 244D0008 */ addiu	$t5, $v0, 8
/* 000328 0x80B93030 AE0D02C0 */ sw	$t5, 0X2C0($s0)
/* 000329 0x80B93034 AC4E0000 */ sw	$t6, 0X0($v0)
/* 000330 0x80B93038 8FAF0058 */ lw	$t7, 0X58($sp)
/* 000331 0x80B9303C 2401C800 */ li	$at, -14336
/* 000332 0x80B93040 85F80014 */ lh	$t8, 0X14($t7)
/* 000333 0x80B93044 331900FF */ andi	$t9, $t8, 0XFF
/* 000334 0x80B93048 03214025 */ or	$t0, $t9, $at
/* 000335 0x80B9304C AC480004 */ sw	$t0, 0X4($v0)
/* 000336 0x80B93050 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000337 0x80B93054 3C0B64C8 */ lui	$t3, 0x64C8
/* 000338 0x80B93058 356B00FF */ ori	$t3, $t3, 0XFF
/* 000339 0x80B9305C 24490008 */ addiu	$t1, $v0, 8
/* 000340 0x80B93060 AE0902C0 */ sw	$t1, 0X2C0($s0)
/* 000341 0x80B93064 AC4B0004 */ sw	$t3, 0X4($v0)
/* 000342 0x80B93068 AC4A0000 */ sw	$t2, 0X0($v0)
/* 000343 0x80B9306C 8FA2005C */ lw	$v0, 0X5C($sp)
/* 000344 0x80B93070 3C010001 */ lui	$at, 0x0001
/* 000345 0x80B93074 34218000 */ ori	$at, $at, 0X8000
/* 000346 0x80B93078 00411021 */ addu	$v0, $v0, $at
/* 000347 0x80B9307C 8C4C0840 */ lw	$t4, 0X840($v0)
/* 000348 0x80B93080 000C6880 */ sll	$t5, $t4, 2
/* 000349 0x80B93084 01AC6823 */ subu	$t5, $t5, $t4
/* 000350 0x80B93088 000D6900 */ sll	$t5, $t5, 4
/* 000351 0x80B9308C 01AC6823 */ subu	$t5, $t5, $t4
/* 000352 0x80B93090 000D68C0 */ sll	$t5, $t5, 3
/* 000353 0x80B93094 01AC6823 */ subu	$t5, $t5, $t4
/* 000354 0x80B93098 000D6880 */ sll	$t5, $t5, 2
/* 000355 0x80B9309C 31AEFFFF */ andi	$t6, $t5, 0XFFFF
/* 000356 0x80B930A0 448E4000 */ mtc1	$t6, $f8
/* 000357 0x80B930A4 05C10005 */ bgez	$t6, .L_80B930BC
/* 000358 0x80B930A8 468042A0 */ cvt.s.w	$f10, $f8
/* 000359 0x80B930AC 3C014F80 */ lui	$at, 0x4F80
/* 000360 0x80B930B0 44818000 */ mtc1	$at, $f16
/* 000361 0x80B930B4 00000000 */ nop
/* 000362 0x80B930B8 46105280 */ add.s	$f10, $f10, $f16
.L_80B930BC:
/* 000363 0x80B930BC 3C0180B9 */ lui	$at, %hi(D_80B93264)
/* 000364 0x80B930C0 C4323264 */ lwc1	$f18, %lo(D_80B93264)($at)
/* 000365 0x80B930C4 3C014700 */ lui	$at, 0x4700
/* 000366 0x80B930C8 44813000 */ mtc1	$at, $f6
/* 000367 0x80B930CC 46125102 */ mul.s	$f4, $f10, $f18
/* 000368 0x80B930D0 24050001 */ li	$a1, 1
/* 000369 0x80B930D4 AFA20024 */ sw	$v0, 0X24($sp)
/* 000370 0x80B930D8 0C0603A4 */ jal	SysMatrix_InsertZRotation_f
/* 000371 0x80B930DC 46062303 */ div.s	$f12, $f4, $f6
/* 000372 0x80B930E0 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000373 0x80B930E4 3C18DA38 */ lui	$t8, 0xDA38
/* 000374 0x80B930E8 37180003 */ ori	$t8, $t8, 0X3
/* 000375 0x80B930EC 244F0008 */ addiu	$t7, $v0, 8
/* 000376 0x80B930F0 AE0F02C0 */ sw	$t7, 0X2C0($s0)
/* 000377 0x80B930F4 AC580000 */ sw	$t8, 0X0($v0)
/* 000378 0x80B930F8 8FB9005C */ lw	$t9, 0X5C($sp)
/* 000379 0x80B930FC 8F240000 */ lw	$a0, 0X0($t9)
/* 000380 0x80B93100 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000381 0x80B93104 AFA20038 */ sw	$v0, 0X38($sp)
/* 000382 0x80B93108 8FA30038 */ lw	$v1, 0X38($sp)
/* 000383 0x80B9310C 3C09DE00 */ lui	$t1, 0xDE00
/* 000384 0x80B93110 AC620004 */ sw	$v0, 0X4($v1)
/* 000385 0x80B93114 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000386 0x80B93118 3C040402 */ lui	$a0, 0x0402
/* 000387 0x80B9311C 24843210 */ addiu	$a0, $a0, 12816
/* 000388 0x80B93120 24480008 */ addiu	$t0, $v0, 8
/* 000389 0x80B93124 AE0802C0 */ sw	$t0, 0X2C0($s0)
/* 000390 0x80B93128 AC440004 */ sw	$a0, 0X4($v0)
/* 000391 0x80B9312C AC490000 */ sw	$t1, 0X0($v0)
/* 000392 0x80B93130 0C060073 */ jal	SysMatrix_StatePop
/* 000393 0x80B93134 AFA40028 */ sw	$a0, 0X28($sp)
/* 000394 0x80B93138 8FAA0024 */ lw	$t2, 0X24($sp)
/* 000395 0x80B9313C 3C014F80 */ lui	$at, 0x4F80
/* 000396 0x80B93140 8D4B0840 */ lw	$t3, 0X840($t2)
/* 000397 0x80B93144 000B6080 */ sll	$t4, $t3, 2
/* 000398 0x80B93148 018B6021 */ addu	$t4, $t4, $t3
/* 000399 0x80B9314C 000C6080 */ sll	$t4, $t4, 2
/* 000400 0x80B93150 018B6023 */ subu	$t4, $t4, $t3
/* 000401 0x80B93154 000C6080 */ sll	$t4, $t4, 2
/* 000402 0x80B93158 018B6023 */ subu	$t4, $t4, $t3
/* 000403 0x80B9315C 000C6100 */ sll	$t4, $t4, 4
/* 000404 0x80B93160 318DFFFF */ andi	$t5, $t4, 0XFFFF
/* 000405 0x80B93164 01A07027 */ nor	$t6, $t5, $zero
/* 000406 0x80B93168 448E4000 */ mtc1	$t6, $f8
/* 000407 0x80B9316C 05C10004 */ bgez	$t6, .L_80B93180
/* 000408 0x80B93170 46804420 */ cvt.s.w	$f16, $f8
/* 000409 0x80B93174 44815000 */ mtc1	$at, $f10
/* 000410 0x80B93178 00000000 */ nop
/* 000411 0x80B9317C 460A8400 */ add.s	$f16, $f16, $f10
.L_80B93180:
/* 000412 0x80B93180 3C0180B9 */ lui	$at, %hi(D_80B93268)
/* 000413 0x80B93184 C4323268 */ lwc1	$f18, %lo(D_80B93268)($at)
/* 000414 0x80B93188 3C014700 */ lui	$at, 0x4700
/* 000415 0x80B9318C 44813000 */ mtc1	$at, $f6
/* 000416 0x80B93190 46128102 */ mul.s	$f4, $f16, $f18
/* 000417 0x80B93194 24050001 */ li	$a1, 1
/* 000418 0x80B93198 0C0603A4 */ jal	SysMatrix_InsertZRotation_f
/* 000419 0x80B9319C 46062303 */ div.s	$f12, $f4, $f6
/* 000420 0x80B931A0 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000421 0x80B931A4 3C18DA38 */ lui	$t8, 0xDA38
/* 000422 0x80B931A8 37180003 */ ori	$t8, $t8, 0X3
/* 000423 0x80B931AC 244F0008 */ addiu	$t7, $v0, 8
/* 000424 0x80B931B0 AE0F02C0 */ sw	$t7, 0X2C0($s0)
/* 000425 0x80B931B4 AC580000 */ sw	$t8, 0X0($v0)
/* 000426 0x80B931B8 8FB9005C */ lw	$t9, 0X5C($sp)
/* 000427 0x80B931BC 8F240000 */ lw	$a0, 0X0($t9)
/* 000428 0x80B931C0 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000429 0x80B931C4 AFA20030 */ sw	$v0, 0X30($sp)
/* 000430 0x80B931C8 8FA30030 */ lw	$v1, 0X30($sp)
/* 000431 0x80B931CC AC620004 */ sw	$v0, 0X4($v1)
/* 000432 0x80B931D0 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000433 0x80B931D4 3C09DE00 */ lui	$t1, 0xDE00
/* 000434 0x80B931D8 24480008 */ addiu	$t0, $v0, 8
/* 000435 0x80B931DC AE0802C0 */ sw	$t0, 0X2C0($s0)
/* 000436 0x80B931E0 AC490000 */ sw	$t1, 0X0($v0)
/* 000437 0x80B931E4 8FAA0028 */ lw	$t2, 0X28($sp)
/* 000438 0x80B931E8 AC4A0004 */ sw	$t2, 0X4($v0)
/* 000439 0x80B931EC 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80B931F0:
/* 000440 0x80B931F0 8FB00018 */ lw	$s0, 0X18($sp)
/* 000441 0x80B931F4 27BD0058 */ addiu	$sp, $sp, 88
/* 000442 0x80B931F8 03E00008 */ jr	$ra
/* 000443 0x80B931FC 00000000 */ nop
