glabel BgCheck_AreActorMeshParamsEqual
/* 032871 0x800C5C5C C4A40000 */ lwc1	$f4, 0X0($a1)
/* 032872 0x800C5C60 C4860000 */ lwc1	$f6, 0X0($a0)
/* 032873 0x800C5C64 46062032 */ c.eq.s	$f4, $f6
/* 032874 0x800C5C68 00000000 */ nop
/* 032875 0x800C5C6C 4500002C */ bc1f .L_800C5D20
/* 032876 0x800C5C70 00000000 */ nop
/* 032877 0x800C5C74 C4A80004 */ lwc1	$f8, 0X4($a1)
/* 032878 0x800C5C78 C48A0004 */ lwc1	$f10, 0X4($a0)
/* 032879 0x800C5C7C 460A4032 */ c.eq.s	$f8, $f10
/* 032880 0x800C5C80 00000000 */ nop
/* 032881 0x800C5C84 45000026 */ bc1f .L_800C5D20
/* 032882 0x800C5C88 00000000 */ nop
/* 032883 0x800C5C8C C4B00008 */ lwc1	$f16, 0X8($a1)
/* 032884 0x800C5C90 C4920008 */ lwc1	$f18, 0X8($a0)
/* 032885 0x800C5C94 46128032 */ c.eq.s	$f16, $f18
/* 032886 0x800C5C98 00000000 */ nop
/* 032887 0x800C5C9C 45000020 */ bc1f .L_800C5D20
/* 032888 0x800C5CA0 00000000 */ nop
/* 032889 0x800C5CA4 84AE000C */ lh	$t6, 0XC($a1)
/* 032890 0x800C5CA8 848F000C */ lh	$t7, 0XC($a0)
/* 032891 0x800C5CAC 15CF001C */ bne	$t6, $t7, .L_800C5D20
/* 032892 0x800C5CB0 00000000 */ nop
/* 032893 0x800C5CB4 84B8000E */ lh	$t8, 0XE($a1)
/* 032894 0x800C5CB8 8499000E */ lh	$t9, 0XE($a0)
/* 032895 0x800C5CBC 17190018 */ bne	$t8, $t9, .L_800C5D20
/* 032896 0x800C5CC0 00000000 */ nop
/* 032897 0x800C5CC4 84A80010 */ lh	$t0, 0X10($a1)
/* 032898 0x800C5CC8 84890010 */ lh	$t1, 0X10($a0)
/* 032899 0x800C5CCC 15090014 */ bne	$t0, $t1, .L_800C5D20
/* 032900 0x800C5CD0 00000000 */ nop
/* 032901 0x800C5CD4 C4A40014 */ lwc1	$f4, 0X14($a1)
/* 032902 0x800C5CD8 C4860014 */ lwc1	$f6, 0X14($a0)
/* 032903 0x800C5CDC 46062032 */ c.eq.s	$f4, $f6
/* 032904 0x800C5CE0 00000000 */ nop
/* 032905 0x800C5CE4 4500000E */ bc1f .L_800C5D20
/* 032906 0x800C5CE8 00000000 */ nop
/* 032907 0x800C5CEC C4A80018 */ lwc1	$f8, 0X18($a1)
/* 032908 0x800C5CF0 C48A0018 */ lwc1	$f10, 0X18($a0)
/* 032909 0x800C5CF4 460A4032 */ c.eq.s	$f8, $f10
/* 032910 0x800C5CF8 00000000 */ nop
/* 032911 0x800C5CFC 45000008 */ bc1f .L_800C5D20
/* 032912 0x800C5D00 00000000 */ nop
/* 032913 0x800C5D04 C4B0001C */ lwc1	$f16, 0X1C($a1)
/* 032914 0x800C5D08 C492001C */ lwc1	$f18, 0X1C($a0)
/* 032915 0x800C5D0C 24020001 */ li	$v0, 1
/* 032916 0x800C5D10 46128032 */ c.eq.s	$f16, $f18
/* 032917 0x800C5D14 00000000 */ nop
/* 032918 0x800C5D18 45010003 */ bc1t .L_800C5D28
/* 032919 0x800C5D1C 00000000 */ nop
.L_800C5D20:
/* 032920 0x800C5D20 03E00008 */ jr	$ra
/* 032921 0x800C5D24 00001025 */ move	$v0, $zero
.L_800C5D28:
/* 032922 0x800C5D28 03E00008 */ jr	$ra
/* 032923 0x800C5D2C 00000000 */ nop

