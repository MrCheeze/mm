glabel FaultDrawer_DrawText
/* 004591 0x8008481C 3C0EFFFA */ lui	$t6, 0xFFFA
/* 004592 0x80084820 03A07825 */ move	$t7, $sp
/* 004593 0x80084824 27BDFFE0 */ addiu	$sp, $sp, -32
/* 004594 0x80084828 35CE5A5A */ ori	$t6, $t6, 0X5A5A
.L_8008482C:
/* 004595 0x8008482C 25EFFFF8 */ addiu	$t7, $t7, -8
/* 004596 0x80084830 ADEE0000 */ sw	$t6, 0X0($t7)
/* 004597 0x80084834 15FDFFFD */ bne	$t7, $sp, .L_8008482C
/* 004598 0x80084838 ADEE0004 */ sw	$t6, 0X4($t7)
/* 004599 0x8008483C AFBF0014 */ sw	$ra, 0X14($sp)
/* 004600 0x80084840 AFA60028 */ sw	$a2, 0X28($sp)
/* 004601 0x80084844 AFA7002C */ sw	$a3, 0X2C($sp)
/* 004602 0x80084848 0C0210F5 */ jal	FaultDrawer_SetCursor
/* 004603 0x8008484C 00000000 */ nop
/* 004604 0x80084850 8FA40028 */ lw	$a0, 0X28($sp)
/* 004605 0x80084854 0C0211DF */ jal	FaultDrawer_VPrintf
/* 004606 0x80084858 27A5002C */ addiu	$a1, $sp, 44
/* 004607 0x8008485C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 004608 0x80084860 27BD0020 */ addiu	$sp, $sp, 32
/* 004609 0x80084864 03E00008 */ jr	$ra
/* 004610 0x80084868 00000000 */ nop

