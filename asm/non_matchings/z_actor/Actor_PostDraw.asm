glabel Actor_PostDraw
/* 014402 0x800B3BC8 27BDFF68 */ addiu	$sp, $sp, -152
/* 014403 0x800B3BCC AFB00020 */ sw	$s0, 0X20($sp)
/* 014404 0x800B3BD0 00808025 */ move	$s0, $a0
/* 014405 0x800B3BD4 AFBF0024 */ sw	$ra, 0X24($sp)
/* 014406 0x800B3BD8 AFA5009C */ sw	$a1, 0X9C($sp)
/* 014407 0x800B3BDC AFA600A0 */ sw	$a2, 0XA0($sp)
/* 014408 0x800B3BE0 AFA700A4 */ sw	$a3, 0XA4($sp)
/* 014409 0x800B3BE4 8E0E0080 */ lw	$t6, 0X80($s0)
/* 014410 0x800B3BE8 51C000F1 */ beqzl	$t6, .L_800B3FB0
/* 014411 0x800B3BEC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 014412 0x800B3BF0 C6040028 */ lwc1	$f4, 0X28($s0)
/* 014413 0x800B3BF4 C6060088 */ lwc1	$f6, 0X88($s0)
/* 014414 0x800B3BF8 3C01C248 */ lui	$at, 0xC248
/* 014415 0x800B3BFC 44814000 */ mtc1	$at, $f8
/* 014416 0x800B3C00 46062081 */ sub.s	$f2, $f4, $f6
/* 014417 0x800B3C04 3C0143FA */ lui	$at, 0x43FA
/* 014418 0x800B3C08 4602403E */ c.le.s	$f8, $f2
/* 014419 0x800B3C0C 00000000 */ nop
/* 014420 0x800B3C10 450200E7 */ bc1fl .L_800B3FB0
/* 014421 0x800B3C14 8FBF0024 */ lw	$ra, 0X24($sp)
/* 014422 0x800B3C18 44815000 */ mtc1	$at, $f10
/* 014423 0x800B3C1C 8FAF00A0 */ lw	$t7, 0XA0($sp)
/* 014424 0x800B3C20 460A103C */ c.lt.s	$f2, $f10
/* 014425 0x800B3C24 00000000 */ nop
/* 014426 0x800B3C28 450200E1 */ bc1fl .L_800B3FB0
/* 014427 0x800B3C2C 8FBF0024 */ lw	$ra, 0X24($sp)
/* 014428 0x800B3C30 8DE80000 */ lw	$t0, 0X0($t7)
/* 014429 0x800B3C34 2405002C */ li	$a1, 44
/* 014430 0x800B3C38 8D0402B0 */ lw	$a0, 0X2B0($t0)
/* 014431 0x800B3C3C E7A20094 */ swc1	$f2, 0X94($sp)
/* 014432 0x800B3C40 0C04AFDE */ jal	Gfx_CallSetupDL
/* 014433 0x800B3C44 AFA8004C */ sw	$t0, 0X4C($sp)
/* 014434 0x800B3C48 8FA8004C */ lw	$t0, 0X4C($sp)
/* 014435 0x800B3C4C C7A20094 */ lwc1	$f2, 0X94($sp)
/* 014436 0x800B3C50 3C19FCFF */ lui	$t9, 0xFCFF
/* 014437 0x800B3C54 AD0202B0 */ sw	$v0, 0X2B0($t0)
/* 014438 0x800B3C58 8D0202B0 */ lw	$v0, 0X2B0($t0)
/* 014439 0x800B3C5C 3C09FFFD */ lui	$t1, 0xFFFD
/* 014440 0x800B3C60 3529FE38 */ ori	$t1, $t1, 0XFE38
/* 014441 0x800B3C64 24580008 */ addiu	$t8, $v0, 8
/* 014442 0x800B3C68 AD1802B0 */ sw	$t8, 0X2B0($t0)
/* 014443 0x800B3C6C 373997FF */ ori	$t9, $t9, 0X97FF
/* 014444 0x800B3C70 AC590000 */ sw	$t9, 0X0($v0)
/* 014445 0x800B3C74 AC490004 */ sw	$t1, 0X4($v0)
/* 014446 0x800B3C78 44806000 */ mtc1	$zero, $f12
/* 014447 0x800B3C7C 8FA400A8 */ lw	$a0, 0XA8($sp)
/* 014448 0x800B3C80 460C103C */ c.lt.s	$f2, $f12
/* 014449 0x800B3C84 00000000 */ nop
/* 014450 0x800B3C88 45020004 */ bc1fl .L_800B3C9C
/* 014451 0x800B3C8C 3C014316 */ lui	$at, 0x4316
/* 014452 0x800B3C90 1000000C */ b	.L_800B3CC4
/* 014453 0x800B3C94 46006086 */ mov.s	$f2, $f12
/* 014454 0x800B3C98 3C014316 */ lui	$at, 0x4316
.L_800B3C9C:
/* 014455 0x800B3C9C 44817000 */ mtc1	$at, $f14
/* 014456 0x800B3CA0 00000000 */ nop
/* 014457 0x800B3CA4 4602703C */ c.lt.s	$f14, $f2
/* 014458 0x800B3CA8 00000000 */ nop
/* 014459 0x800B3CAC 45020004 */ bc1fl .L_800B3CC0
/* 014460 0x800B3CB0 46001006 */ mov.s	$f0, $f2
/* 014461 0x800B3CB4 10000002 */ b	.L_800B3CC0
/* 014462 0x800B3CB8 46007006 */ mov.s	$f0, $f14
/* 014463 0x800B3CBC 46001006 */ mov.s	$f0, $f2
.L_800B3CC0:
/* 014464 0x800B3CC0 46000086 */ mov.s	$f2, $f0
.L_800B3CC4:
/* 014465 0x800B3CC4 3C013F80 */ lui	$at, 0x3F80
/* 014466 0x800B3CC8 44817000 */ mtc1	$at, $f14
/* 014467 0x800B3CCC 3C01801E */ lui	$at, %hi(D_801DCA14)
/* 014468 0x800B3CD0 C432CA14 */ lwc1	$f18, %lo(D_801DCA14)($at)
/* 014469 0x800B3CD4 46121002 */ mul.s	$f0, $f2, $f18
/* 014470 0x800B3CD8 4600703C */ c.lt.s	$f14, $f0
/* 014471 0x800B3CDC 46007401 */ sub.s	$f16, $f14, $f0
/* 014472 0x800B3CE0 45000002 */ bc1f .L_800B3CEC
/* 014473 0x800B3CE4 00000000 */ nop
/* 014474 0x800B3CE8 46006406 */ mov.s	$f16, $f12
.L_800B3CEC:
/* 014475 0x800B3CEC 5080003E */ beqzl	$a0, .L_800B3DE8
/* 014476 0x800B3CF0 8D0302B0 */ lw	$v1, 0X2B0($t0)
/* 014477 0x800B3CF4 8D0302B0 */ lw	$v1, 0X2B0($t0)
/* 014478 0x800B3CF8 3C0BFA00 */ lui	$t3, 0xFA00
/* 014479 0x800B3CFC 3C014F80 */ lui	$at, 0x4F80
/* 014480 0x800B3D00 246A0008 */ addiu	$t2, $v1, 8
/* 014481 0x800B3D04 AD0A02B0 */ sw	$t2, 0X2B0($t0)
/* 014482 0x800B3D08 AC6B0000 */ sw	$t3, 0X0($v1)
/* 014483 0x800B3D0C 920F00D0 */ lbu	$t7, 0XD0($s0)
/* 014484 0x800B3D10 90980001 */ lbu	$t8, 0X1($a0)
/* 014485 0x800B3D14 908D0000 */ lbu	$t5, 0X0($a0)
/* 014486 0x800B3D18 908B0002 */ lbu	$t3, 0X2($a0)
/* 014487 0x800B3D1C 448F2000 */ mtc1	$t7, $f4
/* 014488 0x800B3D20 0018CC00 */ sll	$t9, $t8, 16
/* 014489 0x800B3D24 000D7600 */ sll	$t6, $t5, 24
/* 014490 0x800B3D28 01D94825 */ or	$t1, $t6, $t9
/* 014491 0x800B3D2C 000B6200 */ sll	$t4, $t3, 8
/* 014492 0x800B3D30 012C6825 */ or	$t5, $t1, $t4
/* 014493 0x800B3D34 05E10004 */ bgez	$t7, .L_800B3D48
/* 014494 0x800B3D38 468021A0 */ cvt.s.w	$f6, $f4
/* 014495 0x800B3D3C 44814000 */ mtc1	$at, $f8
/* 014496 0x800B3D40 00000000 */ nop
/* 014497 0x800B3D44 46083180 */ add.s	$f6, $f6, $f8
.L_800B3D48:
/* 014498 0x800B3D48 46103282 */ mul.s	$f10, $f6, $f16
/* 014499 0x800B3D4C 240E0001 */ li	$t6, 1
/* 014500 0x800B3D50 3C014F00 */ lui	$at, 0x4F00
/* 014501 0x800B3D54 4458F800 */ cfc1	$t8, $31
/* 014502 0x800B3D58 44CEF800 */ ctc1	$t6, $31
/* 014503 0x800B3D5C 00000000 */ nop
/* 014504 0x800B3D60 460054A4 */ cvt.w.s	$f18, $f10
/* 014505 0x800B3D64 444EF800 */ cfc1	$t6, $31
/* 014506 0x800B3D68 00000000 */ nop
/* 014507 0x800B3D6C 31CE0078 */ andi	$t6, $t6, 0X78
/* 014508 0x800B3D70 51C00013 */ beqzl	$t6, .L_800B3DC0
/* 014509 0x800B3D74 440E9000 */ mfc1	$t6, $f18
/* 014510 0x800B3D78 44819000 */ mtc1	$at, $f18
/* 014511 0x800B3D7C 240E0001 */ li	$t6, 1
/* 014512 0x800B3D80 46125481 */ sub.s	$f18, $f10, $f18
/* 014513 0x800B3D84 44CEF800 */ ctc1	$t6, $31
/* 014514 0x800B3D88 00000000 */ nop
/* 014515 0x800B3D8C 460094A4 */ cvt.w.s	$f18, $f18
/* 014516 0x800B3D90 444EF800 */ cfc1	$t6, $31
/* 014517 0x800B3D94 00000000 */ nop
/* 014518 0x800B3D98 31CE0078 */ andi	$t6, $t6, 0X78
/* 014519 0x800B3D9C 15C00005 */ bnez	$t6, .L_800B3DB4
/* 014520 0x800B3DA0 00000000 */ nop
/* 014521 0x800B3DA4 440E9000 */ mfc1	$t6, $f18
/* 014522 0x800B3DA8 3C018000 */ lui	$at, 0x8000
/* 014523 0x800B3DAC 10000007 */ b	.L_800B3DCC
/* 014524 0x800B3DB0 01C17025 */ or	$t6, $t6, $at
.L_800B3DB4:
/* 014525 0x800B3DB4 10000005 */ b	.L_800B3DCC
/* 014526 0x800B3DB8 240EFFFF */ li	$t6, -1
/* 014527 0x800B3DBC 440E9000 */ mfc1	$t6, $f18
.L_800B3DC0:
/* 014528 0x800B3DC0 00000000 */ nop
/* 014529 0x800B3DC4 05C0FFFB */ bltz	$t6, .L_800B3DB4
/* 014530 0x800B3DC8 00000000 */ nop
.L_800B3DCC:
/* 014531 0x800B3DCC 31CA00FF */ andi	$t2, $t6, 0XFF
/* 014532 0x800B3DD0 44D8F800 */ ctc1	$t8, $31
/* 014533 0x800B3DD4 01AA5825 */ or	$t3, $t5, $t2
/* 014534 0x800B3DD8 AC6B0004 */ sw	$t3, 0X4($v1)
/* 014535 0x800B3DDC 10000033 */ b	.L_800B3EAC
/* 014536 0x800B3DE0 8E040080 */ lw	$a0, 0X80($s0)
/* 014537 0x800B3DE4 8D0302B0 */ lw	$v1, 0X2B0($t0)
.L_800B3DE8:
/* 014538 0x800B3DE8 3C0CFA00 */ lui	$t4, 0xFA00
/* 014539 0x800B3DEC 3C014F80 */ lui	$at, 0x4F80
/* 014540 0x800B3DF0 24690008 */ addiu	$t1, $v1, 8
/* 014541 0x800B3DF4 AD0902B0 */ sw	$t1, 0X2B0($t0)
/* 014542 0x800B3DF8 AC6C0000 */ sw	$t4, 0X0($v1)
/* 014543 0x800B3DFC 920F00D0 */ lbu	$t7, 0XD0($s0)
/* 014544 0x800B3E00 448F2000 */ mtc1	$t7, $f4
/* 014545 0x800B3E04 05E10004 */ bgez	$t7, .L_800B3E18
/* 014546 0x800B3E08 46802220 */ cvt.s.w	$f8, $f4
/* 014547 0x800B3E0C 44813000 */ mtc1	$at, $f6
/* 014548 0x800B3E10 00000000 */ nop
/* 014549 0x800B3E14 46064200 */ add.s	$f8, $f8, $f6
.L_800B3E18:
/* 014550 0x800B3E18 46104282 */ mul.s	$f10, $f8, $f16
/* 014551 0x800B3E1C 240E0001 */ li	$t6, 1
/* 014552 0x800B3E20 3C014F00 */ lui	$at, 0x4F00
/* 014553 0x800B3E24 4458F800 */ cfc1	$t8, $31
/* 014554 0x800B3E28 44CEF800 */ ctc1	$t6, $31
/* 014555 0x800B3E2C 00000000 */ nop
/* 014556 0x800B3E30 460054A4 */ cvt.w.s	$f18, $f10
/* 014557 0x800B3E34 444EF800 */ cfc1	$t6, $31
/* 014558 0x800B3E38 00000000 */ nop
/* 014559 0x800B3E3C 31CE0078 */ andi	$t6, $t6, 0X78
/* 014560 0x800B3E40 51C00013 */ beqzl	$t6, .L_800B3E90
/* 014561 0x800B3E44 440E9000 */ mfc1	$t6, $f18
/* 014562 0x800B3E48 44819000 */ mtc1	$at, $f18
/* 014563 0x800B3E4C 240E0001 */ li	$t6, 1
/* 014564 0x800B3E50 46125481 */ sub.s	$f18, $f10, $f18
/* 014565 0x800B3E54 44CEF800 */ ctc1	$t6, $31
/* 014566 0x800B3E58 00000000 */ nop
/* 014567 0x800B3E5C 460094A4 */ cvt.w.s	$f18, $f18
/* 014568 0x800B3E60 444EF800 */ cfc1	$t6, $31
/* 014569 0x800B3E64 00000000 */ nop
/* 014570 0x800B3E68 31CE0078 */ andi	$t6, $t6, 0X78
/* 014571 0x800B3E6C 15C00005 */ bnez	$t6, .L_800B3E84
/* 014572 0x800B3E70 00000000 */ nop
/* 014573 0x800B3E74 440E9000 */ mfc1	$t6, $f18
/* 014574 0x800B3E78 3C018000 */ lui	$at, 0x8000
/* 014575 0x800B3E7C 10000007 */ b	.L_800B3E9C
/* 014576 0x800B3E80 01C17025 */ or	$t6, $t6, $at
.L_800B3E84:
/* 014577 0x800B3E84 10000005 */ b	.L_800B3E9C
/* 014578 0x800B3E88 240EFFFF */ li	$t6, -1
/* 014579 0x800B3E8C 440E9000 */ mfc1	$t6, $f18
.L_800B3E90:
/* 014580 0x800B3E90 00000000 */ nop
/* 014581 0x800B3E94 05C0FFFB */ bltz	$t6, .L_800B3E84
/* 014582 0x800B3E98 00000000 */ nop
.L_800B3E9C:
/* 014583 0x800B3E9C 44D8F800 */ ctc1	$t8, $31
/* 014584 0x800B3EA0 31CD00FF */ andi	$t5, $t6, 0XFF
/* 014585 0x800B3EA4 AC6D0004 */ sw	$t5, 0X4($v1)
/* 014586 0x800B3EA8 8E040080 */ lw	$a0, 0X80($s0)
.L_800B3EAC:
/* 014587 0x800B3EAC 8E050024 */ lw	$a1, 0X24($s0)
/* 014588 0x800B3EB0 8E060088 */ lw	$a2, 0X88($s0)
/* 014589 0x800B3EB4 8E07002C */ lw	$a3, 0X2C($s0)
/* 014590 0x800B3EB8 27AA0050 */ addiu	$t2, $sp, 80
/* 014591 0x800B3EBC AFAA0010 */ sw	$t2, 0X10($sp)
/* 014592 0x800B3EC0 E7B00090 */ swc1	$f16, 0X90($sp)
/* 014593 0x800B3EC4 0C030025 */ jal	func_800C0094
/* 014594 0x800B3EC8 AFA8004C */ sw	$t0, 0X4C($sp)
/* 014595 0x800B3ECC 0C060083 */ jal	SysMatrix_SetCurrentState
/* 014596 0x800B3ED0 27A40050 */ addiu	$a0, $sp, 80
/* 014597 0x800B3ED4 8FAB00A4 */ lw	$t3, 0XA4($sp)
/* 014598 0x800B3ED8 3C090407 */ lui	$t1, 0x0407
/* 014599 0x800B3EDC 25296BC0 */ addiu	$t1, $t1, 27584
/* 014600 0x800B3EE0 8FA8004C */ lw	$t0, 0X4C($sp)
/* 014601 0x800B3EE4 15690007 */ bne	$t3, $t1, .L_800B3F04
/* 014602 0x800B3EE8 C7B00090 */ lwc1	$f16, 0X90($sp)
/* 014603 0x800B3EEC C6000060 */ lwc1	$f0, 0X60($s0)
/* 014604 0x800B3EF0 C6020058 */ lwc1	$f2, 0X58($s0)
/* 014605 0x800B3EF4 46020032 */ c.eq.s	$f0, $f2
/* 014606 0x800B3EF8 00000000 */ nop
/* 014607 0x800B3EFC 4503000B */ bc1tl .L_800B3F2C
/* 014608 0x800B3F00 C60400CC */ lwc1	$f4, 0XCC($s0)
.L_800B3F04:
/* 014609 0x800B3F04 860400BE */ lh	$a0, 0XBE($s0)
/* 014610 0x800B3F08 E7B00090 */ swc1	$f16, 0X90($sp)
/* 014611 0x800B3F0C AFA8004C */ sw	$t0, 0X4C($sp)
/* 014612 0x800B3F10 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 014613 0x800B3F14 24050001 */ li	$a1, 1
/* 014614 0x800B3F18 8FA8004C */ lw	$t0, 0X4C($sp)
/* 014615 0x800B3F1C C7B00090 */ lwc1	$f16, 0X90($sp)
/* 014616 0x800B3F20 C6000060 */ lwc1	$f0, 0X60($s0)
/* 014617 0x800B3F24 C6020058 */ lwc1	$f2, 0X58($s0)
/* 014618 0x800B3F28 C60400CC */ lwc1	$f4, 0XCC($s0)
.L_800B3F2C:
/* 014619 0x800B3F2C 3C013F80 */ lui	$at, 0x3F80
/* 014620 0x800B3F30 44817000 */ mtc1	$at, $f14
/* 014621 0x800B3F34 46048402 */ mul.s	$f16, $f16, $f4
/* 014622 0x800B3F38 AFA8004C */ sw	$t0, 0X4C($sp)
/* 014623 0x800B3F3C 24070001 */ li	$a3, 1
/* 014624 0x800B3F40 46101302 */ mul.s	$f12, $f2, $f16
/* 014625 0x800B3F44 00000000 */ nop
/* 014626 0x800B3F48 46100182 */ mul.s	$f6, $f0, $f16
/* 014627 0x800B3F4C 44063000 */ mfc1	$a2, $f6
/* 014628 0x800B3F50 0C0600E7 */ jal	SysMatrix_InsertScale
/* 014629 0x800B3F54 00000000 */ nop
/* 014630 0x800B3F58 8FA8004C */ lw	$t0, 0X4C($sp)
/* 014631 0x800B3F5C 8D0202B0 */ lw	$v0, 0X2B0($t0)
/* 014632 0x800B3F60 3C0FDA38 */ lui	$t7, 0xDA38
/* 014633 0x800B3F64 35EF0003 */ ori	$t7, $t7, 0X3
/* 014634 0x800B3F68 244C0008 */ addiu	$t4, $v0, 8
/* 014635 0x800B3F6C AD0C02B0 */ sw	$t4, 0X2B0($t0)
/* 014636 0x800B3F70 AC4F0000 */ sw	$t7, 0X0($v0)
/* 014637 0x800B3F74 8FB800A0 */ lw	$t8, 0XA0($sp)
/* 014638 0x800B3F78 00408025 */ move	$s0, $v0
/* 014639 0x800B3F7C 8F040000 */ lw	$a0, 0X0($t8)
/* 014640 0x800B3F80 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 014641 0x800B3F84 AFA8004C */ sw	$t0, 0X4C($sp)
/* 014642 0x800B3F88 8FA8004C */ lw	$t0, 0X4C($sp)
/* 014643 0x800B3F8C AE020004 */ sw	$v0, 0X4($s0)
/* 014644 0x800B3F90 8D0202B0 */ lw	$v0, 0X2B0($t0)
/* 014645 0x800B3F94 3C19DE00 */ lui	$t9, 0xDE00
/* 014646 0x800B3F98 244E0008 */ addiu	$t6, $v0, 8
/* 014647 0x800B3F9C AD0E02B0 */ sw	$t6, 0X2B0($t0)
/* 014648 0x800B3FA0 AC590000 */ sw	$t9, 0X0($v0)
/* 014649 0x800B3FA4 8FAD00A4 */ lw	$t5, 0XA4($sp)
/* 014650 0x800B3FA8 AC4D0004 */ sw	$t5, 0X4($v0)
/* 014651 0x800B3FAC 8FBF0024 */ lw	$ra, 0X24($sp)
.L_800B3FB0:
/* 014652 0x800B3FB0 8FB00020 */ lw	$s0, 0X20($sp)
/* 014653 0x800B3FB4 27BD0098 */ addiu	$sp, $sp, 152
/* 014654 0x800B3FB8 03E00008 */ jr	$ra
/* 014655 0x800B3FBC 00000000 */ nop

