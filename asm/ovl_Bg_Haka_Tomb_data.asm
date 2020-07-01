.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80BD6880
/* 000192 0x80BD6880 */ .word	0x02590100
/* 000193 0x80BD6884 */ .word	0x00000000
/* 000194 0x80BD6888 */ .word	0x01E00000
/* 000195 0x80BD688C */ .word	0x00000164
/* 000196 0x80BD6890 */ .word	BgHakaTomb_Init
/* 000197 0x80BD6894 */ .word	BgHakaTomb_Destroy
/* 000198 0x80BD6898 */ .word	BgHakaTomb_Update
/* 000199 0x80BD689C */ .word	BgHakaTomb_Draw
glabel D_80BD68A0
/* 000200 0x80BD68A0 */ .word	0x48580064
glabel D_80BD68A4
/* 000201 0x80BD68A4 */ .word	0x41F00000
/* 000202 0x80BD68A8 */ .word	0x42B40000
/* 000203 0x80BD68AC */ .word	0x00000000
glabel bgHakaTombOverlayInfo
/* 000204 0x80BD68B0 */ .word	0x00000300
/* 000205 0x80BD68B4 */ .word	0x00000030
/* 000206 0x80BD68B8 */ .word	0x00000000
/* 000207 0x80BD68BC */ .word	0x00000000
/* 000208 0x80BD68C0 */ .word	0x00000012
glabel bgHakaTombOverlayRelocations
/* 000209 0x80BD68C4 */ .word	0x45000014
/* 000210 0x80BD68C8 */ .word	0x46000018
/* 000211 0x80BD68CC */ .word	0x44000054
/* 000212 0x80BD68D0 */ .word	0x450000A4
/* 000213 0x80BD68D4 */ .word	0x460000A8
/* 000214 0x80BD68D8 */ .word	0x44000164
/* 000215 0x80BD68DC */ .word	0x440001A0
/* 000216 0x80BD68E0 */ .word	0x450001D4
/* 000217 0x80BD68E4 */ .word	0x460001D8
/* 000218 0x80BD68E8 */ .word	0x44000210
/* 000219 0x80BD68EC */ .word	0x45000228
/* 000220 0x80BD68F0 */ .word	0x4600022C
/* 000221 0x80BD68F4 */ .word	0x45000290
/* 000222 0x80BD68F8 */ .word	0x46000294
/* 000223 0x80BD68FC */ .word	0x82000010
/* 000224 0x80BD6900 */ .word	0x82000014
/* 000225 0x80BD6904 */ .word	0x82000018
/* 000226 0x80BD6908 */ .word	0x8200001C
glabel bgHakaTombOverlayInfoOffset
/* 000227 0x80BD690C */ .word	0x00000060
