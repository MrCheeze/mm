glabel func_80131DF0
/* 143564 0x80131DF0 00057080 */ sll	$t6, $a1, 2
/* 143565 0x80131DF4 3C02801C */ lui	$v0, %hi(D_801C3C50)
/* 143566 0x80131DF8 004E1021 */ addu	$v0, $v0, $t6
/* 143567 0x80131DFC 8C423C50 */ lw	$v0, %lo(D_801C3C50)($v0)
/* 143568 0x80131E00 30CF0001 */ andi	$t7, $a2, 0X1
/* 143569 0x80131E04 11E00008 */ beqz	$t7, .L_80131E28
/* 143570 0x80131E08 8C830000 */ lw	$v1, 0X0($a0)
/* 143571 0x80131E0C 8C6502B0 */ lw	$a1, 0X2B0($v1)
/* 143572 0x80131E10 3C19DB06 */ lui	$t9, 0xDB06
/* 143573 0x80131E14 37390030 */ ori	$t9, $t9, 0X30
/* 143574 0x80131E18 24B80008 */ addiu	$t8, $a1, 8
/* 143575 0x80131E1C AC7802B0 */ sw	$t8, 0X2B0($v1)
/* 143576 0x80131E20 ACA20004 */ sw	$v0, 0X4($a1)
/* 143577 0x80131E24 ACB90000 */ sw	$t9, 0X0($a1)
.L_80131E28:
/* 143578 0x80131E28 30C80002 */ andi	$t0, $a2, 0X2
/* 143579 0x80131E2C 11000008 */ beqz	$t0, .L_80131E50
/* 143580 0x80131E30 00000000 */ nop
/* 143581 0x80131E34 8C6502C0 */ lw	$a1, 0X2C0($v1)
/* 143582 0x80131E38 3C0ADB06 */ lui	$t2, 0xDB06
/* 143583 0x80131E3C 354A0030 */ ori	$t2, $t2, 0X30
/* 143584 0x80131E40 24A90008 */ addiu	$t1, $a1, 8
/* 143585 0x80131E44 AC6902C0 */ sw	$t1, 0X2C0($v1)
/* 143586 0x80131E48 ACA20004 */ sw	$v0, 0X4($a1)
/* 143587 0x80131E4C ACAA0000 */ sw	$t2, 0X0($a1)
.L_80131E50:
/* 143588 0x80131E50 03E00008 */ jr	$ra
/* 143589 0x80131E54 00000000 */ nop

