glabel func_800C5A20
/* 032728 0x800C5A20 27BDFFD0 */ addiu	$sp, $sp, -48
/* 032729 0x800C5A24 44866000 */ mtc1	$a2, $f12
/* 032730 0x800C5A28 AFBF0024 */ sw	$ra, 0X24($sp)
/* 032731 0x800C5A2C AFA50034 */ sw	$a1, 0X34($sp)
/* 032732 0x800C5A30 8FAE0034 */ lw	$t6, 0X34($sp)
/* 032733 0x800C5A34 00002825 */ move	$a1, $zero
/* 032734 0x800C5A38 27A6002C */ addiu	$a2, $sp, 44
/* 032735 0x800C5A3C 27A70028 */ addiu	$a3, $sp, 40
/* 032736 0x800C5A40 E7AC0014 */ swc1	$f12, 0X14($sp)
/* 032737 0x800C5A44 AFA00018 */ sw	$zero, 0X18($sp)
/* 032738 0x800C5A48 AFA0001C */ sw	$zero, 0X1C($sp)
/* 032739 0x800C5A4C 0C031655 */ jal	func_800C5954
/* 032740 0x800C5A50 AFAE0010 */ sw	$t6, 0X10($sp)
/* 032741 0x800C5A54 8FBF0024 */ lw	$ra, 0X24($sp)
/* 032742 0x800C5A58 27BD0030 */ addiu	$sp, $sp, 48
/* 032743 0x800C5A5C 03E00008 */ jr	$ra
/* 032744 0x800C5A60 00000000 */ nop

