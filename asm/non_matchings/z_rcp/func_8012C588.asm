glabel func_8012C588
/* 137906 0x8012C588 8C8302C0 */ lw	$v1, 0X2C0($a0)
/* 137907 0x8012C58C 3C18801C */ lui	$t8, %hi(sSetupDL + 0xC0)
/* 137908 0x8012C590 27180FB0 */ addiu	$t8, $t8, %lo(sSetupDL + 0xC0)
/* 137909 0x8012C594 246E0008 */ addiu	$t6, $v1, 8
/* 137910 0x8012C598 AC8E02C0 */ sw	$t6, 0X2C0($a0)
/* 137911 0x8012C59C 3C0FDE00 */ lui	$t7, 0xDE00
/* 137912 0x8012C5A0 AC6F0000 */ sw	$t7, 0X0($v1)
/* 137913 0x8012C5A4 AC780004 */ sw	$t8, 0X4($v1)
/* 137914 0x8012C5A8 03E00008 */ jr	$ra
/* 137915 0x8012C5AC 00000000 */ nop

