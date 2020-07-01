.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel EnFall2_Init
/* 000000 0x80C1B640 27BDFFD0 */ addiu	$sp, $sp, -48
/* 000001 0x80C1B644 AFB00020 */ sw	$s0, 0X20($sp)
/* 000002 0x80C1B648 00808025 */ move	$s0, $a0
/* 000003 0x80C1B64C AFBF0024 */ sw	$ra, 0X24($sp)
/* 000004 0x80C1B650 AFA50034 */ sw	$a1, 0X34($sp)
/* 000005 0x80C1B654 02002025 */ move	$a0, $s0
/* 000006 0x80C1B658 0C02D9F8 */ jal	Actor_SetScale
/* 000007 0x80C1B65C 3C053F80 */ lui	$a1, 0x3F80
/* 000008 0x80C1B660 3C0E80C2 */ lui	$t6, %hi(func_80C1B8A4)
/* 000009 0x80C1B664 25CEB8A4 */ addiu	$t6, $t6, %lo(func_80C1B8A4)
/* 000010 0x80C1B668 AE0E02E8 */ sw	$t6, 0X2E8($s0)
/* 000011 0x80C1B66C 26040144 */ addiu	$a0, $s0, 324
/* 000012 0x80C1B670 3C050601 */ lui	$a1, 0x0601
/* 000013 0x80C1B674 3C060600 */ lui	$a2, 0x0600
/* 000014 0x80C1B678 260F0228 */ addiu	$t7, $s0, 552
/* 000015 0x80C1B67C AFAF0010 */ sw	$t7, 0X10($sp)
/* 000016 0x80C1B680 24C65EF4 */ addiu	$a2, $a2, 24308
/* 000017 0x80C1B684 24A58898 */ addiu	$a1, $a1, -30568
/* 000018 0x80C1B688 AFA40028 */ sw	$a0, 0X28($sp)
/* 000019 0x80C1B68C AFA00014 */ sw	$zero, 0X14($sp)
/* 000020 0x80C1B690 0C060D0C */ jal	func_80183430
/* 000021 0x80C1B694 26070174 */ addiu	$a3, $s0, 372
/* 000022 0x80C1B698 3C050600 */ lui	$a1, 0x0600
/* 000023 0x80C1B69C 8FA40028 */ lw	$a0, 0X28($sp)
/* 000024 0x80C1B6A0 0C060D7B */ jal	func_801835EC
/* 000025 0x80C1B6A4 24A55EF4 */ addiu	$a1, $a1, 24308
/* 000026 0x80C1B6A8 3C040601 */ lui	$a0, 0x0601
/* 000027 0x80C1B6AC 0C040141 */ jal	Lib_PtrSegToVirt
/* 000028 0x80C1B6B0 24848840 */ addiu	$a0, $a0, -30656
/* 000029 0x80C1B6B4 3C053CA3 */ lui	$a1, 0x3CA3
/* 000030 0x80C1B6B8 AE0202DC */ sw	$v0, 0X2DC($s0)
/* 000031 0x80C1B6BC 34A5D70A */ ori	$a1, $a1, 0XD70A
/* 000032 0x80C1B6C0 0C02D9F8 */ jal	Actor_SetScale
/* 000033 0x80C1B6C4 02002025 */ move	$a0, $s0
/* 000034 0x80C1B6C8 44802000 */ mtc1	$zero, $f4
/* 000035 0x80C1B6CC 3C1880C2 */ lui	$t8, %hi(func_80C1B9D4)
/* 000036 0x80C1B6D0 2718B9D4 */ addiu	$t8, $t8, %lo(func_80C1B9D4)
/* 000037 0x80C1B6D4 24190231 */ li	$t9, 561
/* 000038 0x80C1B6D8 AE1802E8 */ sw	$t8, 0X2E8($s0)
/* 000039 0x80C1B6DC A61902E6 */ sh	$t9, 0X2E6($s0)
/* 000040 0x80C1B6E0 E60402E0 */ swc1	$f4, 0X2E0($s0)
/* 000041 0x80C1B6E4 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000042 0x80C1B6E8 8FB00020 */ lw	$s0, 0X20($sp)
/* 000043 0x80C1B6EC 27BD0030 */ addiu	$sp, $sp, 48
/* 000044 0x80C1B6F0 03E00008 */ jr	$ra
/* 000045 0x80C1B6F4 00000000 */ nop

glabel EnFall2_Destroy
/* 000046 0x80C1B6F8 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000047 0x80C1B6FC AFA5001C */ sw	$a1, 0X1C($sp)
/* 000048 0x80C1B700 00802825 */ move	$a1, $a0
/* 000049 0x80C1B704 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000050 0x80C1B708 AFA40018 */ sw	$a0, 0X18($sp)
/* 000051 0x80C1B70C 0C060D27 */ jal	func_8018349C
/* 000052 0x80C1B710 24A40144 */ addiu	$a0, $a1, 324
/* 000053 0x80C1B714 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000054 0x80C1B718 27BD0018 */ addiu	$sp, $sp, 24
/* 000055 0x80C1B71C 03E00008 */ jr	$ra
/* 000056 0x80C1B720 00000000 */ nop

glabel func_80C1B724
/* 000057 0x80C1B724 27BDFFD0 */ addiu	$sp, $sp, -48
/* 000058 0x80C1B728 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000059 0x80C1B72C 3C040600 */ lui	$a0, 0x0600
/* 000060 0x80C1B730 24845F10 */ addiu	$a0, $a0, 24336
/* 000061 0x80C1B734 0C040141 */ jal	Lib_PtrSegToVirt
/* 000062 0x80C1B738 E7AC0030 */ swc1	$f12, 0X30($sp)
/* 000063 0x80C1B73C 3C013F80 */ lui	$at, 0x3F80
/* 000064 0x80C1B740 44810000 */ mtc1	$at, $f0
/* 000065 0x80C1B744 C7AC0030 */ lwc1	$f12, 0X30($sp)
/* 000066 0x80C1B748 3C014258 */ lui	$at, 0x4258
/* 000067 0x80C1B74C 44812000 */ mtc1	$at, $f4
/* 000068 0x80C1B750 460C003C */ c.lt.s	$f0, $f12
/* 000069 0x80C1B754 3C0142D0 */ lui	$at, 0x42D0
/* 000070 0x80C1B758 44815000 */ mtc1	$at, $f10
/* 000071 0x80C1B75C 45020003 */ bc1fl .L_80C1B76C
/* 000072 0x80C1B760 44800000 */ mtc1	$zero, $f0
/* 000073 0x80C1B764 46000306 */ mov.s	$f12, $f0
/* 000074 0x80C1B768 44800000 */ mtc1	$zero, $f0
.L_80C1B76C:
/* 000075 0x80C1B76C 00000000 */ nop
/* 000076 0x80C1B770 4600603C */ c.lt.s	$f12, $f0
/* 000077 0x80C1B774 00000000 */ nop
/* 000078 0x80C1B778 45000002 */ bc1f .L_80C1B784
/* 000079 0x80C1B77C 00000000 */ nop
/* 000080 0x80C1B780 46000306 */ mov.s	$f12, $f0
.L_80C1B784:
/* 000081 0x80C1B784 460C2182 */ mul.s	$f6, $f4, $f12
/* 000082 0x80C1B788 3C01431B */ lui	$at, 0x431B
/* 000083 0x80C1B78C 44812000 */ mtc1	$at, $f4
/* 000084 0x80C1B790 460C5402 */ mul.s	$f16, $f10, $f12
/* 000085 0x80C1B794 3C01437F */ lui	$at, 0x437F
/* 000086 0x80C1B798 44815000 */ mtc1	$at, $f10
/* 000087 0x80C1B79C 3C01434D */ lui	$at, 0x434D
/* 000088 0x80C1B7A0 3C0E80C2 */ lui	$t6, %hi(D_80C1BC00)
/* 000089 0x80C1B7A4 91CEBC00 */ lbu	$t6, %lo(D_80C1BC00)($t6)
/* 000090 0x80C1B7A8 4600320D */ trunc.w.s	$f8, $f6
/* 000091 0x80C1B7AC 460C2182 */ mul.s	$f6, $f4, $f12
/* 000092 0x80C1B7B0 44812000 */ mtc1	$at, $f4
/* 000093 0x80C1B7B4 27A50024 */ addiu	$a1, $sp, 36
/* 000094 0x80C1B7B8 440F4000 */ mfc1	$t7, $f8
/* 000095 0x80C1B7BC A3A00024 */ sb	$zero, 0X24($sp)
/* 000096 0x80C1B7C0 00401825 */ move	$v1, $v0
/* 000097 0x80C1B7C4 4600848D */ trunc.w.s	$f18, $f16
/* 000098 0x80C1B7C8 460C5402 */ mul.s	$f16, $f10, $f12
/* 000099 0x80C1B7CC A3AF0025 */ sb	$t7, 0X25($sp)
/* 000100 0x80C1B7D0 00AE7821 */ addu	$t7, $a1, $t6
/* 000101 0x80C1B7D4 44199000 */ mfc1	$t9, $f18
/* 000102 0x80C1B7D8 3C0A80C2 */ lui	$t2, %hi(D_80C1BC02)
/* 000103 0x80C1B7DC 3C0480C2 */ lui	$a0, %hi(D_80C1BC03)
/* 000104 0x80C1B7E0 4600320D */ trunc.w.s	$f8, $f6
/* 000105 0x80C1B7E4 460C2182 */ mul.s	$f6, $f4, $f12
/* 000106 0x80C1B7E8 A3B90026 */ sb	$t9, 0X26($sp)
/* 000107 0x80C1B7EC 3C1980C2 */ lui	$t9, %hi(D_80C1BC01)
/* 000108 0x80C1B7F0 44094000 */ mfc1	$t1, $f8
/* 000109 0x80C1B7F4 2484BC03 */ addiu	$a0, $a0, %lo(D_80C1BC03)
/* 000110 0x80C1B7F8 24630030 */ addiu	$v1, $v1, 48
/* 000111 0x80C1B7FC 4600848D */ trunc.w.s	$f18, $f16
/* 000112 0x80C1B800 A3A90027 */ sb	$t1, 0X27($sp)
/* 000113 0x80C1B804 4600320D */ trunc.w.s	$f8, $f6
/* 000114 0x80C1B808 440B9000 */ mfc1	$t3, $f18
/* 000115 0x80C1B80C 440D4000 */ mfc1	$t5, $f8
/* 000116 0x80C1B810 A3AB0028 */ sb	$t3, 0X28($sp)
/* 000117 0x80C1B814 A3AD0029 */ sb	$t5, 0X29($sp)
/* 000118 0x80C1B818 91F80000 */ lbu	$t8, 0X0($t7)
/* 000119 0x80C1B81C A058000F */ sb	$t8, 0XF($v0)
/* 000120 0x80C1B820 9339BC01 */ lbu	$t9, %lo(D_80C1BC01)($t9)
/* 000121 0x80C1B824 3C0280C2 */ lui	$v0, %hi(D_80C1BCEF)
/* 000122 0x80C1B828 2442BCEF */ addiu	$v0, $v0, %lo(D_80C1BCEF)
/* 000123 0x80C1B82C 00B94021 */ addu	$t0, $a1, $t9
/* 000124 0x80C1B830 91090000 */ lbu	$t1, 0X0($t0)
/* 000125 0x80C1B834 A069FFEF */ sb	$t1, -0X11($v1)
/* 000126 0x80C1B838 914ABC02 */ lbu	$t2, %lo(D_80C1BC02)($t2)
/* 000127 0x80C1B83C 00AA5821 */ addu	$t3, $a1, $t2
/* 000128 0x80C1B840 916C0000 */ lbu	$t4, 0X0($t3)
/* 000129 0x80C1B844 A06CFFFF */ sb	$t4, -0X1($v1)
.L_80C1B848:
/* 000130 0x80C1B848 908D0000 */ lbu	$t5, 0X0($a0)
/* 000131 0x80C1B84C 24840004 */ addiu	$a0, $a0, 4
/* 000132 0x80C1B850 24630040 */ addiu	$v1, $v1, 64
/* 000133 0x80C1B854 00AD7021 */ addu	$t6, $a1, $t5
/* 000134 0x80C1B858 91CF0000 */ lbu	$t7, 0X0($t6)
/* 000135 0x80C1B85C A06FFFCF */ sb	$t7, -0X31($v1)
/* 000136 0x80C1B860 9098FFFD */ lbu	$t8, -0X3($a0)
/* 000137 0x80C1B864 00B8C821 */ addu	$t9, $a1, $t8
/* 000138 0x80C1B868 93280000 */ lbu	$t0, 0X0($t9)
/* 000139 0x80C1B86C A068FFDF */ sb	$t0, -0X21($v1)
/* 000140 0x80C1B870 9089FFFE */ lbu	$t1, -0X2($a0)
/* 000141 0x80C1B874 00A95021 */ addu	$t2, $a1, $t1
/* 000142 0x80C1B878 914B0000 */ lbu	$t3, 0X0($t2)
/* 000143 0x80C1B87C A06BFFEF */ sb	$t3, -0X11($v1)
/* 000144 0x80C1B880 908CFFFF */ lbu	$t4, -0X1($a0)
/* 000145 0x80C1B884 00AC6821 */ addu	$t5, $a1, $t4
/* 000146 0x80C1B888 91AE0000 */ lbu	$t6, 0X0($t5)
/* 000147 0x80C1B88C 1482FFEE */ bne	$a0, $v0, .L_80C1B848
/* 000148 0x80C1B890 A06EFFFF */ sb	$t6, -0X1($v1)
/* 000149 0x80C1B894 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000150 0x80C1B898 27BD0030 */ addiu	$sp, $sp, 48
/* 000151 0x80C1B89C 03E00008 */ jr	$ra
/* 000152 0x80C1B8A0 00000000 */ nop

glabel func_80C1B8A4
/* 000153 0x80C1B8A4 AFA40000 */ sw	$a0, 0X0($sp)
/* 000154 0x80C1B8A8 AFA50004 */ sw	$a1, 0X4($sp)
/* 000155 0x80C1B8AC 03E00008 */ jr	$ra
/* 000156 0x80C1B8B0 00000000 */ nop

glabel func_80C1B8B4
/* 000157 0x80C1B8B4 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000158 0x80C1B8B8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000159 0x80C1B8BC 848F02E4 */ lh	$t7, 0X2E4($a0)
/* 000160 0x80C1B8C0 3C0E80C2 */ lui	$t6, %hi(EnFall2_Draw)
/* 000161 0x80C1B8C4 25CEBAEC */ addiu	$t6, $t6, %lo(EnFall2_Draw)
/* 000162 0x80C1B8C8 24010001 */ li	$at, 1
/* 000163 0x80C1B8CC 15E10004 */ bne	$t7, $at, .L_80C1B8E0
/* 000164 0x80C1B8D0 AC8E013C */ sw	$t6, 0X13C($a0)
/* 000165 0x80C1B8D4 3C053CA3 */ lui	$a1, 0x3CA3
/* 000166 0x80C1B8D8 0C02D9F8 */ jal	Actor_SetScale
/* 000167 0x80C1B8DC 34A5D70A */ ori	$a1, $a1, 0XD70A
.L_80C1B8E0:
/* 000168 0x80C1B8E0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000169 0x80C1B8E4 27BD0018 */ addiu	$sp, $sp, 24
/* 000170 0x80C1B8E8 03E00008 */ jr	$ra
/* 000171 0x80C1B8EC 00000000 */ nop

glabel func_80C1B8F0
/* 000172 0x80C1B8F0 848202E4 */ lh	$v0, 0X2E4($a0)
/* 000173 0x80C1B8F4 24010001 */ li	$at, 1
/* 000174 0x80C1B8F8 10410005 */ beq	$v0, $at, .L_80C1B910
/* 000175 0x80C1B8FC 24010002 */ li	$at, 2
/* 000176 0x80C1B900 50410012 */ beql	$v0, $at, .L_80C1B94C
/* 000177 0x80C1B904 44801000 */ mtc1	$zero, $f2
/* 000178 0x80C1B908 03E00008 */ jr	$ra
/* 000179 0x80C1B90C 00000000 */ nop
.L_80C1B910:
/* 000180 0x80C1B910 3C013F80 */ lui	$at, 0x3F80
/* 000181 0x80C1B914 44811000 */ mtc1	$at, $f2
/* 000182 0x80C1B918 C48002E0 */ lwc1	$f0, 0X2E0($a0)
/* 000183 0x80C1B91C 3C0180C2 */ lui	$at, %hi(D_80C1BCF0)
/* 000184 0x80C1B920 4602003C */ c.lt.s	$f0, $f2
/* 000185 0x80C1B924 00000000 */ nop
/* 000186 0x80C1B928 45000005 */ bc1f .L_80C1B940
/* 000187 0x80C1B92C 00000000 */ nop
/* 000188 0x80C1B930 C424BCF0 */ lwc1	$f4, %lo(D_80C1BCF0)($at)
/* 000189 0x80C1B934 46040180 */ add.s	$f6, $f0, $f4
/* 000190 0x80C1B938 03E00008 */ jr	$ra
/* 000191 0x80C1B93C E48602E0 */ swc1	$f6, 0X2E0($a0)
.L_80C1B940:
/* 000192 0x80C1B940 03E00008 */ jr	$ra
/* 000193 0x80C1B944 E48202E0 */ swc1	$f2, 0X2E0($a0)
/* 000194 0x80C1B948 44801000 */ mtc1	$zero, $f2
.L_80C1B94C:
/* 000195 0x80C1B94C C48002E0 */ lwc1	$f0, 0X2E0($a0)
/* 000196 0x80C1B950 3C0180C2 */ lui	$at, %hi(D_80C1BCF4)
/* 000197 0x80C1B954 4600103C */ c.lt.s	$f2, $f0
/* 000198 0x80C1B958 00000000 */ nop
/* 000199 0x80C1B95C 4502000B */ bc1fl .L_80C1B98C
/* 000200 0x80C1B960 C4800058 */ lwc1	$f0, 0X58($a0)
/* 000201 0x80C1B964 C428BCF4 */ lwc1	$f8, %lo(D_80C1BCF4)($at)
/* 000202 0x80C1B968 46080281 */ sub.s	$f10, $f0, $f8
/* 000203 0x80C1B96C E48A02E0 */ swc1	$f10, 0X2E0($a0)
/* 000204 0x80C1B970 C49002E0 */ lwc1	$f16, 0X2E0($a0)
/* 000205 0x80C1B974 4602803C */ c.lt.s	$f16, $f2
/* 000206 0x80C1B978 00000000 */ nop
/* 000207 0x80C1B97C 45020003 */ bc1fl .L_80C1B98C
/* 000208 0x80C1B980 C4800058 */ lwc1	$f0, 0X58($a0)
/* 000209 0x80C1B984 E48202E0 */ swc1	$f2, 0X2E0($a0)
/* 000210 0x80C1B988 C4800058 */ lwc1	$f0, 0X58($a0)
.L_80C1B98C:
/* 000211 0x80C1B98C 3C0180C2 */ lui	$at, %hi(D_80C1BCF8)
/* 000212 0x80C1B990 4600103C */ c.lt.s	$f2, $f0
/* 000213 0x80C1B994 00000000 */ nop
/* 000214 0x80C1B998 4500000C */ bc1f .L_80C1B9CC
/* 000215 0x80C1B99C 00000000 */ nop
/* 000216 0x80C1B9A0 C432BCF8 */ lwc1	$f18, %lo(D_80C1BCF8)($at)
/* 000217 0x80C1B9A4 46120101 */ sub.s	$f4, $f0, $f18
/* 000218 0x80C1B9A8 E4840058 */ swc1	$f4, 0X58($a0)
/* 000219 0x80C1B9AC C4800058 */ lwc1	$f0, 0X58($a0)
/* 000220 0x80C1B9B0 4602003C */ c.lt.s	$f0, $f2
/* 000221 0x80C1B9B4 00000000 */ nop
/* 000222 0x80C1B9B8 45020004 */ bc1fl .L_80C1B9CC
/* 000223 0x80C1B9BC E4800060 */ swc1	$f0, 0X60($a0)
/* 000224 0x80C1B9C0 E4820058 */ swc1	$f2, 0X58($a0)
/* 000225 0x80C1B9C4 C4800058 */ lwc1	$f0, 0X58($a0)
/* 000226 0x80C1B9C8 E4800060 */ swc1	$f0, 0X60($a0)
.L_80C1B9CC:
/* 000227 0x80C1B9CC 03E00008 */ jr	$ra
/* 000228 0x80C1B9D0 00000000 */ nop

glabel func_80C1B9D4
/* 000229 0x80C1B9D4 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000230 0x80C1B9D8 AFB10018 */ sw	$s1, 0X18($sp)
/* 000231 0x80C1B9DC AFB00014 */ sw	$s0, 0X14($sp)
/* 000232 0x80C1B9E0 00808025 */ move	$s0, $a0
/* 000233 0x80C1B9E4 00A08825 */ move	$s1, $a1
/* 000234 0x80C1B9E8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000235 0x80C1B9EC 0C060F78 */ jal	func_80183DE0
/* 000236 0x80C1B9F0 26040144 */ addiu	$a0, $s0, 324
/* 000237 0x80C1B9F4 02202025 */ move	$a0, $s1
/* 000238 0x80C1B9F8 0C03B8A7 */ jal	func_800EE29C
/* 000239 0x80C1B9FC 960502E6 */ lhu	$a1, 0X2E6($s0)
/* 000240 0x80C1BA00 10400028 */ beqz	$v0, .L_80C1BAA4
/* 000241 0x80C1BA04 02202025 */ move	$a0, $s1
/* 000242 0x80C1BA08 0C03B880 */ jal	func_800EE200
/* 000243 0x80C1BA0C 960502E6 */ lhu	$a1, 0X2E6($s0)
/* 000244 0x80C1BA10 02002025 */ move	$a0, $s0
/* 000245 0x80C1BA14 02202825 */ move	$a1, $s1
/* 000246 0x80C1BA18 0C03B7C9 */ jal	func_800EDF24
/* 000247 0x80C1BA1C 00403025 */ move	$a2, $v0
/* 000248 0x80C1BA20 02202025 */ move	$a0, $s1
/* 000249 0x80C1BA24 0C03B880 */ jal	func_800EE200
/* 000250 0x80C1BA28 960502E6 */ lhu	$a1, 0X2E6($s0)
/* 000251 0x80C1BA2C 00027880 */ sll	$t7, $v0, 2
/* 000252 0x80C1BA30 022FC021 */ addu	$t8, $s1, $t7
/* 000253 0x80C1BA34 8F191F4C */ lw	$t9, 0X1F4C($t8)
/* 000254 0x80C1BA38 860E02E4 */ lh	$t6, 0X2E4($s0)
/* 000255 0x80C1BA3C 02202025 */ move	$a0, $s1
/* 000256 0x80C1BA40 97280000 */ lhu	$t0, 0X0($t9)
/* 000257 0x80C1BA44 11C8000A */ beq	$t6, $t0, .L_80C1BA70
/* 000258 0x80C1BA48 00000000 */ nop
/* 000259 0x80C1BA4C 0C03B880 */ jal	func_800EE200
/* 000260 0x80C1BA50 960502E6 */ lhu	$a1, 0X2E6($s0)
/* 000261 0x80C1BA54 00024880 */ sll	$t1, $v0, 2
/* 000262 0x80C1BA58 02295021 */ addu	$t2, $s1, $t1
/* 000263 0x80C1BA5C 8D4B1F4C */ lw	$t3, 0X1F4C($t2)
/* 000264 0x80C1BA60 02002025 */ move	$a0, $s0
/* 000265 0x80C1BA64 956C0000 */ lhu	$t4, 0X0($t3)
/* 000266 0x80C1BA68 0C306E2D */ jal	func_80C1B8B4
/* 000267 0x80C1BA6C A60C02E4 */ sh	$t4, 0X2E4($s0)
.L_80C1BA70:
/* 000268 0x80C1BA70 0C306E3C */ jal	func_80C1B8F0
/* 000269 0x80C1BA74 02002025 */ move	$a0, $s0
/* 000270 0x80C1BA78 C60C02E0 */ lwc1	$f12, 0X2E0($s0)
/* 000271 0x80C1BA7C 44802000 */ mtc1	$zero, $f4
/* 000272 0x80C1BA80 02002025 */ move	$a0, $s0
/* 000273 0x80C1BA84 460C203C */ c.lt.s	$f4, $f12
/* 000274 0x80C1BA88 00000000 */ nop
/* 000275 0x80C1BA8C 45000007 */ bc1f .L_80C1BAAC
/* 000276 0x80C1BA90 00000000 */ nop
/* 000277 0x80C1BA94 0C02E404 */ jal	func_800B9010
/* 000278 0x80C1BA98 240520EE */ li	$a1, 8430
/* 000279 0x80C1BA9C 10000003 */ b	.L_80C1BAAC
/* 000280 0x80C1BAA0 C60C02E0 */ lwc1	$f12, 0X2E0($s0)
.L_80C1BAA4:
/* 000281 0x80C1BAA4 AE00013C */ sw	$zero, 0X13C($s0)
/* 000282 0x80C1BAA8 C60C02E0 */ lwc1	$f12, 0X2E0($s0)
.L_80C1BAAC:
/* 000283 0x80C1BAAC 0C306DC9 */ jal	func_80C1B724
/* 000284 0x80C1BAB0 00000000 */ nop
/* 000285 0x80C1BAB4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000286 0x80C1BAB8 8FB00014 */ lw	$s0, 0X14($sp)
/* 000287 0x80C1BABC 8FB10018 */ lw	$s1, 0X18($sp)
/* 000288 0x80C1BAC0 03E00008 */ jr	$ra
/* 000289 0x80C1BAC4 27BD0020 */ addiu	$sp, $sp, 32

glabel EnFall2_Update
/* 000290 0x80C1BAC8 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000291 0x80C1BACC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000292 0x80C1BAD0 8C9902E8 */ lw	$t9, 0X2E8($a0)
/* 000293 0x80C1BAD4 0320F809 */ jalr	$t9
/* 000294 0x80C1BAD8 00000000 */ nop
/* 000295 0x80C1BADC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000296 0x80C1BAE0 27BD0018 */ addiu	$sp, $sp, 24
/* 000297 0x80C1BAE4 03E00008 */ jr	$ra
/* 000298 0x80C1BAE8 00000000 */ nop

glabel EnFall2_Draw
/* 000299 0x80C1BAEC 27BDFFC8 */ addiu	$sp, $sp, -56
/* 000300 0x80C1BAF0 AFB00020 */ sw	$s0, 0X20($sp)
/* 000301 0x80C1BAF4 00A08025 */ move	$s0, $a1
/* 000302 0x80C1BAF8 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000303 0x80C1BAFC AFA40038 */ sw	$a0, 0X38($sp)
/* 000304 0x80C1BB00 8FAE0038 */ lw	$t6, 0X38($sp)
/* 000305 0x80C1BB04 44802000 */ mtc1	$zero, $f4
/* 000306 0x80C1BB08 C5C602E0 */ lwc1	$f6, 0X2E0($t6)
/* 000307 0x80C1BB0C 4604303E */ c.le.s	$f6, $f4
/* 000308 0x80C1BB10 00000000 */ nop
/* 000309 0x80C1BB14 4503002C */ bc1tl .L_80C1BBC8
/* 000310 0x80C1BB18 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000311 0x80C1BB1C 0C04B0B7 */ jal	func_8012C2DC
/* 000312 0x80C1BB20 8E040000 */ lw	$a0, 0X0($s0)
/* 000313 0x80C1BB24 3C040601 */ lui	$a0, 0x0601
/* 000314 0x80C1BB28 0C040141 */ jal	Lib_PtrSegToVirt
/* 000315 0x80C1BB2C 24848840 */ addiu	$a0, $a0, -30656
/* 000316 0x80C1BB30 02002025 */ move	$a0, $s0
/* 000317 0x80C1BB34 0C04C5F0 */ jal	SceneProc_DrawTranslucentSceneAnimatedTextures
/* 000318 0x80C1BB38 00402825 */ move	$a1, $v0
/* 000319 0x80C1BB3C 8FB80038 */ lw	$t8, 0X38($sp)
/* 000320 0x80C1BB40 8E020000 */ lw	$v0, 0X0($s0)
/* 000321 0x80C1BB44 2401FFF0 */ li	$at, -16
/* 000322 0x80C1BB48 8F19015C */ lw	$t9, 0X15C($t8)
/* 000323 0x80C1BB4C 8C4F02B4 */ lw	$t7, 0X2B4($v0)
/* 000324 0x80C1BB50 93280001 */ lbu	$t0, 0X1($t9)
/* 000325 0x80C1BB54 00084980 */ sll	$t1, $t0, 6
/* 000326 0x80C1BB58 252A000F */ addiu	$t2, $t1, 15
/* 000327 0x80C1BB5C 01415824 */ and	$t3, $t2, $at
/* 000328 0x80C1BB60 01EB3023 */ subu	$a2, $t7, $t3
/* 000329 0x80C1BB64 10C00017 */ beqz	$a2, .L_80C1BBC4
/* 000330 0x80C1BB68 AC4602B4 */ sw	$a2, 0X2B4($v0)
/* 000331 0x80C1BB6C 8E040000 */ lw	$a0, 0X0($s0)
/* 000332 0x80C1BB70 0C04B0B7 */ jal	func_8012C2DC
/* 000333 0x80C1BB74 AFA60028 */ sw	$a2, 0X28($sp)
/* 000334 0x80C1BB78 860C0810 */ lh	$t4, 0X810($s0)
/* 000335 0x80C1BB7C 000C6880 */ sll	$t5, $t4, 2
/* 000336 0x80C1BB80 020D7021 */ addu	$t6, $s0, $t5
/* 000337 0x80C1BB84 0C037F37 */ jal	func_800DFCDC
/* 000338 0x80C1BB88 8DC40800 */ lw	$a0, 0X800($t6)
/* 000339 0x80C1BB8C 34018000 */ ori	$at, $zero, 0X8000
/* 000340 0x80C1BB90 00412021 */ addu	$a0, $v0, $at
/* 000341 0x80C1BB94 00042400 */ sll	$a0, $a0, 16
/* 000342 0x80C1BB98 00042403 */ sra	$a0, $a0, 16
/* 000343 0x80C1BB9C 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000344 0x80C1BBA0 24050001 */ li	$a1, 1
/* 000345 0x80C1BBA4 8FB80038 */ lw	$t8, 0X38($sp)
/* 000346 0x80C1BBA8 8FA60028 */ lw	$a2, 0X28($sp)
/* 000347 0x80C1BBAC 02002025 */ move	$a0, $s0
/* 000348 0x80C1BBB0 00003825 */ move	$a3, $zero
/* 000349 0x80C1BBB4 AFA00010 */ sw	$zero, 0X10($sp)
/* 000350 0x80C1BBB8 27050144 */ addiu	$a1, $t8, 324
/* 000351 0x80C1BBBC 0C061143 */ jal	func_8018450C
/* 000352 0x80C1BBC0 AFB80014 */ sw	$t8, 0X14($sp)
.L_80C1BBC4:
/* 000353 0x80C1BBC4 8FBF0024 */ lw	$ra, 0X24($sp)
.L_80C1BBC8:
/* 000354 0x80C1BBC8 8FB00020 */ lw	$s0, 0X20($sp)
/* 000355 0x80C1BBCC 27BD0038 */ addiu	$sp, $sp, 56
/* 000356 0x80C1BBD0 03E00008 */ jr	$ra
/* 000357 0x80C1BBD4 00000000 */ nop
/* 000358 0x80C1BBD8 00000000 */ nop
/* 000359 0x80C1BBDC 00000000 */ nop
