glabel Room_DrawType1Mesh
/* 140026 0x8012E6A8 27BDFFE8 */ addiu	$sp, $sp, -24
/* 140027 0x8012E6AC AFBF0014 */ sw	$ra, 0X14($sp)
/* 140028 0x8012E6B0 8CA20008 */ lw	$v0, 0X8($a1)
/* 140029 0x8012E6B4 24010001 */ li	$at, 1
/* 140030 0x8012E6B8 90430001 */ lbu	$v1, 0X1($v0)
/* 140031 0x8012E6BC 54610006 */ bnel	$v1, $at, .L_8012E6D8
/* 140032 0x8012E6C0 24010002 */ li	$at, 2
/* 140033 0x8012E6C4 0C04B7BA */ jal	func_8012DEE8
/* 140034 0x8012E6C8 00000000 */ nop
/* 140035 0x8012E6CC 1000000D */ b	.L_8012E704
/* 140036 0x8012E6D0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 140037 0x8012E6D4 24010002 */ li	$at, 2
.L_8012E6D8:
/* 140038 0x8012E6D8 14610005 */ bne	$v1, $at, .L_8012E6F0
/* 140039 0x8012E6DC 00000000 */ nop
/* 140040 0x8012E6E0 0C04B8CB */ jal	func_8012E32C
/* 140041 0x8012E6E4 00000000 */ nop
/* 140042 0x8012E6E8 10000006 */ b	.L_8012E704
/* 140043 0x8012E6EC 8FBF0014 */ lw	$ra, 0X14($sp)
.L_8012E6F0:
/* 140044 0x8012E6F0 3C04801E */ lui	$a0, %hi(D_801DDFAC)
/* 140045 0x8012E6F4 2484DFAC */ addiu	$a0, $a0, %lo(D_801DDFAC)
/* 140046 0x8012E6F8 0C0218A0 */ jal	assert_fail
/* 140047 0x8012E6FC 240503C5 */ li	$a1, 965
/* 140048 0x8012E700 8FBF0014 */ lw	$ra, 0X14($sp)
.L_8012E704:
/* 140049 0x8012E704 27BD0018 */ addiu	$sp, $sp, 24
/* 140050 0x8012E708 03E00008 */ jr	$ra
/* 140051 0x8012E70C 00000000 */ nop

