.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_8098F720
/* 000440 0x8098F720 */ .word	0x00E80100
/* 000441 0x8098F724 */ .word	0x00000000
/* 000442 0x8098F728 */ .word	0x00010000
/* 000443 0x8098F72C */ .word	0x00000168
/* 000444 0x8098F730 */ .word	ObjMure3_Init
/* 000445 0x8098F734 */ .word	ObjMure3_Destroy
/* 000446 0x8098F738 */ .word	ObjMure3_Update
/* 000447 0x8098F73C */ .word	0x00000000
glabel D_8098F740
/* 000448 0x8098F740 */ .word	0x00050005
/* 000449 0x8098F744 */ .word	0x00070000
glabel D_8098F748
/* 000450 0x8098F748 */ .word	0xB0FC0064
/* 000451 0x8098F74C */ .word	0xB1000708
/* 000452 0x8098F750 */ .word	0x31040064
glabel D_8098F754
/* 000453 0x8098F754 */ .word	func_8098F040
/* 000454 0x8098F758 */ .word	func_8098F110
/* 000455 0x8098F75C */ .word	func_8098F220
glabel D_8098F760
/* 000456 0x8098F760 */ .word	0x49A17020
glabel D_8098F764
/* 000457 0x8098F764 */ .word	0x4A005390
/* 000458 0x8098F768 */ .word	0x00000000
/* 000459 0x8098F76C */ .word	0x00000000
glabel objMure3OverlayInfo
/* 000460 0x8098F770 */ .word	0x000006E0
/* 000461 0x8098F774 */ .word	0x00000040
/* 000462 0x8098F778 */ .word	0x00000010
/* 000463 0x8098F77C */ .word	0x00000000
/* 000464 0x8098F780 */ .word	0x0000001E
glabel objMure3OverlayRelocations
/* 000465 0x8098F784 */ .word	0x4500034C
/* 000466 0x8098F788 */ .word	0x46000364
/* 000467 0x8098F78C */ .word	0x45000424
/* 000468 0x8098F790 */ .word	0x4600043C
/* 000469 0x8098F794 */ .word	0x45000524
/* 000470 0x8098F798 */ .word	0x4600052C
/* 000471 0x8098F79C */ .word	0x44000530
/* 000472 0x8098F7A0 */ .word	0x45000558
/* 000473 0x8098F7A4 */ .word	0x4600055C
/* 000474 0x8098F7A8 */ .word	0x44000578
/* 000475 0x8098F7AC */ .word	0x45000590
/* 000476 0x8098F7B0 */ .word	0x46000594
/* 000477 0x8098F7B4 */ .word	0x450005C0
/* 000478 0x8098F7B8 */ .word	0x460005C4
/* 000479 0x8098F7BC */ .word	0x45000600
/* 000480 0x8098F7C0 */ .word	0x46000608
/* 000481 0x8098F7C4 */ .word	0x44000614
/* 000482 0x8098F7C8 */ .word	0x4500062C
/* 000483 0x8098F7CC */ .word	0x46000630
/* 000484 0x8098F7D0 */ .word	0x44000658
/* 000485 0x8098F7D4 */ .word	0x4500066C
/* 000486 0x8098F7D8 */ .word	0x46000670
/* 000487 0x8098F7DC */ .word	0x44000698
/* 000488 0x8098F7E0 */ .word	0x440006A0
/* 000489 0x8098F7E4 */ .word	0x82000010
/* 000490 0x8098F7E8 */ .word	0x82000014
/* 000491 0x8098F7EC */ .word	0x82000018
/* 000492 0x8098F7F0 */ .word	0x82000034
/* 000493 0x8098F7F4 */ .word	0x82000038
/* 000494 0x8098F7F8 */ .word	0x8200003C
glabel objMure3OverlayInfoOffset
/* 000495 0x8098F7FC */ .word	0x00000090
