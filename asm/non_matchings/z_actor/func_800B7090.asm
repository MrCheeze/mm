glabel func_800B7090
/* 017780 0x800B7090 8C820A6C */ lw	$v0, 0XA6C($a0)
/* 017781 0x800B7094 3C014170 */ lui	$at, 0x4170
/* 017782 0x800B7098 00027200 */ sll	$t6, $v0, 8
/* 017783 0x800B709C 05C10004 */ bgez	$t6, .L_800B70B0
/* 017784 0x800B70A0 00027900 */ sll	$t7, $v0, 4
/* 017785 0x800B70A4 44810000 */ mtc1	$at, $f0
/* 017786 0x800B70A8 03E00008 */ jr	$ra
/* 017787 0x800B70AC 00000000 */ nop
.L_800B70B0:
/* 017788 0x800B70B0 05E1000F */ bgez	$t7, .L_800B70F0
/* 017789 0x800B70B4 3C08801F */ lui	$t0, %hi(gStaticContext)
/* 017790 0x800B70B8 3C18801F */ lui	$t8, %hi(gStaticContext)
/* 017791 0x800B70BC 8F183F60 */ lw	$t8, %lo(gStaticContext)($t8)
/* 017792 0x800B70C0 3C0142C8 */ lui	$at, 0x42C8
/* 017793 0x800B70C4 44814000 */ mtc1	$at, $f8
/* 017794 0x800B70C8 8719006E */ lh	$t9, 0X6E($t8)
/* 017795 0x800B70CC 3C01801E */ lui	$at, %hi(D_801DCA6C)
/* 017796 0x800B70D0 C430CA6C */ lwc1	$f16, %lo(D_801DCA6C)($at)
/* 017797 0x800B70D4 44992000 */ mtc1	$t9, $f4
/* 017798 0x800B70D8 00000000 */ nop
/* 017799 0x800B70DC 468021A0 */ cvt.s.w	$f6, $f4
/* 017800 0x800B70E0 46083283 */ div.s	$f10, $f6, $f8
/* 017801 0x800B70E4 46105002 */ mul.s	$f0, $f10, $f16
/* 017802 0x800B70E8 03E00008 */ jr	$ra
/* 017803 0x800B70EC 00000000 */ nop
.L_800B70F0:
/* 017804 0x800B70F0 8D083F60 */ lw	$t0, %lo(gStaticContext)($t0)
/* 017805 0x800B70F4 3C0142C8 */ lui	$at, 0x42C8
/* 017806 0x800B70F8 44813000 */ mtc1	$at, $f6
/* 017807 0x800B70FC 8509006E */ lh	$t1, 0X6E($t0)
/* 017808 0x800B7100 44899000 */ mtc1	$t1, $f18
/* 017809 0x800B7104 00000000 */ nop
/* 017810 0x800B7108 46809120 */ cvt.s.w	$f4, $f18
/* 017811 0x800B710C 46062003 */ div.s	$f0, $f4, $f6
/* 017812 0x800B7110 03E00008 */ jr	$ra
/* 017813 0x800B7114 00000000 */ nop

