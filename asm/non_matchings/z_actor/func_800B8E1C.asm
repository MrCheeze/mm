glabel func_800B8E1C
/* 019671 0x800B8E1C 27BDFFE0 */ addiu	$sp, $sp, -32
/* 019672 0x800B8E20 AFA7002C */ sw	$a3, 0X2C($sp)
/* 019673 0x800B8E24 00073C00 */ sll	$a3, $a3, 16
/* 019674 0x800B8E28 44866000 */ mtc1	$a2, $f12
/* 019675 0x800B8E2C 00073C03 */ sra	$a3, $a3, 16
/* 019676 0x800B8E30 AFBF001C */ sw	$ra, 0X1C($sp)
/* 019677 0x800B8E34 C7A40030 */ lwc1	$f4, 0X30($sp)
/* 019678 0x800B8E38 44066000 */ mfc1	$a2, $f12
/* 019679 0x800B8E3C AFA00014 */ sw	$zero, 0X14($sp)
/* 019680 0x800B8E40 0C02E375 */ jal	func_800B8DD4
/* 019681 0x800B8E44 E7A40010 */ swc1	$f4, 0X10($sp)
/* 019682 0x800B8E48 8FBF001C */ lw	$ra, 0X1C($sp)
/* 019683 0x800B8E4C 27BD0020 */ addiu	$sp, $sp, 32
/* 019684 0x800B8E50 03E00008 */ jr	$ra
/* 019685 0x800B8E54 00000000 */ nop

