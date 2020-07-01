.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80973B80
/* 000336 0x80973B80 */ .word	0x00D00600
/* 000337 0x80973B84 */ .word	0x00000009
/* 000338 0x80973B88 */ .word	0x00010000
/* 000339 0x80973B8C */ .word	0x000001A0
/* 000340 0x80973B90 */ .word	ShotSun_Init
/* 000341 0x80973B94 */ .word	ShotSun_Destroy
/* 000342 0x80973B98 */ .word	ShotSun_Update
/* 000343 0x80973B9C */ .word	0x00000000
glabel D_80973BA0
/* 000344 0x80973BA0 */ .word	0x0A000939
/* 000345 0x80973BA4 */ .word	0x10010000
/* 000346 0x80973BA8 */ .word	0x00000000
/* 000347 0x80973BAC */ .word	0x00000000
/* 000348 0x80973BB0 */ .word	0x00000000
/* 000349 0x80973BB4 */ .word	0x00000020
/* 000350 0x80973BB8 */ .word	0x00000000
/* 000351 0x80973BBC */ .word	0x00010100
/* 000352 0x80973BC0 */ .word	0x001E003C
/* 000353 0x80973BC4 */ .word	0x00000000
/* 000354 0x80973BC8 */ .word	0x00000000
/* 000355 0x80973BCC */ .word	0x00000000
glabel D_80973BD0
/* 000356 0x80973BD0 */ .word	0x45E2E800
glabel D_80973BD4
/* 000357 0x80973BD4 */ .word	0x45E2E800
glabel D_80973BD8
/* 000358 0x80973BD8 */ .word	0x3E2AAAAB
/* 000359 0x80973BDC */ .word	0x00000000
glabel shotSunOverlayInfo
/* 000360 0x80973BE0 */ .word	0x00000540
/* 000361 0x80973BE4 */ .word	0x00000050
/* 000362 0x80973BE8 */ .word	0x00000010
/* 000363 0x80973BEC */ .word	0x00000000
/* 000364 0x80973BF0 */ .word	0x00000015
glabel shotSunOverlayRelocations
/* 000365 0x80973BF4 */ .word	0x45000018
/* 000366 0x80973BF8 */ .word	0x46000024
/* 000367 0x80973BFC */ .word	0x45000074
/* 000368 0x80973C00 */ .word	0x46000080
/* 000369 0x80973C04 */ .word	0x45000090
/* 000370 0x80973C08 */ .word	0x4600009C
/* 000371 0x80973C0C */ .word	0x45000218
/* 000372 0x80973C10 */ .word	0x4600021C
/* 000373 0x80973C14 */ .word	0x450002D4
/* 000374 0x80973C18 */ .word	0x460002D8
/* 000375 0x80973C1C */ .word	0x450002FC
/* 000376 0x80973C20 */ .word	0x46000300
/* 000377 0x80973C24 */ .word	0x45000384
/* 000378 0x80973C28 */ .word	0x46000388
/* 000379 0x80973C2C */ .word	0x450003DC
/* 000380 0x80973C30 */ .word	0x460003E0
/* 000381 0x80973C34 */ .word	0x4500044C
/* 000382 0x80973C38 */ .word	0x46000450
/* 000383 0x80973C3C */ .word	0x82000010
/* 000384 0x80973C40 */ .word	0x82000014
/* 000385 0x80973C44 */ .word	0x82000018
/* 000386 0x80973C48 */ .word	0x00000000
glabel shotSunOverlayInfoOffset
/* 000387 0x80973C4C */ .word	0x00000070
