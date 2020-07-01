.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_808A24D0
/* 000000 0x808A24D0 AC8501F0 */ sw	$a1, 0X1F0($a0)
/* 000001 0x808A24D4 03E00008 */ jr	$ra
/* 000002 0x808A24D8 00000000 */ nop

glabel func_808A24DC
/* 000003 0x808A24DC 27BDFFA8 */ addiu	$sp, $sp, -88
/* 000004 0x808A24E0 AFB10020 */ sw	$s1, 0X20($sp)
/* 000005 0x808A24E4 AFB0001C */ sw	$s0, 0X1C($sp)
/* 000006 0x808A24E8 00808025 */ move	$s0, $a0
/* 000007 0x808A24EC 00A08825 */ move	$s1, $a1
/* 000008 0x808A24F0 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000009 0x808A24F4 C6040028 */ lwc1	$f4, 0X28($s0)
/* 000010 0x808A24F8 27B80050 */ addiu	$t8, $sp, 80
/* 000011 0x808A24FC 27B90054 */ addiu	$t9, $sp, 84
/* 000012 0x808A2500 E7A40050 */ swc1	$f4, 0X50($sp)
/* 000013 0x808A2504 960E0090 */ lhu	$t6, 0X90($s0)
/* 000014 0x808A2508 02202025 */ move	$a0, $s1
/* 000015 0x808A250C 26250830 */ addiu	$a1, $s1, 2096
/* 000016 0x808A2510 31CF0020 */ andi	$t7, $t6, 0X20
/* 000017 0x808A2514 A7AF004E */ sh	$t7, 0X4E($sp)
/* 000018 0x808A2518 8E07002C */ lw	$a3, 0X2C($s0)
/* 000019 0x808A251C 8E060024 */ lw	$a2, 0X24($s0)
/* 000020 0x808A2520 AFB90014 */ sw	$t9, 0X14($sp)
/* 000021 0x808A2524 0C03286B */ jal	func_800CA1AC
/* 000022 0x808A2528 AFB80010 */ sw	$t8, 0X10($sp)
/* 000023 0x808A252C 1040001E */ beqz	$v0, .L_808A25A8
/* 000024 0x808A2530 C7A80050 */ lwc1	$f8, 0X50($sp)
/* 000025 0x808A2534 C6060028 */ lwc1	$f6, 0X28($s0)
/* 000026 0x808A2538 3C0141A0 */ lui	$at, 0x41A0
/* 000027 0x808A253C 4608303C */ c.lt.s	$f6, $f8
/* 000028 0x808A2540 00000000 */ nop
/* 000029 0x808A2544 45020019 */ bc1fl .L_808A25AC
/* 000030 0x808A2548 960A0090 */ lhu	$t2, 0X90($s0)
/* 000031 0x808A254C 44810000 */ mtc1	$at, $f0
/* 000032 0x808A2550 00000000 */ nop
/* 000033 0x808A2554 96080090 */ lhu	$t0, 0X90($s0)
/* 000034 0x808A2558 C60A0024 */ lwc1	$f10, 0X24($s0)
/* 000035 0x808A255C 3C01808A */ lui	$at, %hi(D_808A30B0)
/* 000036 0x808A2560 35090020 */ ori	$t1, $t0, 0X20
/* 000037 0x808A2564 A6090090 */ sh	$t1, 0X90($s0)
/* 000038 0x808A2568 E7AA0040 */ swc1	$f10, 0X40($sp)
/* 000039 0x808A256C C6120028 */ lwc1	$f18, 0X28($s0)
/* 000040 0x808A2570 C42830B0 */ lwc1	$f8, %lo(D_808A30B0)($at)
/* 000041 0x808A2574 44060000 */ mfc1	$a2, $f0
/* 000042 0x808A2578 46009101 */ sub.s	$f4, $f18, $f0
/* 000043 0x808A257C 02202025 */ move	$a0, $s1
/* 000044 0x808A2580 27A50040 */ addiu	$a1, $sp, 64
/* 000045 0x808A2584 3C074120 */ lui	$a3, 0x4120
/* 000046 0x808A2588 E7A40044 */ swc1	$f4, 0X44($sp)
/* 000047 0x808A258C C606002C */ lwc1	$f6, 0X2C($s0)
/* 000048 0x808A2590 E7A00010 */ swc1	$f0, 0X10($sp)
/* 000049 0x808A2594 E7A80014 */ swc1	$f8, 0X14($sp)
/* 000050 0x808A2598 0C02C7A5 */ jal	EffectSS_SpawnBubble
/* 000051 0x808A259C E7A60048 */ swc1	$f6, 0X48($sp)
/* 000052 0x808A25A0 10000005 */ b	.L_808A25B8
/* 000053 0x808A25A4 96020090 */ lhu	$v0, 0X90($s0)
.L_808A25A8:
/* 000054 0x808A25A8 960A0090 */ lhu	$t2, 0X90($s0)
.L_808A25AC:
/* 000055 0x808A25AC 314BFFDF */ andi	$t3, $t2, 0XFFDF
/* 000056 0x808A25B0 A60B0090 */ sh	$t3, 0X90($s0)
/* 000057 0x808A25B4 96020090 */ lhu	$v0, 0X90($s0)
.L_808A25B8:
/* 000058 0x808A25B8 97AD004E */ lhu	$t5, 0X4E($sp)
/* 000059 0x808A25BC 304C0040 */ andi	$t4, $v0, 0X40
/* 000060 0x808A25C0 11800048 */ beqz	$t4, .L_808A26E4
/* 000061 0x808A25C4 304E0020 */ andi	$t6, $v0, 0X20
/* 000062 0x808A25C8 11AE0046 */ beq	$t5, $t6, .L_808A26E4
/* 000063 0x808A25CC 26040024 */ addiu	$a0, $s0, 36
/* 000064 0x808A25D0 26050108 */ addiu	$a1, $s0, 264
/* 000065 0x808A25D4 0C03FD7D */ jal	Math_Vec3f_Diff
/* 000066 0x808A25D8 27A60034 */ addiu	$a2, $sp, 52
/* 000067 0x808A25DC 44808000 */ mtc1	$zero, $f16
/* 000068 0x808A25E0 C7AA0038 */ lwc1	$f10, 0X38($sp)
/* 000069 0x808A25E4 C7AC0034 */ lwc1	$f12, 0X34($sp)
/* 000070 0x808A25E8 C7AE003C */ lwc1	$f14, 0X3C($sp)
/* 000071 0x808A25EC 46105032 */ c.eq.s	$f10, $f16
/* 000072 0x808A25F0 00000000 */ nop
/* 000073 0x808A25F4 45030024 */ bc1tl .L_808A2688
/* 000074 0x808A25F8 02002025 */ move	$a0, $s0
/* 000075 0x808A25FC 460C6482 */ mul.s	$f18, $f12, $f12
/* 000076 0x808A2600 C7A60050 */ lwc1	$f6, 0X50($sp)
/* 000077 0x808A2604 460E7102 */ mul.s	$f4, $f14, $f14
/* 000078 0x808A2608 46049000 */ add.s	$f0, $f18, $f4
/* 000079 0x808A260C 46000004 */ sqrt.s	$f0, $f0
/* 000080 0x808A2610 46100032 */ c.eq.s	$f0, $f16
/* 000081 0x808A2614 46000086 */ mov.s	$f2, $f0
/* 000082 0x808A2618 45030007 */ bc1tl .L_808A2638
/* 000083 0x808A261C C7B20034 */ lwc1	$f18, 0X34($sp)
/* 000084 0x808A2620 C608010C */ lwc1	$f8, 0X10C($s0)
/* 000085 0x808A2624 46083481 */ sub.s	$f18, $f6, $f8
/* 000086 0x808A2628 460A9103 */ div.s	$f4, $f18, $f10
/* 000087 0x808A262C 46002182 */ mul.s	$f6, $f4, $f0
/* 000088 0x808A2630 46003083 */ div.s	$f2, $f6, $f0
/* 000089 0x808A2634 C7B20034 */ lwc1	$f18, 0X34($sp)
.L_808A2638:
/* 000090 0x808A2638 C6080108 */ lwc1	$f8, 0X108($s0)
/* 000091 0x808A263C C7A60050 */ lwc1	$f6, 0X50($sp)
/* 000092 0x808A2640 46029282 */ mul.s	$f10, $f18, $f2
/* 000093 0x808A2644 240F012C */ li	$t7, 300
/* 000094 0x808A2648 E7A60038 */ swc1	$f6, 0X38($sp)
/* 000095 0x808A264C 02202025 */ move	$a0, $s1
/* 000096 0x808A2650 27A50034 */ addiu	$a1, $sp, 52
/* 000097 0x808A2654 00003025 */ move	$a2, $zero
/* 000098 0x808A2658 00003825 */ move	$a3, $zero
/* 000099 0x808A265C 460A4100 */ add.s	$f4, $f8, $f10
/* 000100 0x808A2660 C7A8003C */ lwc1	$f8, 0X3C($sp)
/* 000101 0x808A2664 46024282 */ mul.s	$f10, $f8, $f2
/* 000102 0x808A2668 E7A40034 */ swc1	$f4, 0X34($sp)
/* 000103 0x808A266C C6120110 */ lwc1	$f18, 0X110($s0)
/* 000104 0x808A2670 AFAF0014 */ sw	$t7, 0X14($sp)
/* 000105 0x808A2674 AFA00010 */ sw	$zero, 0X10($sp)
/* 000106 0x808A2678 460A9100 */ add.s	$f4, $f18, $f10
/* 000107 0x808A267C 0C02C7D3 */ jal	EffectSS_SpawnGSplash
/* 000108 0x808A2680 E7A4003C */ swc1	$f4, 0X3C($sp)
/* 000109 0x808A2684 02002025 */ move	$a0, $s0
.L_808A2688:
/* 000110 0x808A2688 0C02E3B2 */ jal	func_800B8EC8
/* 000111 0x808A268C 240528C5 */ li	$a1, 10437
/* 000112 0x808A2690 02202025 */ move	$a0, $s1
/* 000113 0x808A2694 27A50034 */ addiu	$a1, $sp, 52
/* 000114 0x808A2698 24060064 */ li	$a2, 100
/* 000115 0x808A269C 240701F4 */ li	$a3, 500
/* 000116 0x808A26A0 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 000117 0x808A26A4 AFA00010 */ sw	$zero, 0X10($sp)
/* 000118 0x808A26A8 24180004 */ li	$t8, 4
/* 000119 0x808A26AC AFB80010 */ sw	$t8, 0X10($sp)
/* 000120 0x808A26B0 02202025 */ move	$a0, $s1
/* 000121 0x808A26B4 27A50034 */ addiu	$a1, $sp, 52
/* 000122 0x808A26B8 24060064 */ li	$a2, 100
/* 000123 0x808A26BC 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 000124 0x808A26C0 240701F4 */ li	$a3, 500
/* 000125 0x808A26C4 24190008 */ li	$t9, 8
/* 000126 0x808A26C8 AFB90010 */ sw	$t9, 0X10($sp)
/* 000127 0x808A26CC 02202025 */ move	$a0, $s1
/* 000128 0x808A26D0 27A50034 */ addiu	$a1, $sp, 52
/* 000129 0x808A26D4 24060064 */ li	$a2, 100
/* 000130 0x808A26D8 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 000131 0x808A26DC 240701F4 */ li	$a3, 500
/* 000132 0x808A26E0 96020090 */ lhu	$v0, 0X90($s0)
.L_808A26E4:
/* 000133 0x808A26E4 34480040 */ ori	$t0, $v0, 0X40
/* 000134 0x808A26E8 A6080090 */ sh	$t0, 0X90($s0)
/* 000135 0x808A26EC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000136 0x808A26F0 8FB0001C */ lw	$s0, 0X1C($sp)
/* 000137 0x808A26F4 8FB10020 */ lw	$s1, 0X20($sp)
/* 000138 0x808A26F8 03E00008 */ jr	$ra
/* 000139 0x808A26FC 27BD0058 */ addiu	$sp, $sp, 88

glabel EnBoom_Init
/* 000140 0x808A2700 27BDFE28 */ addiu	$sp, $sp, -472
/* 000141 0x808A2704 AFB00020 */ sw	$s0, 0X20($sp)
/* 000142 0x808A2708 00808025 */ move	$s0, $a0
/* 000143 0x808A270C AFBF0024 */ sw	$ra, 0X24($sp)
/* 000144 0x808A2710 AFA501DC */ sw	$a1, 0X1DC($sp)
/* 000145 0x808A2714 240EFFFF */ li	$t6, -1
/* 000146 0x808A2718 3C05808A */ lui	$a1, %hi(D_808A3060)
/* 000147 0x808A271C A20E0003 */ sb	$t6, 0X3($s0)
/* 000148 0x808A2720 24A53060 */ addiu	$a1, $a1, %lo(D_808A3060)
/* 000149 0x808A2724 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000150 0x808A2728 02002025 */ move	$a0, $s0
/* 000151 0x808A272C 3C09808A */ lui	$t1, %hi(D_808A3069)
/* 000152 0x808A2730 3C0A808A */ lui	$t2, %hi(D_808A306D)
/* 000153 0x808A2734 3C0F808A */ lui	$t7, %hi(D_808A3068)
/* 000154 0x808A2738 3C18808A */ lui	$t8, %hi(D_808A306C)
/* 000155 0x808A273C 3C19808A */ lui	$t9, %hi(D_808A3070)
/* 000156 0x808A2740 3C08808A */ lui	$t0, %hi(D_808A3074)
/* 000157 0x808A2744 914A306D */ lbu	$t2, %lo(D_808A306D)($t2)
/* 000158 0x808A2748 91293069 */ lbu	$t1, %lo(D_808A3069)($t1)
/* 000159 0x808A274C 91EF3068 */ lbu	$t7, %lo(D_808A3068)($t7)
/* 000160 0x808A2750 9318306C */ lbu	$t8, %lo(D_808A306C)($t8)
/* 000161 0x808A2754 93393070 */ lbu	$t9, %lo(D_808A3070)($t9)
/* 000162 0x808A2758 91083074 */ lbu	$t0, %lo(D_808A3074)($t0)
/* 000163 0x808A275C 3C0B808A */ lui	$t3, %hi(D_808A3071)
/* 000164 0x808A2760 3C0C808A */ lui	$t4, %hi(D_808A3075)
/* 000165 0x808A2764 918C3075 */ lbu	$t4, %lo(D_808A3075)($t4)
/* 000166 0x808A2768 916B3071 */ lbu	$t3, %lo(D_808A3071)($t3)
/* 000167 0x808A276C A3AA01B9 */ sb	$t2, 0X1B9($sp)
/* 000168 0x808A2770 A3A901B5 */ sb	$t1, 0X1B5($sp)
/* 000169 0x808A2774 A3AF01B4 */ sb	$t7, 0X1B4($sp)
/* 000170 0x808A2778 A3B801B8 */ sb	$t8, 0X1B8($sp)
/* 000171 0x808A277C A3B901BC */ sb	$t9, 0X1BC($sp)
/* 000172 0x808A2780 A3A801C0 */ sb	$t0, 0X1C0($sp)
/* 000173 0x808A2784 3C08808A */ lui	$t0, %hi(D_808A306F)
/* 000174 0x808A2788 3C19808A */ lui	$t9, %hi(D_808A306B)
/* 000175 0x808A278C 3C18808A */ lui	$t8, %hi(D_808A3076)
/* 000176 0x808A2790 3C0F808A */ lui	$t7, %hi(D_808A3072)
/* 000177 0x808A2794 3C09808A */ lui	$t1, %hi(D_808A3073)
/* 000178 0x808A2798 3C0A808A */ lui	$t2, %hi(D_808A3077)
/* 000179 0x808A279C 3C0D808A */ lui	$t5, %hi(D_808A306A)
/* 000180 0x808A27A0 3C0E808A */ lui	$t6, %hi(D_808A306E)
/* 000181 0x808A27A4 91CE306E */ lbu	$t6, %lo(D_808A306E)($t6)
/* 000182 0x808A27A8 91AD306A */ lbu	$t5, %lo(D_808A306A)($t5)
/* 000183 0x808A27AC 914A3077 */ lbu	$t2, %lo(D_808A3077)($t2)
/* 000184 0x808A27B0 91293073 */ lbu	$t1, %lo(D_808A3073)($t1)
/* 000185 0x808A27B4 91EF3072 */ lbu	$t7, %lo(D_808A3072)($t7)
/* 000186 0x808A27B8 93183076 */ lbu	$t8, %lo(D_808A3076)($t8)
/* 000187 0x808A27BC 9339306B */ lbu	$t9, %lo(D_808A306B)($t9)
/* 000188 0x808A27C0 9108306F */ lbu	$t0, %lo(D_808A306F)($t0)
/* 000189 0x808A27C4 A3AC01C1 */ sb	$t4, 0X1C1($sp)
/* 000190 0x808A27C8 A3AB01BD */ sb	$t3, 0X1BD($sp)
/* 000191 0x808A27CC 240B0008 */ li	$t3, 8
/* 000192 0x808A27D0 27AC0030 */ addiu	$t4, $sp, 48
/* 000193 0x808A27D4 AFAB01C4 */ sw	$t3, 0X1C4($sp)
/* 000194 0x808A27D8 AFA001C8 */ sw	$zero, 0X1C8($sp)
/* 000195 0x808A27DC AFA001CC */ sw	$zero, 0X1CC($sp)
/* 000196 0x808A27E0 AFAC0014 */ sw	$t4, 0X14($sp)
/* 000197 0x808A27E4 8FA401DC */ lw	$a0, 0X1DC($sp)
/* 000198 0x808A27E8 260501D0 */ addiu	$a1, $s0, 464
/* 000199 0x808A27EC 24060001 */ li	$a2, 1
/* 000200 0x808A27F0 00003825 */ move	$a3, $zero
/* 000201 0x808A27F4 AFA00010 */ sw	$zero, 0X10($sp)
/* 000202 0x808A27F8 A3AE01BA */ sb	$t6, 0X1BA($sp)
/* 000203 0x808A27FC A3AD01B6 */ sb	$t5, 0X1B6($sp)
/* 000204 0x808A2800 A3AA01C3 */ sb	$t2, 0X1C3($sp)
/* 000205 0x808A2804 A3A901BF */ sb	$t1, 0X1BF($sp)
/* 000206 0x808A2808 A3AF01BE */ sb	$t7, 0X1BE($sp)
/* 000207 0x808A280C A3B801C2 */ sb	$t8, 0X1C2($sp)
/* 000208 0x808A2810 A3B901B7 */ sb	$t9, 0X1B7($sp)
/* 000209 0x808A2814 0C02BE58 */ jal	Effect_Add
/* 000210 0x808A2818 A3A801BB */ sb	$t0, 0X1BB($sp)
/* 000211 0x808A281C 26050144 */ addiu	$a1, $s0, 324
/* 000212 0x808A2820 AFA50028 */ sw	$a1, 0X28($sp)
/* 000213 0x808A2824 0C038786 */ jal	Collision_InitQuadDefault
/* 000214 0x808A2828 8FA401DC */ lw	$a0, 0X1DC($sp)
/* 000215 0x808A282C 3C07808A */ lui	$a3, %hi(D_808A3010)
/* 000216 0x808A2830 8FA50028 */ lw	$a1, 0X28($sp)
/* 000217 0x808A2834 24E73010 */ addiu	$a3, $a3, %lo(D_808A3010)
/* 000218 0x808A2838 8FA401DC */ lw	$a0, 0X1DC($sp)
/* 000219 0x808A283C 0C0387C8 */ jal	Collision_InitQuadWithData
/* 000220 0x808A2840 02003025 */ move	$a2, $s0
/* 000221 0x808A2844 3C05808A */ lui	$a1, %hi(func_808A2918)
/* 000222 0x808A2848 24A52918 */ addiu	$a1, $a1, %lo(func_808A2918)
/* 000223 0x808A284C 0C228934 */ jal	func_808A24D0
/* 000224 0x808A2850 02002025 */ move	$a0, $s0
/* 000225 0x808A2854 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000226 0x808A2858 8FB00020 */ lw	$s0, 0X20($sp)
/* 000227 0x808A285C 27BD01D8 */ addiu	$sp, $sp, 472
/* 000228 0x808A2860 03E00008 */ jr	$ra
/* 000229 0x808A2864 00000000 */ nop

glabel EnBoom_Destroy
/* 000230 0x808A2868 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000231 0x808A286C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000232 0x808A2870 AFA40020 */ sw	$a0, 0X20($sp)
/* 000233 0x808A2874 00A03025 */ move	$a2, $a1
/* 000234 0x808A2878 8CC31CCC */ lw	$v1, 0X1CCC($a2)
/* 000235 0x808A287C 8FAE0020 */ lw	$t6, 0X20($sp)
/* 000236 0x808A2880 50600022 */ beqzl	$v1, .L_808A290C
/* 000237 0x808A2884 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000238 0x808A2888 8DC501D0 */ lw	$a1, 0X1D0($t6)
/* 000239 0x808A288C AFA60024 */ sw	$a2, 0X24($sp)
/* 000240 0x808A2890 AFA30018 */ sw	$v1, 0X18($sp)
/* 000241 0x808A2894 0C02BF73 */ jal	Effect_Destroy
/* 000242 0x808A2898 00C02025 */ move	$a0, $a2
/* 000243 0x808A289C 8FA50020 */ lw	$a1, 0X20($sp)
/* 000244 0x808A28A0 8FA40024 */ lw	$a0, 0X24($sp)
/* 000245 0x808A28A4 0C03879A */ jal	Collision_FiniQuad
/* 000246 0x808A28A8 24A50144 */ addiu	$a1, $a1, 324
/* 000247 0x808A28AC 8FA40020 */ lw	$a0, 0X20($sp)
/* 000248 0x808A28B0 8FA30018 */ lw	$v1, 0X18($sp)
/* 000249 0x808A28B4 8C820124 */ lw	$v0, 0X124($a0)
/* 000250 0x808A28B8 50400005 */ beqzl	$v0, .L_808A28D0
/* 000251 0x808A28BC 8C820120 */ lw	$v0, 0X120($a0)
/* 000252 0x808A28C0 AC400120 */ sw	$zero, 0X120($v0)
/* 000253 0x808A28C4 1000000C */ b	.L_808A28F8
/* 000254 0x808A28C8 AC620A7C */ sw	$v0, 0XA7C($v1)
/* 000255 0x808A28CC 8C820120 */ lw	$v0, 0X120($a0)
.L_808A28D0:
/* 000256 0x808A28D0 3C01FDFF */ lui	$at, 0xFDFF
/* 000257 0x808A28D4 50400004 */ beqzl	$v0, .L_808A28E8
/* 000258 0x808A28D8 8C6F0A6C */ lw	$t7, 0XA6C($v1)
/* 000259 0x808A28DC 10000006 */ b	.L_808A28F8
/* 000260 0x808A28E0 AC400124 */ sw	$zero, 0X124($v0)
/* 000261 0x808A28E4 8C6F0A6C */ lw	$t7, 0XA6C($v1)
.L_808A28E8:
/* 000262 0x808A28E8 3421FFFF */ ori	$at, $at, 0XFFFF
/* 000263 0x808A28EC AC600A7C */ sw	$zero, 0XA7C($v1)
/* 000264 0x808A28F0 01E1C024 */ and	$t8, $t7, $at
/* 000265 0x808A28F4 AC780A6C */ sw	$t8, 0XA6C($v1)
.L_808A28F8:
/* 000266 0x808A28F8 8C790A74 */ lw	$t9, 0XA74($v1)
/* 000267 0x808A28FC 3C010080 */ lui	$at, 0x0080
/* 000268 0x808A2900 03214025 */ or	$t0, $t9, $at
/* 000269 0x808A2904 AC680A74 */ sw	$t0, 0XA74($v1)
/* 000270 0x808A2908 8FBF0014 */ lw	$ra, 0X14($sp)
.L_808A290C:
/* 000271 0x808A290C 27BD0020 */ addiu	$sp, $sp, 32
/* 000272 0x808A2910 03E00008 */ jr	$ra
/* 000273 0x808A2914 00000000 */ nop

glabel func_808A2918
/* 000274 0x808A2918 27BDFF80 */ addiu	$sp, $sp, -128
/* 000275 0x808A291C AFB00030 */ sw	$s0, 0X30($sp)
/* 000276 0x808A2920 00808025 */ move	$s0, $a0
/* 000277 0x808A2924 AFBF0034 */ sw	$ra, 0X34($sp)
/* 000278 0x808A2928 AFA50084 */ sw	$a1, 0X84($sp)
/* 000279 0x808A292C 8FAE0084 */ lw	$t6, 0X84($sp)
/* 000280 0x808A2930 02002025 */ move	$a0, $s0
/* 000281 0x808A2934 8DCF1CCC */ lw	$t7, 0X1CCC($t6)
/* 000282 0x808A2938 AFAF0078 */ sw	$t7, 0X78($sp)
/* 000283 0x808A293C 8E0301C4 */ lw	$v1, 0X1C4($s0)
/* 000284 0x808A2940 10600077 */ beqz	$v1, .L_808A2B20
/* 000285 0x808A2944 2465003C */ addiu	$a1, $v1, 60
/* 000286 0x808A2948 AFA3007C */ sw	$v1, 0X7C($sp)
/* 000287 0x808A294C 0C02DB4B */ jal	Actor_YawToPoint
/* 000288 0x808A2950 AFA50040 */ sw	$a1, 0X40($sp)
/* 000289 0x808A2954 A7A20072 */ sh	$v0, 0X72($sp)
/* 000290 0x808A2958 86180032 */ lh	$t8, 0X32($s0)
/* 000291 0x808A295C 02002025 */ move	$a0, $s0
/* 000292 0x808A2960 8FA50040 */ lw	$a1, 0X40($sp)
/* 000293 0x808A2964 03023023 */ subu	$a2, $t8, $v0
/* 000294 0x808A2968 00063400 */ sll	$a2, $a2, 16
/* 000295 0x808A296C 00063403 */ sra	$a2, $a2, 16
/* 000296 0x808A2970 0C02DB6A */ jal	Actor_PitchToPoint
/* 000297 0x808A2974 A7A60070 */ sh	$a2, 0X70($sp)
/* 000298 0x808A2978 A7A2006E */ sh	$v0, 0X6E($sp)
/* 000299 0x808A297C 86190030 */ lh	$t9, 0X30($s0)
/* 000300 0x808A2980 26040024 */ addiu	$a0, $s0, 36
/* 000301 0x808A2984 8FA50040 */ lw	$a1, 0X40($sp)
/* 000302 0x808A2988 03223823 */ subu	$a3, $t9, $v0
/* 000303 0x808A298C 00073C00 */ sll	$a3, $a3, 16
/* 000304 0x808A2990 00073C03 */ sra	$a3, $a3, 16
/* 000305 0x808A2994 0C03FE21 */ jal	Math_Vec3f_DistXYZ
/* 000306 0x808A2998 A7A7006C */ sh	$a3, 0X6C($sp)
/* 000307 0x808A299C 3C01808A */ lui	$at, %hi(D_808A30B4)
/* 000308 0x808A29A0 C42E30B4 */ lwc1	$f14, %lo(D_808A30B4)($at)
/* 000309 0x808A29A4 3C014348 */ lui	$at, 0x4348
/* 000310 0x808A29A8 44812000 */ mtc1	$at, $f4
/* 000311 0x808A29AC 3C01808A */ lui	$at, %hi(D_808A30B8)
/* 000312 0x808A29B0 C42830B8 */ lwc1	$f8, %lo(D_808A30B8)($at)
/* 000313 0x808A29B4 46002181 */ sub.s	$f6, $f4, $f0
/* 000314 0x808A29B8 8FA3007C */ lw	$v1, 0X7C($sp)
/* 000315 0x808A29BC 87A60070 */ lh	$a2, 0X70($sp)
/* 000316 0x808A29C0 87A7006C */ lh	$a3, 0X6C($sp)
/* 000317 0x808A29C4 46083302 */ mul.s	$f12, $f6, $f8
/* 000318 0x808A29C8 8FA80078 */ lw	$t0, 0X78($sp)
/* 000319 0x808A29CC 460E603C */ c.lt.s	$f12, $f14
/* 000320 0x808A29D0 00000000 */ nop
/* 000321 0x808A29D4 45000002 */ bc1f .L_808A29E0
/* 000322 0x808A29D8 00000000 */ nop
/* 000323 0x808A29DC 46007306 */ mov.s	$f12, $f14
.L_808A29E0:
/* 000324 0x808A29E0 51030011 */ beql	$t0, $v1, .L_808A2A28
/* 000325 0x808A29E4 920201CE */ lbu	$v0, 0X1CE($s0)
/* 000326 0x808A29E8 8C690138 */ lw	$t1, 0X138($v1)
/* 000327 0x808A29EC 1120000B */ beqz	$t1, .L_808A2A1C
/* 000328 0x808A29F0 00000000 */ nop
/* 000329 0x808A29F4 820A01CF */ lb	$t2, 0X1CF($s0)
/* 000330 0x808A29F8 0543000B */ bgezl	$t2, .L_808A2A28
/* 000331 0x808A29FC 920201CE */ lbu	$v0, 0X1CE($s0)
/* 000332 0x808A2A00 04C10003 */ bgez	$a2, .L_808A2A10
/* 000333 0x808A2A04 00C01025 */ move	$v0, $a2
/* 000334 0x808A2A08 10000001 */ b	.L_808A2A10
/* 000335 0x808A2A0C 00061023 */ negu	$v0, $a2
.L_808A2A10:
/* 000336 0x808A2A10 28414001 */ slti	$at, $v0, 16385
/* 000337 0x808A2A14 54200004 */ bnezl	$at, .L_808A2A28
/* 000338 0x808A2A18 920201CE */ lbu	$v0, 0X1CE($s0)
.L_808A2A1C:
/* 000339 0x808A2A1C 10000040 */ b	.L_808A2B20
/* 000340 0x808A2A20 AE0001C4 */ sw	$zero, 0X1C4($s0)
/* 000341 0x808A2A24 920201CE */ lbu	$v0, 0X1CE($s0)
.L_808A2A28:
/* 000342 0x808A2A28 26040032 */ addiu	$a0, $s0, 50
/* 000343 0x808A2A2C 5040000D */ beqzl	$v0, .L_808A2A64
/* 000344 0x808A2A30 820201CF */ lb	$v0, 0X1CF($s0)
/* 000345 0x808A2A34 860C001C */ lh	$t4, 0X1C($s0)
/* 000346 0x808A2A38 244BFFFF */ addiu	$t3, $v0, -1
/* 000347 0x808A2A3C A20B01CE */ sb	$t3, 0X1CE($s0)
/* 000348 0x808A2A40 15800003 */ bnez	$t4, .L_808A2A50
/* 000349 0x808A2A44 2402FE70 */ li	$v0, -400
/* 000350 0x808A2A48 10000001 */ b	.L_808A2A50
/* 000351 0x808A2A4C 24020190 */ li	$v0, 400
.L_808A2A50:
/* 000352 0x808A2A50 860D0032 */ lh	$t5, 0X32($s0)
/* 000353 0x808A2A54 01A27021 */ addu	$t6, $t5, $v0
/* 000354 0x808A2A58 10000022 */ b	.L_808A2AE4
/* 000355 0x808A2A5C A60E0032 */ sh	$t6, 0X32($s0)
/* 000356 0x808A2A60 820201CF */ lb	$v0, 0X1CF($s0)
.L_808A2A64:
/* 000357 0x808A2A64 2418FFFF */ li	$t8, -1
/* 000358 0x808A2A68 18400003 */ blez	$v0, .L_808A2A78
/* 000359 0x808A2A6C 244FFFFF */ addiu	$t7, $v0, -1
/* 000360 0x808A2A70 10000002 */ b	.L_808A2A7C
/* 000361 0x808A2A74 A20F01CF */ sb	$t7, 0X1CF($s0)
.L_808A2A78:
/* 000362 0x808A2A78 A21801CF */ sb	$t8, 0X1CF($s0)
.L_808A2A7C:
/* 000363 0x808A2A7C 821901CF */ lb	$t9, 0X1CF($s0)
/* 000364 0x808A2A80 87A50072 */ lh	$a1, 0X72($sp)
/* 000365 0x808A2A84 1B200003 */ blez	$t9, .L_808A2A94
/* 000366 0x808A2A88 00000000 */ nop
/* 000367 0x808A2A8C 1000000E */ b	.L_808A2AC8
/* 000368 0x808A2A90 240203E8 */ li	$v0, 1000
.L_808A2A94:
/* 000369 0x808A2A94 04C10003 */ bgez	$a2, .L_808A2AA4
/* 000370 0x808A2A98 00C01825 */ move	$v1, $a2
/* 000371 0x808A2A9C 10000001 */ b	.L_808A2AA4
/* 000372 0x808A2AA0 00061823 */ negu	$v1, $a2
.L_808A2AA4:
/* 000373 0x808A2AA4 44835000 */ mtc1	$v1, $f10
/* 000374 0x808A2AA8 00000000 */ nop
/* 000375 0x808A2AAC 46805420 */ cvt.s.w	$f16, $f10
/* 000376 0x808A2AB0 460C8482 */ mul.s	$f18, $f16, $f12
/* 000377 0x808A2AB4 4600910D */ trunc.w.s	$f4, $f18
/* 000378 0x808A2AB8 44022000 */ mfc1	$v0, $f4
/* 000379 0x808A2ABC 00000000 */ nop
/* 000380 0x808A2AC0 00021400 */ sll	$v0, $v0, 16
/* 000381 0x808A2AC4 00021403 */ sra	$v0, $v0, 16
.L_808A2AC8:
/* 000382 0x808A2AC8 00023400 */ sll	$a2, $v0, 16
/* 000383 0x808A2ACC 00063403 */ sra	$a2, $a2, 16
/* 000384 0x808A2AD0 A7A7006C */ sh	$a3, 0X6C($sp)
/* 000385 0x808A2AD4 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000386 0x808A2AD8 E7AC0064 */ swc1	$f12, 0X64($sp)
/* 000387 0x808A2ADC 87A7006C */ lh	$a3, 0X6C($sp)
/* 000388 0x808A2AE0 C7AC0064 */ lwc1	$f12, 0X64($sp)
.L_808A2AE4:
/* 000389 0x808A2AE4 04E10003 */ bgez	$a3, .L_808A2AF4
/* 000390 0x808A2AE8 00E01025 */ move	$v0, $a3
/* 000391 0x808A2AEC 10000001 */ b	.L_808A2AF4
/* 000392 0x808A2AF0 00071023 */ negu	$v0, $a3
.L_808A2AF4:
/* 000393 0x808A2AF4 44823000 */ mtc1	$v0, $f6
/* 000394 0x808A2AF8 26040030 */ addiu	$a0, $s0, 48
/* 000395 0x808A2AFC 87A5006E */ lh	$a1, 0X6E($sp)
/* 000396 0x808A2B00 46803220 */ cvt.s.w	$f8, $f6
/* 000397 0x808A2B04 460C4282 */ mul.s	$f10, $f8, $f12
/* 000398 0x808A2B08 4600540D */ trunc.w.s	$f16, $f10
/* 000399 0x808A2B0C 44068000 */ mfc1	$a2, $f16
/* 000400 0x808A2B10 00000000 */ nop
/* 000401 0x808A2B14 00063400 */ sll	$a2, $a2, 16
/* 000402 0x808A2B18 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000403 0x808A2B1C 00063403 */ sra	$a2, $a2, 16
.L_808A2B20:
/* 000404 0x808A2B20 02002025 */ move	$a0, $s0
/* 000405 0x808A2B24 0C02DB01 */ jal	func_800B6C04
/* 000406 0x808A2B28 3C054140 */ lui	$a1, 0x4140
/* 000407 0x808A2B2C 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 000408 0x808A2B30 02002025 */ move	$a0, $s0
/* 000409 0x808A2B34 02002025 */ move	$a0, $s0
/* 000410 0x808A2B38 0C228937 */ jal	func_808A24DC
/* 000411 0x808A2B3C 8FA50084 */ lw	$a1, 0X84($sp)
/* 000412 0x808A2B40 02002025 */ move	$a0, $s0
/* 000413 0x808A2B44 0C02E404 */ jal	func_800B9010
/* 000414 0x808A2B48 24051010 */ li	$a1, 4112
/* 000415 0x808A2B4C 920A0154 */ lbu	$t2, 0X154($s0)
/* 000416 0x808A2B50 26050108 */ addiu	$a1, $s0, 264
/* 000417 0x808A2B54 26060024 */ addiu	$a2, $s0, 36
/* 000418 0x808A2B58 314B0002 */ andi	$t3, $t2, 0X2
/* 000419 0x808A2B5C 11600016 */ beqz	$t3, .L_808A2BB8
/* 000420 0x808A2B60 27A70050 */ addiu	$a3, $sp, 80
/* 000421 0x808A2B64 8E020148 */ lw	$v0, 0X148($s0)
/* 000422 0x808A2B68 2401000E */ li	$at, 14
/* 000423 0x808A2B6C 84430000 */ lh	$v1, 0X0($v0)
/* 000424 0x808A2B70 54610007 */ bnel	$v1, $at, .L_808A2B90
/* 000425 0x808A2B74 240100E3 */ li	$at, 227
/* 000426 0x808A2B78 8444001C */ lh	$a0, 0X1C($v0)
/* 000427 0x808A2B7C 24010007 */ li	$at, 7
/* 000428 0x808A2B80 10810002 */ beq	$a0, $at, .L_808A2B8C
/* 000429 0x808A2B84 24010006 */ li	$at, 6
/* 000430 0x808A2B88 14810003 */ bne	$a0, $at, .L_808A2B98
.L_808A2B8C:
/* 000431 0x808A2B8C 240100E3 */ li	$at, 227
.L_808A2B90:
/* 000432 0x808A2B90 5461000A */ bnel	$v1, $at, .L_808A2BBC
/* 000433 0x808A2B94 920401CC */ lbu	$a0, 0X1CC($s0)
.L_808A2B98:
/* 000434 0x808A2B98 AE0201C8 */ sw	$v0, 0X1C8($s0)
/* 000435 0x808A2B9C 844C0000 */ lh	$t4, 0X0($v0)
/* 000436 0x808A2BA0 240100E3 */ li	$at, 227
/* 000437 0x808A2BA4 55810005 */ bnel	$t4, $at, .L_808A2BBC
/* 000438 0x808A2BA8 920401CC */ lbu	$a0, 0X1CC($s0)
/* 000439 0x808A2BAC 8C4D0004 */ lw	$t5, 0X4($v0)
/* 000440 0x808A2BB0 35AE2000 */ ori	$t6, $t5, 0X2000
/* 000441 0x808A2BB4 AC4E0004 */ sw	$t6, 0X4($v0)
.L_808A2BB8:
/* 000442 0x808A2BB8 920401CC */ lbu	$a0, 0X1CC($s0)
.L_808A2BBC:
/* 000443 0x808A2BBC 2618007C */ addiu	$t8, $s0, 124
/* 000444 0x808A2BC0 24190001 */ li	$t9, 1
/* 000445 0x808A2BC4 14800003 */ bnez	$a0, .L_808A2BD4
/* 000446 0x808A2BC8 00801825 */ move	$v1, $a0
/* 000447 0x808A2BCC 10000005 */ b	.L_808A2BE4
/* 000448 0x808A2BD0 00001025 */ move	$v0, $zero
.L_808A2BD4:
/* 000449 0x808A2BD4 248FFFFF */ addiu	$t7, $a0, -1
/* 000450 0x808A2BD8 31E300FF */ andi	$v1, $t7, 0XFF
/* 000451 0x808A2BDC 00601025 */ move	$v0, $v1
/* 000452 0x808A2BE0 A20F01CC */ sb	$t7, 0X1CC($s0)
.L_808A2BE4:
/* 000453 0x808A2BE4 1040002D */ beqz	$v0, .L_808A2C9C
/* 000454 0x808A2BE8 8FA40084 */ lw	$a0, 0X84($sp)
/* 000455 0x808A2BEC 24080001 */ li	$t0, 1
/* 000456 0x808A2BF0 24090001 */ li	$t1, 1
/* 000457 0x808A2BF4 240A0001 */ li	$t2, 1
/* 000458 0x808A2BF8 27AB005C */ addiu	$t3, $sp, 92
/* 000459 0x808A2BFC AFAB0024 */ sw	$t3, 0X24($sp)
/* 000460 0x808A2C00 AFAA0020 */ sw	$t2, 0X20($sp)
/* 000461 0x808A2C04 AFA9001C */ sw	$t1, 0X1C($sp)
/* 000462 0x808A2C08 AFA80018 */ sw	$t0, 0X18($sp)
/* 000463 0x808A2C0C 24840830 */ addiu	$a0, $a0, 2096
/* 000464 0x808A2C10 AFB80010 */ sw	$t8, 0X10($sp)
/* 000465 0x808A2C14 0C031571 */ jal	func_800C55C4
/* 000466 0x808A2C18 AFB90014 */ sw	$t9, 0X14($sp)
/* 000467 0x808A2C1C 10400012 */ beqz	$v0, .L_808A2C68
/* 000468 0x808A2C20 00401825 */ move	$v1, $v0
/* 000469 0x808A2C24 8E06007C */ lw	$a2, 0X7C($s0)
/* 000470 0x808A2C28 27AC0050 */ addiu	$t4, $sp, 80
/* 000471 0x808A2C2C AFAC0010 */ sw	$t4, 0X10($sp)
/* 000472 0x808A2C30 AFA20074 */ sw	$v0, 0X74($sp)
/* 000473 0x808A2C34 8FA40084 */ lw	$a0, 0X84($sp)
/* 000474 0x808A2C38 02002825 */ move	$a1, $s0
/* 000475 0x808A2C3C 0C02E42B */ jal	func_800B90AC
/* 000476 0x808A2C40 8FA7005C */ lw	$a3, 0X5C($sp)
/* 000477 0x808A2C44 10400003 */ beqz	$v0, .L_808A2C54
/* 000478 0x808A2C48 8FA30074 */ lw	$v1, 0X74($sp)
/* 000479 0x808A2C4C 10000006 */ b	.L_808A2C68
/* 000480 0x808A2C50 00001825 */ move	$v1, $zero
.L_808A2C54:
/* 000481 0x808A2C54 8FA40084 */ lw	$a0, 0X84($sp)
/* 000482 0x808A2C58 27A50050 */ addiu	$a1, $sp, 80
/* 000483 0x808A2C5C 0C03A19A */ jal	func_800E8668
/* 000484 0x808A2C60 AFA30074 */ sw	$v1, 0X74($sp)
/* 000485 0x808A2C64 8FA30074 */ lw	$v1, 0X74($sp)
.L_808A2C68:
/* 000486 0x808A2C68 5060000C */ beqzl	$v1, .L_808A2C9C
/* 000487 0x808A2C6C 920301CC */ lbu	$v1, 0X1CC($s0)
/* 000488 0x808A2C70 860D0030 */ lh	$t5, 0X30($s0)
/* 000489 0x808A2C74 860F0032 */ lh	$t7, 0X32($s0)
/* 000490 0x808A2C78 34018000 */ ori	$at, $zero, 0X8000
/* 000491 0x808A2C7C 000D7023 */ negu	$t6, $t5
/* 000492 0x808A2C80 01E1C021 */ addu	$t8, $t7, $at
/* 000493 0x808A2C84 A60E0030 */ sh	$t6, 0X30($s0)
/* 000494 0x808A2C88 A6180032 */ sh	$t8, 0X32($s0)
/* 000495 0x808A2C8C 8FB90078 */ lw	$t9, 0X78($sp)
/* 000496 0x808A2C90 A20001CC */ sb	$zero, 0X1CC($s0)
/* 000497 0x808A2C94 AE1901C4 */ sw	$t9, 0X1C4($s0)
/* 000498 0x808A2C98 920301CC */ lbu	$v1, 0X1CC($s0)
.L_808A2C9C:
/* 000499 0x808A2C9C 28610011 */ slti	$at, $v1, 17
/* 000500 0x808A2CA0 1020002C */ beqz	$at, .L_808A2D54
/* 000501 0x808A2CA4 8FA50078 */ lw	$a1, 0X78($sp)
/* 000502 0x808A2CA8 26040024 */ addiu	$a0, $s0, 36
/* 000503 0x808A2CAC 0C03FE21 */ jal	Math_Vec3f_DistXYZ
/* 000504 0x808A2CB0 24A5003C */ addiu	$a1, $a1, 60
/* 000505 0x808A2CB4 8E0201C4 */ lw	$v0, 0X1C4($s0)
/* 000506 0x808A2CB8 8FA80078 */ lw	$t0, 0X78($sp)
/* 000507 0x808A2CBC 3C014220 */ lui	$at, 0x4220
/* 000508 0x808A2CC0 44819000 */ mtc1	$at, $f18
/* 000509 0x808A2CC4 51020007 */ beql	$t0, $v0, .L_808A2CE4
/* 000510 0x808A2CC8 4612003C */ c.lt.s	$f0, $f18
/* 000511 0x808A2CCC 14400002 */ bnez	$v0, .L_808A2CD8
/* 000512 0x808A2CD0 24090008 */ li	$t1, 8
/* 000513 0x808A2CD4 A20901CE */ sb	$t1, 0X1CE($s0)
.L_808A2CD8:
/* 000514 0x808A2CD8 8FAA0078 */ lw	$t2, 0X78($sp)
/* 000515 0x808A2CDC AE0A01C4 */ sw	$t2, 0X1C4($s0)
/* 000516 0x808A2CE0 4612003C */ c.lt.s	$f0, $f18
.L_808A2CE4:
/* 000517 0x808A2CE4 00000000 */ nop
/* 000518 0x808A2CE8 4502001B */ bc1fl .L_808A2D58
/* 000519 0x808A2CEC 8E0301C8 */ lw	$v1, 0X1C8($s0)
/* 000520 0x808A2CF0 8E0301C8 */ lw	$v1, 0X1C8($s0)
/* 000521 0x808A2CF4 8FA50078 */ lw	$a1, 0X78($sp)
/* 000522 0x808A2CF8 10600014 */ beqz	$v1, .L_808A2D4C
/* 000523 0x808A2CFC 24640024 */ addiu	$a0, $v1, 36
/* 000524 0x808A2D00 24A50024 */ addiu	$a1, $a1, 36
/* 000525 0x808A2D04 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000526 0x808A2D08 AFA3007C */ sw	$v1, 0X7C($sp)
/* 000527 0x808A2D0C 8FA3007C */ lw	$v1, 0X7C($sp)
/* 000528 0x808A2D10 2401000E */ li	$at, 14
/* 000529 0x808A2D14 846B0000 */ lh	$t3, 0X0($v1)
/* 000530 0x808A2D18 55610009 */ bnel	$t3, $at, .L_808A2D40
/* 000531 0x808A2D1C 8C6E0004 */ lw	$t6, 0X4($v1)
/* 000532 0x808A2D20 946C0090 */ lhu	$t4, 0X90($v1)
/* 000533 0x808A2D24 3C01808A */ lui	$at, %hi(D_808A30BC)
/* 000534 0x808A2D28 C42430BC */ lwc1	$f4, %lo(D_808A30BC)($at)
/* 000535 0x808A2D2C 318DFFFC */ andi	$t5, $t4, 0XFFFC
/* 000536 0x808A2D30 A46D0090 */ sh	$t5, 0X90($v1)
/* 000537 0x808A2D34 10000005 */ b	.L_808A2D4C
/* 000538 0x808A2D38 E4640074 */ swc1	$f4, 0X74($v1)
/* 000539 0x808A2D3C 8C6E0004 */ lw	$t6, 0X4($v1)
.L_808A2D40:
/* 000540 0x808A2D40 2401DFFF */ li	$at, -8193
/* 000541 0x808A2D44 01C17824 */ and	$t7, $t6, $at
/* 000542 0x808A2D48 AC6F0004 */ sw	$t7, 0X4($v1)
.L_808A2D4C:
/* 000543 0x808A2D4C 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000544 0x808A2D50 02002025 */ move	$a0, $s0
.L_808A2D54:
/* 000545 0x808A2D54 8E0301C8 */ lw	$v1, 0X1C8($s0)
.L_808A2D58:
/* 000546 0x808A2D58 5060000A */ beqzl	$v1, .L_808A2D84
/* 000547 0x808A2D5C 8FBF0034 */ lw	$ra, 0X34($sp)
/* 000548 0x808A2D60 8C780138 */ lw	$t8, 0X138($v1)
/* 000549 0x808A2D64 24640024 */ addiu	$a0, $v1, 36
/* 000550 0x808A2D68 17000003 */ bnez	$t8, .L_808A2D78
/* 000551 0x808A2D6C 00000000 */ nop
/* 000552 0x808A2D70 10000003 */ b	.L_808A2D80
/* 000553 0x808A2D74 AE0001C8 */ sw	$zero, 0X1C8($s0)
.L_808A2D78:
/* 000554 0x808A2D78 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000555 0x808A2D7C 26050024 */ addiu	$a1, $s0, 36
.L_808A2D80:
/* 000556 0x808A2D80 8FBF0034 */ lw	$ra, 0X34($sp)
.L_808A2D84:
/* 000557 0x808A2D84 8FB00030 */ lw	$s0, 0X30($sp)
/* 000558 0x808A2D88 27BD0080 */ addiu	$sp, $sp, 128
/* 000559 0x808A2D8C 03E00008 */ jr	$ra
/* 000560 0x808A2D90 00000000 */ nop

glabel EnBoom_Update
/* 000561 0x808A2D94 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000562 0x808A2D98 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000563 0x808A2D9C 8CA21CCC */ lw	$v0, 0X1CCC($a1)
/* 000564 0x808A2DA0 8C4E0A6C */ lw	$t6, 0XA6C($v0)
/* 000565 0x808A2DA4 000E7880 */ sll	$t7, $t6, 2
/* 000566 0x808A2DA8 05E2002D */ bltzl	$t7, .L_808A2E60
/* 000567 0x808A2DAC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000568 0x808A2DB0 AFA40018 */ sw	$a0, 0X18($sp)
/* 000569 0x808A2DB4 8C9901F0 */ lw	$t9, 0X1F0($a0)
/* 000570 0x808A2DB8 0320F809 */ jalr	$t9
/* 000571 0x808A2DBC 00000000 */ nop
/* 000572 0x808A2DC0 8FA40018 */ lw	$a0, 0X18($sp)
/* 000573 0x808A2DC4 8C820124 */ lw	$v0, 0X124($a0)
/* 000574 0x808A2DC8 54400006 */ bnezl	$v0, .L_808A2DE4
/* 000575 0x808A2DCC C4840024 */ lwc1	$f4, 0X24($a0)
/* 000576 0x808A2DD0 8C820120 */ lw	$v0, 0X120($a0)
/* 000577 0x808A2DD4 24050000 */ li	$a1, 0
/* 000578 0x808A2DD8 10400013 */ beqz	$v0, .L_808A2E28
/* 000579 0x808A2DDC 00000000 */ nop
/* 000580 0x808A2DE0 C4840024 */ lwc1	$f4, 0X24($a0)
.L_808A2DE4:
/* 000581 0x808A2DE4 C4460024 */ lwc1	$f6, 0X24($v0)
/* 000582 0x808A2DE8 3C013F00 */ lui	$at, 0x3F00
/* 000583 0x808A2DEC 44810000 */ mtc1	$at, $f0
/* 000584 0x808A2DF0 46062200 */ add.s	$f8, $f4, $f6
/* 000585 0x808A2DF4 C4900028 */ lwc1	$f16, 0X28($a0)
/* 000586 0x808A2DF8 46004282 */ mul.s	$f10, $f8, $f0
/* 000587 0x808A2DFC C488002C */ lwc1	$f8, 0X2C($a0)
/* 000588 0x808A2E00 E48A003C */ swc1	$f10, 0X3C($a0)
/* 000589 0x808A2E04 C4520028 */ lwc1	$f18, 0X28($v0)
/* 000590 0x808A2E08 46128100 */ add.s	$f4, $f16, $f18
/* 000591 0x808A2E0C 46002182 */ mul.s	$f6, $f4, $f0
/* 000592 0x808A2E10 E4860040 */ swc1	$f6, 0X40($a0)
/* 000593 0x808A2E14 C44A002C */ lwc1	$f10, 0X2C($v0)
/* 000594 0x808A2E18 460A4400 */ add.s	$f16, $f8, $f10
/* 000595 0x808A2E1C 46008482 */ mul.s	$f18, $f16, $f0
/* 000596 0x808A2E20 10000004 */ b	.L_808A2E34
/* 000597 0x808A2E24 E4920044 */ swc1	$f18, 0X44($a0)
.L_808A2E28:
/* 000598 0x808A2E28 0C02D9D7 */ jal	Actor_SetHeight
/* 000599 0x808A2E2C AFA40018 */ sw	$a0, 0X18($sp)
/* 000600 0x808A2E30 8FA40018 */ lw	$a0, 0X18($sp)
.L_808A2E34:
/* 000601 0x808A2E34 8498001C */ lh	$t8, 0X1C($a0)
/* 000602 0x808A2E38 53000006 */ beqzl	$t8, .L_808A2E54
/* 000603 0x808A2E3C 908A01CD */ lbu	$t2, 0X1CD($a0)
/* 000604 0x808A2E40 908801CD */ lbu	$t0, 0X1CD($a0)
/* 000605 0x808A2E44 2509FFFF */ addiu	$t1, $t0, -1
/* 000606 0x808A2E48 10000004 */ b	.L_808A2E5C
/* 000607 0x808A2E4C A08901CD */ sb	$t1, 0X1CD($a0)
/* 000608 0x808A2E50 908A01CD */ lbu	$t2, 0X1CD($a0)
.L_808A2E54:
/* 000609 0x808A2E54 254B0001 */ addiu	$t3, $t2, 1
/* 000610 0x808A2E58 A08B01CD */ sb	$t3, 0X1CD($a0)
.L_808A2E5C:
/* 000611 0x808A2E5C 8FBF0014 */ lw	$ra, 0X14($sp)
.L_808A2E60:
/* 000612 0x808A2E60 27BD0018 */ addiu	$sp, $sp, 24
/* 000613 0x808A2E64 03E00008 */ jr	$ra
/* 000614 0x808A2E68 00000000 */ nop

glabel EnBoom_Draw
/* 000615 0x808A2E6C 27BDFFA0 */ addiu	$sp, $sp, -96
/* 000616 0x808A2E70 AFB00020 */ sw	$s0, 0X20($sp)
/* 000617 0x808A2E74 00808025 */ move	$s0, $a0
/* 000618 0x808A2E78 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000619 0x808A2E7C AFA50064 */ sw	$a1, 0X64($sp)
/* 000620 0x808A2E80 860E001C */ lh	$t6, 0X1C($s0)
/* 000621 0x808A2E84 3C18808A */ lui	$t8, %hi(D_808A3078)
/* 000622 0x808A2E88 27183078 */ addiu	$t8, $t8, %lo(D_808A3078)
/* 000623 0x808A2E8C 000E78C0 */ sll	$t7, $t6, 3
/* 000624 0x808A2E90 01EE7823 */ subu	$t7, $t7, $t6
/* 000625 0x808A2E94 000F7880 */ sll	$t7, $t7, 2
/* 000626 0x808A2E98 01F8C821 */ addu	$t9, $t7, $t8
/* 000627 0x808A2E9C AFB90058 */ sw	$t9, 0X58($sp)
/* 000628 0x808A2EA0 8FA80064 */ lw	$t0, 0X64($sp)
/* 000629 0x808A2EA4 24050001 */ li	$a1, 1
/* 000630 0x808A2EA8 8D090000 */ lw	$t1, 0X0($t0)
/* 000631 0x808A2EAC AFA9003C */ sw	$t1, 0X3C($sp)
/* 000632 0x808A2EB0 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000633 0x808A2EB4 86040032 */ lh	$a0, 0X32($s0)
/* 000634 0x808A2EB8 860A001C */ lh	$t2, 0X1C($s0)
/* 000635 0x808A2EBC 24050001 */ li	$a1, 1
/* 000636 0x808A2EC0 51400004 */ beqzl	$t2, .L_808A2ED4
/* 000637 0x808A2EC4 2402E0C0 */ li	$v0, -8000
/* 000638 0x808A2EC8 10000002 */ b	.L_808A2ED4
/* 000639 0x808A2ECC 24021F40 */ li	$v0, 8000
/* 000640 0x808A2ED0 2402E0C0 */ li	$v0, -8000
.L_808A2ED4:
/* 000641 0x808A2ED4 00022400 */ sll	$a0, $v0, 16
/* 000642 0x808A2ED8 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 000643 0x808A2EDC 00042403 */ sra	$a0, $a0, 16
/* 000644 0x808A2EE0 86040030 */ lh	$a0, 0X30($s0)
/* 000645 0x808A2EE4 0C06011E */ jal	SysMatrix_InsertXRotation_s
/* 000646 0x808A2EE8 24050001 */ li	$a1, 1
/* 000647 0x808A2EEC 8FA40058 */ lw	$a0, 0X58($sp)
/* 000648 0x808A2EF0 27A5004C */ addiu	$a1, $sp, 76
/* 000649 0x808A2EF4 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000650 0x808A2EF8 24840004 */ addiu	$a0, $a0, 4
/* 000651 0x808A2EFC 8FA40058 */ lw	$a0, 0X58($sp)
/* 000652 0x808A2F00 27A50040 */ addiu	$a1, $sp, 64
/* 000653 0x808A2F04 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000654 0x808A2F08 24840010 */ addiu	$a0, $a0, 16
/* 000655 0x808A2F0C 27AB0040 */ addiu	$t3, $sp, 64
/* 000656 0x808A2F10 AFAB0010 */ sw	$t3, 0X10($sp)
/* 000657 0x808A2F14 8FA40064 */ lw	$a0, 0X64($sp)
/* 000658 0x808A2F18 26050144 */ addiu	$a1, $s0, 324
/* 000659 0x808A2F1C 260601D4 */ addiu	$a2, $s0, 468
/* 000660 0x808A2F20 0C049910 */ jal	func_80126440
/* 000661 0x808A2F24 27A7004C */ addiu	$a3, $sp, 76
/* 000662 0x808A2F28 50400008 */ beqzl	$v0, .L_808A2F4C
/* 000663 0x808A2F2C 8FAC0064 */ lw	$t4, 0X64($sp)
/* 000664 0x808A2F30 0C02BDC8 */ jal	Effect_GetParams
/* 000665 0x808A2F34 8E0401D0 */ lw	$a0, 0X1D0($s0)
/* 000666 0x808A2F38 00402025 */ move	$a0, $v0
/* 000667 0x808A2F3C 27A5004C */ addiu	$a1, $sp, 76
/* 000668 0x808A2F40 0C02A07C */ jal	func_800A81F0
/* 000669 0x808A2F44 27A60040 */ addiu	$a2, $sp, 64
/* 000670 0x808A2F48 8FAC0064 */ lw	$t4, 0X64($sp)
.L_808A2F4C:
/* 000671 0x808A2F4C 0C04B0A3 */ jal	func_8012C28C
/* 000672 0x808A2F50 8D840000 */ lw	$a0, 0X0($t4)
/* 000673 0x808A2F54 920401CD */ lbu	$a0, 0X1CD($s0)
/* 000674 0x808A2F58 24050001 */ li	$a1, 1
/* 000675 0x808A2F5C 00800821 */ addu	$at, $a0, $zero
/* 000676 0x808A2F60 00042080 */ sll	$a0, $a0, 2
/* 000677 0x808A2F64 00812023 */ subu	$a0, $a0, $at
/* 000678 0x808A2F68 00042100 */ sll	$a0, $a0, 4
/* 000679 0x808A2F6C 00812023 */ subu	$a0, $a0, $at
/* 000680 0x808A2F70 000420C0 */ sll	$a0, $a0, 3
/* 000681 0x808A2F74 00812023 */ subu	$a0, $a0, $at
/* 000682 0x808A2F78 00042140 */ sll	$a0, $a0, 5
/* 000683 0x808A2F7C 00042400 */ sll	$a0, $a0, 16
/* 000684 0x808A2F80 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000685 0x808A2F84 00042403 */ sra	$a0, $a0, 16
/* 000686 0x808A2F88 8FA3003C */ lw	$v1, 0X3C($sp)
/* 000687 0x808A2F8C 8C6202B0 */ lw	$v0, 0X2B0($v1)
/* 000688 0x808A2F90 3C0EDA38 */ lui	$t6, 0xDA38
/* 000689 0x808A2F94 35CE0003 */ ori	$t6, $t6, 0X3
/* 000690 0x808A2F98 244D0008 */ addiu	$t5, $v0, 8
/* 000691 0x808A2F9C AC6D02B0 */ sw	$t5, 0X2B0($v1)
/* 000692 0x808A2FA0 AC4E0000 */ sw	$t6, 0X0($v0)
/* 000693 0x808A2FA4 8FAF0064 */ lw	$t7, 0X64($sp)
/* 000694 0x808A2FA8 00408025 */ move	$s0, $v0
/* 000695 0x808A2FAC 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000696 0x808A2FB0 8DE40000 */ lw	$a0, 0X0($t7)
/* 000697 0x808A2FB4 AE020004 */ sw	$v0, 0X4($s0)
/* 000698 0x808A2FB8 8FB8003C */ lw	$t8, 0X3C($sp)
/* 000699 0x808A2FBC 3C08DE00 */ lui	$t0, 0xDE00
/* 000700 0x808A2FC0 8F0202B0 */ lw	$v0, 0X2B0($t8)
/* 000701 0x808A2FC4 24590008 */ addiu	$t9, $v0, 8
/* 000702 0x808A2FC8 AF1902B0 */ sw	$t9, 0X2B0($t8)
/* 000703 0x808A2FCC AC480000 */ sw	$t0, 0X0($v0)
/* 000704 0x808A2FD0 8FA90058 */ lw	$t1, 0X58($sp)
/* 000705 0x808A2FD4 8D2A0000 */ lw	$t2, 0X0($t1)
/* 000706 0x808A2FD8 AC4A0004 */ sw	$t2, 0X4($v0)
/* 000707 0x808A2FDC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000708 0x808A2FE0 8FB00020 */ lw	$s0, 0X20($sp)
/* 000709 0x808A2FE4 03E00008 */ jr	$ra
/* 000710 0x808A2FE8 27BD0060 */ addiu	$sp, $sp, 96
/* 000711 0x808A2FEC 00000000 */ nop
