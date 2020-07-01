.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_8092C570
/* 000016 0x8092C570 */ .word	0x00890500
/* 000017 0x8092C574 */ .word	0x00000030
/* 000018 0x8092C578 */ .word	0x01530000
/* 000019 0x8092C57C */ .word	0x000012D0
/* 000020 0x8092C580 */ .word	DemoShd_Init
/* 000021 0x8092C584 */ .word	DemoShd_Destroy
/* 000022 0x8092C588 */ .word	DemoShd_Update
/* 000023 0x8092C58C */ .word	DemoShd_Draw
glabel demoShdOverlayInfo
/* 000024 0x8092C590 */ .word	0x00000040
/* 000025 0x8092C594 */ .word	0x00000020
/* 000026 0x8092C598 */ .word	0x00000000
/* 000027 0x8092C59C */ .word	0x00000000
/* 000028 0x8092C5A0 */ .word	0x00000004
glabel demoShdOverlayRelocations
/* 000029 0x8092C5A4 */ .word	0x82000010
/* 000030 0x8092C5A8 */ .word	0x82000014
/* 000031 0x8092C5AC */ .word	0x82000018
/* 000032 0x8092C5B0 */ .word	0x8200001C
/* 000033 0x8092C5B4 */ .word	0x00000000
/* 000034 0x8092C5B8 */ .word	0x00000000
glabel demoShdOverlayInfoOffset
/* 000035 0x8092C5BC */ .word	0x00000030
