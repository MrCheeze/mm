glabel func_80130784
/* 142129 0x80130784 27BDFFE8 */ addiu	$sp, $sp, -24
/* 142130 0x80130788 AFBF0014 */ sw	$ra, 0X14($sp)
/* 142131 0x8013078C 00802825 */ move	$a1, $a0
/* 142132 0x80130790 3C04801F */ lui	$a0, %hi(gSaveContext)
/* 142133 0x80130794 8C84F670 */ lw	$a0, %lo(gSaveContext)($a0)
/* 142134 0x80130798 00003025 */ move	$a2, $zero
/* 142135 0x8013079C 0C04C1DA */ jal	Scene_CreateEntrance
/* 142136 0x801307A0 00042242 */ srl	$a0, $a0, 9
/* 142137 0x801307A4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 142138 0x801307A8 27BD0018 */ addiu	$sp, $sp, 24
/* 142139 0x801307AC 03E00008 */ jr	$ra
/* 142140 0x801307B0 00000000 */ nop
/* 142141 0x801307B4 00000000 */ nop
/* 142142 0x801307B8 00000000 */ nop
/* 142143 0x801307BC 00000000 */ nop
