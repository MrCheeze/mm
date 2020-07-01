.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_808BD160
/* 000220 0x808BD160 */ .word	0x003A0900
/* 000221 0x808BD164 */ .word	0x00000000
/* 000222 0x808BD168 */ .word	0x00960000
/* 000223 0x808BD16C */ .word	0x0000016C
/* 000224 0x808BD170 */ .word	ItemBHeart_Init
/* 000225 0x808BD174 */ .word	ItemBHeart_Destroy
/* 000226 0x808BD178 */ .word	ItemBHeart_Update
/* 000227 0x808BD17C */ .word	ItemBHeart_Draw
glabel D_808BD180
/* 000228 0x808BD180 */ .word	0xC8580000
/* 000229 0x808BD184 */ .word	0xB0FC0FA0
/* 000230 0x808BD188 */ .word	0xB1000320
/* 000231 0x808BD18C */ .word	0x31040320
glabel D_808BD190
/* 000232 0x808BD190 */ .word	0x3DCCCCCD
/* 000233 0x808BD194 */ .word	0x00000000
/* 000234 0x808BD198 */ .word	0x00000000
/* 000235 0x808BD19C */ .word	0x00000000
glabel itemBHeartOverlayInfo
/* 000236 0x808BD1A0 */ .word	0x00000370
/* 000237 0x808BD1A4 */ .word	0x00000030
/* 000238 0x808BD1A8 */ .word	0x00000010
/* 000239 0x808BD1AC */ .word	0x00000000
/* 000240 0x808BD1B0 */ .word	0x00000009
glabel itemBHeartOverlayRelocations
/* 000241 0x808BD1B4 */ .word	0x45000038
/* 000242 0x808BD1B8 */ .word	0x46000040
/* 000243 0x808BD1BC */ .word	0x45000068
/* 000244 0x808BD1C0 */ .word	0x4600006C
/* 000245 0x808BD1C4 */ .word	0x440000E0
/* 000246 0x808BD1C8 */ .word	0x82000010
/* 000247 0x808BD1CC */ .word	0x82000014
/* 000248 0x808BD1D0 */ .word	0x82000018
/* 000249 0x808BD1D4 */ .word	0x8200001C
/* 000250 0x808BD1D8 */ .word	0x00000000
glabel itemBHeartOverlayInfoOffset
/* 000251 0x808BD1DC */ .word	0x00000040
