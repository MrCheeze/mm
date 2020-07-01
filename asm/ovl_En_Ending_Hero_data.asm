.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80C1E950
/* 000176 0x80C1E950 */ .word	0x02A20400
/* 000177 0x80C1E954 */ .word	0x00000009
/* 000178 0x80C1E958 */ .word	0x02410000
/* 000179 0x80C1E95C */ .word	0x00000248
/* 000180 0x80C1E960 */ .word	EnEndingHero_Init
/* 000181 0x80C1E964 */ .word	EnEndingHero_Destroy
/* 000182 0x80C1E968 */ .word	EnEndingHero_Update
/* 000183 0x80C1E96C */ .word	EnEndingHero_Draw
glabel D_80C1E970
/* 000184 0x80C1E970 */ .word	0x06007350
/* 000185 0x80C1E974 */ .word	0x06009590
/* 000186 0x80C1E978 */ .word	0x06009F90
/* 000187 0x80C1E97C */ .word	0x0600A790
/* 000188 0x80C1E980 */ .word	0x0600AB90
glabel D_80C1E984
/* 000189 0x80C1E984 */ .word	0x06007750
/* 000190 0x80C1E988 */ .word	0x0600A390
/* 000191 0x80C1E98C */ .word	0x0600A490
glabel enEndingHeroOverlayInfo
/* 000192 0x80C1E990 */ .word	0x000002C0
/* 000193 0x80C1E994 */ .word	0x00000040
/* 000194 0x80C1E998 */ .word	0x00000000
/* 000195 0x80C1E99C */ .word	0x00000000
/* 000196 0x80C1E9A0 */ .word	0x0000000B
glabel enEndingHeroOverlayRelocations
/* 000197 0x80C1E9A4 */ .word	0x4400008C
/* 000198 0x80C1E9A8 */ .word	0x450000B8
/* 000199 0x80C1E9AC */ .word	0x460000C0
/* 000200 0x80C1E9B0 */ .word	0x45000210
/* 000201 0x80C1E9B4 */ .word	0x46000224
/* 000202 0x80C1E9B8 */ .word	0x45000260
/* 000203 0x80C1E9BC */ .word	0x46000274
/* 000204 0x80C1E9C0 */ .word	0x82000010
/* 000205 0x80C1E9C4 */ .word	0x82000014
/* 000206 0x80C1E9C8 */ .word	0x82000018
/* 000207 0x80C1E9CC */ .word	0x8200001C
/* 000208 0x80C1E9D0 */ .word	0x00000000
/* 000209 0x80C1E9D4 */ .word	0x00000000
/* 000210 0x80C1E9D8 */ .word	0x00000000
glabel enEndingHeroOverlayInfoOffset
/* 000211 0x80C1E9DC */ .word	0x00000050
