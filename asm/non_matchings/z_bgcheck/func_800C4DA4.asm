glabel func_800C4DA4
/* 031929 0x800C4DA4 27BDFFC8 */ addiu	$sp, $sp, -56
/* 031930 0x800C4DA8 AFA60040 */ sw	$a2, 0X40($sp)
/* 031931 0x800C4DAC AFA70044 */ sw	$a3, 0X44($sp)
/* 031932 0x800C4DB0 8FA70040 */ lw	$a3, 0X40($sp)
/* 031933 0x800C4DB4 00A03025 */ move	$a2, $a1
/* 031934 0x800C4DB8 AFBF0034 */ sw	$ra, 0X34($sp)
/* 031935 0x800C4DBC AFA5003C */ sw	$a1, 0X3C($sp)
/* 031936 0x800C4DC0 8FAE0044 */ lw	$t6, 0X44($sp)
/* 031937 0x800C4DC4 C7A40048 */ lwc1	$f4, 0X48($sp)
/* 031938 0x800C4DC8 8FAF004C */ lw	$t7, 0X4C($sp)
/* 031939 0x800C4DCC 8FB80050 */ lw	$t8, 0X50($sp)
/* 031940 0x800C4DD0 8FB90054 */ lw	$t9, 0X54($sp)
/* 031941 0x800C4DD4 C7A60058 */ lwc1	$f6, 0X58($sp)
/* 031942 0x800C4DD8 24080001 */ li	$t0, 1
/* 031943 0x800C4DDC AFA80028 */ sw	$t0, 0X28($sp)
/* 031944 0x800C4DE0 24050002 */ li	$a1, 2
/* 031945 0x800C4DE4 AFAE0010 */ sw	$t6, 0X10($sp)
/* 031946 0x800C4DE8 E7A40014 */ swc1	$f4, 0X14($sp)
/* 031947 0x800C4DEC AFAF0018 */ sw	$t7, 0X18($sp)
/* 031948 0x800C4DF0 AFB8001C */ sw	$t8, 0X1C($sp)
/* 031949 0x800C4DF4 AFB90020 */ sw	$t9, 0X20($sp)
/* 031950 0x800C4DF8 0C031171 */ jal	func_800C45C4
/* 031951 0x800C4DFC E7A60024 */ swc1	$f6, 0X24($sp)
/* 031952 0x800C4E00 8FBF0034 */ lw	$ra, 0X34($sp)
/* 031953 0x800C4E04 27BD0038 */ addiu	$sp, $sp, 56
/* 031954 0x800C4E08 03E00008 */ jr	$ra
/* 031955 0x800C4E0C 00000000 */ nop

