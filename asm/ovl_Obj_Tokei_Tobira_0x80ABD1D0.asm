.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel ObjTokeiTobira_Init
/* 000000 0x80ABD1D0 27BDFFA0 */ addiu	$sp, $sp, -96
/* 000001 0x80ABD1D4 AFB00038 */ sw	$s0, 0X38($sp)
/* 000002 0x80ABD1D8 00808025 */ move	$s0, $a0
/* 000003 0x80ABD1DC AFBF003C */ sw	$ra, 0X3C($sp)
/* 000004 0x80ABD1E0 AFA50064 */ sw	$a1, 0X64($sp)
/* 000005 0x80ABD1E4 860E001C */ lh	$t6, 0X1C($s0)
/* 000006 0x80ABD1E8 3C0580AC */ lui	$a1, %hi(D_80ABD750)
/* 000007 0x80ABD1EC 24A5D750 */ addiu	$a1, $a1, %lo(D_80ABD750)
/* 000008 0x80ABD1F0 31CF0001 */ andi	$t7, $t6, 0X1
/* 000009 0x80ABD1F4 AFAF0054 */ sw	$t7, 0X54($sp)
/* 000010 0x80ABD1F8 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000011 0x80ABD1FC 02002025 */ move	$a0, $s0
/* 000012 0x80ABD200 02002025 */ move	$a0, $s0
/* 000013 0x80ABD204 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000014 0x80ABD208 24050003 */ li	$a1, 3
/* 000015 0x80ABD20C 8FB80054 */ lw	$t8, 0X54($sp)
/* 000016 0x80ABD210 3C0680AC */ lui	$a2, %hi(D_80ABD770)
/* 000017 0x80ABD214 8FA40064 */ lw	$a0, 0X64($sp)
/* 000018 0x80ABD218 0018C880 */ sll	$t9, $t8, 2
/* 000019 0x80ABD21C 00D93021 */ addu	$a2, $a2, $t9
/* 000020 0x80ABD220 8CC6D770 */ lw	$a2, %lo(D_80ABD770)($a2)
/* 000021 0x80ABD224 0C032B8D */ jal	BgCheck3_LoadMesh
/* 000022 0x80ABD228 02002825 */ move	$a1, $s0
/* 000023 0x80ABD22C 8FA80054 */ lw	$t0, 0X54($sp)
/* 000024 0x80ABD230 55000015 */ bnezl	$t0, .L_80ABD288
/* 000025 0x80ABD234 8FAD0054 */ lw	$t5, 0X54($sp)
/* 000026 0x80ABD238 C6040024 */ lwc1	$f4, 0X24($s0)
/* 000027 0x80ABD23C 8FA60064 */ lw	$a2, 0X64($sp)
/* 000028 0x80ABD240 240C0001 */ li	$t4, 1
/* 000029 0x80ABD244 E7A40010 */ swc1	$f4, 0X10($sp)
/* 000030 0x80ABD248 C6060028 */ lwc1	$f6, 0X28($s0)
/* 000031 0x80ABD24C 02002825 */ move	$a1, $s0
/* 000032 0x80ABD250 240701A2 */ li	$a3, 418
/* 000033 0x80ABD254 E7A60014 */ swc1	$f6, 0X14($sp)
/* 000034 0x80ABD258 C608002C */ lwc1	$f8, 0X2C($s0)
/* 000035 0x80ABD25C 24C41CA0 */ addiu	$a0, $a2, 7328
/* 000036 0x80ABD260 E7A80018 */ swc1	$f8, 0X18($sp)
/* 000037 0x80ABD264 860900BC */ lh	$t1, 0XBC($s0)
/* 000038 0x80ABD268 AFA9001C */ sw	$t1, 0X1C($sp)
/* 000039 0x80ABD26C 860A00BE */ lh	$t2, 0XBE($s0)
/* 000040 0x80ABD270 AFAA0020 */ sw	$t2, 0X20($sp)
/* 000041 0x80ABD274 860B00C0 */ lh	$t3, 0XC0($s0)
/* 000042 0x80ABD278 AFAC0028 */ sw	$t4, 0X28($sp)
/* 000043 0x80ABD27C 0C02EC30 */ jal	Actor_SpawnWithParent
/* 000044 0x80ABD280 AFAB0024 */ sw	$t3, 0X24($sp)
/* 000045 0x80ABD284 8FAD0054 */ lw	$t5, 0X54($sp)
.L_80ABD288:
/* 000046 0x80ABD288 3C0F80AC */ lui	$t7, %hi(D_80ABD76C)
/* 000047 0x80ABD28C 25EFD76C */ addiu	$t7, $t7, %lo(D_80ABD76C)
/* 000048 0x80ABD290 000D7040 */ sll	$t6, $t5, 1
/* 000049 0x80ABD294 01CF1021 */ addu	$v0, $t6, $t7
/* 000050 0x80ABD298 84580000 */ lh	$t8, 0X0($v0)
/* 000051 0x80ABD29C 861900BE */ lh	$t9, 0XBE($s0)
/* 000052 0x80ABD2A0 AFA20044 */ sw	$v0, 0X44($sp)
/* 000053 0x80ABD2A4 00002825 */ move	$a1, $zero
/* 000054 0x80ABD2A8 03192021 */ addu	$a0, $t8, $t9
/* 000055 0x80ABD2AC 00042400 */ sll	$a0, $a0, 16
/* 000056 0x80ABD2B0 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000057 0x80ABD2B4 00042403 */ sra	$a0, $a0, 16
/* 000058 0x80ABD2B8 3C0480AC */ lui	$a0, %hi(D_80ABD760)
/* 000059 0x80ABD2BC 2484D760 */ addiu	$a0, $a0, %lo(D_80ABD760)
/* 000060 0x80ABD2C0 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000061 0x80ABD2C4 27A50048 */ addiu	$a1, $sp, 72
/* 000062 0x80ABD2C8 C60A0024 */ lwc1	$f10, 0X24($s0)
/* 000063 0x80ABD2CC C7B00048 */ lwc1	$f16, 0X48($sp)
/* 000064 0x80ABD2D0 C6040028 */ lwc1	$f4, 0X28($s0)
/* 000065 0x80ABD2D4 3C0980AC */ lui	$t1, %hi(D_80ABD76C)
/* 000066 0x80ABD2D8 46105480 */ add.s	$f18, $f10, $f16
/* 000067 0x80ABD2DC C60A002C */ lwc1	$f10, 0X2C($s0)
/* 000068 0x80ABD2E0 2529D76C */ addiu	$t1, $t1, %lo(D_80ABD76C)
/* 000069 0x80ABD2E4 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000070 0x80ABD2E8 E6120024 */ swc1	$f18, 0X24($s0)
/* 000071 0x80ABD2EC C7A6004C */ lwc1	$f6, 0X4C($sp)
/* 000072 0x80ABD2F0 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000073 0x80ABD2F4 46062200 */ add.s	$f8, $f4, $f6
/* 000074 0x80ABD2F8 E6080028 */ swc1	$f8, 0X28($s0)
/* 000075 0x80ABD2FC C7B00050 */ lwc1	$f16, 0X50($sp)
/* 000076 0x80ABD300 46105480 */ add.s	$f18, $f10, $f16
/* 000077 0x80ABD304 E612002C */ swc1	$f18, 0X2C($s0)
/* 000078 0x80ABD308 8FA80044 */ lw	$t0, 0X44($sp)
/* 000079 0x80ABD30C 55090017 */ bnel	$t0, $t1, .L_80ABD36C
/* 000080 0x80ABD310 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000081 0x80ABD314 904A0F33 */ lbu	$t2, 0XF33($v0)
/* 000082 0x80ABD318 8FAC0064 */ lw	$t4, 0X64($sp)
/* 000083 0x80ABD31C 314B0004 */ andi	$t3, $t2, 0X4
/* 000084 0x80ABD320 55600012 */ bnezl	$t3, .L_80ABD36C
/* 000085 0x80ABD324 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000086 0x80ABD328 858D00A4 */ lh	$t5, 0XA4($t4)
/* 000087 0x80ABD32C 2401006F */ li	$at, 111
/* 000088 0x80ABD330 55A1000E */ bnel	$t5, $at, .L_80ABD36C
/* 000089 0x80ABD334 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000090 0x80ABD338 8C4E3CAC */ lw	$t6, 0X3CAC($v0)
/* 000091 0x80ABD33C 55C0000B */ bnezl	$t6, .L_80ABD36C
/* 000092 0x80ABD340 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000093 0x80ABD344 820F0038 */ lb	$t7, 0X38($s0)
/* 000094 0x80ABD348 3C0880AC */ lui	$t0, %hi(func_80ABD3B0)
/* 000095 0x80ABD34C 05E20007 */ bltzl	$t7, .L_80ABD36C
/* 000096 0x80ABD350 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000097 0x80ABD354 8E180004 */ lw	$t8, 0X4($s0)
/* 000098 0x80ABD358 2508D3B0 */ addiu	$t0, $t0, %lo(func_80ABD3B0)
/* 000099 0x80ABD35C AE08015C */ sw	$t0, 0X15C($s0)
/* 000100 0x80ABD360 37190010 */ ori	$t9, $t8, 0X10
/* 000101 0x80ABD364 AE190004 */ sw	$t9, 0X4($s0)
/* 000102 0x80ABD368 8FBF003C */ lw	$ra, 0X3C($sp)
.L_80ABD36C:
/* 000103 0x80ABD36C 8FB00038 */ lw	$s0, 0X38($sp)
/* 000104 0x80ABD370 27BD0060 */ addiu	$sp, $sp, 96
/* 000105 0x80ABD374 03E00008 */ jr	$ra
/* 000106 0x80ABD378 00000000 */ nop

glabel ObjTokeiTobira_Destroy
/* 000107 0x80ABD37C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000108 0x80ABD380 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000109 0x80ABD384 AFA40018 */ sw	$a0, 0X18($sp)
/* 000110 0x80ABD388 00A03825 */ move	$a3, $a1
/* 000111 0x80ABD38C 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000112 0x80ABD390 00E02025 */ move	$a0, $a3
/* 000113 0x80ABD394 24E50880 */ addiu	$a1, $a3, 2176
/* 000114 0x80ABD398 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000115 0x80ABD39C 8DC60144 */ lw	$a2, 0X144($t6)
/* 000116 0x80ABD3A0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000117 0x80ABD3A4 27BD0018 */ addiu	$sp, $sp, 24
/* 000118 0x80ABD3A8 03E00008 */ jr	$ra
/* 000119 0x80ABD3AC 00000000 */ nop

glabel func_80ABD3B0
/* 000120 0x80ABD3B0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000121 0x80ABD3B4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000122 0x80ABD3B8 00802825 */ move	$a1, $a0
/* 000123 0x80ABD3BC 80A40038 */ lb	$a0, 0X38($a1)
/* 000124 0x80ABD3C0 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000125 0x80ABD3C4 AFA50018 */ sw	$a1, 0X18($sp)
/* 000126 0x80ABD3C8 10400010 */ beqz	$v0, .L_80ABD40C
/* 000127 0x80ABD3CC 8FA50018 */ lw	$a1, 0X18($sp)
/* 000128 0x80ABD3D0 80A40038 */ lb	$a0, 0X38($a1)
/* 000129 0x80ABD3D4 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000130 0x80ABD3D8 AFA50018 */ sw	$a1, 0X18($sp)
/* 000131 0x80ABD3DC 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000132 0x80ABD3E0 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000133 0x80ABD3E4 906E0F33 */ lbu	$t6, 0XF33($v1)
/* 000134 0x80ABD3E8 8FA50018 */ lw	$a1, 0X18($sp)
/* 000135 0x80ABD3EC 2401FFEF */ li	$at, -17
/* 000136 0x80ABD3F0 35CF0004 */ ori	$t7, $t6, 0X4
/* 000137 0x80ABD3F4 A06F0F33 */ sb	$t7, 0XF33($v1)
/* 000138 0x80ABD3F8 8CB80004 */ lw	$t8, 0X4($a1)
/* 000139 0x80ABD3FC ACA0015C */ sw	$zero, 0X15C($a1)
/* 000140 0x80ABD400 0301C824 */ and	$t9, $t8, $at
/* 000141 0x80ABD404 10000003 */ b	.L_80ABD414
/* 000142 0x80ABD408 ACB90004 */ sw	$t9, 0X4($a1)
.L_80ABD40C:
/* 000143 0x80ABD40C 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000144 0x80ABD410 80A40038 */ lb	$a0, 0X38($a1)
.L_80ABD414:
/* 000145 0x80ABD414 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000146 0x80ABD418 27BD0018 */ addiu	$sp, $sp, 24
/* 000147 0x80ABD41C 03E00008 */ jr	$ra
/* 000148 0x80ABD420 00000000 */ nop

glabel ObjTokeiTobira_Update
/* 000149 0x80ABD424 27BDFFA0 */ addiu	$sp, $sp, -96
/* 000150 0x80ABD428 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000151 0x80ABD42C 00803825 */ move	$a3, $a0
/* 000152 0x80ABD430 00A03025 */ move	$a2, $a1
/* 000153 0x80ABD434 8CC31CCC */ lw	$v1, 0X1CCC($a2)
/* 000154 0x80ABD438 84E2001C */ lh	$v0, 0X1C($a3)
/* 000155 0x80ABD43C 3C0F80AC */ lui	$t7, %hi(D_80ABD778)
/* 000156 0x80ABD440 94780090 */ lhu	$t8, 0X90($v1)
/* 000157 0x80ABD444 30420001 */ andi	$v0, $v0, 0X1
/* 000158 0x80ABD448 00027080 */ sll	$t6, $v0, 2
/* 000159 0x80ABD44C 25EFD778 */ addiu	$t7, $t7, %lo(D_80ABD778)
/* 000160 0x80ABD450 01CF4021 */ addu	$t0, $t6, $t7
/* 000161 0x80ABD454 33190200 */ andi	$t9, $t8, 0X200
/* 000162 0x80ABD458 1320004C */ beqz	$t9, .L_80ABD58C
/* 000163 0x80ABD45C C50E0000 */ lwc1	$f14, 0X0($t0)
/* 000164 0x80ABD460 90650084 */ lbu	$a1, 0X84($v1)
/* 000165 0x80ABD464 E7AE0048 */ swc1	$f14, 0X48($sp)
/* 000166 0x80ABD468 AFA80020 */ sw	$t0, 0X20($sp)
/* 000167 0x80ABD46C AFA70060 */ sw	$a3, 0X60($sp)
/* 000168 0x80ABD470 AFA30054 */ sw	$v1, 0X54($sp)
/* 000169 0x80ABD474 0C031892 */ jal	BgCheck_GetActorOfMesh
/* 000170 0x80ABD478 24C40830 */ addiu	$a0, $a2, 2096
/* 000171 0x80ABD47C 8FA70060 */ lw	$a3, 0X60($sp)
/* 000172 0x80ABD480 8FA30054 */ lw	$v1, 0X54($sp)
/* 000173 0x80ABD484 C7AE0048 */ lwc1	$f14, 0X48($sp)
/* 000174 0x80ABD488 1447005E */ bne	$v0, $a3, .L_80ABD604
/* 000175 0x80ABD48C 00E02025 */ move	$a0, $a3
/* 000176 0x80ABD490 27A50034 */ addiu	$a1, $sp, 52
/* 000177 0x80ABD494 24660024 */ addiu	$a2, $v1, 36
/* 000178 0x80ABD498 AFA70060 */ sw	$a3, 0X60($sp)
/* 000179 0x80ABD49C 0C02DB9B */ jal	Actor_CalcOffsetOrientedToDrawRotation
/* 000180 0x80ABD4A0 E7AE0048 */ swc1	$f14, 0X48($sp)
/* 000181 0x80ABD4A4 C7AE0048 */ lwc1	$f14, 0X48($sp)
/* 000182 0x80ABD4A8 C7A40034 */ lwc1	$f4, 0X34($sp)
/* 000183 0x80ABD4AC 3C0141A0 */ lui	$at, 0x41A0
/* 000184 0x80ABD4B0 44816000 */ mtc1	$at, $f12
/* 000185 0x80ABD4B4 460E2002 */ mul.s	$f0, $f4, $f14
/* 000186 0x80ABD4B8 8FA70060 */ lw	$a3, 0X60($sp)
/* 000187 0x80ABD4BC C7A8003C */ lwc1	$f8, 0X3C($sp)
/* 000188 0x80ABD4C0 4600603C */ c.lt.s	$f12, $f0
/* 000189 0x80ABD4C4 46000086 */ mov.s	$f2, $f0
/* 000190 0x80ABD4C8 4502004F */ bc1fl .L_80ABD608
/* 000191 0x80ABD4CC 8CE2016C */ lw	$v0, 0X16C($a3)
/* 000192 0x80ABD4D0 44803000 */ mtc1	$zero, $f6
/* 000193 0x80ABD4D4 00000000 */ nop
/* 000194 0x80ABD4D8 4608303C */ c.lt.s	$f6, $f8
/* 000195 0x80ABD4DC 00000000 */ nop
/* 000196 0x80ABD4E0 45020019 */ bc1fl .L_80ABD548
/* 000197 0x80ABD4E4 3C014240 */ lui	$at, 0x4240
/* 000198 0x80ABD4E8 460C0281 */ sub.s	$f10, $f0, $f12
/* 000199 0x80ABD4EC 3C0180AC */ lui	$at, %hi(D_80ABD790)
/* 000200 0x80ABD4F0 C424D790 */ lwc1	$f4, %lo(D_80ABD790)($at)
/* 000201 0x80ABD4F4 C4E80160 */ lwc1	$f8, 0X160($a3)
/* 000202 0x80ABD4F8 460E5482 */ mul.s	$f18, $f10, $f14
/* 000203 0x80ABD4FC 8CEA016C */ lw	$t2, 0X16C($a3)
/* 000204 0x80ABD500 24090001 */ li	$t1, 1
/* 000205 0x80ABD504 ACE90168 */ sw	$t1, 0X168($a3)
/* 000206 0x80ABD508 00E02025 */ move	$a0, $a3
/* 000207 0x80ABD50C 24055809 */ li	$a1, 22537
/* 000208 0x80ABD510 46049182 */ mul.s	$f6, $f18, $f4
/* 000209 0x80ABD514 46064280 */ add.s	$f10, $f8, $f6
/* 000210 0x80ABD518 1D40000A */ bgtz	$t2, .L_80ABD544
/* 000211 0x80ABD51C E4EA0160 */ swc1	$f10, 0X160($a3)
/* 000212 0x80ABD520 AFA70060 */ sw	$a3, 0X60($sp)
/* 000213 0x80ABD524 E7A20040 */ swc1	$f2, 0X40($sp)
/* 000214 0x80ABD528 0C02E3B2 */ jal	func_800B8EC8
/* 000215 0x80ABD52C E7AE0048 */ swc1	$f14, 0X48($sp)
/* 000216 0x80ABD530 8FA70060 */ lw	$a3, 0X60($sp)
/* 000217 0x80ABD534 C7A20040 */ lwc1	$f2, 0X40($sp)
/* 000218 0x80ABD538 C7AE0048 */ lwc1	$f14, 0X48($sp)
/* 000219 0x80ABD53C 240B0050 */ li	$t3, 80
/* 000220 0x80ABD540 ACEB016C */ sw	$t3, 0X16C($a3)
.L_80ABD544:
/* 000221 0x80ABD544 3C014240 */ lui	$at, 0x4240
.L_80ABD548:
/* 000222 0x80ABD548 44819000 */ mtc1	$at, $f18
/* 000223 0x80ABD54C 3C0D80AC */ lui	$t5, %hi(D_80ABD778)
/* 000224 0x80ABD550 25ADD778 */ addiu	$t5, $t5, %lo(D_80ABD778)
/* 000225 0x80ABD554 4602903C */ c.lt.s	$f18, $f2
/* 000226 0x80ABD558 8FAC0020 */ lw	$t4, 0X20($sp)
/* 000227 0x80ABD55C 4502002A */ bc1fl .L_80ABD608
/* 000228 0x80ABD560 8CE2016C */ lw	$v0, 0X16C($a3)
/* 000229 0x80ABD564 158D0003 */ bne	$t4, $t5, .L_80ABD574
/* 000230 0x80ABD568 240E0001 */ li	$t6, 1
/* 000231 0x80ABD56C 10000002 */ b	.L_80ABD578
/* 000232 0x80ABD570 8CE20124 */ lw	$v0, 0X124($a3)
.L_80ABD574:
/* 000233 0x80ABD574 8CE20120 */ lw	$v0, 0X120($a3)
.L_80ABD578:
/* 000234 0x80ABD578 50400023 */ beqzl	$v0, .L_80ABD608
/* 000235 0x80ABD57C 8CE2016C */ lw	$v0, 0X16C($a3)
/* 000236 0x80ABD580 AC4E0168 */ sw	$t6, 0X168($v0)
/* 000237 0x80ABD584 10000020 */ b	.L_80ABD608
/* 000238 0x80ABD588 8CE2016C */ lw	$v0, 0X16C($a3)
.L_80ABD58C:
/* 000239 0x80ABD58C 8CEF0168 */ lw	$t7, 0X168($a3)
/* 000240 0x80ABD590 24010001 */ li	$at, 1
/* 000241 0x80ABD594 00E02025 */ move	$a0, $a3
/* 000242 0x80ABD598 15E1001A */ bne	$t7, $at, .L_80ABD604
/* 000243 0x80ABD59C 27A50024 */ addiu	$a1, $sp, 36
/* 000244 0x80ABD5A0 24660024 */ addiu	$a2, $v1, 36
/* 000245 0x80ABD5A4 AFA70060 */ sw	$a3, 0X60($sp)
/* 000246 0x80ABD5A8 0C02DB9B */ jal	Actor_CalcOffsetOrientedToDrawRotation
/* 000247 0x80ABD5AC E7AE0048 */ swc1	$f14, 0X48($sp)
/* 000248 0x80ABD5B0 C7A0002C */ lwc1	$f0, 0X2C($sp)
/* 000249 0x80ABD5B4 44802000 */ mtc1	$zero, $f4
/* 000250 0x80ABD5B8 8FA70060 */ lw	$a3, 0X60($sp)
/* 000251 0x80ABD5BC C7AE0048 */ lwc1	$f14, 0X48($sp)
/* 000252 0x80ABD5C0 4600203C */ c.lt.s	$f4, $f0
/* 000253 0x80ABD5C4 3C0141F0 */ lui	$at, 0x41F0
/* 000254 0x80ABD5C8 4502000F */ bc1fl .L_80ABD608
/* 000255 0x80ABD5CC 8CE2016C */ lw	$v0, 0X16C($a3)
/* 000256 0x80ABD5D0 44814000 */ mtc1	$at, $f8
/* 000257 0x80ABD5D4 3C014391 */ lui	$at, 0x4391
/* 000258 0x80ABD5D8 4608003C */ c.lt.s	$f0, $f8
/* 000259 0x80ABD5DC 00000000 */ nop
/* 000260 0x80ABD5E0 45020009 */ bc1fl .L_80ABD608
/* 000261 0x80ABD5E4 8CE2016C */ lw	$v0, 0X16C($a3)
/* 000262 0x80ABD5E8 44815000 */ mtc1	$at, $f10
/* 000263 0x80ABD5EC C4E60160 */ lwc1	$f6, 0X160($a3)
/* 000264 0x80ABD5F0 24180001 */ li	$t8, 1
/* 000265 0x80ABD5F4 460A7482 */ mul.s	$f18, $f14, $f10
/* 000266 0x80ABD5F8 ACF80168 */ sw	$t8, 0X168($a3)
/* 000267 0x80ABD5FC 46123100 */ add.s	$f4, $f6, $f18
/* 000268 0x80ABD600 E4E40160 */ swc1	$f4, 0X160($a3)
.L_80ABD604:
/* 000269 0x80ABD604 8CE2016C */ lw	$v0, 0X16C($a3)
.L_80ABD608:
/* 000270 0x80ABD608 3C014660 */ lui	$at, 0x4660
/* 000271 0x80ABD60C 44818000 */ mtc1	$at, $f16
/* 000272 0x80ABD610 18400003 */ blez	$v0, .L_80ABD620
/* 000273 0x80ABD614 3C0180AC */ lui	$at, %hi(D_80ABD794)
/* 000274 0x80ABD618 2459FFFF */ addiu	$t9, $v0, -1
/* 000275 0x80ABD61C ACF9016C */ sw	$t9, 0X16C($a3)
.L_80ABD620:
/* 000276 0x80ABD620 ACE00168 */ sw	$zero, 0X168($a3)
/* 000277 0x80ABD624 C42AD794 */ lwc1	$f10, %lo(D_80ABD794)($at)
/* 000278 0x80ABD628 C4E80160 */ lwc1	$f8, 0X160($a3)
/* 000279 0x80ABD62C C4F20164 */ lwc1	$f18, 0X164($a3)
/* 000280 0x80ABD630 3C01C47A */ lui	$at, 0xC47A
/* 000281 0x80ABD634 460A4182 */ mul.s	$f6, $f8, $f10
/* 000282 0x80ABD638 E4E60160 */ swc1	$f6, 0X160($a3)
/* 000283 0x80ABD63C C4E20160 */ lwc1	$f2, 0X160($a3)
/* 000284 0x80ABD640 46029100 */ add.s	$f4, $f18, $f2
/* 000285 0x80ABD644 E4E40164 */ swc1	$f4, 0X164($a3)
/* 000286 0x80ABD648 C4E00164 */ lwc1	$f0, 0X164($a3)
/* 000287 0x80ABD64C 460E0302 */ mul.s	$f12, $f0, $f14
/* 000288 0x80ABD650 460C803C */ c.lt.s	$f16, $f12
/* 000289 0x80ABD654 00000000 */ nop
/* 000290 0x80ABD658 4502000B */ bc1fl .L_80ABD688
/* 000291 0x80ABD65C 44818000 */ mtc1	$at, $f16
/* 000292 0x80ABD660 3C0180AC */ lui	$at, %hi(D_80ABD798)
/* 000293 0x80ABD664 C428D798 */ lwc1	$f8, %lo(D_80ABD798)($at)
/* 000294 0x80ABD668 46081282 */ mul.s	$f10, $f2, $f8
/* 000295 0x80ABD66C 00000000 */ nop
/* 000296 0x80ABD670 460E8182 */ mul.s	$f6, $f16, $f14
/* 000297 0x80ABD674 E4EA0160 */ swc1	$f10, 0X160($a3)
/* 000298 0x80ABD678 E4E60164 */ swc1	$f6, 0X164($a3)
/* 000299 0x80ABD67C 1000000E */ b	.L_80ABD6B8
/* 000300 0x80ABD680 C4E00164 */ lwc1	$f0, 0X164($a3)
/* 000301 0x80ABD684 44818000 */ mtc1	$at, $f16
.L_80ABD688:
/* 000302 0x80ABD688 3C0180AC */ lui	$at, %hi(D_80ABD79C)
/* 000303 0x80ABD68C 4610603C */ c.lt.s	$f12, $f16
/* 000304 0x80ABD690 00000000 */ nop
/* 000305 0x80ABD694 45020009 */ bc1fl .L_80ABD6BC
/* 000306 0x80ABD698 4600028D */ trunc.w.s	$f10, $f0
/* 000307 0x80ABD69C C432D79C */ lwc1	$f18, %lo(D_80ABD79C)($at)
/* 000308 0x80ABD6A0 46121102 */ mul.s	$f4, $f2, $f18
/* 000309 0x80ABD6A4 00000000 */ nop
/* 000310 0x80ABD6A8 460E8202 */ mul.s	$f8, $f16, $f14
/* 000311 0x80ABD6AC E4E40160 */ swc1	$f4, 0X160($a3)
/* 000312 0x80ABD6B0 E4E80164 */ swc1	$f8, 0X164($a3)
/* 000313 0x80ABD6B4 C4E00164 */ lwc1	$f0, 0X164($a3)
.L_80ABD6B8:
/* 000314 0x80ABD6B8 4600028D */ trunc.w.s	$f10, $f0
.L_80ABD6BC:
/* 000315 0x80ABD6BC 84EB0016 */ lh	$t3, 0X16($a3)
/* 000316 0x80ABD6C0 8CE2015C */ lw	$v0, 0X15C($a3)
/* 000317 0x80ABD6C4 440A5000 */ mfc1	$t2, $f10
/* 000318 0x80ABD6C8 00000000 */ nop
/* 000319 0x80ABD6CC 014B6021 */ addu	$t4, $t2, $t3
/* 000320 0x80ABD6D0 10400003 */ beqz	$v0, .L_80ABD6E0
/* 000321 0x80ABD6D4 A4EC00BE */ sh	$t4, 0XBE($a3)
/* 000322 0x80ABD6D8 0040F809 */ jalr	$v0
/* 000323 0x80ABD6DC 00E02025 */ move	$a0, $a3
.L_80ABD6E0:
/* 000324 0x80ABD6E0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000325 0x80ABD6E4 27BD0060 */ addiu	$sp, $sp, 96
/* 000326 0x80ABD6E8 03E00008 */ jr	$ra
/* 000327 0x80ABD6EC 00000000 */ nop

glabel ObjTokeiTobira_Draw
/* 000328 0x80ABD6F0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000329 0x80ABD6F4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000330 0x80ABD6F8 00803825 */ move	$a3, $a0
/* 000331 0x80ABD6FC 00A03025 */ move	$a2, $a1
/* 000332 0x80ABD700 84EE001C */ lh	$t6, 0X1C($a3)
/* 000333 0x80ABD704 3C0580AC */ lui	$a1, %hi(D_80ABD780)
/* 000334 0x80ABD708 00C02025 */ move	$a0, $a2
/* 000335 0x80ABD70C 31CF0001 */ andi	$t7, $t6, 0X1
/* 000336 0x80ABD710 000FC080 */ sll	$t8, $t7, 2
/* 000337 0x80ABD714 00B82821 */ addu	$a1, $a1, $t8
/* 000338 0x80ABD718 0C02F7F0 */ jal	func_800BDFC0
/* 000339 0x80ABD71C 8CA5D780 */ lw	$a1, %lo(D_80ABD780)($a1)
/* 000340 0x80ABD720 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000341 0x80ABD724 27BD0018 */ addiu	$sp, $sp, 24
/* 000342 0x80ABD728 03E00008 */ jr	$ra
/* 000343 0x80ABD72C 00000000 */ nop
