.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80C089E0
/* 000160 0x80C089E0 */ .word	0x02890600
/* 000161 0x80C089E4 */ .word	0x00000019
/* 000162 0x80C089E8 */ .word	0x025B0000
/* 000163 0x80C089EC */ .word	0x00000194
/* 000164 0x80C089F0 */ .word	EnNnh_Init
/* 000165 0x80C089F4 */ .word	EnNnh_Destroy
/* 000166 0x80C089F8 */ .word	EnNnh_Update
/* 000167 0x80C089FC */ .word	EnNnh_Draw
glabel D_80C08A00
/* 000168 0x80C08A00 */ .word	0x0D000939
/* 000169 0x80C08A04 */ .word	0x10010000
/* 000170 0x80C08A08 */ .word	0x01000000
/* 000171 0x80C08A0C */ .word	0x00000000
/* 000172 0x80C08A10 */ .word	0x00000000
/* 000173 0x80C08A14 */ .word	0xF7CFFFFF
/* 000174 0x80C08A18 */ .word	0x00000000
/* 000175 0x80C08A1C */ .word	0x00010100
/* 000176 0x80C08A20 */ .word	0x00140032
/* 000177 0x80C08A24 */ .word	0x00000000
/* 000178 0x80C08A28 */ .word	0x00000000
/* 000179 0x80C08A2C */ .word	0x00000000
glabel enNnhOverlayInfo
/* 000180 0x80C08A30 */ .word	0x00000280
/* 000181 0x80C08A34 */ .word	0x00000050
/* 000182 0x80C08A38 */ .word	0x00000000
/* 000183 0x80C08A3C */ .word	0x00000000
/* 000184 0x80C08A40 */ .word	0x0000000D
glabel enNnhOverlayRelocations
/* 000185 0x80C08A44 */ .word	0x45000034
/* 000186 0x80C08A48 */ .word	0x4600003C
/* 000187 0x80C08A4C */ .word	0x44000080
/* 000188 0x80C08A50 */ .word	0x450000C8
/* 000189 0x80C08A54 */ .word	0x460000CC
/* 000190 0x80C08A58 */ .word	0x44000114
/* 000191 0x80C08A5C */ .word	0x45000144
/* 000192 0x80C08A60 */ .word	0x46000148
/* 000193 0x80C08A64 */ .word	0x44000174
/* 000194 0x80C08A68 */ .word	0x82000010
/* 000195 0x80C08A6C */ .word	0x82000014
/* 000196 0x80C08A70 */ .word	0x82000018
/* 000197 0x80C08A74 */ .word	0x8200001C
/* 000198 0x80C08A78 */ .word	0x00000000
glabel enNnhOverlayInfoOffset
/* 000199 0x80C08A7C */ .word	0x00000050
