.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_809C46B0
/* 000480 0x809C46B0 */ .word	0x011B0600
/* 000481 0x809C46B4 */ .word	0x08000010
/* 000482 0x809C46B8 */ .word	0x00010000
/* 000483 0x809C46BC */ .word	0x00000158
/* 000484 0x809C46C0 */ .word	EnEncount4_Init
/* 000485 0x809C46C4 */ .word	EnEncount4_Destroy
/* 000486 0x809C46C8 */ .word	EnEncount4_Update
/* 000487 0x809C46CC */ .word	0x00000000
glabel D_809C46D0
/* 000488 0x809C46D0 */ .word	0x4000C000
/* 000489 0x809C46D4 */ .word	0x40000000
/* 000490 0x809C46D8 */ .word	0xC0000000
glabel D_809C46DC
/* 000491 0x809C46DC */ .word	0x43480000
/* 000492 0x809C46E0 */ .word	0x43480000
/* 000493 0x809C46E4 */ .word	0x42C80000
/* 000494 0x809C46E8 */ .word	0x00000000
/* 000495 0x809C46EC */ .word	0x42C80000
glabel D_809C46F0
/* 000496 0x809C46F0 */ .word	0x00000780
/* 000497 0x809C46F4 */ .word	0x00000040
/* 000498 0x809C46F8 */ .word	0x00000000
/* 000499 0x809C46FC */ .word	0x00000000
/* 000500 0x809C4700 */ .word	0x0000001F
glabel enEncount4OverlayRelocations
/* 000501 0x809C4704 */ .word	0x45000074
/* 000502 0x809C4708 */ .word	0x46000078
/* 000503 0x809C470C */ .word	0x450000DC
/* 000504 0x809C4710 */ .word	0x460000E4
/* 000505 0x809C4714 */ .word	0x450000F8
/* 000506 0x809C4718 */ .word	0x46000104
/* 000507 0x809C471C */ .word	0x450001A4
/* 000508 0x809C4720 */ .word	0x460001A8
/* 000509 0x809C4724 */ .word	0x4500027C
/* 000510 0x809C4728 */ .word	0x46000288
/* 000511 0x809C472C */ .word	0x45000280
/* 000512 0x809C4730 */ .word	0x46000284
/* 000513 0x809C4734 */ .word	0x45000290
/* 000514 0x809C4738 */ .word	0x46000294
/* 000515 0x809C473C */ .word	0x45000338
/* 000516 0x809C4740 */ .word	0x4600033C
/* 000517 0x809C4744 */ .word	0x450003BC
/* 000518 0x809C4748 */ .word	0x460003C4
/* 000519 0x809C474C */ .word	0x4500041C
/* 000520 0x809C4750 */ .word	0x4600042C
/* 000521 0x809C4754 */ .word	0x45000630
/* 000522 0x809C4758 */ .word	0x46000634
/* 000523 0x809C475C */ .word	0x45000698
/* 000524 0x809C4760 */ .word	0x460006A0
/* 000525 0x809C4764 */ .word	0x450006E4
/* 000526 0x809C4768 */ .word	0x460006E8
/* 000527 0x809C476C */ .word	0x450006F8
/* 000528 0x809C4770 */ .word	0x460006FC
/* 000529 0x809C4774 */ .word	0x82000010
/* 000530 0x809C4778 */ .word	0x82000014
/* 000531 0x809C477C */ .word	0x82000018
/* 000532 0x809C4780 */ .word	0x00000000
/* 000533 0x809C4784 */ .word	0x00000000
/* 000534 0x809C4788 */ .word	0x00000000
glabel enEncount4OverlayInfoOffset
/* 000535 0x809C478C */ .word	0x000000A0
