glabel func_8012C8AC
/* 138107 0x8012C8AC 8C8302B0 */ lw	$v1, 0X2B0($a0)
/* 138108 0x8012C8B0 3C18801C */ lui	$t8, %hi(sSetupDL + 0x7E0)
/* 138109 0x8012C8B4 271816D0 */ addiu	$t8, $t8, %lo(sSetupDL + 0x7E0)
/* 138110 0x8012C8B8 246E0008 */ addiu	$t6, $v1, 8
/* 138111 0x8012C8BC AC8E02B0 */ sw	$t6, 0X2B0($a0)
/* 138112 0x8012C8C0 3C0FDE00 */ lui	$t7, 0xDE00
/* 138113 0x8012C8C4 AC6F0000 */ sw	$t7, 0X0($v1)
/* 138114 0x8012C8C8 AC780004 */ sw	$t8, 0X4($v1)
/* 138115 0x8012C8CC 03E00008 */ jr	$ra
/* 138116 0x8012C8D0 00000000 */ nop

