glabel Lib_StepTowardsCheck_f
/* 091487 0x800FF03C 44857000 */ mtc1	$a1, $f14
/* 091488 0x800FF040 44866000 */ mtc1	$a2, $f12
/* 091489 0x800FF044 44802000 */ mtc1	$zero, $f4
/* 091490 0x800FF048 00000000 */ nop
/* 091491 0x800FF04C 46046032 */ c.eq.s	$f12, $f4
/* 091492 0x800FF050 00000000 */ nop
/* 091493 0x800FF054 45030015 */ bc1tl .L_800FF0AC
/* 091494 0x800FF058 C4840000 */ lwc1	$f4, 0X0($a0)
/* 091495 0x800FF05C C4800000 */ lwc1	$f0, 0X0($a0)
/* 091496 0x800FF060 24020001 */ li	$v0, 1
/* 091497 0x800FF064 4600703C */ c.lt.s	$f14, $f0
/* 091498 0x800FF068 00000000 */ nop
/* 091499 0x800FF06C 45020003 */ bc1fl .L_800FF07C
/* 091500 0x800FF070 460C0180 */ add.s	$f6, $f0, $f12
/* 091501 0x800FF074 46006307 */ neg.s	$f12, $f12
/* 091502 0x800FF078 460C0180 */ add.s	$f6, $f0, $f12
.L_800FF07C:
/* 091503 0x800FF07C 44809000 */ mtc1	$zero, $f18
/* 091504 0x800FF080 E4860000 */ swc1	$f6, 0X0($a0)
/* 091505 0x800FF084 C4880000 */ lwc1	$f8, 0X0($a0)
/* 091506 0x800FF088 460E4281 */ sub.s	$f10, $f8, $f14
/* 091507 0x800FF08C 460C5402 */ mul.s	$f16, $f10, $f12
/* 091508 0x800FF090 4610903E */ c.le.s	$f18, $f16
/* 091509 0x800FF094 00000000 */ nop
/* 091510 0x800FF098 4502000B */ bc1fl .L_800FF0C8
/* 091511 0x800FF09C 00001025 */ move	$v0, $zero
/* 091512 0x800FF0A0 03E00008 */ jr	$ra
/* 091513 0x800FF0A4 E48E0000 */ swc1	$f14, 0X0($a0)
/* 091514 0x800FF0A8 C4840000 */ lwc1	$f4, 0X0($a0)
.L_800FF0AC:
/* 091515 0x800FF0AC 46047032 */ c.eq.s	$f14, $f4
/* 091516 0x800FF0B0 00000000 */ nop
/* 091517 0x800FF0B4 45020004 */ bc1fl .L_800FF0C8
/* 091518 0x800FF0B8 00001025 */ move	$v0, $zero
/* 091519 0x800FF0BC 03E00008 */ jr	$ra
/* 091520 0x800FF0C0 24020001 */ li	$v0, 1
/* 091521 0x800FF0C4 00001025 */ move	$v0, $zero
.L_800FF0C8:
/* 091522 0x800FF0C8 03E00008 */ jr	$ra
/* 091523 0x800FF0CC 00000000 */ nop

