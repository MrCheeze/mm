.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel BgInibsMovebg_Init
/* 000000 0x80B96410 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000001 0x80B96414 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80B96418 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000003 0x80B9641C 3C0580B9 */ lui	$a1, %hi(D_80B96578)
/* 000004 0x80B96420 24A56578 */ addiu	$a1, $a1, %lo(D_80B96578)
/* 000005 0x80B96424 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000006 0x80B96428 AFA40018 */ sw	$a0, 0X18($sp)
/* 000007 0x80B9642C 8FA40018 */ lw	$a0, 0X18($sp)
/* 000008 0x80B96430 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000009 0x80B96434 24050001 */ li	$a1, 1
/* 000010 0x80B96438 8FA40018 */ lw	$a0, 0X18($sp)
/* 000011 0x80B9643C 3C1980B9 */ lui	$t9, %hi(D_80B96560)
/* 000012 0x80B96440 3C0B80B9 */ lui	$t3, %hi(D_80B96568)
/* 000013 0x80B96444 948E001C */ lhu	$t6, 0X1C($a0)
/* 000014 0x80B96448 9488001C */ lhu	$t0, 0X1C($a0)
/* 000015 0x80B9644C 948C001C */ lhu	$t4, 0X1C($a0)
/* 000016 0x80B96450 31CF000F */ andi	$t7, $t6, 0XF
/* 000017 0x80B96454 000FC080 */ sll	$t8, $t7, 2
/* 000018 0x80B96458 0338C821 */ addu	$t9, $t9, $t8
/* 000019 0x80B9645C 8F396560 */ lw	$t9, %lo(D_80B96560)($t9)
/* 000020 0x80B96460 3109000F */ andi	$t1, $t0, 0XF
/* 000021 0x80B96464 00095080 */ sll	$t2, $t1, 2
/* 000022 0x80B96468 016A5821 */ addu	$t3, $t3, $t2
/* 000023 0x80B9646C AC99015C */ sw	$t9, 0X15C($a0)
/* 000024 0x80B96470 8D6B6568 */ lw	$t3, %lo(D_80B96568)($t3)
/* 000025 0x80B96474 318D000F */ andi	$t5, $t4, 0XF
/* 000026 0x80B96478 000D7080 */ sll	$t6, $t5, 2
/* 000027 0x80B9647C 3C0F80B9 */ lui	$t7, %hi(D_80B96570)
/* 000028 0x80B96480 01EE7821 */ addu	$t7, $t7, $t6
/* 000029 0x80B96484 AC8B0160 */ sw	$t3, 0X160($a0)
/* 000030 0x80B96488 8DEF6570 */ lw	$t7, %lo(D_80B96570)($t7)
/* 000031 0x80B9648C AC8F0164 */ sw	$t7, 0X164($a0)
/* 000032 0x80B96490 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000033 0x80B96494 03E00008 */ jr	$ra
/* 000034 0x80B96498 27BD0018 */ addiu	$sp, $sp, 24

glabel BgInibsMovebg_Destroy
/* 000035 0x80B9649C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000036 0x80B964A0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000037 0x80B964A4 AFA40018 */ sw	$a0, 0X18($sp)
/* 000038 0x80B964A8 00A03825 */ move	$a3, $a1
/* 000039 0x80B964AC 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000040 0x80B964B0 00E02025 */ move	$a0, $a3
/* 000041 0x80B964B4 24E50880 */ addiu	$a1, $a3, 2176
/* 000042 0x80B964B8 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000043 0x80B964BC 8DC60144 */ lw	$a2, 0X144($t6)
/* 000044 0x80B964C0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000045 0x80B964C4 27BD0018 */ addiu	$sp, $sp, 24
/* 000046 0x80B964C8 03E00008 */ jr	$ra
/* 000047 0x80B964CC 00000000 */ nop

glabel BgInibsMovebg_Draw
/* 000048 0x80B964D0 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000049 0x80B964D4 AFB00018 */ sw	$s0, 0X18($sp)
/* 000050 0x80B964D8 00808025 */ move	$s0, $a0
/* 000051 0x80B964DC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000052 0x80B964E0 AFA50024 */ sw	$a1, 0X24($sp)
/* 000053 0x80B964E4 8E060164 */ lw	$a2, 0X164($s0)
/* 000054 0x80B964E8 50C00007 */ beqzl	$a2, .L_80B96508
/* 000055 0x80B964EC 8E05015C */ lw	$a1, 0X15C($s0)
/* 000056 0x80B964F0 0C040141 */ jal	Lib_PtrSegToVirt
/* 000057 0x80B964F4 00C02025 */ move	$a0, $a2
/* 000058 0x80B964F8 8FA40024 */ lw	$a0, 0X24($sp)
/* 000059 0x80B964FC 0C04C5D6 */ jal	SceneProc_DrawAllSceneAnimatedTextures
/* 000060 0x80B96500 00402825 */ move	$a1, $v0
/* 000061 0x80B96504 8E05015C */ lw	$a1, 0X15C($s0)
.L_80B96508:
/* 000062 0x80B96508 50A00004 */ beqzl	$a1, .L_80B9651C
/* 000063 0x80B9650C 8E050160 */ lw	$a1, 0X160($s0)
/* 000064 0x80B96510 0C02F7F0 */ jal	func_800BDFC0
/* 000065 0x80B96514 8FA40024 */ lw	$a0, 0X24($sp)
/* 000066 0x80B96518 8E050160 */ lw	$a1, 0X160($s0)
.L_80B9651C:
/* 000067 0x80B9651C 50A00004 */ beqzl	$a1, .L_80B96530
/* 000068 0x80B96520 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000069 0x80B96524 0C02F80F */ jal	func_800BE03C
/* 000070 0x80B96528 8FA40024 */ lw	$a0, 0X24($sp)
/* 000071 0x80B9652C 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80B96530:
/* 000072 0x80B96530 8FB00018 */ lw	$s0, 0X18($sp)
/* 000073 0x80B96534 27BD0020 */ addiu	$sp, $sp, 32
/* 000074 0x80B96538 03E00008 */ jr	$ra
/* 000075 0x80B9653C 00000000 */ nop
