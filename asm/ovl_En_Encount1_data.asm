.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_808E0DD0
/* 000360 0x808E0DD0 */ .word	0x005B0600
/* 000361 0x808E0DD4 */ .word	0x08100010
/* 000362 0x808E0DD8 */ .word	0x00010000
/* 000363 0x808E0DDC */ .word	0x00000164
/* 000364 0x808E0DE0 */ .word	EnEncount1_Init
/* 000365 0x808E0DE4 */ .word	0x00000000
/* 000366 0x808E0DE8 */ .word	EnEncount1_Update
/* 000367 0x808E0DEC */ .word	0x00000000
glabel D_808E0DF0
/* 000368 0x808E0DF0 */ .word	0x0109000A
/* 000369 0x808E0DF4 */ .word	0x01800180
glabel D_808E0DF8
/* 000370 0x808E0DF8 */ .word	0x00010000
/* 000371 0x808E0DFC */ .word	0x00010003
glabel enEncount1OverlayInfo
/* 000372 0x808E0E00 */ .word	0x000005A0
/* 000373 0x808E0E04 */ .word	0x00000030
/* 000374 0x808E0E08 */ .word	0x00000000
/* 000375 0x808E0E0C */ .word	0x00000000
/* 000376 0x808E0E10 */ .word	0x00000008
glabel enEncount1OverlayRelocations
/* 000377 0x808E0E14 */ .word	0x45000100
/* 000378 0x808E0E18 */ .word	0x46000104
/* 000379 0x808E0E1C */ .word	0x450004E0
/* 000380 0x808E0E20 */ .word	0x460004E8
/* 000381 0x808E0E24 */ .word	0x450004C4
/* 000382 0x808E0E28 */ .word	0x460004CC
/* 000383 0x808E0E2C */ .word	0x82000010
/* 000384 0x808E0E30 */ .word	0x82000018
/* 000385 0x808E0E34 */ .word	0x00000000
/* 000386 0x808E0E38 */ .word	0x00000000
glabel enEncount1OverlayInfoOffset
/* 000387 0x808E0E3C */ .word	0x00000040
