glabel func_8012CB04
/* 138257 0x8012CB04 27BDFFE0 */ addiu	$sp, $sp, -32
/* 138258 0x8012CB08 AFBF001C */ sw	$ra, 0X1C($sp)
/* 138259 0x8012CB0C 00003825 */ move	$a3, $zero
/* 138260 0x8012CB10 0C04B298 */ jal	Gfx_BranchTexScroll
/* 138261 0x8012CB14 AFA00010 */ sw	$zero, 0X10($sp)
/* 138262 0x8012CB18 8FBF001C */ lw	$ra, 0X1C($sp)
/* 138263 0x8012CB1C 27BD0020 */ addiu	$sp, $sp, 32
/* 138264 0x8012CB20 03E00008 */ jr	$ra
/* 138265 0x8012CB24 00000000 */ nop

