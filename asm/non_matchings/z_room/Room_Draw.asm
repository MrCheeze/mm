glabel Room_Draw
/* 140346 0x8012EBA8 27BDFFE8 */ addiu	$sp, $sp, -24
/* 140347 0x8012EBAC AFBF0014 */ sw	$ra, 0X14($sp)
/* 140348 0x8012EBB0 8CA2000C */ lw	$v0, 0XC($a1)
/* 140349 0x8012EBB4 3C018000 */ lui	$at, 0x8000
/* 140350 0x8012EBB8 1040000B */ beqz	$v0, .L_8012EBE8
/* 140351 0x8012EBBC 00417021 */ addu	$t6, $v0, $at
/* 140352 0x8012EBC0 3C018020 */ lui	$at, %hi(gRspSegmentPhysAddrs + 0xC)
/* 140353 0x8012EBC4 AC2E818C */ sw	$t6, %lo(gRspSegmentPhysAddrs + 0xC)($at)
/* 140354 0x8012EBC8 8CAF0008 */ lw	$t7, 0X8($a1)
/* 140355 0x8012EBCC 3C01801C */ lui	$at, %hi(roomDrawFuncs)
/* 140356 0x8012EBD0 91F80000 */ lbu	$t8, 0X0($t7)
/* 140357 0x8012EBD4 0018C880 */ sll	$t9, $t8, 2
/* 140358 0x8012EBD8 00390821 */ addu	$at, $at, $t9
/* 140359 0x8012EBDC 8C391D1C */ lw	$t9, %lo(roomDrawFuncs)($at)
/* 140360 0x8012EBE0 0320F809 */ jalr	$t9
/* 140361 0x8012EBE4 00000000 */ nop
.L_8012EBE8:
/* 140362 0x8012EBE8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 140363 0x8012EBEC 27BD0018 */ addiu	$sp, $sp, 24
/* 140364 0x8012EBF0 03E00008 */ jr	$ra
/* 140365 0x8012EBF4 00000000 */ nop

