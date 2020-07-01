.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_801647D0
/* 195396 0x801647D0 90820000 */ lbu	$v0, 0X0($a0)
/* 195397 0x801647D4 24010001 */ li	$at, 1
/* 195398 0x801647D8 50400012 */ beqzl	$v0, .L_80164824
/* 195399 0x801647DC A0800001 */ sb	$zero, 0X1($a0)
/* 195400 0x801647E0 10410005 */ beq	$v0, $at, .L_801647F8
/* 195401 0x801647E4 24010002 */ li	$at, 2
/* 195402 0x801647E8 5041000D */ beql	$v0, $at, .L_80164820
/* 195403 0x801647EC A0800007 */ sb	$zero, 0X7($a0)
/* 195404 0x801647F0 1000000C */ b	.L_80164824
/* 195405 0x801647F4 A0800001 */ sb	$zero, 0X1($a0)
.L_801647F8:
/* 195406 0x801647F8 908E0002 */ lbu	$t6, 0X2($a0)
/* 195407 0x801647FC A4800008 */ sh	$zero, 0X8($a0)
/* 195408 0x80164800 240F00FF */ li	$t7, 255
/* 195409 0x80164804 11C00003 */ beqz	$t6, .L_80164814
/* 195410 0x80164808 00000000 */ nop
/* 195411 0x8016480C 10000004 */ b	.L_80164820
/* 195412 0x80164810 A08F0007 */ sb	$t7, 0X7($a0)
.L_80164814:
/* 195413 0x80164814 10000002 */ b	.L_80164820
/* 195414 0x80164818 A0800007 */ sb	$zero, 0X7($a0)
/* 195415 0x8016481C A0800007 */ sb	$zero, 0X7($a0)
.L_80164820:
/* 195416 0x80164820 A0800001 */ sb	$zero, 0X1($a0)
.L_80164824:
/* 195417 0x80164824 03E00008 */ jr	$ra
/* 195418 0x80164828 00000000 */ nop

glabel func_8016482C
/* 195419 0x8016482C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 195420 0x80164830 AFBF0014 */ sw	$ra, 0X14($sp)
/* 195421 0x80164834 AFA40018 */ sw	$a0, 0X18($sp)
/* 195422 0x80164838 8FA40018 */ lw	$a0, 0X18($sp)
/* 195423 0x8016483C 0C02258C */ jal	bzero
/* 195424 0x80164840 2405000C */ li	$a1, 12
/* 195425 0x80164844 8FA20018 */ lw	$v0, 0X18($sp)
/* 195426 0x80164848 8FBF0014 */ lw	$ra, 0X14($sp)
/* 195427 0x8016484C 27BD0018 */ addiu	$sp, $sp, 24
/* 195428 0x80164850 03E00008 */ jr	$ra
/* 195429 0x80164854 00000000 */ nop

glabel func_80164858
/* 195430 0x80164858 AFA40000 */ sw	$a0, 0X0($sp)
/* 195431 0x8016485C 03E00008 */ jr	$ra
/* 195432 0x80164860 00000000 */ nop

glabel func_80164864
/* 195433 0x80164864 27BDFFD0 */ addiu	$sp, $sp, -48
/* 195434 0x80164868 AFBF0014 */ sw	$ra, 0X14($sp)
/* 195435 0x8016486C 00803825 */ move	$a3, $a0
/* 195436 0x80164870 90E20000 */ lbu	$v0, 0X0($a3)
/* 195437 0x80164874 24010001 */ li	$at, 1
/* 195438 0x80164878 5040005B */ beqzl	$v0, .L_801649E8
/* 195439 0x8016487C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 195440 0x80164880 10410005 */ beq	$v0, $at, .L_80164898
/* 195441 0x80164884 24010002 */ li	$at, 2
/* 195442 0x80164888 5041002F */ beql	$v0, $at, .L_80164948
/* 195443 0x8016488C 90EB0007 */ lbu	$t3, 0X7($a3)
/* 195444 0x80164890 10000055 */ b	.L_801649E8
/* 195445 0x80164894 8FBF0014 */ lw	$ra, 0X14($sp)
.L_80164898:
/* 195446 0x80164898 94EE0008 */ lhu	$t6, 0X8($a3)
/* 195447 0x8016489C 3C02801F */ lui	$v0, %hi(gSaveContext + 0x3F50)
/* 195448 0x801648A0 24180001 */ li	$t8, 1
/* 195449 0x801648A4 01C57821 */ addu	$t7, $t6, $a1
/* 195450 0x801648A8 A4EF0008 */ sh	$t7, 0X8($a3)
/* 195451 0x801648AC 904235C0 */ lbu	$v0, %lo(gSaveContext + 0x3F50)($v0)
/* 195452 0x801648B0 31E3FFFF */ andi	$v1, $t7, 0XFFFF
/* 195453 0x801648B4 240900FF */ li	$t1, 255
/* 195454 0x801648B8 0062082A */ slt	$at, $v1, $v0
/* 195455 0x801648BC 54200007 */ bnezl	$at, .L_801648DC
/* 195456 0x801648C0 44833000 */ mtc1	$v1, $f6
/* 195457 0x801648C4 A4E20008 */ sh	$v0, 0X8($a3)
/* 195458 0x801648C8 3043FFFF */ andi	$v1, $v0, 0XFFFF
/* 195459 0x801648CC 3C02801F */ lui	$v0, %hi(gSaveContext + 0x3F50)
/* 195460 0x801648D0 A0F80001 */ sb	$t8, 0X1($a3)
/* 195461 0x801648D4 904235C0 */ lbu	$v0, %lo(gSaveContext + 0x3F50)($v0)
/* 195462 0x801648D8 44833000 */ mtc1	$v1, $f6
.L_801648DC:
/* 195463 0x801648DC 3C01437F */ lui	$at, 0x437F
/* 195464 0x801648E0 44812000 */ mtc1	$at, $f4
/* 195465 0x801648E4 04610005 */ bgez	$v1, .L_801648FC
/* 195466 0x801648E8 46803220 */ cvt.s.w	$f8, $f6
/* 195467 0x801648EC 3C014F80 */ lui	$at, 0x4F80
/* 195468 0x801648F0 44815000 */ mtc1	$at, $f10
/* 195469 0x801648F4 00000000 */ nop
/* 195470 0x801648F8 460A4200 */ add.s	$f8, $f8, $f10
.L_801648FC:
/* 195471 0x801648FC 44829000 */ mtc1	$v0, $f18
/* 195472 0x80164900 46082402 */ mul.s	$f16, $f4, $f8
/* 195473 0x80164904 3C014F80 */ lui	$at, 0x4F80
/* 195474 0x80164908 04410004 */ bgez	$v0, .L_8016491C
/* 195475 0x8016490C 468091A0 */ cvt.s.w	$f6, $f18
/* 195476 0x80164910 44815000 */ mtc1	$at, $f10
/* 195477 0x80164914 00000000 */ nop
/* 195478 0x80164918 460A3180 */ add.s	$f6, $f6, $f10
.L_8016491C:
/* 195479 0x8016491C 46068103 */ div.s	$f4, $f16, $f6
/* 195480 0x80164920 90E80002 */ lbu	$t0, 0X2($a3)
/* 195481 0x80164924 4600220D */ trunc.w.s	$f8, $f4
/* 195482 0x80164928 44044000 */ mfc1	$a0, $f8
/* 195483 0x8016492C 11000003 */ beqz	$t0, .L_8016493C
/* 195484 0x80164930 01245023 */ subu	$t2, $t1, $a0
/* 195485 0x80164934 1000002B */ b	.L_801649E4
/* 195486 0x80164938 A0EA0007 */ sb	$t2, 0X7($a3)
.L_8016493C:
/* 195487 0x8016493C 10000029 */ b	.L_801649E4
/* 195488 0x80164940 A0E40007 */ sb	$a0, 0X7($a3)
/* 195489 0x80164944 90EB0007 */ lbu	$t3, 0X7($a3)
.L_80164948:
/* 195490 0x80164948 3C02801F */ lui	$v0, %hi(gStaticContext)
/* 195491 0x8016494C 8C423F60 */ lw	$v0, %lo(gStaticContext)($v0)
/* 195492 0x80164950 A7AB002A */ sh	$t3, 0X2A($sp)
/* 195493 0x80164954 84430D38 */ lh	$v1, 0XD38($v0)
/* 195494 0x80164958 50600021 */ beqzl	$v1, .L_801649E0
/* 195495 0x8016495C 87B9002A */ lh	$t9, 0X2A($sp)
/* 195496 0x80164960 0461000D */ bgez	$v1, .L_80164998
/* 195497 0x80164964 24440D38 */ addiu	$a0, $v0, 3384
/* 195498 0x80164968 27A4002A */ addiu	$a0, $sp, 42
/* 195499 0x8016496C 240500FF */ li	$a1, 255
/* 195500 0x80164970 240600FF */ li	$a2, 255
/* 195501 0x80164974 0C03FBCB */ jal	Lib_StepTowardsCheck_s
/* 195502 0x80164978 AFA70030 */ sw	$a3, 0X30($sp)
/* 195503 0x8016497C 10400017 */ beqz	$v0, .L_801649DC
/* 195504 0x80164980 8FA70030 */ lw	$a3, 0X30($sp)
/* 195505 0x80164984 3C0D801F */ lui	$t5, %hi(gStaticContext)
/* 195506 0x80164988 8DAD3F60 */ lw	$t5, %lo(gStaticContext)($t5)
/* 195507 0x8016498C 240C0096 */ li	$t4, 150
/* 195508 0x80164990 10000012 */ b	.L_801649DC
/* 195509 0x80164994 A5AC0D38 */ sh	$t4, 0XD38($t5)
.L_80164998:
/* 195510 0x80164998 24050014 */ li	$a1, 20
/* 195511 0x8016499C 2406003C */ li	$a2, 60
/* 195512 0x801649A0 0C03FBCB */ jal	Lib_StepTowardsCheck_s
/* 195513 0x801649A4 AFA70030 */ sw	$a3, 0X30($sp)
/* 195514 0x801649A8 3C0E801F */ lui	$t6, %hi(gStaticContext)
/* 195515 0x801649AC 8DCE3F60 */ lw	$t6, %lo(gStaticContext)($t6)
/* 195516 0x801649B0 27A4002A */ addiu	$a0, $sp, 42
/* 195517 0x801649B4 00002825 */ move	$a1, $zero
/* 195518 0x801649B8 0C03FBCB */ jal	Lib_StepTowardsCheck_s
/* 195519 0x801649BC 85C60D38 */ lh	$a2, 0XD38($t6)
/* 195520 0x801649C0 10400006 */ beqz	$v0, .L_801649DC
/* 195521 0x801649C4 8FA70030 */ lw	$a3, 0X30($sp)
/* 195522 0x801649C8 3C0F801F */ lui	$t7, %hi(gStaticContext)
/* 195523 0x801649CC 8DEF3F60 */ lw	$t7, %lo(gStaticContext)($t7)
/* 195524 0x801649D0 24180001 */ li	$t8, 1
/* 195525 0x801649D4 A5E00D38 */ sh	$zero, 0XD38($t7)
/* 195526 0x801649D8 A0F80001 */ sb	$t8, 0X1($a3)
.L_801649DC:
/* 195527 0x801649DC 87B9002A */ lh	$t9, 0X2A($sp)
.L_801649E0:
/* 195528 0x801649E0 A0F90007 */ sb	$t9, 0X7($a3)
.L_801649E4:
/* 195529 0x801649E4 8FBF0014 */ lw	$ra, 0X14($sp)
.L_801649E8:
/* 195530 0x801649E8 27BD0030 */ addiu	$sp, $sp, 48
/* 195531 0x801649EC 03E00008 */ jr	$ra
/* 195532 0x801649F0 00000000 */ nop

glabel func_801649F4
/* 195533 0x801649F4 908E0007 */ lbu	$t6, 0X7($a0)
/* 195534 0x801649F8 3C0F801D */ lui	$t7, %hi(D_801D0CB0)
/* 195535 0x801649FC 25EF0CB0 */ addiu	$t7, $t7, %lo(D_801D0CB0)
/* 195536 0x80164A00 11C0001D */ beqz	$t6, .L_80164A78
/* 195537 0x80164A04 3C07DE00 */ lui	$a3, 0xDE00
/* 195538 0x80164A08 8CA30000 */ lw	$v1, 0X0($a1)
/* 195539 0x80164A0C 00601025 */ move	$v0, $v1
/* 195540 0x80164A10 AC470000 */ sw	$a3, 0X0($v0)
/* 195541 0x80164A14 AC4F0004 */ sw	$t7, 0X4($v0)
/* 195542 0x80164A18 24630008 */ addiu	$v1, $v1, 8
/* 195543 0x80164A1C 00603025 */ move	$a2, $v1
/* 195544 0x80164A20 3C18FA00 */ lui	$t8, 0xFA00
/* 195545 0x80164A24 ACD80000 */ sw	$t8, 0X0($a2)
/* 195546 0x80164A28 24820004 */ addiu	$v0, $a0, 4
/* 195547 0x80164A2C 90480000 */ lbu	$t0, 0X0($v0)
/* 195548 0x80164A30 904B0001 */ lbu	$t3, 0X1($v0)
/* 195549 0x80164A34 904F0002 */ lbu	$t7, 0X2($v0)
/* 195550 0x80164A38 904A0003 */ lbu	$t2, 0X3($v0)
/* 195551 0x80164A3C 00084E00 */ sll	$t1, $t0, 24
/* 195552 0x80164A40 000B6400 */ sll	$t4, $t3, 16
/* 195553 0x80164A44 012C6825 */ or	$t5, $t1, $t4
/* 195554 0x80164A48 000FC200 */ sll	$t8, $t7, 8
/* 195555 0x80164A4C 01B8C825 */ or	$t9, $t5, $t8
/* 195556 0x80164A50 032A5825 */ or	$t3, $t9, $t2
/* 195557 0x80164A54 ACCB0004 */ sw	$t3, 0X4($a2)
/* 195558 0x80164A58 24630008 */ addiu	$v1, $v1, 8
/* 195559 0x80164A5C 00601025 */ move	$v0, $v1
/* 195560 0x80164A60 3C090E00 */ lui	$t1, 0x0E00
/* 195561 0x80164A64 252902E0 */ addiu	$t1, $t1, 736
/* 195562 0x80164A68 AC490004 */ sw	$t1, 0X4($v0)
/* 195563 0x80164A6C AC470000 */ sw	$a3, 0X0($v0)
/* 195564 0x80164A70 24630008 */ addiu	$v1, $v1, 8
/* 195565 0x80164A74 ACA30000 */ sw	$v1, 0X0($a1)
.L_80164A78:
/* 195566 0x80164A78 03E00008 */ jr	$ra
/* 195567 0x80164A7C 00000000 */ nop

glabel func_80164A80
/* 195568 0x80164A80 90820001 */ lbu	$v0, 0X1($a0)
/* 195569 0x80164A84 03E00008 */ jr	$ra
/* 195570 0x80164A88 00000000 */ nop

glabel func_80164A8C
/* 195571 0x80164A8C AC850004 */ sw	$a1, 0X4($a0)
/* 195572 0x80164A90 03E00008 */ jr	$ra
/* 195573 0x80164A94 00000000 */ nop

glabel func_80164A98
/* 195574 0x80164A98 24010001 */ li	$at, 1
/* 195575 0x80164A9C 14A10004 */ bne	$a1, $at, .L_80164AB0
/* 195576 0x80164AA0 24020001 */ li	$v0, 1
/* 195577 0x80164AA4 A0820000 */ sb	$v0, 0X0($a0)
/* 195578 0x80164AA8 03E00008 */ jr	$ra
/* 195579 0x80164AAC A0820002 */ sb	$v0, 0X2($a0)
.L_80164AB0:
/* 195580 0x80164AB0 24010002 */ li	$at, 2
/* 195581 0x80164AB4 14A10004 */ bne	$a1, $at, .L_80164AC8
/* 195582 0x80164AB8 24020001 */ li	$v0, 1
/* 195583 0x80164ABC A0820000 */ sb	$v0, 0X0($a0)
/* 195584 0x80164AC0 03E00008 */ jr	$ra
/* 195585 0x80164AC4 A0800002 */ sb	$zero, 0X2($a0)
.L_80164AC8:
/* 195586 0x80164AC8 24010003 */ li	$at, 3
/* 195587 0x80164ACC 14A10003 */ bne	$a1, $at, .L_80164ADC
/* 195588 0x80164AD0 240E0002 */ li	$t6, 2
/* 195589 0x80164AD4 03E00008 */ jr	$ra
/* 195590 0x80164AD8 A08E0000 */ sb	$t6, 0X0($a0)
.L_80164ADC:
/* 195591 0x80164ADC A0800000 */ sb	$zero, 0X0($a0)
/* 195592 0x80164AE0 03E00008 */ jr	$ra
/* 195593 0x80164AE4 00000000 */ nop
/* 195594 0x80164AE8 00000000 */ nop
/* 195595 0x80164AEC 00000000 */ nop
