glabel SceneProc_DrawOpaqueAnimatedTextures
/* 143234 0x801318C8 27BDFFE0 */ addiu	$sp, $sp, -32
/* 143235 0x801318CC AFBF001C */ sw	$ra, 0X1C($sp)
/* 143236 0x801318D0 00C03825 */ move	$a3, $a2
/* 143237 0x801318D4 240E0001 */ li	$t6, 1
/* 143238 0x801318D8 AFAE0010 */ sw	$t6, 0X10($sp)
/* 143239 0x801318DC 0C04C5A4 */ jal	SceneProc_DrawAnimatedTextures
/* 143240 0x801318E0 3C063F80 */ lui	$a2, 0x3F80
/* 143241 0x801318E4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 143242 0x801318E8 27BD0020 */ addiu	$sp, $sp, 32
/* 143243 0x801318EC 03E00008 */ jr	$ra
/* 143244 0x801318F0 00000000 */ nop

