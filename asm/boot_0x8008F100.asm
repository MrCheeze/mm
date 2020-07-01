.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_8008F100
/* 015400 0x8008F100 00803025 */ move	$a2, $a0
/* 015401 0x8008F104 00001825 */ move	$v1, $zero
/* 015402 0x8008F108 10A00018 */ beqz	$a1, .L_8008F16C
/* 015403 0x8008F10C 00A01025 */ move	$v0, $a1
.L_8008F110:
/* 015404 0x8008F110 24040080 */ li	$a0, 128
/* 015405 0x8008F114 90C50000 */ lbu	$a1, 0X0($a2)
.L_8008F118:
/* 015406 0x8008F118 00037040 */ sll	$t6, $v1, 1
/* 015407 0x8008F11C 00A47824 */ and	$t7, $a1, $a0
/* 015408 0x8008F120 11E00008 */ beqz	$t7, .L_8008F144
/* 015409 0x8008F124 01C01825 */ move	$v1, $t6
/* 015410 0x8008F128 31D80100 */ andi	$t8, $t6, 0X100
/* 015411 0x8008F12C 13000003 */ beqz	$t8, .L_8008F13C
/* 015412 0x8008F130 00000000 */ nop
/* 015413 0x8008F134 10000007 */ b	.L_8008F154
/* 015414 0x8008F138 39C30084 */ xori	$v1, $t6, 0X84
.L_8008F13C:
/* 015415 0x8008F13C 10000005 */ b	.L_8008F154
/* 015416 0x8008F140 24630001 */ addiu	$v1, $v1, 1
.L_8008F144:
/* 015417 0x8008F144 30680100 */ andi	$t0, $v1, 0X100
/* 015418 0x8008F148 11000002 */ beqz	$t0, .L_8008F154
/* 015419 0x8008F14C 38690085 */ xori	$t1, $v1, 0X85
/* 015420 0x8008F150 01201825 */ move	$v1, $t1
.L_8008F154:
/* 015421 0x8008F154 00045042 */ srl	$t2, $a0, 1
/* 015422 0x8008F158 1540FFEF */ bnez	$t2, .L_8008F118
/* 015423 0x8008F15C 01402025 */ move	$a0, $t2
/* 015424 0x8008F160 2442FFFF */ addiu	$v0, $v0, -1
/* 015425 0x8008F164 1440FFEA */ bnez	$v0, .L_8008F110
/* 015426 0x8008F168 24C60001 */ addiu	$a2, $a2, 1
.L_8008F16C:
/* 015427 0x8008F16C 00035840 */ sll	$t3, $v1, 1
.L_8008F170:
/* 015428 0x8008F170 316C0100 */ andi	$t4, $t3, 0X100
/* 015429 0x8008F174 11800002 */ beqz	$t4, .L_8008F180
/* 015430 0x8008F178 01601825 */ move	$v1, $t3
/* 015431 0x8008F17C 39630085 */ xori	$v1, $t3, 0X85
.L_8008F180:
/* 015432 0x8008F180 24420001 */ addiu	$v0, $v0, 1
/* 015433 0x8008F184 2C410008 */ sltiu	$at, $v0, 8
/* 015434 0x8008F188 5420FFF9 */ bnezl	$at, .L_8008F170
/* 015435 0x8008F18C 00035840 */ sll	$t3, $v1, 1
/* 015436 0x8008F190 03E00008 */ jr	$ra
/* 015437 0x8008F194 306200FF */ andi	$v0, $v1, 0XFF
/* 015438 0x8008F198 00000000 */ nop
/* 015439 0x8008F19C 00000000 */ nop
