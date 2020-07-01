.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_8008A170
/* 010308 0x8008A170 27BDFF98 */ addiu	$sp, $sp, -104
/* 010309 0x8008A174 AFBF0024 */ sw	$ra, 0X24($sp)
/* 010310 0x8008A178 AFB20020 */ sw	$s2, 0X20($sp)
/* 010311 0x8008A17C AFB1001C */ sw	$s1, 0X1C($sp)
/* 010312 0x8008A180 AFB00018 */ sw	$s0, 0X18($sp)
/* 010313 0x8008A184 8C820008 */ lw	$v0, 0X8($a0)
/* 010314 0x8008A188 24010001 */ li	$at, 1
/* 010315 0x8008A18C 00A08825 */ move	$s1, $a1
/* 010316 0x8008A190 1041000A */ beq	$v0, $at, .L_8008A1BC
/* 010317 0x8008A194 00809025 */ move	$s2, $a0
/* 010318 0x8008A198 24010002 */ li	$at, 2
/* 010319 0x8008A19C 10410026 */ beq	$v0, $at, .L_8008A238
/* 010320 0x8008A1A0 24010003 */ li	$at, 3
/* 010321 0x8008A1A4 1041003E */ beq	$v0, $at, .L_8008A2A0
/* 010322 0x8008A1A8 24010004 */ li	$at, 4
/* 010323 0x8008A1AC 504100B8 */ beql	$v0, $at, .L_8008A490
/* 010324 0x8008A1B0 240D0004 */ li	$t5, 4
/* 010325 0x8008A1B4 100000DA */ b	.L_8008A520
/* 010326 0x8008A1B8 24020005 */ li	$v0, 5
.L_8008A1BC:
/* 010327 0x8008A1BC 8E440000 */ lw	$a0, 0X0($s2)
/* 010328 0x8008A1C0 8E450004 */ lw	$a1, 0X4($s2)
/* 010329 0x8008A1C4 0C0249CC */ jal	func_80092730
/* 010330 0x8008A1C8 27A6005F */ addiu	$a2, $sp, 95
/* 010331 0x8008A1CC 10400003 */ beqz	$v0, .L_8008A1DC
/* 010332 0x8008A1D0 93AE005F */ lbu	$t6, 0X5F($sp)
/* 010333 0x8008A1D4 100000D3 */ b	.L_8008A524
/* 010334 0x8008A1D8 8FBF0024 */ lw	$ra, 0X24($sp)
.L_8008A1DC:
/* 010335 0x8008A1DC 31CF0001 */ andi	$t7, $t6, 0X1
/* 010336 0x8008A1E0 11E00003 */ beqz	$t7, .L_8008A1F0
/* 010337 0x8008A1E4 27A70038 */ addiu	$a3, $sp, 56
/* 010338 0x8008A1E8 100000CD */ b	.L_8008A520
/* 010339 0x8008A1EC 2402000C */ li	$v0, 12
.L_8008A1F0:
/* 010340 0x8008A1F0 8E440000 */ lw	$a0, 0X0($s2)
/* 010341 0x8008A1F4 8E450004 */ lw	$a1, 0X4($s2)
/* 010342 0x8008A1F8 0C023BB4 */ jal	func_8008EED0
/* 010343 0x8008A1FC 00003025 */ move	$a2, $zero
/* 010344 0x8008A200 10400003 */ beqz	$v0, .L_8008A210
/* 010345 0x8008A204 93B80038 */ lbu	$t8, 0X38($sp)
/* 010346 0x8008A208 100000C6 */ b	.L_8008A524
/* 010347 0x8008A20C 8FBF0024 */ lw	$ra, 0X24($sp)
.L_8008A210:
/* 010348 0x8008A210 33190007 */ andi	$t9, $t8, 0X7
/* 010349 0x8008A214 A259000C */ sb	$t9, 0XC($s2)
/* 010350 0x8008A218 3C01800A */ lui	$at, %hi(D_8009CF60)
/* 010351 0x8008A21C 13200006 */ beqz	$t9, .L_8008A238
/* 010352 0x8008A220 A039CF60 */ sb	$t9, %lo(D_8009CF60)($at)
/* 010353 0x8008A224 24010007 */ li	$at, 7
/* 010354 0x8008A228 53210004 */ beql	$t9, $at, .L_8008A23C
/* 010355 0x8008A22C 24090002 */ li	$t1, 2
/* 010356 0x8008A230 100000BB */ b	.L_8008A520
/* 010357 0x8008A234 2402000C */ li	$v0, 12
.L_8008A238:
/* 010358 0x8008A238 24090002 */ li	$t1, 2
.L_8008A23C:
/* 010359 0x8008A23C 27B00038 */ addiu	$s0, $sp, 56
/* 010360 0x8008A240 AE490008 */ sw	$t1, 0X8($s2)
/* 010361 0x8008A244 8E440000 */ lw	$a0, 0X0($s2)
/* 010362 0x8008A248 8E450004 */ lw	$a1, 0X4($s2)
/* 010363 0x8008A24C 0C0249CC */ jal	func_80092730
/* 010364 0x8008A250 27A6005F */ addiu	$a2, $sp, 95
/* 010365 0x8008A254 10400003 */ beqz	$v0, .L_8008A264
/* 010366 0x8008A258 93AA005F */ lbu	$t2, 0X5F($sp)
/* 010367 0x8008A25C 100000B1 */ b	.L_8008A524
/* 010368 0x8008A260 8FBF0024 */ lw	$ra, 0X24($sp)
.L_8008A264:
/* 010369 0x8008A264 314B0002 */ andi	$t3, $t2, 0X2
/* 010370 0x8008A268 11600003 */ beqz	$t3, .L_8008A278
/* 010371 0x8008A26C 240C0600 */ li	$t4, 1536
/* 010372 0x8008A270 100000AB */ b	.L_8008A520
/* 010373 0x8008A274 2402000F */ li	$v0, 15
.L_8008A278:
/* 010374 0x8008A278 AE0C0000 */ sw	$t4, 0X0($s0)
/* 010375 0x8008A27C 8E450004 */ lw	$a1, 0X4($s2)
/* 010376 0x8008A280 8E440000 */ lw	$a0, 0X0($s2)
/* 010377 0x8008A284 00003025 */ move	$a2, $zero
/* 010378 0x8008A288 0C025950 */ jal	func_80096540
/* 010379 0x8008A28C 02003825 */ move	$a3, $s0
/* 010380 0x8008A290 50400004 */ beqzl	$v0, .L_8008A2A4
/* 010381 0x8008A294 240D0003 */ li	$t5, 3
/* 010382 0x8008A298 100000A2 */ b	.L_8008A524
/* 010383 0x8008A29C 8FBF0024 */ lw	$ra, 0X24($sp)
.L_8008A2A0:
/* 010384 0x8008A2A0 240D0003 */ li	$t5, 3
.L_8008A2A4:
/* 010385 0x8008A2A4 27B00038 */ addiu	$s0, $sp, 56
/* 010386 0x8008A2A8 AE4D0008 */ sw	$t5, 0X8($s2)
/* 010387 0x8008A2AC 8E440000 */ lw	$a0, 0X0($s2)
/* 010388 0x8008A2B0 8E450004 */ lw	$a1, 0X4($s2)
/* 010389 0x8008A2B4 0C0249CC */ jal	func_80092730
/* 010390 0x8008A2B8 27A6005F */ addiu	$a2, $sp, 95
/* 010391 0x8008A2BC 10400003 */ beqz	$v0, .L_8008A2CC
/* 010392 0x8008A2C0 93AE005F */ lbu	$t6, 0X5F($sp)
/* 010393 0x8008A2C4 10000097 */ b	.L_8008A524
/* 010394 0x8008A2C8 8FBF0024 */ lw	$ra, 0X24($sp)
.L_8008A2CC:
/* 010395 0x8008A2CC 31CF0001 */ andi	$t7, $t6, 0X1
/* 010396 0x8008A2D0 11E00003 */ beqz	$t7, .L_8008A2E0
/* 010397 0x8008A2D4 00003025 */ move	$a2, $zero
/* 010398 0x8008A2D8 10000091 */ b	.L_8008A520
/* 010399 0x8008A2DC 2402000F */ li	$v0, 15
.L_8008A2E0:
/* 010400 0x8008A2E0 8E440000 */ lw	$a0, 0X0($s2)
/* 010401 0x8008A2E4 8E450004 */ lw	$a1, 0X4($s2)
/* 010402 0x8008A2E8 0C023DF4 */ jal	func_8008F7D0
/* 010403 0x8008A2EC 02003825 */ move	$a3, $s0
/* 010404 0x8008A2F0 10400003 */ beqz	$v0, .L_8008A300
/* 010405 0x8008A2F4 00404025 */ move	$t0, $v0
/* 010406 0x8008A2F8 1000008A */ b	.L_8008A524
/* 010407 0x8008A2FC 8FBF0024 */ lw	$ra, 0X24($sp)
.L_8008A300:
/* 010408 0x8008A300 93B8003D */ lbu	$t8, 0X3D($sp)
/* 010409 0x8008A304 93A9003C */ lbu	$t1, 0X3C($sp)
/* 010410 0x8008A308 24070001 */ li	$a3, 1
/* 010411 0x8008A30C 0018CA00 */ sll	$t9, $t8, 8
/* 010412 0x8008A310 03295021 */ addu	$t2, $t9, $t1
/* 010413 0x8008A314 A62A0000 */ sh	$t2, 0X0($s1)
/* 010414 0x8008A318 93AB003E */ lbu	$t3, 0X3E($sp)
/* 010415 0x8008A31C 24017FFF */ li	$at, 32767
/* 010416 0x8008A320 A62B0002 */ sh	$t3, 0X2($s1)
/* 010417 0x8008A324 93AC0041 */ lbu	$t4, 0X41($sp)
/* 010418 0x8008A328 93AE0040 */ lbu	$t6, 0X40($sp)
/* 010419 0x8008A32C 000C6A00 */ sll	$t5, $t4, 8
/* 010420 0x8008A330 01AE7821 */ addu	$t7, $t5, $t6
/* 010421 0x8008A334 A62F0004 */ sh	$t7, 0X4($s1)
/* 010422 0x8008A338 93B80043 */ lbu	$t8, 0X43($sp)
/* 010423 0x8008A33C 93A90042 */ lbu	$t1, 0X42($sp)
/* 010424 0x8008A340 0018CA00 */ sll	$t9, $t8, 8
/* 010425 0x8008A344 03295021 */ addu	$t2, $t9, $t1
/* 010426 0x8008A348 A62A0006 */ sh	$t2, 0X6($s1)
/* 010427 0x8008A34C 93AB0045 */ lbu	$t3, 0X45($sp)
/* 010428 0x8008A350 93AD0044 */ lbu	$t5, 0X44($sp)
/* 010429 0x8008A354 000B6200 */ sll	$t4, $t3, 8
/* 010430 0x8008A358 018D7021 */ addu	$t6, $t4, $t5
/* 010431 0x8008A35C A62E0008 */ sh	$t6, 0X8($s1)
/* 010432 0x8008A360 93AF0047 */ lbu	$t7, 0X47($sp)
/* 010433 0x8008A364 93B90046 */ lbu	$t9, 0X46($sp)
/* 010434 0x8008A368 00077040 */ sll	$t6, $a3, 1
/* 010435 0x8008A36C 000FC200 */ sll	$t8, $t7, 8
/* 010436 0x8008A370 03194821 */ addu	$t1, $t8, $t9
/* 010437 0x8008A374 A629000A */ sh	$t1, 0XA($s1)
/* 010438 0x8008A378 93AA0049 */ lbu	$t2, 0X49($sp)
/* 010439 0x8008A37C 93AC0048 */ lbu	$t4, 0X48($sp)
/* 010440 0x8008A380 00077880 */ sll	$t7, $a3, 2
/* 010441 0x8008A384 000A5A00 */ sll	$t3, $t2, 8
/* 010442 0x8008A388 016C6821 */ addu	$t5, $t3, $t4
/* 010443 0x8008A38C A62D0014 */ sh	$t5, 0X14($s1)
/* 010444 0x8008A390 020F1821 */ addu	$v1, $s0, $t7
/* 010445 0x8008A394 9078000F */ lbu	$t8, 0XF($v1)
/* 010446 0x8008A398 9069000E */ lbu	$t1, 0XE($v1)
/* 010447 0x8008A39C 022E1021 */ addu	$v0, $s1, $t6
/* 010448 0x8008A3A0 0018CA00 */ sll	$t9, $t8, 8
/* 010449 0x8008A3A4 03295021 */ addu	$t2, $t9, $t1
/* 010450 0x8008A3A8 A44A000A */ sh	$t2, 0XA($v0)
/* 010451 0x8008A3AC 906B0011 */ lbu	$t3, 0X11($v1)
/* 010452 0x8008A3B0 906D0010 */ lbu	$t5, 0X10($v1)
/* 010453 0x8008A3B4 24EF0001 */ addiu	$t7, $a3, 1
/* 010454 0x8008A3B8 000B6200 */ sll	$t4, $t3, 8
/* 010455 0x8008A3BC 000FC080 */ sll	$t8, $t7, 2
/* 010456 0x8008A3C0 018D7021 */ addu	$t6, $t4, $t5
/* 010457 0x8008A3C4 02182021 */ addu	$a0, $s0, $t8
/* 010458 0x8008A3C8 A44E0014 */ sh	$t6, 0X14($v0)
/* 010459 0x8008A3CC 9099000F */ lbu	$t9, 0XF($a0)
/* 010460 0x8008A3D0 908A000E */ lbu	$t2, 0XE($a0)
/* 010461 0x8008A3D4 24F80002 */ addiu	$t8, $a3, 2
/* 010462 0x8008A3D8 00194A00 */ sll	$t1, $t9, 8
/* 010463 0x8008A3DC 012A5821 */ addu	$t3, $t1, $t2
/* 010464 0x8008A3E0 A44B000C */ sh	$t3, 0XC($v0)
/* 010465 0x8008A3E4 908C0011 */ lbu	$t4, 0X11($a0)
/* 010466 0x8008A3E8 908E0010 */ lbu	$t6, 0X10($a0)
/* 010467 0x8008A3EC 0018C880 */ sll	$t9, $t8, 2
/* 010468 0x8008A3F0 000C6A00 */ sll	$t5, $t4, 8
/* 010469 0x8008A3F4 01AE7821 */ addu	$t7, $t5, $t6
/* 010470 0x8008A3F8 A44F0016 */ sh	$t7, 0X16($v0)
/* 010471 0x8008A3FC 02192821 */ addu	$a1, $s0, $t9
/* 010472 0x8008A400 90A9000F */ lbu	$t1, 0XF($a1)
/* 010473 0x8008A404 90AB000E */ lbu	$t3, 0XE($a1)
/* 010474 0x8008A408 24F90003 */ addiu	$t9, $a3, 3
/* 010475 0x8008A40C 00095200 */ sll	$t2, $t1, 8
/* 010476 0x8008A410 014B6021 */ addu	$t4, $t2, $t3
/* 010477 0x8008A414 A44C000E */ sh	$t4, 0XE($v0)
/* 010478 0x8008A418 90AD0011 */ lbu	$t5, 0X11($a1)
/* 010479 0x8008A41C 90AF0010 */ lbu	$t7, 0X10($a1)
/* 010480 0x8008A420 00194880 */ sll	$t1, $t9, 2
/* 010481 0x8008A424 000D7200 */ sll	$t6, $t5, 8
/* 010482 0x8008A428 01CFC021 */ addu	$t8, $t6, $t7
/* 010483 0x8008A42C A4580018 */ sh	$t8, 0X18($v0)
/* 010484 0x8008A430 02093021 */ addu	$a2, $s0, $t1
/* 010485 0x8008A434 90CA000F */ lbu	$t2, 0XF($a2)
/* 010486 0x8008A438 90CC000E */ lbu	$t4, 0XE($a2)
/* 010487 0x8008A43C 3C03800A */ lui	$v1, %hi(D_8009CF60)
/* 010488 0x8008A440 000A5A00 */ sll	$t3, $t2, 8
/* 010489 0x8008A444 016C6821 */ addu	$t5, $t3, $t4
/* 010490 0x8008A448 A44D0010 */ sh	$t5, 0X10($v0)
/* 010491 0x8008A44C 90CE0011 */ lbu	$t6, 0X11($a2)
/* 010492 0x8008A450 90D80010 */ lbu	$t8, 0X10($a2)
/* 010493 0x8008A454 000E7A00 */ sll	$t7, $t6, 8
/* 010494 0x8008A458 01F8C821 */ addu	$t9, $t7, $t8
/* 010495 0x8008A45C A459001A */ sh	$t9, 0X1A($v0)
/* 010496 0x8008A460 9629000A */ lhu	$t1, 0XA($s1)
/* 010497 0x8008A464 55210003 */ bnel	$t1, $at, .L_8008A474
/* 010498 0x8008A468 93AA005A */ lbu	$t2, 0X5A($sp)
/* 010499 0x8008A46C A6200002 */ sh	$zero, 0X2($s1)
/* 010500 0x8008A470 93AA005A */ lbu	$t2, 0X5A($sp)
.L_8008A474:
/* 010501 0x8008A474 9063CF60 */ lbu	$v1, %lo(D_8009CF60)($v1)
/* 010502 0x8008A478 314B0007 */ andi	$t3, $t2, 0X7
/* 010503 0x8008A47C 10600026 */ beqz	$v1, .L_8008A518
/* 010504 0x8008A480 A24B000C */ sb	$t3, 0XC($s2)
/* 010505 0x8008A484 316C00FF */ andi	$t4, $t3, 0XFF
/* 010506 0x8008A488 11800023 */ beqz	$t4, .L_8008A518
/* 010507 0x8008A48C 240D0004 */ li	$t5, 4
.L_8008A490:
/* 010508 0x8008A490 27B00038 */ addiu	$s0, $sp, 56
/* 010509 0x8008A494 AE4D0008 */ sw	$t5, 0X8($s2)
/* 010510 0x8008A498 8E440000 */ lw	$a0, 0X0($s2)
/* 010511 0x8008A49C 8E450004 */ lw	$a1, 0X4($s2)
/* 010512 0x8008A4A0 0C0249CC */ jal	func_80092730
/* 010513 0x8008A4A4 27A6005F */ addiu	$a2, $sp, 95
/* 010514 0x8008A4A8 10400003 */ beqz	$v0, .L_8008A4B8
/* 010515 0x8008A4AC 93AE005F */ lbu	$t6, 0X5F($sp)
/* 010516 0x8008A4B0 1000001C */ b	.L_8008A524
/* 010517 0x8008A4B4 8FBF0024 */ lw	$ra, 0X24($sp)
.L_8008A4B8:
/* 010518 0x8008A4B8 31CF0001 */ andi	$t7, $t6, 0X1
/* 010519 0x8008A4BC 11E00003 */ beqz	$t7, .L_8008A4CC
/* 010520 0x8008A4C0 00003025 */ move	$a2, $zero
/* 010521 0x8008A4C4 10000016 */ b	.L_8008A520
/* 010522 0x8008A4C8 2402000F */ li	$v0, 15
.L_8008A4CC:
/* 010523 0x8008A4CC 8E440000 */ lw	$a0, 0X0($s2)
/* 010524 0x8008A4D0 8E450004 */ lw	$a1, 0X4($s2)
/* 010525 0x8008A4D4 0C023BB4 */ jal	func_8008EED0
/* 010526 0x8008A4D8 02003825 */ move	$a3, $s0
/* 010527 0x8008A4DC 10400003 */ beqz	$v0, .L_8008A4EC
/* 010528 0x8008A4E0 00404025 */ move	$t0, $v0
/* 010529 0x8008A4E4 1000000F */ b	.L_8008A524
/* 010530 0x8008A4E8 8FBF0024 */ lw	$ra, 0X24($sp)
.L_8008A4EC:
/* 010531 0x8008A4EC 92180000 */ lbu	$t8, 0X0($s0)
/* 010532 0x8008A4F0 33190007 */ andi	$t9, $t8, 0X7
/* 010533 0x8008A4F4 A259000C */ sb	$t9, 0XC($s2)
/* 010534 0x8008A4F8 92090000 */ lbu	$t1, 0X0($s0)
/* 010535 0x8008A4FC 312A0007 */ andi	$t2, $t1, 0X7
/* 010536 0x8008A500 51400006 */ beqzl	$t2, .L_8008A51C
/* 010537 0x8008A504 AE400008 */ sw	$zero, 0X8($s2)
/* 010538 0x8008A508 10000005 */ b	.L_8008A520
/* 010539 0x8008A50C 2402000F */ li	$v0, 15
/* 010540 0x8008A510 10000003 */ b	.L_8008A520
/* 010541 0x8008A514 24020005 */ li	$v0, 5
.L_8008A518:
/* 010542 0x8008A518 AE400008 */ sw	$zero, 0X8($s2)
.L_8008A51C:
/* 010543 0x8008A51C 01001025 */ move	$v0, $t0
.L_8008A520:
/* 010544 0x8008A520 8FBF0024 */ lw	$ra, 0X24($sp)
.L_8008A524:
/* 010545 0x8008A524 8FB00018 */ lw	$s0, 0X18($sp)
/* 010546 0x8008A528 8FB1001C */ lw	$s1, 0X1C($sp)
/* 010547 0x8008A52C 8FB20020 */ lw	$s2, 0X20($sp)
/* 010548 0x8008A530 03E00008 */ jr	$ra
/* 010549 0x8008A534 27BD0068 */ addiu	$sp, $sp, 104
/* 010550 0x8008A538 00000000 */ nop
/* 010551 0x8008A53C 00000000 */ nop
