glabel func_8012C5D8
/* 137926 0x8012C5D8 8C8302B0 */ lw	$v1, 0X2B0($a0)
/* 137927 0x8012C5DC 3C18801C */ lui	$t8, %hi(sSetupDL + 0x60)
/* 137928 0x8012C5E0 27180F50 */ addiu	$t8, $t8, %lo(sSetupDL + 0x60)
/* 137929 0x8012C5E4 246E0008 */ addiu	$t6, $v1, 8
/* 137930 0x8012C5E8 AC8E02B0 */ sw	$t6, 0X2B0($a0)
/* 137931 0x8012C5EC 3C0FDE00 */ lui	$t7, 0xDE00
/* 137932 0x8012C5F0 AC6F0000 */ sw	$t7, 0X0($v1)
/* 137933 0x8012C5F4 AC780004 */ sw	$t8, 0X4($v1)
/* 137934 0x8012C5F8 03E00008 */ jr	$ra
/* 137935 0x8012C5FC 00000000 */ nop

