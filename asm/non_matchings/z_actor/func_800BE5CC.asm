glabel func_800BE5CC
/* 025283 0x800BE5CC 27BDFFE8 */ addiu	$sp, $sp, -24
/* 025284 0x800BE5D0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 025285 0x800BE5D4 AFA40018 */ sw	$a0, 0X18($sp)
/* 025286 0x800BE5D8 00A03825 */ move	$a3, $a1
/* 025287 0x800BE5DC 8CEE001C */ lw	$t6, 0X1C($a3)
/* 025288 0x800BE5E0 00067980 */ sll	$t7, $a2, 6
/* 025289 0x800BE5E4 3C010001 */ lui	$at, 0x0001
/* 025290 0x800BE5E8 01CFC021 */ addu	$t8, $t6, $t7
/* 025291 0x800BE5EC 8F190024 */ lw	$t9, 0X24($t8)
/* 025292 0x800BE5F0 34213820 */ ori	$at, $at, 0X3820
/* 025293 0x800BE5F4 8FA50018 */ lw	$a1, 0X18($sp)
/* 025294 0x800BE5F8 8F280000 */ lw	$t0, 0X0($t9)
/* 025295 0x800BE5FC 01014824 */ and	$t1, $t0, $at
/* 025296 0x800BE600 11200006 */ beqz	$t1, .L_800BE61C
/* 025297 0x800BE604 00000000 */ nop
/* 025298 0x800BE608 8CEA0008 */ lw	$t2, 0X8($a3)
/* 025299 0x800BE60C 8FAC0018 */ lw	$t4, 0X18($sp)
/* 025300 0x800BE610 854B00BE */ lh	$t3, 0XBE($t2)
/* 025301 0x800BE614 10000005 */ b	.L_800BE62C
/* 025302 0x800BE618 A58B0032 */ sh	$t3, 0X32($t4)
.L_800BE61C:
/* 025303 0x800BE61C 0C02DB35 */ jal	Actor_YawBetweenActors
/* 025304 0x800BE620 8CE40008 */ lw	$a0, 0X8($a3)
/* 025305 0x800BE624 8FAD0018 */ lw	$t5, 0X18($sp)
/* 025306 0x800BE628 A5A20032 */ sh	$v0, 0X32($t5)
.L_800BE62C:
/* 025307 0x800BE62C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 025308 0x800BE630 27BD0018 */ addiu	$sp, $sp, 24
/* 025309 0x800BE634 03E00008 */ jr	$ra
/* 025310 0x800BE638 00000000 */ nop

