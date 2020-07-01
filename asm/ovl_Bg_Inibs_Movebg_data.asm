.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80B96540
/* 000076 0x80B96540 */ .word	0x02270100
/* 000077 0x80B96544 */ .word	0x00000030
/* 000078 0x80B96548 */ .word	0x020C0000
/* 000079 0x80B9654C */ .word	0x00000168
/* 000080 0x80B96550 */ .word	BgInibsMovebg_Init
/* 000081 0x80B96554 */ .word	BgInibsMovebg_Destroy
/* 000082 0x80B96558 */ .word	func_800BDFB0
/* 000083 0x80B9655C */ .word	BgInibsMovebg_Draw
glabel D_80B96560
/* 000084 0x80B96560 */ .word	0x060062D8
/* 000085 0x80B96564 */ .word	0x06001DC0
glabel D_80B96568
/* 000086 0x80B96568 */ .word	0x06006140
/* 000087 0x80B9656C */ .word	0x06001C10
glabel D_80B96570
/* 000088 0x80B96570 */ .word	0x06006858
/* 000089 0x80B96574 */ .word	0x06002598
glabel D_80B96578
/* 000090 0x80B96578 */ .word	0x485803E8
/* 000091 0x80B9657C */ .word	0x00000000
glabel bgInibsMovebgOverlayInfo
/* 000092 0x80B96580 */ .word	0x00000130
/* 000093 0x80B96584 */ .word	0x00000040
/* 000094 0x80B96588 */ .word	0x00000000
/* 000095 0x80B9658C */ .word	0x00000000
/* 000096 0x80B96590 */ .word	0x0000000B
glabel bgInibsMovebgOverlayRelocations
/* 000097 0x80B96594 */ .word	0x4500000C
/* 000098 0x80B96598 */ .word	0x46000010
/* 000099 0x80B9659C */ .word	0x4500002C
/* 000100 0x80B965A0 */ .word	0x4600004C
/* 000101 0x80B965A4 */ .word	0x45000030
/* 000102 0x80B965A8 */ .word	0x46000060
/* 000103 0x80B965AC */ .word	0x4500006C
/* 000104 0x80B965B0 */ .word	0x46000078
/* 000105 0x80B965B4 */ .word	0x82000010
/* 000106 0x80B965B8 */ .word	0x82000014
/* 000107 0x80B965BC */ .word	0x8200001C
/* 000108 0x80B965C0 */ .word	0x00000000
/* 000109 0x80B965C4 */ .word	0x00000000
/* 000110 0x80B965C8 */ .word	0x00000000
glabel bgInibsMovebgOverlayInfoOffset
/* 000111 0x80B965CC */ .word	0x00000050
