.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80085570
/* 005444 0x80085570 27BDFFF0 */ addiu	$sp, $sp, -16
/* 005445 0x80085574 AFB1000C */ sw	$s1, 0XC($sp)
/* 005446 0x80085578 AFB00008 */ sw	$s0, 0X8($sp)
/* 005447 0x8008557C 8C820004 */ lw	$v0, 0X4($a0)
/* 005448 0x80085580 3C06E700 */ lui	$a2, 0xE700
/* 005449 0x80085584 3C18EF00 */ lui	$t8, 0xEF00
/* 005450 0x80085588 244E0008 */ addiu	$t6, $v0, 8
/* 005451 0x8008558C AC8E0004 */ sw	$t6, 0X4($a0)
/* 005452 0x80085590 AC400004 */ sw	$zero, 0X4($v0)
/* 005453 0x80085594 AC460000 */ sw	$a2, 0X0($v0)
/* 005454 0x80085598 8C820004 */ lw	$v0, 0X4($a0)
/* 005455 0x8008559C 3C190050 */ lui	$t9, 0x0050
/* 005456 0x800855A0 37394244 */ ori	$t9, $t9, 0X4244
/* 005457 0x800855A4 244F0008 */ addiu	$t7, $v0, 8
/* 005458 0x800855A8 AC8F0004 */ sw	$t7, 0X4($a0)
/* 005459 0x800855AC 3718ECF0 */ ori	$t8, $t8, 0XECF0
/* 005460 0x800855B0 AC580000 */ sw	$t8, 0X0($v0)
/* 005461 0x800855B4 AC590004 */ sw	$t9, 0X4($v0)
/* 005462 0x800855B8 8C820004 */ lw	$v0, 0X4($a0)
/* 005463 0x800855BC 3C18FFFC */ lui	$t8, 0xFFFC
/* 005464 0x800855C0 3C0FFCFF */ lui	$t7, 0xFCFF
/* 005465 0x800855C4 244E0008 */ addiu	$t6, $v0, 8
/* 005466 0x800855C8 AC8E0004 */ sw	$t6, 0X4($a0)
/* 005467 0x800855CC 35EFFFFF */ ori	$t7, $t7, 0XFFFF
/* 005468 0x800855D0 3718F279 */ ori	$t8, $t8, 0XF279
/* 005469 0x800855D4 AC580004 */ sw	$t8, 0X4($v0)
/* 005470 0x800855D8 AC4F0000 */ sw	$t7, 0X0($v0)
/* 005471 0x800855DC 8C820004 */ lw	$v0, 0X4($a0)
/* 005472 0x800855E0 3C0F8009 */ lui	$t7, %hi(D_80096CF8)
/* 005473 0x800855E4 25EF6CF8 */ addiu	$t7, $t7, %lo(D_80096CF8)
/* 005474 0x800855E8 24590008 */ addiu	$t9, $v0, 8
/* 005475 0x800855EC AC990004 */ sw	$t9, 0X4($a0)
/* 005476 0x800855F0 3C0EFD50 */ lui	$t6, 0xFD50
/* 005477 0x800855F4 AC4E0000 */ sw	$t6, 0X0($v0)
/* 005478 0x800855F8 AC4F0004 */ sw	$t7, 0X4($v0)
/* 005479 0x800855FC 8C820004 */ lw	$v0, 0X4($a0)
/* 005480 0x80085600 3C19F550 */ lui	$t9, 0xF550
/* 005481 0x80085604 24050001 */ li	$a1, 1
/* 005482 0x80085608 24580008 */ addiu	$t8, $v0, 8
/* 005483 0x8008560C AC980004 */ sw	$t8, 0X4($a0)
/* 005484 0x80085610 AC590000 */ sw	$t9, 0X0($v0)
/* 005485 0x80085614 24B907FF */ addiu	$t9, $a1, 2047
/* 005486 0x80085618 24090001 */ li	$t1, 1
/* 005487 0x8008561C 0329001A */ div	$zero, $t9, $t1
/* 005488 0x80085620 3C070700 */ lui	$a3, 0x0700
/* 005489 0x80085624 AC470004 */ sw	$a3, 0X4($v0)
/* 005490 0x80085628 8C820004 */ lw	$v0, 0X4($a0)
/* 005491 0x8008562C 3C08E600 */ lui	$t0, 0xE600
/* 005492 0x80085630 3C18F300 */ lui	$t8, 0xF300
/* 005493 0x80085634 244E0008 */ addiu	$t6, $v0, 8
/* 005494 0x80085638 AC8E0004 */ sw	$t6, 0X4($a0)
/* 005495 0x8008563C AC400004 */ sw	$zero, 0X4($v0)
/* 005496 0x80085640 AC480000 */ sw	$t0, 0X0($v0)
/* 005497 0x80085644 8C820004 */ lw	$v0, 0X4($a0)
/* 005498 0x80085648 00007012 */ mflo	$t6
/* 005499 0x8008564C 3C05F540 */ lui	$a1, 0xF540
/* 005500 0x80085650 244F0008 */ addiu	$t7, $v0, 8
/* 005501 0x80085654 AC8F0004 */ sw	$t7, 0X4($a0)
/* 005502 0x80085658 AC580000 */ sw	$t8, 0X0($v0)
/* 005503 0x8008565C 00401825 */ move	$v1, $v0
/* 005504 0x80085660 240203FF */ li	$v0, 1023
/* 005505 0x80085664 15200002 */ bnez	$t1, .L_80085670
/* 005506 0x80085668 00000000 */ nop
/* 005507 0x8008566C 0007000D */ break	0x00007
.L_80085670:
/* 005508 0x80085670 2401FFFF */ li	$at, -1
/* 005509 0x80085674 15210004 */ bne	$t1, $at, .L_80085688
/* 005510 0x80085678 3C018000 */ lui	$at, 0x8000
/* 005511 0x8008567C 17210002 */ bne	$t9, $at, .L_80085688
/* 005512 0x80085680 00000000 */ nop
/* 005513 0x80085684 0006000D */ break	0x00006
.L_80085688:
/* 005514 0x80085688 31CF0FFF */ andi	$t7, $t6, 0XFFF
/* 005515 0x8008568C 30590FFF */ andi	$t9, $v0, 0XFFF
/* 005516 0x80085690 00197300 */ sll	$t6, $t9, 12
/* 005517 0x80085694 01E7C025 */ or	$t8, $t7, $a3
/* 005518 0x80085698 030E7825 */ or	$t7, $t8, $t6
/* 005519 0x8008569C AC6F0004 */ sw	$t7, 0X4($v1)
/* 005520 0x800856A0 8C820004 */ lw	$v0, 0X4($a0)
/* 005521 0x800856A4 34A50200 */ ori	$a1, $a1, 0X200
/* 005522 0x800856A8 3C0F0003 */ lui	$t7, 0x0003
/* 005523 0x800856AC 24590008 */ addiu	$t9, $v0, 8
/* 005524 0x800856B0 AC990004 */ sw	$t9, 0X4($a0)
/* 005525 0x800856B4 AC400004 */ sw	$zero, 0X4($v0)
/* 005526 0x800856B8 AC460000 */ sw	$a2, 0X0($v0)
/* 005527 0x800856BC 8C820004 */ lw	$v0, 0X4($a0)
/* 005528 0x800856C0 35EFC3FC */ ori	$t7, $t7, 0XC3FC
/* 005529 0x800856C4 3C03F200 */ lui	$v1, 0xF200
/* 005530 0x800856C8 24580008 */ addiu	$t8, $v0, 8
/* 005531 0x800856CC AC980004 */ sw	$t8, 0X4($a0)
/* 005532 0x800856D0 AC400004 */ sw	$zero, 0X4($v0)
/* 005533 0x800856D4 AC450000 */ sw	$a1, 0X0($v0)
/* 005534 0x800856D8 8C820004 */ lw	$v0, 0X4($a0)
/* 005535 0x800856DC 3C188009 */ lui	$t8, %hi(D_80096C50)
/* 005536 0x800856E0 27186C50 */ addiu	$t8, $t8, %lo(D_80096C50)
/* 005537 0x800856E4 244E0008 */ addiu	$t6, $v0, 8
/* 005538 0x800856E8 AC8E0004 */ sw	$t6, 0X4($a0)
/* 005539 0x800856EC AC4F0004 */ sw	$t7, 0X4($v0)
/* 005540 0x800856F0 AC430000 */ sw	$v1, 0X0($v0)
/* 005541 0x800856F4 8C820004 */ lw	$v0, 0X4($a0)
/* 005542 0x800856F8 3C09FD10 */ lui	$t1, 0xFD10
/* 005543 0x800856FC 3C0AE800 */ lui	$t2, 0xE800
/* 005544 0x80085700 24590008 */ addiu	$t9, $v0, 8
/* 005545 0x80085704 AC990004 */ sw	$t9, 0X4($a0)
/* 005546 0x80085708 AC580004 */ sw	$t8, 0X4($v0)
/* 005547 0x8008570C AC490000 */ sw	$t1, 0X0($v0)
/* 005548 0x80085710 8C820004 */ lw	$v0, 0X4($a0)
/* 005549 0x80085714 3C19F500 */ lui	$t9, 0xF500
/* 005550 0x80085718 37390100 */ ori	$t9, $t9, 0X100
/* 005551 0x8008571C 244E0008 */ addiu	$t6, $v0, 8
/* 005552 0x80085720 AC8E0004 */ sw	$t6, 0X4($a0)
/* 005553 0x80085724 AC400004 */ sw	$zero, 0X4($v0)
/* 005554 0x80085728 AC4A0000 */ sw	$t2, 0X0($v0)
/* 005555 0x8008572C 8C820004 */ lw	$v0, 0X4($a0)
/* 005556 0x80085730 3C0BF000 */ lui	$t3, 0xF000
/* 005557 0x80085734 24100002 */ li	$s0, 2
/* 005558 0x80085738 244F0008 */ addiu	$t7, $v0, 8
/* 005559 0x8008573C AC8F0004 */ sw	$t7, 0X4($a0)
/* 005560 0x80085740 AC470004 */ sw	$a3, 0X4($v0)
/* 005561 0x80085744 AC590000 */ sw	$t9, 0X0($v0)
/* 005562 0x80085748 8C820004 */ lw	$v0, 0X4($a0)
/* 005563 0x8008574C 3C0F070F */ lui	$t7, 0x070F
/* 005564 0x80085750 35EFC000 */ ori	$t7, $t7, 0XC000
/* 005565 0x80085754 24580008 */ addiu	$t8, $v0, 8
/* 005566 0x80085758 AC980004 */ sw	$t8, 0X4($a0)
/* 005567 0x8008575C AC400004 */ sw	$zero, 0X4($v0)
/* 005568 0x80085760 AC480000 */ sw	$t0, 0X0($v0)
/* 005569 0x80085764 8C820004 */ lw	$v0, 0X4($a0)
/* 005570 0x80085768 240C0001 */ li	$t4, 1
/* 005571 0x8008576C 244E0008 */ addiu	$t6, $v0, 8
/* 005572 0x80085770 AC8E0004 */ sw	$t6, 0X4($a0)
/* 005573 0x80085774 AC4F0004 */ sw	$t7, 0X4($v0)
/* 005574 0x80085778 AC4B0000 */ sw	$t3, 0X0($v0)
/* 005575 0x8008577C 8C820004 */ lw	$v0, 0X4($a0)
/* 005576 0x80085780 24590008 */ addiu	$t9, $v0, 8
/* 005577 0x80085784 AC990004 */ sw	$t9, 0X4($a0)
/* 005578 0x80085788 AC400004 */ sw	$zero, 0X4($v0)
/* 005579 0x8008578C AC460000 */ sw	$a2, 0X0($v0)
.L_80085790:
/* 005580 0x80085790 8C820004 */ lw	$v0, 0X4($a0)
/* 005581 0x80085794 32110007 */ andi	$s1, $s0, 0X7
/* 005582 0x80085798 318E000F */ andi	$t6, $t4, 0XF
/* 005583 0x8008579C 24580008 */ addiu	$t8, $v0, 8
/* 005584 0x800857A0 AC980004 */ sw	$t8, 0X4($a0)
/* 005585 0x800857A4 000E7D00 */ sll	$t7, $t6, 20
/* 005586 0x800857A8 00118E00 */ sll	$s1, $s1, 24
/* 005587 0x800857AC 022FC825 */ or	$t9, $s1, $t7
/* 005588 0x800857B0 AC590004 */ sw	$t9, 0X4($v0)
/* 005589 0x800857B4 AC450000 */ sw	$a1, 0X0($v0)
/* 005590 0x800857B8 8C820004 */ lw	$v0, 0X4($a0)
/* 005591 0x800857BC 3C010003 */ lui	$at, 0x0003
/* 005592 0x800857C0 3421C000 */ ori	$at, $at, 0XC000
/* 005593 0x800857C4 02217025 */ or	$t6, $s1, $at
/* 005594 0x800857C8 258C0001 */ addiu	$t4, $t4, 1
/* 005595 0x800857CC 24580008 */ addiu	$t8, $v0, 8
/* 005596 0x800857D0 29810004 */ slti	$at, $t4, 4
/* 005597 0x800857D4 AC980004 */ sw	$t8, 0X4($a0)
/* 005598 0x800857D8 35CF03FC */ ori	$t7, $t6, 0X3FC
/* 005599 0x800857DC 26100002 */ addiu	$s0, $s0, 2
/* 005600 0x800857E0 AC4F0004 */ sw	$t7, 0X4($v0)
/* 005601 0x800857E4 1420FFEA */ bnez	$at, .L_80085790
/* 005602 0x800857E8 AC430000 */ sw	$v1, 0X0($v0)
/* 005603 0x800857EC 8C820004 */ lw	$v0, 0X4($a0)
/* 005604 0x800857F0 3C18FA00 */ lui	$t8, 0xFA00
/* 005605 0x800857F4 24590008 */ addiu	$t9, $v0, 8
/* 005606 0x800857F8 AC990004 */ sw	$t9, 0X4($a0)
/* 005607 0x800857FC AC580000 */ sw	$t8, 0X0($v0)
/* 005608 0x80085800 8C8E0010 */ lw	$t6, 0X10($a0)
/* 005609 0x80085804 3C188009 */ lui	$t8, %hi(D_80096CF0)
/* 005610 0x80085808 27186CF0 */ addiu	$t8, $t8, %lo(D_80096CF0)
/* 005611 0x8008580C AC4E0004 */ sw	$t6, 0X4($v0)
/* 005612 0x80085810 8C820004 */ lw	$v0, 0X4($a0)
/* 005613 0x80085814 3C19FD48 */ lui	$t9, 0xFD48
/* 005614 0x80085818 244F0008 */ addiu	$t7, $v0, 8
/* 005615 0x8008581C AC8F0004 */ sw	$t7, 0X4($a0)
/* 005616 0x80085820 AC580004 */ sw	$t8, 0X4($v0)
/* 005617 0x80085824 AC590000 */ sw	$t9, 0X0($v0)
/* 005618 0x80085828 8C820004 */ lw	$v0, 0X4($a0)
/* 005619 0x8008582C 3C190700 */ lui	$t9, 0x0700
/* 005620 0x80085830 3C0FF548 */ lui	$t7, 0xF548
/* 005621 0x80085834 244E0008 */ addiu	$t6, $v0, 8
/* 005622 0x80085838 AC8E0004 */ sw	$t6, 0X4($a0)
/* 005623 0x8008583C 35EF0200 */ ori	$t7, $t7, 0X200
/* 005624 0x80085840 3739C010 */ ori	$t9, $t9, 0XC010
/* 005625 0x80085844 AC590004 */ sw	$t9, 0X4($v0)
/* 005626 0x80085848 AC4F0000 */ sw	$t7, 0X0($v0)
/* 005627 0x8008584C 8C820004 */ lw	$v0, 0X4($a0)
/* 005628 0x80085850 3C190700 */ lui	$t9, 0x0700
/* 005629 0x80085854 3739201C */ ori	$t9, $t9, 0X201C
/* 005630 0x80085858 24580008 */ addiu	$t8, $v0, 8
/* 005631 0x8008585C AC980004 */ sw	$t8, 0X4($a0)
/* 005632 0x80085860 AC400004 */ sw	$zero, 0X4($v0)
/* 005633 0x80085864 AC480000 */ sw	$t0, 0X0($v0)
/* 005634 0x80085868 8C820004 */ lw	$v0, 0X4($a0)
/* 005635 0x8008586C 3C0FF400 */ lui	$t7, 0xF400
/* 005636 0x80085870 244E0008 */ addiu	$t6, $v0, 8
/* 005637 0x80085874 AC8E0004 */ sw	$t6, 0X4($a0)
/* 005638 0x80085878 AC590004 */ sw	$t9, 0X4($v0)
/* 005639 0x8008587C AC4F0000 */ sw	$t7, 0X0($v0)
/* 005640 0x80085880 8C820004 */ lw	$v0, 0X4($a0)
/* 005641 0x80085884 3C0F0140 */ lui	$t7, 0x0140
/* 005642 0x80085888 35EFC010 */ ori	$t7, $t7, 0XC010
/* 005643 0x8008588C 24580008 */ addiu	$t8, $v0, 8
/* 005644 0x80085890 AC980004 */ sw	$t8, 0X4($a0)
/* 005645 0x80085894 AC400004 */ sw	$zero, 0X4($v0)
/* 005646 0x80085898 AC460000 */ sw	$a2, 0X0($v0)
/* 005647 0x8008589C 8C820004 */ lw	$v0, 0X4($a0)
/* 005648 0x800858A0 3C180100 */ lui	$t8, 0x0100
/* 005649 0x800858A4 3718401C */ ori	$t8, $t8, 0X401C
/* 005650 0x800858A8 244E0008 */ addiu	$t6, $v0, 8
/* 005651 0x800858AC AC8E0004 */ sw	$t6, 0X4($a0)
/* 005652 0x800858B0 AC4F0004 */ sw	$t7, 0X4($v0)
/* 005653 0x800858B4 AC450000 */ sw	$a1, 0X0($v0)
/* 005654 0x800858B8 8C820004 */ lw	$v0, 0X4($a0)
/* 005655 0x800858BC 3C0F8009 */ lui	$t7, %hi(D_80096CD0)
/* 005656 0x800858C0 25EF6CD0 */ addiu	$t7, $t7, %lo(D_80096CD0)
/* 005657 0x800858C4 24590008 */ addiu	$t9, $v0, 8
/* 005658 0x800858C8 AC990004 */ sw	$t9, 0X4($a0)
/* 005659 0x800858CC AC580004 */ sw	$t8, 0X4($v0)
/* 005660 0x800858D0 AC430000 */ sw	$v1, 0X0($v0)
/* 005661 0x800858D4 8C820004 */ lw	$v0, 0X4($a0)
/* 005662 0x800858D8 244E0008 */ addiu	$t6, $v0, 8
/* 005663 0x800858DC AC8E0004 */ sw	$t6, 0X4($a0)
/* 005664 0x800858E0 AC4F0004 */ sw	$t7, 0X4($v0)
/* 005665 0x800858E4 AC490000 */ sw	$t1, 0X0($v0)
/* 005666 0x800858E8 8C820004 */ lw	$v0, 0X4($a0)
/* 005667 0x800858EC 3C0EF500 */ lui	$t6, 0xF500
/* 005668 0x800858F0 35CE0140 */ ori	$t6, $t6, 0X140
/* 005669 0x800858F4 24590008 */ addiu	$t9, $v0, 8
/* 005670 0x800858F8 AC990004 */ sw	$t9, 0X4($a0)
/* 005671 0x800858FC AC400004 */ sw	$zero, 0X4($v0)
/* 005672 0x80085900 AC4A0000 */ sw	$t2, 0X0($v0)
/* 005673 0x80085904 8C820004 */ lw	$v0, 0X4($a0)
/* 005674 0x80085908 240A0009 */ li	$t2, 9
/* 005675 0x8008590C 3C090040 */ lui	$t1, 0x0040
/* 005676 0x80085910 24580008 */ addiu	$t8, $v0, 8
/* 005677 0x80085914 AC980004 */ sw	$t8, 0X4($a0)
/* 005678 0x80085918 AC470004 */ sw	$a3, 0X4($v0)
/* 005679 0x8008591C AC4E0000 */ sw	$t6, 0X0($v0)
/* 005680 0x80085920 8C820004 */ lw	$v0, 0X4($a0)
/* 005681 0x80085924 3C180703 */ lui	$t8, 0x0703
/* 005682 0x80085928 3718C000 */ ori	$t8, $t8, 0XC000
/* 005683 0x8008592C 244F0008 */ addiu	$t7, $v0, 8
/* 005684 0x80085930 AC8F0004 */ sw	$t7, 0X4($a0)
/* 005685 0x80085934 AC400004 */ sw	$zero, 0X4($v0)
/* 005686 0x80085938 AC480000 */ sw	$t0, 0X0($v0)
/* 005687 0x8008593C 8C820004 */ lw	$v0, 0X4($a0)
/* 005688 0x80085940 24070003 */ li	$a3, 3
/* 005689 0x80085944 24590008 */ addiu	$t9, $v0, 8
/* 005690 0x80085948 AC990004 */ sw	$t9, 0X4($a0)
/* 005691 0x8008594C AC580004 */ sw	$t8, 0X4($v0)
/* 005692 0x80085950 AC4B0000 */ sw	$t3, 0X0($v0)
/* 005693 0x80085954 8C820004 */ lw	$v0, 0X4($a0)
/* 005694 0x80085958 244E0008 */ addiu	$t6, $v0, 8
/* 005695 0x8008595C AC8E0004 */ sw	$t6, 0X4($a0)
/* 005696 0x80085960 AC400004 */ sw	$zero, 0X4($v0)
/* 005697 0x80085964 AC460000 */ sw	$a2, 0X0($v0)
.L_80085968:
/* 005698 0x80085968 8C820004 */ lw	$v0, 0X4($a0)
/* 005699 0x8008596C 30E80007 */ andi	$t0, $a3, 0X7
/* 005700 0x80085970 00084600 */ sll	$t0, $t0, 24
/* 005701 0x80085974 244F0008 */ addiu	$t7, $v0, 8
/* 005702 0x80085978 AC8F0004 */ sw	$t7, 0X4($a0)
/* 005703 0x8008597C 0109C825 */ or	$t9, $t0, $t1
/* 005704 0x80085980 372EC010 */ ori	$t6, $t9, 0XC010
/* 005705 0x80085984 AC4E0004 */ sw	$t6, 0X4($v0)
/* 005706 0x80085988 AC450000 */ sw	$a1, 0X0($v0)
/* 005707 0x8008598C 8C820004 */ lw	$v0, 0X4($a0)
/* 005708 0x80085990 24E70002 */ addiu	$a3, $a3, 2
/* 005709 0x80085994 3518401C */ ori	$t8, $t0, 0X401C
/* 005710 0x80085998 244F0008 */ addiu	$t7, $v0, 8
/* 005711 0x8008599C AC8F0004 */ sw	$t7, 0X4($a0)
/* 005712 0x800859A0 AC580004 */ sw	$t8, 0X4($v0)
/* 005713 0x800859A4 14EAFFF0 */ bne	$a3, $t2, .L_80085968
/* 005714 0x800859A8 AC430000 */ sw	$v1, 0X0($v0)
/* 005715 0x800859AC 8FB00008 */ lw	$s0, 0X8($sp)
/* 005716 0x800859B0 8FB1000C */ lw	$s1, 0XC($sp)
/* 005717 0x800859B4 03E00008 */ jr	$ra
/* 005718 0x800859B8 27BD0010 */ addiu	$sp, $sp, 16

glabel func_800859BC
/* 005719 0x800859BC 8C830004 */ lw	$v1, 0X4($a0)
/* 005720 0x800859C0 A0850010 */ sb	$a1, 0X10($a0)
/* 005721 0x800859C4 A0860011 */ sb	$a2, 0X11($a0)
/* 005722 0x800859C8 A0870012 */ sb	$a3, 0X12($a0)
/* 005723 0x800859CC 8FAE0010 */ lw	$t6, 0X10($sp)
/* 005724 0x800859D0 246F0008 */ addiu	$t7, $v1, 8
/* 005725 0x800859D4 AC8F0004 */ sw	$t7, 0X4($a0)
/* 005726 0x800859D8 A08E0013 */ sb	$t6, 0X13($a0)
/* 005727 0x800859DC 3C18E700 */ lui	$t8, 0xE700
/* 005728 0x800859E0 AC780000 */ sw	$t8, 0X0($v1)
/* 005729 0x800859E4 AC600004 */ sw	$zero, 0X4($v1)
/* 005730 0x800859E8 8C830004 */ lw	$v1, 0X4($a0)
/* 005731 0x800859EC 3C08FA00 */ lui	$t0, 0xFA00
/* 005732 0x800859F0 24790008 */ addiu	$t9, $v1, 8
/* 005733 0x800859F4 AC990004 */ sw	$t9, 0X4($a0)
/* 005734 0x800859F8 AC680000 */ sw	$t0, 0X0($v1)
/* 005735 0x800859FC 8C890010 */ lw	$t1, 0X10($a0)
/* 005736 0x80085A00 03E00008 */ jr	$ra
/* 005737 0x80085A04 AC690004 */ sw	$t1, 0X4($v1)

glabel func_80085A08
/* 005738 0x80085A08 948E000C */ lhu	$t6, 0XC($a0)
/* 005739 0x80085A0C 9099000E */ lbu	$t9, 0XE($a0)
/* 005740 0x80085A10 00057880 */ sll	$t7, $a1, 2
/* 005741 0x80085A14 00064080 */ sll	$t0, $a2, 2
/* 005742 0x80085A18 01CFC021 */ addu	$t8, $t6, $t7
/* 005743 0x80085A1C 03284821 */ addu	$t1, $t9, $t0
/* 005744 0x80085A20 A4980008 */ sh	$t8, 0X8($a0)
/* 005745 0x80085A24 03E00008 */ jr	$ra
/* 005746 0x80085A28 A489000A */ sh	$t1, 0XA($a0)

glabel func_80085A2C
/* 005747 0x80085A2C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 005748 0x80085A30 AFBF0014 */ sw	$ra, 0X14($sp)
/* 005749 0x80085A34 AFA60020 */ sw	$a2, 0X20($sp)
/* 005750 0x80085A38 000630C0 */ sll	$a2, $a2, 3
/* 005751 0x80085A3C 0C021682 */ jal	func_80085A08
/* 005752 0x80085A40 000528C0 */ sll	$a1, $a1, 3
/* 005753 0x80085A44 8FBF0014 */ lw	$ra, 0X14($sp)
/* 005754 0x80085A48 27BD0018 */ addiu	$sp, $sp, 24
/* 005755 0x80085A4C 03E00008 */ jr	$ra
/* 005756 0x80085A50 00000000 */ nop

glabel func_80085A54
/* 005757 0x80085A54 00057080 */ sll	$t6, $a1, 2
/* 005758 0x80085A58 00067880 */ sll	$t7, $a2, 2
/* 005759 0x80085A5C A48E000C */ sh	$t6, 0XC($a0)
/* 005760 0x80085A60 03E00008 */ jr	$ra
/* 005761 0x80085A64 A08F000E */ sb	$t7, 0XE($a0)

glabel func_80085A68
/* 005762 0x80085A68 AFA50004 */ sw	$a1, 0X4($sp)
/* 005763 0x80085A6C 9083000F */ lbu	$v1, 0XF($a0)
/* 005764 0x80085A70 30A500FF */ andi	$a1, $a1, 0XFF
/* 005765 0x80085A74 306E0008 */ andi	$t6, $v1, 0X8
/* 005766 0x80085A78 11C0004F */ beqz	$t6, .L_80085BB8
/* 005767 0x80085A7C 306FFFF7 */ andi	$t7, $v1, 0XFFF7
/* 005768 0x80085A80 8C820004 */ lw	$v0, 0X4($a0)
/* 005769 0x80085A84 A08F000F */ sb	$t7, 0XF($a0)
/* 005770 0x80085A88 3C19E700 */ lui	$t9, 0xE700
/* 005771 0x80085A8C 24580008 */ addiu	$t8, $v0, 8
/* 005772 0x80085A90 AC980004 */ sw	$t8, 0X4($a0)
/* 005773 0x80085A94 AC400004 */ sw	$zero, 0X4($v0)
/* 005774 0x80085A98 AC590000 */ sw	$t9, 0X0($v0)
/* 005775 0x80085A9C 9088000F */ lbu	$t0, 0XF($a0)
/* 005776 0x80085AA0 3C0DE300 */ lui	$t5, 0xE300
/* 005777 0x80085AA4 35AD1001 */ ori	$t5, $t5, 0X1001
/* 005778 0x80085AA8 31090002 */ andi	$t1, $t0, 0X2
/* 005779 0x80085AAC 11200024 */ beqz	$t1, .L_80085B40
/* 005780 0x80085AB0 340EC000 */ ori	$t6, $zero, 0XC000
/* 005781 0x80085AB4 8C820004 */ lw	$v0, 0X4($a0)
/* 005782 0x80085AB8 3C0BE300 */ lui	$t3, 0xE300
/* 005783 0x80085ABC 356B1001 */ ori	$t3, $t3, 0X1001
/* 005784 0x80085AC0 244A0008 */ addiu	$t2, $v0, 8
/* 005785 0x80085AC4 AC8A0004 */ sw	$t2, 0X4($a0)
/* 005786 0x80085AC8 340C8000 */ ori	$t4, $zero, 0X8000
/* 005787 0x80085ACC AC4C0004 */ sw	$t4, 0X4($v0)
/* 005788 0x80085AD0 AC4B0000 */ sw	$t3, 0X0($v0)
/* 005789 0x80085AD4 8C820004 */ lw	$v0, 0X4($a0)
/* 005790 0x80085AD8 3C0EE300 */ lui	$t6, 0xE300
/* 005791 0x80085ADC 35CE0A01 */ ori	$t6, $t6, 0XA01
/* 005792 0x80085AE0 244D0008 */ addiu	$t5, $v0, 8
/* 005793 0x80085AE4 AC8D0004 */ sw	$t5, 0X4($a0)
/* 005794 0x80085AE8 3C0F0010 */ lui	$t7, 0x0010
/* 005795 0x80085AEC AC4F0004 */ sw	$t7, 0X4($v0)
/* 005796 0x80085AF0 AC4E0000 */ sw	$t6, 0X0($v0)
/* 005797 0x80085AF4 8C820004 */ lw	$v0, 0X4($a0)
/* 005798 0x80085AF8 3C19E200 */ lui	$t9, 0xE200
/* 005799 0x80085AFC 3C080C18 */ lui	$t0, 0x0C18
/* 005800 0x80085B00 24580008 */ addiu	$t8, $v0, 8
/* 005801 0x80085B04 AC980004 */ sw	$t8, 0X4($a0)
/* 005802 0x80085B08 35084240 */ ori	$t0, $t0, 0X4240
/* 005803 0x80085B0C 3739001C */ ori	$t9, $t9, 0X1C
/* 005804 0x80085B10 AC590000 */ sw	$t9, 0X0($v0)
/* 005805 0x80085B14 AC480004 */ sw	$t0, 0X4($v0)
/* 005806 0x80085B18 8C820004 */ lw	$v0, 0X4($a0)
/* 005807 0x80085B1C 3C0AFC11 */ lui	$t2, 0xFC11
/* 005808 0x80085B20 354A15FF */ ori	$t2, $t2, 0X15FF
/* 005809 0x80085B24 24490008 */ addiu	$t1, $v0, 8
/* 005810 0x80085B28 AC890004 */ sw	$t1, 0X4($a0)
/* 005811 0x80085B2C 240BFE38 */ li	$t3, -456
/* 005812 0x80085B30 AC4B0004 */ sw	$t3, 0X4($v0)
/* 005813 0x80085B34 AC4A0000 */ sw	$t2, 0X0($v0)
/* 005814 0x80085B38 1000001F */ b	.L_80085BB8
/* 005815 0x80085B3C 9083000F */ lbu	$v1, 0XF($a0)
.L_80085B40:
/* 005816 0x80085B40 8C820004 */ lw	$v0, 0X4($a0)
/* 005817 0x80085B44 3C18E300 */ lui	$t8, 0xE300
/* 005818 0x80085B48 37180A01 */ ori	$t8, $t8, 0XA01
/* 005819 0x80085B4C 244C0008 */ addiu	$t4, $v0, 8
/* 005820 0x80085B50 AC8C0004 */ sw	$t4, 0X4($a0)
/* 005821 0x80085B54 AC4E0004 */ sw	$t6, 0X4($v0)
/* 005822 0x80085B58 AC4D0000 */ sw	$t5, 0X0($v0)
/* 005823 0x80085B5C 8C820004 */ lw	$v0, 0X4($a0)
/* 005824 0x80085B60 3C08E200 */ lui	$t0, 0xE200
/* 005825 0x80085B64 3C090050 */ lui	$t1, 0x0050
/* 005826 0x80085B68 244F0008 */ addiu	$t7, $v0, 8
/* 005827 0x80085B6C AC8F0004 */ sw	$t7, 0X4($a0)
/* 005828 0x80085B70 AC400004 */ sw	$zero, 0X4($v0)
/* 005829 0x80085B74 AC580000 */ sw	$t8, 0X0($v0)
/* 005830 0x80085B78 8C820004 */ lw	$v0, 0X4($a0)
/* 005831 0x80085B7C 35294240 */ ori	$t1, $t1, 0X4240
/* 005832 0x80085B80 3508001C */ ori	$t0, $t0, 0X1C
/* 005833 0x80085B84 24590008 */ addiu	$t9, $v0, 8
/* 005834 0x80085B88 AC990004 */ sw	$t9, 0X4($a0)
/* 005835 0x80085B8C AC490004 */ sw	$t1, 0X4($v0)
/* 005836 0x80085B90 AC480000 */ sw	$t0, 0X0($v0)
/* 005837 0x80085B94 8C820004 */ lw	$v0, 0X4($a0)
/* 005838 0x80085B98 3C0BFC11 */ lui	$t3, 0xFC11
/* 005839 0x80085B9C 356BFE23 */ ori	$t3, $t3, 0XFE23
/* 005840 0x80085BA0 244A0008 */ addiu	$t2, $v0, 8
/* 005841 0x80085BA4 AC8A0004 */ sw	$t2, 0X4($a0)
/* 005842 0x80085BA8 240CF3F9 */ li	$t4, -3079
/* 005843 0x80085BAC AC4C0004 */ sw	$t4, 0X4($v0)
/* 005844 0x80085BB0 AC4B0000 */ sw	$t3, 0X0($v0)
/* 005845 0x80085BB4 9083000F */ lbu	$v1, 0XF($a0)
.L_80085BB8:
/* 005846 0x80085BB8 306D0004 */ andi	$t5, $v1, 0X4
/* 005847 0x80085BBC 51A0003D */ beqzl	$t5, .L_80085CB4
/* 005848 0x80085BC0 94980008 */ lhu	$t8, 0X8($a0)
/* 005849 0x80085BC4 8C820004 */ lw	$v0, 0X4($a0)
/* 005850 0x80085BC8 3C07FA00 */ lui	$a3, 0xFA00
/* 005851 0x80085BCC 3C01E400 */ lui	$at, 0xE400
/* 005852 0x80085BD0 244E0008 */ addiu	$t6, $v0, 8
/* 005853 0x80085BD4 AC8E0004 */ sw	$t6, 0X4($a0)
/* 005854 0x80085BD8 AC400004 */ sw	$zero, 0X4($v0)
/* 005855 0x80085BDC AC470000 */ sw	$a3, 0X0($v0)
/* 005856 0x80085BE0 94980008 */ lhu	$t8, 0X8($a0)
/* 005857 0x80085BE4 948B000A */ lhu	$t3, 0XA($a0)
/* 005858 0x80085BE8 8C820004 */ lw	$v0, 0X4($a0)
/* 005859 0x80085BEC 27190024 */ addiu	$t9, $t8, 36
/* 005860 0x80085BF0 33280FFF */ andi	$t0, $t9, 0XFFF
/* 005861 0x80085BF4 00084B00 */ sll	$t1, $t0, 12
/* 005862 0x80085BF8 256C0024 */ addiu	$t4, $t3, 36
/* 005863 0x80085BFC 318D0FFF */ andi	$t5, $t4, 0XFFF
/* 005864 0x80085C00 01215025 */ or	$t2, $t1, $at
/* 005865 0x80085C04 244F0008 */ addiu	$t7, $v0, 8
/* 005866 0x80085C08 AC8F0004 */ sw	$t7, 0X4($a0)
/* 005867 0x80085C0C 014D7025 */ or	$t6, $t2, $t5
/* 005868 0x80085C10 AC4E0000 */ sw	$t6, 0X0($v0)
/* 005869 0x80085C14 94890008 */ lhu	$t1, 0X8($a0)
/* 005870 0x80085C18 948E000A */ lhu	$t6, 0XA($a0)
/* 005871 0x80085C1C 0005C040 */ sll	$t8, $a1, 1
/* 005872 0x80085C20 252B0004 */ addiu	$t3, $t1, 4
/* 005873 0x80085C24 316C0FFF */ andi	$t4, $t3, 0XFFF
/* 005874 0x80085C28 33190007 */ andi	$t9, $t8, 0X7
/* 005875 0x80085C2C 00194600 */ sll	$t0, $t9, 24
/* 005876 0x80085C30 000C5300 */ sll	$t2, $t4, 12
/* 005877 0x80085C34 25CF0004 */ addiu	$t7, $t6, 4
/* 005878 0x80085C38 31F80FFF */ andi	$t8, $t7, 0XFFF
/* 005879 0x80085C3C 010A6825 */ or	$t5, $t0, $t2
/* 005880 0x80085C40 01B8C825 */ or	$t9, $t5, $t8
/* 005881 0x80085C44 AC590004 */ sw	$t9, 0X4($v0)
/* 005882 0x80085C48 8C820004 */ lw	$v0, 0X4($a0)
/* 005883 0x80085C4C 0005C0C3 */ sra	$t8, $a1, 3
/* 005884 0x80085C50 0018CA00 */ sll	$t9, $t8, 8
/* 005885 0x80085C54 24490008 */ addiu	$t1, $v0, 8
/* 005886 0x80085C58 AC890004 */ sw	$t1, 0X4($a0)
/* 005887 0x80085C5C 30AE0004 */ andi	$t6, $a1, 0X4
/* 005888 0x80085C60 3C0BE100 */ lui	$t3, 0xE100
/* 005889 0x80085C64 000E7D80 */ sll	$t7, $t6, 22
/* 005890 0x80085C68 3329FFFF */ andi	$t1, $t9, 0XFFFF
/* 005891 0x80085C6C AC4B0000 */ sw	$t3, 0X0($v0)
/* 005892 0x80085C70 01E95825 */ or	$t3, $t7, $t1
/* 005893 0x80085C74 AC4B0004 */ sw	$t3, 0X4($v0)
/* 005894 0x80085C78 8C820004 */ lw	$v0, 0X4($a0)
/* 005895 0x80085C7C 3C0A0400 */ lui	$t2, 0x0400
/* 005896 0x80085C80 354A0400 */ ori	$t2, $t2, 0X400
/* 005897 0x80085C84 244C0008 */ addiu	$t4, $v0, 8
/* 005898 0x80085C88 AC8C0004 */ sw	$t4, 0X4($a0)
/* 005899 0x80085C8C 3C08F100 */ lui	$t0, 0xF100
/* 005900 0x80085C90 AC480000 */ sw	$t0, 0X0($v0)
/* 005901 0x80085C94 AC4A0004 */ sw	$t2, 0X4($v0)
/* 005902 0x80085C98 8C820004 */ lw	$v0, 0X4($a0)
/* 005903 0x80085C9C 244E0008 */ addiu	$t6, $v0, 8
/* 005904 0x80085CA0 AC8E0004 */ sw	$t6, 0X4($a0)
/* 005905 0x80085CA4 AC470000 */ sw	$a3, 0X0($v0)
/* 005906 0x80085CA8 8C8D0010 */ lw	$t5, 0X10($a0)
/* 005907 0x80085CAC AC4D0004 */ sw	$t5, 0X4($v0)
/* 005908 0x80085CB0 94980008 */ lhu	$t8, 0X8($a0)
.L_80085CB4:
/* 005909 0x80085CB4 000540C3 */ sra	$t0, $a1, 3
/* 005910 0x80085CB8 00085200 */ sll	$t2, $t0, 8
/* 005911 0x80085CBC 9488000A */ lhu	$t0, 0XA($a0)
/* 005912 0x80085CC0 30A90004 */ andi	$t1, $a1, 0X4
/* 005913 0x80085CC4 8C820004 */ lw	$v0, 0X4($a0)
/* 005914 0x80085CC8 00095D80 */ sll	$t3, $t1, 22
/* 005915 0x80085CCC 314EFFFF */ andi	$t6, $t2, 0XFFFF
/* 005916 0x80085CD0 27190020 */ addiu	$t9, $t8, 32
/* 005917 0x80085CD4 332F0FFF */ andi	$t7, $t9, 0XFFF
/* 005918 0x80085CD8 000F4B00 */ sll	$t1, $t7, 12
/* 005919 0x80085CDC 016E3025 */ or	$a2, $t3, $t6
/* 005920 0x80085CE0 3C01E400 */ lui	$at, 0xE400
/* 005921 0x80085CE4 250A0020 */ addiu	$t2, $t0, 32
/* 005922 0x80085CE8 314B0FFF */ andi	$t3, $t2, 0XFFF
/* 005923 0x80085CEC 01216025 */ or	$t4, $t1, $at
/* 005924 0x80085CF0 244D0008 */ addiu	$t5, $v0, 8
/* 005925 0x80085CF4 AC8D0004 */ sw	$t5, 0X4($a0)
/* 005926 0x80085CF8 018B7025 */ or	$t6, $t4, $t3
/* 005927 0x80085CFC AC4E0000 */ sw	$t6, 0X0($v0)
/* 005928 0x80085D00 948D0008 */ lhu	$t5, 0X8($a0)
/* 005929 0x80085D04 9489000A */ lhu	$t1, 0XA($a0)
/* 005930 0x80085D08 00053840 */ sll	$a3, $a1, 1
/* 005931 0x80085D0C 30E70007 */ andi	$a3, $a3, 0X7
/* 005932 0x80085D10 31B80FFF */ andi	$t8, $t5, 0XFFF
/* 005933 0x80085D14 0018CB00 */ sll	$t9, $t8, 12
/* 005934 0x80085D18 00073E00 */ sll	$a3, $a3, 24
/* 005935 0x80085D1C 00F97825 */ or	$t7, $a3, $t9
/* 005936 0x80085D20 31280FFF */ andi	$t0, $t1, 0XFFF
/* 005937 0x80085D24 01E85025 */ or	$t2, $t7, $t0
/* 005938 0x80085D28 AC4A0004 */ sw	$t2, 0X4($v0)
/* 005939 0x80085D2C 8C820004 */ lw	$v0, 0X4($a0)
/* 005940 0x80085D30 3C0BE100 */ lui	$t3, 0xE100
/* 005941 0x80085D34 3C180400 */ lui	$t8, 0x0400
/* 005942 0x80085D38 244C0008 */ addiu	$t4, $v0, 8
/* 005943 0x80085D3C AC8C0004 */ sw	$t4, 0X4($a0)
/* 005944 0x80085D40 AC460004 */ sw	$a2, 0X4($v0)
/* 005945 0x80085D44 AC4B0000 */ sw	$t3, 0X0($v0)
/* 005946 0x80085D48 8C820004 */ lw	$v0, 0X4($a0)
/* 005947 0x80085D4C 37180400 */ ori	$t8, $t8, 0X400
/* 005948 0x80085D50 3C0DF100 */ lui	$t5, 0xF100
/* 005949 0x80085D54 244E0008 */ addiu	$t6, $v0, 8
/* 005950 0x80085D58 AC8E0004 */ sw	$t6, 0X4($a0)
/* 005951 0x80085D5C AC580004 */ sw	$t8, 0X4($v0)
/* 005952 0x80085D60 AC4D0000 */ sw	$t5, 0X0($v0)
/* 005953 0x80085D64 94990008 */ lhu	$t9, 0X8($a0)
/* 005954 0x80085D68 27290020 */ addiu	$t1, $t9, 32
/* 005955 0x80085D6C 03E00008 */ jr	$ra
/* 005956 0x80085D70 A4890008 */ sh	$t1, 0X8($a0)

glabel func_80085D74
/* 005957 0x80085D74 27BDFFE0 */ addiu	$sp, $sp, -32
/* 005958 0x80085D78 AFA50024 */ sw	$a1, 0X24($sp)
/* 005959 0x80085D7C 30A500FF */ andi	$a1, $a1, 0XFF
/* 005960 0x80085D80 AFB00018 */ sw	$s0, 0X18($sp)
/* 005961 0x80085D84 24010020 */ li	$at, 32
/* 005962 0x80085D88 00808025 */ move	$s0, $a0
/* 005963 0x80085D8C AFBF001C */ sw	$ra, 0X1C($sp)
/* 005964 0x80085D90 14A10005 */ bne	$a1, $at, .L_80085DA8
/* 005965 0x80085D94 00A01025 */ move	$v0, $a1
/* 005966 0x80085D98 948E0008 */ lhu	$t6, 0X8($a0)
/* 005967 0x80085D9C 25CF0020 */ addiu	$t7, $t6, 32
/* 005968 0x80085DA0 1000005E */ b	.L_80085F1C
/* 005969 0x80085DA4 A48F0008 */ sh	$t7, 0X8($a0)
.L_80085DA8:
/* 005970 0x80085DA8 28410021 */ slti	$at, $v0, 33
/* 005971 0x80085DAC 14200007 */ bnez	$at, .L_80085DCC
/* 005972 0x80085DB0 2841007F */ slti	$at, $v0, 127
/* 005973 0x80085DB4 50200006 */ beqzl	$at, .L_80085DD0
/* 005974 0x80085DB8 284100A0 */ slti	$at, $v0, 160
/* 005975 0x80085DBC 0C02169A */ jal	func_80085A68
/* 005976 0x80085DC0 02002025 */ move	$a0, $s0
/* 005977 0x80085DC4 10000056 */ b	.L_80085F20
/* 005978 0x80085DC8 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80085DCC:
/* 005979 0x80085DCC 284100A0 */ slti	$at, $v0, 160
.L_80085DD0:
/* 005980 0x80085DD0 14200012 */ bnez	$at, .L_80085E1C
/* 005981 0x80085DD4 284100E0 */ slti	$at, $v0, 224
/* 005982 0x80085DD8 50200011 */ beqzl	$at, .L_80085E20
/* 005983 0x80085DDC 2841000B */ slti	$at, $v0, 11
/* 005984 0x80085DE0 9218000F */ lbu	$t8, 0XF($s0)
/* 005985 0x80085DE4 284100C0 */ slti	$at, $v0, 192
/* 005986 0x80085DE8 33190001 */ andi	$t9, $t8, 0X1
/* 005987 0x80085DEC 13200007 */ beqz	$t9, .L_80085E0C
/* 005988 0x80085DF0 00000000 */ nop
/* 005989 0x80085DF4 10200004 */ beqz	$at, .L_80085E08
/* 005990 0x80085DF8 24450020 */ addiu	$a1, $v0, 32
/* 005991 0x80085DFC 2445FFE0 */ addiu	$a1, $v0, -32
/* 005992 0x80085E00 10000002 */ b	.L_80085E0C
/* 005993 0x80085E04 30A500FF */ andi	$a1, $a1, 0XFF
.L_80085E08:
/* 005994 0x80085E08 30A500FF */ andi	$a1, $a1, 0XFF
.L_80085E0C:
/* 005995 0x80085E0C 0C02169A */ jal	func_80085A68
/* 005996 0x80085E10 02002025 */ move	$a0, $s0
/* 005997 0x80085E14 10000042 */ b	.L_80085F20
/* 005998 0x80085E18 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80085E1C:
/* 005999 0x80085E1C 2841000B */ slti	$at, $v0, 11
.L_80085E20:
/* 006000 0x80085E20 14200010 */ bnez	$at, .L_80085E64
/* 006001 0x80085E24 2841000E */ slti	$at, $v0, 14
/* 006002 0x80085E28 14200009 */ bnez	$at, .L_80085E50
/* 006003 0x80085E2C 2448FF76 */ addiu	$t0, $v0, -138
/* 006004 0x80085E30 2D010005 */ sltiu	$at, $t0, 5
/* 006005 0x80085E34 10200039 */ beqz	$at, .L_80085F1C
/* 006006 0x80085E38 00084080 */ sll	$t0, $t0, 2
/* 006007 0x80085E3C 3C01800A */ lui	$at, %hi(__switch_D_80099090)
/* 006008 0x80085E40 00280821 */ addu	$at, $at, $t0
/* 006009 0x80085E44 8C289090 */ lw	$t0, %lo(__switch_D_80099090)($at)
/* 006010 0x80085E48 01000008 */ jr	$t0
/* 006011 0x80085E4C 00000000 */ nop
.L_80085E50:
/* 006012 0x80085E50 2401000D */ li	$at, 13
/* 006013 0x80085E54 5041000D */ beql	$v0, $at, .L_80085E8C
/* 006014 0x80085E58 960B000C */ lhu	$t3, 0XC($s0)
/* 006015 0x80085E5C 10000030 */ b	.L_80085F20
/* 006016 0x80085E60 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80085E64:
/* 006017 0x80085E64 1040002D */ beqz	$v0, .L_80085F1C
/* 006018 0x80085E68 24010009 */ li	$at, 9
/* 006019 0x80085E6C 10410009 */ beq	$v0, $at, .L_80085E94
/* 006020 0x80085E70 2401000A */ li	$at, 10
/* 006021 0x80085E74 5441002A */ bnel	$v0, $at, .L_80085F20
/* 006022 0x80085E78 8FBF001C */ lw	$ra, 0X1C($sp)
/* 006023 0x80085E7C 9609000A */ lhu	$t1, 0XA($s0)
/* 006024 0x80085E80 252A0020 */ addiu	$t2, $t1, 32
/* 006025 0x80085E84 A60A000A */ sh	$t2, 0XA($s0)
/* 006026 0x80085E88 960B000C */ lhu	$t3, 0XC($s0)
.L_80085E8C:
/* 006027 0x80085E8C 10000023 */ b	.L_80085F1C
/* 006028 0x80085E90 A60B0008 */ sh	$t3, 0X8($s0)
.L_80085E94:
/* 006029 0x80085E94 02002025 */ move	$a0, $s0
.L_80085E98:
/* 006030 0x80085E98 0C02169A */ jal	func_80085A68
/* 006031 0x80085E9C 24050020 */ li	$a1, 32
/* 006032 0x80085EA0 960C0008 */ lhu	$t4, 0X8($s0)
/* 006033 0x80085EA4 960D000C */ lhu	$t5, 0XC($s0)
/* 006034 0x80085EA8 018D7023 */ subu	$t6, $t4, $t5
/* 006035 0x80085EAC 05C10004 */ bgez	$t6, .L_80085EC0
/* 006036 0x80085EB0 31CF00FF */ andi	$t7, $t6, 0XFF
/* 006037 0x80085EB4 11E00002 */ beqz	$t7, .L_80085EC0
/* 006038 0x80085EB8 00000000 */ nop
/* 006039 0x80085EBC 25EFFF00 */ addiu	$t7, $t7, -256
.L_80085EC0:
/* 006040 0x80085EC0 55E0FFF5 */ bnezl	$t7, .L_80085E98
/* 006041 0x80085EC4 02002025 */ move	$a0, $s0
/* 006042 0x80085EC8 10000015 */ b	.L_80085F20
/* 006043 0x80085ECC 8FBF001C */ lw	$ra, 0X1C($sp)
glabel .L_80085ED0
/* 006044 0x80085ED0 9218000F */ lbu	$t8, 0XF($s0)
/* 006045 0x80085ED4 37190001 */ ori	$t9, $t8, 0X1
/* 006046 0x80085ED8 10000010 */ b	.L_80085F1C
/* 006047 0x80085EDC A219000F */ sb	$t9, 0XF($s0)
glabel .L_80085EE0
/* 006048 0x80085EE0 9208000F */ lbu	$t0, 0XF($s0)
/* 006049 0x80085EE4 3109FFFE */ andi	$t1, $t0, 0XFFFE
/* 006050 0x80085EE8 1000000C */ b	.L_80085F1C
/* 006051 0x80085EEC A209000F */ sb	$t1, 0XF($s0)
glabel .L_80085EF0
/* 006052 0x80085EF0 920A000F */ lbu	$t2, 0XF($s0)
/* 006053 0x80085EF4 354C0002 */ ori	$t4, $t2, 0X2
/* 006054 0x80085EF8 A20C000F */ sb	$t4, 0XF($s0)
/* 006055 0x80085EFC 358D0008 */ ori	$t5, $t4, 0X8
/* 006056 0x80085F00 10000006 */ b	.L_80085F1C
/* 006057 0x80085F04 A20D000F */ sb	$t5, 0XF($s0)
glabel .L_80085F08
/* 006058 0x80085F08 920E000F */ lbu	$t6, 0XF($s0)
/* 006059 0x80085F0C 31D8FFFD */ andi	$t8, $t6, 0XFFFD
/* 006060 0x80085F10 A218000F */ sb	$t8, 0XF($s0)
/* 006061 0x80085F14 37190008 */ ori	$t9, $t8, 0X8
/* 006062 0x80085F18 A219000F */ sb	$t9, 0XF($s0)
glabel .L_80085F1C
/* 006063 0x80085F1C 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80085F20:
/* 006064 0x80085F20 8FB00018 */ lw	$s0, 0X18($sp)
/* 006065 0x80085F24 27BD0020 */ addiu	$sp, $sp, 32
/* 006066 0x80085F28 03E00008 */ jr	$ra
/* 006067 0x80085F2C 00000000 */ nop

glabel func_80085F30
/* 006068 0x80085F30 00C70019 */ multu	$a2, $a3
/* 006069 0x80085F34 27BDFFD8 */ addiu	$sp, $sp, -40
/* 006070 0x80085F38 AFB1001C */ sw	$s1, 0X1C($sp)
/* 006071 0x80085F3C AFB20020 */ sw	$s2, 0X20($sp)
/* 006072 0x80085F40 AFB00018 */ sw	$s0, 0X18($sp)
/* 006073 0x80085F44 00809025 */ move	$s2, $a0
/* 006074 0x80085F48 AFBF0024 */ sw	$ra, 0X24($sp)
/* 006075 0x80085F4C 00A08025 */ move	$s0, $a1
/* 006076 0x80085F50 00008812 */ mflo	$s1
/* 006077 0x80085F54 12200007 */ beqz	$s1, .L_80085F74
/* 006078 0x80085F58 02402025 */ move	$a0, $s2
.L_80085F5C:
/* 006079 0x80085F5C 92050000 */ lbu	$a1, 0X0($s0)
/* 006080 0x80085F60 0C02175D */ jal	func_80085D74
/* 006081 0x80085F64 26100001 */ addiu	$s0, $s0, 1
/* 006082 0x80085F68 2631FFFF */ addiu	$s1, $s1, -1
/* 006083 0x80085F6C 5620FFFB */ bnezl	$s1, .L_80085F5C
/* 006084 0x80085F70 02402025 */ move	$a0, $s2
.L_80085F74:
/* 006085 0x80085F74 8FBF0024 */ lw	$ra, 0X24($sp)
/* 006086 0x80085F78 8FB00018 */ lw	$s0, 0X18($sp)
/* 006087 0x80085F7C 8FB1001C */ lw	$s1, 0X1C($sp)
/* 006088 0x80085F80 8FB20020 */ lw	$s2, 0X20($sp)
/* 006089 0x80085F84 03E00008 */ jr	$ra
/* 006090 0x80085F88 27BD0028 */ addiu	$sp, $sp, 40

glabel func_80085F8C
/* 006091 0x80085F8C 27BDFFD8 */ addiu	$sp, $sp, -40
/* 006092 0x80085F90 AFBF0024 */ sw	$ra, 0X24($sp)
/* 006093 0x80085F94 AFB20020 */ sw	$s2, 0X20($sp)
/* 006094 0x80085F98 AFB1001C */ sw	$s1, 0X1C($sp)
/* 006095 0x80085F9C AFB00018 */ sw	$s0, 0X18($sp)
/* 006096 0x80085FA0 90B00000 */ lbu	$s0, 0X0($a1)
/* 006097 0x80085FA4 00A08825 */ move	$s1, $a1
/* 006098 0x80085FA8 00809025 */ move	$s2, $a0
/* 006099 0x80085FAC 12000007 */ beqz	$s0, .L_80085FCC
/* 006100 0x80085FB0 02402025 */ move	$a0, $s2
.L_80085FB4:
/* 006101 0x80085FB4 320500FF */ andi	$a1, $s0, 0XFF
/* 006102 0x80085FB8 0C02175D */ jal	func_80085D74
/* 006103 0x80085FBC 26310001 */ addiu	$s1, $s1, 1
/* 006104 0x80085FC0 92300000 */ lbu	$s0, 0X0($s1)
/* 006105 0x80085FC4 5600FFFB */ bnezl	$s0, .L_80085FB4
/* 006106 0x80085FC8 02402025 */ move	$a0, $s2
.L_80085FCC:
/* 006107 0x80085FCC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 006108 0x80085FD0 8FB00018 */ lw	$s0, 0X18($sp)
/* 006109 0x80085FD4 8FB1001C */ lw	$s1, 0X1C($sp)
/* 006110 0x80085FD8 8FB20020 */ lw	$s2, 0X20($sp)
/* 006111 0x80085FDC 03E00008 */ jr	$ra
/* 006112 0x80085FE0 27BD0028 */ addiu	$sp, $sp, 40

glabel func_80085FE4
/* 006113 0x80085FE4 27BDFFE8 */ addiu	$sp, $sp, -24
/* 006114 0x80085FE8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 006115 0x80085FEC 00C03825 */ move	$a3, $a2
/* 006116 0x80085FF0 AFA40018 */ sw	$a0, 0X18($sp)
/* 006117 0x80085FF4 0C0217CC */ jal	func_80085F30
/* 006118 0x80085FF8 24060001 */ li	$a2, 1
/* 006119 0x80085FFC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 006120 0x80086000 8FA20018 */ lw	$v0, 0X18($sp)
/* 006121 0x80086004 27BD0018 */ addiu	$sp, $sp, 24
/* 006122 0x80086008 03E00008 */ jr	$ra
/* 006123 0x8008600C 00000000 */ nop

glabel func_80086010
/* 006124 0x80086010 908E000F */ lbu	$t6, 0XF($a0)
/* 006125 0x80086014 3C188008 */ lui	$t8, %hi(func_80085FE4)
/* 006126 0x80086018 27185FE4 */ addiu	$t8, $t8, %lo(func_80085FE4)
/* 006127 0x8008601C 31D9FF7F */ andi	$t9, $t6, 0XFF7F
/* 006128 0x80086020 3329FFFE */ andi	$t1, $t9, 0XFFFE
/* 006129 0x80086024 A099000F */ sb	$t9, 0XF($a0)
/* 006130 0x80086028 312BFFFD */ andi	$t3, $t1, 0XFFFD
/* 006131 0x8008602C A089000F */ sb	$t1, 0XF($a0)
/* 006132 0x80086030 356D0004 */ ori	$t5, $t3, 0X4
/* 006133 0x80086034 A08B000F */ sb	$t3, 0XF($a0)
/* 006134 0x80086038 A08D000F */ sb	$t5, 0XF($a0)
/* 006135 0x8008603C 35AE0008 */ ori	$t6, $t5, 0X8
/* 006136 0x80086040 AC980000 */ sw	$t8, 0X0($a0)
/* 006137 0x80086044 AC800004 */ sw	$zero, 0X4($a0)
/* 006138 0x80086048 A4800008 */ sh	$zero, 0X8($a0)
/* 006139 0x8008604C A480000A */ sh	$zero, 0XA($a0)
/* 006140 0x80086050 A480000C */ sh	$zero, 0XC($a0)
/* 006141 0x80086054 A080000E */ sb	$zero, 0XE($a0)
/* 006142 0x80086058 AC800010 */ sw	$zero, 0X10($a0)
/* 006143 0x8008605C 03E00008 */ jr	$ra
/* 006144 0x80086060 A08E000F */ sb	$t6, 0XF($a0)

glabel func_80086064
/* 006145 0x80086064 03E00008 */ jr	$ra
/* 006146 0x80086068 AFA40000 */ sw	$a0, 0X0($sp)

glabel func_8008606C
/* 006147 0x8008606C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 006148 0x80086070 AFBF0014 */ sw	$ra, 0X14($sp)
/* 006149 0x80086074 9082000F */ lbu	$v0, 0XF($a0)
/* 006150 0x80086078 304E0080 */ andi	$t6, $v0, 0X80
/* 006151 0x8008607C 15C00004 */ bnez	$t6, .L_80086090
/* 006152 0x80086080 344F0080 */ ori	$t7, $v0, 0X80
/* 006153 0x80086084 A08F000F */ sb	$t7, 0XF($a0)
/* 006154 0x80086088 0C02155C */ jal	func_80085570
/* 006155 0x8008608C AC850004 */ sw	$a1, 0X4($a0)
.L_80086090:
/* 006156 0x80086090 8FBF0014 */ lw	$ra, 0X14($sp)
/* 006157 0x80086094 27BD0018 */ addiu	$sp, $sp, 24
/* 006158 0x80086098 03E00008 */ jr	$ra
/* 006159 0x8008609C 00000000 */ nop

glabel func_800860A0
/* 006160 0x800860A0 908E000F */ lbu	$t6, 0XF($a0)
/* 006161 0x800860A4 8C820004 */ lw	$v0, 0X4($a0)
/* 006162 0x800860A8 AC800004 */ sw	$zero, 0X4($a0)
/* 006163 0x800860AC 31CFFF7F */ andi	$t7, $t6, 0XFF7F
/* 006164 0x800860B0 03E00008 */ jr	$ra
/* 006165 0x800860B4 A08F000F */ sb	$t7, 0XF($a0)

glabel func_800860B8
/* 006166 0x800860B8 27BDFFE8 */ addiu	$sp, $sp, -24
/* 006167 0x800860BC AFBF0014 */ sw	$ra, 0X14($sp)
/* 006168 0x800860C0 0C021E40 */ jal	func_80087900
/* 006169 0x800860C4 00000000 */ nop
/* 006170 0x800860C8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 006171 0x800860CC 27BD0018 */ addiu	$sp, $sp, 24
/* 006172 0x800860D0 03E00008 */ jr	$ra
/* 006173 0x800860D4 00000000 */ nop

glabel func_800860D8
/* 006174 0x800860D8 27BDFFE0 */ addiu	$sp, $sp, -32
/* 006175 0x800860DC AFBF0014 */ sw	$ra, 0X14($sp)
/* 006176 0x800860E0 AFA60028 */ sw	$a2, 0X28($sp)
/* 006177 0x800860E4 AFA50024 */ sw	$a1, 0X24($sp)
/* 006178 0x800860E8 AFA7002C */ sw	$a3, 0X2C($sp)
/* 006179 0x800860EC 0C02182E */ jal	func_800860B8
/* 006180 0x800860F0 27A60028 */ addiu	$a2, $sp, 40
/* 006181 0x800860F4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 006182 0x800860F8 27BD0020 */ addiu	$sp, $sp, 32
/* 006183 0x800860FC 03E00008 */ jr	$ra
/* 006184 0x80086100 00000000 */ nop
/* 006185 0x80086104 00000000 */ nop
/* 006186 0x80086108 00000000 */ nop
/* 006187 0x8008610C 00000000 */ nop
