glabel func_800FF2A8
/* 091642 0x800FF2A8 44857000 */ mtc1	$a1, $f14
/* 091643 0x800FF2AC 44866000 */ mtc1	$a2, $f12
/* 091644 0x800FF2B0 00001025 */ move	$v0, $zero
/* 091645 0x800FF2B4 C4820000 */ lwc1	$f2, 0X0($a0)
/* 091646 0x800FF2B8 44803000 */ mtc1	$zero, $f6
/* 091647 0x800FF2BC 460C1100 */ add.s	$f4, $f2, $f12
/* 091648 0x800FF2C0 460E1401 */ sub.s	$f16, $f2, $f14
/* 091649 0x800FF2C4 E4840000 */ swc1	$f4, 0X0($a0)
/* 091650 0x800FF2C8 C4880000 */ lwc1	$f8, 0X0($a0)
/* 091651 0x800FF2CC 460E4281 */ sub.s	$f10, $f8, $f14
/* 091652 0x800FF2D0 46105482 */ mul.s	$f18, $f10, $f16
/* 091653 0x800FF2D4 4606903E */ c.le.s	$f18, $f6
/* 091654 0x800FF2D8 00000000 */ nop
/* 091655 0x800FF2DC 45000004 */ bc1f .L_800FF2F0
/* 091656 0x800FF2E0 00000000 */ nop
/* 091657 0x800FF2E4 E48E0000 */ swc1	$f14, 0X0($a0)
/* 091658 0x800FF2E8 03E00008 */ jr	$ra
/* 091659 0x800FF2EC 24020001 */ li	$v0, 1
.L_800FF2F0:
/* 091660 0x800FF2F0 03E00008 */ jr	$ra
/* 091661 0x800FF2F4 00000000 */ nop

