.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_801A51F0
/* 261580 0x801A51F0 248EFFFF */ addiu	$t6, $a0, -1
/* 261581 0x801A51F4 2DC1000F */ sltiu	$at, $t6, 15
/* 261582 0x801A51F8 10200008 */ beqz	$at, .L_801A521C
/* 261583 0x801A51FC 000E7080 */ sll	$t6, $t6, 2
/* 261584 0x801A5200 3C01801E */ lui	$at, %hi(__switch_D_801E0FEC)
/* 261585 0x801A5204 002E0821 */ addu	$at, $at, $t6
/* 261586 0x801A5208 8C2E0FEC */ lw	$t6, %lo(__switch_D_801E0FEC)($at)
/* 261587 0x801A520C 01C00008 */ jr	$t6
/* 261588 0x801A5210 00000000 */ nop
glabel .L_801A5214
/* 261589 0x801A5214 03E00008 */ jr	$ra
/* 261590 0x801A5218 2402FFFF */ li	$v0, -1
glabel .L_801A521C
/* 261591 0x801A521C 00001025 */ move	$v0, $zero
/* 261592 0x801A5220 03E00008 */ jr	$ra
/* 261593 0x801A5224 00000000 */ nop

glabel func_801A5228
/* 261594 0x801A5228 27BDFFC8 */ addiu	$sp, $sp, -56
/* 261595 0x801A522C 3C028020 */ lui	$v0, %hi(D_801FD5A0)
/* 261596 0x801A5230 2442D5A0 */ addiu	$v0, $v0, %lo(D_801FD5A0)
/* 261597 0x801A5234 240E03E8 */ li	$t6, 1000
/* 261598 0x801A5238 240F0005 */ li	$t7, 5
/* 261599 0x801A523C AFBF0034 */ sw	$ra, 0X34($sp)
/* 261600 0x801A5240 AFB70030 */ sw	$s7, 0X30($sp)
/* 261601 0x801A5244 AFB6002C */ sw	$s6, 0X2C($sp)
/* 261602 0x801A5248 AFB50028 */ sw	$s5, 0X28($sp)
/* 261603 0x801A524C AFB40024 */ sw	$s4, 0X24($sp)
/* 261604 0x801A5250 AFB30020 */ sw	$s3, 0X20($sp)
/* 261605 0x801A5254 AFB2001C */ sw	$s2, 0X1C($sp)
/* 261606 0x801A5258 AFB10018 */ sw	$s1, 0X18($sp)
/* 261607 0x801A525C AFB00014 */ sw	$s0, 0X14($sp)
/* 261608 0x801A5260 A0400004 */ sb	$zero, 0X4($v0)
/* 261609 0x801A5264 AC400008 */ sw	$zero, 0X8($v0)
/* 261610 0x801A5268 A44E000C */ sh	$t6, 0XC($v0)
/* 261611 0x801A526C A44F000E */ sh	$t7, 0XE($v0)
/* 261612 0x801A5270 A4400010 */ sh	$zero, 0X10($v0)
/* 261613 0x801A5274 AC440000 */ sw	$a0, 0X0($v0)
/* 261614 0x801A5278 0080B025 */ move	$s6, $a0
/* 261615 0x801A527C 0C05D402 */ jal	func_80175008
/* 261616 0x801A5280 90910258 */ lbu	$s1, 0X258($a0)
/* 261617 0x801A5284 3C178020 */ lui	$s7, %hi(D_801FD5B8)
/* 261618 0x801A5288 26F7D5B8 */ addiu	$s7, $s7, %lo(D_801FD5B8)
/* 261619 0x801A528C 00409025 */ move	$s2, $v0
/* 261620 0x801A5290 02E02025 */ move	$a0, $s7
/* 261621 0x801A5294 0C023B4C */ jal	func_8008ED30
/* 261622 0x801A5298 322500FF */ andi	$a1, $s1, 0XFF
/* 261623 0x801A529C 00409825 */ move	$s3, $v0
/* 261624 0x801A52A0 0C05D41B */ jal	func_8017506C
/* 261625 0x801A52A4 02402025 */ move	$a0, $s2
/* 261626 0x801A52A8 12600003 */ beqz	$s3, .L_801A52B8
/* 261627 0x801A52AC 00008025 */ move	$s0, $zero
/* 261628 0x801A52B0 1000002C */ b	.L_801A5364
/* 261629 0x801A52B4 02601025 */ move	$v0, $s3
.L_801A52B8:
/* 261630 0x801A52B8 2623FFFF */ addiu	$v1, $s1, -1
/* 261631 0x801A52BC 0220A825 */ move	$s5, $s1
/* 261632 0x801A52C0 04610002 */ bgez	$v1, .L_801A52CC
/* 261633 0x801A52C4 00600821 */ addu	$at, $v1, $zero
/* 261634 0x801A52C8 24610007 */ addiu	$at, $v1, 7
.L_801A52CC:
/* 261635 0x801A52CC 000118C3 */ sra	$v1, $at, 3
/* 261636 0x801A52D0 24630001 */ addiu	$v1, $v1, 1
/* 261637 0x801A52D4 18600009 */ blez	$v1, .L_801A52FC
/* 261638 0x801A52D8 3C028020 */ lui	$v0, %hi(D_801FD608)
/* 261639 0x801A52DC 2442D608 */ addiu	$v0, $v0, %lo(D_801FD608)
.L_801A52E0:
/* 261640 0x801A52E0 0050C021 */ addu	$t8, $v0, $s0
/* 261641 0x801A52E4 26100001 */ addiu	$s0, $s0, 1
/* 261642 0x801A52E8 321000FF */ andi	$s0, $s0, 0XFF
/* 261643 0x801A52EC 0203082A */ slt	$at, $s0, $v1
/* 261644 0x801A52F0 1420FFFB */ bnez	$at, .L_801A52E0
/* 261645 0x801A52F4 A3000000 */ sb	$zero, 0X0($t8)
/* 261646 0x801A52F8 00008025 */ move	$s0, $zero
.L_801A52FC:
/* 261647 0x801A52FC 1AA00018 */ blez	$s5, .L_801A5360
/* 261648 0x801A5300 2414001E */ li	$s4, 30
.L_801A5304:
/* 261649 0x801A5304 0C05D402 */ jal	func_80175008
/* 261650 0x801A5308 00000000 */ nop
/* 261651 0x801A530C 02140019 */ multu	$s0, $s4
/* 261652 0x801A5310 00409025 */ move	$s2, $v0
/* 261653 0x801A5314 02E02025 */ move	$a0, $s7
/* 261654 0x801A5318 0000C812 */ mflo	$t9
/* 261655 0x801A531C 02D98821 */ addu	$s1, $s6, $t9
/* 261656 0x801A5320 0C022044 */ jal	func_80088110
/* 261657 0x801A5324 02202825 */ move	$a1, $s1
/* 261658 0x801A5328 00409825 */ move	$s3, $v0
/* 261659 0x801A532C 0C05D41B */ jal	func_8017506C
/* 261660 0x801A5330 02402025 */ move	$a0, $s2
/* 261661 0x801A5334 0C06947C */ jal	func_801A51F0
/* 261662 0x801A5338 02602025 */ move	$a0, $s3
/* 261663 0x801A533C 50400004 */ beqzl	$v0, .L_801A5350
/* 261664 0x801A5340 26100001 */ addiu	$s0, $s0, 1
/* 261665 0x801A5344 0C069687 */ jal	func_801A5A1C
/* 261666 0x801A5348 02202025 */ move	$a0, $s1
/* 261667 0x801A534C 26100001 */ addiu	$s0, $s0, 1
.L_801A5350:
/* 261668 0x801A5350 321000FF */ andi	$s0, $s0, 0XFF
/* 261669 0x801A5354 0215082A */ slt	$at, $s0, $s5
/* 261670 0x801A5358 1420FFEA */ bnez	$at, .L_801A5304
/* 261671 0x801A535C 00000000 */ nop
.L_801A5360:
/* 261672 0x801A5360 02601025 */ move	$v0, $s3
.L_801A5364:
/* 261673 0x801A5364 8FBF0034 */ lw	$ra, 0X34($sp)
/* 261674 0x801A5368 8FB00014 */ lw	$s0, 0X14($sp)
/* 261675 0x801A536C 8FB10018 */ lw	$s1, 0X18($sp)
/* 261676 0x801A5370 8FB2001C */ lw	$s2, 0X1C($sp)
/* 261677 0x801A5374 8FB30020 */ lw	$s3, 0X20($sp)
/* 261678 0x801A5378 8FB40024 */ lw	$s4, 0X24($sp)
/* 261679 0x801A537C 8FB50028 */ lw	$s5, 0X28($sp)
/* 261680 0x801A5380 8FB6002C */ lw	$s6, 0X2C($sp)
/* 261681 0x801A5384 8FB70030 */ lw	$s7, 0X30($sp)
/* 261682 0x801A5388 03E00008 */ jr	$ra
/* 261683 0x801A538C 27BD0038 */ addiu	$sp, $sp, 56

glabel func_801A5390
/* 261684 0x801A5390 3C028020 */ lui	$v0, %hi(D_801FD5A0)
/* 261685 0x801A5394 2442D5A0 */ addiu	$v0, $v0, %lo(D_801FD5A0)
/* 261686 0x801A5398 8C4E0008 */ lw	$t6, 0X8($v0)
/* 261687 0x801A539C 27BDFFE0 */ addiu	$sp, $sp, -32
/* 261688 0x801A53A0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 261689 0x801A53A4 AC400008 */ sw	$zero, 0X8($v0)
/* 261690 0x801A53A8 0C05D402 */ jal	func_80175008
/* 261691 0x801A53AC AFAE001C */ sw	$t6, 0X1C($sp)
/* 261692 0x801A53B0 3C048020 */ lui	$a0, %hi(D_801FD5B8)
/* 261693 0x801A53B4 AFA20018 */ sw	$v0, 0X18($sp)
/* 261694 0x801A53B8 0C025904 */ jal	func_80096410
/* 261695 0x801A53BC 2484D5B8 */ addiu	$a0, $a0, %lo(D_801FD5B8)
/* 261696 0x801A53C0 0C05D41B */ jal	func_8017506C
/* 261697 0x801A53C4 8FA40018 */ lw	$a0, 0X18($sp)
/* 261698 0x801A53C8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 261699 0x801A53CC 8FA2001C */ lw	$v0, 0X1C($sp)
/* 261700 0x801A53D0 27BD0020 */ addiu	$sp, $sp, 32
/* 261701 0x801A53D4 03E00008 */ jr	$ra
/* 261702 0x801A53D8 00000000 */ nop
/* 261703 0x801A53DC 3C028020 */ lui	$v0, %hi(D_801FD5A0)
/* 261704 0x801A53E0 03E00008 */ jr	$ra
/* 261705 0x801A53E4 8C42D5A0 */ lw	$v0, %lo(D_801FD5A0)($v0)

glabel func_801A53E8
/* 261706 0x801A53E8 3C028020 */ lui	$v0, %hi(D_801FD5A0)
/* 261707 0x801A53EC 2442D5A0 */ addiu	$v0, $v0, %lo(D_801FD5A0)
/* 261708 0x801A53F0 97AE0012 */ lhu	$t6, 0X12($sp)
/* 261709 0x801A53F4 AFA40000 */ sw	$a0, 0X0($sp)
/* 261710 0x801A53F8 AFA50004 */ sw	$a1, 0X4($sp)
/* 261711 0x801A53FC AFA60008 */ sw	$a2, 0X8($sp)
/* 261712 0x801A5400 AFA7000C */ sw	$a3, 0XC($sp)
/* 261713 0x801A5404 A444000C */ sh	$a0, 0XC($v0)
/* 261714 0x801A5408 A445000E */ sh	$a1, 0XE($v0)
/* 261715 0x801A540C A4460010 */ sh	$a2, 0X10($v0)
/* 261716 0x801A5410 A4470012 */ sh	$a3, 0X12($v0)
/* 261717 0x801A5414 03E00008 */ jr	$ra
/* 261718 0x801A5418 A44E0014 */ sh	$t6, 0X14($v0)

glabel func_801A541C
/* 261719 0x801A541C 3C0E8020 */ lui	$t6, %hi(D_801FD5A0)
/* 261720 0x801A5420 8DCED5A0 */ lw	$t6, %lo(D_801FD5A0)($t6)
/* 261721 0x801A5424 27BDFFE0 */ addiu	$sp, $sp, -32
/* 261722 0x801A5428 AFBF0014 */ sw	$ra, 0X14($sp)
/* 261723 0x801A542C AFA40020 */ sw	$a0, 0X20($sp)
/* 261724 0x801A5430 11C00011 */ beqz	$t6, .L_801A5478
/* 261725 0x801A5434 AFA50024 */ sw	$a1, 0X24($sp)
/* 261726 0x801A5438 0C05D402 */ jal	func_80175008
/* 261727 0x801A543C 00000000 */ nop
/* 261728 0x801A5440 3C048020 */ lui	$a0, %hi(D_801FD5B8)
/* 261729 0x801A5444 AFA20018 */ sw	$v0, 0X18($sp)
/* 261730 0x801A5448 2484D5B8 */ addiu	$a0, $a0, %lo(D_801FD5B8)
/* 261731 0x801A544C 8FA50020 */ lw	$a1, 0X20($sp)
/* 261732 0x801A5450 0C0258D8 */ jal	func_80096360
/* 261733 0x801A5454 8FA60024 */ lw	$a2, 0X24($sp)
/* 261734 0x801A5458 8FA40018 */ lw	$a0, 0X18($sp)
/* 261735 0x801A545C 0C05D41B */ jal	func_8017506C
/* 261736 0x801A5460 AFA2001C */ sw	$v0, 0X1C($sp)
/* 261737 0x801A5464 8FA5001C */ lw	$a1, 0X1C($sp)
/* 261738 0x801A5468 50A00004 */ beqzl	$a1, .L_801A547C
/* 261739 0x801A546C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 261740 0x801A5470 0C06947C */ jal	func_801A51F0
/* 261741 0x801A5474 00A02025 */ move	$a0, $a1
.L_801A5478:
/* 261742 0x801A5478 8FBF0014 */ lw	$ra, 0X14($sp)
.L_801A547C:
/* 261743 0x801A547C 27BD0020 */ addiu	$sp, $sp, 32
/* 261744 0x801A5480 03E00008 */ jr	$ra
/* 261745 0x801A5484 00000000 */ nop

glabel func_801A5488
/* 261746 0x801A5488 27BDFFE0 */ addiu	$sp, $sp, -32
/* 261747 0x801A548C AFBF0014 */ sw	$ra, 0X14($sp)
/* 261748 0x801A5490 0C05D402 */ jal	func_80175008
/* 261749 0x801A5494 AFA40020 */ sw	$a0, 0X20($sp)
/* 261750 0x801A5498 AFA20018 */ sw	$v0, 0X18($sp)
/* 261751 0x801A549C 0C02571C */ jal	func_80095C70
/* 261752 0x801A54A0 8FA40020 */ lw	$a0, 0X20($sp)
/* 261753 0x801A54A4 AFA2001C */ sw	$v0, 0X1C($sp)
/* 261754 0x801A54A8 0C05D41B */ jal	func_8017506C
/* 261755 0x801A54AC 8FA40018 */ lw	$a0, 0X18($sp)
/* 261756 0x801A54B0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 261757 0x801A54B4 8FA2001C */ lw	$v0, 0X1C($sp)
/* 261758 0x801A54B8 27BD0020 */ addiu	$sp, $sp, 32
/* 261759 0x801A54BC 03E00008 */ jr	$ra
/* 261760 0x801A54C0 00000000 */ nop

glabel func_801A54C4
/* 261761 0x801A54C4 3C028020 */ lui	$v0, %hi(D_801FD608)
/* 261762 0x801A54C8 03E00008 */ jr	$ra
/* 261763 0x801A54CC 2442D608 */ addiu	$v0, $v0, %lo(D_801FD608)

glabel func_801A54D0
/* 261764 0x801A54D0 3C028020 */ lui	$v0, %hi(D_801FD5A0)
/* 261765 0x801A54D4 8C42D5A0 */ lw	$v0, %lo(D_801FD5A0)($v0)
/* 261766 0x801A54D8 27BDFFD8 */ addiu	$sp, $sp, -40
/* 261767 0x801A54DC AFA40028 */ sw	$a0, 0X28($sp)
/* 261768 0x801A54E0 3084FFFF */ andi	$a0, $a0, 0XFFFF
/* 261769 0x801A54E4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 261770 0x801A54E8 10400003 */ beqz	$v0, .L_801A54F8
/* 261771 0x801A54EC 24080001 */ li	$t0, 1
/* 261772 0x801A54F0 10000003 */ b	.L_801A5500
/* 261773 0x801A54F4 90490258 */ lbu	$t1, 0X258($v0)
.L_801A54F8:
/* 261774 0x801A54F8 24090014 */ li	$t1, 20
/* 261775 0x801A54FC 00004025 */ move	$t0, $zero
.L_801A5500:
/* 261776 0x801A5500 3401FFFF */ ori	$at, $zero, 0XFFFF
/* 261777 0x801A5504 1481001D */ bne	$a0, $at, .L_801A557C
/* 261778 0x801A5508 00801025 */ move	$v0, $a0
/* 261779 0x801A550C 00002025 */ move	$a0, $zero
/* 261780 0x801A5510 19200018 */ blez	$t1, .L_801A5574
/* 261781 0x801A5514 01203825 */ move	$a3, $t1
/* 261782 0x801A5518 3C058020 */ lui	$a1, %hi(D_801FD608)
/* 261783 0x801A551C 24A5D608 */ addiu	$a1, $a1, %lo(D_801FD608)
/* 261784 0x801A5520 00001825 */ move	$v1, $zero
.L_801A5524:
/* 261785 0x801A5524 04610003 */ bgez	$v1, .L_801A5534
/* 261786 0x801A5528 000370C3 */ sra	$t6, $v1, 3
/* 261787 0x801A552C 24610007 */ addiu	$at, $v1, 7
/* 261788 0x801A5530 000170C3 */ sra	$t6, $at, 3
.L_801A5534:
/* 261789 0x801A5534 00AE1021 */ addu	$v0, $a1, $t6
/* 261790 0x801A5538 904F0000 */ lbu	$t7, 0X0($v0)
/* 261791 0x801A553C 24840001 */ addiu	$a0, $a0, 1
/* 261792 0x801A5540 04610004 */ bgez	$v1, .L_801A5554
/* 261793 0x801A5544 30780007 */ andi	$t8, $v1, 0X7
/* 261794 0x801A5548 13000002 */ beqz	$t8, .L_801A5554
/* 261795 0x801A554C 00000000 */ nop
/* 261796 0x801A5550 2718FFF8 */ addiu	$t8, $t8, -8
.L_801A5554:
/* 261797 0x801A5554 24190001 */ li	$t9, 1
/* 261798 0x801A5558 308400FF */ andi	$a0, $a0, 0XFF
/* 261799 0x801A555C 03195004 */ sllv	$t2, $t9, $t8
/* 261800 0x801A5560 0087082A */ slt	$at, $a0, $a3
/* 261801 0x801A5564 01EA5825 */ or	$t3, $t7, $t2
/* 261802 0x801A5568 00801825 */ move	$v1, $a0
/* 261803 0x801A556C 1420FFED */ bnez	$at, .L_801A5524
/* 261804 0x801A5570 A04B0000 */ sb	$t3, 0X0($v0)
.L_801A5574:
/* 261805 0x801A5574 10000016 */ b	.L_801A55D0
/* 261806 0x801A5578 00000000 */ nop
.L_801A557C:
/* 261807 0x801A557C 3C058020 */ lui	$a1, %hi(D_801FD608)
/* 261808 0x801A5580 24A5D608 */ addiu	$a1, $a1, %lo(D_801FD608)
/* 261809 0x801A5584 04410003 */ bgez	$v0, .L_801A5594
/* 261810 0x801A5588 000260C3 */ sra	$t4, $v0, 3
/* 261811 0x801A558C 24410007 */ addiu	$at, $v0, 7
/* 261812 0x801A5590 000160C3 */ sra	$t4, $at, 3
.L_801A5594:
/* 261813 0x801A5594 00AC1821 */ addu	$v1, $a1, $t4
/* 261814 0x801A5598 90640000 */ lbu	$a0, 0X0($v1)
/* 261815 0x801A559C 04410004 */ bgez	$v0, .L_801A55B0
/* 261816 0x801A55A0 304D0007 */ andi	$t5, $v0, 0X7
/* 261817 0x801A55A4 11A00002 */ beqz	$t5, .L_801A55B0
/* 261818 0x801A55A8 00000000 */ nop
/* 261819 0x801A55AC 25ADFFF8 */ addiu	$t5, $t5, -8
.L_801A55B0:
/* 261820 0x801A55B0 240E0001 */ li	$t6, 1
/* 261821 0x801A55B4 01AE3004 */ sllv	$a2, $t6, $t5
/* 261822 0x801A55B8 0086C824 */ and	$t9, $a0, $a2
/* 261823 0x801A55BC 13200003 */ beqz	$t9, .L_801A55CC
/* 261824 0x801A55C0 0086C025 */ or	$t8, $a0, $a2
/* 261825 0x801A55C4 10000002 */ b	.L_801A55D0
/* 261826 0x801A55C8 00004025 */ move	$t0, $zero
.L_801A55CC:
/* 261827 0x801A55CC A0780000 */ sb	$t8, 0X0($v1)
.L_801A55D0:
/* 261828 0x801A55D0 51000027 */ beqzl	$t0, .L_801A5670
/* 261829 0x801A55D4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 261830 0x801A55D8 0C05D402 */ jal	func_80175008
/* 261831 0x801A55DC A3A90022 */ sb	$t1, 0X22($sp)
/* 261832 0x801A55E0 3C048020 */ lui	$a0, %hi(D_801FD5B8)
/* 261833 0x801A55E4 AFA2001C */ sw	$v0, 0X1C($sp)
/* 261834 0x801A55E8 0C0248B0 */ jal	func_800922C0
/* 261835 0x801A55EC 2484D5B8 */ addiu	$a0, $a0, %lo(D_801FD5B8)
/* 261836 0x801A55F0 AFA20024 */ sw	$v0, 0X24($sp)
/* 261837 0x801A55F4 0C05D41B */ jal	func_8017506C
/* 261838 0x801A55F8 8FA4001C */ lw	$a0, 0X1C($sp)
/* 261839 0x801A55FC 8FAF0024 */ lw	$t7, 0X24($sp)
/* 261840 0x801A5600 93A90022 */ lbu	$t1, 0X22($sp)
/* 261841 0x801A5604 3C0A8020 */ lui	$t2, %hi(D_801FD5A4)
/* 261842 0x801A5608 11E00004 */ beqz	$t7, .L_801A561C
/* 261843 0x801A560C 01203825 */ move	$a3, $t1
/* 261844 0x801A5610 814AD5A4 */ lb	$t2, %lo(D_801FD5A4)($t2)
/* 261845 0x801A5614 15400013 */ bnez	$t2, .L_801A5664
/* 261846 0x801A5618 00000000 */ nop
.L_801A561C:
/* 261847 0x801A561C 0C05D402 */ jal	func_80175008
/* 261848 0x801A5620 AFA90018 */ sw	$t1, 0X18($sp)
/* 261849 0x801A5624 8FA70018 */ lw	$a3, 0X18($sp)
/* 261850 0x801A5628 3C058020 */ lui	$a1, %hi(D_801FD608)
/* 261851 0x801A562C 3C048020 */ lui	$a0, %hi(D_801FD5B8)
/* 261852 0x801A5630 24E6FFFF */ addiu	$a2, $a3, -1
/* 261853 0x801A5634 24A5D608 */ addiu	$a1, $a1, %lo(D_801FD608)
/* 261854 0x801A5638 AFA2001C */ sw	$v0, 0X1C($sp)
/* 261855 0x801A563C 2484D5B8 */ addiu	$a0, $a0, %lo(D_801FD5B8)
/* 261856 0x801A5640 04C10002 */ bgez	$a2, .L_801A564C
/* 261857 0x801A5644 00C00821 */ addu	$at, $a2, $zero
/* 261858 0x801A5648 24C10007 */ addiu	$at, $a2, 7
.L_801A564C:
/* 261859 0x801A564C 000130C3 */ sra	$a2, $at, 3
/* 261860 0x801A5650 0C025580 */ jal	func_80095600
/* 261861 0x801A5654 24C60001 */ addiu	$a2, $a2, 1
/* 261862 0x801A5658 AFA20024 */ sw	$v0, 0X24($sp)
/* 261863 0x801A565C 0C05D41B */ jal	func_8017506C
/* 261864 0x801A5660 8FA4001C */ lw	$a0, 0X1C($sp)
.L_801A5664:
/* 261865 0x801A5664 3C018020 */ lui	$at, %hi(D_801FD5A4)
/* 261866 0x801A5668 A020D5A4 */ sb	$zero, %lo(D_801FD5A4)($at)
/* 261867 0x801A566C 8FBF0014 */ lw	$ra, 0X14($sp)
.L_801A5670:
/* 261868 0x801A5670 8FA20024 */ lw	$v0, 0X24($sp)
/* 261869 0x801A5674 27BD0028 */ addiu	$sp, $sp, 40
/* 261870 0x801A5678 03E00008 */ jr	$ra
/* 261871 0x801A567C 00000000 */ nop

glabel func_801A5680
/* 261872 0x801A5680 3C028020 */ lui	$v0, %hi(D_801FD5A0)
/* 261873 0x801A5684 8C42D5A0 */ lw	$v0, %lo(D_801FD5A0)($v0)
/* 261874 0x801A5688 27BDFFD8 */ addiu	$sp, $sp, -40
/* 261875 0x801A568C AFA40028 */ sw	$a0, 0X28($sp)
/* 261876 0x801A5690 3084FFFF */ andi	$a0, $a0, 0XFFFF
/* 261877 0x801A5694 AFBF0014 */ sw	$ra, 0X14($sp)
/* 261878 0x801A5698 10400003 */ beqz	$v0, .L_801A56A8
/* 261879 0x801A569C 24070001 */ li	$a3, 1
/* 261880 0x801A56A0 10000003 */ b	.L_801A56B0
/* 261881 0x801A56A4 90480258 */ lbu	$t0, 0X258($v0)
.L_801A56A8:
/* 261882 0x801A56A8 24080014 */ li	$t0, 20
/* 261883 0x801A56AC 00003825 */ move	$a3, $zero
.L_801A56B0:
/* 261884 0x801A56B0 3401FFFF */ ori	$at, $zero, 0XFFFF
/* 261885 0x801A56B4 14810013 */ bne	$a0, $at, .L_801A5704
/* 261886 0x801A56B8 00801025 */ move	$v0, $a0
/* 261887 0x801A56BC 2506FFFF */ addiu	$a2, $t0, -1
/* 261888 0x801A56C0 00001025 */ move	$v0, $zero
/* 261889 0x801A56C4 04C10002 */ bgez	$a2, .L_801A56D0
/* 261890 0x801A56C8 00C00821 */ addu	$at, $a2, $zero
/* 261891 0x801A56CC 24C10007 */ addiu	$at, $a2, 7
.L_801A56D0:
/* 261892 0x801A56D0 000130C3 */ sra	$a2, $at, 3
/* 261893 0x801A56D4 24C60001 */ addiu	$a2, $a2, 1
/* 261894 0x801A56D8 18C00008 */ blez	$a2, .L_801A56FC
/* 261895 0x801A56DC 3C058020 */ lui	$a1, %hi(D_801FD608)
/* 261896 0x801A56E0 24A5D608 */ addiu	$a1, $a1, %lo(D_801FD608)
.L_801A56E4:
/* 261897 0x801A56E4 00A27021 */ addu	$t6, $a1, $v0
/* 261898 0x801A56E8 24420001 */ addiu	$v0, $v0, 1
/* 261899 0x801A56EC 304200FF */ andi	$v0, $v0, 0XFF
/* 261900 0x801A56F0 0046082A */ slt	$at, $v0, $a2
/* 261901 0x801A56F4 1420FFFB */ bnez	$at, .L_801A56E4
/* 261902 0x801A56F8 A1C00000 */ sb	$zero, 0X0($t6)
.L_801A56FC:
/* 261903 0x801A56FC 10000017 */ b	.L_801A575C
/* 261904 0x801A5700 00000000 */ nop
.L_801A5704:
/* 261905 0x801A5704 3C058020 */ lui	$a1, %hi(D_801FD608)
/* 261906 0x801A5708 24A5D608 */ addiu	$a1, $a1, %lo(D_801FD608)
/* 261907 0x801A570C 04410003 */ bgez	$v0, .L_801A571C
/* 261908 0x801A5710 000278C3 */ sra	$t7, $v0, 3
/* 261909 0x801A5714 24410007 */ addiu	$at, $v0, 7
/* 261910 0x801A5718 000178C3 */ sra	$t7, $at, 3
.L_801A571C:
/* 261911 0x801A571C 00AF1821 */ addu	$v1, $a1, $t7
/* 261912 0x801A5720 90640000 */ lbu	$a0, 0X0($v1)
/* 261913 0x801A5724 04410004 */ bgez	$v0, .L_801A5738
/* 261914 0x801A5728 30580007 */ andi	$t8, $v0, 0X7
/* 261915 0x801A572C 13000002 */ beqz	$t8, .L_801A5738
/* 261916 0x801A5730 00000000 */ nop
/* 261917 0x801A5734 2718FFF8 */ addiu	$t8, $t8, -8
.L_801A5738:
/* 261918 0x801A5738 24190001 */ li	$t9, 1
/* 261919 0x801A573C 03193004 */ sllv	$a2, $t9, $t8
/* 261920 0x801A5740 00864824 */ and	$t1, $a0, $a2
/* 261921 0x801A5744 15200003 */ bnez	$t1, .L_801A5754
/* 261922 0x801A5748 38CA00FF */ xori	$t2, $a2, 0XFF
/* 261923 0x801A574C 10000003 */ b	.L_801A575C
/* 261924 0x801A5750 00003825 */ move	$a3, $zero
.L_801A5754:
/* 261925 0x801A5754 008A5824 */ and	$t3, $a0, $t2
/* 261926 0x801A5758 A06B0000 */ sb	$t3, 0X0($v1)
.L_801A575C:
/* 261927 0x801A575C 50E00026 */ beqzl	$a3, .L_801A57F8
/* 261928 0x801A5760 8FBF0014 */ lw	$ra, 0X14($sp)
/* 261929 0x801A5764 0C05D402 */ jal	func_80175008
/* 261930 0x801A5768 A3A80022 */ sb	$t0, 0X22($sp)
/* 261931 0x801A576C 3C048020 */ lui	$a0, %hi(D_801FD5B8)
/* 261932 0x801A5770 AFA2001C */ sw	$v0, 0X1C($sp)
/* 261933 0x801A5774 0C0248B0 */ jal	func_800922C0
/* 261934 0x801A5778 2484D5B8 */ addiu	$a0, $a0, %lo(D_801FD5B8)
/* 261935 0x801A577C AFA20024 */ sw	$v0, 0X24($sp)
/* 261936 0x801A5780 0C05D41B */ jal	func_8017506C
/* 261937 0x801A5784 8FA4001C */ lw	$a0, 0X1C($sp)
/* 261938 0x801A5788 8FAC0024 */ lw	$t4, 0X24($sp)
/* 261939 0x801A578C 93A80022 */ lbu	$t0, 0X22($sp)
/* 261940 0x801A5790 3C0D8020 */ lui	$t5, %hi(D_801FD5A4)
/* 261941 0x801A5794 11800004 */ beqz	$t4, .L_801A57A8
/* 261942 0x801A5798 2506FFFF */ addiu	$a2, $t0, -1
/* 261943 0x801A579C 81ADD5A4 */ lb	$t5, %lo(D_801FD5A4)($t5)
/* 261944 0x801A57A0 15A00012 */ bnez	$t5, .L_801A57EC
/* 261945 0x801A57A4 00000000 */ nop
.L_801A57A8:
/* 261946 0x801A57A8 04C10002 */ bgez	$a2, .L_801A57B4
/* 261947 0x801A57AC 00C00821 */ addu	$at, $a2, $zero
/* 261948 0x801A57B0 24C10007 */ addiu	$at, $a2, 7
.L_801A57B4:
/* 261949 0x801A57B4 000130C3 */ sra	$a2, $at, 3
/* 261950 0x801A57B8 24C60001 */ addiu	$a2, $a2, 1
/* 261951 0x801A57BC 0C05D402 */ jal	func_80175008
/* 261952 0x801A57C0 AFA60018 */ sw	$a2, 0X18($sp)
/* 261953 0x801A57C4 3C058020 */ lui	$a1, %hi(D_801FD608)
/* 261954 0x801A57C8 3C048020 */ lui	$a0, %hi(D_801FD5B8)
/* 261955 0x801A57CC 24A5D608 */ addiu	$a1, $a1, %lo(D_801FD608)
/* 261956 0x801A57D0 8FA60018 */ lw	$a2, 0X18($sp)
/* 261957 0x801A57D4 AFA2001C */ sw	$v0, 0X1C($sp)
/* 261958 0x801A57D8 0C025580 */ jal	func_80095600
/* 261959 0x801A57DC 2484D5B8 */ addiu	$a0, $a0, %lo(D_801FD5B8)
/* 261960 0x801A57E0 AFA20024 */ sw	$v0, 0X24($sp)
/* 261961 0x801A57E4 0C05D41B */ jal	func_8017506C
/* 261962 0x801A57E8 8FA4001C */ lw	$a0, 0X1C($sp)
.L_801A57EC:
/* 261963 0x801A57EC 3C018020 */ lui	$at, %hi(D_801FD5A4)
/* 261964 0x801A57F0 A020D5A4 */ sb	$zero, %lo(D_801FD5A4)($at)
/* 261965 0x801A57F4 8FBF0014 */ lw	$ra, 0X14($sp)
.L_801A57F8:
/* 261966 0x801A57F8 8FA20024 */ lw	$v0, 0X24($sp)
/* 261967 0x801A57FC 27BD0028 */ addiu	$sp, $sp, 40
/* 261968 0x801A5800 03E00008 */ jr	$ra
/* 261969 0x801A5804 00000000 */ nop

glabel func_801A5808
/* 261970 0x801A5808 3C038020 */ lui	$v1, %hi(D_801FD5A0)
/* 261971 0x801A580C 2463D5A0 */ addiu	$v1, $v1, %lo(D_801FD5A0)
/* 261972 0x801A5810 80620004 */ lb	$v0, 0X4($v1)
/* 261973 0x801A5814 27BDFFD8 */ addiu	$sp, $sp, -40
/* 261974 0x801A5818 AFBF0014 */ sw	$ra, 0X14($sp)
/* 261975 0x801A581C 10400008 */ beqz	$v0, .L_801A5840
/* 261976 0x801A5820 AFA00024 */ sw	$zero, 0X24($sp)
/* 261977 0x801A5824 24010001 */ li	$at, 1
/* 261978 0x801A5828 10410012 */ beq	$v0, $at, .L_801A5874
/* 261979 0x801A582C 24010002 */ li	$at, 2
/* 261980 0x801A5830 10410030 */ beq	$v0, $at, .L_801A58F4
/* 261981 0x801A5834 3C058020 */ lui	$a1, %hi(D_801FD5C8)
/* 261982 0x801A5838 1000006F */ b	.L_801A59F8
/* 261983 0x801A583C 00000000 */ nop
.L_801A5840:
/* 261984 0x801A5840 0C05D402 */ jal	func_80175008
/* 261985 0x801A5844 00000000 */ nop
/* 261986 0x801A5848 3C048020 */ lui	$a0, %hi(D_801FD5B8)
/* 261987 0x801A584C AFA2001C */ sw	$v0, 0X1C($sp)
/* 261988 0x801A5850 0C025904 */ jal	func_80096410
/* 261989 0x801A5854 2484D5B8 */ addiu	$a0, $a0, %lo(D_801FD5B8)
/* 261990 0x801A5858 AFA20024 */ sw	$v0, 0X24($sp)
/* 261991 0x801A585C 0C05D41B */ jal	func_8017506C
/* 261992 0x801A5860 8FA4001C */ lw	$a0, 0X1C($sp)
/* 261993 0x801A5864 240E0001 */ li	$t6, 1
/* 261994 0x801A5868 3C018020 */ lui	$at, %hi(D_801FD5A4)
/* 261995 0x801A586C 10000062 */ b	.L_801A59F8
/* 261996 0x801A5870 A02ED5A4 */ sb	$t6, %lo(D_801FD5A4)($at)
.L_801A5874:
/* 261997 0x801A5874 0C05D402 */ jal	func_80175008
/* 261998 0x801A5878 00000000 */ nop
/* 261999 0x801A587C 3C058020 */ lui	$a1, %hi(D_801FD5C8)
/* 262000 0x801A5880 3C048020 */ lui	$a0, %hi(D_801FD5B8)
/* 262001 0x801A5884 24A5D5C8 */ addiu	$a1, $a1, %lo(D_801FD5C8)
/* 262002 0x801A5888 AFA2001C */ sw	$v0, 0X1C($sp)
/* 262003 0x801A588C 0C02285C */ jal	func_8008A170
/* 262004 0x801A5890 2484D5B8 */ addiu	$a0, $a0, %lo(D_801FD5B8)
/* 262005 0x801A5894 AFA20024 */ sw	$v0, 0X24($sp)
/* 262006 0x801A5898 0C05D41B */ jal	func_8017506C
/* 262007 0x801A589C 8FA4001C */ lw	$a0, 0X1C($sp)
/* 262008 0x801A58A0 0C06947C */ jal	func_801A51F0
/* 262009 0x801A58A4 8FA40024 */ lw	$a0, 0X24($sp)
/* 262010 0x801A58A8 14400053 */ bnez	$v0, .L_801A59F8
/* 262011 0x801A58AC 3C0F8020 */ lui	$t7, %hi(D_801FD5C4)
/* 262012 0x801A58B0 91EFD5C4 */ lbu	$t7, %lo(D_801FD5C4)($t7)
/* 262013 0x801A58B4 2DE10008 */ sltiu	$at, $t7, 8
/* 262014 0x801A58B8 1020004F */ beqz	$at, .L_801A59F8
/* 262015 0x801A58BC 000F7880 */ sll	$t7, $t7, 2
/* 262016 0x801A58C0 3C01801E */ lui	$at, %hi(__switch_D_801E1028)
/* 262017 0x801A58C4 002F0821 */ addu	$at, $at, $t7
/* 262018 0x801A58C8 8C2F1028 */ lw	$t7, %lo(__switch_D_801E1028)($at)
/* 262019 0x801A58CC 01E00008 */ jr	$t7
/* 262020 0x801A58D0 00000000 */ nop
glabel .L_801A58D4
/* 262021 0x801A58D4 24180002 */ li	$t8, 2
/* 262022 0x801A58D8 3C018020 */ lui	$at, %hi(D_801FD5A4)
/* 262023 0x801A58DC 10000046 */ b	.L_801A59F8
/* 262024 0x801A58E0 A038D5A4 */ sb	$t8, %lo(D_801FD5A4)($at)
glabel .L_801A58E4
/* 262025 0x801A58E4 24190002 */ li	$t9, 2
/* 262026 0x801A58E8 3C018020 */ lui	$at, %hi(D_801FD5A4)
/* 262027 0x801A58EC 10000042 */ b	.L_801A59F8
/* 262028 0x801A58F0 A039D5A4 */ sb	$t9, %lo(D_801FD5A4)($at)
.L_801A58F4:
/* 262029 0x801A58F4 24A5D5C8 */ addiu	$a1, $a1, %lo(D_801FD5C8)
/* 262030 0x801A58F8 94A80000 */ lhu	$t0, 0X0($a1)
/* 262031 0x801A58FC 94690010 */ lhu	$t1, 0X10($v1)
/* 262032 0x801A5900 01095024 */ and	$t2, $t0, $t1
/* 262033 0x801A5904 15400028 */ bnez	$t2, .L_801A59A8
/* 262034 0x801A5908 00000000 */ nop
/* 262035 0x801A590C 946B000E */ lhu	$t3, 0XE($v1)
/* 262036 0x801A5910 94AC0002 */ lhu	$t4, 0X2($a1)
/* 262037 0x801A5914 016C082A */ slt	$at, $t3, $t4
/* 262038 0x801A5918 14200023 */ bnez	$at, .L_801A59A8
/* 262039 0x801A591C 00000000 */ nop
/* 262040 0x801A5920 946D000C */ lhu	$t5, 0XC($v1)
/* 262041 0x801A5924 94AE0014 */ lhu	$t6, 0X14($a1)
/* 262042 0x801A5928 01AE082A */ slt	$at, $t5, $t6
/* 262043 0x801A592C 1420001E */ bnez	$at, .L_801A59A8
/* 262044 0x801A5930 00000000 */ nop
/* 262045 0x801A5934 94AF0004 */ lhu	$t7, 0X4($a1)
/* 262046 0x801A5938 94780012 */ lhu	$t8, 0X12($v1)
/* 262047 0x801A593C 01F8082A */ slt	$at, $t7, $t8
/* 262048 0x801A5940 14200019 */ bnez	$at, .L_801A59A8
/* 262049 0x801A5944 00000000 */ nop
/* 262050 0x801A5948 94B90006 */ lhu	$t9, 0X6($a1)
/* 262051 0x801A594C 94680014 */ lhu	$t0, 0X14($v1)
/* 262052 0x801A5950 0328082A */ slt	$at, $t9, $t0
/* 262053 0x801A5954 14200014 */ bnez	$at, .L_801A59A8
/* 262054 0x801A5958 00000000 */ nop
/* 262055 0x801A595C 8CAA0000 */ lw	$t2, 0X0($a1)
/* 262056 0x801A5960 3C028020 */ lui	$v0, %hi(D_801FD5E8)
/* 262057 0x801A5964 2442D5E8 */ addiu	$v0, $v0, %lo(D_801FD5E8)
/* 262058 0x801A5968 AC4A0000 */ sw	$t2, 0X0($v0)
/* 262059 0x801A596C 8CAA0008 */ lw	$t2, 0X8($a1)
/* 262060 0x801A5970 8CA90004 */ lw	$t1, 0X4($a1)
/* 262061 0x801A5974 AC620008 */ sw	$v0, 0X8($v1)
/* 262062 0x801A5978 AC4A0008 */ sw	$t2, 0X8($v0)
/* 262063 0x801A597C 8CAA0010 */ lw	$t2, 0X10($a1)
/* 262064 0x801A5980 AC490004 */ sw	$t1, 0X4($v0)
/* 262065 0x801A5984 8CA9000C */ lw	$t1, 0XC($a1)
/* 262066 0x801A5988 AC4A0010 */ sw	$t2, 0X10($v0)
/* 262067 0x801A598C 8CAA0018 */ lw	$t2, 0X18($a1)
/* 262068 0x801A5990 AC49000C */ sw	$t1, 0XC($v0)
/* 262069 0x801A5994 8CA90014 */ lw	$t1, 0X14($a1)
/* 262070 0x801A5998 AC4A0018 */ sw	$t2, 0X18($v0)
/* 262071 0x801A599C 94AA001C */ lhu	$t2, 0X1C($a1)
/* 262072 0x801A59A0 AC490014 */ sw	$t1, 0X14($v0)
/* 262073 0x801A59A4 A44A001C */ sh	$t2, 0X1C($v0)
.L_801A59A8:
/* 262074 0x801A59A8 0C05D402 */ jal	func_80175008
/* 262075 0x801A59AC 00000000 */ nop
/* 262076 0x801A59B0 3C048020 */ lui	$a0, %hi(D_801FD5B8)
/* 262077 0x801A59B4 AFA2001C */ sw	$v0, 0X1C($sp)
/* 262078 0x801A59B8 0C0248B0 */ jal	func_800922C0
/* 262079 0x801A59BC 2484D5B8 */ addiu	$a0, $a0, %lo(D_801FD5B8)
/* 262080 0x801A59C0 0C05D41B */ jal	func_8017506C
/* 262081 0x801A59C4 8FA4001C */ lw	$a0, 0X1C($sp)
/* 262082 0x801A59C8 0C05D402 */ jal	func_80175008
/* 262083 0x801A59CC 00000000 */ nop
/* 262084 0x801A59D0 3C048020 */ lui	$a0, %hi(D_801FD5B8)
/* 262085 0x801A59D4 AFA2001C */ sw	$v0, 0X1C($sp)
/* 262086 0x801A59D8 0C025904 */ jal	func_80096410
/* 262087 0x801A59DC 2484D5B8 */ addiu	$a0, $a0, %lo(D_801FD5B8)
/* 262088 0x801A59E0 AFA20024 */ sw	$v0, 0X24($sp)
/* 262089 0x801A59E4 0C05D41B */ jal	func_8017506C
/* 262090 0x801A59E8 8FA4001C */ lw	$a0, 0X1C($sp)
/* 262091 0x801A59EC 240B0001 */ li	$t3, 1
/* 262092 0x801A59F0 3C018020 */ lui	$at, %hi(D_801FD5A4)
/* 262093 0x801A59F4 A02BD5A4 */ sb	$t3, %lo(D_801FD5A4)($at)
glabel .L_801A59F8
/* 262094 0x801A59F8 0C06947C */ jal	func_801A51F0
/* 262095 0x801A59FC 8FA40024 */ lw	$a0, 0X24($sp)
/* 262096 0x801A5A00 8FBF0014 */ lw	$ra, 0X14($sp)
/* 262097 0x801A5A04 27BD0028 */ addiu	$sp, $sp, 40
/* 262098 0x801A5A08 03E00008 */ jr	$ra
/* 262099 0x801A5A0C 00000000 */ nop

glabel func_801A5A10
/* 262100 0x801A5A10 3C018020 */ lui	$at, %hi(D_801FD5A0)
/* 262101 0x801A5A14 03E00008 */ jr	$ra
/* 262102 0x801A5A18 AC20D5A0 */ sw	$zero, %lo(D_801FD5A0)($at)

glabel func_801A5A1C
/* 262103 0x801A5A1C 27BDFFD0 */ addiu	$sp, $sp, -48
/* 262104 0x801A5A20 AFBF0024 */ sw	$ra, 0X24($sp)
/* 262105 0x801A5A24 AFB00014 */ sw	$s0, 0X14($sp)
/* 262106 0x801A5A28 00808025 */ move	$s0, $a0
/* 262107 0x801A5A2C AFB30020 */ sw	$s3, 0X20($sp)
/* 262108 0x801A5A30 AFB2001C */ sw	$s2, 0X1C($sp)
/* 262109 0x801A5A34 0C023C78 */ jal	strlen
/* 262110 0x801A5A38 AFB10018 */ sw	$s1, 0X18($sp)
/* 262111 0x801A5A3C 304E00FF */ andi	$t6, $v0, 0XFF
/* 262112 0x801A5A40 304400FF */ andi	$a0, $v0, 0XFF
/* 262113 0x801A5A44 00001825 */ move	$v1, $zero
/* 262114 0x801A5A48 19C00050 */ blez	$t6, .L_801A5B8C
/* 262115 0x801A5A4C 00002825 */ move	$a1, $zero
/* 262116 0x801A5A50 00809825 */ move	$s3, $a0
/* 262117 0x801A5A54 3C048020 */ lui	$a0, %hi(D_801FD610)
/* 262118 0x801A5A58 3C1F801E */ lui	$ra, %hi(D_801D8E50)
/* 262119 0x801A5A5C 3C0C801E */ lui	$t4, %hi(D_801D8F70)
/* 262120 0x801A5A60 258C8F70 */ addiu	$t4, $t4, %lo(D_801D8F70)
/* 262121 0x801A5A64 27FF8E50 */ addiu	$ra, $ra, %lo(D_801D8E50)
/* 262122 0x801A5A68 2484D610 */ addiu	$a0, $a0, %lo(D_801FD610)
/* 262123 0x801A5A6C 00003025 */ move	$a2, $zero
/* 262124 0x801A5A70 2412005B */ li	$s2, 91
/* 262125 0x801A5A74 24110081 */ li	$s1, 129
/* 262126 0x801A5A78 240D0082 */ li	$t5, 130
/* 262127 0x801A5A7C 240B0083 */ li	$t3, 131
/* 262128 0x801A5A80 24090020 */ li	$t1, 32
/* 262129 0x801A5A84 2408002D */ li	$t0, 45
/* 262130 0x801A5A88 24070003 */ li	$a3, 3
.L_801A5A8C:
/* 262131 0x801A5A8C 00B07821 */ addu	$t7, $a1, $s0
/* 262132 0x801A5A90 81F80000 */ lb	$t8, 0X0($t7)
/* 262133 0x801A5A94 00D0C821 */ addu	$t9, $a2, $s0
/* 262134 0x801A5A98 A3B80028 */ sb	$t8, 0X28($sp)
/* 262135 0x801A5A9C 832E0001 */ lb	$t6, 0X1($t9)
/* 262136 0x801A5AA0 330200FF */ andi	$v0, $t8, 0XFF
/* 262137 0x801A5AA4 15620010 */ bne	$t3, $v0, .L_801A5AE8
/* 262138 0x801A5AA8 A3AE0029 */ sb	$t6, 0X29($sp)
/* 262139 0x801A5AAC 31CA00FF */ andi	$t2, $t6, 0XFF
/* 262140 0x801A5AB0 01470019 */ multu	$t2, $a3
/* 262141 0x801A5AB4 0083C821 */ addu	$t9, $a0, $v1
/* 262142 0x801A5AB8 24630001 */ addiu	$v1, $v1, 1
/* 262143 0x801A5ABC 306300FF */ andi	$v1, $v1, 0XFF
/* 262144 0x801A5AC0 00007812 */ mflo	$t7
/* 262145 0x801A5AC4 018F1021 */ addu	$v0, $t4, $t7
/* 262146 0x801A5AC8 8058FF40 */ lb	$t8, -0XC0($v0)
/* 262147 0x801A5ACC 00837821 */ addu	$t7, $a0, $v1
/* 262148 0x801A5AD0 24630001 */ addiu	$v1, $v1, 1
/* 262149 0x801A5AD4 A3380000 */ sb	$t8, 0X0($t9)
/* 262150 0x801A5AD8 804EFF41 */ lb	$t6, -0XBF($v0)
/* 262151 0x801A5ADC 306300FF */ andi	$v1, $v1, 0XFF
/* 262152 0x801A5AE0 10000025 */ b	.L_801A5B78
/* 262153 0x801A5AE4 A1EE0000 */ sb	$t6, 0X0($t7)
.L_801A5AE8:
/* 262154 0x801A5AE8 15A2000F */ bne	$t5, $v0, .L_801A5B28
/* 262155 0x801A5AEC 93AA0029 */ lbu	$t2, 0X29($sp)
/* 262156 0x801A5AF0 01470019 */ multu	$t2, $a3
/* 262157 0x801A5AF4 00837021 */ addu	$t6, $a0, $v1
/* 262158 0x801A5AF8 24630001 */ addiu	$v1, $v1, 1
/* 262159 0x801A5AFC 306300FF */ andi	$v1, $v1, 0XFF
/* 262160 0x801A5B00 0000C012 */ mflo	$t8
/* 262161 0x801A5B04 03F81021 */ addu	$v0, $ra, $t8
/* 262162 0x801A5B08 8059FE23 */ lb	$t9, -0X1DD($v0)
/* 262163 0x801A5B0C 0083C021 */ addu	$t8, $a0, $v1
/* 262164 0x801A5B10 24630001 */ addiu	$v1, $v1, 1
/* 262165 0x801A5B14 A1D90000 */ sb	$t9, 0X0($t6)
/* 262166 0x801A5B18 804FFE24 */ lb	$t7, -0X1DC($v0)
/* 262167 0x801A5B1C 306300FF */ andi	$v1, $v1, 0XFF
/* 262168 0x801A5B20 10000015 */ b	.L_801A5B78
/* 262169 0x801A5B24 A30F0000 */ sb	$t7, 0X0($t8)
.L_801A5B28:
/* 262170 0x801A5B28 5622000C */ bnel	$s1, $v0, .L_801A5B5C
/* 262171 0x801A5B2C 00837821 */ addu	$t7, $a0, $v1
/* 262172 0x801A5B30 164A0009 */ bne	$s2, $t2, .L_801A5B58
/* 262173 0x801A5B34 0083C821 */ addu	$t9, $a0, $v1
/* 262174 0x801A5B38 24630001 */ addiu	$v1, $v1, 1
/* 262175 0x801A5B3C 306300FF */ andi	$v1, $v1, 0XFF
/* 262176 0x801A5B40 00837021 */ addu	$t6, $a0, $v1
/* 262177 0x801A5B44 A3280000 */ sb	$t0, 0X0($t9)
/* 262178 0x801A5B48 24630001 */ addiu	$v1, $v1, 1
/* 262179 0x801A5B4C 306300FF */ andi	$v1, $v1, 0XFF
/* 262180 0x801A5B50 10000009 */ b	.L_801A5B78
/* 262181 0x801A5B54 A1C80000 */ sb	$t0, 0X0($t6)
.L_801A5B58:
/* 262182 0x801A5B58 00837821 */ addu	$t7, $a0, $v1
.L_801A5B5C:
/* 262183 0x801A5B5C 24630001 */ addiu	$v1, $v1, 1
/* 262184 0x801A5B60 306300FF */ andi	$v1, $v1, 0XFF
/* 262185 0x801A5B64 0083C021 */ addu	$t8, $a0, $v1
/* 262186 0x801A5B68 A1E90000 */ sb	$t1, 0X0($t7)
/* 262187 0x801A5B6C 24630001 */ addiu	$v1, $v1, 1
/* 262188 0x801A5B70 306300FF */ andi	$v1, $v1, 0XFF
/* 262189 0x801A5B74 A3090000 */ sb	$t1, 0X0($t8)
.L_801A5B78:
/* 262190 0x801A5B78 24C50002 */ addiu	$a1, $a2, 2
/* 262191 0x801A5B7C 30A500FF */ andi	$a1, $a1, 0XFF
/* 262192 0x801A5B80 00B3082A */ slt	$at, $a1, $s3
/* 262193 0x801A5B84 1420FFC1 */ bnez	$at, .L_801A5A8C
/* 262194 0x801A5B88 00A03025 */ move	$a2, $a1
.L_801A5B8C:
/* 262195 0x801A5B8C 3C048020 */ lui	$a0, %hi(D_801FD610)
/* 262196 0x801A5B90 2482D610 */ addiu	$v0, $a0, %lo(D_801FD610)
/* 262197 0x801A5B94 0045C821 */ addu	$t9, $v0, $a1
/* 262198 0x801A5B98 A3200000 */ sb	$zero, 0X0($t9)
/* 262199 0x801A5B9C 8FBF0024 */ lw	$ra, 0X24($sp)
/* 262200 0x801A5BA0 8FB30020 */ lw	$s3, 0X20($sp)
/* 262201 0x801A5BA4 8FB2001C */ lw	$s2, 0X1C($sp)
/* 262202 0x801A5BA8 8FB10018 */ lw	$s1, 0X18($sp)
/* 262203 0x801A5BAC 8FB00014 */ lw	$s0, 0X14($sp)
/* 262204 0x801A5BB0 03E00008 */ jr	$ra
/* 262205 0x801A5BB4 27BD0030 */ addiu	$sp, $sp, 48
/* 262206 0x801A5BB8 00000000 */ nop
/* 262207 0x801A5BBC 00000000 */ nop
/* 262208 0x801A5BC0 00000000 */ nop
/* 262209 0x801A5BC4 00000000 */ nop
/* 262210 0x801A5BC8 00000000 */ nop
/* 262211 0x801A5BCC 00000000 */ nop
