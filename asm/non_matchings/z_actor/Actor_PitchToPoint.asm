glabel Actor_PitchToPoint
/* 017594 0x800B6DA8 27BDFFE8 */ addiu	$sp, $sp, -24
/* 017595 0x800B6DAC AFBF0014 */ sw	$ra, 0X14($sp)
/* 017596 0x800B6DB0 00803025 */ move	$a2, $a0
/* 017597 0x800B6DB4 0C03FEA5 */ jal	Math_Vec3f_Pitch
/* 017598 0x800B6DB8 24C40024 */ addiu	$a0, $a2, 36
/* 017599 0x800B6DBC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 017600 0x800B6DC0 27BD0018 */ addiu	$sp, $sp, 24
/* 017601 0x800B6DC4 03E00008 */ jr	$ra
/* 017602 0x800B6DC8 00000000 */ nop

