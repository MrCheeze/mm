.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80A45250
/* 000372 0x80A45250 */ .word	0x015C0600
/* 000373 0x80A45254 */ .word	0x00000019
/* 000374 0x80A45258 */ .word	0x00010000
/* 000375 0x80A4525C */ .word	0x0000016C
/* 000376 0x80A45260 */ .word	EnSekihi_Init
/* 000377 0x80A45264 */ .word	EnSekihi_Destroy
/* 000378 0x80A45268 */ .word	EnSekihi_Update
/* 000379 0x80A4526C */ .word	0x00000000
glabel D_80A45270
/* 000380 0x80A45270 */ .word	0x01730174
/* 000381 0x80A45274 */ .word	0x01750176
/* 000382 0x80A45278 */ .word	0x02060000
glabel D_80A4527C
/* 000383 0x80A4527C */ .word	0x060005E0
/* 000384 0x80A45280 */ .word	0x060005C8
/* 000385 0x80A45284 */ .word	0x060005C8
/* 000386 0x80A45288 */ .word	0x06000518
/* 000387 0x80A4528C */ .word	0x06006AA0
glabel D_80A45290
/* 000388 0x80A45290 */ .word	0x060004C0
/* 000389 0x80A45294 */ .word	0x060004A8
/* 000390 0x80A45298 */ .word	0x060004A8
/* 000391 0x80A4529C */ .word	0x06000510
/* 000392 0x80A452A0 */ .word	0x060069F0
glabel D_80A452A4
/* 000393 0x80A452A4 */ .word	0x00000000
/* 000394 0x80A452A8 */ .word	0x00000000
/* 000395 0x80A452AC */ .word	0x10180000
glabel D_80A452B0
/* 000396 0x80A452B0 */ .word	0x060033F8
/* 000397 0x80A452B4 */ .word	0x060033D8
/* 000398 0x80A452B8 */ .word	0x060033D8
/* 000399 0x80A452BC */ .word	0x06001010
/* 000400 0x80A452C0 */ .word	0x06008670
/* 000401 0x80A452C4 */ .word	0x00000000
/* 000402 0x80A452C8 */ .word	0x00000000
/* 000403 0x80A452CC */ .word	0x00000000
glabel enSekihiOverlayInfo
/* 000404 0x80A452D0 */ .word	0x000005D0
/* 000405 0x80A452D4 */ .word	0x00000080
/* 000406 0x80A452D8 */ .word	0x00000000
/* 000407 0x80A452DC */ .word	0x00000000
/* 000408 0x80A452E0 */ .word	0x0000001B
glabel enSekihiOverlayRelocations
/* 000409 0x80A452E4 */ .word	0x45000028
/* 000410 0x80A452E8 */ .word	0x4600002C
/* 000411 0x80A452EC */ .word	0x4500003C
/* 000412 0x80A452F0 */ .word	0x46000098
/* 000413 0x80A452F4 */ .word	0x450000CC
/* 000414 0x80A452F8 */ .word	0x460000D0
/* 000415 0x80A452FC */ .word	0x450000DC
/* 000416 0x80A45300 */ .word	0x460000EC
/* 000417 0x80A45304 */ .word	0x450000F8
/* 000418 0x80A45308 */ .word	0x46000108
/* 000419 0x80A4530C */ .word	0x4500017C
/* 000420 0x80A45310 */ .word	0x46000184
/* 000421 0x80A45314 */ .word	0x450001DC
/* 000422 0x80A45318 */ .word	0x460001E4
/* 000423 0x80A4531C */ .word	0x45000204
/* 000424 0x80A45320 */ .word	0x46000208
/* 000425 0x80A45324 */ .word	0x450001F8
/* 000426 0x80A45328 */ .word	0x46000214
/* 000427 0x80A4532C */ .word	0x4500039C
/* 000428 0x80A45330 */ .word	0x460003A0
/* 000429 0x80A45334 */ .word	0x45000414
/* 000430 0x80A45338 */ .word	0x46000418
/* 000431 0x80A4533C */ .word	0x45000450
/* 000432 0x80A45340 */ .word	0x46000454
/* 000433 0x80A45344 */ .word	0x82000010
/* 000434 0x80A45348 */ .word	0x82000014
/* 000435 0x80A4534C */ .word	0x82000018
/* 000436 0x80A45350 */ .word	0x00000000
/* 000437 0x80A45354 */ .word	0x00000000
/* 000438 0x80A45358 */ .word	0x00000000
glabel enSekihiOverlayInfoOffset
/* 000439 0x80A4535C */ .word	0x00000090
