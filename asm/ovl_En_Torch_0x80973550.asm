.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel EnTorch_Init
/* 000000 0x80973550 27BDFFC8 */ addiu	$sp, $sp, -56
/* 000001 0x80973554 AFB00030 */ sw	$s0, 0X30($sp)
/* 000002 0x80973558 00808025 */ move	$s0, $a0
/* 000003 0x8097355C AFBF0034 */ sw	$ra, 0X34($sp)
/* 000004 0x80973560 3C02801F */ lui	$v0, %hi(gSaveContext + 0x3D27)
/* 000005 0x80973564 80423397 */ lb	$v0, %lo(gSaveContext + 0x3D27)($v0)
/* 000006 0x80973568 C6040028 */ lwc1	$f4, 0X28($s0)
/* 000007 0x8097356C 8E070024 */ lw	$a3, 0X24($s0)
/* 000008 0x80973570 00027943 */ sra	$t7, $v0, 5
/* 000009 0x80973574 31F80007 */ andi	$t8, $t7, 0X7
/* 000010 0x80973578 3C198097 */ lui	$t9, %hi(D_80973600)
/* 000011 0x8097357C 0338C821 */ addu	$t9, $t9, $t8
/* 000012 0x80973580 E7A40010 */ swc1	$f4, 0X10($sp)
/* 000013 0x80973584 C606002C */ lwc1	$f6, 0X2C($s0)
/* 000014 0x80973588 93393600 */ lbu	$t9, %lo(D_80973600)($t9)
/* 000015 0x8097358C AFA00018 */ sw	$zero, 0X18($sp)
/* 000016 0x80973590 E7A60014 */ swc1	$f6, 0X14($sp)
/* 000017 0x80973594 00194140 */ sll	$t0, $t9, 5
/* 000018 0x80973598 860E00BE */ lh	$t6, 0XBE($s0)
/* 000019 0x8097359C 35095000 */ ori	$t1, $t0, 0X5000
/* 000020 0x809735A0 304A001F */ andi	$t2, $v0, 0X1F
/* 000021 0x809735A4 012A5825 */ or	$t3, $t1, $t2
/* 000022 0x809735A8 AFAB0024 */ sw	$t3, 0X24($sp)
/* 000023 0x809735AC AFA00020 */ sw	$zero, 0X20($sp)
/* 000024 0x809735B0 24A41CA0 */ addiu	$a0, $a1, 7328
/* 000025 0x809735B4 24060006 */ li	$a2, 6
/* 000026 0x809735B8 0C02EB18 */ jal	Actor_Spawn
/* 000027 0x809735BC AFAE001C */ sw	$t6, 0X1C($sp)
/* 000028 0x809735C0 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000029 0x809735C4 02002025 */ move	$a0, $s0
/* 000030 0x809735C8 8FBF0034 */ lw	$ra, 0X34($sp)
/* 000031 0x809735CC 8FB00030 */ lw	$s0, 0X30($sp)
/* 000032 0x809735D0 27BD0038 */ addiu	$sp, $sp, 56
/* 000033 0x809735D4 03E00008 */ jr	$ra
/* 000034 0x809735D8 00000000 */ nop
/* 000035 0x809735DC 00000000 */ nop
