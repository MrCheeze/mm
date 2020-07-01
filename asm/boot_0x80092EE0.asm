.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80092EE0
/* 019360 0x80092EE0 27BDFF90 */ addiu	$sp, $sp, -112
/* 019361 0x80092EE4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 019362 0x80092EE8 AFB00018 */ sw	$s0, 0X18($sp)
/* 019363 0x80092EEC 00A08025 */ move	$s0, $a1
/* 019364 0x80092EF0 AFA40070 */ sw	$a0, 0X70($sp)
/* 019365 0x80092EF4 0C0226BC */ jal	__osSiGetAccess
/* 019366 0x80092EF8 AFA60078 */ sw	$a2, 0X78($sp)
/* 019367 0x80092EFC 8FA40070 */ lw	$a0, 0X70($sp)
/* 019368 0x80092F00 0C022CF0 */ jal	func_8008B3C0
/* 019369 0x80092F04 8FA50078 */ lw	$a1, 0X78($sp)
/* 019370 0x80092F08 0C0226CD */ jal	__osSiRelAccess
/* 019371 0x80092F0C AFA2006C */ sw	$v0, 0X6C($sp)
/* 019372 0x80092F10 8FA3006C */ lw	$v1, 0X6C($sp)
/* 019373 0x80092F14 8FAE0070 */ lw	$t6, 0X70($sp)
/* 019374 0x80092F18 02002025 */ move	$a0, $s0
/* 019375 0x80092F1C 50600004 */ beqzl	$v1, .L_80092F30
/* 019376 0x80092F20 AE0E0004 */ sw	$t6, 0X4($s0)
/* 019377 0x80092F24 1000006B */ b	.L_800930D4
/* 019378 0x80092F28 00601025 */ move	$v0, $v1
/* 019379 0x80092F2C AE0E0004 */ sw	$t6, 0X4($s0)
.L_80092F30:
/* 019380 0x80092F30 8FAF0078 */ lw	$t7, 0X78($sp)
/* 019381 0x80092F34 AE000000 */ sw	$zero, 0X0($s0)
/* 019382 0x80092F38 0C024C3A */ jal	func_800930E8
/* 019383 0x80092F3C AE0F0008 */ sw	$t7, 0X8($s0)
/* 019384 0x80092F40 10400003 */ beqz	$v0, .L_80092F50
/* 019385 0x80092F44 02002025 */ move	$a0, $s0
/* 019386 0x80092F48 10000063 */ b	.L_800930D8
/* 019387 0x80092F4C 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80092F50:
/* 019388 0x80092F50 0C024B00 */ jal	__osPfsSelectBank
/* 019389 0x80092F54 00002825 */ move	$a1, $zero
/* 019390 0x80092F58 10400003 */ beqz	$v0, .L_80092F68
/* 019391 0x80092F5C 24060001 */ li	$a2, 1
/* 019392 0x80092F60 1000005D */ b	.L_800930D8
/* 019393 0x80092F64 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80092F68:
/* 019394 0x80092F68 8E040004 */ lw	$a0, 0X4($s0)
/* 019395 0x80092F6C 8E050008 */ lw	$a1, 0X8($s0)
/* 019396 0x80092F70 0C024310 */ jal	__osContRamRead
/* 019397 0x80092F74 27A70048 */ addiu	$a3, $sp, 72
/* 019398 0x80092F78 10400003 */ beqz	$v0, .L_80092F88
/* 019399 0x80092F7C 27A40048 */ addiu	$a0, $sp, 72
/* 019400 0x80092F80 10000055 */ b	.L_800930D8
/* 019401 0x80092F84 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80092F88:
/* 019402 0x80092F88 27A5006A */ addiu	$a1, $sp, 106
/* 019403 0x80092F8C 0C0231ED */ jal	func_8008C7B4
/* 019404 0x80092F90 27A60068 */ addiu	$a2, $sp, 104
/* 019405 0x80092F94 97B8006A */ lhu	$t8, 0X6A($sp)
/* 019406 0x80092F98 97B90064 */ lhu	$t9, 0X64($sp)
/* 019407 0x80092F9C 27A50048 */ addiu	$a1, $sp, 72
/* 019408 0x80092FA0 AFA50044 */ sw	$a1, 0X44($sp)
/* 019409 0x80092FA4 17190004 */ bne	$t8, $t9, .L_80092FB8
/* 019410 0x80092FA8 97A90068 */ lhu	$t1, 0X68($sp)
/* 019411 0x80092FAC 97AA0066 */ lhu	$t2, 0X66($sp)
/* 019412 0x80092FB0 512A000A */ beql	$t1, $t2, .L_80092FDC
/* 019413 0x80092FB4 97AD0060 */ lhu	$t5, 0X60($sp)
.L_80092FB8:
/* 019414 0x80092FB8 0C023300 */ jal	func_8008CC00
/* 019415 0x80092FBC 02002025 */ move	$a0, $s0
/* 019416 0x80092FC0 50400006 */ beqzl	$v0, .L_80092FDC
/* 019417 0x80092FC4 97AD0060 */ lhu	$t5, 0X60($sp)
/* 019418 0x80092FC8 8E0B0000 */ lw	$t3, 0X0($s0)
/* 019419 0x80092FCC 356C0004 */ ori	$t4, $t3, 0X4
/* 019420 0x80092FD0 10000040 */ b	.L_800930D4
/* 019421 0x80092FD4 AE0C0000 */ sw	$t4, 0X0($s0)
/* 019422 0x80092FD8 97AD0060 */ lhu	$t5, 0X60($sp)
.L_80092FDC:
/* 019423 0x80092FDC 27A50048 */ addiu	$a1, $sp, 72
/* 019424 0x80092FE0 02002025 */ move	$a0, $s0
/* 019425 0x80092FE4 31AE0001 */ andi	$t6, $t5, 0X1
/* 019426 0x80092FE8 55C00016 */ bnezl	$t6, .L_80093044
/* 019427 0x80092FEC 8FA40044 */ lw	$a0, 0X44($sp)
/* 019428 0x80092FF0 0C02322C */ jal	func_8008C8B0
/* 019429 0x80092FF4 27A60020 */ addiu	$a2, $sp, 32
/* 019430 0x80092FF8 10400009 */ beqz	$v0, .L_80093020
/* 019431 0x80092FFC 00401825 */ move	$v1, $v0
/* 019432 0x80093000 2401000A */ li	$at, 10
/* 019433 0x80093004 14410004 */ bne	$v0, $at, .L_80093018
/* 019434 0x80093008 00000000 */ nop
/* 019435 0x8009300C 8E0F0000 */ lw	$t7, 0X0($s0)
/* 019436 0x80093010 35F80004 */ ori	$t8, $t7, 0X4
/* 019437 0x80093014 AE180000 */ sw	$t8, 0X0($s0)
.L_80093018:
/* 019438 0x80093018 1000002E */ b	.L_800930D4
/* 019439 0x8009301C 00601025 */ move	$v0, $v1
.L_80093020:
/* 019440 0x80093020 97A90038 */ lhu	$t1, 0X38($sp)
/* 019441 0x80093024 27B90020 */ addiu	$t9, $sp, 32
/* 019442 0x80093028 AFB90044 */ sw	$t9, 0X44($sp)
/* 019443 0x8009302C 312A0001 */ andi	$t2, $t1, 0X1
/* 019444 0x80093030 55400004 */ bnezl	$t2, .L_80093044
/* 019445 0x80093034 8FA40044 */ lw	$a0, 0X44($sp)
/* 019446 0x80093038 10000026 */ b	.L_800930D4
/* 019447 0x8009303C 2402000B */ li	$v0, 11
/* 019448 0x80093040 8FA40044 */ lw	$a0, 0X44($sp)
.L_80093044:
/* 019449 0x80093044 2605000C */ addiu	$a1, $s0, 12
/* 019450 0x80093048 0C0244B0 */ jal	_bcopy
/* 019451 0x8009304C 24060020 */ li	$a2, 32
/* 019452 0x80093050 8FAB0044 */ lw	$t3, 0X44($sp)
/* 019453 0x80093054 24190010 */ li	$t9, 16
/* 019454 0x80093058 24090008 */ li	$t1, 8
/* 019455 0x8009305C 916C001B */ lbu	$t4, 0X1B($t3)
/* 019456 0x80093060 8E040004 */ lw	$a0, 0X4($s0)
/* 019457 0x80093064 8E050008 */ lw	$a1, 0X8($s0)
/* 019458 0x80093068 AE0C004C */ sw	$t4, 0X4C($s0)
/* 019459 0x8009306C 8FAD0044 */ lw	$t5, 0X44($sp)
/* 019460 0x80093070 24060007 */ li	$a2, 7
/* 019461 0x80093074 2607002C */ addiu	$a3, $s0, 44
/* 019462 0x80093078 91AE001A */ lbu	$t6, 0X1A($t5)
/* 019463 0x8009307C AE190050 */ sw	$t9, 0X50($s0)
/* 019464 0x80093080 AE090054 */ sw	$t1, 0X54($s0)
/* 019465 0x80093084 31C200FF */ andi	$v0, $t6, 0XFF
/* 019466 0x80093088 000218C0 */ sll	$v1, $v0, 3
/* 019467 0x8009308C 00027840 */ sll	$t7, $v0, 1
/* 019468 0x80093090 24680008 */ addiu	$t0, $v1, 8
/* 019469 0x80093094 25F80003 */ addiu	$t8, $t7, 3
/* 019470 0x80093098 01035021 */ addu	$t2, $t0, $v1
/* 019471 0x8009309C AE180060 */ sw	$t8, 0X60($s0)
/* 019472 0x800930A0 AE080058 */ sw	$t0, 0X58($s0)
/* 019473 0x800930A4 AE0A005C */ sw	$t2, 0X5C($s0)
/* 019474 0x800930A8 0C024310 */ jal	__osContRamRead
/* 019475 0x800930AC A20E0064 */ sb	$t6, 0X64($s0)
/* 019476 0x800930B0 10400003 */ beqz	$v0, .L_800930C0
/* 019477 0x800930B4 00000000 */ nop
/* 019478 0x800930B8 10000007 */ b	.L_800930D8
/* 019479 0x800930BC 8FBF001C */ lw	$ra, 0X1C($sp)
.L_800930C0:
/* 019480 0x800930C0 0C024C7C */ jal	func_800931F0
/* 019481 0x800930C4 02002025 */ move	$a0, $s0
/* 019482 0x800930C8 8E0B0000 */ lw	$t3, 0X0($s0)
/* 019483 0x800930CC 356C0001 */ ori	$t4, $t3, 0X1
/* 019484 0x800930D0 AE0C0000 */ sw	$t4, 0X0($s0)
.L_800930D4:
/* 019485 0x800930D4 8FBF001C */ lw	$ra, 0X1C($sp)
.L_800930D8:
/* 019486 0x800930D8 8FB00018 */ lw	$s0, 0X18($sp)
/* 019487 0x800930DC 27BD0070 */ addiu	$sp, $sp, 112
/* 019488 0x800930E0 03E00008 */ jr	$ra
/* 019489 0x800930E4 00000000 */ nop

glabel func_800930E8
/* 019490 0x800930E8 27BDFF68 */ addiu	$sp, $sp, -152
/* 019491 0x800930EC AFBF0024 */ sw	$ra, 0X24($sp)
/* 019492 0x800930F0 AFB00020 */ sw	$s0, 0X20($sp)
/* 019493 0x800930F4 00808025 */ move	$s0, $a0
/* 019494 0x800930F8 0C024B00 */ jal	__osPfsSelectBank
/* 019495 0x800930FC 00002825 */ move	$a1, $zero
/* 019496 0x80093100 10400003 */ beqz	$v0, .L_80093110
/* 019497 0x80093104 00003025 */ move	$a2, $zero
/* 019498 0x80093108 10000034 */ b	.L_800931DC
/* 019499 0x8009310C 8FBF0024 */ lw	$ra, 0X24($sp)
.L_80093110:
/* 019500 0x80093110 8E040004 */ lw	$a0, 0X4($s0)
/* 019501 0x80093114 8E050008 */ lw	$a1, 0X8($s0)
/* 019502 0x80093118 0C024310 */ jal	__osContRamRead
/* 019503 0x8009311C 27A70030 */ addiu	$a3, $sp, 48
/* 019504 0x80093120 10400003 */ beqz	$v0, .L_80093130
/* 019505 0x80093124 27A30070 */ addiu	$v1, $sp, 112
/* 019506 0x80093128 1000002C */ b	.L_800931DC
/* 019507 0x8009312C 8FBF0024 */ lw	$ra, 0X24($sp)
.L_80093130:
/* 019508 0x80093130 00001025 */ move	$v0, $zero
/* 019509 0x80093134 24040020 */ li	$a0, 32
.L_80093138:
/* 019510 0x80093138 244E0001 */ addiu	$t6, $v0, 1
/* 019511 0x8009313C 244F0002 */ addiu	$t7, $v0, 2
/* 019512 0x80093140 24580003 */ addiu	$t8, $v0, 3
/* 019513 0x80093144 A0620000 */ sb	$v0, 0X0($v1)
/* 019514 0x80093148 24420004 */ addiu	$v0, $v0, 4
/* 019515 0x8009314C A0780003 */ sb	$t8, 0X3($v1)
/* 019516 0x80093150 A06F0002 */ sb	$t7, 0X2($v1)
/* 019517 0x80093154 A06E0001 */ sb	$t6, 0X1($v1)
/* 019518 0x80093158 1444FFF7 */ bne	$v0, $a0, .L_80093138
/* 019519 0x8009315C 24630004 */ addiu	$v1, $v1, 4
/* 019520 0x80093160 8E040004 */ lw	$a0, 0X4($s0)
/* 019521 0x80093164 8E050008 */ lw	$a1, 0X8($s0)
/* 019522 0x80093168 AFA00010 */ sw	$zero, 0X10($sp)
/* 019523 0x8009316C 00003025 */ move	$a2, $zero
/* 019524 0x80093170 0C024F68 */ jal	__osContRamWrite
/* 019525 0x80093174 27A70070 */ addiu	$a3, $sp, 112
/* 019526 0x80093178 10400003 */ beqz	$v0, .L_80093188
/* 019527 0x8009317C 00003025 */ move	$a2, $zero
/* 019528 0x80093180 10000016 */ b	.L_800931DC
/* 019529 0x80093184 8FBF0024 */ lw	$ra, 0X24($sp)
.L_80093188:
/* 019530 0x80093188 8E040004 */ lw	$a0, 0X4($s0)
/* 019531 0x8009318C 8E050008 */ lw	$a1, 0X8($s0)
/* 019532 0x80093190 0C024310 */ jal	__osContRamRead
/* 019533 0x80093194 27A70050 */ addiu	$a3, $sp, 80
/* 019534 0x80093198 10400003 */ beqz	$v0, .L_800931A8
/* 019535 0x8009319C 27A40070 */ addiu	$a0, $sp, 112
/* 019536 0x800931A0 1000000E */ b	.L_800931DC
/* 019537 0x800931A4 8FBF0024 */ lw	$ra, 0X24($sp)
.L_800931A8:
/* 019538 0x800931A8 27A50050 */ addiu	$a1, $sp, 80
/* 019539 0x800931AC 0C0240C0 */ jal	memcmp
/* 019540 0x800931B0 24060020 */ li	$a2, 32
/* 019541 0x800931B4 10400003 */ beqz	$v0, .L_800931C4
/* 019542 0x800931B8 00003025 */ move	$a2, $zero
/* 019543 0x800931BC 10000006 */ b	.L_800931D8
/* 019544 0x800931C0 2402000B */ li	$v0, 11
.L_800931C4:
/* 019545 0x800931C4 8E040004 */ lw	$a0, 0X4($s0)
/* 019546 0x800931C8 8E050008 */ lw	$a1, 0X8($s0)
/* 019547 0x800931CC AFA00010 */ sw	$zero, 0X10($sp)
/* 019548 0x800931D0 0C024F68 */ jal	__osContRamWrite
/* 019549 0x800931D4 27A70030 */ addiu	$a3, $sp, 48
.L_800931D8:
/* 019550 0x800931D8 8FBF0024 */ lw	$ra, 0X24($sp)
.L_800931DC:
/* 019551 0x800931DC 8FB00020 */ lw	$s0, 0X20($sp)
/* 019552 0x800931E0 27BD0098 */ addiu	$sp, $sp, 152
/* 019553 0x800931E4 03E00008 */ jr	$ra
/* 019554 0x800931E8 00000000 */ nop
/* 019555 0x800931EC 00000000 */ nop
