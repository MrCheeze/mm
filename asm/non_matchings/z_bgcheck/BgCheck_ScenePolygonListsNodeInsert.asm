glabel BgCheck_ScenePolygonListsNodeInsert
/* 026683 0x800BFBAC 27BDFFE0 */ addiu	$sp, $sp, -32
/* 026684 0x800BFBB0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 026685 0x800BFBB4 AFA40020 */ sw	$a0, 0X20($sp)
/* 026686 0x800BFBB8 AFA50024 */ sw	$a1, 0X24($sp)
/* 026687 0x800BFBBC AFA60028 */ sw	$a2, 0X28($sp)
/* 026688 0x800BFBC0 0C0316EF */ jal	BgCheck_ScenePolygonListsReserveNode
/* 026689 0x800BFBC4 8FA40020 */ lw	$a0, 0X20($sp)
/* 026690 0x800BFBC8 8FAE0020 */ lw	$t6, 0X20($sp)
/* 026691 0x800BFBCC A7A2001E */ sh	$v0, 0X1E($sp)
/* 026692 0x800BFBD0 8FB90024 */ lw	$t9, 0X24($sp)
/* 026693 0x800BFBD4 8DCF0004 */ lw	$t7, 0X4($t6)
/* 026694 0x800BFBD8 0002C080 */ sll	$t8, $v0, 2
/* 026695 0x800BFBDC 8FA50028 */ lw	$a1, 0X28($sp)
/* 026696 0x800BFBE0 97260000 */ lhu	$a2, 0X0($t9)
/* 026697 0x800BFBE4 0C02FEE0 */ jal	BgCheck_PolygonLinkedListNodeInit
/* 026698 0x800BFBE8 01F82021 */ addu	$a0, $t7, $t8
/* 026699 0x800BFBEC 97A8001E */ lhu	$t0, 0X1E($sp)
/* 026700 0x800BFBF0 8FA90024 */ lw	$t1, 0X24($sp)
/* 026701 0x800BFBF4 A5280000 */ sh	$t0, 0X0($t1)
/* 026702 0x800BFBF8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 026703 0x800BFBFC 03E00008 */ jr	$ra
/* 026704 0x800BFC00 27BD0020 */ addiu	$sp, $sp, 32

