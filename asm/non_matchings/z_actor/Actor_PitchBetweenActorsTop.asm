glabel Actor_PitchBetweenActorsTop
/* 017583 0x800B6D7C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 017584 0x800B6D80 AFBF0014 */ sw	$ra, 0X14($sp)
/* 017585 0x800B6D84 00803025 */ move	$a2, $a0
/* 017586 0x800B6D88 00A03825 */ move	$a3, $a1
/* 017587 0x800B6D8C 24C4003C */ addiu	$a0, $a2, 60
/* 017588 0x800B6D90 0C03FEA5 */ jal	Math_Vec3f_Pitch
/* 017589 0x800B6D94 24E5003C */ addiu	$a1, $a3, 60
/* 017590 0x800B6D98 8FBF0014 */ lw	$ra, 0X14($sp)
/* 017591 0x800B6D9C 27BD0018 */ addiu	$sp, $sp, 24
/* 017592 0x800B6DA0 03E00008 */ jr	$ra
/* 017593 0x800B6DA4 00000000 */ nop

