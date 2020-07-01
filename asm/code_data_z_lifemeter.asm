.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_801BE990
/* 287668 0x801BE990 */ .short	0x00FF
glabel D_801BE992
/* 287668 0x801BE990 */ .short	0x0046
glabel D_801BE994
/* 287669 0x801BE994 */ .word	0x003200FF
/* 287670 0x801BE998 */ .word	0x00BE0000
/* 287671 0x801BE99C */ .word	0x00640064
/* 287672 0x801BE9A0 */ .word	0x00FF0000
glabel D_801BE9A4
/* 287673 0x801BE9A4 */ .short	0x0032
glabel D_801BE9A6
/* 287673 0x801BE9A4 */ .short	0x0028
glabel D_801BE9A8
/* 287674 0x801BE9A8 */ .word	0x003C00FF
/* 287675 0x801BE9AC */ .word	0x00000000
/* 287676 0x801BE9B0 */ .word	0x00000000
/* 287677 0x801BE9B4 */ .word	0x00FF0000
glabel D_801BE9B8
/* 287678 0x801BE9B8 */ .word	0x00000000
/* 287679 0x801BE9BC */ .word	0x00000000
/* 287680 0x801BE9C0 */ .word	0x0078FFCE
/* 287681 0x801BE9C4 */ .word	0xFF65001E
/* 287682 0x801BE9C8 */ .word	0x00CD0000
glabel D_801BE9CC
/* 287683 0x801BE9CC */ .word	0x00000000
/* 287684 0x801BE9D0 */ .word	0x000000CD
/* 287685 0x801BE9D4 */ .word	0xFFD8FFC4
/* 287686 0x801BE9D8 */ .word	0xFFCEFFD8
/* 287687 0x801BE9DC */ .word	0x00C30000
glabel D_801BE9E0
/* 287688 0x801BE9E0 */ .short	0x00FF
glabel D_801BE9E2
/* 287688 0x801BE9E0 */ .short	0x00FF
glabel D_801BE9E4
/* 287689 0x801BE9E4 */ .word	0x00FF00FF
/* 287690 0x801BE9E8 */ .word	0x00BE0000
/* 287691 0x801BE9EC */ .word	0x00640064
/* 287692 0x801BE9F0 */ .word	0x00FF0000
glabel D_801BE9F4
/* 287693 0x801BE9F4 */ .short	0x00C8
glabel D_801BE9F6
/* 287693 0x801BE9F4 */ .short	0x0000
glabel D_801BE9F8
/* 287694 0x801BE9F8 */ .word	0x000000FF
/* 287695 0x801BE9FC */ .word	0x00000000
/* 287696 0x801BEA00 */ .word	0x00000000
/* 287697 0x801BEA04 */ .word	0x00FF0000
glabel D_801BEA08
/* 287698 0x801BEA08 */ .short	0x0000
glabel D_801BEA0A
/* 287698 0x801BEA08 */ .short	0x0000
glabel D_801BEA0C
/* 287699 0x801BEA0C */ .word	0x00000000
/* 287700 0x801BEA10 */ .word	0xFFBFFF01
/* 287701 0x801BEA14 */ .word	0xFF65FF65
/* 287702 0x801BEA18 */ .word	0x00000000
glabel D_801BEA1C
/* 287703 0x801BEA1C */ .short	0x0000
glabel D_801BEA1E
/* 287703 0x801BEA1C */ .short	0x0000
glabel D_801BEA20
/* 287704 0x801BEA20 */ .word	0x00000037
/* 287705 0x801BEA24 */ .word	0x00000000
/* 287706 0x801BEA28 */ .word	0xFF380000
/* 287707 0x801BEA2C */ .word	0x00FF0000
glabel D_801BEA30
/* 287708 0x801BEA30 */ .word	0x02000400
/* 287709 0x801BEA34 */ .word	0x02000100
/* 287710 0x801BEA38 */ .word	0x02000100
/* 287711 0x801BEA3C */ .word	0x02000100
/* 287712 0x801BEA40 */ .word	0x02000100
/* 287713 0x801BEA44 */ .word	0x02000100
/* 287714 0x801BEA48 */ .word	0x02000200
/* 287715 0x801BEA4C */ .word	0x02000200
/* 287716 0x801BEA50 */ .word	0x02000200
/* 287717 0x801BEA54 */ .word	0x02000200
/* 287718 0x801BEA58 */ .word	0x02000200
/* 287719 0x801BEA5C */ .word	0x02000300
/* 287720 0x801BEA60 */ .word	0x02000300
/* 287721 0x801BEA64 */ .word	0x02000300
/* 287722 0x801BEA68 */ .word	0x02000300
/* 287723 0x801BEA6C */ .word	0x02000300
glabel D_801BEA70
/* 287724 0x801BEA70 */ .word	0x02000900
/* 287725 0x801BEA74 */ .word	0x02000600
/* 287726 0x801BEA78 */ .word	0x02000600
/* 287727 0x801BEA7C */ .word	0x02000600
/* 287728 0x801BEA80 */ .word	0x02000600
/* 287729 0x801BEA84 */ .word	0x02000600
/* 287730 0x801BEA88 */ .word	0x02000700
/* 287731 0x801BEA8C */ .word	0x02000700
/* 287732 0x801BEA90 */ .word	0x02000700
/* 287733 0x801BEA94 */ .word	0x02000700
/* 287734 0x801BEA98 */ .word	0x02000700
/* 287735 0x801BEA9C */ .word	0x02000800
/* 287736 0x801BEAA0 */ .word	0x02000800
/* 287737 0x801BEAA4 */ .word	0x02000800
/* 287738 0x801BEAA8 */ .word	0x02000800
/* 287739 0x801BEAAC */ .word	0x02000800
