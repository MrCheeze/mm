glabel SceneProc_DrawAllAnimatedTextures
/* 143223 0x8013189C 27BDFFE0 */ addiu	$sp, $sp, -32
/* 143224 0x801318A0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 143225 0x801318A4 00C03825 */ move	$a3, $a2
/* 143226 0x801318A8 240E0003 */ li	$t6, 3
/* 143227 0x801318AC AFAE0010 */ sw	$t6, 0X10($sp)
/* 143228 0x801318B0 0C04C5A4 */ jal	SceneProc_DrawAnimatedTextures
/* 143229 0x801318B4 3C063F80 */ lui	$a2, 0x3F80
/* 143230 0x801318B8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 143231 0x801318BC 27BD0020 */ addiu	$sp, $sp, 32
/* 143232 0x801318C0 03E00008 */ jr	$ra
/* 143233 0x801318C4 00000000 */ nop

