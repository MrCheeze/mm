glabel func_801000F4
/* 092557 0x801000F4 27BDFFE8 */ addiu	$sp, $sp, -24
/* 092558 0x801000F8 AFA5001C */ sw	$a1, 0X1C($sp)
/* 092559 0x801000FC 30A5FFFF */ andi	$a1, $a1, 0XFFFF
/* 092560 0x80100100 AFBF0014 */ sw	$ra, 0X14($sp)
/* 092561 0x80100104 0C067C70 */ jal	func_8019F1C0
/* 092562 0x80100108 00000000 */ nop
/* 092563 0x8010010C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 092564 0x80100110 27BD0018 */ addiu	$sp, $sp, 24
/* 092565 0x80100114 03E00008 */ jr	$ra
/* 092566 0x80100118 00000000 */ nop

