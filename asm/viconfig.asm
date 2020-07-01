.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel ViConfig_UpdateVi
/* 000352 0x800805E0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000353 0x800805E4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000354 0x800805E8 AFA40018 */ sw	$a0, 0X18($sp)
/* 000355 0x800805EC 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000356 0x800805F0 3C028000 */ lui	$v0, %hi(osTvType)
/* 000357 0x800805F4 3C04800A */ lui	$a0, %hi(D_8009B240)
/* 000358 0x800805F8 11C00028 */ beqz	$t6, .L_8008069C
/* 000359 0x800805FC 00000000 */ nop
/* 000360 0x80080600 8C420300 */ lw	$v0, %lo(osTvType)($v0)
/* 000361 0x80080604 24010001 */ li	$at, 1
/* 000362 0x80080608 3C048009 */ lui	$a0, %hi(osViModePalLan1)
/* 000363 0x8008060C 1040000B */ beqz	$v0, .L_8008063C
/* 000364 0x80080610 00000000 */ nop
/* 000365 0x80080614 1041000D */ beq	$v0, $at, .L_8008064C
/* 000366 0x80080618 3C048009 */ lui	$a0, %hi(osViModeNtscLan1)
/* 000367 0x8008061C 24010002 */ li	$at, 2
/* 000368 0x80080620 1441000A */ bne	$v0, $at, .L_8008064C
/* 000369 0x80080624 00000000 */ nop
/* 000370 0x80080628 3C04800A */ lui	$a0, %hi(osViModeMpalLan1)
/* 000371 0x8008062C 0C022D94 */ jal	osViSetMode
/* 000372 0x80080630 24848010 */ addiu	$a0, $a0, %lo(osViModeMpalLan1)
/* 000373 0x80080634 10000007 */ b	.L_80080654
/* 000374 0x80080638 00000000 */ nop
.L_8008063C:
/* 000375 0x8008063C 0C022D94 */ jal	osViSetMode
/* 000376 0x80080640 24847590 */ addiu	$a0, $a0, %lo(osViModePalLan1)
/* 000377 0x80080644 10000003 */ b	.L_80080654
/* 000378 0x80080648 00000000 */ nop
.L_8008064C:
/* 000379 0x8008064C 0C022D94 */ jal	osViSetMode
/* 000380 0x80080650 24847FC0 */ addiu	$a0, $a0, %lo(osViModeNtscLan1)
.L_80080654:
/* 000381 0x80080654 3C048009 */ lui	$a0, %hi(gViConfigFeatures)
/* 000382 0x80080658 8C846B2C */ lw	$a0, %lo(gViConfigFeatures)($a0)
/* 000383 0x8008065C 50800004 */ beqzl	$a0, .L_80080670
/* 000384 0x80080660 3C013F80 */ lui	$at, 0x3F80
/* 000385 0x80080664 0C024840 */ jal	osViSetSpecialFeatures
/* 000386 0x80080668 00000000 */ nop
/* 000387 0x8008066C 3C013F80 */ lui	$at, 0x3F80
.L_80080670:
/* 000388 0x80080670 44817000 */ mtc1	$at, $f14
/* 000389 0x80080674 3C018009 */ lui	$at, %hi(gViConfigYScale)
/* 000390 0x80080678 C4246B34 */ lwc1	$f4, %lo(gViConfigYScale)($at)
/* 000391 0x8008067C 46047032 */ c.eq.s	$f14, $f4
/* 000392 0x80080680 00000000 */ nop
/* 000393 0x80080684 45030029 */ bc1tl .L_8008072C
/* 000394 0x80080688 8FAF0018 */ lw	$t7, 0X18($sp)
/* 000395 0x8008068C 0C025640 */ jal	osViSetYScale
/* 000396 0x80080690 46007306 */ mov.s	$f12, $f14
/* 000397 0x80080694 10000025 */ b	.L_8008072C
/* 000398 0x80080698 8FAF0018 */ lw	$t7, 0X18($sp)
.L_8008069C:
/* 000399 0x8008069C 0C022D94 */ jal	osViSetMode
/* 000400 0x800806A0 2484B240 */ addiu	$a0, $a0, %lo(D_8009B240)
/* 000401 0x800806A4 3C048009 */ lui	$a0, %hi(gViConfigAdditionalScanLines)
/* 000402 0x800806A8 90846B28 */ lbu	$a0, %lo(gViConfigAdditionalScanLines)($a0)
/* 000403 0x800806AC 10800003 */ beqz	$a0, .L_800806BC
/* 000404 0x800806B0 00000000 */ nop
/* 000405 0x800806B4 0C021F80 */ jal	func_80087E00
/* 000406 0x800806B8 00000000 */ nop
.L_800806BC:
/* 000407 0x800806BC 3C048009 */ lui	$a0, %hi(gViConfigFeatures)
/* 000408 0x800806C0 8C846B2C */ lw	$a0, %lo(gViConfigFeatures)($a0)
/* 000409 0x800806C4 50800004 */ beqzl	$a0, .L_800806D8
/* 000410 0x800806C8 3C013F80 */ lui	$at, 0x3F80
/* 000411 0x800806CC 0C024840 */ jal	osViSetSpecialFeatures
/* 000412 0x800806D0 00000000 */ nop
/* 000413 0x800806D4 3C013F80 */ lui	$at, 0x3F80
.L_800806D8:
/* 000414 0x800806D8 44817000 */ mtc1	$at, $f14
/* 000415 0x800806DC 3C018009 */ lui	$at, %hi(gViConfigXScale)
/* 000416 0x800806E0 C42C6B30 */ lwc1	$f12, %lo(gViConfigXScale)($at)
/* 000417 0x800806E4 460C7032 */ c.eq.s	$f14, $f12
/* 000418 0x800806E8 00000000 */ nop
/* 000419 0x800806EC 45010006 */ bc1t .L_80080708
/* 000420 0x800806F0 00000000 */ nop
/* 000421 0x800806F4 0C025654 */ jal	osViSetXScale
/* 000422 0x800806F8 00000000 */ nop
/* 000423 0x800806FC 3C013F80 */ lui	$at, 0x3F80
/* 000424 0x80080700 44817000 */ mtc1	$at, $f14
/* 000425 0x80080704 00000000 */ nop
.L_80080708:
/* 000426 0x80080708 3C018009 */ lui	$at, %hi(gViConfigYScale)
/* 000427 0x8008070C C42C6B34 */ lwc1	$f12, %lo(gViConfigYScale)($at)
/* 000428 0x80080710 460C7032 */ c.eq.s	$f14, $f12
/* 000429 0x80080714 00000000 */ nop
/* 000430 0x80080718 45030004 */ bc1tl .L_8008072C
/* 000431 0x8008071C 8FAF0018 */ lw	$t7, 0X18($sp)
/* 000432 0x80080720 0C025640 */ jal	osViSetYScale
/* 000433 0x80080724 00000000 */ nop
/* 000434 0x80080728 8FAF0018 */ lw	$t7, 0X18($sp)
.L_8008072C:
/* 000435 0x8008072C 3C188009 */ lui	$t8, %hi(gViConfigUseDefault)
/* 000436 0x80080730 27186B24 */ addiu	$t8, $t8, %lo(gViConfigUseDefault)
/* 000437 0x80080734 A30F0000 */ sb	$t7, 0X0($t8)
/* 000438 0x80080738 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000439 0x8008073C 27BD0018 */ addiu	$sp, $sp, 24
/* 000440 0x80080740 03E00008 */ jr	$ra
/* 000441 0x80080744 00000000 */ nop

glabel ViConfig_UpdateBlack
/* 000442 0x80080748 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000443 0x8008074C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000444 0x80080750 3C0E8009 */ lui	$t6, %hi(gViConfigUseDefault)
/* 000445 0x80080754 25CE6B24 */ addiu	$t6, $t6, %lo(gViConfigUseDefault)
/* 000446 0x80080758 91CF0000 */ lbu	$t7, 0X0($t6)
/* 000447 0x8008075C 11E00005 */ beqz	$t7, .L_80080774
/* 000448 0x80080760 00000000 */ nop
/* 000449 0x80080764 0C022B9C */ jal	osViBlack
/* 000450 0x80080768 24040001 */ li	$a0, 1
/* 000451 0x8008076C 10000004 */ b	.L_80080780
/* 000452 0x80080770 8FBF0014 */ lw	$ra, 0X14($sp)
.L_80080774:
/* 000453 0x80080774 0C022B9C */ jal	osViBlack
/* 000454 0x80080778 00002025 */ move	$a0, $zero
/* 000455 0x8008077C 8FBF0014 */ lw	$ra, 0X14($sp)
.L_80080780:
/* 000456 0x80080780 27BD0018 */ addiu	$sp, $sp, 24
/* 000457 0x80080784 03E00008 */ jr	$ra
/* 000458 0x80080788 00000000 */ nop
/* 000459 0x8008078C 00000000 */ nop
