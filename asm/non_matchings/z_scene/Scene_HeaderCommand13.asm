glabel Scene_HeaderCommand13
/* 141880 0x801303A0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 141881 0x801303A4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 141882 0x801303A8 AFA40018 */ sw	$a0, 0X18($sp)
/* 141883 0x801303AC 0C040141 */ jal	Lib_PtrSegToVirt
/* 141884 0x801303B0 8CA40004 */ lw	$a0, 0X4($a1)
/* 141885 0x801303B4 8FAE0018 */ lw	$t6, 0X18($sp)
/* 141886 0x801303B8 3C010002 */ lui	$at, 0x0002
/* 141887 0x801303BC 002E0821 */ addu	$at, $at, $t6
/* 141888 0x801303C0 AC228860 */ sw	$v0, -0X77A0($at)
/* 141889 0x801303C4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 141890 0x801303C8 03E00008 */ jr	$ra
/* 141891 0x801303CC 27BD0018 */ addiu	$sp, $sp, 24

