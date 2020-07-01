.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80099300
/* 025768 0x80099300 */ .word	0x686C4C00
glabel D_80099304
/* 025769 0x80099304 */ .word	0x202B2D23
/* 025770 0x80099308 */ .word	0x30000000
glabel D_8009930C
/* 025771 0x8009930C */ .word	0x00000001
/* 025772 0x80099310 */ .word	0x00000002
/* 025773 0x80099314 */ .word	0x00000004
/* 025774 0x80099318 */ .word	0x00000008
/* 025775 0x8009931C */ .word	0x00000010
/* 025776 0x80099320 */ .word	0x00000000
glabel __switch_D_80099324
/* 025777 0x80099324 */ .word	.L_8008EA18
/* 025778 0x80099328 */ .word	.L_8008ECFC
/* 025779 0x8009932C */ .word	.L_8008EA18
/* 025780 0x80099330 */ .word	.L_8008ECFC
/* 025781 0x80099334 */ .word	.L_8008ECFC
/* 025782 0x80099338 */ .word	.L_8008ECFC
/* 025783 0x8009933C */ .word	.L_8008ECFC
/* 025784 0x80099340 */ .word	.L_8008ECFC
/* 025785 0x80099344 */ .word	.L_8008ECFC
/* 025786 0x80099348 */ .word	.L_8008ECFC
/* 025787 0x8009934C */ .word	.L_8008ECFC
/* 025788 0x80099350 */ .word	.L_8008ECFC
/* 025789 0x80099354 */ .word	.L_8008ECFC
/* 025790 0x80099358 */ .word	.L_8008ECFC
/* 025791 0x8009935C */ .word	.L_8008ECFC
/* 025792 0x80099360 */ .word	.L_8008ECFC
/* 025793 0x80099364 */ .word	.L_8008ECFC
/* 025794 0x80099368 */ .word	.L_8008ECFC
/* 025795 0x8009936C */ .word	.L_8008ECFC
/* 025796 0x80099370 */ .word	.L_8008E8C4
/* 025797 0x80099374 */ .word	.L_8008ECFC
/* 025798 0x80099378 */ .word	.L_8008ECFC
/* 025799 0x8009937C */ .word	.L_8008ECFC
/* 025800 0x80099380 */ .word	.L_8008ECFC
/* 025801 0x80099384 */ .word	.L_8008ECFC
/* 025802 0x80099388 */ .word	.L_8008ECFC
/* 025803 0x8009938C */ .word	.L_8008ECFC
/* 025804 0x80099390 */ .word	.L_8008ECFC
/* 025805 0x80099394 */ .word	.L_8008ECFC
/* 025806 0x80099398 */ .word	.L_8008ECFC
/* 025807 0x8009939C */ .word	.L_8008E718
/* 025808 0x800993A0 */ .word	.L_8008E750
/* 025809 0x800993A4 */ .word	.L_8008EA18
/* 025810 0x800993A8 */ .word	.L_8008EA18
/* 025811 0x800993AC */ .word	.L_8008EA18
/* 025812 0x800993B0 */ .word	.L_8008ECFC
/* 025813 0x800993B4 */ .word	.L_8008E750
/* 025814 0x800993B8 */ .word	.L_8008ECFC
/* 025815 0x800993BC */ .word	.L_8008ECFC
/* 025816 0x800993C0 */ .word	.L_8008ECFC
/* 025817 0x800993C4 */ .word	.L_8008ECFC
/* 025818 0x800993C8 */ .word	.L_8008EB80
/* 025819 0x800993CC */ .word	.L_8008E8C4
/* 025820 0x800993D0 */ .word	.L_8008EC50
/* 025821 0x800993D4 */ .word	.L_8008ECFC
/* 025822 0x800993D8 */ .word	.L_8008ECFC
/* 025823 0x800993DC */ .word	.L_8008EC98
/* 025824 0x800993E0 */ .word	.L_8008ECFC
/* 025825 0x800993E4 */ .word	.L_8008E8C4
/* 025826 0x800993E8 */ .word	.L_8008ECFC
/* 025827 0x800993EC */ .word	.L_8008ECFC
/* 025828 0x800993F0 */ .word	.L_8008E8C4
/* 025829 0x800993F4 */ .word	0x00000000
/* 025830 0x800993F8 */ .word	0x00000000
/* 025831 0x800993FC */ .word	0x00000000
