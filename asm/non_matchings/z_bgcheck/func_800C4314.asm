glabel func_800C4314
/* 031253 0x800C4314 27BDFFC0 */ addiu	$sp, $sp, -64
/* 031254 0x800C4318 AFA50044 */ sw	$a1, 0X44($sp)
/* 031255 0x800C431C 00802825 */ move	$a1, $a0
/* 031256 0x800C4320 AFBF002C */ sw	$ra, 0X2C($sp)
/* 031257 0x800C4324 AFA40040 */ sw	$a0, 0X40($sp)
/* 031258 0x800C4328 AFA60048 */ sw	$a2, 0X48($sp)
/* 031259 0x800C432C 3C013F80 */ lui	$at, 0x3F80
/* 031260 0x800C4330 44812000 */ mtc1	$at, $f4
/* 031261 0x800C4334 8FAF0048 */ lw	$t7, 0X48($sp)
/* 031262 0x800C4338 27AE0034 */ addiu	$t6, $sp, 52
/* 031263 0x800C433C 2418001C */ li	$t8, 28
/* 031264 0x800C4340 AFB8001C */ sw	$t8, 0X1C($sp)
/* 031265 0x800C4344 AFAE0010 */ sw	$t6, 0X10($sp)
/* 031266 0x800C4348 00002025 */ move	$a0, $zero
/* 031267 0x800C434C 00003025 */ move	$a2, $zero
/* 031268 0x800C4350 27A7003C */ addiu	$a3, $sp, 60
/* 031269 0x800C4354 AFA00018 */ sw	$zero, 0X18($sp)
/* 031270 0x800C4358 AFA00024 */ sw	$zero, 0X24($sp)
/* 031271 0x800C435C AFAF0014 */ sw	$t7, 0X14($sp)
/* 031272 0x800C4360 0C030F54 */ jal	func_800C3D50
/* 031273 0x800C4364 E7A40020 */ swc1	$f4, 0X20($sp)
/* 031274 0x800C4368 8FB9003C */ lw	$t9, 0X3C($sp)
/* 031275 0x800C436C 46000086 */ mov.s	$f2, $f0
/* 031276 0x800C4370 8FA80044 */ lw	$t0, 0X44($sp)
/* 031277 0x800C4374 13200011 */ beqz	$t9, .L_800C43BC
/* 031278 0x800C4378 46001006 */ mov.s	$f0, $f2
/* 031279 0x800C437C 8B2A0000 */ lwl	$t2, 0X0($t9)
/* 031280 0x800C4380 9B2A0003 */ lwr	$t2, 0X3($t9)
/* 031281 0x800C4384 A90A0000 */ swl	$t2, 0X0($t0)
/* 031282 0x800C4388 B90A0003 */ swr	$t2, 0X3($t0)
/* 031283 0x800C438C 8B290004 */ lwl	$t1, 0X4($t9)
/* 031284 0x800C4390 9B290007 */ lwr	$t1, 0X7($t9)
/* 031285 0x800C4394 A9090004 */ swl	$t1, 0X4($t0)
/* 031286 0x800C4398 B9090007 */ swr	$t1, 0X7($t0)
/* 031287 0x800C439C 8B2A0008 */ lwl	$t2, 0X8($t9)
/* 031288 0x800C43A0 9B2A000B */ lwr	$t2, 0XB($t9)
/* 031289 0x800C43A4 A90A0008 */ swl	$t2, 0X8($t0)
/* 031290 0x800C43A8 B90A000B */ swr	$t2, 0XB($t0)
/* 031291 0x800C43AC 8B29000C */ lwl	$t1, 0XC($t9)
/* 031292 0x800C43B0 9B29000F */ lwr	$t1, 0XF($t9)
/* 031293 0x800C43B4 A909000C */ swl	$t1, 0XC($t0)
/* 031294 0x800C43B8 B909000F */ swr	$t1, 0XF($t0)
.L_800C43BC:
/* 031295 0x800C43BC 8FBF002C */ lw	$ra, 0X2C($sp)
/* 031296 0x800C43C0 27BD0040 */ addiu	$sp, $sp, 64
/* 031297 0x800C43C4 03E00008 */ jr	$ra
/* 031298 0x800C43C8 00000000 */ nop

