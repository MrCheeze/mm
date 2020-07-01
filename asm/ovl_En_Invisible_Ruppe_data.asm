.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80C25B30
/* 000164 0x80C25B30 */ .word	0x02AF0400
/* 000165 0x80C25B34 */ .word	0x00000000
/* 000166 0x80C25B38 */ .word	0x00010000
/* 000167 0x80C25B3C */ .word	0x00000198
/* 000168 0x80C25B40 */ .word	EnInvisibleRuppe_Init
/* 000169 0x80C25B44 */ .word	EnInvisibleRuppe_Destroy
/* 000170 0x80C25B48 */ .word	EnInvisibleRuppe_Update
/* 000171 0x80C25B4C */ .word	0x00000000
glabel D_80C25B50
/* 000172 0x80C25B50 */ .word	0x0A00000D
/* 000173 0x80C25B54 */ .word	0x20010000
/* 000174 0x80C25B58 */ .word	0x04000000
/* 000175 0x80C25B5C */ .word	0x00000000
/* 000176 0x80C25B60 */ .word	0x00000000
/* 000177 0x80C25B64 */ .word	0x00000000
/* 000178 0x80C25B68 */ .word	0x00000000
/* 000179 0x80C25B6C */ .word	0x00000100
/* 000180 0x80C25B70 */ .word	0x000A001E
/* 000181 0x80C25B74 */ .word	0x00000000
/* 000182 0x80C25B78 */ .word	0x00000000
/* 000183 0x80C25B7C */ .word	0x00000000
glabel enInvisibleRuppeOverlayInfo
/* 000184 0x80C25B80 */ .word	0x00000290
/* 000185 0x80C25B84 */ .word	0x00000050
/* 000186 0x80C25B88 */ .word	0x00000000
/* 000187 0x80C25B8C */ .word	0x00000000
/* 000188 0x80C25B90 */ .word	0x0000000A
glabel enInvisibleRuppeOverlayRelocations
/* 000189 0x80C25B94 */ .word	0x45000128
/* 000190 0x80C25B98 */ .word	0x4600012C
/* 000191 0x80C25B9C */ .word	0x450001E4
/* 000192 0x80C25BA0 */ .word	0x460001EC
/* 000193 0x80C25BA4 */ .word	0x450001FC
/* 000194 0x80C25BA8 */ .word	0x46000200
/* 000195 0x80C25BAC */ .word	0x4400026C
/* 000196 0x80C25BB0 */ .word	0x82000010
/* 000197 0x80C25BB4 */ .word	0x82000014
/* 000198 0x80C25BB8 */ .word	0x82000018
glabel enInvisibleRuppeOverlayInfoOffset
/* 000199 0x80C25BBC */ .word	0x00000040
