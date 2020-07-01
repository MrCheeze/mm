.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80095C70
/* 022276 0x80095C70 27BDFFF0 */ addiu	$sp, $sp, -16
/* 022277 0x80095C74 AFA0000C */ sw	$zero, 0XC($sp)
/* 022278 0x80095C78 908E0000 */ lbu	$t6, 0X0($a0)
/* 022279 0x80095C7C 00003025 */ move	$a2, $zero
/* 022280 0x80095C80 00002825 */ move	$a1, $zero
/* 022281 0x80095C84 11C001AA */ beqz	$t6, .L_80096330
/* 022282 0x80095C88 00805825 */ move	$t3, $a0
/* 022283 0x80095C8C 90820000 */ lbu	$v0, 0X0($a0)
/* 022284 0x80095C90 34048394 */ ori	$a0, $zero, 0X8394
/* 022285 0x80095C94 340D82A4 */ ori	$t5, $zero, 0X82A4
/* 022286 0x80095C98 340C815B */ ori	$t4, $zero, 0X815B
/* 022287 0x80095C9C 340A8374 */ ori	$t2, $zero, 0X8374
/* 022288 0x80095CA0 340982D3 */ ori	$t1, $zero, 0X82D3
/* 022289 0x80095CA4 34088393 */ ori	$t0, $zero, 0X8393
/* 022290 0x80095CA8 340782F1 */ ori	$a3, $zero, 0X82F1
/* 022291 0x80095CAC 916F0001 */ lbu	$t7, 0X1($t3)
.L_80095CB0:
/* 022292 0x80095CB0 0002C200 */ sll	$t8, $v0, 8
/* 022293 0x80095CB4 3401829F */ ori	$at, $zero, 0X829F
/* 022294 0x80095CB8 01F8C821 */ addu	$t9, $t7, $t8
/* 022295 0x80095CBC 3323FFFF */ andi	$v1, $t9, 0XFFFF
/* 022296 0x80095CC0 11830003 */ beq	$t4, $v1, .L_80095CD0
/* 022297 0x80095CC4 A7B90006 */ sh	$t9, 0X6($sp)
/* 022298 0x80095CC8 0061082A */ slt	$at, $v1, $at
/* 022299 0x80095CCC 1420000C */ bnez	$at, .L_80095D00
.L_80095CD0:
/* 022300 0x80095CD0 340182F2 */ ori	$at, $zero, 0X82F2
/* 022301 0x80095CD4 0061082A */ slt	$at, $v1, $at
/* 022302 0x80095CD8 14200003 */ bnez	$at, .L_80095CE8
/* 022303 0x80095CDC 34018340 */ ori	$at, $zero, 0X8340
/* 022304 0x80095CE0 0061082A */ slt	$at, $v1, $at
/* 022305 0x80095CE4 14200006 */ bnez	$at, .L_80095D00
.L_80095CE8:
/* 022306 0x80095CE8 3401837F */ ori	$at, $zero, 0X837F
/* 022307 0x80095CEC 10610004 */ beq	$v1, $at, .L_80095D00
/* 022308 0x80095CF0 34018397 */ ori	$at, $zero, 0X8397
/* 022309 0x80095CF4 0061082A */ slt	$at, $v1, $at
/* 022310 0x80095CF8 14200003 */ bnez	$at, .L_80095D08
/* 022311 0x80095CFC 8FAE000C */ lw	$t6, 0XC($sp)
.L_80095D00:
/* 022312 0x80095D00 10000180 */ b	.L_80096304
/* 022313 0x80095D04 2406000E */ li	$a2, 14
.L_80095D08:
/* 022314 0x80095D08 55C00016 */ bnezl	$t6, .L_80095D64
/* 022315 0x80095D0C 3401829F */ ori	$at, $zero, 0X829F
/* 022316 0x80095D10 11830011 */ beq	$t4, $v1, .L_80095D58
/* 022317 0x80095D14 00000000 */ nop
/* 022318 0x80095D18 10E3000F */ beq	$a3, $v1, .L_80095D58
/* 022319 0x80095D1C 340182C1 */ ori	$at, $zero, 0X82C1
/* 022320 0x80095D20 1061000D */ beq	$v1, $at, .L_80095D58
/* 022321 0x80095D24 340182EC */ ori	$at, $zero, 0X82EC
/* 022322 0x80095D28 1061000B */ beq	$v1, $at, .L_80095D58
/* 022323 0x80095D2C 00000000 */ nop
/* 022324 0x80095D30 11030009 */ beq	$t0, $v1, .L_80095D58
/* 022325 0x80095D34 34018362 */ ori	$at, $zero, 0X8362
/* 022326 0x80095D38 10610007 */ beq	$v1, $at, .L_80095D58
/* 022327 0x80095D3C 3401838E */ ori	$at, $zero, 0X838E
/* 022328 0x80095D40 10610005 */ beq	$v1, $at, .L_80095D58
/* 022329 0x80095D44 34018395 */ ori	$at, $zero, 0X8395
/* 022330 0x80095D48 10610003 */ beq	$v1, $at, .L_80095D58
/* 022331 0x80095D4C 34018396 */ ori	$at, $zero, 0X8396
/* 022332 0x80095D50 54610004 */ bnel	$v1, $at, .L_80095D64
/* 022333 0x80095D54 3401829F */ ori	$at, $zero, 0X829F
.L_80095D58:
/* 022334 0x80095D58 1000016A */ b	.L_80096304
/* 022335 0x80095D5C 2406000E */ li	$a2, 14
/* 022336 0x80095D60 3401829F */ ori	$at, $zero, 0X829F
.L_80095D64:
/* 022337 0x80095D64 10610003 */ beq	$v1, $at, .L_80095D74
/* 022338 0x80095D68 34018340 */ ori	$at, $zero, 0X8340
/* 022339 0x80095D6C 5461000A */ bnel	$v1, $at, .L_80095D98
/* 022340 0x80095D70 340182A1 */ ori	$at, $zero, 0X82A1
.L_80095D74:
/* 022341 0x80095D74 11250007 */ beq	$t1, $a1, .L_80095D94
/* 022342 0x80095D78 00A01025 */ move	$v0, $a1
/* 022343 0x80095D7C 51420006 */ beql	$t2, $v0, .L_80095D98
/* 022344 0x80095D80 340182A1 */ ori	$at, $zero, 0X82A1
/* 022345 0x80095D84 50820004 */ beql	$a0, $v0, .L_80095D98
/* 022346 0x80095D88 340182A1 */ ori	$at, $zero, 0X82A1
/* 022347 0x80095D8C 1000015D */ b	.L_80096304
/* 022348 0x80095D90 2406000E */ li	$a2, 14
.L_80095D94:
/* 022349 0x80095D94 340182A1 */ ori	$at, $zero, 0X82A1
.L_80095D98:
/* 022350 0x80095D98 10610004 */ beq	$v1, $at, .L_80095DAC
/* 022351 0x80095D9C 00A01025 */ move	$v0, $a1
/* 022352 0x80095DA0 34018342 */ ori	$at, $zero, 0X8342
/* 022353 0x80095DA4 54610016 */ bnel	$v1, $at, .L_80095E00
/* 022354 0x80095DA8 340182A3 */ ori	$at, $zero, 0X82A3
.L_80095DAC:
/* 022355 0x80095DAC 11A20013 */ beq	$t5, $v0, .L_80095DFC
/* 022356 0x80095DB0 340182C4 */ ori	$at, $zero, 0X82C4
/* 022357 0x80095DB4 10410011 */ beq	$v0, $at, .L_80095DFC
/* 022358 0x80095DB8 340182C5 */ ori	$at, $zero, 0X82C5
/* 022359 0x80095DBC 50410010 */ beql	$v0, $at, .L_80095E00
/* 022360 0x80095DC0 340182A3 */ ori	$at, $zero, 0X82A3
/* 022361 0x80095DC4 1122000D */ beq	$t1, $v0, .L_80095DFC
/* 022362 0x80095DC8 34018345 */ ori	$at, $zero, 0X8345
/* 022363 0x80095DCC 1041000B */ beq	$v0, $at, .L_80095DFC
/* 022364 0x80095DD0 34018365 */ ori	$at, $zero, 0X8365
/* 022365 0x80095DD4 10410009 */ beq	$v0, $at, .L_80095DFC
/* 022366 0x80095DD8 34018366 */ ori	$at, $zero, 0X8366
/* 022367 0x80095DDC 50410008 */ beql	$v0, $at, .L_80095E00
/* 022368 0x80095DE0 340182A3 */ ori	$at, $zero, 0X82A3
/* 022369 0x80095DE4 51420006 */ beql	$t2, $v0, .L_80095E00
/* 022370 0x80095DE8 340182A3 */ ori	$at, $zero, 0X82A3
/* 022371 0x80095DEC 50820004 */ beql	$a0, $v0, .L_80095E00
/* 022372 0x80095DF0 340182A3 */ ori	$at, $zero, 0X82A3
/* 022373 0x80095DF4 10000143 */ b	.L_80096304
/* 022374 0x80095DF8 2406000E */ li	$a2, 14
.L_80095DFC:
/* 022375 0x80095DFC 340182A3 */ ori	$at, $zero, 0X82A3
.L_80095E00:
/* 022376 0x80095E00 10610002 */ beq	$v1, $at, .L_80095E0C
/* 022377 0x80095E04 34018344 */ ori	$at, $zero, 0X8344
/* 022378 0x80095E08 14610011 */ bne	$v1, $at, .L_80095E50
.L_80095E0C:
/* 022379 0x80095E0C 340182C6 */ ori	$at, $zero, 0X82C6
/* 022380 0x80095E10 1041000F */ beq	$v0, $at, .L_80095E50
/* 022381 0x80095E14 340182C7 */ ori	$at, $zero, 0X82C7
/* 022382 0x80095E18 5041000E */ beql	$v0, $at, .L_80095E54
/* 022383 0x80095E1C 340182A5 */ ori	$at, $zero, 0X82A5
/* 022384 0x80095E20 1122000B */ beq	$t1, $v0, .L_80095E50
/* 022385 0x80095E24 34018367 */ ori	$at, $zero, 0X8367
/* 022386 0x80095E28 10410009 */ beq	$v0, $at, .L_80095E50
/* 022387 0x80095E2C 34018368 */ ori	$at, $zero, 0X8368
/* 022388 0x80095E30 50410008 */ beql	$v0, $at, .L_80095E54
/* 022389 0x80095E34 340182A5 */ ori	$at, $zero, 0X82A5
/* 022390 0x80095E38 51420006 */ beql	$t2, $v0, .L_80095E54
/* 022391 0x80095E3C 340182A5 */ ori	$at, $zero, 0X82A5
/* 022392 0x80095E40 50820004 */ beql	$a0, $v0, .L_80095E54
/* 022393 0x80095E44 340182A5 */ ori	$at, $zero, 0X82A5
/* 022394 0x80095E48 1000012E */ b	.L_80096304
/* 022395 0x80095E4C 2406000E */ li	$a2, 14
.L_80095E50:
/* 022396 0x80095E50 340182A5 */ ori	$at, $zero, 0X82A5
.L_80095E54:
/* 022397 0x80095E54 10610003 */ beq	$v1, $at, .L_80095E64
/* 022398 0x80095E58 34018346 */ ori	$at, $zero, 0X8346
/* 022399 0x80095E5C 54610022 */ bnel	$v1, $at, .L_80095EE8
/* 022400 0x80095E60 340182A7 */ ori	$at, $zero, 0X82A7
.L_80095E64:
/* 022401 0x80095E64 11A2001F */ beq	$t5, $v0, .L_80095EE4
/* 022402 0x80095E68 340182B5 */ ori	$at, $zero, 0X82B5
/* 022403 0x80095E6C 1041001D */ beq	$v0, $at, .L_80095EE4
/* 022404 0x80095E70 340182B6 */ ori	$at, $zero, 0X82B6
/* 022405 0x80095E74 1041001B */ beq	$v0, $at, .L_80095EE4
/* 022406 0x80095E78 340182BF */ ori	$at, $zero, 0X82BF
/* 022407 0x80095E7C 10410019 */ beq	$v0, $at, .L_80095EE4
/* 022408 0x80095E80 340182C0 */ ori	$at, $zero, 0X82C0
/* 022409 0x80095E84 10410017 */ beq	$v0, $at, .L_80095EE4
/* 022410 0x80095E88 340182C2 */ ori	$at, $zero, 0X82C2
/* 022411 0x80095E8C 50410016 */ beql	$v0, $at, .L_80095EE8
/* 022412 0x80095E90 340182A7 */ ori	$at, $zero, 0X82A7
/* 022413 0x80095E94 11220013 */ beq	$t1, $v0, .L_80095EE4
/* 022414 0x80095E98 34018345 */ ori	$at, $zero, 0X8345
/* 022415 0x80095E9C 10410011 */ beq	$v0, $at, .L_80095EE4
/* 022416 0x80095EA0 34018356 */ ori	$at, $zero, 0X8356
/* 022417 0x80095EA4 1041000F */ beq	$v0, $at, .L_80095EE4
/* 022418 0x80095EA8 34018357 */ ori	$at, $zero, 0X8357
/* 022419 0x80095EAC 1041000D */ beq	$v0, $at, .L_80095EE4
/* 022420 0x80095EB0 34018360 */ ori	$at, $zero, 0X8360
/* 022421 0x80095EB4 1041000B */ beq	$v0, $at, .L_80095EE4
/* 022422 0x80095EB8 34018361 */ ori	$at, $zero, 0X8361
/* 022423 0x80095EBC 10410009 */ beq	$v0, $at, .L_80095EE4
/* 022424 0x80095EC0 34018363 */ ori	$at, $zero, 0X8363
/* 022425 0x80095EC4 50410008 */ beql	$v0, $at, .L_80095EE8
/* 022426 0x80095EC8 340182A7 */ ori	$at, $zero, 0X82A7
/* 022427 0x80095ECC 51420006 */ beql	$t2, $v0, .L_80095EE8
/* 022428 0x80095ED0 340182A7 */ ori	$at, $zero, 0X82A7
/* 022429 0x80095ED4 50820004 */ beql	$a0, $v0, .L_80095EE8
/* 022430 0x80095ED8 340182A7 */ ori	$at, $zero, 0X82A7
/* 022431 0x80095EDC 10000109 */ b	.L_80096304
/* 022432 0x80095EE0 2406000E */ li	$a2, 14
.L_80095EE4:
/* 022433 0x80095EE4 340182A7 */ ori	$at, $zero, 0X82A7
.L_80095EE8:
/* 022434 0x80095EE8 10610003 */ beq	$v1, $at, .L_80095EF8
/* 022435 0x80095EEC 34018348 */ ori	$at, $zero, 0X8348
/* 022436 0x80095EF0 5461000E */ bnel	$v1, $at, .L_80095F2C
/* 022437 0x80095EF4 340182E1 */ ori	$at, $zero, 0X82E1
.L_80095EF8:
/* 022438 0x80095EF8 51A2000C */ beql	$t5, $v0, .L_80095F2C
/* 022439 0x80095EFC 340182E1 */ ori	$at, $zero, 0X82E1
/* 022440 0x80095F00 11220009 */ beq	$t1, $v0, .L_80095F28
/* 022441 0x80095F04 34018345 */ ori	$at, $zero, 0X8345
/* 022442 0x80095F08 50410008 */ beql	$v0, $at, .L_80095F2C
/* 022443 0x80095F0C 340182E1 */ ori	$at, $zero, 0X82E1
/* 022444 0x80095F10 51420006 */ beql	$t2, $v0, .L_80095F2C
/* 022445 0x80095F14 340182E1 */ ori	$at, $zero, 0X82E1
/* 022446 0x80095F18 50820004 */ beql	$a0, $v0, .L_80095F2C
/* 022447 0x80095F1C 340182E1 */ ori	$at, $zero, 0X82E1
/* 022448 0x80095F20 100000F8 */ b	.L_80096304
/* 022449 0x80095F24 2406000E */ li	$a2, 14
.L_80095F28:
/* 022450 0x80095F28 340182E1 */ ori	$at, $zero, 0X82E1
.L_80095F2C:
/* 022451 0x80095F2C 1061000A */ beq	$v1, $at, .L_80095F58
/* 022452 0x80095F30 340182E3 */ ori	$at, $zero, 0X82E3
/* 022453 0x80095F34 10610008 */ beq	$v1, $at, .L_80095F58
/* 022454 0x80095F38 340182E5 */ ori	$at, $zero, 0X82E5
/* 022455 0x80095F3C 10610006 */ beq	$v1, $at, .L_80095F58
/* 022456 0x80095F40 34018383 */ ori	$at, $zero, 0X8383
/* 022457 0x80095F44 10610004 */ beq	$v1, $at, .L_80095F58
/* 022458 0x80095F48 34018385 */ ori	$at, $zero, 0X8385
/* 022459 0x80095F4C 10610002 */ beq	$v1, $at, .L_80095F58
/* 022460 0x80095F50 34018387 */ ori	$at, $zero, 0X8387
/* 022461 0x80095F54 14610035 */ bne	$v1, $at, .L_8009602C
.L_80095F58:
/* 022462 0x80095F58 340182AB */ ori	$at, $zero, 0X82AB
/* 022463 0x80095F5C 10410033 */ beq	$v0, $at, .L_8009602C
/* 022464 0x80095F60 340182B5 */ ori	$at, $zero, 0X82B5
/* 022465 0x80095F64 10410031 */ beq	$v0, $at, .L_8009602C
/* 022466 0x80095F68 340182BF */ ori	$at, $zero, 0X82BF
/* 022467 0x80095F6C 1041002F */ beq	$v0, $at, .L_8009602C
/* 022468 0x80095F70 340182C9 */ ori	$at, $zero, 0X82C9
/* 022469 0x80095F74 1041002D */ beq	$v0, $at, .L_8009602C
/* 022470 0x80095F78 340182D0 */ ori	$at, $zero, 0X82D0
/* 022471 0x80095F7C 1041002B */ beq	$v0, $at, .L_8009602C
/* 022472 0x80095F80 340182DD */ ori	$at, $zero, 0X82DD
/* 022473 0x80095F84 10410029 */ beq	$v0, $at, .L_8009602C
/* 022474 0x80095F88 340182E8 */ ori	$at, $zero, 0X82E8
/* 022475 0x80095F8C 10410027 */ beq	$v0, $at, .L_8009602C
/* 022476 0x80095F90 340182AC */ ori	$at, $zero, 0X82AC
/* 022477 0x80095F94 10410025 */ beq	$v0, $at, .L_8009602C
/* 022478 0x80095F98 340182B6 */ ori	$at, $zero, 0X82B6
/* 022479 0x80095F9C 10410023 */ beq	$v0, $at, .L_8009602C
/* 022480 0x80095FA0 340182C0 */ ori	$at, $zero, 0X82C0
/* 022481 0x80095FA4 10410021 */ beq	$v0, $at, .L_8009602C
/* 022482 0x80095FA8 340182D1 */ ori	$at, $zero, 0X82D1
/* 022483 0x80095FAC 1041001F */ beq	$v0, $at, .L_8009602C
/* 022484 0x80095FB0 340182D2 */ ori	$at, $zero, 0X82D2
/* 022485 0x80095FB4 1041001D */ beq	$v0, $at, .L_8009602C
/* 022486 0x80095FB8 3401834C */ ori	$at, $zero, 0X834C
/* 022487 0x80095FBC 1041001B */ beq	$v0, $at, .L_8009602C
/* 022488 0x80095FC0 34018356 */ ori	$at, $zero, 0X8356
/* 022489 0x80095FC4 10410019 */ beq	$v0, $at, .L_8009602C
/* 022490 0x80095FC8 34018360 */ ori	$at, $zero, 0X8360
/* 022491 0x80095FCC 10410017 */ beq	$v0, $at, .L_8009602C
/* 022492 0x80095FD0 3401836A */ ori	$at, $zero, 0X836A
/* 022493 0x80095FD4 10410015 */ beq	$v0, $at, .L_8009602C
/* 022494 0x80095FD8 34018371 */ ori	$at, $zero, 0X8371
/* 022495 0x80095FDC 10410013 */ beq	$v0, $at, .L_8009602C
/* 022496 0x80095FE0 3401837E */ ori	$at, $zero, 0X837E
/* 022497 0x80095FE4 10410011 */ beq	$v0, $at, .L_8009602C
/* 022498 0x80095FE8 3401838A */ ori	$at, $zero, 0X838A
/* 022499 0x80095FEC 1041000F */ beq	$v0, $at, .L_8009602C
/* 022500 0x80095FF0 3401834D */ ori	$at, $zero, 0X834D
/* 022501 0x80095FF4 1041000D */ beq	$v0, $at, .L_8009602C
/* 022502 0x80095FF8 34018357 */ ori	$at, $zero, 0X8357
/* 022503 0x80095FFC 1041000B */ beq	$v0, $at, .L_8009602C
/* 022504 0x80096000 34018361 */ ori	$at, $zero, 0X8361
/* 022505 0x80096004 10410009 */ beq	$v0, $at, .L_8009602C
/* 022506 0x80096008 34018372 */ ori	$at, $zero, 0X8372
/* 022507 0x8009600C 10410007 */ beq	$v0, $at, .L_8009602C
/* 022508 0x80096010 34018373 */ ori	$at, $zero, 0X8373
/* 022509 0x80096014 10410005 */ beq	$v0, $at, .L_8009602C
/* 022510 0x80096018 00000000 */ nop
/* 022511 0x8009601C 10820003 */ beq	$a0, $v0, .L_8009602C
/* 022512 0x80096020 00000000 */ nop
/* 022513 0x80096024 100000B7 */ b	.L_80096304
/* 022514 0x80096028 2406000E */ li	$a2, 14
.L_8009602C:
/* 022515 0x8009602C 1583000B */ bne	$t4, $v1, .L_8009605C
/* 022516 0x80096030 00000000 */ nop
/* 022517 0x80096034 10E20007 */ beq	$a3, $v0, .L_80096054
/* 022518 0x80096038 340182C1 */ ori	$at, $zero, 0X82C1
/* 022519 0x8009603C 10410005 */ beq	$v0, $at, .L_80096054
/* 022520 0x80096040 00000000 */ nop
/* 022521 0x80096044 11020003 */ beq	$t0, $v0, .L_80096054
/* 022522 0x80096048 34018362 */ ori	$at, $zero, 0X8362
/* 022523 0x8009604C 14410003 */ bne	$v0, $at, .L_8009605C
/* 022524 0x80096050 00000000 */ nop
.L_80096054:
/* 022525 0x80096054 100000AB */ b	.L_80096304
/* 022526 0x80096058 2406000E */ li	$a2, 14
.L_8009605C:
/* 022527 0x8009605C 10E30003 */ beq	$a3, $v1, .L_8009606C
/* 022528 0x80096060 00000000 */ nop
/* 022529 0x80096064 55030008 */ bnel	$t0, $v1, .L_80096088
/* 022530 0x80096068 340182C1 */ ori	$at, $zero, 0X82C1
.L_8009606C:
/* 022531 0x8009606C 10E20003 */ beq	$a3, $v0, .L_8009607C
/* 022532 0x80096070 00000000 */ nop
/* 022533 0x80096074 55020004 */ bnel	$t0, $v0, .L_80096088
/* 022534 0x80096078 340182C1 */ ori	$at, $zero, 0X82C1
.L_8009607C:
/* 022535 0x8009607C 100000A1 */ b	.L_80096304
/* 022536 0x80096080 2406000E */ li	$a2, 14
/* 022537 0x80096084 340182C1 */ ori	$at, $zero, 0X82C1
.L_80096088:
/* 022538 0x80096088 10410003 */ beq	$v0, $at, .L_80096098
/* 022539 0x8009608C 34018362 */ ori	$at, $zero, 0X8362
/* 022540 0x80096090 1441009C */ bne	$v0, $at, .L_80096304
/* 022541 0x80096094 00000000 */ nop
.L_80096098:
/* 022542 0x80096098 11830099 */ beq	$t4, $v1, .L_80096300
/* 022543 0x8009609C 340182A0 */ ori	$at, $zero, 0X82A0
/* 022544 0x800960A0 10610097 */ beq	$v1, $at, .L_80096300
/* 022545 0x800960A4 340182A2 */ ori	$at, $zero, 0X82A2
/* 022546 0x800960A8 50610096 */ beql	$v1, $at, .L_80096304
/* 022547 0x800960AC 2406000E */ li	$a2, 14
/* 022548 0x800960B0 11A30093 */ beq	$t5, $v1, .L_80096300
/* 022549 0x800960B4 340182A6 */ ori	$at, $zero, 0X82A6
/* 022550 0x800960B8 10610091 */ beq	$v1, $at, .L_80096300
/* 022551 0x800960BC 340182A8 */ ori	$at, $zero, 0X82A8
/* 022552 0x800960C0 1061008F */ beq	$v1, $at, .L_80096300
/* 022553 0x800960C4 340182C8 */ ori	$at, $zero, 0X82C8
/* 022554 0x800960C8 1061008D */ beq	$v1, $at, .L_80096300
/* 022555 0x800960CC 340182C9 */ ori	$at, $zero, 0X82C9
/* 022556 0x800960D0 1061008B */ beq	$v1, $at, .L_80096300
/* 022557 0x800960D4 340182CA */ ori	$at, $zero, 0X82CA
/* 022558 0x800960D8 10610089 */ beq	$v1, $at, .L_80096300
/* 022559 0x800960DC 340182CB */ ori	$at, $zero, 0X82CB
/* 022560 0x800960E0 10610087 */ beq	$v1, $at, .L_80096300
/* 022561 0x800960E4 340182CC */ ori	$at, $zero, 0X82CC
/* 022562 0x800960E8 10610085 */ beq	$v1, $at, .L_80096300
/* 022563 0x800960EC 340182DC */ ori	$at, $zero, 0X82DC
/* 022564 0x800960F0 10610083 */ beq	$v1, $at, .L_80096300
/* 022565 0x800960F4 340182DD */ ori	$at, $zero, 0X82DD
/* 022566 0x800960F8 10610081 */ beq	$v1, $at, .L_80096300
/* 022567 0x800960FC 340182DE */ ori	$at, $zero, 0X82DE
/* 022568 0x80096100 1061007F */ beq	$v1, $at, .L_80096300
/* 022569 0x80096104 340182DF */ ori	$at, $zero, 0X82DF
/* 022570 0x80096108 1061007D */ beq	$v1, $at, .L_80096300
/* 022571 0x8009610C 340182E0 */ ori	$at, $zero, 0X82E0
/* 022572 0x80096110 1061007B */ beq	$v1, $at, .L_80096300
/* 022573 0x80096114 340182E2 */ ori	$at, $zero, 0X82E2
/* 022574 0x80096118 10610079 */ beq	$v1, $at, .L_80096300
/* 022575 0x8009611C 340182E4 */ ori	$at, $zero, 0X82E4
/* 022576 0x80096120 10610077 */ beq	$v1, $at, .L_80096300
/* 022577 0x80096124 340182E6 */ ori	$at, $zero, 0X82E6
/* 022578 0x80096128 10610075 */ beq	$v1, $at, .L_80096300
/* 022579 0x8009612C 340182E7 */ ori	$at, $zero, 0X82E7
/* 022580 0x80096130 10610073 */ beq	$v1, $at, .L_80096300
/* 022581 0x80096134 340182E8 */ ori	$at, $zero, 0X82E8
/* 022582 0x80096138 10610071 */ beq	$v1, $at, .L_80096300
/* 022583 0x8009613C 340182E9 */ ori	$at, $zero, 0X82E9
/* 022584 0x80096140 1061006F */ beq	$v1, $at, .L_80096300
/* 022585 0x80096144 340182EA */ ori	$at, $zero, 0X82EA
/* 022586 0x80096148 1061006D */ beq	$v1, $at, .L_80096300
/* 022587 0x8009614C 340182EB */ ori	$at, $zero, 0X82EB
/* 022588 0x80096150 1061006B */ beq	$v1, $at, .L_80096300
/* 022589 0x80096154 340182ED */ ori	$at, $zero, 0X82ED
/* 022590 0x80096158 10610069 */ beq	$v1, $at, .L_80096300
/* 022591 0x8009615C 340182EE */ ori	$at, $zero, 0X82EE
/* 022592 0x80096160 10610067 */ beq	$v1, $at, .L_80096300
/* 022593 0x80096164 340182EF */ ori	$at, $zero, 0X82EF
/* 022594 0x80096168 10610065 */ beq	$v1, $at, .L_80096300
/* 022595 0x8009616C 340182F0 */ ori	$at, $zero, 0X82F0
/* 022596 0x80096170 50610064 */ beql	$v1, $at, .L_80096304
/* 022597 0x80096174 2406000E */ li	$a2, 14
/* 022598 0x80096178 10E30061 */ beq	$a3, $v1, .L_80096300
/* 022599 0x8009617C 3401829F */ ori	$at, $zero, 0X829F
/* 022600 0x80096180 1061005F */ beq	$v1, $at, .L_80096300
/* 022601 0x80096184 340182A1 */ ori	$at, $zero, 0X82A1
/* 022602 0x80096188 1061005D */ beq	$v1, $at, .L_80096300
/* 022603 0x8009618C 340182A3 */ ori	$at, $zero, 0X82A3
/* 022604 0x80096190 1061005B */ beq	$v1, $at, .L_80096300
/* 022605 0x80096194 340182A5 */ ori	$at, $zero, 0X82A5
/* 022606 0x80096198 10610059 */ beq	$v1, $at, .L_80096300
/* 022607 0x8009619C 340182A7 */ ori	$at, $zero, 0X82A7
/* 022608 0x800961A0 10610057 */ beq	$v1, $at, .L_80096300
/* 022609 0x800961A4 340182E1 */ ori	$at, $zero, 0X82E1
/* 022610 0x800961A8 10610055 */ beq	$v1, $at, .L_80096300
/* 022611 0x800961AC 340182E3 */ ori	$at, $zero, 0X82E3
/* 022612 0x800961B0 10610053 */ beq	$v1, $at, .L_80096300
/* 022613 0x800961B4 340182E5 */ ori	$at, $zero, 0X82E5
/* 022614 0x800961B8 10610051 */ beq	$v1, $at, .L_80096300
/* 022615 0x800961BC 340182C1 */ ori	$at, $zero, 0X82C1
/* 022616 0x800961C0 1061004F */ beq	$v1, $at, .L_80096300
/* 022617 0x800961C4 340182EC */ ori	$at, $zero, 0X82EC
/* 022618 0x800961C8 1061004D */ beq	$v1, $at, .L_80096300
/* 022619 0x800961CC 34018341 */ ori	$at, $zero, 0X8341
/* 022620 0x800961D0 1061004B */ beq	$v1, $at, .L_80096300
/* 022621 0x800961D4 34018343 */ ori	$at, $zero, 0X8343
/* 022622 0x800961D8 10610049 */ beq	$v1, $at, .L_80096300
/* 022623 0x800961DC 34018345 */ ori	$at, $zero, 0X8345
/* 022624 0x800961E0 10610047 */ beq	$v1, $at, .L_80096300
/* 022625 0x800961E4 34018347 */ ori	$at, $zero, 0X8347
/* 022626 0x800961E8 10610045 */ beq	$v1, $at, .L_80096300
/* 022627 0x800961EC 34018349 */ ori	$at, $zero, 0X8349
/* 022628 0x800961F0 10610043 */ beq	$v1, $at, .L_80096300
/* 022629 0x800961F4 34018369 */ ori	$at, $zero, 0X8369
/* 022630 0x800961F8 10610041 */ beq	$v1, $at, .L_80096300
/* 022631 0x800961FC 3401836A */ ori	$at, $zero, 0X836A
/* 022632 0x80096200 1061003F */ beq	$v1, $at, .L_80096300
/* 022633 0x80096204 3401836B */ ori	$at, $zero, 0X836B
/* 022634 0x80096208 1061003D */ beq	$v1, $at, .L_80096300
/* 022635 0x8009620C 3401836C */ ori	$at, $zero, 0X836C
/* 022636 0x80096210 1061003B */ beq	$v1, $at, .L_80096300
/* 022637 0x80096214 3401836D */ ori	$at, $zero, 0X836D
/* 022638 0x80096218 10610039 */ beq	$v1, $at, .L_80096300
/* 022639 0x8009621C 3401837D */ ori	$at, $zero, 0X837D
/* 022640 0x80096220 10610037 */ beq	$v1, $at, .L_80096300
/* 022641 0x80096224 3401837E */ ori	$at, $zero, 0X837E
/* 022642 0x80096228 10610035 */ beq	$v1, $at, .L_80096300
/* 022643 0x8009622C 34018380 */ ori	$at, $zero, 0X8380
/* 022644 0x80096230 10610033 */ beq	$v1, $at, .L_80096300
/* 022645 0x80096234 34018381 */ ori	$at, $zero, 0X8381
/* 022646 0x80096238 10610031 */ beq	$v1, $at, .L_80096300
/* 022647 0x8009623C 34018382 */ ori	$at, $zero, 0X8382
/* 022648 0x80096240 1061002F */ beq	$v1, $at, .L_80096300
/* 022649 0x80096244 34018384 */ ori	$at, $zero, 0X8384
/* 022650 0x80096248 1061002D */ beq	$v1, $at, .L_80096300
/* 022651 0x8009624C 34018386 */ ori	$at, $zero, 0X8386
/* 022652 0x80096250 1061002B */ beq	$v1, $at, .L_80096300
/* 022653 0x80096254 34018388 */ ori	$at, $zero, 0X8388
/* 022654 0x80096258 10610029 */ beq	$v1, $at, .L_80096300
/* 022655 0x8009625C 34018389 */ ori	$at, $zero, 0X8389
/* 022656 0x80096260 10610027 */ beq	$v1, $at, .L_80096300
/* 022657 0x80096264 3401838A */ ori	$at, $zero, 0X838A
/* 022658 0x80096268 10610025 */ beq	$v1, $at, .L_80096300
/* 022659 0x8009626C 3401838B */ ori	$at, $zero, 0X838B
/* 022660 0x80096270 10610023 */ beq	$v1, $at, .L_80096300
/* 022661 0x80096274 3401838C */ ori	$at, $zero, 0X838C
/* 022662 0x80096278 10610021 */ beq	$v1, $at, .L_80096300
/* 022663 0x8009627C 3401838D */ ori	$at, $zero, 0X838D
/* 022664 0x80096280 1061001F */ beq	$v1, $at, .L_80096300
/* 022665 0x80096284 3401838F */ ori	$at, $zero, 0X838F
/* 022666 0x80096288 1061001D */ beq	$v1, $at, .L_80096300
/* 022667 0x8009628C 34018390 */ ori	$at, $zero, 0X8390
/* 022668 0x80096290 1061001B */ beq	$v1, $at, .L_80096300
/* 022669 0x80096294 34018391 */ ori	$at, $zero, 0X8391
/* 022670 0x80096298 10610019 */ beq	$v1, $at, .L_80096300
/* 022671 0x8009629C 34018392 */ ori	$at, $zero, 0X8392
/* 022672 0x800962A0 50610018 */ beql	$v1, $at, .L_80096304
/* 022673 0x800962A4 2406000E */ li	$a2, 14
/* 022674 0x800962A8 11030015 */ beq	$t0, $v1, .L_80096300
/* 022675 0x800962AC 34018340 */ ori	$at, $zero, 0X8340
/* 022676 0x800962B0 10610013 */ beq	$v1, $at, .L_80096300
/* 022677 0x800962B4 34018342 */ ori	$at, $zero, 0X8342
/* 022678 0x800962B8 10610011 */ beq	$v1, $at, .L_80096300
/* 022679 0x800962BC 34018344 */ ori	$at, $zero, 0X8344
/* 022680 0x800962C0 1061000F */ beq	$v1, $at, .L_80096300
/* 022681 0x800962C4 34018346 */ ori	$at, $zero, 0X8346
/* 022682 0x800962C8 1061000D */ beq	$v1, $at, .L_80096300
/* 022683 0x800962CC 34018348 */ ori	$at, $zero, 0X8348
/* 022684 0x800962D0 1061000B */ beq	$v1, $at, .L_80096300
/* 022685 0x800962D4 34018383 */ ori	$at, $zero, 0X8383
/* 022686 0x800962D8 10610009 */ beq	$v1, $at, .L_80096300
/* 022687 0x800962DC 34018385 */ ori	$at, $zero, 0X8385
/* 022688 0x800962E0 10610007 */ beq	$v1, $at, .L_80096300
/* 022689 0x800962E4 34018387 */ ori	$at, $zero, 0X8387
/* 022690 0x800962E8 10610005 */ beq	$v1, $at, .L_80096300
/* 022691 0x800962EC 34018362 */ ori	$at, $zero, 0X8362
/* 022692 0x800962F0 10610003 */ beq	$v1, $at, .L_80096300
/* 022693 0x800962F4 3401838E */ ori	$at, $zero, 0X838E
/* 022694 0x800962F8 14610002 */ bne	$v1, $at, .L_80096304
/* 022695 0x800962FC 00000000 */ nop
.L_80096300:
/* 022696 0x80096300 2406000E */ li	$a2, 14
.L_80096304:
/* 022697 0x80096304 10C00003 */ beqz	$a2, .L_80096314
/* 022698 0x80096308 8FAF000C */ lw	$t7, 0XC($sp)
/* 022699 0x8009630C 10000010 */ b	.L_80096350
/* 022700 0x80096310 00C01025 */ move	$v0, $a2
.L_80096314:
/* 022701 0x80096314 25F80002 */ addiu	$t8, $t7, 2
/* 022702 0x80096318 AFB8000C */ sw	$t8, 0XC($sp)
/* 022703 0x8009631C 91620002 */ lbu	$v0, 0X2($t3)
/* 022704 0x80096320 256B0002 */ addiu	$t3, $t3, 2
/* 022705 0x80096324 97A50006 */ lhu	$a1, 0X6($sp)
/* 022706 0x80096328 5440FE61 */ bnezl	$v0, .L_80095CB0
/* 022707 0x8009632C 916F0001 */ lbu	$t7, 0X1($t3)
.L_80096330:
/* 022708 0x80096330 97A30006 */ lhu	$v1, 0X6($sp)
/* 022709 0x80096334 340182C1 */ ori	$at, $zero, 0X82C1
/* 022710 0x80096338 10610003 */ beq	$v1, $at, .L_80096348
/* 022711 0x8009633C 34018362 */ ori	$at, $zero, 0X8362
/* 022712 0x80096340 54610003 */ bnel	$v1, $at, .L_80096350
/* 022713 0x80096344 00C01025 */ move	$v0, $a2
.L_80096348:
/* 022714 0x80096348 2406000E */ li	$a2, 14
/* 022715 0x8009634C 00C01025 */ move	$v0, $a2
.L_80096350:
/* 022716 0x80096350 03E00008 */ jr	$ra
/* 022717 0x80096354 27BD0010 */ addiu	$sp, $sp, 16
/* 022718 0x80096358 00000000 */ nop
/* 022719 0x8009635C 00000000 */ nop
