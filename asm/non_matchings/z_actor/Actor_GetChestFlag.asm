glabel Actor_GetChestFlag
/* 016494 0x800B5C78 8C8E1E68 */ lw	$t6, 0X1E68($a0)
/* 016495 0x800B5C7C 240F0001 */ li	$t7, 1
/* 016496 0x800B5C80 00AFC004 */ sllv	$t8, $t7, $a1
/* 016497 0x800B5C84 01D81024 */ and	$v0, $t6, $t8
/* 016498 0x800B5C88 03E00008 */ jr	$ra
/* 016499 0x800B5C8C 00000000 */ nop

