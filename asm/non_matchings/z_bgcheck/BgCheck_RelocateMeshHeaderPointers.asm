glabel BgCheck_RelocateMeshHeaderPointers
/* 036488 0x800C94E0 27BDFFE0 */ addiu	$sp, $sp, -32
/* 036489 0x800C94E4 AFB00018 */ sw	$s0, 0X18($sp)
/* 036490 0x800C94E8 00808025 */ move	$s0, $a0
/* 036491 0x800C94EC AFBF001C */ sw	$ra, 0X1C($sp)
/* 036492 0x800C94F0 0C040141 */ jal	Lib_PtrSegToVirt
/* 036493 0x800C94F4 8E040010 */ lw	$a0, 0X10($s0)
/* 036494 0x800C94F8 AE020010 */ sw	$v0, 0X10($s0)
/* 036495 0x800C94FC 0C040141 */ jal	Lib_PtrSegToVirt
/* 036496 0x800C9500 8E040018 */ lw	$a0, 0X18($s0)
/* 036497 0x800C9504 8E04001C */ lw	$a0, 0X1C($s0)
/* 036498 0x800C9508 AE020018 */ sw	$v0, 0X18($s0)
/* 036499 0x800C950C 50800005 */ beqzl	$a0, .L_800C9524
/* 036500 0x800C9510 8E040020 */ lw	$a0, 0X20($s0)
/* 036501 0x800C9514 0C040141 */ jal	Lib_PtrSegToVirt
/* 036502 0x800C9518 00000000 */ nop
/* 036503 0x800C951C AE02001C */ sw	$v0, 0X1C($s0)
/* 036504 0x800C9520 8E040020 */ lw	$a0, 0X20($s0)
.L_800C9524:
/* 036505 0x800C9524 50800005 */ beqzl	$a0, .L_800C953C
/* 036506 0x800C9528 8E040028 */ lw	$a0, 0X28($s0)
/* 036507 0x800C952C 0C040141 */ jal	Lib_PtrSegToVirt
/* 036508 0x800C9530 00000000 */ nop
/* 036509 0x800C9534 AE020020 */ sw	$v0, 0X20($s0)
/* 036510 0x800C9538 8E040028 */ lw	$a0, 0X28($s0)
.L_800C953C:
/* 036511 0x800C953C 50800005 */ beqzl	$a0, .L_800C9554
/* 036512 0x800C9540 8FBF001C */ lw	$ra, 0X1C($sp)
/* 036513 0x800C9544 0C040141 */ jal	Lib_PtrSegToVirt
/* 036514 0x800C9548 00000000 */ nop
/* 036515 0x800C954C AE020028 */ sw	$v0, 0X28($s0)
/* 036516 0x800C9550 8FBF001C */ lw	$ra, 0X1C($sp)
.L_800C9554:
/* 036517 0x800C9554 8FB00018 */ lw	$s0, 0X18($sp)
/* 036518 0x800C9558 27BD0020 */ addiu	$sp, $sp, 32
/* 036519 0x800C955C 03E00008 */ jr	$ra
/* 036520 0x800C9560 00000000 */ nop

