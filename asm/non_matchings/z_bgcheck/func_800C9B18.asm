glabel func_800C9B18
/* 036886 0x800C9B18 27BDFFE8 */ addiu	$sp, $sp, -24
/* 036887 0x800C9B1C AFBF0014 */ sw	$ra, 0X14($sp)
/* 036888 0x800C9B20 0C0325A5 */ jal	BgCheck_GetPolygonAttributes
/* 036889 0x800C9B24 00003825 */ move	$a3, $zero
/* 036890 0x800C9B28 00021682 */ srl	$v0, $v0, 26
/* 036891 0x800C9B2C 3042000F */ andi	$v0, $v0, 0XF
/* 036892 0x800C9B30 8FBF0014 */ lw	$ra, 0X14($sp)
/* 036893 0x800C9B34 27BD0018 */ addiu	$sp, $sp, 24
/* 036894 0x800C9B38 03E00008 */ jr	$ra
/* 036895 0x800C9B3C 00000000 */ nop

