.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel ObjKepnKoya_Init
/* 000000 0x80C07B20 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000001 0x80C07B24 AFB00018 */ sw	$s0, 0X18($sp)
/* 000002 0x80C07B28 00808025 */ move	$s0, $a0
/* 000003 0x80C07B2C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000004 0x80C07B30 AFA50024 */ sw	$a1, 0X24($sp)
/* 000005 0x80C07B34 3C0580C0 */ lui	$a1, %hi(D_80C07C40)
/* 000006 0x80C07B38 24A57C40 */ addiu	$a1, $a1, %lo(D_80C07C40)
/* 000007 0x80C07B3C 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000008 0x80C07B40 02002025 */ move	$a0, $s0
/* 000009 0x80C07B44 3C053DCC */ lui	$a1, 0x3DCC
/* 000010 0x80C07B48 34A5CCCD */ ori	$a1, $a1, 0XCCCD
/* 000011 0x80C07B4C 0C02D9F8 */ jal	Actor_SetScale
/* 000012 0x80C07B50 02002025 */ move	$a0, $s0
/* 000013 0x80C07B54 02002025 */ move	$a0, $s0
/* 000014 0x80C07B58 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000015 0x80C07B5C 00002825 */ move	$a1, $zero
/* 000016 0x80C07B60 3C060601 */ lui	$a2, 0x0601
/* 000017 0x80C07B64 24C6805C */ addiu	$a2, $a2, -32676
/* 000018 0x80C07B68 8FA40024 */ lw	$a0, 0X24($sp)
/* 000019 0x80C07B6C 0C032B8D */ jal	BgCheck3_LoadMesh
/* 000020 0x80C07B70 02002825 */ move	$a1, $s0
/* 000021 0x80C07B74 8E0E0144 */ lw	$t6, 0X144($s0)
/* 000022 0x80C07B78 24010032 */ li	$at, 50
/* 000023 0x80C07B7C 55C10004 */ bnel	$t6, $at, .L_80C07B90
/* 000024 0x80C07B80 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000025 0x80C07B84 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000026 0x80C07B88 02002025 */ move	$a0, $s0
/* 000027 0x80C07B8C 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80C07B90:
/* 000028 0x80C07B90 8FB00018 */ lw	$s0, 0X18($sp)
/* 000029 0x80C07B94 27BD0020 */ addiu	$sp, $sp, 32
/* 000030 0x80C07B98 03E00008 */ jr	$ra
/* 000031 0x80C07B9C 00000000 */ nop

glabel ObjKepnKoya_Destroy
/* 000032 0x80C07BA0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000033 0x80C07BA4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000034 0x80C07BA8 AFA40018 */ sw	$a0, 0X18($sp)
/* 000035 0x80C07BAC 00A03825 */ move	$a3, $a1
/* 000036 0x80C07BB0 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000037 0x80C07BB4 00E02025 */ move	$a0, $a3
/* 000038 0x80C07BB8 24E50880 */ addiu	$a1, $a3, 2176
/* 000039 0x80C07BBC 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000040 0x80C07BC0 8DC60144 */ lw	$a2, 0X144($t6)
/* 000041 0x80C07BC4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000042 0x80C07BC8 27BD0018 */ addiu	$sp, $sp, 24
/* 000043 0x80C07BCC 03E00008 */ jr	$ra
/* 000044 0x80C07BD0 00000000 */ nop

glabel ObjKepnKoya_Update
/* 000045 0x80C07BD4 AFA40000 */ sw	$a0, 0X0($sp)
/* 000046 0x80C07BD8 AFA50004 */ sw	$a1, 0X4($sp)
/* 000047 0x80C07BDC 03E00008 */ jr	$ra
/* 000048 0x80C07BE0 00000000 */ nop

glabel ObjKepnKoya_Draw
/* 000049 0x80C07BE4 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000050 0x80C07BE8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000051 0x80C07BEC AFA40018 */ sw	$a0, 0X18($sp)
/* 000052 0x80C07BF0 00A03025 */ move	$a2, $a1
/* 000053 0x80C07BF4 3C050600 */ lui	$a1, 0x0600
/* 000054 0x80C07BF8 24A53478 */ addiu	$a1, $a1, 13432
/* 000055 0x80C07BFC 0C02F7F0 */ jal	func_800BDFC0
/* 000056 0x80C07C00 00C02025 */ move	$a0, $a2
/* 000057 0x80C07C04 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000058 0x80C07C08 27BD0018 */ addiu	$sp, $sp, 24
/* 000059 0x80C07C0C 03E00008 */ jr	$ra
/* 000060 0x80C07C10 00000000 */ nop
/* 000061 0x80C07C14 00000000 */ nop
/* 000062 0x80C07C18 00000000 */ nop
/* 000063 0x80C07C1C 00000000 */ nop
