glabel func_800BE63C
/* 025311 0x800BE63C 908201F1 */ lbu	$v0, 0X1F1($a0)
/* 025312 0x800BE640 24010005 */ li	$at, 5
/* 025313 0x800BE644 10410009 */ beq	$v0, $at, .L_800BE66C
/* 025314 0x800BE648 24010006 */ li	$at, 6
/* 025315 0x800BE64C 10410007 */ beq	$v0, $at, .L_800BE66C
/* 025316 0x800BE650 24010007 */ li	$at, 7
/* 025317 0x800BE654 10410005 */ beq	$v0, $at, .L_800BE66C
/* 025318 0x800BE658 24010008 */ li	$at, 8
/* 025319 0x800BE65C 10410003 */ beq	$v0, $at, .L_800BE66C
/* 025320 0x800BE660 2401000C */ li	$at, 12
/* 025321 0x800BE664 54410004 */ bnel	$v0, $at, .L_800BE678
/* 025322 0x800BE668 00001025 */ move	$v0, $zero
.L_800BE66C:
/* 025323 0x800BE66C 03E00008 */ jr	$ra
/* 025324 0x800BE670 24020001 */ li	$v0, 1
/* 025325 0x800BE674 00001025 */ move	$v0, $zero
.L_800BE678:
/* 025326 0x800BE678 03E00008 */ jr	$ra
/* 025327 0x800BE67C 00000000 */ nop

