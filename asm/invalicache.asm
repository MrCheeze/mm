.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel osInvalICache
/* 015492 0x8008F270 18A00011 */ blez	$a1, .L_8008F2B8
/* 015493 0x8008F274 00000000 */ nop
/* 015494 0x8008F278 240B4000 */ li	$t3, 16384
/* 015495 0x8008F27C 00AB082B */ sltu	$at, $a1, $t3
/* 015496 0x8008F280 1020000F */ beqz	$at, .L_8008F2C0
/* 015497 0x8008F284 00000000 */ nop
/* 015498 0x8008F288 00804025 */ move	$t0, $a0
/* 015499 0x8008F28C 00854821 */ addu	$t1, $a0, $a1
/* 015500 0x8008F290 0109082B */ sltu	$at, $t0, $t1
/* 015501 0x8008F294 10200008 */ beqz	$at, .L_8008F2B8
/* 015502 0x8008F298 00000000 */ nop
/* 015503 0x8008F29C 310A001F */ andi	$t2, $t0, 0X1F
/* 015504 0x8008F2A0 2529FFE0 */ addiu	$t1, $t1, -32
/* 015505 0x8008F2A4 010A4023 */ subu	$t0, $t0, $t2
.L_8008F2A8:
/* 015506 0x8008F2A8 BD100000 */ cache	0x10, 0X0($t0)
/* 015507 0x8008F2AC 0109082B */ sltu	$at, $t0, $t1
/* 015508 0x8008F2B0 1420FFFD */ bnez	$at, .L_8008F2A8
/* 015509 0x8008F2B4 25080020 */ addiu	$t0, $t0, 32
.L_8008F2B8:
/* 015510 0x8008F2B8 03E00008 */ jr	$ra
/* 015511 0x8008F2BC 00000000 */ nop
.L_8008F2C0:
/* 015512 0x8008F2C0 3C088000 */ lui	$t0, 0x8000
/* 015513 0x8008F2C4 010B4821 */ addu	$t1, $t0, $t3
/* 015514 0x8008F2C8 2529FFE0 */ addiu	$t1, $t1, -32
.L_8008F2CC:
/* 015515 0x8008F2CC BD000000 */ cache	0x00, 0X0($t0)
/* 015516 0x8008F2D0 0109082B */ sltu	$at, $t0, $t1
/* 015517 0x8008F2D4 1420FFFD */ bnez	$at, .L_8008F2CC
/* 015518 0x8008F2D8 25080020 */ addiu	$t0, $t0, 32
/* 015519 0x8008F2DC 03E00008 */ jr	$ra
/* 015520 0x8008F2E0 00000000 */ nop
/* 015521 0x8008F2E4 00000000 */ nop
/* 015522 0x8008F2E8 00000000 */ nop
/* 015523 0x8008F2EC 00000000 */ nop
