.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80BE21D0
/* 000104 0x80BE21D0 */ .word	0x02650700
/* 000105 0x80BE21D4 */ .word	0x00000010
/* 000106 0x80BE21D8 */ .word	0x00010000
/* 000107 0x80BE21DC */ .word	0x00000194
/* 000108 0x80BE21E0 */ .word	EnHitTag_Init
/* 000109 0x80BE21E4 */ .word	EnHitTag_Destroy
/* 000110 0x80BE21E8 */ .word	EnHitTag_Update
/* 000111 0x80BE21EC */ .word	0x00000000
glabel D_80BE21F0
/* 000112 0x80BE21F0 */ .word	0x0A000909
/* 000113 0x80BE21F4 */ .word	0x10010000
/* 000114 0x80BE21F8 */ .word	0x00000000
/* 000115 0x80BE21FC */ .word	0x00000000
/* 000116 0x80BE2200 */ .word	0x00000000
/* 000117 0x80BE2204 */ .word	0xF7CFFFFF
/* 000118 0x80BE2208 */ .word	0x00000000
/* 000119 0x80BE220C */ .word	0x00010000
/* 000120 0x80BE2210 */ .word	0x00100020
/* 000121 0x80BE2214 */ .word	0x00000000
/* 000122 0x80BE2218 */ .word	0x00000000
/* 000123 0x80BE221C */ .word	0x00000000
glabel enHitTagOverlayInfo
/* 000124 0x80BE2220 */ .word	0x000001A0
/* 000125 0x80BE2224 */ .word	0x00000050
/* 000126 0x80BE2228 */ .word	0x00000000
/* 000127 0x80BE222C */ .word	0x00000000
/* 000128 0x80BE2230 */ .word	0x00000007
glabel enHitTagOverlayRelocations
/* 000129 0x80BE2234 */ .word	0x45000020
/* 000130 0x80BE2238 */ .word	0x46000024
/* 000131 0x80BE223C */ .word	0x45000030
/* 000132 0x80BE2240 */ .word	0x46000034
/* 000133 0x80BE2244 */ .word	0x82000010
/* 000134 0x80BE2248 */ .word	0x82000014
/* 000135 0x80BE224C */ .word	0x82000018
/* 000136 0x80BE2250 */ .word	0x00000000
/* 000137 0x80BE2254 */ .word	0x00000000
/* 000138 0x80BE2258 */ .word	0x00000000
glabel enHitTagOverlayInfoOffset
/* 000139 0x80BE225C */ .word	0x00000040
