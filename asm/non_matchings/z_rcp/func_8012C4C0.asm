glabel func_8012C4C0
/* 137856 0x8012C4C0 8C8302B0 */ lw	$v1, 0X2B0($a0)
/* 137857 0x8012C4C4 3C18801C */ lui	$t8, %hi(sSetupDL + 0x540)
/* 137858 0x8012C4C8 27181430 */ addiu	$t8, $t8, %lo(sSetupDL + 0x540)
/* 137859 0x8012C4CC 246E0008 */ addiu	$t6, $v1, 8
/* 137860 0x8012C4D0 AC8E02B0 */ sw	$t6, 0X2B0($a0)
/* 137861 0x8012C4D4 3C0FDE00 */ lui	$t7, 0xDE00
/* 137862 0x8012C4D8 AC6F0000 */ sw	$t7, 0X0($v1)
/* 137863 0x8012C4DC AC780004 */ sw	$t8, 0X4($v1)
/* 137864 0x8012C4E0 03E00008 */ jr	$ra
/* 137865 0x8012C4E4 00000000 */ nop

