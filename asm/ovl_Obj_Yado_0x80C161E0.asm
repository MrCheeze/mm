.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel ObjYado_Init
/* 000000 0x80C161E0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000001 0x80C161E4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80C161E8 AFA40018 */ sw	$a0, 0X18($sp)
/* 000003 0x80C161EC AFA5001C */ sw	$a1, 0X1C($sp)
/* 000004 0x80C161F0 3C0580C1 */ lui	$a1, %hi(D_80C16420)
/* 000005 0x80C161F4 24A56420 */ addiu	$a1, $a1, %lo(D_80C16420)
/* 000006 0x80C161F8 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000007 0x80C161FC 8FA40018 */ lw	$a0, 0X18($sp)
/* 000008 0x80C16200 3C040600 */ lui	$a0, 0x0600
/* 000009 0x80C16204 0C040141 */ jal	Lib_PtrSegToVirt
/* 000010 0x80C16208 248412E8 */ addiu	$a0, $a0, 4840
/* 000011 0x80C1620C 3C0E801F */ lui	$t6, %hi(gSaveContext + 0x10)
/* 000012 0x80C16210 8DCEF680 */ lw	$t6, %lo(gSaveContext + 0x10)($t6)
/* 000013 0x80C16214 8FAF0018 */ lw	$t7, 0X18($sp)
/* 000014 0x80C16218 3C0180C1 */ lui	$at, %hi(D_80C16470)
/* 000015 0x80C1621C AC226470 */ sw	$v0, %lo(D_80C16470)($at)
/* 000016 0x80C16220 A1EE0144 */ sb	$t6, 0X144($t7)
/* 000017 0x80C16224 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000018 0x80C16228 27BD0018 */ addiu	$sp, $sp, 24
/* 000019 0x80C1622C 03E00008 */ jr	$ra
/* 000020 0x80C16230 00000000 */ nop

glabel ObjYado_Destroy
/* 000021 0x80C16234 AFA40000 */ sw	$a0, 0X0($sp)
/* 000022 0x80C16238 AFA50004 */ sw	$a1, 0X4($sp)
/* 000023 0x80C1623C 03E00008 */ jr	$ra
/* 000024 0x80C16240 00000000 */ nop

glabel ObjYado_Update
/* 000025 0x80C16244 AFA50004 */ sw	$a1, 0X4($sp)
/* 000026 0x80C16248 3C0E801F */ lui	$t6, %hi(gSaveContext + 0x10)
/* 000027 0x80C1624C 8DCEF680 */ lw	$t6, %lo(gSaveContext + 0x10)($t6)
/* 000028 0x80C16250 A08E0144 */ sb	$t6, 0X144($a0)
/* 000029 0x80C16254 03E00008 */ jr	$ra
/* 000030 0x80C16258 00000000 */ nop

glabel ObjYado_Draw
/* 000031 0x80C1625C 27BDFFB8 */ addiu	$sp, $sp, -72
/* 000032 0x80C16260 AFB00020 */ sw	$s0, 0X20($sp)
/* 000033 0x80C16264 00A08025 */ move	$s0, $a1
/* 000034 0x80C16268 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000035 0x80C1626C 908E0144 */ lbu	$t6, 0X144($a0)
/* 000036 0x80C16270 3C0FDB06 */ lui	$t7, 0xDB06
/* 000037 0x80C16274 8E030000 */ lw	$v1, 0X0($s0)
/* 000038 0x80C16278 11C00029 */ beqz	$t6, .L_80C16320
/* 000039 0x80C1627C 35EF0024 */ ori	$t7, $t7, 0X24
/* 000040 0x80C16280 8C6202C0 */ lw	$v0, 0X2C0($v1)
/* 000041 0x80C16284 3C18DB06 */ lui	$t8, 0xDB06
/* 000042 0x80C16288 37180024 */ ori	$t8, $t8, 0X24
/* 000043 0x80C1628C 244F0008 */ addiu	$t7, $v0, 8
/* 000044 0x80C16290 AC6F02C0 */ sw	$t7, 0X2C0($v1)
/* 000045 0x80C16294 AC580000 */ sw	$t8, 0X0($v0)
/* 000046 0x80C16298 8E040000 */ lw	$a0, 0X0($s0)
/* 000047 0x80C1629C 24190046 */ li	$t9, 70
/* 000048 0x80C162A0 2409009B */ li	$t1, 155
/* 000049 0x80C162A4 AFA90014 */ sw	$t1, 0X14($sp)
/* 000050 0x80C162A8 AFB90010 */ sw	$t9, 0X10($sp)
/* 000051 0x80C162AC AFA3003C */ sw	$v1, 0X3C($sp)
/* 000052 0x80C162B0 24050080 */ li	$a1, 128
/* 000053 0x80C162B4 2406005F */ li	$a2, 95
/* 000054 0x80C162B8 2407005F */ li	$a3, 95
/* 000055 0x80C162BC 0C04B3AA */ jal	Gfx_PrimColor
/* 000056 0x80C162C0 AFA20034 */ sw	$v0, 0X34($sp)
/* 000057 0x80C162C4 8FA80034 */ lw	$t0, 0X34($sp)
/* 000058 0x80C162C8 8FA3003C */ lw	$v1, 0X3C($sp)
/* 000059 0x80C162CC 3C0BDB06 */ lui	$t3, 0xDB06
/* 000060 0x80C162D0 AD020004 */ sw	$v0, 0X4($t0)
/* 000061 0x80C162D4 8C6202B0 */ lw	$v0, 0X2B0($v1)
/* 000062 0x80C162D8 356B0028 */ ori	$t3, $t3, 0X28
/* 000063 0x80C162DC 240C0028 */ li	$t4, 40
/* 000064 0x80C162E0 244A0008 */ addiu	$t2, $v0, 8
/* 000065 0x80C162E4 AC6A02B0 */ sw	$t2, 0X2B0($v1)
/* 000066 0x80C162E8 AC4B0000 */ sw	$t3, 0X0($v0)
/* 000067 0x80C162EC 8E040000 */ lw	$a0, 0X0($s0)
/* 000068 0x80C162F0 240D00FF */ li	$t5, 255
/* 000069 0x80C162F4 AFAD0014 */ sw	$t5, 0X14($sp)
/* 000070 0x80C162F8 AFAC0010 */ sw	$t4, 0X10($sp)
/* 000071 0x80C162FC 24050080 */ li	$a1, 128
/* 000072 0x80C16300 00003025 */ move	$a2, $zero
/* 000073 0x80C16304 24070028 */ li	$a3, 40
/* 000074 0x80C16308 0C04B3AA */ jal	Gfx_PrimColor
/* 000075 0x80C1630C AFA20030 */ sw	$v0, 0X30($sp)
/* 000076 0x80C16310 8FA80030 */ lw	$t0, 0X30($sp)
/* 000077 0x80C16314 AD020004 */ sw	$v0, 0X4($t0)
/* 000078 0x80C16318 10000025 */ b	.L_80C163B0
/* 000079 0x80C1631C 00000000 */ nop
.L_80C16320:
/* 000080 0x80C16320 8C6202C0 */ lw	$v0, 0X2C0($v1)
/* 000081 0x80C16324 241800D7 */ li	$t8, 215
/* 000082 0x80C16328 2419006E */ li	$t9, 110
/* 000083 0x80C1632C 244E0008 */ addiu	$t6, $v0, 8
/* 000084 0x80C16330 AC6E02C0 */ sw	$t6, 0X2C0($v1)
/* 000085 0x80C16334 AC4F0000 */ sw	$t7, 0X0($v0)
/* 000086 0x80C16338 8E040000 */ lw	$a0, 0X0($s0)
/* 000087 0x80C1633C AFA3003C */ sw	$v1, 0X3C($sp)
/* 000088 0x80C16340 AFB90014 */ sw	$t9, 0X14($sp)
/* 000089 0x80C16344 AFB80010 */ sw	$t8, 0X10($sp)
/* 000090 0x80C16348 24050080 */ li	$a1, 128
/* 000091 0x80C1634C 240600FF */ li	$a2, 255
/* 000092 0x80C16350 240700FF */ li	$a3, 255
/* 000093 0x80C16354 0C04B3AA */ jal	Gfx_PrimColor
/* 000094 0x80C16358 AFA2002C */ sw	$v0, 0X2C($sp)
/* 000095 0x80C1635C 8FA8002C */ lw	$t0, 0X2C($sp)
/* 000096 0x80C16360 8FA3003C */ lw	$v1, 0X3C($sp)
/* 000097 0x80C16364 3C0ADB06 */ lui	$t2, 0xDB06
/* 000098 0x80C16368 AD020004 */ sw	$v0, 0X4($t0)
/* 000099 0x80C1636C 8C6202B0 */ lw	$v0, 0X2B0($v1)
/* 000100 0x80C16370 354A0028 */ ori	$t2, $t2, 0X28
/* 000101 0x80C16374 240B00D7 */ li	$t3, 215
/* 000102 0x80C16378 24490008 */ addiu	$t1, $v0, 8
/* 000103 0x80C1637C AC6902B0 */ sw	$t1, 0X2B0($v1)
/* 000104 0x80C16380 AC4A0000 */ sw	$t2, 0X0($v0)
/* 000105 0x80C16384 8E040000 */ lw	$a0, 0X0($s0)
/* 000106 0x80C16388 240C00FF */ li	$t4, 255
/* 000107 0x80C1638C AFAC0014 */ sw	$t4, 0X14($sp)
/* 000108 0x80C16390 AFAB0010 */ sw	$t3, 0X10($sp)
/* 000109 0x80C16394 24050080 */ li	$a1, 128
/* 000110 0x80C16398 240600FF */ li	$a2, 255
/* 000111 0x80C1639C 240700FF */ li	$a3, 255
/* 000112 0x80C163A0 0C04B3AA */ jal	Gfx_PrimColor
/* 000113 0x80C163A4 AFA20028 */ sw	$v0, 0X28($sp)
/* 000114 0x80C163A8 8FA80028 */ lw	$t0, 0X28($sp)
/* 000115 0x80C163AC AD020004 */ sw	$v0, 0X4($t0)
.L_80C163B0:
/* 000116 0x80C163B0 3C0580C1 */ lui	$a1, %hi(D_80C16470)
/* 000117 0x80C163B4 8CA56470 */ lw	$a1, %lo(D_80C16470)($a1)
/* 000118 0x80C163B8 0C04C5D6 */ jal	SceneProc_DrawAllSceneAnimatedTextures
/* 000119 0x80C163BC 02002025 */ move	$a0, $s0
/* 000120 0x80C163C0 3C050600 */ lui	$a1, 0x0600
/* 000121 0x80C163C4 24A50430 */ addiu	$a1, $a1, 1072
/* 000122 0x80C163C8 0C02F7F0 */ jal	func_800BDFC0
/* 000123 0x80C163CC 02002025 */ move	$a0, $s0
/* 000124 0x80C163D0 3C050600 */ lui	$a1, 0x0600
/* 000125 0x80C163D4 24A50320 */ addiu	$a1, $a1, 800
/* 000126 0x80C163D8 0C02F80F */ jal	func_800BE03C
/* 000127 0x80C163DC 02002025 */ move	$a0, $s0
/* 000128 0x80C163E0 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000129 0x80C163E4 8FB00020 */ lw	$s0, 0X20($sp)
/* 000130 0x80C163E8 27BD0048 */ addiu	$sp, $sp, 72
/* 000131 0x80C163EC 03E00008 */ jr	$ra
/* 000132 0x80C163F0 00000000 */ nop
/* 000133 0x80C163F4 00000000 */ nop
/* 000134 0x80C163F8 00000000 */ nop
/* 000135 0x80C163FC 00000000 */ nop
