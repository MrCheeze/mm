glabel SceneProc_DrawAllSceneAnimatedTexturesWithAlpha
/* 143181 0x801317F4 27BDFFE0 */ addiu	$sp, $sp, -32
/* 143182 0x801317F8 44866000 */ mtc1	$a2, $f12
/* 143183 0x801317FC AFBF001C */ sw	$ra, 0X1C($sp)
/* 143184 0x80131800 3C070002 */ lui	$a3, 0x0002
/* 143185 0x80131804 00E43821 */ addu	$a3, $a3, $a0
/* 143186 0x80131808 8CE78840 */ lw	$a3, -0X77C0($a3)
/* 143187 0x8013180C 44066000 */ mfc1	$a2, $f12
/* 143188 0x80131810 240E0003 */ li	$t6, 3
/* 143189 0x80131814 0C04C5A4 */ jal	SceneProc_DrawAnimatedTextures
/* 143190 0x80131818 AFAE0010 */ sw	$t6, 0X10($sp)
/* 143191 0x8013181C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 143192 0x80131820 27BD0020 */ addiu	$sp, $sp, 32
/* 143193 0x80131824 03E00008 */ jr	$ra
/* 143194 0x80131828 00000000 */ nop

