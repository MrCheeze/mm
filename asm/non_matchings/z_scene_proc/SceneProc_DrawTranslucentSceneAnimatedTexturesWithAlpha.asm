glabel SceneProc_DrawTranslucentSceneAnimatedTexturesWithAlpha
/* 143209 0x80131864 27BDFFE0 */ addiu	$sp, $sp, -32
/* 143210 0x80131868 44866000 */ mtc1	$a2, $f12
/* 143211 0x8013186C AFBF001C */ sw	$ra, 0X1C($sp)
/* 143212 0x80131870 3C070002 */ lui	$a3, 0x0002
/* 143213 0x80131874 00E43821 */ addu	$a3, $a3, $a0
/* 143214 0x80131878 8CE78840 */ lw	$a3, -0X77C0($a3)
/* 143215 0x8013187C 44066000 */ mfc1	$a2, $f12
/* 143216 0x80131880 240E0002 */ li	$t6, 2
/* 143217 0x80131884 0C04C5A4 */ jal	SceneProc_DrawAnimatedTextures
/* 143218 0x80131888 AFAE0010 */ sw	$t6, 0X10($sp)
/* 143219 0x8013188C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 143220 0x80131890 27BD0020 */ addiu	$sp, $sp, 32
/* 143221 0x80131894 03E00008 */ jr	$ra
/* 143222 0x80131898 00000000 */ nop

