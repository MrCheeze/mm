glabel Actor_InsertIntoTypeList
/* 021501 0x800BAAB4 AFA60008 */ sw	$a2, 0X8($sp)
/* 021502 0x800BAAB8 30C600FF */ andi	$a2, $a2, 0XFF
/* 021503 0x800BAABC A0A60002 */ sb	$a2, 0X2($a1)
/* 021504 0x800BAAC0 908E000E */ lbu	$t6, 0XE($a0)
/* 021505 0x800BAAC4 0006C080 */ sll	$t8, $a2, 2
/* 021506 0x800BAAC8 0306C023 */ subu	$t8, $t8, $a2
/* 021507 0x800BAACC 0018C080 */ sll	$t8, $t8, 2
/* 021508 0x800BAAD0 25CF0001 */ addiu	$t7, $t6, 1
/* 021509 0x800BAAD4 A08F000E */ sb	$t7, 0XE($a0)
/* 021510 0x800BAAD8 00981021 */ addu	$v0, $a0, $t8
/* 021511 0x800BAADC 8C590010 */ lw	$t9, 0X10($v0)
/* 021512 0x800BAAE0 8C430014 */ lw	$v1, 0X14($v0)
/* 021513 0x800BAAE4 27280001 */ addiu	$t0, $t9, 1
/* 021514 0x800BAAE8 14600003 */ bnez	$v1, .L_800BAAF8
/* 021515 0x800BAAEC AC480010 */ sw	$t0, 0X10($v0)
/* 021516 0x800BAAF0 03E00008 */ jr	$ra
/* 021517 0x800BAAF4 AC450014 */ sw	$a1, 0X14($v0)
.L_800BAAF8:
/* 021518 0x800BAAF8 8C62012C */ lw	$v0, 0X12C($v1)
/* 021519 0x800BAAFC 50400006 */ beqzl	$v0, .L_800BAB18
/* 021520 0x800BAB00 AC65012C */ sw	$a1, 0X12C($v1)
/* 021521 0x800BAB04 00401825 */ move	$v1, $v0
.L_800BAB08:
/* 021522 0x800BAB08 8C42012C */ lw	$v0, 0X12C($v0)
/* 021523 0x800BAB0C 5440FFFE */ bnezl	$v0, .L_800BAB08
/* 021524 0x800BAB10 00401825 */ move	$v1, $v0
/* 021525 0x800BAB14 AC65012C */ sw	$a1, 0X12C($v1)
.L_800BAB18:
/* 021526 0x800BAB18 ACA30128 */ sw	$v1, 0X128($a1)
/* 021527 0x800BAB1C 03E00008 */ jr	$ra
/* 021528 0x800BAB20 00000000 */ nop

