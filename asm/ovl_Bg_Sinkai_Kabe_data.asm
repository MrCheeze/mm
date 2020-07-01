.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80B6DB50
/* 000316 0x80B6DB50 */ .word	0x020C0700
/* 000317 0x80B6DB54 */ .word	0x00000010
/* 000318 0x80B6DB58 */ .word	0x01F40000
/* 000319 0x80B6DB5C */ .word	0x00000170
/* 000320 0x80B6DB60 */ .word	BgSinkaiKabe_Init
/* 000321 0x80B6DB64 */ .word	BgSinkaiKabe_Destroy
/* 000322 0x80B6DB68 */ .word	BgSinkaiKabe_Update
/* 000323 0x80B6DB6C */ .word	0x00000000
glabel D_80B6DB70
/* 000324 0x80B6DB70 */ .word	0x00000000
/* 000325 0x80B6DB74 */ .word	0x00000000
/* 000326 0x80B6DB78 */ .word	0x00000000
/* 000327 0x80B6DB7C */ .word	0x00000000
glabel D_80B6DB80
/* 000328 0x80B6DB80 */ .word	0x453B8000
glabel D_80B6DB84
/* 000329 0x80B6DB84 */ .word	0x453B8000
glabel D_80B6DB88
/* 000330 0x80B6DB88 */ .word	0x3DCCCCCD
/* 000331 0x80B6DB8C */ .word	0x00000000
glabel bgSinkaiKabeOverlayInfo
/* 000332 0x80B6DB90 */ .word	0x000004F0
/* 000333 0x80B6DB94 */ .word	0x00000030
/* 000334 0x80B6DB98 */ .word	0x00000010
/* 000335 0x80B6DB9C */ .word	0x00000000
/* 000336 0x80B6DBA0 */ .word	0x0000000D
glabel bgSinkaiKabeOverlayRelocations
/* 000337 0x80B6DBA4 */ .word	0x4500007C
/* 000338 0x80B6DBA8 */ .word	0x46000080
/* 000339 0x80B6DBAC */ .word	0x450000AC
/* 000340 0x80B6DBB0 */ .word	0x460000B0
/* 000341 0x80B6DBB4 */ .word	0x450000FC
/* 000342 0x80B6DBB8 */ .word	0x46000100
/* 000343 0x80B6DBBC */ .word	0x450000F4
/* 000344 0x80B6DBC0 */ .word	0x460000F8
/* 000345 0x80B6DBC4 */ .word	0x45000368
/* 000346 0x80B6DBC8 */ .word	0x4600036C
/* 000347 0x80B6DBCC */ .word	0x82000010
/* 000348 0x80B6DBD0 */ .word	0x82000014
/* 000349 0x80B6DBD4 */ .word	0x82000018
/* 000350 0x80B6DBD8 */ .word	0x00000000
glabel bgSinkaiKabeOverlayInfoOffset
/* 000351 0x80B6DBDC */ .word	0x00000050
