.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80093FF0
/* 020452 0x80093FF0 3C03A460 */ lui	$v1, 0xA460
/* 020453 0x80093FF4 34630010 */ ori	$v1, $v1, 0X10
/* 020454 0x80093FF8 8C620000 */ lw	$v0, 0X0($v1)
/* 020455 0x80093FFC 00A03825 */ move	$a3, $a1
/* 020456 0x80094000 304E0003 */ andi	$t6, $v0, 0X3
/* 020457 0x80094004 51C00006 */ beqzl	$t6, .L_80094020
/* 020458 0x80094008 90820009 */ lbu	$v0, 0X9($a0)
/* 020459 0x8009400C 8C620000 */ lw	$v0, 0X0($v1)
.L_80094010:
/* 020460 0x80094010 304F0003 */ andi	$t7, $v0, 0X3
/* 020461 0x80094014 55E0FFFE */ bnezl	$t7, .L_80094010
/* 020462 0x80094018 8C620000 */ lw	$v0, 0X0($v1)
/* 020463 0x8009401C 90820009 */ lbu	$v0, 0X9($a0)
.L_80094020:
/* 020464 0x80094020 3C038009 */ lui	$v1, %hi(D_80097E90)
/* 020465 0x80094024 90990004 */ lbu	$t9, 0X4($a0)
/* 020466 0x80094028 0002C080 */ sll	$t8, $v0, 2
/* 020467 0x8009402C 00781821 */ addu	$v1, $v1, $t8
/* 020468 0x80094030 8C637E90 */ lw	$v1, %lo(D_80097E90)($v1)
/* 020469 0x80094034 90680004 */ lbu	$t0, 0X4($v1)
/* 020470 0x80094038 5328003D */ beql	$t9, $t0, .L_80094130
/* 020471 0x8009403C 8C8A000C */ lw	$t2, 0XC($a0)
/* 020472 0x80094040 14400019 */ bnez	$v0, .L_800940A8
/* 020473 0x80094044 00602825 */ move	$a1, $v1
/* 020474 0x80094048 90820005 */ lbu	$v0, 0X5($a0)
/* 020475 0x8009404C 90690005 */ lbu	$t1, 0X5($v1)
/* 020476 0x80094050 3C0AA460 */ lui	$t2, 0xA460
/* 020477 0x80094054 3C0CA460 */ lui	$t4, 0xA460
/* 020478 0x80094058 10490002 */ beq	$v0, $t1, .L_80094064
/* 020479 0x8009405C 3C0EA460 */ lui	$t6, 0xA460
/* 020480 0x80094060 AD420014 */ sw	$v0, 0X14($t2)
.L_80094064:
/* 020481 0x80094064 90820006 */ lbu	$v0, 0X6($a0)
/* 020482 0x80094068 90AB0006 */ lbu	$t3, 0X6($a1)
/* 020483 0x8009406C 3C18A460 */ lui	$t8, 0xA460
/* 020484 0x80094070 504B0003 */ beql	$v0, $t3, .L_80094080
/* 020485 0x80094074 90820007 */ lbu	$v0, 0X7($a0)
/* 020486 0x80094078 AD82001C */ sw	$v0, 0X1C($t4)
/* 020487 0x8009407C 90820007 */ lbu	$v0, 0X7($a0)
.L_80094080:
/* 020488 0x80094080 90AD0007 */ lbu	$t5, 0X7($a1)
/* 020489 0x80094084 504D0003 */ beql	$v0, $t5, .L_80094094
/* 020490 0x80094088 90820008 */ lbu	$v0, 0X8($a0)
/* 020491 0x8009408C ADC20020 */ sw	$v0, 0X20($t6)
/* 020492 0x80094090 90820008 */ lbu	$v0, 0X8($a0)
.L_80094094:
/* 020493 0x80094094 90AF0008 */ lbu	$t7, 0X8($a1)
/* 020494 0x80094098 504F001B */ beql	$v0, $t7, .L_80094108
/* 020495 0x8009409C 908F0004 */ lbu	$t7, 0X4($a0)
/* 020496 0x800940A0 10000018 */ b	.L_80094104
/* 020497 0x800940A4 AF020018 */ sw	$v0, 0X18($t8)
.L_800940A8:
/* 020498 0x800940A8 90820005 */ lbu	$v0, 0X5($a0)
/* 020499 0x800940AC 90B90005 */ lbu	$t9, 0X5($a1)
/* 020500 0x800940B0 3C08A460 */ lui	$t0, 0xA460
/* 020501 0x800940B4 3C0AA460 */ lui	$t2, 0xA460
/* 020502 0x800940B8 10590002 */ beq	$v0, $t9, .L_800940C4
/* 020503 0x800940BC 3C0CA460 */ lui	$t4, 0xA460
/* 020504 0x800940C0 AD020024 */ sw	$v0, 0X24($t0)
.L_800940C4:
/* 020505 0x800940C4 90820006 */ lbu	$v0, 0X6($a0)
/* 020506 0x800940C8 90A90006 */ lbu	$t1, 0X6($a1)
/* 020507 0x800940CC 3C0EA460 */ lui	$t6, 0xA460
/* 020508 0x800940D0 50490003 */ beql	$v0, $t1, .L_800940E0
/* 020509 0x800940D4 90820007 */ lbu	$v0, 0X7($a0)
/* 020510 0x800940D8 AD42002C */ sw	$v0, 0X2C($t2)
/* 020511 0x800940DC 90820007 */ lbu	$v0, 0X7($a0)
.L_800940E0:
/* 020512 0x800940E0 90AB0007 */ lbu	$t3, 0X7($a1)
/* 020513 0x800940E4 504B0003 */ beql	$v0, $t3, .L_800940F4
/* 020514 0x800940E8 90820008 */ lbu	$v0, 0X8($a0)
/* 020515 0x800940EC AD820030 */ sw	$v0, 0X30($t4)
/* 020516 0x800940F0 90820008 */ lbu	$v0, 0X8($a0)
.L_800940F4:
/* 020517 0x800940F4 90AD0008 */ lbu	$t5, 0X8($a1)
/* 020518 0x800940F8 504D0003 */ beql	$v0, $t5, .L_80094108
/* 020519 0x800940FC 908F0004 */ lbu	$t7, 0X4($a0)
/* 020520 0x80094100 ADC20028 */ sw	$v0, 0X28($t6)
.L_80094104:
/* 020521 0x80094104 908F0004 */ lbu	$t7, 0X4($a0)
.L_80094108:
/* 020522 0x80094108 A0AF0004 */ sb	$t7, 0X4($a1)
/* 020523 0x8009410C 90980005 */ lbu	$t8, 0X5($a0)
/* 020524 0x80094110 A0B80005 */ sb	$t8, 0X5($a1)
/* 020525 0x80094114 90990006 */ lbu	$t9, 0X6($a0)
/* 020526 0x80094118 A0B90006 */ sb	$t9, 0X6($a1)
/* 020527 0x8009411C 90880007 */ lbu	$t0, 0X7($a0)
/* 020528 0x80094120 A0A80007 */ sb	$t0, 0X7($a1)
/* 020529 0x80094124 90890008 */ lbu	$t1, 0X8($a0)
/* 020530 0x80094128 A0A90008 */ sb	$t1, 0X8($a1)
/* 020531 0x8009412C 8C8A000C */ lw	$t2, 0XC($a0)
.L_80094130:
/* 020532 0x80094130 3C01A000 */ lui	$at, 0xA000
/* 020533 0x80094134 00001025 */ move	$v0, $zero
/* 020534 0x80094138 01475825 */ or	$t3, $t2, $a3
/* 020535 0x8009413C 01616025 */ or	$t4, $t3, $at
/* 020536 0x80094140 03E00008 */ jr	$ra
/* 020537 0x80094144 AD860000 */ sw	$a2, 0X0($t4)
/* 020538 0x80094148 00000000 */ nop
/* 020539 0x8009414C 00000000 */ nop
