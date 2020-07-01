.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel osWritebackDCache
/* 010592 0x8008A5E0 18A00011 */ blez	$a1, .L_8008A628
/* 010593 0x8008A5E4 00000000 */ nop
/* 010594 0x8008A5E8 240B2000 */ li	$t3, 8192
/* 010595 0x8008A5EC 00AB082B */ sltu	$at, $a1, $t3
/* 010596 0x8008A5F0 1020000F */ beqz	$at, .L_8008A630
/* 010597 0x8008A5F4 00000000 */ nop
/* 010598 0x8008A5F8 00804025 */ move	$t0, $a0
/* 010599 0x8008A5FC 00854821 */ addu	$t1, $a0, $a1
/* 010600 0x8008A600 0109082B */ sltu	$at, $t0, $t1
/* 010601 0x8008A604 10200008 */ beqz	$at, .L_8008A628
/* 010602 0x8008A608 00000000 */ nop
/* 010603 0x8008A60C 310A000F */ andi	$t2, $t0, 0XF
/* 010604 0x8008A610 2529FFF0 */ addiu	$t1, $t1, -16
/* 010605 0x8008A614 010A4023 */ subu	$t0, $t0, $t2
.L_8008A618:
/* 010606 0x8008A618 BD190000 */ cache	0x19, 0X0($t0)
/* 010607 0x8008A61C 0109082B */ sltu	$at, $t0, $t1
/* 010608 0x8008A620 1420FFFD */ bnez	$at, .L_8008A618
/* 010609 0x8008A624 25080010 */ addiu	$t0, $t0, 16
.L_8008A628:
/* 010610 0x8008A628 03E00008 */ jr	$ra
/* 010611 0x8008A62C 00000000 */ nop
.L_8008A630:
/* 010612 0x8008A630 3C088000 */ lui	$t0, 0x8000
/* 010613 0x8008A634 010B4821 */ addu	$t1, $t0, $t3
/* 010614 0x8008A638 2529FFF0 */ addiu	$t1, $t1, -16
.L_8008A63C:
/* 010615 0x8008A63C BD010000 */ cache	0x01, 0X0($t0)
/* 010616 0x8008A640 0109082B */ sltu	$at, $t0, $t1
/* 010617 0x8008A644 1420FFFD */ bnez	$at, .L_8008A63C
/* 010618 0x8008A648 25080010 */ addiu	$t0, $t0, 16
/* 010619 0x8008A64C 03E00008 */ jr	$ra
/* 010620 0x8008A650 00000000 */ nop
/* 010621 0x8008A654 00000000 */ nop
/* 010622 0x8008A658 00000000 */ nop
/* 010623 0x8008A65C 00000000 */ nop
