glabel func_8012C058
/* 137574 0x8012C058 8C8302B0 */ lw	$v1, 0X2B0($a0)
/* 137575 0x8012C05C 3C18801C */ lui	$t8, %hi(sSetupDL + 0xAE0)
/* 137576 0x8012C060 271819D0 */ addiu	$t8, $t8, %lo(sSetupDL + 0xAE0)
/* 137577 0x8012C064 246E0008 */ addiu	$t6, $v1, 8
/* 137578 0x8012C068 AC8E02B0 */ sw	$t6, 0X2B0($a0)
/* 137579 0x8012C06C 3C0FDE00 */ lui	$t7, 0xDE00
/* 137580 0x8012C070 AC6F0000 */ sw	$t7, 0X0($v1)
/* 137581 0x8012C074 AC780004 */ sw	$t8, 0X4($v1)
/* 137582 0x8012C078 03E00008 */ jr	$ra
/* 137583 0x8012C07C 00000000 */ nop

