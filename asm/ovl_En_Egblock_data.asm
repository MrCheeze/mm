.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80ABB040
/* 000552 0x80ABB040 */ .word	0x019F0600
/* 000553 0x80ABB044 */ .word	0x08000000
/* 000554 0x80ABB048 */ .word	0x018D0000
/* 000555 0x80ABB04C */ .word	0x00000DB4
/* 000556 0x80ABB050 */ .word	EnEgblock_Init
/* 000557 0x80ABB054 */ .word	EnEgblock_Destroy
/* 000558 0x80ABB058 */ .word	EnEgblock_Update
/* 000559 0x80ABB05C */ .word	EnEgblock_Draw
glabel D_80ABB060
/* 000560 0x80ABB060 */ .word	0x3E4CCCCD
glabel D_80ABB064
/* 000561 0x80ABB064 */ .word	0x46EA6000
glabel D_80ABB068
/* 000562 0x80ABB068 */ .word	0x46EA6000
glabel D_80ABB06C
/* 000563 0x80ABB06C */ .word	0x46EA6000
glabel enEgblockOverlayInfo
/* 000564 0x80ABB070 */ .word	0x000008A0
/* 000565 0x80ABB074 */ .word	0x00000020
/* 000566 0x80ABB078 */ .word	0x00000010
/* 000567 0x80ABB07C */ .word	0x00000000
/* 000568 0x80ABB080 */ .word	0x00000015
glabel enEgblockOverlayRelocations
/* 000569 0x80ABB084 */ .word	0x45000098
/* 000570 0x80ABB088 */ .word	0x460000A0
/* 000571 0x80ABB08C */ .word	0x45000068
/* 000572 0x80ABB090 */ .word	0x4600006C
/* 000573 0x80ABB094 */ .word	0x44000150
/* 000574 0x80ABB098 */ .word	0x450001B4
/* 000575 0x80ABB09C */ .word	0x460001BC
/* 000576 0x80ABB0A0 */ .word	0x4400025C
/* 000577 0x80ABB0A4 */ .word	0x4400033C
/* 000578 0x80ABB0A8 */ .word	0x45000484
/* 000579 0x80ABB0AC */ .word	0x46000488
/* 000580 0x80ABB0B0 */ .word	0x45000498
/* 000581 0x80ABB0B4 */ .word	0x460004A8
/* 000582 0x80ABB0B8 */ .word	0x450004B0
/* 000583 0x80ABB0BC */ .word	0x460004C4
/* 000584 0x80ABB0C0 */ .word	0x450004CC
/* 000585 0x80ABB0C4 */ .word	0x460004E0
/* 000586 0x80ABB0C8 */ .word	0x82000010
/* 000587 0x80ABB0CC */ .word	0x82000014
/* 000588 0x80ABB0D0 */ .word	0x82000018
/* 000589 0x80ABB0D4 */ .word	0x8200001C
/* 000590 0x80ABB0D8 */ .word	0x00000000
glabel enEgblockOverlayInfoOffset
/* 000591 0x80ABB0DC */ .word	0x00000070
