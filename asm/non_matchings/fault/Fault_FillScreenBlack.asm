glabel Fault_FillScreenBlack
/* 002078 0x800820D8 3C0EFFFA */ lui	$t6, 0xFFFA
/* 002079 0x800820DC 03A07825 */ move	$t7, $sp
/* 002080 0x800820E0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 002081 0x800820E4 35CE5A5A */ ori	$t6, $t6, 0X5A5A
.L_800820E8:
/* 002082 0x800820E8 25EFFFF8 */ addiu	$t7, $t7, -8
/* 002083 0x800820EC ADEE0000 */ sw	$t6, 0X0($t7)
/* 002084 0x800820F0 15FDFFFD */ bne	$t7, $sp, .L_800820E8
/* 002085 0x800820F4 ADEE0004 */ sw	$t6, 0X4($t7)
/* 002086 0x800820F8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002087 0x800820FC 0C0210AF */ jal	FaultDrawer_SetForeColor
/* 002088 0x80082100 3404FFFF */ ori	$a0, $zero, 0XFFFF
/* 002089 0x80082104 0C0210C2 */ jal	FaultDrawer_SetBackColor
/* 002090 0x80082108 24040001 */ li	$a0, 1
/* 002091 0x8008210C 0C021136 */ jal	FaultDrawer_FillScreen
/* 002092 0x80082110 00000000 */ nop
/* 002093 0x80082114 0C0210C2 */ jal	FaultDrawer_SetBackColor
/* 002094 0x80082118 00002025 */ move	$a0, $zero
/* 002095 0x8008211C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002096 0x80082120 27BD0018 */ addiu	$sp, $sp, 24
/* 002097 0x80082124 03E00008 */ jr	$ra
/* 002098 0x80082128 00000000 */ nop

