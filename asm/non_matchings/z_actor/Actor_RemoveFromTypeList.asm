glabel Actor_RemoveFromTypeList
/* 021529 0x800BAB24 27BDFFE0 */ addiu	$sp, $sp, -32
/* 021530 0x800BAB28 AFBF0014 */ sw	$ra, 0X14($sp)
/* 021531 0x800BAB2C 2407000C */ li	$a3, 12
/* 021532 0x800BAB30 90AE000E */ lbu	$t6, 0XE($a1)
/* 021533 0x800BAB34 25CFFFFF */ addiu	$t7, $t6, -1
/* 021534 0x800BAB38 A0AF000E */ sb	$t7, 0XE($a1)
/* 021535 0x800BAB3C 90D80002 */ lbu	$t8, 0X2($a2)
/* 021536 0x800BAB40 03070019 */ multu	$t8, $a3
/* 021537 0x800BAB44 0000C812 */ mflo	$t9
/* 021538 0x800BAB48 00B91021 */ addu	$v0, $a1, $t9
/* 021539 0x800BAB4C 8C480010 */ lw	$t0, 0X10($v0)
/* 021540 0x800BAB50 2509FFFF */ addiu	$t1, $t0, -1
/* 021541 0x800BAB54 AC490010 */ sw	$t1, 0X10($v0)
/* 021542 0x800BAB58 8CC30128 */ lw	$v1, 0X128($a2)
/* 021543 0x800BAB5C 50600005 */ beqzl	$v1, .L_800BAB74
/* 021544 0x800BAB60 90CC0002 */ lbu	$t4, 0X2($a2)
/* 021545 0x800BAB64 8CCA012C */ lw	$t2, 0X12C($a2)
/* 021546 0x800BAB68 10000007 */ b	.L_800BAB88
/* 021547 0x800BAB6C AC6A012C */ sw	$t2, 0X12C($v1)
/* 021548 0x800BAB70 90CC0002 */ lbu	$t4, 0X2($a2)
.L_800BAB74:
/* 021549 0x800BAB74 8CCB012C */ lw	$t3, 0X12C($a2)
/* 021550 0x800BAB78 01870019 */ multu	$t4, $a3
/* 021551 0x800BAB7C 00006812 */ mflo	$t5
/* 021552 0x800BAB80 00AD7021 */ addu	$t6, $a1, $t5
/* 021553 0x800BAB84 ADCB0014 */ sw	$t3, 0X14($t6)
.L_800BAB88:
/* 021554 0x800BAB88 8CC3012C */ lw	$v1, 0X12C($a2)
/* 021555 0x800BAB8C 3C070002 */ lui	$a3, 0x0002
/* 021556 0x800BAB90 00E43821 */ addu	$a3, $a3, $a0
/* 021557 0x800BAB94 50600004 */ beqzl	$v1, .L_800BABA8
/* 021558 0x800BAB98 ACC0012C */ sw	$zero, 0X12C($a2)
/* 021559 0x800BAB9C 8CCF0128 */ lw	$t7, 0X128($a2)
/* 021560 0x800BABA0 AC6F0128 */ sw	$t7, 0X128($v1)
/* 021561 0x800BABA4 ACC0012C */ sw	$zero, 0X12C($a2)
.L_800BABA8:
/* 021562 0x800BABA8 ACC00128 */ sw	$zero, 0X128($a2)
/* 021563 0x800BABAC 80E786E0 */ lb	$a3, -0X7920($a3)
/* 021564 0x800BABB0 80D80003 */ lb	$t8, 0X3($a2)
/* 021565 0x800BABB4 54F8000D */ bnel	$a3, $t8, .L_800BABEC
/* 021566 0x800BABB8 00601025 */ move	$v0, $v1
/* 021567 0x800BABBC 90D90002 */ lbu	$t9, 0X2($a2)
/* 021568 0x800BABC0 24010005 */ li	$at, 5
/* 021569 0x800BABC4 57210009 */ bnel	$t9, $at, .L_800BABEC
/* 021570 0x800BABC8 00601025 */ move	$v0, $v1
/* 021571 0x800BABCC 8CA8004C */ lw	$t0, 0X4C($a1)
/* 021572 0x800BABD0 00E02825 */ move	$a1, $a3
/* 021573 0x800BABD4 55000005 */ bnezl	$t0, .L_800BABEC
/* 021574 0x800BABD8 00601025 */ move	$v0, $v1
/* 021575 0x800BABDC 0C02D74C */ jal	Actor_SetRoomClearedTemp
/* 021576 0x800BABE0 AFA3001C */ sw	$v1, 0X1C($sp)
/* 021577 0x800BABE4 8FA3001C */ lw	$v1, 0X1C($sp)
/* 021578 0x800BABE8 00601025 */ move	$v0, $v1
.L_800BABEC:
/* 021579 0x800BABEC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 021580 0x800BABF0 27BD0020 */ addiu	$sp, $sp, 32
/* 021581 0x800BABF4 03E00008 */ jr	$ra
/* 021582 0x800BABF8 00000000 */ nop

