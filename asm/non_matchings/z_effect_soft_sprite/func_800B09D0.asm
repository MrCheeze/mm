glabel func_800B09D0
/* 011204 0x800B09D0 AFA40000 */ sw	$a0, 0X0($sp)
/* 011205 0x800B09D4 AFA50004 */ sw	$a1, 0X4($sp)
/* 011206 0x800B09D8 00052C00 */ sll	$a1, $a1, 16
/* 011207 0x800B09DC 00042400 */ sll	$a0, $a0, 16
/* 011208 0x800B09E0 44866000 */ mtc1	$a2, $f12
/* 011209 0x800B09E4 00042403 */ sra	$a0, $a0, 16
/* 011210 0x800B09E8 00052C03 */ sra	$a1, $a1, 16
/* 011211 0x800B09EC 00A47023 */ subu	$t6, $a1, $a0
/* 011212 0x800B09F0 448E2000 */ mtc1	$t6, $f4
/* 011213 0x800B09F4 44845000 */ mtc1	$a0, $f10
/* 011214 0x800B09F8 468021A0 */ cvt.s.w	$f6, $f4
/* 011215 0x800B09FC 46805420 */ cvt.s.w	$f16, $f10
/* 011216 0x800B0A00 460C3202 */ mul.s	$f8, $f6, $f12
/* 011217 0x800B0A04 46104480 */ add.s	$f18, $f8, $f16
/* 011218 0x800B0A08 4600910D */ trunc.w.s	$f4, $f18
/* 011219 0x800B0A0C 44022000 */ mfc1	$v0, $f4
/* 011220 0x800B0A10 00000000 */ nop
/* 011221 0x800B0A14 00021400 */ sll	$v0, $v0, 16
/* 011222 0x800B0A18 00021403 */ sra	$v0, $v0, 16
/* 011223 0x800B0A1C 03E00008 */ jr	$ra
/* 011224 0x800B0A20 00000000 */ nop

