.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_8019AE40
/* 251104 0x8019AE40 30C6FFFF */ andi	$a2, $a2, 0XFFFF
/* 251105 0x8019AE44 00063042 */ srl	$a2, $a2, 1
/* 251106 0x8019AE48 8C880028 */ lw	$t0, 0X28($a0)
/* 251107 0x8019AE4C 8C89002C */ lw	$t1, 0X2C($a0)
/* 251108 0x8019AE50 14E00004 */ bnez	$a3, .L_8019AE64
/* 251109 0x8019AE54 8CAA000C */ lw	$t2, 0XC($a1)
/* 251110 0x8019AE58 000A5040 */ sll	$t2, $t2, 1
/* 251111 0x8019AE5C 010A4020 */ add	$t0, $t0, $t2
/* 251112 0x8019AE60 012A4820 */ add	$t1, $t1, $t2
.L_8019AE64:
/* 251113 0x8019AE64 8CAA0004 */ lw	$t2, 0X4($a1)
/* 251114 0x8019AE68 8CAB0008 */ lw	$t3, 0X8($a1)
/* 251115 0x8019AE6C 908C0004 */ lbu	$t4, 0X4($a0)
/* 251116 0x8019AE70 00073840 */ sll	$a3, $a3, 1
/* 251117 0x8019AE74 01475020 */ add	$t2, $t2, $a3
/* 251118 0x8019AE78 01675820 */ add	$t3, $t3, $a3
/* 251119 0x8019AE7C 000C6040 */ sll	$t4, $t4, 1
.L_8019AE80:
/* 251120 0x8019AE80 854D0000 */ lh	$t5, 0X0($t2)
/* 251121 0x8019AE84 856E0000 */ lh	$t6, 0X0($t3)
/* 251122 0x8019AE88 014C5020 */ add	$t2, $t2, $t4
/* 251123 0x8019AE8C 016C5820 */ add	$t3, $t3, $t4
/* 251124 0x8019AE90 20C6FFFF */ addi	$a2, $a2, -1
/* 251125 0x8019AE94 A50D0000 */ sh	$t5, 0X0($t0)
/* 251126 0x8019AE98 21080002 */ addi	$t0, $t0, 2
/* 251127 0x8019AE9C A52E0000 */ sh	$t6, 0X0($t1)
/* 251128 0x8019AEA0 1CC0FFF7 */ bgtz	$a2, .L_8019AE80
/* 251129 0x8019AEA4 21290002 */ addi	$t1, $t1, 2
/* 251130 0x8019AEA8 03E00008 */ jr	$ra
/* 251131 0x8019AEAC 00000000 */ nop
/* 251132 0x8019AEB0 00000000 */ nop
/* 251133 0x8019AEB4 00000000 */ nop
/* 251134 0x8019AEB8 00000000 */ nop
/* 251135 0x8019AEBC 00000000 */ nop
