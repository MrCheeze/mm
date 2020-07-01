glabel Fault_SetOptionsFromController3
/* 003460 0x80083670 3C0EFFFA */ lui	$t6, 0xFFFA
/* 003461 0x80083674 03A07825 */ move	$t7, $sp
/* 003462 0x80083678 27BDFFC8 */ addiu	$sp, $sp, -56
/* 003463 0x8008367C 35CE5A5A */ ori	$t6, $t6, 0X5A5A
.L_80083680:
/* 003464 0x80083680 25EFFFF8 */ addiu	$t7, $t7, -8
/* 003465 0x80083684 ADEE0000 */ sw	$t6, 0X0($t7)
/* 003466 0x80083688 15FDFFFD */ bne	$t7, $sp, .L_80083680
/* 003467 0x8008368C ADEE0004 */ sw	$t6, 0X4($t7)
/* 003468 0x80083690 AFBF001C */ sw	$ra, 0X1C($sp)
/* 003469 0x80083694 3C08800A */ lui	$t0, %hi(faultCtxt)
/* 003470 0x80083698 8D08BE50 */ lw	$t0, %lo(faultCtxt)($t0)
/* 003471 0x8008369C 2401FF7F */ li	$at, -129
/* 003472 0x800836A0 3C18800A */ lui	$t8, %hi(faultCustomOptions)
/* 003473 0x800836A4 950E0838 */ lhu	$t6, 0X838($t0)
/* 003474 0x800836A8 3C09800A */ lui	$t1, %hi(faultCustomOptions)
/* 003475 0x800836AC 3C038020 */ lui	$v1, %hi(graphOSThread)
/* 003476 0x800836B0 01C17827 */ nor	$t7, $t6, $at
/* 003477 0x800836B4 15E00005 */ bnez	$t7, .L_800836CC
/* 003478 0x800836B8 2508082C */ addiu	$t0, $t0, 2092
/* 003479 0x800836BC 8F18BE58 */ lw	$t8, %lo(faultCustomOptions)($t8)
/* 003480 0x800836C0 3C01800A */ lui	$at, %hi(faultCustomOptions)
/* 003481 0x800836C4 2F190001 */ sltiu	$t9, $t8, 1
/* 003482 0x800836C8 AC39BE58 */ sw	$t9, %lo(faultCustomOptions)($at)
.L_800836CC:
/* 003483 0x800836CC 8D29BE58 */ lw	$t1, %lo(faultCustomOptions)($t1)
/* 003484 0x800836D0 24638608 */ addiu	$v1, $v1, %lo(graphOSThread)
/* 003485 0x800836D4 51200040 */ beqzl	$t1, .L_800837D8
/* 003486 0x800836D8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 003487 0x800836DC 8C6A011C */ lw	$t2, 0X11C($v1)
/* 003488 0x800836E0 8C6D0104 */ lw	$t5, 0X104($v1)
/* 003489 0x800836E4 8C6F00F4 */ lw	$t7, 0XF4($v1)
/* 003490 0x800836E8 AFAA002C */ sw	$t2, 0X2C($sp)
/* 003491 0x800836EC AFAD0028 */ sw	$t5, 0X28($sp)
/* 003492 0x800836F0 AFAF0024 */ sw	$t7, 0X24($sp)
/* 003493 0x800836F4 95020000 */ lhu	$v0, 0X0($t0)
/* 003494 0x800836F8 2401FFEF */ li	$at, -17
/* 003495 0x800836FC 3C04800A */ lui	$a0, %hi(faultCopyToLog)
/* 003496 0x80083700 0041C827 */ nor	$t9, $v0, $at
/* 003497 0x80083704 17200008 */ bnez	$t9, .L_80083728
/* 003498 0x80083708 3C01800A */ lui	$at, %hi(faultCopyToLog)
/* 003499 0x8008370C 8C84BE5C */ lw	$a0, %lo(faultCopyToLog)($a0)
/* 003500 0x80083710 2C840001 */ sltiu	$a0, $a0, 1
/* 003501 0x80083714 AC24BE5C */ sw	$a0, %lo(faultCopyToLog)($at)
/* 003502 0x80083718 0C020FAC */ jal	FaultDrawer_SetOsSyncPrintfEnabled
/* 003503 0x8008371C AFA80034 */ sw	$t0, 0X34($sp)
/* 003504 0x80083720 8FA80034 */ lw	$t0, 0X34($sp)
/* 003505 0x80083724 95020000 */ lhu	$v0, 0X0($t0)
.L_80083728:
/* 003506 0x80083728 3C01FFFF */ lui	$at, 0xFFFF
/* 003507 0x8008372C 34217FFF */ ori	$at, $at, 0X7FFF
/* 003508 0x80083730 00414827 */ nor	$t1, $v0, $at
/* 003509 0x80083734 15200009 */ bnez	$t1, .L_8008375C
/* 003510 0x80083738 3C04800A */ lui	$a0, %hi(D_80098A44)
/* 003511 0x8008373C 24848A44 */ addiu	$a0, $a0, %lo(D_80098A44)
/* 003512 0x80083740 8FA5002C */ lw	$a1, 0X2C($sp)
/* 003513 0x80083744 8FA60028 */ lw	$a2, 0X28($sp)
/* 003514 0x80083748 8FA70024 */ lw	$a3, 0X24($sp)
/* 003515 0x8008374C 0C02064F */ jal	Fault_Log
/* 003516 0x80083750 AFA80034 */ sw	$t0, 0X34($sp)
/* 003517 0x80083754 8FA80034 */ lw	$t0, 0X34($sp)
/* 003518 0x80083758 95020000 */ lhu	$v0, 0X0($t0)
.L_8008375C:
/* 003519 0x8008375C 2401BFFF */ li	$at, -16385
/* 003520 0x80083760 00415027 */ nor	$t2, $v0, $at
/* 003521 0x80083764 5540001C */ bnezl	$t2, .L_800837D8
/* 003522 0x80083768 8FBF001C */ lw	$ra, 0X1C($sp)
/* 003523 0x8008376C 0C022A84 */ jal	osViGetNextFramebuffer
/* 003524 0x80083770 00000000 */ nop
/* 003525 0x80083774 00402025 */ move	$a0, $v0
/* 003526 0x80083778 24050140 */ li	$a1, 320
/* 003527 0x8008377C 0C02121B */ jal	FaultDrawer_SetDrawerFB
/* 003528 0x80083780 240600F0 */ li	$a2, 240
/* 003529 0x80083784 240C0001 */ li	$t4, 1
/* 003530 0x80083788 AFAC0010 */ sw	$t4, 0X10($sp)
/* 003531 0x8008378C 00002025 */ move	$a0, $zero
/* 003532 0x80083790 240500D7 */ li	$a1, 215
/* 003533 0x80083794 24060140 */ li	$a2, 320
/* 003534 0x80083798 0C02081E */ jal	Fault_DrawRec
/* 003535 0x8008379C 24070009 */ li	$a3, 9
/* 003536 0x800837A0 2404FFFE */ li	$a0, -2
/* 003537 0x800837A4 0C0210E7 */ jal	FaultDrawer_SetCharPad
/* 003538 0x800837A8 00002825 */ move	$a1, $zero
/* 003539 0x800837AC 8FAD0028 */ lw	$t5, 0X28($sp)
/* 003540 0x800837B0 8FAB0024 */ lw	$t3, 0X24($sp)
/* 003541 0x800837B4 3C06800A */ lui	$a2, %hi(D_80098A68)
/* 003542 0x800837B8 24C68A68 */ addiu	$a2, $a2, %lo(D_80098A68)
/* 003543 0x800837BC 24040020 */ li	$a0, 32
/* 003544 0x800837C0 240500D8 */ li	$a1, 216
/* 003545 0x800837C4 8FA7002C */ lw	$a3, 0X2C($sp)
/* 003546 0x800837C8 AFAD0010 */ sw	$t5, 0X10($sp)
/* 003547 0x800837CC 0C021207 */ jal	FaultDrawer_DrawText
/* 003548 0x800837D0 AFAB0014 */ sw	$t3, 0X14($sp)
/* 003549 0x800837D4 8FBF001C */ lw	$ra, 0X1C($sp)
.L_800837D8:
/* 003550 0x800837D8 27BD0038 */ addiu	$sp, $sp, 56
/* 003551 0x800837DC 03E00008 */ jr	$ra
/* 003552 0x800837E0 00000000 */ nop

