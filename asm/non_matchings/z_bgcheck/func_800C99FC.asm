glabel func_800C99FC
/* 036815 0x800C99FC 27BDFFE8 */ addiu	$sp, $sp, -24
/* 036816 0x800C9A00 AFBF0014 */ sw	$ra, 0X14($sp)
/* 036817 0x800C9A04 0C0325A5 */ jal	BgCheck_GetPolygonAttributes
/* 036818 0x800C9A08 00003825 */ move	$a3, $zero
/* 036819 0x800C9A0C 00021482 */ srl	$v0, $v0, 18
/* 036820 0x800C9A10 30420007 */ andi	$v0, $v0, 0X7
/* 036821 0x800C9A14 8FBF0014 */ lw	$ra, 0X14($sp)
/* 036822 0x800C9A18 27BD0018 */ addiu	$sp, $sp, 24
/* 036823 0x800C9A1C 03E00008 */ jr	$ra
/* 036824 0x800C9A20 00000000 */ nop

