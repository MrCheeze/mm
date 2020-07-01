.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_800F05C0
/* 076480 0x800F05C0 3C02801C */ lui	$v0, %hi(D_801C2078)
/* 076481 0x800F05C4 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 076482 0x800F05C8 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 076483 0x800F05CC 24422078 */ addiu	$v0, $v0, %lo(D_801C2078)
/* 076484 0x800F05D0 904E0000 */ lbu	$t6, 0X0($v0)
/* 076485 0x800F05D4 006E7821 */ addu	$t7, $v1, $t6
/* 076486 0x800F05D8 91F80070 */ lbu	$t8, 0X70($t7)
/* 076487 0x800F05DC 57000004 */ bnezl	$t8, .L_800F05F0
/* 076488 0x800F05E0 8C790018 */ lw	$t9, 0X18($v1)
/* 076489 0x800F05E4 03E00008 */ jr	$ra
/* 076490 0x800F05E8 00001025 */ move	$v0, $zero
/* 076491 0x800F05EC 8C790018 */ lw	$t9, 0X18($v1)
.L_800F05F0:
/* 076492 0x800F05F0 24010005 */ li	$at, 5
/* 076493 0x800F05F4 0321001A */ div	$zero, $t9, $at
/* 076494 0x800F05F8 00004010 */ mfhi	$t0
/* 076495 0x800F05FC 5D000004 */ bgtzl	$t0, .L_800F0610
/* 076496 0x800F0600 90690F50 */ lbu	$t1, 0XF50($v1)
/* 076497 0x800F0604 03E00008 */ jr	$ra
/* 076498 0x800F0608 00001025 */ move	$v0, $zero
/* 076499 0x800F060C 90690F50 */ lbu	$t1, 0XF50($v1)
.L_800F0610:
/* 076500 0x800F0610 312A0020 */ andi	$t2, $t1, 0X20
/* 076501 0x800F0614 51400004 */ beqzl	$t2, .L_800F0628
/* 076502 0x800F0618 906B0F47 */ lbu	$t3, 0XF47($v1)
/* 076503 0x800F061C 03E00008 */ jr	$ra
/* 076504 0x800F0620 00001025 */ move	$v0, $zero
/* 076505 0x800F0624 906B0F47 */ lbu	$t3, 0XF47($v1)
.L_800F0628:
/* 076506 0x800F0628 316C0010 */ andi	$t4, $t3, 0X10
/* 076507 0x800F062C 5180000A */ beqzl	$t4, .L_800F0658
/* 076508 0x800F0630 906F0F00 */ lbu	$t7, 0XF00($v1)
/* 076509 0x800F0634 906D0F00 */ lbu	$t5, 0XF00($v1)
/* 076510 0x800F0638 31AE0040 */ andi	$t6, $t5, 0X40
/* 076511 0x800F063C 11C00003 */ beqz	$t6, .L_800F064C
/* 076512 0x800F0640 00000000 */ nop
/* 076513 0x800F0644 03E00008 */ jr	$ra
/* 076514 0x800F0648 00001025 */ move	$v0, $zero
.L_800F064C:
/* 076515 0x800F064C 03E00008 */ jr	$ra
/* 076516 0x800F0650 24020224 */ li	$v0, 548
/* 076517 0x800F0654 906F0F00 */ lbu	$t7, 0XF00($v1)
.L_800F0658:
/* 076518 0x800F0658 31F80080 */ andi	$t8, $t7, 0X80
/* 076519 0x800F065C 57000010 */ bnezl	$t8, .L_800F06A0
/* 076520 0x800F0660 906A0040 */ lbu	$t2, 0X40($v1)
/* 076521 0x800F0664 90790F01 */ lbu	$t9, 0XF01($v1)
/* 076522 0x800F0668 33280001 */ andi	$t0, $t9, 0X1
/* 076523 0x800F066C 51000004 */ beqzl	$t0, .L_800F0680
/* 076524 0x800F0670 848900A4 */ lh	$t1, 0XA4($a0)
/* 076525 0x800F0674 03E00008 */ jr	$ra
/* 076526 0x800F0678 2402021E */ li	$v0, 542
/* 076527 0x800F067C 848900A4 */ lh	$t1, 0XA4($a0)
.L_800F0680:
/* 076528 0x800F0680 24010026 */ li	$at, 38
/* 076529 0x800F0684 15210003 */ bne	$t1, $at, .L_800F0694
/* 076530 0x800F0688 00000000 */ nop
/* 076531 0x800F068C 03E00008 */ jr	$ra
/* 076532 0x800F0690 00001025 */ move	$v0, $zero
.L_800F0694:
/* 076533 0x800F0694 03E00008 */ jr	$ra
/* 076534 0x800F0698 2402021D */ li	$v0, 541
/* 076535 0x800F069C 906A0040 */ lbu	$t2, 0X40($v1)
.L_800F06A0:
/* 076536 0x800F06A0 24010001 */ li	$at, 1
/* 076537 0x800F06A4 51410004 */ beql	$t2, $at, .L_800F06B8
/* 076538 0x800F06A8 904B0029 */ lbu	$t3, 0X29($v0)
/* 076539 0x800F06AC 03E00008 */ jr	$ra
/* 076540 0x800F06B0 2402021F */ li	$v0, 543
/* 076541 0x800F06B4 904B0029 */ lbu	$t3, 0X29($v0)
.L_800F06B8:
/* 076542 0x800F06B8 24010029 */ li	$at, 41
/* 076543 0x800F06BC 006B6021 */ addu	$t4, $v1, $t3
/* 076544 0x800F06C0 918D0070 */ lbu	$t5, 0X70($t4)
/* 076545 0x800F06C4 55A1000A */ bnel	$t5, $at, .L_800F06F0
/* 076546 0x800F06C8 904F0028 */ lbu	$t7, 0X28($v0)
/* 076547 0x800F06CC 848E00A4 */ lh	$t6, 0XA4($a0)
/* 076548 0x800F06D0 24010019 */ li	$at, 25
/* 076549 0x800F06D4 11C10003 */ beq	$t6, $at, .L_800F06E4
/* 076550 0x800F06D8 00000000 */ nop
/* 076551 0x800F06DC 03E00008 */ jr	$ra
/* 076552 0x800F06E0 24020244 */ li	$v0, 580
.L_800F06E4:
/* 076553 0x800F06E4 03E00008 */ jr	$ra
/* 076554 0x800F06E8 00001025 */ move	$v0, $zero
/* 076555 0x800F06EC 904F0028 */ lbu	$t7, 0X28($v0)
.L_800F06F0:
/* 076556 0x800F06F0 24010028 */ li	$at, 40
/* 076557 0x800F06F4 006FC021 */ addu	$t8, $v1, $t7
/* 076558 0x800F06F8 93190070 */ lbu	$t9, 0X70($t8)
/* 076559 0x800F06FC 5721000A */ bnel	$t9, $at, .L_800F0728
/* 076560 0x800F0700 906A0F42 */ lbu	$t2, 0XF42($v1)
/* 076561 0x800F0704 90680F4E */ lbu	$t0, 0XF4E($v1)
/* 076562 0x800F0708 31090004 */ andi	$t1, $t0, 0X4
/* 076563 0x800F070C 11200003 */ beqz	$t1, .L_800F071C
/* 076564 0x800F0710 00000000 */ nop
/* 076565 0x800F0714 03E00008 */ jr	$ra
/* 076566 0x800F0718 24020242 */ li	$v0, 578
.L_800F071C:
/* 076567 0x800F071C 03E00008 */ jr	$ra
/* 076568 0x800F0720 24020243 */ li	$v0, 579
/* 076569 0x800F0724 906A0F42 */ lbu	$t2, 0XF42($v1)
.L_800F0728:
/* 076570 0x800F0728 314B0020 */ andi	$t3, $t2, 0X20
/* 076571 0x800F072C 51600004 */ beqzl	$t3, .L_800F0740
/* 076572 0x800F0730 90620F41 */ lbu	$v0, 0XF41($v1)
/* 076573 0x800F0734 03E00008 */ jr	$ra
/* 076574 0x800F0738 24020223 */ li	$v0, 547
/* 076575 0x800F073C 90620F41 */ lbu	$v0, 0XF41($v1)
.L_800F0740:
/* 076576 0x800F0740 304C0080 */ andi	$t4, $v0, 0X80
/* 076577 0x800F0744 11800003 */ beqz	$t4, .L_800F0754
/* 076578 0x800F0748 304D0020 */ andi	$t5, $v0, 0X20
/* 076579 0x800F074C 03E00008 */ jr	$ra
/* 076580 0x800F0750 24020222 */ li	$v0, 546
.L_800F0754:
/* 076581 0x800F0754 51A00004 */ beqzl	$t5, .L_800F0768
/* 076582 0x800F0758 906E0F45 */ lbu	$t6, 0XF45($v1)
/* 076583 0x800F075C 03E00008 */ jr	$ra
/* 076584 0x800F0760 24020221 */ li	$v0, 545
/* 076585 0x800F0764 906E0F45 */ lbu	$t6, 0XF45($v1)
.L_800F0768:
/* 076586 0x800F0768 30580010 */ andi	$t8, $v0, 0X10
/* 076587 0x800F076C 31CF0002 */ andi	$t7, $t6, 0X2
/* 076588 0x800F0770 51E00008 */ beqzl	$t7, .L_800F0794
/* 076589 0x800F0774 90790F4E */ lbu	$t9, 0XF4E($v1)
/* 076590 0x800F0778 13000003 */ beqz	$t8, .L_800F0788
/* 076591 0x800F077C 00000000 */ nop
/* 076592 0x800F0780 03E00008 */ jr	$ra
/* 076593 0x800F0784 24020240 */ li	$v0, 576
.L_800F0788:
/* 076594 0x800F0788 03E00008 */ jr	$ra
/* 076595 0x800F078C 24020241 */ li	$v0, 577
/* 076596 0x800F0790 90790F4E */ lbu	$t9, 0XF4E($v1)
.L_800F0794:
/* 076597 0x800F0794 30490040 */ andi	$t1, $v0, 0X40
/* 076598 0x800F0798 33280002 */ andi	$t0, $t9, 0X2
/* 076599 0x800F079C 15000003 */ bnez	$t0, .L_800F07AC
/* 076600 0x800F07A0 00000000 */ nop
/* 076601 0x800F07A4 11200003 */ beqz	$t1, .L_800F07B4
/* 076602 0x800F07A8 24020220 */ li	$v0, 544
.L_800F07AC:
/* 076603 0x800F07AC 03E00008 */ jr	$ra
/* 076604 0x800F07B0 2402023F */ li	$v0, 575
.L_800F07B4:
/* 076605 0x800F07B4 03E00008 */ jr	$ra
/* 076606 0x800F07B8 00000000 */ nop
/* 076607 0x800F07BC 00000000 */ nop
