glabel Fault_PrintThreadContext
/* 002307 0x8008246C 3C08FFFA */ lui	$t0, 0xFFFA
/* 002308 0x80082470 03A04825 */ move	$t1, $sp
/* 002309 0x80082474 27BDFFD8 */ addiu	$sp, $sp, -40
/* 002310 0x80082478 35085A5A */ ori	$t0, $t0, 0X5A5A
.L_8008247C:
/* 002311 0x8008247C 2529FFF8 */ addiu	$t1, $t1, -8
/* 002312 0x80082480 AD280000 */ sw	$t0, 0X0($t1)
/* 002313 0x80082484 153DFFFD */ bne	$t1, $sp, .L_8008247C
/* 002314 0x80082488 AD280004 */ sw	$t0, 0X4($t1)
/* 002315 0x8008248C AFBF0024 */ sw	$ra, 0X24($sp)
/* 002316 0x80082490 AFB00020 */ sw	$s0, 0X20($sp)
/* 002317 0x80082494 AFA40028 */ sw	$a0, 0X28($sp)
/* 002318 0x80082498 8FAE0028 */ lw	$t6, 0X28($sp)
/* 002319 0x8008249C 24010017 */ li	$at, 23
/* 002320 0x800824A0 8DD00120 */ lw	$s0, 0X120($t6)
/* 002321 0x800824A4 00108082 */ srl	$s0, $s0, 2
/* 002322 0x800824A8 3210001F */ andi	$s0, $s0, 0X1F
/* 002323 0x800824AC 00108400 */ sll	$s0, $s0, 16
/* 002324 0x800824B0 00108403 */ sra	$s0, $s0, 16
/* 002325 0x800824B4 56010003 */ bnel	$s0, $at, .L_800824C4
/* 002326 0x800824B8 2401001F */ li	$at, 31
/* 002327 0x800824BC 24100010 */ li	$s0, 16
/* 002328 0x800824C0 2401001F */ li	$at, 31
.L_800824C4:
/* 002329 0x800824C4 16010002 */ bne	$s0, $at, .L_800824D0
/* 002330 0x800824C8 00000000 */ nop
/* 002331 0x800824CC 24100011 */ li	$s0, 17
.L_800824D0:
/* 002332 0x800824D0 0C021136 */ jal	FaultDrawer_FillScreen
/* 002333 0x800824D4 00000000 */ nop
/* 002334 0x800824D8 2404FFFE */ li	$a0, -2
/* 002335 0x800824DC 0C0210E7 */ jal	FaultDrawer_SetCharPad
/* 002336 0x800824E0 24050004 */ li	$a1, 4
/* 002337 0x800824E4 24040016 */ li	$a0, 22
/* 002338 0x800824E8 0C0210F5 */ jal	FaultDrawer_SetCursor
/* 002339 0x800824EC 24050014 */ li	$a1, 20
/* 002340 0x800824F0 8FAF0028 */ lw	$t7, 0X28($sp)
/* 002341 0x800824F4 0010C080 */ sll	$t8, $s0, 2
/* 002342 0x800824F8 3C078009 */ lui	$a3, %hi(D_80096B80)
/* 002343 0x800824FC 00F83821 */ addu	$a3, $a3, $t8
/* 002344 0x80082500 3C04800A */ lui	$a0, %hi(D_80098634)
/* 002345 0x80082504 24848634 */ addiu	$a0, $a0, %lo(D_80098634)
/* 002346 0x80082508 8CE76B80 */ lw	$a3, %lo(D_80096B80)($a3)
/* 002347 0x8008250C 02003025 */ move	$a2, $s0
/* 002348 0x80082510 0C0211F3 */ jal	FaultDrawer_Printf
/* 002349 0x80082514 8DE50014 */ lw	$a1, 0X14($t7)
/* 002350 0x80082518 2404FFFF */ li	$a0, -1
/* 002351 0x8008251C 0C0210E7 */ jal	FaultDrawer_SetCharPad
/* 002352 0x80082520 00002825 */ move	$a1, $zero
/* 002353 0x80082524 8FB00028 */ lw	$s0, 0X28($sp)
/* 002354 0x80082528 3C04800A */ lui	$a0, %hi(D_80098648)
/* 002355 0x8008252C 24848648 */ addiu	$a0, $a0, %lo(D_80098648)
/* 002356 0x80082530 26100020 */ addiu	$s0, $s0, 32
/* 002357 0x80082534 8E070104 */ lw	$a3, 0X104($s0)
/* 002358 0x80082538 8E0600F8 */ lw	$a2, 0XF8($s0)
/* 002359 0x8008253C 0C0211F3 */ jal	FaultDrawer_Printf
/* 002360 0x80082540 8E0500FC */ lw	$a1, 0XFC($s0)
/* 002361 0x80082544 3C04800A */ lui	$a0, %hi(D_80098664)
/* 002362 0x80082548 24848664 */ addiu	$a0, $a0, %lo(D_80098664)
/* 002363 0x8008254C 8E050004 */ lw	$a1, 0X4($s0)
/* 002364 0x80082550 8E06000C */ lw	$a2, 0XC($s0)
/* 002365 0x80082554 0C0211F3 */ jal	FaultDrawer_Printf
/* 002366 0x80082558 8E070014 */ lw	$a3, 0X14($s0)
/* 002367 0x8008255C 3C04800A */ lui	$a0, %hi(D_80098680)
/* 002368 0x80082560 24848680 */ addiu	$a0, $a0, %lo(D_80098680)
/* 002369 0x80082564 8E05001C */ lw	$a1, 0X1C($s0)
/* 002370 0x80082568 8E060024 */ lw	$a2, 0X24($s0)
/* 002371 0x8008256C 0C0211F3 */ jal	FaultDrawer_Printf
/* 002372 0x80082570 8E07002C */ lw	$a3, 0X2C($s0)
/* 002373 0x80082574 3C04800A */ lui	$a0, %hi(D_8009869C)
/* 002374 0x80082578 2484869C */ addiu	$a0, $a0, %lo(D_8009869C)
/* 002375 0x8008257C 8E050034 */ lw	$a1, 0X34($s0)
/* 002376 0x80082580 8E06003C */ lw	$a2, 0X3C($s0)
/* 002377 0x80082584 0C0211F3 */ jal	FaultDrawer_Printf
/* 002378 0x80082588 8E070044 */ lw	$a3, 0X44($s0)
/* 002379 0x8008258C 3C04800A */ lui	$a0, %hi(D_800986B8)
/* 002380 0x80082590 248486B8 */ addiu	$a0, $a0, %lo(D_800986B8)
/* 002381 0x80082594 8E05004C */ lw	$a1, 0X4C($s0)
/* 002382 0x80082598 8E060054 */ lw	$a2, 0X54($s0)
/* 002383 0x8008259C 0C0211F3 */ jal	FaultDrawer_Printf
/* 002384 0x800825A0 8E07005C */ lw	$a3, 0X5C($s0)
/* 002385 0x800825A4 3C04800A */ lui	$a0, %hi(D_800986D4)
/* 002386 0x800825A8 248486D4 */ addiu	$a0, $a0, %lo(D_800986D4)
/* 002387 0x800825AC 8E050064 */ lw	$a1, 0X64($s0)
/* 002388 0x800825B0 8E06006C */ lw	$a2, 0X6C($s0)
/* 002389 0x800825B4 0C0211F3 */ jal	FaultDrawer_Printf
/* 002390 0x800825B8 8E070074 */ lw	$a3, 0X74($s0)
/* 002391 0x800825BC 3C04800A */ lui	$a0, %hi(D_800986F0)
/* 002392 0x800825C0 248486F0 */ addiu	$a0, $a0, %lo(D_800986F0)
/* 002393 0x800825C4 8E05007C */ lw	$a1, 0X7C($s0)
/* 002394 0x800825C8 8E060084 */ lw	$a2, 0X84($s0)
/* 002395 0x800825CC 0C0211F3 */ jal	FaultDrawer_Printf
/* 002396 0x800825D0 8E07008C */ lw	$a3, 0X8C($s0)
/* 002397 0x800825D4 3C04800A */ lui	$a0, %hi(D_8009870C)
/* 002398 0x800825D8 2484870C */ addiu	$a0, $a0, %lo(D_8009870C)
/* 002399 0x800825DC 8E050094 */ lw	$a1, 0X94($s0)
/* 002400 0x800825E0 8E06009C */ lw	$a2, 0X9C($s0)
/* 002401 0x800825E4 0C0211F3 */ jal	FaultDrawer_Printf
/* 002402 0x800825E8 8E0700A4 */ lw	$a3, 0XA4($s0)
/* 002403 0x800825EC 3C04800A */ lui	$a0, %hi(D_80098728)
/* 002404 0x800825F0 24848728 */ addiu	$a0, $a0, %lo(D_80098728)
/* 002405 0x800825F4 8E0500AC */ lw	$a1, 0XAC($s0)
/* 002406 0x800825F8 8E0600B4 */ lw	$a2, 0XB4($s0)
/* 002407 0x800825FC 0C0211F3 */ jal	FaultDrawer_Printf
/* 002408 0x80082600 8E0700BC */ lw	$a3, 0XBC($s0)
/* 002409 0x80082604 3C04800A */ lui	$a0, %hi(D_80098744)
/* 002410 0x80082608 24848744 */ addiu	$a0, $a0, %lo(D_80098744)
/* 002411 0x8008260C 8E0500C4 */ lw	$a1, 0XC4($s0)
/* 002412 0x80082610 8E0600CC */ lw	$a2, 0XCC($s0)
/* 002413 0x80082614 0C0211F3 */ jal	FaultDrawer_Printf
/* 002414 0x80082618 8E0700D4 */ lw	$a3, 0XD4($s0)
/* 002415 0x8008261C 3C04800A */ lui	$a0, %hi(D_80098760)
/* 002416 0x80082620 24848760 */ addiu	$a0, $a0, %lo(D_80098760)
/* 002417 0x80082624 8E0500DC */ lw	$a1, 0XDC($s0)
/* 002418 0x80082628 8E0600E4 */ lw	$a2, 0XE4($s0)
/* 002419 0x8008262C 0C0211F3 */ jal	FaultDrawer_Printf
/* 002420 0x80082630 8E0700EC */ lw	$a3, 0XEC($s0)
/* 002421 0x80082634 0C0208CC */ jal	Fault_PrintFPCR
/* 002422 0x80082638 8E04010C */ lw	$a0, 0X10C($s0)
/* 002423 0x8008263C 3C04800A */ lui	$a0, %hi(D_80098780)
/* 002424 0x80082640 0C0211F3 */ jal	FaultDrawer_Printf
/* 002425 0x80082644 24848780 */ addiu	$a0, $a0, %lo(D_80098780)
/* 002426 0x80082648 00002025 */ move	$a0, $zero
/* 002427 0x8008264C 0C020875 */ jal	Fault_PrintFReg
/* 002428 0x80082650 26050114 */ addiu	$a1, $s0, 276
/* 002429 0x80082654 24040002 */ li	$a0, 2
/* 002430 0x80082658 0C020875 */ jal	Fault_PrintFReg
/* 002431 0x8008265C 2605011C */ addiu	$a1, $s0, 284
/* 002432 0x80082660 3C04800A */ lui	$a0, %hi(D_80098784)
/* 002433 0x80082664 0C0211F3 */ jal	FaultDrawer_Printf
/* 002434 0x80082668 24848784 */ addiu	$a0, $a0, %lo(D_80098784)
/* 002435 0x8008266C 24040004 */ li	$a0, 4
/* 002436 0x80082670 0C020875 */ jal	Fault_PrintFReg
/* 002437 0x80082674 26050124 */ addiu	$a1, $s0, 292
/* 002438 0x80082678 24040006 */ li	$a0, 6
/* 002439 0x8008267C 0C020875 */ jal	Fault_PrintFReg
/* 002440 0x80082680 2605012C */ addiu	$a1, $s0, 300
/* 002441 0x80082684 3C04800A */ lui	$a0, %hi(D_80098788)
/* 002442 0x80082688 0C0211F3 */ jal	FaultDrawer_Printf
/* 002443 0x8008268C 24848788 */ addiu	$a0, $a0, %lo(D_80098788)
/* 002444 0x80082690 24040008 */ li	$a0, 8
/* 002445 0x80082694 0C020875 */ jal	Fault_PrintFReg
/* 002446 0x80082698 26050134 */ addiu	$a1, $s0, 308
/* 002447 0x8008269C 2404000A */ li	$a0, 10
/* 002448 0x800826A0 0C020875 */ jal	Fault_PrintFReg
/* 002449 0x800826A4 2605013C */ addiu	$a1, $s0, 316
/* 002450 0x800826A8 3C04800A */ lui	$a0, %hi(D_8009878C)
/* 002451 0x800826AC 0C0211F3 */ jal	FaultDrawer_Printf
/* 002452 0x800826B0 2484878C */ addiu	$a0, $a0, %lo(D_8009878C)
/* 002453 0x800826B4 2404000C */ li	$a0, 12
/* 002454 0x800826B8 0C020875 */ jal	Fault_PrintFReg
/* 002455 0x800826BC 26050144 */ addiu	$a1, $s0, 324
/* 002456 0x800826C0 2404000E */ li	$a0, 14
/* 002457 0x800826C4 0C020875 */ jal	Fault_PrintFReg
/* 002458 0x800826C8 2605014C */ addiu	$a1, $s0, 332
/* 002459 0x800826CC 3C04800A */ lui	$a0, %hi(D_80098790)
/* 002460 0x800826D0 0C0211F3 */ jal	FaultDrawer_Printf
/* 002461 0x800826D4 24848790 */ addiu	$a0, $a0, %lo(D_80098790)
/* 002462 0x800826D8 24040010 */ li	$a0, 16
/* 002463 0x800826DC 0C020875 */ jal	Fault_PrintFReg
/* 002464 0x800826E0 26050154 */ addiu	$a1, $s0, 340
/* 002465 0x800826E4 24040012 */ li	$a0, 18
/* 002466 0x800826E8 0C020875 */ jal	Fault_PrintFReg
/* 002467 0x800826EC 2605015C */ addiu	$a1, $s0, 348
/* 002468 0x800826F0 3C04800A */ lui	$a0, %hi(D_80098794)
/* 002469 0x800826F4 0C0211F3 */ jal	FaultDrawer_Printf
/* 002470 0x800826F8 24848794 */ addiu	$a0, $a0, %lo(D_80098794)
/* 002471 0x800826FC 24040014 */ li	$a0, 20
/* 002472 0x80082700 0C020875 */ jal	Fault_PrintFReg
/* 002473 0x80082704 26050164 */ addiu	$a1, $s0, 356
/* 002474 0x80082708 24040016 */ li	$a0, 22
/* 002475 0x8008270C 0C020875 */ jal	Fault_PrintFReg
/* 002476 0x80082710 2605016C */ addiu	$a1, $s0, 364
/* 002477 0x80082714 3C04800A */ lui	$a0, %hi(D_80098798)
/* 002478 0x80082718 0C0211F3 */ jal	FaultDrawer_Printf
/* 002479 0x8008271C 24848798 */ addiu	$a0, $a0, %lo(D_80098798)
/* 002480 0x80082720 24040018 */ li	$a0, 24
/* 002481 0x80082724 0C020875 */ jal	Fault_PrintFReg
/* 002482 0x80082728 26050174 */ addiu	$a1, $s0, 372
/* 002483 0x8008272C 2404001A */ li	$a0, 26
/* 002484 0x80082730 0C020875 */ jal	Fault_PrintFReg
/* 002485 0x80082734 2605017C */ addiu	$a1, $s0, 380
/* 002486 0x80082738 3C04800A */ lui	$a0, %hi(D_8009879C)
/* 002487 0x8008273C 0C0211F3 */ jal	FaultDrawer_Printf
/* 002488 0x80082740 2484879C */ addiu	$a0, $a0, %lo(D_8009879C)
/* 002489 0x80082744 2404001C */ li	$a0, 28
/* 002490 0x80082748 0C020875 */ jal	Fault_PrintFReg
/* 002491 0x8008274C 26050184 */ addiu	$a1, $s0, 388
/* 002492 0x80082750 2404001E */ li	$a0, 30
/* 002493 0x80082754 0C020875 */ jal	Fault_PrintFReg
/* 002494 0x80082758 2605018C */ addiu	$a1, $s0, 396
/* 002495 0x8008275C 3C04800A */ lui	$a0, %hi(D_800987A0)
/* 002496 0x80082760 0C0211F3 */ jal	FaultDrawer_Printf
/* 002497 0x80082764 248487A0 */ addiu	$a0, $a0, %lo(D_800987A0)
/* 002498 0x80082768 00002025 */ move	$a0, $zero
/* 002499 0x8008276C 0C0210E7 */ jal	FaultDrawer_SetCharPad
/* 002500 0x80082770 00002825 */ move	$a1, $zero
/* 002501 0x80082774 3C01800A */ lui	$at, %hi(D_8009BE54)
/* 002502 0x80082778 C420BE54 */ lwc1	$f0, %lo(D_8009BE54)($at)
/* 002503 0x8008277C 44802000 */ mtc1	$zero, $f4
/* 002504 0x80082780 3C06800A */ lui	$a2, %hi(D_800987A4)
/* 002505 0x80082784 24C687A4 */ addiu	$a2, $a2, %lo(D_800987A4)
/* 002506 0x80082788 46002032 */ c.eq.s	$f4, $f0
/* 002507 0x8008278C 240400A0 */ li	$a0, 160
/* 002508 0x80082790 240500D8 */ li	$a1, 216
/* 002509 0x80082794 45030005 */ bc1tl .L_800827AC
/* 002510 0x80082798 8FBF0024 */ lw	$ra, 0X24($sp)
/* 002511 0x8008279C 460001A1 */ cvt.d.s	$f6, $f0
/* 002512 0x800827A0 0C021207 */ jal	FaultDrawer_DrawText
/* 002513 0x800827A4 F7A60010 */ sdc1	$f6, 0X10($sp)
/* 002514 0x800827A8 8FBF0024 */ lw	$ra, 0X24($sp)
.L_800827AC:
/* 002515 0x800827AC 8FB00020 */ lw	$s0, 0X20($sp)
/* 002516 0x800827B0 27BD0028 */ addiu	$sp, $sp, 40
/* 002517 0x800827B4 03E00008 */ jr	$ra
/* 002518 0x800827B8 00000000 */ nop

