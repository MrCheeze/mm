glabel Dmamgr_Stop
/* 000872 0x80080E00 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000873 0x80080E04 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000874 0x80080E08 3C04800A */ lui	$a0, %hi(dmamgrMsq)
/* 000875 0x80080E0C 2484B2C0 */ addiu	$a0, $a0, %lo(dmamgrMsq)
/* 000876 0x80080E10 00002825 */ move	$a1, $zero
/* 000877 0x80080E14 0C021EC4 */ jal	osSendMesg
/* 000878 0x80080E18 24060001 */ li	$a2, 1
/* 000879 0x80080E1C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000880 0x80080E20 27BD0018 */ addiu	$sp, $sp, 24
/* 000881 0x80080E24 03E00008 */ jr	$ra
/* 000882 0x80080E28 00000000 */ nop
/* 000883 0x80080E2C 00000000 */ nop
