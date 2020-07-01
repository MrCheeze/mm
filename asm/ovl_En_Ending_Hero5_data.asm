.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80C23BD0
/* 000196 0x80C23BD0 */ .word	0x02AB0400
/* 000197 0x80C23BD4 */ .word	0x00000009
/* 000198 0x80C23BD8 */ .word	0x00F10000
/* 000199 0x80C23BDC */ .word	0x00000260
/* 000200 0x80C23BE0 */ .word	EnEndingHero5_Init
/* 000201 0x80C23BE4 */ .word	EnEndingHero5_Destroy
/* 000202 0x80C23BE8 */ .word	EnEndingHero5_Update
/* 000203 0x80C23BEC */ .word	EnEndingHero5_Draw
glabel D_80C23BF0
/* 000204 0x80C23BF0 */ .word	0x060070C0
/* 000205 0x80C23BF4 */ .word	0x06006FB0
/* 000206 0x80C23BF8 */ .word	0x06006E80
/* 000207 0x80C23BFC */ .word	0x06006D70
/* 000208 0x80C23C00 */ .word	0x0600A390
/* 000209 0x80C23C04 */ .word	0x00000000
/* 000210 0x80C23C08 */ .word	0x00000000
/* 000211 0x80C23C0C */ .word	0x00000000
glabel __switch_D_80C23C10
/* 000212 0x80C23C10 */ .word	.L_80C23AD4
/* 000213 0x80C23C14 */ .word	.L_80C23AFC
/* 000214 0x80C23C18 */ .word	.L_80C23B24
/* 000215 0x80C23C1C */ .word	.L_80C23B4C
/* 000216 0x80C23C20 */ .word	.L_80C23B74
/* 000217 0x80C23C24 */ .word	0x00000000
/* 000218 0x80C23C28 */ .word	0x00000000
/* 000219 0x80C23C2C */ .word	0x00000000
glabel enEndingHero5OverlayInfo
/* 000220 0x80C23C30 */ .word	0x00000310
/* 000221 0x80C23C34 */ .word	0x00000040
/* 000222 0x80C23C38 */ .word	0x00000020
/* 000223 0x80C23C3C */ .word	0x00000000
/* 000224 0x80C23C40 */ .word	0x00000012
glabel enEndingHero5OverlayRelocations
/* 000225 0x80C23C44 */ .word	0x44000094
/* 000226 0x80C23C48 */ .word	0x450000C0
/* 000227 0x80C23C4C */ .word	0x460000C8
/* 000228 0x80C23C50 */ .word	0x4500018C
/* 000229 0x80C23C54 */ .word	0x460001AC
/* 000230 0x80C23C58 */ .word	0x45000200
/* 000231 0x80C23C5C */ .word	0x46000208
/* 000232 0x80C23C60 */ .word	0x450002E0
/* 000233 0x80C23C64 */ .word	0x460002E4
/* 000234 0x80C23C68 */ .word	0x82000010
/* 000235 0x80C23C6C */ .word	0x82000014
/* 000236 0x80C23C70 */ .word	0x82000018
/* 000237 0x80C23C74 */ .word	0x8200001C
/* 000238 0x80C23C78 */ .word	0xC2000000
/* 000239 0x80C23C7C */ .word	0xC2000004
/* 000240 0x80C23C80 */ .word	0xC2000008
/* 000241 0x80C23C84 */ .word	0xC200000C
/* 000242 0x80C23C88 */ .word	0xC2000010
glabel enEndingHero5OverlayInfoOffset
/* 000243 0x80C23C8C */ .word	0x00000060
