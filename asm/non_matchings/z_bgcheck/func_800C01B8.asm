glabel func_800C01B8
/* 027070 0x800C01B8 848E0008 */ lh	$t6, 0X8($a0)
/* 027071 0x800C01BC 848F000A */ lh	$t7, 0XA($a0)
/* 027072 0x800C01C0 C4A80000 */ lwc1	$f8, 0X0($a1)
/* 027073 0x800C01C4 448E2000 */ mtc1	$t6, $f4
/* 027074 0x800C01C8 448F8000 */ mtc1	$t7, $f16
/* 027075 0x800C01CC 8498000C */ lh	$t8, 0XC($a0)
/* 027076 0x800C01D0 468021A0 */ cvt.s.w	$f6, $f4
/* 027077 0x800C01D4 C4A40004 */ lwc1	$f4, 0X4($a1)
/* 027078 0x800C01D8 8499000E */ lh	$t9, 0XE($a0)
/* 027079 0x800C01DC 3C01801E */ lui	$at, %hi(D_801DCD34)
/* 027080 0x800C01E0 468084A0 */ cvt.s.w	$f18, $f16
/* 027081 0x800C01E4 46083282 */ mul.s	$f10, $f6, $f8
/* 027082 0x800C01E8 44988000 */ mtc1	$t8, $f16
/* 027083 0x800C01EC 46049182 */ mul.s	$f6, $f18, $f4
/* 027084 0x800C01F0 C4A40008 */ lwc1	$f4, 0X8($a1)
/* 027085 0x800C01F4 468084A0 */ cvt.s.w	$f18, $f16
/* 027086 0x800C01F8 C430CD34 */ lwc1	$f16, %lo(D_801DCD34)($at)
/* 027087 0x800C01FC 46065200 */ add.s	$f8, $f10, $f6
/* 027088 0x800C0200 46049282 */ mul.s	$f10, $f18, $f4
/* 027089 0x800C0204 44992000 */ mtc1	$t9, $f4
/* 027090 0x800C0208 460A4180 */ add.s	$f6, $f8, $f10
/* 027091 0x800C020C 46802220 */ cvt.s.w	$f8, $f4
/* 027092 0x800C0210 46103482 */ mul.s	$f18, $f6, $f16
/* 027093 0x800C0214 46089000 */ add.s	$f0, $f18, $f8
/* 027094 0x800C0218 03E00008 */ jr	$ra
/* 027095 0x800C021C 00000000 */ nop

