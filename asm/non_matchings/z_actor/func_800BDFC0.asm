glabel func_800BDFC0
/* 024896 0x800BDFC0 27BDFFE0 */ addiu	$sp, $sp, -32
/* 024897 0x800BDFC4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 024898 0x800BDFC8 AFA50024 */ sw	$a1, 0X24($sp)
/* 024899 0x800BDFCC 00803825 */ move	$a3, $a0
/* 024900 0x800BDFD0 8CE60000 */ lw	$a2, 0X0($a3)
/* 024901 0x800BDFD4 3C0EDE00 */ lui	$t6, 0xDE00
/* 024902 0x800BDFD8 3C0F801C */ lui	$t7, %hi(sSetupDL + 0x4B0)
/* 024903 0x800BDFDC 8CC302B0 */ lw	$v1, 0X2B0($a2)
/* 024904 0x800BDFE0 25EF13A0 */ addiu	$t7, $t7, %lo(sSetupDL + 0x4B0)
/* 024905 0x800BDFE4 AC6F0004 */ sw	$t7, 0X4($v1)
/* 024906 0x800BDFE8 AC6E0000 */ sw	$t6, 0X0($v1)
/* 024907 0x800BDFEC 3C18DA38 */ lui	$t8, 0xDA38
/* 024908 0x800BDFF0 37180003 */ ori	$t8, $t8, 0X3
/* 024909 0x800BDFF4 AC780008 */ sw	$t8, 0X8($v1)
/* 024910 0x800BDFF8 8CE40000 */ lw	$a0, 0X0($a3)
/* 024911 0x800BDFFC AFA60018 */ sw	$a2, 0X18($sp)
/* 024912 0x800BE000 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 024913 0x800BE004 AFA3001C */ sw	$v1, 0X1C($sp)
/* 024914 0x800BE008 8FA3001C */ lw	$v1, 0X1C($sp)
/* 024915 0x800BE00C 8FA60018 */ lw	$a2, 0X18($sp)
/* 024916 0x800BE010 3C19DE00 */ lui	$t9, 0xDE00
/* 024917 0x800BE014 AC62000C */ sw	$v0, 0XC($v1)
/* 024918 0x800BE018 AC790010 */ sw	$t9, 0X10($v1)
/* 024919 0x800BE01C 8FA80024 */ lw	$t0, 0X24($sp)
/* 024920 0x800BE020 24690018 */ addiu	$t1, $v1, 24
/* 024921 0x800BE024 AC680014 */ sw	$t0, 0X14($v1)
/* 024922 0x800BE028 ACC902B0 */ sw	$t1, 0X2B0($a2)
/* 024923 0x800BE02C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 024924 0x800BE030 27BD0020 */ addiu	$sp, $sp, 32
/* 024925 0x800BE034 03E00008 */ jr	$ra
/* 024926 0x800BE038 00000000 */ nop

