glabel func_800C9A4C
/* 036835 0x800C9A4C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 036836 0x800C9A50 AFBF0014 */ sw	$ra, 0X14($sp)
/* 036837 0x800C9A54 0C032689 */ jal	func_800C9A24
/* 036838 0x800C9A58 00000000 */ nop
/* 036839 0x800C9A5C 00027080 */ sll	$t6, $v0, 2
/* 036840 0x800C9A60 3C02801B */ lui	$v0, %hi(D_801B4620)
/* 036841 0x800C9A64 004E1021 */ addu	$v0, $v0, $t6
/* 036842 0x800C9A68 8C424620 */ lw	$v0, %lo(D_801B4620)($v0)
/* 036843 0x800C9A6C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 036844 0x800C9A70 27BD0018 */ addiu	$sp, $sp, 24
/* 036845 0x800C9A74 03E00008 */ jr	$ra
/* 036846 0x800C9A78 00000000 */ nop

