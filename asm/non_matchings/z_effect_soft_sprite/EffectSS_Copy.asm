glabel EffectSS_Copy
/* 010847 0x800B043C 27BDFFE0 */ addiu	$sp, $sp, -32
/* 010848 0x800B0440 AFBF0014 */ sw	$ra, 0X14($sp)
/* 010849 0x800B0444 AFA50024 */ sw	$a1, 0X24($sp)
/* 010850 0x800B0448 0C05A807 */ jal	func_8016A01C
/* 010851 0x800B044C 00000000 */ nop
/* 010852 0x800B0450 24010001 */ li	$at, 1
/* 010853 0x800B0454 1041001B */ beq	$v0, $at, .L_800B04C4
/* 010854 0x800B0458 8FAE0024 */ lw	$t6, 0X24($sp)
/* 010855 0x800B045C 91C4005E */ lbu	$a0, 0X5E($t6)
/* 010856 0x800B0460 0C02C0C1 */ jal	EffectSS_FindFreeSpace
/* 010857 0x800B0464 27A5001C */ addiu	$a1, $sp, 28
/* 010858 0x800B0468 14400016 */ bnez	$v0, .L_800B04C4
/* 010859 0x800B046C 8FAF001C */ lw	$t7, 0X1C($sp)
/* 010860 0x800B0470 8FA8001C */ lw	$t0, 0X1C($sp)
/* 010861 0x800B0474 3C02801B */ lui	$v0, %hi(EffectSS2Info)
/* 010862 0x800B0478 2442E3A0 */ addiu	$v0, $v0, %lo(EffectSS2Info)
/* 010863 0x800B047C 8C590000 */ lw	$t9, 0X0($v0)
/* 010864 0x800B0480 8FAB0024 */ lw	$t3, 0X24($sp)
/* 010865 0x800B0484 00084880 */ sll	$t1, $t0, 2
/* 010866 0x800B0488 01284823 */ subu	$t1, $t1, $t0
/* 010867 0x800B048C 25F80001 */ addiu	$t8, $t7, 1
/* 010868 0x800B0490 00094940 */ sll	$t1, $t1, 5
/* 010869 0x800B0494 AC580004 */ sw	$t8, 0X4($v0)
/* 010870 0x800B0498 03295021 */ addu	$t2, $t9, $t1
/* 010871 0x800B049C 256E0060 */ addiu	$t6, $t3, 96
.L_800B04A0:
/* 010872 0x800B04A0 8D6D0000 */ lw	$t5, 0X0($t3)
/* 010873 0x800B04A4 256B000C */ addiu	$t3, $t3, 12
/* 010874 0x800B04A8 254A000C */ addiu	$t2, $t2, 12
/* 010875 0x800B04AC AD4DFFF4 */ sw	$t5, -0XC($t2)
/* 010876 0x800B04B0 8D6CFFF8 */ lw	$t4, -0X8($t3)
/* 010877 0x800B04B4 AD4CFFF8 */ sw	$t4, -0X8($t2)
/* 010878 0x800B04B8 8D6DFFFC */ lw	$t5, -0X4($t3)
/* 010879 0x800B04BC 156EFFF8 */ bne	$t3, $t6, .L_800B04A0
/* 010880 0x800B04C0 AD4DFFFC */ sw	$t5, -0X4($t2)
.L_800B04C4:
/* 010881 0x800B04C4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 010882 0x800B04C8 27BD0020 */ addiu	$sp, $sp, 32
/* 010883 0x800B04CC 03E00008 */ jr	$ra
/* 010884 0x800B04D0 00000000 */ nop

