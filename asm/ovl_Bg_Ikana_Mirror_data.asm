.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80B7FF30
/* 000512 0x80B7FF30 */ .word	0x02190600
/* 000513 0x80B7FF34 */ .word	0x00000010
/* 000514 0x80B7FF38 */ .word	0x02030000
/* 000515 0x80B7FF3C */ .word	0x000005CC
/* 000516 0x80B7FF40 */ .word	BgIkanaMirror_Init
/* 000517 0x80B7FF44 */ .word	BgIkanaMirror_Destroy
/* 000518 0x80B7FF48 */ .word	BgIkanaMirror_Update
/* 000519 0x80B7FF4C */ .word	BgIkanaMirror_Draw
glabel D_80B7FF50
/* 000520 0x80B7FF50 */ .word	0x04000000
/* 000521 0x80B7FF54 */ .word	0x00000000
/* 000522 0x80B7FF58 */ .word	0x00000000
/* 000523 0x80B7FF5C */ .word	0x00200000
/* 000524 0x80B7FF60 */ .word	0x00000000
/* 000525 0x80B7FF64 */ .word	0x00010000
/* 000526 0x80B7FF68 */ .word	0x00000000
/* 000527 0x80B7FF6C */ .word	0x41ACCCCD
/* 000528 0x80B7FF70 */ .word	0x415B3333
/* 000529 0x80B7FF74 */ .word	0xC1CA6666
/* 000530 0x80B7FF78 */ .word	0x40C00000
/* 000531 0x80B7FF7C */ .word	0x41066666
/* 000532 0x80B7FF80 */ .word	0x41CA6666
/* 000533 0x80B7FF84 */ .word	0x40C00000
/* 000534 0x80B7FF88 */ .word	0x41066666
/* 000535 0x80B7FF8C */ .word	0x04000000
/* 000536 0x80B7FF90 */ .word	0x00000000
/* 000537 0x80B7FF94 */ .word	0x00000000
/* 000538 0x80B7FF98 */ .word	0x00200000
/* 000539 0x80B7FF9C */ .word	0x00000000
/* 000540 0x80B7FFA0 */ .word	0x00010000
/* 000541 0x80B7FFA4 */ .word	0x00000000
/* 000542 0x80B7FFA8 */ .word	0x42340000
/* 000543 0x80B7FFAC */ .word	0x415B3333
/* 000544 0x80B7FFB0 */ .word	0xC1CA6666
/* 000545 0x80B7FFB4 */ .word	0x40C00000
/* 000546 0x80B7FFB8 */ .word	0x41066666
/* 000547 0x80B7FFBC */ .word	0x00000000
/* 000548 0x80B7FFC0 */ .word	0x41ACCCCD
/* 000549 0x80B7FFC4 */ .word	0x415B3333
/* 000550 0x80B7FFC8 */ .word	0x04000000
/* 000551 0x80B7FFCC */ .word	0x00000000
/* 000552 0x80B7FFD0 */ .word	0x00000000
/* 000553 0x80B7FFD4 */ .word	0x00200000
/* 000554 0x80B7FFD8 */ .word	0x00000000
/* 000555 0x80B7FFDC */ .word	0x00010000
/* 000556 0x80B7FFE0 */ .word	0x00000000
/* 000557 0x80B7FFE4 */ .word	0x42340000
/* 000558 0x80B7FFE8 */ .word	0x415B3333
/* 000559 0x80B7FFEC */ .word	0x00000000
/* 000560 0x80B7FFF0 */ .word	0x41ACCCCD
/* 000561 0x80B7FFF4 */ .word	0x415B3333
/* 000562 0x80B7FFF8 */ .word	0x41CA6666
/* 000563 0x80B7FFFC */ .word	0x40C00000
/* 000564 0x80B80000 */ .word	0x41066666
/* 000565 0x80B80004 */ .word	0x04000000
/* 000566 0x80B80008 */ .word	0x00000000
/* 000567 0x80B8000C */ .word	0x00000000
/* 000568 0x80B80010 */ .word	0x00200000
/* 000569 0x80B80014 */ .word	0x00000000
/* 000570 0x80B80018 */ .word	0x00010000
/* 000571 0x80B8001C */ .word	0x00000000
/* 000572 0x80B80020 */ .word	0x42340000
/* 000573 0x80B80024 */ .word	0x415B3333
/* 000574 0x80B80028 */ .word	0xC1CA6666
/* 000575 0x80B8002C */ .word	0x42340000
/* 000576 0x80B80030 */ .word	0x41066666
/* 000577 0x80B80034 */ .word	0xC1CA6666
/* 000578 0x80B80038 */ .word	0x40C00000
/* 000579 0x80B8003C */ .word	0x41066666
/* 000580 0x80B80040 */ .word	0x04000000
/* 000581 0x80B80044 */ .word	0x00000000
/* 000582 0x80B80048 */ .word	0x00000000
/* 000583 0x80B8004C */ .word	0x00200000
/* 000584 0x80B80050 */ .word	0x00000000
/* 000585 0x80B80054 */ .word	0x00010000
/* 000586 0x80B80058 */ .word	0x00000000
/* 000587 0x80B8005C */ .word	0x42340000
/* 000588 0x80B80060 */ .word	0x415B3333
/* 000589 0x80B80064 */ .word	0x41CA6666
/* 000590 0x80B80068 */ .word	0x40C00000
/* 000591 0x80B8006C */ .word	0x41066666
/* 000592 0x80B80070 */ .word	0x41CA6666
/* 000593 0x80B80074 */ .word	0x42340000
/* 000594 0x80B80078 */ .word	0x41066666
/* 000595 0x80B8007C */ .word	0x04000000
/* 000596 0x80B80080 */ .word	0x00000000
/* 000597 0x80B80084 */ .word	0x00000000
/* 000598 0x80B80088 */ .word	0x00200000
/* 000599 0x80B8008C */ .word	0x00000000
/* 000600 0x80B80090 */ .word	0x00010000
/* 000601 0x80B80094 */ .word	0x00000000
/* 000602 0x80B80098 */ .word	0x42340000
/* 000603 0x80B8009C */ .word	0x415B3333
/* 000604 0x80B800A0 */ .word	0xC18F3333
/* 000605 0x80B800A4 */ .word	0x42803333
/* 000606 0x80B800A8 */ .word	0x41066666
/* 000607 0x80B800AC */ .word	0xC1CA6666
/* 000608 0x80B800B0 */ .word	0x42340000
/* 000609 0x80B800B4 */ .word	0x41066666
/* 000610 0x80B800B8 */ .word	0x04000000
/* 000611 0x80B800BC */ .word	0x00000000
/* 000612 0x80B800C0 */ .word	0x00000000
/* 000613 0x80B800C4 */ .word	0x00200000
/* 000614 0x80B800C8 */ .word	0x00000000
/* 000615 0x80B800CC */ .word	0x00010000
/* 000616 0x80B800D0 */ .word	0x00000000
/* 000617 0x80B800D4 */ .word	0x42340000
/* 000618 0x80B800D8 */ .word	0x415B3333
/* 000619 0x80B800DC */ .word	0x41CA6666
/* 000620 0x80B800E0 */ .word	0x42340000
/* 000621 0x80B800E4 */ .word	0x41066666
/* 000622 0x80B800E8 */ .word	0x418F3333
/* 000623 0x80B800EC */ .word	0x42803333
/* 000624 0x80B800F0 */ .word	0x41066666
/* 000625 0x80B800F4 */ .word	0x04000000
/* 000626 0x80B800F8 */ .word	0x00000000
/* 000627 0x80B800FC */ .word	0x00000000
/* 000628 0x80B80100 */ .word	0x00200000
/* 000629 0x80B80104 */ .word	0x00000000
/* 000630 0x80B80108 */ .word	0x00010000
/* 000631 0x80B8010C */ .word	0x00000000
/* 000632 0x80B80110 */ .word	0x42340000
/* 000633 0x80B80114 */ .word	0x415B3333
/* 000634 0x80B80118 */ .word	0x00000000
/* 000635 0x80B8011C */ .word	0x42900000
/* 000636 0x80B80120 */ .word	0x41066666
/* 000637 0x80B80124 */ .word	0xC18F3333
/* 000638 0x80B80128 */ .word	0x42803333
/* 000639 0x80B8012C */ .word	0x41066666
/* 000640 0x80B80130 */ .word	0x04000000
/* 000641 0x80B80134 */ .word	0x00000000
/* 000642 0x80B80138 */ .word	0x00000000
/* 000643 0x80B8013C */ .word	0x00200000
/* 000644 0x80B80140 */ .word	0x00000000
/* 000645 0x80B80144 */ .word	0x00010000
/* 000646 0x80B80148 */ .word	0x00000000
/* 000647 0x80B8014C */ .word	0x42340000
/* 000648 0x80B80150 */ .word	0x415B3333
/* 000649 0x80B80154 */ .word	0x418F3333
/* 000650 0x80B80158 */ .word	0x42803333
/* 000651 0x80B8015C */ .word	0x41066666
/* 000652 0x80B80160 */ .word	0x00000000
/* 000653 0x80B80164 */ .word	0x42900000
/* 000654 0x80B80168 */ .word	0x41066666
glabel D_80B8016C
/* 000655 0x80B8016C */ .word	0x0A002900
/* 000656 0x80B80170 */ .word	0x00020000
/* 000657 0x80B80174 */ .word	0x00000009
/* 000658 0x80B80178 */ .word	D_80B7FF50
glabel D_80B8017C
/* 000659 0x80B8017C */ .word	0x0A210000
/* 000660 0x80B80180 */ .word	0x00030000
/* 000661 0x80B80184 */ .word	0x00000000
/* 000662 0x80B80188 */ .word	0x00200000
/* 000663 0x80B8018C */ .word	0x00000000
/* 000664 0x80B80190 */ .word	0x00000000
/* 000665 0x80B80194 */ .word	0x00000000
/* 000666 0x80B80198 */ .word	0x19000000
glabel D_80B8019C
/* 000667 0x80B8019C */ .word	0x00000000
/* 000668 0x80B801A0 */ .word	0x42900000
/* 000669 0x80B801A4 */ .word	0x41A00000
glabel D_80B801A8
/* 000670 0x80B801A8 */ .word	0x00000000
/* 000671 0x80B801AC */ .word	0x42900000
/* 000672 0x80B801B0 */ .word	0x43700000
glabel D_80B801B4
/* 000673 0x80B801B4 */ .word	0x00000000
/* 000674 0x80B801B8 */ .word	0x40C00000
/* 000675 0x80B801BC */ .word	0x41A00000
glabel D_80B801C0
/* 000676 0x80B801C0 */ .word	0x00000000
/* 000677 0x80B801C4 */ .word	0x40C00000
/* 000678 0x80B801C8 */ .word	0x43700000
/* 000679 0x80B801CC */ .word	0x0A210000
/* 000680 0x80B801D0 */ .word	0x00030000
/* 000681 0x80B801D4 */ .word	0x00000000
/* 000682 0x80B801D8 */ .word	0x00200000
/* 000683 0x80B801DC */ .word	0x00000000
/* 000684 0x80B801E0 */ .word	0x00000000
/* 000685 0x80B801E4 */ .word	0x00000000
/* 000686 0x80B801E8 */ .word	0x19000000
/* 000687 0x80B801EC */ .word	0x41CA6666
/* 000688 0x80B801F0 */ .word	0x41A00000
/* 000689 0x80B801F4 */ .word	0x41A00000
/* 000690 0x80B801F8 */ .word	0x41CA6666
/* 000691 0x80B801FC */ .word	0x41A00000
/* 000692 0x80B80200 */ .word	0x43700000
/* 000693 0x80B80204 */ .word	0xC1CA6666
/* 000694 0x80B80208 */ .word	0x41A00000
/* 000695 0x80B8020C */ .word	0x41A00000
/* 000696 0x80B80210 */ .word	0xC1CA6666
/* 000697 0x80B80214 */ .word	0x41A00000
/* 000698 0x80B80218 */ .word	0x43700000
glabel D_80B8021C
/* 000699 0x80B8021C */ .word	0xB0FC0FA0
/* 000700 0x80B80220 */ .word	0xB10000DC
/* 000701 0x80B80224 */ .word	0xB10400C8
/* 000702 0x80B80228 */ .word	0x48580064
/* 000703 0x80B8022C */ .word	0x00000000
glabel D_80B80230
/* 000704 0x80B80230 */ .word	0x3B808081
/* 000705 0x80B80234 */ .word	0x00000000
/* 000706 0x80B80238 */ .word	0x00000000
/* 000707 0x80B8023C */ .word	0x00000000
glabel bgIkanaMirrorOverlayInfo
/* 000708 0x80B80240 */ .word	0x00000800
/* 000709 0x80B80244 */ .word	0x00000300
glabel D_80B80248
/* 000710 0x80B80248 */ .word	0x00000010
/* 000711 0x80B8024C */ .word	0x00000000
/* 000712 0x80B80250 */ .word	0x00000021
glabel bgIkanaMirrorOverlayRelocations
/* 000713 0x80B80254 */ .word	0x4500004C
/* 000714 0x80B80258 */ .word	0x46000070
/* 000715 0x80B8025C */ .word	0x45000054
/* 000716 0x80B80260 */ .word	0x46000068
/* 000717 0x80B80264 */ .word	0x45000058
/* 000718 0x80B80268 */ .word	0x46000064
/* 000719 0x80B8026C */ .word	0x4500005C
/* 000720 0x80B80270 */ .word	0x46000060
/* 000721 0x80B80274 */ .word	0x450000C8
/* 000722 0x80B80278 */ .word	0x460000CC
/* 000723 0x80B8027C */ .word	0x45000154
/* 000724 0x80B80280 */ .word	0x46000158
/* 000725 0x80B80284 */ .word	0x45000194
/* 000726 0x80B80288 */ .word	0x46000198
/* 000727 0x80B8028C */ .word	0x45000230
/* 000728 0x80B80290 */ .word	0x4600023C
/* 000729 0x80B80294 */ .word	0x45000234
/* 000730 0x80B80298 */ .word	0x46000238
/* 000731 0x80B8029C */ .word	0x44000270
/* 000732 0x80B802A0 */ .word	0x44000298
/* 000733 0x80B802A4 */ .word	0x45000354
/* 000734 0x80B802A8 */ .word	0x46000358
/* 000735 0x80B802AC */ .word	0x44000420
/* 000736 0x80B802B0 */ .word	0x45000458
/* 000737 0x80B802B4 */ .word	0x4600045C
/* 000738 0x80B802B8 */ .word	0x44000560
/* 000739 0x80B802BC */ .word	0x450006F0
/* 000740 0x80B802C0 */ .word	0x460006F4
/* 000741 0x80B802C4 */ .word	0x82000010
/* 000742 0x80B802C8 */ .word	0x82000014
/* 000743 0x80B802CC */ .word	0x82000018
/* 000744 0x80B802D0 */ .word	0x8200001C
/* 000745 0x80B802D4 */ .word	0x82000248
/* 000746 0x80B802D8 */ .word	0x00000000
glabel bgIkanaMirrorOverlayInfoOffset
/* 000747 0x80B802DC */ .word	0x000000A0
