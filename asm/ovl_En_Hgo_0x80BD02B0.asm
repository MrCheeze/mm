.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel EnHgo_Init
/* 000000 0x80BD02B0 27BDFFC0 */ addiu	$sp, $sp, -64
/* 000001 0x80BD02B4 AFB00028 */ sw	$s0, 0X28($sp)
/* 000002 0x80BD02B8 00808025 */ move	$s0, $a0
/* 000003 0x80BD02BC AFBF002C */ sw	$ra, 0X2C($sp)
/* 000004 0x80BD02C0 AFA50044 */ sw	$a1, 0X44($sp)
/* 000005 0x80BD02C4 3C06800B */ lui	$a2, %hi(func_800B3FC0)
/* 000006 0x80BD02C8 24C63FC0 */ addiu	$a2, $a2, %lo(func_800B3FC0)
/* 000007 0x80BD02CC 260400BC */ addiu	$a0, $s0, 188
/* 000008 0x80BD02D0 24050000 */ li	$a1, 0
/* 000009 0x80BD02D4 0C02CEE9 */ jal	Actor_SetDrawParams
/* 000010 0x80BD02D8 3C074210 */ lui	$a3, 0x4210
/* 000011 0x80BD02DC 3C060601 */ lui	$a2, 0x0601
/* 000012 0x80BD02E0 3C070601 */ lui	$a3, 0x0601
/* 000013 0x80BD02E4 260E021C */ addiu	$t6, $s0, 540
/* 000014 0x80BD02E8 260F028E */ addiu	$t7, $s0, 654
/* 000015 0x80BD02EC 24180013 */ li	$t8, 19
/* 000016 0x80BD02F0 AFB80018 */ sw	$t8, 0X18($sp)
/* 000017 0x80BD02F4 AFAF0014 */ sw	$t7, 0X14($sp)
/* 000018 0x80BD02F8 AFAE0010 */ sw	$t6, 0X10($sp)
/* 000019 0x80BD02FC 24E7B644 */ addiu	$a3, $a3, -18876
/* 000020 0x80BD0300 24C62A58 */ addiu	$a2, $a2, 10840
/* 000021 0x80BD0304 8FA40044 */ lw	$a0, 0X44($sp)
/* 000022 0x80BD0308 0C04DACC */ jal	func_80136B30
/* 000023 0x80BD030C 26050190 */ addiu	$a1, $s0, 400
/* 000024 0x80BD0310 26050144 */ addiu	$a1, $s0, 324
/* 000025 0x80BD0314 AFA50034 */ sw	$a1, 0X34($sp)
/* 000026 0x80BD0318 0C038467 */ jal	Collision_InitCylinderDefault
/* 000027 0x80BD031C 8FA40044 */ lw	$a0, 0X44($sp)
/* 000028 0x80BD0320 3C0780BD */ lui	$a3, %hi(D_80BD0F48)
/* 000029 0x80BD0324 8FA50034 */ lw	$a1, 0X34($sp)
/* 000030 0x80BD0328 24E70F48 */ addiu	$a3, $a3, %lo(D_80BD0F48)
/* 000031 0x80BD032C 8FA40044 */ lw	$a0, 0X44($sp)
/* 000032 0x80BD0330 0C0384C3 */ jal	Collision_InitCylinderWithData
/* 000033 0x80BD0334 02003025 */ move	$a2, $s0
/* 000034 0x80BD0338 3C0680BD */ lui	$a2, %hi(D_80BD0F74)
/* 000035 0x80BD033C 24C60F74 */ addiu	$a2, $a2, %lo(D_80BD0F74)
/* 000036 0x80BD0340 260400A0 */ addiu	$a0, $s0, 160
/* 000037 0x80BD0344 0C039D57 */ jal	func_800E755C
/* 000038 0x80BD0348 00002825 */ move	$a1, $zero
/* 000039 0x80BD034C 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000040 0x80BD0350 24190006 */ li	$t9, 6
/* 000041 0x80BD0354 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000042 0x80BD0358 A219001F */ sb	$t9, 0X1F($s0)
/* 000043 0x80BD035C A600030C */ sh	$zero, 0X30C($s0)
/* 000044 0x80BD0360 A600030E */ sh	$zero, 0X30E($s0)
/* 000045 0x80BD0364 A6000314 */ sh	$zero, 0X314($s0)
/* 000046 0x80BD0368 A6000310 */ sh	$zero, 0X310($s0)
/* 000047 0x80BD036C A6000312 */ sh	$zero, 0X312($s0)
/* 000048 0x80BD0370 90480F43 */ lbu	$t0, 0XF43($v0)
/* 000049 0x80BD0374 31090020 */ andi	$t1, $t0, 0X20
/* 000050 0x80BD0378 15200006 */ bnez	$t1, .L_80BD0394
/* 000051 0x80BD037C 00000000 */ nop
/* 000052 0x80BD0380 904A0F2C */ lbu	$t2, 0XF2C($v0)
/* 000053 0x80BD0384 02002025 */ move	$a0, $s0
/* 000054 0x80BD0388 314B0020 */ andi	$t3, $t2, 0X20
/* 000055 0x80BD038C 11600005 */ beqz	$t3, .L_80BD03A4
/* 000056 0x80BD0390 00000000 */ nop
.L_80BD0394:
/* 000057 0x80BD0394 0C2F4127 */ jal	func_80BD049C
/* 000058 0x80BD0398 02002025 */ move	$a0, $s0
/* 000059 0x80BD039C 10000004 */ b	.L_80BD03B0
/* 000060 0x80BD03A0 8FBF002C */ lw	$ra, 0X2C($sp)
.L_80BD03A4:
/* 000061 0x80BD03A4 0C2F40FB */ jal	func_80BD03EC
/* 000062 0x80BD03A8 AE00013C */ sw	$zero, 0X13C($s0)
/* 000063 0x80BD03AC 8FBF002C */ lw	$ra, 0X2C($sp)
.L_80BD03B0:
/* 000064 0x80BD03B0 8FB00028 */ lw	$s0, 0X28($sp)
/* 000065 0x80BD03B4 27BD0040 */ addiu	$sp, $sp, 64
/* 000066 0x80BD03B8 03E00008 */ jr	$ra
/* 000067 0x80BD03BC 00000000 */ nop

glabel EnHgo_Destroy
/* 000068 0x80BD03C0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000069 0x80BD03C4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000070 0x80BD03C8 00803025 */ move	$a2, $a0
/* 000071 0x80BD03CC 00A03825 */ move	$a3, $a1
/* 000072 0x80BD03D0 00E02025 */ move	$a0, $a3
/* 000073 0x80BD03D4 0C03847B */ jal	Collision_FiniCylinder
/* 000074 0x80BD03D8 24C50144 */ addiu	$a1, $a2, 324
/* 000075 0x80BD03DC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000076 0x80BD03E0 27BD0018 */ addiu	$sp, $sp, 24
/* 000077 0x80BD03E4 03E00008 */ jr	$ra
/* 000078 0x80BD03E8 00000000 */ nop

glabel func_80BD03EC
/* 000079 0x80BD03EC 8C8E0004 */ lw	$t6, 0X4($a0)
/* 000080 0x80BD03F0 2401FFFE */ li	$at, -2
/* 000081 0x80BD03F4 3C1880BD */ lui	$t8, %hi(func_80BD0410)
/* 000082 0x80BD03F8 27180410 */ addiu	$t8, $t8, %lo(func_80BD0410)
/* 000083 0x80BD03FC 01C17824 */ and	$t7, $t6, $at
/* 000084 0x80BD0400 AC8F0004 */ sw	$t7, 0X4($a0)
/* 000085 0x80BD0404 AC9801D4 */ sw	$t8, 0X1D4($a0)
/* 000086 0x80BD0408 03E00008 */ jr	$ra
/* 000087 0x80BD040C 00000000 */ nop

glabel func_80BD0410
/* 000088 0x80BD0410 AFA40000 */ sw	$a0, 0X0($sp)
/* 000089 0x80BD0414 AFA50004 */ sw	$a1, 0X4($sp)
/* 000090 0x80BD0418 03E00008 */ jr	$ra
/* 000091 0x80BD041C 00000000 */ nop

glabel func_80BD0420
/* 000092 0x80BD0420 3C0E80BD */ lui	$t6, %hi(func_80BD0434)
/* 000093 0x80BD0424 25CE0434 */ addiu	$t6, $t6, %lo(func_80BD0434)
/* 000094 0x80BD0428 AC8E01D4 */ sw	$t6, 0X1D4($a0)
/* 000095 0x80BD042C 03E00008 */ jr	$ra
/* 000096 0x80BD0430 00000000 */ nop

glabel func_80BD0434
/* 000097 0x80BD0434 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000098 0x80BD0438 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000099 0x80BD043C AFA5001C */ sw	$a1, 0X1C($sp)
/* 000100 0x80BD0440 00803825 */ move	$a3, $a0
/* 000101 0x80BD0444 C4E4003C */ lwc1	$f4, 0X3C($a3)
/* 000102 0x80BD0448 C4E80028 */ lwc1	$f8, 0X28($a3)
/* 000103 0x80BD044C C4F00044 */ lwc1	$f16, 0X44($a3)
/* 000104 0x80BD0450 4600218D */ trunc.w.s	$f6, $f4
/* 000105 0x80BD0454 3C010001 */ lui	$at, 0x0001
/* 000106 0x80BD0458 34218884 */ ori	$at, $at, 0X8884
/* 000107 0x80BD045C 4600428D */ trunc.w.s	$f10, $f8
/* 000108 0x80BD0460 440F3000 */ mfc1	$t7, $f6
/* 000109 0x80BD0464 24E60144 */ addiu	$a2, $a3, 324
/* 000110 0x80BD0468 4600848D */ trunc.w.s	$f18, $f16
/* 000111 0x80BD046C 44195000 */ mfc1	$t9, $f10
/* 000112 0x80BD0470 A4EF018A */ sh	$t7, 0X18A($a3)
/* 000113 0x80BD0474 44099000 */ mfc1	$t1, $f18
/* 000114 0x80BD0478 A4F9018C */ sh	$t9, 0X18C($a3)
/* 000115 0x80BD047C A4E9018E */ sh	$t1, 0X18E($a3)
/* 000116 0x80BD0480 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000117 0x80BD0484 0C038A4A */ jal	Collision_AddOT
/* 000118 0x80BD0488 00812821 */ addu	$a1, $a0, $at
/* 000119 0x80BD048C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000120 0x80BD0490 27BD0018 */ addiu	$sp, $sp, 24
/* 000121 0x80BD0494 03E00008 */ jr	$ra
/* 000122 0x80BD0498 00000000 */ nop

glabel func_80BD049C
/* 000123 0x80BD049C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000124 0x80BD04A0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000125 0x80BD04A4 AFA40018 */ sw	$a0, 0X18($sp)
/* 000126 0x80BD04A8 8FA40018 */ lw	$a0, 0X18($sp)
/* 000127 0x80BD04AC 3C0580BD */ lui	$a1, %hi(D_80BD0EA0)
/* 000128 0x80BD04B0 24A50EA0 */ addiu	$a1, $a1, %lo(D_80BD0EA0)
/* 000129 0x80BD04B4 00003025 */ move	$a2, $zero
/* 000130 0x80BD04B8 0C02F717 */ jal	func_800BDC5C
/* 000131 0x80BD04BC 24840190 */ addiu	$a0, $a0, 400
/* 000132 0x80BD04C0 8FAF0018 */ lw	$t7, 0X18($sp)
/* 000133 0x80BD04C4 3C0E80BD */ lui	$t6, %hi(func_80BD04E0)
/* 000134 0x80BD04C8 25CE04E0 */ addiu	$t6, $t6, %lo(func_80BD04E0)
/* 000135 0x80BD04CC ADEE01D4 */ sw	$t6, 0X1D4($t7)
/* 000136 0x80BD04D0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000137 0x80BD04D4 27BD0018 */ addiu	$sp, $sp, 24
/* 000138 0x80BD04D8 03E00008 */ jr	$ra
/* 000139 0x80BD04DC 00000000 */ nop

glabel func_80BD04E0
/* 000140 0x80BD04E0 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000141 0x80BD04E4 AFB00018 */ sw	$s0, 0X18($sp)
/* 000142 0x80BD04E8 00808025 */ move	$s0, $a0
/* 000143 0x80BD04EC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000144 0x80BD04F0 00A03825 */ move	$a3, $a1
/* 000145 0x80BD04F4 02002025 */ move	$a0, $s0
/* 000146 0x80BD04F8 00E02825 */ move	$a1, $a3
/* 000147 0x80BD04FC 0C02E134 */ jal	func_800B84D0
/* 000148 0x80BD0500 AFA70024 */ sw	$a3, 0X24($sp)
/* 000149 0x80BD0504 10400048 */ beqz	$v0, .L_80BD0628
/* 000150 0x80BD0508 8FA70024 */ lw	$a3, 0X24($sp)
/* 000151 0x80BD050C 00E02025 */ move	$a0, $a3
/* 000152 0x80BD0510 0C04900F */ jal	func_8012403C
/* 000153 0x80BD0514 AFA70024 */ sw	$a3, 0X24($sp)
/* 000154 0x80BD0518 2401000C */ li	$at, 12
/* 000155 0x80BD051C 14410014 */ bne	$v0, $at, .L_80BD0570
/* 000156 0x80BD0520 8FA70024 */ lw	$a3, 0X24($sp)
/* 000157 0x80BD0524 86020310 */ lh	$v0, 0X310($s0)
/* 000158 0x80BD0528 00E02025 */ move	$a0, $a3
/* 000159 0x80BD052C 240515A7 */ li	$a1, 5543
/* 000160 0x80BD0530 304E0004 */ andi	$t6, $v0, 0X4
/* 000161 0x80BD0534 15C00009 */ bnez	$t6, .L_80BD055C
/* 000162 0x80BD0538 344F0004 */ ori	$t7, $v0, 0X4
/* 000163 0x80BD053C A60F0310 */ sh	$t7, 0X310($s0)
/* 000164 0x80BD0540 00E02025 */ move	$a0, $a3
/* 000165 0x80BD0544 240515A5 */ li	$a1, 5541
/* 000166 0x80BD0548 0C05462C */ jal	func_801518B0
/* 000167 0x80BD054C 02003025 */ move	$a2, $s0
/* 000168 0x80BD0550 241815A5 */ li	$t8, 5541
/* 000169 0x80BD0554 10000030 */ b	.L_80BD0618
/* 000170 0x80BD0558 A6180314 */ sh	$t8, 0X314($s0)
.L_80BD055C:
/* 000171 0x80BD055C 0C05462C */ jal	func_801518B0
/* 000172 0x80BD0560 02003025 */ move	$a2, $s0
/* 000173 0x80BD0564 241915A7 */ li	$t9, 5543
/* 000174 0x80BD0568 1000002B */ b	.L_80BD0618
/* 000175 0x80BD056C A6190314 */ sh	$t9, 0X314($s0)
.L_80BD0570:
/* 000176 0x80BD0570 3C08801F */ lui	$t0, %hi(gSaveContext + 0x20)
/* 000177 0x80BD0574 9108F690 */ lbu	$t0, %lo(gSaveContext + 0x20)($t0)
/* 000178 0x80BD0578 24010004 */ li	$at, 4
/* 000179 0x80BD057C 55010015 */ bnel	$t0, $at, .L_80BD05D4
/* 000180 0x80BD0580 86020310 */ lh	$v0, 0X310($s0)
/* 000181 0x80BD0584 86020310 */ lh	$v0, 0X310($s0)
/* 000182 0x80BD0588 00E02025 */ move	$a0, $a3
/* 000183 0x80BD058C 24051593 */ li	$a1, 5523
/* 000184 0x80BD0590 30490001 */ andi	$t1, $v0, 0X1
/* 000185 0x80BD0594 15200009 */ bnez	$t1, .L_80BD05BC
/* 000186 0x80BD0598 344A0001 */ ori	$t2, $v0, 0X1
/* 000187 0x80BD059C A60A0310 */ sh	$t2, 0X310($s0)
/* 000188 0x80BD05A0 00E02025 */ move	$a0, $a3
/* 000189 0x80BD05A4 2405158F */ li	$a1, 5519
/* 000190 0x80BD05A8 0C05462C */ jal	func_801518B0
/* 000191 0x80BD05AC 02003025 */ move	$a2, $s0
/* 000192 0x80BD05B0 240B158F */ li	$t3, 5519
/* 000193 0x80BD05B4 10000018 */ b	.L_80BD0618
/* 000194 0x80BD05B8 A60B0314 */ sh	$t3, 0X314($s0)
.L_80BD05BC:
/* 000195 0x80BD05BC 0C05462C */ jal	func_801518B0
/* 000196 0x80BD05C0 02003025 */ move	$a2, $s0
/* 000197 0x80BD05C4 240C1593 */ li	$t4, 5523
/* 000198 0x80BD05C8 10000013 */ b	.L_80BD0618
/* 000199 0x80BD05CC A60C0314 */ sh	$t4, 0X314($s0)
/* 000200 0x80BD05D0 86020310 */ lh	$v0, 0X310($s0)
.L_80BD05D4:
/* 000201 0x80BD05D4 00E02025 */ move	$a0, $a3
/* 000202 0x80BD05D8 24051598 */ li	$a1, 5528
/* 000203 0x80BD05DC 304D0002 */ andi	$t5, $v0, 0X2
/* 000204 0x80BD05E0 15A00009 */ bnez	$t5, .L_80BD0608
/* 000205 0x80BD05E4 344E0002 */ ori	$t6, $v0, 0X2
/* 000206 0x80BD05E8 A60E0310 */ sh	$t6, 0X310($s0)
/* 000207 0x80BD05EC 00E02025 */ move	$a0, $a3
/* 000208 0x80BD05F0 24051595 */ li	$a1, 5525
/* 000209 0x80BD05F4 0C05462C */ jal	func_801518B0
/* 000210 0x80BD05F8 02003025 */ move	$a2, $s0
/* 000211 0x80BD05FC 240F1595 */ li	$t7, 5525
/* 000212 0x80BD0600 10000005 */ b	.L_80BD0618
/* 000213 0x80BD0604 A60F0314 */ sh	$t7, 0X314($s0)
.L_80BD0608:
/* 000214 0x80BD0608 0C05462C */ jal	func_801518B0
/* 000215 0x80BD060C 02003025 */ move	$a2, $s0
/* 000216 0x80BD0610 24181598 */ li	$t8, 5528
/* 000217 0x80BD0614 A6180314 */ sh	$t8, 0X314($s0)
.L_80BD0618:
/* 000218 0x80BD0618 0C2F4193 */ jal	func_80BD064C
/* 000219 0x80BD061C 02002025 */ move	$a0, $s0
/* 000220 0x80BD0620 10000006 */ b	.L_80BD063C
/* 000221 0x80BD0624 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80BD0628:
/* 000222 0x80BD0628 02002025 */ move	$a0, $s0
/* 000223 0x80BD062C 00E02825 */ move	$a1, $a3
/* 000224 0x80BD0630 0C02E185 */ jal	func_800B8614
/* 000225 0x80BD0634 3C0642C8 */ lui	$a2, 0x42C8
/* 000226 0x80BD0638 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80BD063C:
/* 000227 0x80BD063C 8FB00018 */ lw	$s0, 0X18($sp)
/* 000228 0x80BD0640 27BD0020 */ addiu	$sp, $sp, 32
/* 000229 0x80BD0644 03E00008 */ jr	$ra
/* 000230 0x80BD0648 00000000 */ nop

glabel func_80BD064C
/* 000231 0x80BD064C 3C0E80BD */ lui	$t6, %hi(func_80BD0660)
/* 000232 0x80BD0650 25CE0660 */ addiu	$t6, $t6, %lo(func_80BD0660)
/* 000233 0x80BD0654 AC8E01D4 */ sw	$t6, 0X1D4($a0)
/* 000234 0x80BD0658 03E00008 */ jr	$ra
/* 000235 0x80BD065C 00000000 */ nop

glabel func_80BD0660
/* 000236 0x80BD0660 27BDFFD8 */ addiu	$sp, $sp, -40
/* 000237 0x80BD0664 AFB00020 */ sw	$s0, 0X20($sp)
/* 000238 0x80BD0668 00808025 */ move	$s0, $a0
/* 000239 0x80BD066C AFBF0024 */ sw	$ra, 0X24($sp)
/* 000240 0x80BD0670 24A44908 */ addiu	$a0, $a1, 18696
/* 000241 0x80BD0674 0C054926 */ jal	func_80152498
/* 000242 0x80BD0678 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000243 0x80BD067C 2C410007 */ sltiu	$at, $v0, 7
/* 000244 0x80BD0680 10200011 */ beqz	$at, .L_80BD06C8
/* 000245 0x80BD0684 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000246 0x80BD0688 00027080 */ sll	$t6, $v0, 2
/* 000247 0x80BD068C 3C0180BD */ lui	$at, %hi(__switch_D_80BD0F90)
/* 000248 0x80BD0690 002E0821 */ addu	$at, $at, $t6
/* 000249 0x80BD0694 8C2E0F90 */ lw	$t6, %lo(__switch_D_80BD0F90)($at)
/* 000250 0x80BD0698 01C00008 */ jr	$t6
/* 000251 0x80BD069C 00000000 */ nop
glabel .L_80BD06A0
/* 000252 0x80BD06A0 0C2F41BF */ jal	func_80BD06FC
/* 000253 0x80BD06A4 02002025 */ move	$a0, $s0
/* 000254 0x80BD06A8 10000008 */ b	.L_80BD06CC
/* 000255 0x80BD06AC 86050092 */ lh	$a1, 0X92($s0)
glabel .L_80BD06B0
/* 000256 0x80BD06B0 0C051D89 */ jal	func_80147624
/* 000257 0x80BD06B4 00A02025 */ move	$a0, $a1
/* 000258 0x80BD06B8 50400004 */ beqzl	$v0, .L_80BD06CC
/* 000259 0x80BD06BC 86050092 */ lh	$a1, 0X92($s0)
/* 000260 0x80BD06C0 0C2F4127 */ jal	func_80BD049C
/* 000261 0x80BD06C4 02002025 */ move	$a0, $s0
glabel .L_80BD06C8
/* 000262 0x80BD06C8 86050092 */ lh	$a1, 0X92($s0)
.L_80BD06CC:
/* 000263 0x80BD06CC 240F00B6 */ li	$t7, 182
/* 000264 0x80BD06D0 AFAF0010 */ sw	$t7, 0X10($sp)
/* 000265 0x80BD06D4 26040032 */ addiu	$a0, $s0, 50
/* 000266 0x80BD06D8 2406000A */ li	$a2, 10
/* 000267 0x80BD06DC 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000268 0x80BD06E0 2407071C */ li	$a3, 1820
/* 000269 0x80BD06E4 86180032 */ lh	$t8, 0X32($s0)
/* 000270 0x80BD06E8 A61800BE */ sh	$t8, 0XBE($s0)
/* 000271 0x80BD06EC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000272 0x80BD06F0 8FB00020 */ lw	$s0, 0X20($sp)
/* 000273 0x80BD06F4 03E00008 */ jr	$ra
/* 000274 0x80BD06F8 27BD0028 */ addiu	$sp, $sp, 40

glabel func_80BD06FC
/* 000275 0x80BD06FC 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000276 0x80BD0700 AFB00018 */ sw	$s0, 0X18($sp)
/* 000277 0x80BD0704 00808025 */ move	$s0, $a0
/* 000278 0x80BD0708 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000279 0x80BD070C 00A03825 */ move	$a3, $a1
/* 000280 0x80BD0710 00E02025 */ move	$a0, $a3
/* 000281 0x80BD0714 0C051D89 */ jal	func_80147624
/* 000282 0x80BD0718 AFA70024 */ sw	$a3, 0X24($sp)
/* 000283 0x80BD071C 10400059 */ beqz	$v0, .L_80BD0884
/* 000284 0x80BD0720 8FA70024 */ lw	$a3, 0X24($sp)
/* 000285 0x80BD0724 960E0314 */ lhu	$t6, 0X314($s0)
/* 000286 0x80BD0728 25CFEA71 */ addiu	$t7, $t6, -5519
/* 000287 0x80BD072C 2DE10019 */ sltiu	$at, $t7, 25
/* 000288 0x80BD0730 10200054 */ beqz	$at, .L_80BD0884
/* 000289 0x80BD0734 000F7880 */ sll	$t7, $t7, 2
/* 000290 0x80BD0738 3C0180BD */ lui	$at, %hi(__switch_D_80BD0FAC)
/* 000291 0x80BD073C 002F0821 */ addu	$at, $at, $t7
/* 000292 0x80BD0740 8C2F0FAC */ lw	$t7, %lo(__switch_D_80BD0FAC)($at)
/* 000293 0x80BD0744 01E00008 */ jr	$t7
/* 000294 0x80BD0748 00000000 */ nop
glabel .L_80BD074C
/* 000295 0x80BD074C 00E02025 */ move	$a0, $a3
/* 000296 0x80BD0750 24051590 */ li	$a1, 5520
/* 000297 0x80BD0754 0C05462C */ jal	func_801518B0
/* 000298 0x80BD0758 02003025 */ move	$a2, $s0
/* 000299 0x80BD075C 24181590 */ li	$t8, 5520
/* 000300 0x80BD0760 10000048 */ b	.L_80BD0884
/* 000301 0x80BD0764 A6180314 */ sh	$t8, 0X314($s0)
glabel .L_80BD0768
/* 000302 0x80BD0768 3C19801F */ lui	$t9, %hi(gSaveContext + 0xF06)
/* 000303 0x80BD076C 93390576 */ lbu	$t9, %lo(gSaveContext + 0xF06)($t9)
/* 000304 0x80BD0770 02003025 */ move	$a2, $s0
/* 000305 0x80BD0774 00E02025 */ move	$a0, $a3
/* 000306 0x80BD0778 33280004 */ andi	$t0, $t9, 0X4
/* 000307 0x80BD077C 11000007 */ beqz	$t0, .L_80BD079C
/* 000308 0x80BD0780 24051592 */ li	$a1, 5522
/* 000309 0x80BD0784 00E02025 */ move	$a0, $a3
/* 000310 0x80BD0788 0C05462C */ jal	func_801518B0
/* 000311 0x80BD078C 24051591 */ li	$a1, 5521
/* 000312 0x80BD0790 24091591 */ li	$t1, 5521
/* 000313 0x80BD0794 1000003B */ b	.L_80BD0884
/* 000314 0x80BD0798 A6090314 */ sh	$t1, 0X314($s0)
.L_80BD079C:
/* 000315 0x80BD079C 0C05462C */ jal	func_801518B0
/* 000316 0x80BD07A0 02003025 */ move	$a2, $s0
/* 000317 0x80BD07A4 240A1592 */ li	$t2, 5522
/* 000318 0x80BD07A8 10000036 */ b	.L_80BD0884
/* 000319 0x80BD07AC A60A0314 */ sh	$t2, 0X314($s0)
glabel .L_80BD07B0
/* 000320 0x80BD07B0 00E02025 */ move	$a0, $a3
/* 000321 0x80BD07B4 24051592 */ li	$a1, 5522
/* 000322 0x80BD07B8 0C05462C */ jal	func_801518B0
/* 000323 0x80BD07BC 02003025 */ move	$a2, $s0
/* 000324 0x80BD07C0 240B1592 */ li	$t3, 5522
/* 000325 0x80BD07C4 1000002F */ b	.L_80BD0884
/* 000326 0x80BD07C8 A60B0314 */ sh	$t3, 0X314($s0)
glabel .L_80BD07CC
/* 000327 0x80BD07CC 00E02025 */ move	$a0, $a3
/* 000328 0x80BD07D0 24051594 */ li	$a1, 5524
/* 000329 0x80BD07D4 0C05462C */ jal	func_801518B0
/* 000330 0x80BD07D8 02003025 */ move	$a2, $s0
/* 000331 0x80BD07DC 240C1594 */ li	$t4, 5524
/* 000332 0x80BD07E0 10000028 */ b	.L_80BD0884
/* 000333 0x80BD07E4 A60C0314 */ sh	$t4, 0X314($s0)
glabel .L_80BD07E8
/* 000334 0x80BD07E8 00E02025 */ move	$a0, $a3
/* 000335 0x80BD07EC 24051596 */ li	$a1, 5526
/* 000336 0x80BD07F0 0C05462C */ jal	func_801518B0
/* 000337 0x80BD07F4 02003025 */ move	$a2, $s0
/* 000338 0x80BD07F8 240D1596 */ li	$t5, 5526
/* 000339 0x80BD07FC 10000021 */ b	.L_80BD0884
/* 000340 0x80BD0800 A60D0314 */ sh	$t5, 0X314($s0)
glabel .L_80BD0804
/* 000341 0x80BD0804 00E02025 */ move	$a0, $a3
/* 000342 0x80BD0808 24051597 */ li	$a1, 5527
/* 000343 0x80BD080C 0C05462C */ jal	func_801518B0
/* 000344 0x80BD0810 02003025 */ move	$a2, $s0
/* 000345 0x80BD0814 240E1597 */ li	$t6, 5527
/* 000346 0x80BD0818 1000001A */ b	.L_80BD0884
/* 000347 0x80BD081C A60E0314 */ sh	$t6, 0X314($s0)
glabel .L_80BD0820
/* 000348 0x80BD0820 00E02025 */ move	$a0, $a3
/* 000349 0x80BD0824 24051599 */ li	$a1, 5529
/* 000350 0x80BD0828 0C05462C */ jal	func_801518B0
/* 000351 0x80BD082C 02003025 */ move	$a2, $s0
/* 000352 0x80BD0830 240F1599 */ li	$t7, 5529
/* 000353 0x80BD0834 10000013 */ b	.L_80BD0884
/* 000354 0x80BD0838 A60F0314 */ sh	$t7, 0X314($s0)
glabel .L_80BD083C
/* 000355 0x80BD083C 00E02025 */ move	$a0, $a3
/* 000356 0x80BD0840 240515A6 */ li	$a1, 5542
/* 000357 0x80BD0844 0C05462C */ jal	func_801518B0
/* 000358 0x80BD0848 02003025 */ move	$a2, $s0
/* 000359 0x80BD084C 241815A6 */ li	$t8, 5542
/* 000360 0x80BD0850 1000000C */ b	.L_80BD0884
/* 000361 0x80BD0854 A6180314 */ sh	$t8, 0X314($s0)
glabel .L_80BD0858
/* 000362 0x80BD0858 00E02025 */ move	$a0, $a3
/* 000363 0x80BD085C 240515A7 */ li	$a1, 5543
/* 000364 0x80BD0860 0C05462C */ jal	func_801518B0
/* 000365 0x80BD0864 02003025 */ move	$a2, $s0
/* 000366 0x80BD0868 241915A7 */ li	$t9, 5543
/* 000367 0x80BD086C 10000005 */ b	.L_80BD0884
/* 000368 0x80BD0870 A6190314 */ sh	$t9, 0X314($s0)
glabel .L_80BD0874
/* 000369 0x80BD0874 0C051DED */ jal	func_801477B4
/* 000370 0x80BD0878 00E02025 */ move	$a0, $a3
/* 000371 0x80BD087C 0C2F4127 */ jal	func_80BD049C
/* 000372 0x80BD0880 02002025 */ move	$a0, $s0
glabel .L_80BD0884
/* 000373 0x80BD0884 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000374 0x80BD0888 8FB00018 */ lw	$s0, 0X18($sp)
/* 000375 0x80BD088C 27BD0020 */ addiu	$sp, $sp, 32
/* 000376 0x80BD0890 03E00008 */ jr	$ra
/* 000377 0x80BD0894 00000000 */ nop

glabel func_80BD0898
/* 000378 0x80BD0898 27BDFFB8 */ addiu	$sp, $sp, -72
/* 000379 0x80BD089C AFB00030 */ sw	$s0, 0X30($sp)
/* 000380 0x80BD08A0 00808025 */ move	$s0, $a0
/* 000381 0x80BD08A4 AFBF0034 */ sw	$ra, 0X34($sp)
/* 000382 0x80BD08A8 AFA5004C */ sw	$a1, 0X4C($sp)
/* 000383 0x80BD08AC 8FA4004C */ lw	$a0, 0X4C($sp)
/* 000384 0x80BD08B0 0C03B8A7 */ jal	func_800EE29C
/* 000385 0x80BD08B4 240501E6 */ li	$a1, 486
/* 000386 0x80BD08B8 1040008D */ beqz	$v0, .L_80BD0AF0
/* 000387 0x80BD08BC 8FAD004C */ lw	$t5, 0X4C($sp)
/* 000388 0x80BD08C0 8FA4004C */ lw	$a0, 0X4C($sp)
/* 000389 0x80BD08C4 0C03B880 */ jal	func_800EE200
/* 000390 0x80BD08C8 240501E6 */ li	$a1, 486
/* 000391 0x80BD08CC 8FAE004C */ lw	$t6, 0X4C($sp)
/* 000392 0x80BD08D0 00027880 */ sll	$t7, $v0, 2
/* 000393 0x80BD08D4 AFA20044 */ sw	$v0, 0X44($sp)
/* 000394 0x80BD08D8 01CF1821 */ addu	$v1, $t6, $t7
/* 000395 0x80BD08DC 8C781F4C */ lw	$t8, 0X1F4C($v1)
/* 000396 0x80BD08E0 96190316 */ lhu	$t9, 0X316($s0)
/* 000397 0x80BD08E4 97040000 */ lhu	$a0, 0X0($t8)
/* 000398 0x80BD08E8 53240046 */ beql	$t9, $a0, .L_80BD0A04
/* 000399 0x80BD08EC 26040190 */ addiu	$a0, $s0, 400
/* 000400 0x80BD08F0 A6040316 */ sh	$a0, 0X316($s0)
/* 000401 0x80BD08F4 8C681F4C */ lw	$t0, 0X1F4C($v1)
/* 000402 0x80BD08F8 95090000 */ lhu	$t1, 0X0($t0)
/* 000403 0x80BD08FC 252AFFFF */ addiu	$t2, $t1, -1
/* 000404 0x80BD0900 2D410006 */ sltiu	$at, $t2, 6
/* 000405 0x80BD0904 10200074 */ beqz	$at, .L_80BD0AD8
/* 000406 0x80BD0908 000A5080 */ sll	$t2, $t2, 2
/* 000407 0x80BD090C 3C0180BD */ lui	$at, %hi(__switch_D_80BD1010)
/* 000408 0x80BD0910 002A0821 */ addu	$at, $at, $t2
/* 000409 0x80BD0914 8C2A1010 */ lw	$t2, %lo(__switch_D_80BD1010)($at)
/* 000410 0x80BD0918 01400008 */ jr	$t2
/* 000411 0x80BD091C 00000000 */ nop
glabel .L_80BD0920
/* 000412 0x80BD0920 3C0580BD */ lui	$a1, %hi(D_80BD0EA0)
/* 000413 0x80BD0924 AE000218 */ sw	$zero, 0X218($s0)
/* 000414 0x80BD0928 24A50EA0 */ addiu	$a1, $a1, %lo(D_80BD0EA0)
/* 000415 0x80BD092C 26040190 */ addiu	$a0, $s0, 400
/* 000416 0x80BD0930 0C02F717 */ jal	func_800BDC5C
/* 000417 0x80BD0934 00003025 */ move	$a2, $zero
/* 000418 0x80BD0938 10000068 */ b	.L_80BD0ADC
/* 000419 0x80BD093C 02002025 */ move	$a0, $s0
glabel .L_80BD0940
/* 000420 0x80BD0940 3C0B80BD */ lui	$t3, %hi(EnHgo_Draw)
/* 000421 0x80BD0944 256B0D7C */ addiu	$t3, $t3, %lo(EnHgo_Draw)
/* 000422 0x80BD0948 240C0001 */ li	$t4, 1
/* 000423 0x80BD094C 3C0580BD */ lui	$a1, %hi(D_80BD0EA0)
/* 000424 0x80BD0950 AE0B013C */ sw	$t3, 0X13C($s0)
/* 000425 0x80BD0954 AE0C0218 */ sw	$t4, 0X218($s0)
/* 000426 0x80BD0958 24A50EA0 */ addiu	$a1, $a1, %lo(D_80BD0EA0)
/* 000427 0x80BD095C 26040190 */ addiu	$a0, $s0, 400
/* 000428 0x80BD0960 0C02F717 */ jal	func_800BDC5C
/* 000429 0x80BD0964 24060001 */ li	$a2, 1
/* 000430 0x80BD0968 1000005C */ b	.L_80BD0ADC
/* 000431 0x80BD096C 02002025 */ move	$a0, $s0
glabel .L_80BD0970
/* 000432 0x80BD0970 240D0002 */ li	$t5, 2
/* 000433 0x80BD0974 3C0580BD */ lui	$a1, %hi(D_80BD0EA0)
/* 000434 0x80BD0978 AE0D0218 */ sw	$t5, 0X218($s0)
/* 000435 0x80BD097C 24A50EA0 */ addiu	$a1, $a1, %lo(D_80BD0EA0)
/* 000436 0x80BD0980 26040190 */ addiu	$a0, $s0, 400
/* 000437 0x80BD0984 0C02F717 */ jal	func_800BDC5C
/* 000438 0x80BD0988 24060002 */ li	$a2, 2
/* 000439 0x80BD098C 10000053 */ b	.L_80BD0ADC
/* 000440 0x80BD0990 02002025 */ move	$a0, $s0
glabel .L_80BD0994
/* 000441 0x80BD0994 240E0003 */ li	$t6, 3
/* 000442 0x80BD0998 3C0580BD */ lui	$a1, %hi(D_80BD0EA0)
/* 000443 0x80BD099C AE0E0218 */ sw	$t6, 0X218($s0)
/* 000444 0x80BD09A0 24A50EA0 */ addiu	$a1, $a1, %lo(D_80BD0EA0)
/* 000445 0x80BD09A4 26040190 */ addiu	$a0, $s0, 400
/* 000446 0x80BD09A8 0C02F717 */ jal	func_800BDC5C
/* 000447 0x80BD09AC 24060003 */ li	$a2, 3
/* 000448 0x80BD09B0 1000004A */ b	.L_80BD0ADC
/* 000449 0x80BD09B4 02002025 */ move	$a0, $s0
glabel .L_80BD09B8
/* 000450 0x80BD09B8 240F0004 */ li	$t7, 4
/* 000451 0x80BD09BC 3C0580BD */ lui	$a1, %hi(D_80BD0EA0)
/* 000452 0x80BD09C0 AE0F0218 */ sw	$t7, 0X218($s0)
/* 000453 0x80BD09C4 24A50EA0 */ addiu	$a1, $a1, %lo(D_80BD0EA0)
/* 000454 0x80BD09C8 26040190 */ addiu	$a0, $s0, 400
/* 000455 0x80BD09CC 0C02F717 */ jal	func_800BDC5C
/* 000456 0x80BD09D0 24060004 */ li	$a2, 4
/* 000457 0x80BD09D4 10000041 */ b	.L_80BD0ADC
/* 000458 0x80BD09D8 02002025 */ move	$a0, $s0
glabel .L_80BD09DC
/* 000459 0x80BD09DC 24180005 */ li	$t8, 5
/* 000460 0x80BD09E0 3C0580BD */ lui	$a1, %hi(D_80BD0EA0)
/* 000461 0x80BD09E4 AE180218 */ sw	$t8, 0X218($s0)
/* 000462 0x80BD09E8 24A50EA0 */ addiu	$a1, $a1, %lo(D_80BD0EA0)
/* 000463 0x80BD09EC 26040190 */ addiu	$a0, $s0, 400
/* 000464 0x80BD09F0 0C02F717 */ jal	func_800BDC5C
/* 000465 0x80BD09F4 24060005 */ li	$a2, 5
/* 000466 0x80BD09F8 10000038 */ b	.L_80BD0ADC
/* 000467 0x80BD09FC 02002025 */ move	$a0, $s0
/* 000468 0x80BD0A00 26040190 */ addiu	$a0, $s0, 400
.L_80BD0A04:
/* 000469 0x80BD0A04 8E0501A0 */ lw	$a1, 0X1A0($s0)
/* 000470 0x80BD0A08 0C04DE2E */ jal	func_801378B8
/* 000471 0x80BD0A0C AFA4003C */ sw	$a0, 0X3C($sp)
/* 000472 0x80BD0A10 10400031 */ beqz	$v0, .L_80BD0AD8
/* 000473 0x80BD0A14 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000474 0x80BD0A18 8E020218 */ lw	$v0, 0X218($s0)
/* 000475 0x80BD0A1C 24010001 */ li	$at, 1
/* 000476 0x80BD0A20 10410008 */ beq	$v0, $at, .L_80BD0A44
/* 000477 0x80BD0A24 24010002 */ li	$at, 2
/* 000478 0x80BD0A28 1041001F */ beq	$v0, $at, .L_80BD0AA8
/* 000479 0x80BD0A2C 240B0003 */ li	$t3, 3
/* 000480 0x80BD0A30 24010005 */ li	$at, 5
/* 000481 0x80BD0A34 10410023 */ beq	$v0, $at, .L_80BD0AC4
/* 000482 0x80BD0A38 240C0006 */ li	$t4, 6
/* 000483 0x80BD0A3C 10000027 */ b	.L_80BD0ADC
/* 000484 0x80BD0A40 02002025 */ move	$a0, $s0
.L_80BD0A44:
/* 000485 0x80BD0A44 0C04DE2E */ jal	func_801378B8
/* 000486 0x80BD0A48 8E0501A0 */ lw	$a1, 0X1A0($s0)
/* 000487 0x80BD0A4C 50400023 */ beqzl	$v0, .L_80BD0ADC
/* 000488 0x80BD0A50 02002025 */ move	$a0, $s0
/* 000489 0x80BD0A54 86190312 */ lh	$t9, 0X312($s0)
/* 000490 0x80BD0A58 24080001 */ li	$t0, 1
/* 000491 0x80BD0A5C 3C09801F */ lui	$t1, %hi(gSaveContext + 0x3CAC)
/* 000492 0x80BD0A60 5720001E */ bnezl	$t9, .L_80BD0ADC
/* 000493 0x80BD0A64 02002025 */ move	$a0, $s0
/* 000494 0x80BD0A68 A6080312 */ sh	$t0, 0X312($s0)
/* 000495 0x80BD0A6C 8D29331C */ lw	$t1, %lo(gSaveContext + 0x3CAC)($t1)
/* 000496 0x80BD0A70 8FAA004C */ lw	$t2, 0X4C($sp)
/* 000497 0x80BD0A74 55200019 */ bnezl	$t1, .L_80BD0ADC
/* 000498 0x80BD0A78 02002025 */ move	$a0, $s0
/* 000499 0x80BD0A7C 95421F36 */ lhu	$v0, 0X1F36($t2)
/* 000500 0x80BD0A80 24010002 */ li	$at, 2
/* 000501 0x80BD0A84 02002025 */ move	$a0, $s0
/* 000502 0x80BD0A88 10410003 */ beq	$v0, $at, .L_80BD0A98
/* 000503 0x80BD0A8C 24010004 */ li	$at, 4
/* 000504 0x80BD0A90 54410012 */ bnel	$v0, $at, .L_80BD0ADC
/* 000505 0x80BD0A94 02002025 */ move	$a0, $s0
.L_80BD0A98:
/* 000506 0x80BD0A98 0C02E3B2 */ jal	func_800B8EC8
/* 000507 0x80BD0A9C 24056961 */ li	$a1, 26977
/* 000508 0x80BD0AA0 1000000E */ b	.L_80BD0ADC
/* 000509 0x80BD0AA4 02002025 */ move	$a0, $s0
.L_80BD0AA8:
/* 000510 0x80BD0AA8 3C0580BD */ lui	$a1, %hi(D_80BD0EA0)
/* 000511 0x80BD0AAC AE0B0218 */ sw	$t3, 0X218($s0)
/* 000512 0x80BD0AB0 24A50EA0 */ addiu	$a1, $a1, %lo(D_80BD0EA0)
/* 000513 0x80BD0AB4 0C02F717 */ jal	func_800BDC5C
/* 000514 0x80BD0AB8 24060003 */ li	$a2, 3
/* 000515 0x80BD0ABC 10000007 */ b	.L_80BD0ADC
/* 000516 0x80BD0AC0 02002025 */ move	$a0, $s0
.L_80BD0AC4:
/* 000517 0x80BD0AC4 3C0580BD */ lui	$a1, %hi(D_80BD0EA0)
/* 000518 0x80BD0AC8 AE0C0218 */ sw	$t4, 0X218($s0)
/* 000519 0x80BD0ACC 24A50EA0 */ addiu	$a1, $a1, %lo(D_80BD0EA0)
/* 000520 0x80BD0AD0 0C02F717 */ jal	func_800BDC5C
/* 000521 0x80BD0AD4 24060006 */ li	$a2, 6
.L_80BD0AD8:
/* 000522 0x80BD0AD8 02002025 */ move	$a0, $s0
.L_80BD0ADC:
/* 000523 0x80BD0ADC 8FA5004C */ lw	$a1, 0X4C($sp)
/* 000524 0x80BD0AE0 0C03B7C9 */ jal	func_800EDF24
/* 000525 0x80BD0AE4 8FA60044 */ lw	$a2, 0X44($sp)
/* 000526 0x80BD0AE8 10000023 */ b	.L_80BD0B78
/* 000527 0x80BD0AEC 24020001 */ li	$v0, 1
.L_80BD0AF0:
/* 000528 0x80BD0AF0 91AE1F2C */ lbu	$t6, 0X1F2C($t5)
/* 000529 0x80BD0AF4 3C0F801F */ lui	$t7, %hi(gSaveContext + 0xF43)
/* 000530 0x80BD0AF8 55C0001D */ bnezl	$t6, .L_80BD0B70
/* 000531 0x80BD0AFC 240D0063 */ li	$t5, 99
/* 000532 0x80BD0B00 91EF05B3 */ lbu	$t7, %lo(gSaveContext + 0xF43)($t7)
/* 000533 0x80BD0B04 31F80020 */ andi	$t8, $t7, 0X20
/* 000534 0x80BD0B08 53000019 */ beqzl	$t8, .L_80BD0B70
/* 000535 0x80BD0B0C 240D0063 */ li	$t5, 99
/* 000536 0x80BD0B10 8E0801D4 */ lw	$t0, 0X1D4($s0)
/* 000537 0x80BD0B14 3C1980BD */ lui	$t9, %hi(func_80BD0410)
/* 000538 0x80BD0B18 27390410 */ addiu	$t9, $t9, %lo(func_80BD0410)
/* 000539 0x80BD0B1C 17280013 */ bne	$t9, $t0, .L_80BD0B6C
/* 000540 0x80BD0B20 240600C6 */ li	$a2, 198
/* 000541 0x80BD0B24 86090032 */ lh	$t1, 0X32($s0)
/* 000542 0x80BD0B28 C6040040 */ lwc1	$f4, 0X40($s0)
/* 000543 0x80BD0B2C 8E07003C */ lw	$a3, 0X3C($s0)
/* 000544 0x80BD0B30 A60900BE */ sh	$t1, 0XBE($s0)
/* 000545 0x80BD0B34 E7A40010 */ swc1	$f4, 0X10($sp)
/* 000546 0x80BD0B38 C6060044 */ lwc1	$f6, 0X44($s0)
/* 000547 0x80BD0B3C 8FA5004C */ lw	$a1, 0X4C($sp)
/* 000548 0x80BD0B40 240B0007 */ li	$t3, 7
/* 000549 0x80BD0B44 240C7F5A */ li	$t4, 32602
/* 000550 0x80BD0B48 AFAC0024 */ sw	$t4, 0X24($sp)
/* 000551 0x80BD0B4C AFAB0018 */ sw	$t3, 0X18($sp)
/* 000552 0x80BD0B50 AFA00020 */ sw	$zero, 0X20($sp)
/* 000553 0x80BD0B54 AFA0001C */ sw	$zero, 0X1C($sp)
/* 000554 0x80BD0B58 E7A60014 */ swc1	$f6, 0X14($sp)
/* 000555 0x80BD0B5C 0C02EB18 */ jal	Actor_Spawn
/* 000556 0x80BD0B60 24A41CA0 */ addiu	$a0, $a1, 7328
/* 000557 0x80BD0B64 0C2F4108 */ jal	func_80BD0420
/* 000558 0x80BD0B68 02002025 */ move	$a0, $s0
.L_80BD0B6C:
/* 000559 0x80BD0B6C 240D0063 */ li	$t5, 99
.L_80BD0B70:
/* 000560 0x80BD0B70 A60D0316 */ sh	$t5, 0X316($s0)
/* 000561 0x80BD0B74 00001025 */ move	$v0, $zero
.L_80BD0B78:
/* 000562 0x80BD0B78 8FBF0034 */ lw	$ra, 0X34($sp)
/* 000563 0x80BD0B7C 8FB00030 */ lw	$s0, 0X30($sp)
/* 000564 0x80BD0B80 27BD0048 */ addiu	$sp, $sp, 72
/* 000565 0x80BD0B84 03E00008 */ jr	$ra
/* 000566 0x80BD0B88 00000000 */ nop

glabel func_80BD0B8C
/* 000567 0x80BD0B8C 27BDFFD8 */ addiu	$sp, $sp, -40
/* 000568 0x80BD0B90 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000569 0x80BD0B94 00802825 */ move	$a1, $a0
/* 000570 0x80BD0B98 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000571 0x80BD0B9C AFA40028 */ sw	$a0, 0X28($sp)
/* 000572 0x80BD0BA0 8CAF003C */ lw	$t7, 0X3C($a1)
/* 000573 0x80BD0BA4 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000574 0x80BD0BA8 24A60300 */ addiu	$a2, $a1, 768
/* 000575 0x80BD0BAC AFAF0010 */ sw	$t7, 0X10($sp)
/* 000576 0x80BD0BB0 8CAE0040 */ lw	$t6, 0X40($a1)
/* 000577 0x80BD0BB4 24A70306 */ addiu	$a3, $a1, 774
/* 000578 0x80BD0BB8 AFAE0014 */ sw	$t6, 0X14($sp)
/* 000579 0x80BD0BBC 8CAF0044 */ lw	$t7, 0X44($a1)
/* 000580 0x80BD0BC0 AFA50028 */ sw	$a1, 0X28($sp)
/* 000581 0x80BD0BC4 0C03A494 */ jal	func_800E9250
/* 000582 0x80BD0BC8 AFAF0018 */ sw	$t7, 0X18($sp)
/* 000583 0x80BD0BCC 8FA50028 */ lw	$a1, 0X28($sp)
/* 000584 0x80BD0BD0 24030002 */ li	$v1, 2
/* 000585 0x80BD0BD4 84A2030E */ lh	$v0, 0X30E($a1)
/* 000586 0x80BD0BD8 28410003 */ slti	$at, $v0, 3
/* 000587 0x80BD0BDC 14200003 */ bnez	$at, .L_80BD0BEC
/* 000588 0x80BD0BE0 2458FFFF */ addiu	$t8, $v0, -1
/* 000589 0x80BD0BE4 1000000E */ b	.L_80BD0C20
/* 000590 0x80BD0BE8 A4B8030E */ sh	$t8, 0X30E($a1)
.L_80BD0BEC:
/* 000591 0x80BD0BEC 14620005 */ bne	$v1, $v0, .L_80BD0C04
/* 000592 0x80BD0BF0 24040001 */ li	$a0, 1
/* 000593 0x80BD0BF4 24040001 */ li	$a0, 1
/* 000594 0x80BD0BF8 A4A4030C */ sh	$a0, 0X30C($a1)
/* 000595 0x80BD0BFC 10000008 */ b	.L_80BD0C20
/* 000596 0x80BD0C00 A4A4030E */ sh	$a0, 0X30E($a1)
.L_80BD0C04:
/* 000597 0x80BD0C04 14820004 */ bne	$a0, $v0, .L_80BD0C18
/* 000598 0x80BD0C08 2419003C */ li	$t9, 60
/* 000599 0x80BD0C0C A4A3030C */ sh	$v1, 0X30C($a1)
/* 000600 0x80BD0C10 10000003 */ b	.L_80BD0C20
/* 000601 0x80BD0C14 A4A0030E */ sh	$zero, 0X30E($a1)
.L_80BD0C18:
/* 000602 0x80BD0C18 A4A0030C */ sh	$zero, 0X30C($a1)
/* 000603 0x80BD0C1C A4B9030E */ sh	$t9, 0X30E($a1)
.L_80BD0C20:
/* 000604 0x80BD0C20 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000605 0x80BD0C24 27BD0028 */ addiu	$sp, $sp, 40
/* 000606 0x80BD0C28 03E00008 */ jr	$ra
/* 000607 0x80BD0C2C 00000000 */ nop

glabel EnHgo_Update
/* 000608 0x80BD0C30 27BDFFD0 */ addiu	$sp, $sp, -48
/* 000609 0x80BD0C34 AFB10018 */ sw	$s1, 0X18($sp)
/* 000610 0x80BD0C38 AFB00014 */ sw	$s0, 0X14($sp)
/* 000611 0x80BD0C3C 00808025 */ move	$s0, $a0
/* 000612 0x80BD0C40 00A08825 */ move	$s1, $a1
/* 000613 0x80BD0C44 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000614 0x80BD0C48 8E1901D4 */ lw	$t9, 0X1D4($s0)
/* 000615 0x80BD0C4C 02002025 */ move	$a0, $s0
/* 000616 0x80BD0C50 02202825 */ move	$a1, $s1
/* 000617 0x80BD0C54 0320F809 */ jalr	$t9
/* 000618 0x80BD0C58 00000000 */ nop
/* 000619 0x80BD0C5C 0C04DB34 */ jal	func_80136CD0
/* 000620 0x80BD0C60 26040190 */ addiu	$a0, $s0, 400
/* 000621 0x80BD0C64 02002025 */ move	$a0, $s0
/* 000622 0x80BD0C68 0C2F4226 */ jal	func_80BD0898
/* 000623 0x80BD0C6C 02202825 */ move	$a1, $s1
/* 000624 0x80BD0C70 10400005 */ beqz	$v0, .L_80BD0C88
/* 000625 0x80BD0C74 26040300 */ addiu	$a0, $s0, 768
/* 000626 0x80BD0C78 0C03A3C2 */ jal	func_800E8F08
/* 000627 0x80BD0C7C 26050306 */ addiu	$a1, $s0, 774
/* 000628 0x80BD0C80 10000017 */ b	.L_80BD0CE0
/* 000629 0x80BD0C84 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80BD0C88:
/* 000630 0x80BD0C88 8E0201D4 */ lw	$v0, 0X1D4($s0)
/* 000631 0x80BD0C8C 3C0E80BD */ lui	$t6, %hi(func_80BD0410)
/* 000632 0x80BD0C90 25CE0410 */ addiu	$t6, $t6, %lo(func_80BD0410)
/* 000633 0x80BD0C94 11C20011 */ beq	$t6, $v0, .L_80BD0CDC
/* 000634 0x80BD0C98 3C0F80BD */ lui	$t7, %hi(func_80BD0434)
/* 000635 0x80BD0C9C 25EF0434 */ addiu	$t7, $t7, %lo(func_80BD0434)
/* 000636 0x80BD0CA0 11E2000E */ beq	$t7, $v0, .L_80BD0CDC
/* 000637 0x80BD0CA4 02002025 */ move	$a0, $s0
/* 000638 0x80BD0CA8 26060144 */ addiu	$a2, $s0, 324
/* 000639 0x80BD0CAC 00C02825 */ move	$a1, $a2
/* 000640 0x80BD0CB0 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000641 0x80BD0CB4 AFA60024 */ sw	$a2, 0X24($sp)
/* 000642 0x80BD0CB8 3C010001 */ lui	$at, 0x0001
/* 000643 0x80BD0CBC 34218884 */ ori	$at, $at, 0X8884
/* 000644 0x80BD0CC0 8FA60024 */ lw	$a2, 0X24($sp)
/* 000645 0x80BD0CC4 02212821 */ addu	$a1, $s1, $at
/* 000646 0x80BD0CC8 0C038A4A */ jal	Collision_AddOT
/* 000647 0x80BD0CCC 02202025 */ move	$a0, $s1
/* 000648 0x80BD0CD0 02002025 */ move	$a0, $s0
/* 000649 0x80BD0CD4 0C2F42E3 */ jal	func_80BD0B8C
/* 000650 0x80BD0CD8 02202825 */ move	$a1, $s1
.L_80BD0CDC:
/* 000651 0x80BD0CDC 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80BD0CE0:
/* 000652 0x80BD0CE0 8FB00014 */ lw	$s0, 0X14($sp)
/* 000653 0x80BD0CE4 8FB10018 */ lw	$s1, 0X18($sp)
/* 000654 0x80BD0CE8 03E00008 */ jr	$ra
/* 000655 0x80BD0CEC 27BD0030 */ addiu	$sp, $sp, 48

glabel func_80BD0CF0
/* 000656 0x80BD0CF0 AFA40000 */ sw	$a0, 0X0($sp)
/* 000657 0x80BD0CF4 AFA60008 */ sw	$a2, 0X8($sp)
/* 000658 0x80BD0CF8 AFA7000C */ sw	$a3, 0XC($sp)
/* 000659 0x80BD0CFC 2401000B */ li	$at, 11
/* 000660 0x80BD0D00 14A1000A */ bne	$a1, $at, .L_80BD0D2C
/* 000661 0x80BD0D04 8FA20014 */ lw	$v0, 0X14($sp)
/* 000662 0x80BD0D08 8FA30010 */ lw	$v1, 0X10($sp)
/* 000663 0x80BD0D0C 844F0302 */ lh	$t7, 0X302($v0)
/* 000664 0x80BD0D10 846E0000 */ lh	$t6, 0X0($v1)
/* 000665 0x80BD0D14 84790004 */ lh	$t9, 0X4($v1)
/* 000666 0x80BD0D18 01CFC021 */ addu	$t8, $t6, $t7
/* 000667 0x80BD0D1C A4780000 */ sh	$t8, 0X0($v1)
/* 000668 0x80BD0D20 84480300 */ lh	$t0, 0X300($v0)
/* 000669 0x80BD0D24 03284821 */ addu	$t1, $t9, $t0
/* 000670 0x80BD0D28 A4690004 */ sh	$t1, 0X4($v1)
.L_80BD0D2C:
/* 000671 0x80BD0D2C 00001025 */ move	$v0, $zero
/* 000672 0x80BD0D30 03E00008 */ jr	$ra
/* 000673 0x80BD0D34 00000000 */ nop

glabel func_80BD0D38
/* 000674 0x80BD0D38 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000675 0x80BD0D3C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000676 0x80BD0D40 AFA40018 */ sw	$a0, 0X18($sp)
/* 000677 0x80BD0D44 AFA60020 */ sw	$a2, 0X20($sp)
/* 000678 0x80BD0D48 AFA70024 */ sw	$a3, 0X24($sp)
/* 000679 0x80BD0D4C 2401000B */ li	$at, 11
/* 000680 0x80BD0D50 14A10006 */ bne	$a1, $at, .L_80BD0D6C
/* 000681 0x80BD0D54 8FA40028 */ lw	$a0, 0X28($sp)
/* 000682 0x80BD0D58 0C06007A */ jal	SysMatrix_CopyCurrentState
/* 000683 0x80BD0D5C 248401D8 */ addiu	$a0, $a0, 472
/* 000684 0x80BD0D60 8FA40028 */ lw	$a0, 0X28($sp)
/* 000685 0x80BD0D64 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 000686 0x80BD0D68 2484003C */ addiu	$a0, $a0, 60
.L_80BD0D6C:
/* 000687 0x80BD0D6C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000688 0x80BD0D70 27BD0018 */ addiu	$sp, $sp, 24
/* 000689 0x80BD0D74 03E00008 */ jr	$ra
/* 000690 0x80BD0D78 00000000 */ nop

glabel EnHgo_Draw
/* 000691 0x80BD0D7C 27BDFFC0 */ addiu	$sp, $sp, -64
/* 000692 0x80BD0D80 AFB00024 */ sw	$s0, 0X24($sp)
/* 000693 0x80BD0D84 00808025 */ move	$s0, $a0
/* 000694 0x80BD0D88 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000695 0x80BD0D8C AFB10028 */ sw	$s1, 0X28($sp)
/* 000696 0x80BD0D90 AFA50044 */ sw	$a1, 0X44($sp)
/* 000697 0x80BD0D94 8FAE0044 */ lw	$t6, 0X44($sp)
/* 000698 0x80BD0D98 8DC40000 */ lw	$a0, 0X0($t6)
/* 000699 0x80BD0D9C 0C04B0A3 */ jal	func_8012C28C
/* 000700 0x80BD0DA0 00808825 */ move	$s1, $a0
/* 000701 0x80BD0DA4 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 000702 0x80BD0DA8 3C18DB06 */ lui	$t8, 0xDB06
/* 000703 0x80BD0DAC 37180020 */ ori	$t8, $t8, 0X20
/* 000704 0x80BD0DB0 244F0008 */ addiu	$t7, $v0, 8
/* 000705 0x80BD0DB4 AE2F02B0 */ sw	$t7, 0X2B0($s1)
/* 000706 0x80BD0DB8 AC580000 */ sw	$t8, 0X0($v0)
/* 000707 0x80BD0DBC 8619030C */ lh	$t9, 0X30C($s0)
/* 000708 0x80BD0DC0 3C0480BD */ lui	$a0, %hi(D_80BD0F80)
/* 000709 0x80BD0DC4 AFA20030 */ sw	$v0, 0X30($sp)
/* 000710 0x80BD0DC8 00194080 */ sll	$t0, $t9, 2
/* 000711 0x80BD0DCC 00882021 */ addu	$a0, $a0, $t0
/* 000712 0x80BD0DD0 0C040141 */ jal	Lib_PtrSegToVirt
/* 000713 0x80BD0DD4 8C840F80 */ lw	$a0, %lo(D_80BD0F80)($a0)
/* 000714 0x80BD0DD8 8FA30030 */ lw	$v1, 0X30($sp)
/* 000715 0x80BD0DDC 3C0980BD */ lui	$t1, %hi(func_80BD0CF0)
/* 000716 0x80BD0DE0 25290CF0 */ addiu	$t1, $t1, %lo(func_80BD0CF0)
/* 000717 0x80BD0DE4 AC620004 */ sw	$v0, 0X4($v1)
/* 000718 0x80BD0DE8 8E050194 */ lw	$a1, 0X194($s0)
/* 000719 0x80BD0DEC 8E0601B0 */ lw	$a2, 0X1B0($s0)
/* 000720 0x80BD0DF0 92070192 */ lbu	$a3, 0X192($s0)
/* 000721 0x80BD0DF4 3C0A80BD */ lui	$t2, %hi(func_80BD0D38)
/* 000722 0x80BD0DF8 254A0D38 */ addiu	$t2, $t2, %lo(func_80BD0D38)
/* 000723 0x80BD0DFC AFAA0014 */ sw	$t2, 0X14($sp)
/* 000724 0x80BD0E00 AFB00018 */ sw	$s0, 0X18($sp)
/* 000725 0x80BD0E04 AFA90010 */ sw	$t1, 0X10($sp)
/* 000726 0x80BD0E08 0C04CFCA */ jal	func_80133F28
/* 000727 0x80BD0E0C 8FA40044 */ lw	$a0, 0X44($sp)
/* 000728 0x80BD0E10 0C060083 */ jal	SysMatrix_SetCurrentState
/* 000729 0x80BD0E14 260401D8 */ addiu	$a0, $s0, 472
/* 000730 0x80BD0E18 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 000731 0x80BD0E1C 3C0CDA38 */ lui	$t4, 0xDA38
/* 000732 0x80BD0E20 358C0003 */ ori	$t4, $t4, 0X3
/* 000733 0x80BD0E24 244B0008 */ addiu	$t3, $v0, 8
/* 000734 0x80BD0E28 AE2B02B0 */ sw	$t3, 0X2B0($s1)
/* 000735 0x80BD0E2C AC4C0000 */ sw	$t4, 0X0($v0)
/* 000736 0x80BD0E30 8FAD0044 */ lw	$t5, 0X44($sp)
/* 000737 0x80BD0E34 00408025 */ move	$s0, $v0
/* 000738 0x80BD0E38 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000739 0x80BD0E3C 8DA40000 */ lw	$a0, 0X0($t5)
/* 000740 0x80BD0E40 AE020004 */ sw	$v0, 0X4($s0)
/* 000741 0x80BD0E44 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 000742 0x80BD0E48 3C180601 */ lui	$t8, 0x0601
/* 000743 0x80BD0E4C 2718F248 */ addiu	$t8, $t8, -3512
/* 000744 0x80BD0E50 244E0008 */ addiu	$t6, $v0, 8
/* 000745 0x80BD0E54 AE2E02B0 */ sw	$t6, 0X2B0($s1)
/* 000746 0x80BD0E58 3C0FDE00 */ lui	$t7, 0xDE00
/* 000747 0x80BD0E5C AC4F0000 */ sw	$t7, 0X0($v0)
/* 000748 0x80BD0E60 AC580004 */ sw	$t8, 0X4($v0)
/* 000749 0x80BD0E64 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000750 0x80BD0E68 8FB00024 */ lw	$s0, 0X24($sp)
/* 000751 0x80BD0E6C 8FB10028 */ lw	$s1, 0X28($sp)
/* 000752 0x80BD0E70 03E00008 */ jr	$ra
/* 000753 0x80BD0E74 27BD0040 */ addiu	$sp, $sp, 64
/* 000754 0x80BD0E78 00000000 */ nop
/* 000755 0x80BD0E7C 00000000 */ nop
