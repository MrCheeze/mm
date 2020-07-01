.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80B96140
/* 000200 0x80B96140 */ .word	0x02250100
/* 000201 0x80B96144 */ .word	0x00000000
/* 000202 0x80B96148 */ .word	0x02070000
/* 000203 0x80B9614C */ .word	0x00000164
/* 000204 0x80B96150 */ .word	ObjRotlift_Init
/* 000205 0x80B96154 */ .word	ObjRotlift_Destroy
/* 000206 0x80B96158 */ .word	ObjRotlift_Update
/* 000207 0x80B9615C */ .word	ObjRotlift_Draw
glabel D_80B96160
/* 000208 0x80B96160 */ .word	0x06000400
/* 000209 0x80B96164 */ .word	0x06001F98
/* 000210 0x80B96168 */ .word	0x06002190
/* 000211 0x80B9616C */ .word	0x06002CE0
/* 000212 0x80B96170 */ .word	0x06004A08
/* 000213 0x80B96174 */ .word	0x06004DF0
glabel D_80B96178
/* 000214 0x80B96178 */ .word	0xC8580064
/* 000215 0x80B9617C */ .word	0xB0FC0FA0
/* 000216 0x80B96180 */ .word	0xB1000320
/* 000217 0x80B96184 */ .word	0x31040320
/* 000218 0x80B96188 */ .word	0x00000000
/* 000219 0x80B9618C */ .word	0x00000000
glabel objRotliftOverlayInfo
/* 000220 0x80B96190 */ .word	0x00000320
/* 000221 0x80B96194 */ .word	0x00000050
/* 000222 0x80B96198 */ .word	0x00000000
/* 000223 0x80B9619C */ .word	0x00000000
/* 000224 0x80B961A0 */ .word	0x0000000C
glabel objRotliftOverlayRelocations
/* 000225 0x80B961A4 */ .word	0x4500011C
/* 000226 0x80B961A8 */ .word	0x46000120
/* 000227 0x80B961AC */ .word	0x440001C4
/* 000228 0x80B961B0 */ .word	0x450001DC
/* 000229 0x80B961B4 */ .word	0x460001E0
/* 000230 0x80B961B8 */ .word	0x44000284
/* 000231 0x80B961BC */ .word	0x450002D4
/* 000232 0x80B961C0 */ .word	0x460002D8
/* 000233 0x80B961C4 */ .word	0x82000010
/* 000234 0x80B961C8 */ .word	0x82000014
/* 000235 0x80B961CC */ .word	0x82000018
/* 000236 0x80B961D0 */ .word	0x8200001C
/* 000237 0x80B961D4 */ .word	0x00000000
/* 000238 0x80B961D8 */ .word	0x00000000
glabel objRotliftOverlayInfoOffset
/* 000239 0x80B961DC */ .word	0x00000050
