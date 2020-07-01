.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80C1F150
/* 000476 0x80C1F150 */ .word	0x02A30400
/* 000477 0x80C1F154 */ .word	0x02000019
/* 000478 0x80C1F158 */ .word	0x01850000
/* 000479 0x80C1F15C */ .word	0x0000033C
/* 000480 0x80C1F160 */ .word	DmBal_Init
/* 000481 0x80C1F164 */ .word	DmBal_Destroy
/* 000482 0x80C1F168 */ .word	DmBal_Update
/* 000483 0x80C1F16C */ .word	DmBal_Draw
glabel D_80C1F170
/* 000484 0x80C1F170 */ .word	0x060005FC
/* 000485 0x80C1F174 */ .word	0x3F800000
/* 000486 0x80C1F178 */ .word	0x00000000
/* 000487 0x80C1F17C */ .word	0x00000000
/* 000488 0x80C1F180 */ .word	0x00000000
/* 000489 0x80C1F184 */ .word	0xC1000000
/* 000490 0x80C1F188 */ .word	0x06000840
/* 000491 0x80C1F18C */ .word	0x3FC00000
/* 000492 0x80C1F190 */ .word	0x00000000
/* 000493 0x80C1F194 */ .word	0x00000000
/* 000494 0x80C1F198 */ .word	0x00000000
/* 000495 0x80C1F19C */ .word	0xC1000000
/* 000496 0x80C1F1A0 */ .word	0x06000840
/* 000497 0x80C1F1A4 */ .word	0x3FC00000
/* 000498 0x80C1F1A8 */ .word	0x00000000
/* 000499 0x80C1F1AC */ .word	0x00000000
/* 000500 0x80C1F1B0 */ .word	0x02000000
/* 000501 0x80C1F1B4 */ .word	0xC0800000
/* 000502 0x80C1F1B8 */ .word	0x0600A7DC
/* 000503 0x80C1F1BC */ .word	0x3F800000
/* 000504 0x80C1F1C0 */ .word	0x00000000
/* 000505 0x80C1F1C4 */ .word	0x00000000
/* 000506 0x80C1F1C8 */ .word	0x02000000
/* 000507 0x80C1F1CC */ .word	0xC0800000
/* 000508 0x80C1F1D0 */ .word	0x0600B1E8
/* 000509 0x80C1F1D4 */ .word	0x3F800000
/* 000510 0x80C1F1D8 */ .word	0x00000000
/* 000511 0x80C1F1DC */ .word	0x00000000
/* 000512 0x80C1F1E0 */ .word	0x00000000
/* 000513 0x80C1F1E4 */ .word	0xC1000000
/* 000514 0x80C1F1E8 */ .word	0x0600B604
/* 000515 0x80C1F1EC */ .word	0x3F800000
/* 000516 0x80C1F1F0 */ .word	0x00000000
/* 000517 0x80C1F1F4 */ .word	0x00000000
/* 000518 0x80C1F1F8 */ .word	0x00000000
/* 000519 0x80C1F1FC */ .word	0xC1000000
/* 000520 0x80C1F200 */ .word	0x0600C498
/* 000521 0x80C1F204 */ .word	0x3F800000
/* 000522 0x80C1F208 */ .word	0x00000000
/* 000523 0x80C1F20C */ .word	0x00000000
/* 000524 0x80C1F210 */ .word	0x02000000
/* 000525 0x80C1F214 */ .word	0xC1000000
/* 000526 0x80C1F218 */ .word	0x0600C8D8
/* 000527 0x80C1F21C */ .word	0x3F800000
/* 000528 0x80C1F220 */ .word	0x00000000
/* 000529 0x80C1F224 */ .word	0x00000000
/* 000530 0x80C1F228 */ .word	0x00000000
/* 000531 0x80C1F22C */ .word	0xC1000000
/* 000532 0x80C1F230 */ .word	0x0600C8D8
/* 000533 0x80C1F234 */ .word	0x3F800000
/* 000534 0x80C1F238 */ .word	0x00000000
/* 000535 0x80C1F23C */ .word	0x00000000
/* 000536 0x80C1F240 */ .word	0x02000000
/* 000537 0x80C1F244 */ .word	0xC1000000
/* 000538 0x80C1F248 */ .word	0x0600C498
/* 000539 0x80C1F24C */ .word	0x3F800000
/* 000540 0x80C1F250 */ .word	0x41B80000
/* 000541 0x80C1F254 */ .word	0x00000000
/* 000542 0x80C1F258 */ .word	0x02000000
/* 000543 0x80C1F25C */ .word	0xC1000000
/* 000544 0x80C1F260 */ .word	0x0600D530
/* 000545 0x80C1F264 */ .word	0x3F800000
/* 000546 0x80C1F268 */ .word	0x00000000
/* 000547 0x80C1F26C */ .word	0x00000000
/* 000548 0x80C1F270 */ .word	0x00000000
/* 000549 0x80C1F274 */ .word	0xC1000000
/* 000550 0x80C1F278 */ .word	0x06000C78
/* 000551 0x80C1F27C */ .word	0x3F800000
/* 000552 0x80C1F280 */ .word	0x00000000
/* 000553 0x80C1F284 */ .word	0x00000000
/* 000554 0x80C1F288 */ .word	0x00000000
/* 000555 0x80C1F28C */ .word	0xC0000000
/* 000556 0x80C1F290 */ .word	0x0600CB78
/* 000557 0x80C1F294 */ .word	0x3F800000
/* 000558 0x80C1F298 */ .word	0x00000000
/* 000559 0x80C1F29C */ .word	0x00000000
/* 000560 0x80C1F2A0 */ .word	0x00000000
/* 000561 0x80C1F2A4 */ .word	0xC0000000
/* 000562 0x80C1F2A8 */ .word	0x06001804
/* 000563 0x80C1F2AC */ .word	0x3F800000
/* 000564 0x80C1F2B0 */ .word	0x00000000
/* 000565 0x80C1F2B4 */ .word	0x00000000
/* 000566 0x80C1F2B8 */ .word	0x00000000
/* 000567 0x80C1F2BC */ .word	0xC0000000
glabel D_80C1F2C0
/* 000568 0x80C1F2C0 */ .word	0x00630000
glabel D_80C1F2C4
/* 000569 0x80C1F2C4 */ .word	0x00000000
/* 000570 0x80C1F2C8 */ .word	0x41100000
/* 000571 0x80C1F2CC */ .word	0x00000000
glabel D_80C1F2D0
/* 000572 0x80C1F2D0 */ .word	0x06006050
/* 000573 0x80C1F2D4 */ .word	0x060094D0
/* 000574 0x80C1F2D8 */ .word	0x00000000
/* 000575 0x80C1F2DC */ .word	0x00000000
glabel D_80C1F2E0
/* 000576 0x80C1F2E0 */ .word	0x453B8000
glabel D_80C1F2E4
/* 000577 0x80C1F2E4 */ .word	0x3DCCCCCD
glabel D_80C1F2E8
/* 000578 0x80C1F2E8 */ .word	0x3DCCCCCD
glabel D_80C1F2EC
/* 000579 0x80C1F2EC */ .word	0xBECCCCCD
glabel D_80C1F2F0
/* 000580 0x80C1F2F0 */ .word	0x45638000
glabel D_80C1F2F4
/* 000581 0x80C1F2F4 */ .word	0x45638000
/* 000582 0x80C1F2F8 */ .word	0x00000000
/* 000583 0x80C1F2FC */ .word	0x00000000
glabel dmBalOverlayInfo
/* 000584 0x80C1F300 */ .word	0x00000770
/* 000585 0x80C1F304 */ .word	0x00000190
/* 000586 0x80C1F308 */ .word	0x00000020
/* 000587 0x80C1F30C */ .word	0x00000000
/* 000588 0x80C1F310 */ .word	0x0000002C
glabel dmBalOverlayRelocations
/* 000589 0x80C1F314 */ .word	0x4500001C
/* 000590 0x80C1F318 */ .word	0x46000020
/* 000591 0x80C1F31C */ .word	0x440000B8
/* 000592 0x80C1F320 */ .word	0x450000E4
/* 000593 0x80C1F324 */ .word	0x460000E8
/* 000594 0x80C1F328 */ .word	0x45000150
/* 000595 0x80C1F32C */ .word	0x46000154
/* 000596 0x80C1F330 */ .word	0x4500016C
/* 000597 0x80C1F334 */ .word	0x46000174
/* 000598 0x80C1F338 */ .word	0x45000198
/* 000599 0x80C1F33C */ .word	0x460001A4
/* 000600 0x80C1F340 */ .word	0x45000180
/* 000601 0x80C1F344 */ .word	0x460001C4
/* 000602 0x80C1F348 */ .word	0x4500018C
/* 000603 0x80C1F34C */ .word	0x460001DC
/* 000604 0x80C1F350 */ .word	0x45000264
/* 000605 0x80C1F354 */ .word	0x46000268
/* 000606 0x80C1F358 */ .word	0x450002B4
/* 000607 0x80C1F35C */ .word	0x460002B8
/* 000608 0x80C1F360 */ .word	0x450002DC
/* 000609 0x80C1F364 */ .word	0x460002E0
/* 000610 0x80C1F368 */ .word	0x45000450
/* 000611 0x80C1F36C */ .word	0x4600045C
/* 000612 0x80C1F370 */ .word	0x45000508
/* 000613 0x80C1F374 */ .word	0x4600050C
/* 000614 0x80C1F378 */ .word	0x44000528
/* 000615 0x80C1F37C */ .word	0x44000548
/* 000616 0x80C1F380 */ .word	0x44000568
/* 000617 0x80C1F384 */ .word	0x44000574
/* 000618 0x80C1F388 */ .word	0x4400057C
/* 000619 0x80C1F38C */ .word	0x450005C8
/* 000620 0x80C1F390 */ .word	0x460005CC
/* 000621 0x80C1F394 */ .word	0x450005F0
/* 000622 0x80C1F398 */ .word	0x460005F4
/* 000623 0x80C1F39C */ .word	0x450006DC
/* 000624 0x80C1F3A0 */ .word	0x460006EC
/* 000625 0x80C1F3A4 */ .word	0x4500072C
/* 000626 0x80C1F3A8 */ .word	0x46000738
/* 000627 0x80C1F3AC */ .word	0x45000730
/* 000628 0x80C1F3B0 */ .word	0x46000734
/* 000629 0x80C1F3B4 */ .word	0x82000010
/* 000630 0x80C1F3B8 */ .word	0x82000014
/* 000631 0x80C1F3BC */ .word	0x82000018
/* 000632 0x80C1F3C0 */ .word	0x8200001C
/* 000633 0x80C1F3C4 */ .word	0x00000000
/* 000634 0x80C1F3C8 */ .word	0x00000000
glabel dmBalOverlayInfoOffset
/* 000635 0x80C1F3CC */ .word	0x000000D0
