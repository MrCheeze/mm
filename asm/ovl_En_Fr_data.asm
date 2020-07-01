.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_808FC670
/* 000072 0x808FC670 */ .word	0x00730700
/* 000073 0x808FC674 */ .word	0x40000000
/* 000074 0x808FC678 */ .word	0x00010000
/* 000075 0x808FC67C */ .word	0x00000144
/* 000076 0x808FC680 */ .word	EnFr_Init
/* 000077 0x808FC684 */ .word	EnFr_Destroy
/* 000078 0x808FC688 */ .word	EnFr_Update
/* 000079 0x808FC68C */ .word	0x00000000
glabel enFrOverlayInfo
/* 000080 0x808FC690 */ .word	0x00000120
/* 000081 0x808FC694 */ .word	0x00000020
/* 000082 0x808FC698 */ .word	0x00000000
/* 000083 0x808FC69C */ .word	0x00000000
/* 000084 0x808FC6A0 */ .word	0x00000003
glabel enFrOverlayRelocations
/* 000085 0x808FC6A4 */ .word	0x82000010
/* 000086 0x808FC6A8 */ .word	0x82000014
/* 000087 0x808FC6AC */ .word	0x82000018
/* 000088 0x808FC6B0 */ .word	0x00000000
/* 000089 0x808FC6B4 */ .word	0x00000000
/* 000090 0x808FC6B8 */ .word	0x00000000
glabel enFrOverlayInfoOffset
/* 000091 0x808FC6BC */ .word	0x00000030
