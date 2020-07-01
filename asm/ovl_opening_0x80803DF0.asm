.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel Opening_SetupForTitleCutscene
/* 000000 0x80803DF0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000001 0x80803DF4 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000002 0x80803DF8 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000003 0x80803DFC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000004 0x80803E00 904E100D */ lbu	$t6, 0X100D($v0)
/* 000005 0x80803E04 24180001 */ li	$t8, 1
/* 000006 0x80803E08 AC583CA8 */ sw	$t8, 0X3CA8($v0)
/* 000007 0x80803E0C 31CF007F */ andi	$t7, $t6, 0X7F
/* 000008 0x80803E10 A04F100D */ sb	$t7, 0X100D($v0)
/* 000009 0x80803E14 0C051224 */ jal	func_80144890
/* 000010 0x80803E18 AFA40018 */ sw	$a0, 0X18($sp)
/* 000011 0x80803E1C 3C03801C */ lui	$v1, %hi(D_801BB12C)
/* 000012 0x80803E20 9063B12C */ lbu	$v1, %lo(D_801BB12C)($v1)
/* 000013 0x80803E24 3C198080 */ lui	$t9, %hi(openingEntrances)
/* 000014 0x80803E28 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000015 0x80803E2C 00031880 */ sll	$v1, $v1, 2
/* 000016 0x80803E30 0323C821 */ addu	$t9, $t9, $v1
/* 000017 0x80803E34 8F393FC0 */ lw	$t9, %lo(openingEntrances)($t9)
/* 000018 0x80803E38 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000019 0x80803E3C 3C088080 */ lui	$t0, %hi(openingCutscenes)
/* 000020 0x80803E40 01034021 */ addu	$t0, $t0, $v1
/* 000021 0x80803E44 AC590000 */ sw	$t9, 0X0($v0)
/* 000022 0x80803E48 8D083FC8 */ lw	$t0, %lo(openingCutscenes)($t0)
/* 000023 0x80803E4C 240A5555 */ li	$t2, 21845
/* 000024 0x80803E50 240B0001 */ li	$t3, 1
/* 000025 0x80803E54 8FA40018 */ lw	$a0, 0X18($sp)
/* 000026 0x80803E58 AC403CAC */ sw	$zero, 0X3CAC($v0)
/* 000027 0x80803E5C A44A000C */ sh	$t2, 0XC($v0)
/* 000028 0x80803E60 AC4B0018 */ sw	$t3, 0X18($v0)
/* 000029 0x80803E64 AC480008 */ sw	$t0, 0X8($v0)
/* 000030 0x80803E68 A4483F4A */ sh	$t0, 0X3F4A($v0)
/* 000031 0x80803E6C A080009B */ sb	$zero, 0X9B($a0)
/* 000032 0x80803E70 3C0C8017 */ lui	$t4, %hi(Play_Init)
/* 000033 0x80803E74 3C0D0001 */ lui	$t5, 0x0001
/* 000034 0x80803E78 35AD9258 */ ori	$t5, $t5, 0X9258
/* 000035 0x80803E7C 258CA2C8 */ addiu	$t4, $t4, %lo(Play_Init)
/* 000036 0x80803E80 AC8C000C */ sw	$t4, 0XC($a0)
/* 000037 0x80803E84 AC8D0010 */ sw	$t5, 0X10($a0)
/* 000038 0x80803E88 240E0004 */ li	$t6, 4
/* 000039 0x80803E8C A04E0020 */ sb	$t6, 0X20($v0)
/* 000040 0x80803E90 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000041 0x80803E94 27BD0018 */ addiu	$sp, $sp, 24
/* 000042 0x80803E98 03E00008 */ jr	$ra
/* 000043 0x80803E9C 00000000 */ nop

glabel func_80803EA0
/* 000044 0x80803EA0 AFA40000 */ sw	$a0, 0X0($sp)
/* 000045 0x80803EA4 3C02801F */ lui	$v0, %hi(gStaticContext)
/* 000046 0x80803EA8 8C423F60 */ lw	$v0, %lo(gStaticContext)($v0)
/* 000047 0x80803EAC 844E0116 */ lh	$t6, 0X116($v0)
/* 000048 0x80803EB0 35CF0001 */ ori	$t7, $t6, 0X1
/* 000049 0x80803EB4 A44F0116 */ sh	$t7, 0X116($v0)
/* 000050 0x80803EB8 03E00008 */ jr	$ra
/* 000051 0x80803EBC 00000000 */ nop

glabel Opening_Update
/* 000052 0x80803EC0 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000053 0x80803EC4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000054 0x80803EC8 AFA40020 */ sw	$a0, 0X20($sp)
/* 000055 0x80803ECC 8FAE0020 */ lw	$t6, 0X20($sp)
/* 000056 0x80803ED0 00002825 */ move	$a1, $zero
/* 000057 0x80803ED4 24060001 */ li	$a2, 1
/* 000058 0x80803ED8 8DC40000 */ lw	$a0, 0X0($t6)
/* 000059 0x80803EDC AFA00014 */ sw	$zero, 0X14($sp)
/* 000060 0x80803EE0 AFA00010 */ sw	$zero, 0X10($sp)
/* 000061 0x80803EE4 0C04B3C3 */ jal	func_8012CF0C
/* 000062 0x80803EE8 00003825 */ move	$a3, $zero
/* 000063 0x80803EEC 0C200F7C */ jal	Opening_SetupForTitleCutscene
/* 000064 0x80803EF0 8FA40020 */ lw	$a0, 0X20($sp)
/* 000065 0x80803EF4 0C200FA8 */ jal	func_80803EA0
/* 000066 0x80803EF8 8FA40020 */ lw	$a0, 0X20($sp)
/* 000067 0x80803EFC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000068 0x80803F00 27BD0020 */ addiu	$sp, $sp, 32
/* 000069 0x80803F04 03E00008 */ jr	$ra
/* 000070 0x80803F08 00000000 */ nop

glabel Opening_Destroy
/* 000071 0x80803F0C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000072 0x80803F10 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000073 0x80803F14 AFA40018 */ sw	$a0, 0X18($sp)
/* 000074 0x80803F18 0C058335 */ jal	ShrinkWindow_Fini
/* 000075 0x80803F1C 00000000 */ nop
/* 000076 0x80803F20 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000077 0x80803F24 27BD0018 */ addiu	$sp, $sp, 24
/* 000078 0x80803F28 03E00008 */ jr	$ra
/* 000079 0x80803F2C 00000000 */ nop

glabel Opening_Init
/* 000080 0x80803F30 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000081 0x80803F34 AFB00018 */ sw	$s0, 0X18($sp)
/* 000082 0x80803F38 00808025 */ move	$s0, $a0
/* 000083 0x80803F3C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000084 0x80803F40 02002025 */ move	$a0, $s0
/* 000085 0x80803F44 0C05CCEA */ jal	Game_SetFramerateDivisor
/* 000086 0x80803F48 24050001 */ li	$a1, 1
/* 000087 0x80803F4C 0C060058 */ jal	SysMatrix_StateAlloc
/* 000088 0x80803F50 02002025 */ move	$a0, $s0
/* 000089 0x80803F54 0C058328 */ jal	ShrinkWindow_Init
/* 000090 0x80803F58 00000000 */ nop
/* 000091 0x80803F5C 260400A8 */ addiu	$a0, $s0, 168
/* 000092 0x80803F60 0C04FBBD */ jal	View_Init
/* 000093 0x80803F64 8E050000 */ lw	$a1, 0X0($s0)
/* 000094 0x80803F68 3C0E8080 */ lui	$t6, %hi(Opening_Update)
/* 000095 0x80803F6C 3C0F8080 */ lui	$t7, %hi(Opening_Destroy)
/* 000096 0x80803F70 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000097 0x80803F74 25CE3EC0 */ addiu	$t6, $t6, %lo(Opening_Update)
/* 000098 0x80803F78 25EF3F0C */ addiu	$t7, $t7, %lo(Opening_Destroy)
/* 000099 0x80803F7C 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000100 0x80803F80 AE0E0004 */ sw	$t6, 0X4($s0)
/* 000101 0x80803F84 AE0F0008 */ sw	$t7, 0X8($s0)
/* 000102 0x80803F88 240300FF */ li	$v1, 255
/* 000103 0x80803F8C AC403CB0 */ sw	$zero, 0X3CB0($v0)
/* 000104 0x80803F90 A4433D44 */ sh	$v1, 0X3D44($v0)
/* 000105 0x80803F94 A4433D64 */ sh	$v1, 0X3D64($v0)
/* 000106 0x80803F98 A4433D84 */ sh	$v1, 0X3D84($v0)
/* 000107 0x80803F9C A4433DA4 */ sh	$v1, 0X3DA4($v0)
/* 000108 0x80803FA0 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000109 0x80803FA4 8FB00018 */ lw	$s0, 0X18($sp)
/* 000110 0x80803FA8 27BD0020 */ addiu	$sp, $sp, 32
/* 000111 0x80803FAC 03E00008 */ jr	$ra
/* 000112 0x80803FB0 00000000 */ nop
/* 000113 0x80803FB4 00000000 */ nop
/* 000114 0x80803FB8 00000000 */ nop
/* 000115 0x80803FBC 00000000 */ nop
