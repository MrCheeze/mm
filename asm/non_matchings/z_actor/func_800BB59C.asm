glabel func_800BB59C
/* 022199 0x800BB59C 27BDFFE0 */ addiu	$sp, $sp, -32
/* 022200 0x800BB5A0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 022201 0x800BB5A4 27A6001E */ addiu	$a2, $sp, 30
/* 022202 0x800BB5A8 0C02E226 */ jal	func_800B8898
/* 022203 0x800BB5AC 27A7001C */ addiu	$a3, $sp, 28
/* 022204 0x800BB5B0 87A3001E */ lh	$v1, 0X1E($sp)
/* 022205 0x800BB5B4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 022206 0x800BB5B8 3C0E801D */ lui	$t6, %hi(gScreenWidth)
/* 022207 0x800BB5BC 2862FFED */ slti	$v0, $v1, -19
/* 022208 0x800BB5C0 38420001 */ xori	$v0, $v0, 0X1
/* 022209 0x800BB5C4 1040000D */ beqz	$v0, .L_800BB5FC
/* 022210 0x800BB5C8 00000000 */ nop
/* 022211 0x800BB5CC 8DCE1520 */ lw	$t6, %lo(gScreenWidth)($t6)
/* 022212 0x800BB5D0 25CF0014 */ addiu	$t7, $t6, 20
/* 022213 0x800BB5D4 006F102A */ slt	$v0, $v1, $t7
/* 022214 0x800BB5D8 10400008 */ beqz	$v0, .L_800BB5FC
/* 022215 0x800BB5DC 87A3001C */ lh	$v1, 0X1C($sp)
/* 022216 0x800BB5E0 2862FF61 */ slti	$v0, $v1, -159
/* 022217 0x800BB5E4 38420001 */ xori	$v0, $v0, 0X1
/* 022218 0x800BB5E8 10400004 */ beqz	$v0, .L_800BB5FC
/* 022219 0x800BB5EC 3C18801D */ lui	$t8, %hi(gScreenHeight)
/* 022220 0x800BB5F0 8F181524 */ lw	$t8, %lo(gScreenHeight)($t8)
/* 022221 0x800BB5F4 271900A0 */ addiu	$t9, $t8, 160
/* 022222 0x800BB5F8 0079102A */ slt	$v0, $v1, $t9
.L_800BB5FC:
/* 022223 0x800BB5FC 03E00008 */ jr	$ra
/* 022224 0x800BB600 27BD0020 */ addiu	$sp, $sp, 32

