.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_8089EE20
/* 000000 0x8089EE20 AC850144 */ sw	$a1, 0X144($a0)
/* 000001 0x8089EE24 03E00008 */ jr	$ra
/* 000002 0x8089EE28 00000000 */ nop

glabel EnViewer_Init
/* 000003 0x8089EE2C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000004 0x8089EE30 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000005 0x8089EE34 3C05808A */ lui	$a1, %hi(D_8089F3E0)
/* 000006 0x8089EE38 24A5F3E0 */ addiu	$a1, $a1, %lo(D_8089F3E0)
/* 000007 0x8089EE3C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000008 0x8089EE40 90AE0000 */ lbu	$t6, 0X0($a1)
/* 000009 0x8089EE44 3C014220 */ lui	$at, 0x4220
/* 000010 0x8089EE48 A08E0154 */ sb	$t6, 0X154($a0)
/* 000011 0x8089EE4C 90AF0000 */ lbu	$t7, 0X0($a1)
/* 000012 0x8089EE50 25F80001 */ addiu	$t8, $t7, 1
/* 000013 0x8089EE54 A0B80000 */ sb	$t8, 0X0($a1)
/* 000014 0x8089EE58 8482001C */ lh	$v0, 0X1C($a0)
/* 000015 0x8089EE5C 30430003 */ andi	$v1, $v0, 0X3
/* 000016 0x8089EE60 10600009 */ beqz	$v1, .L_8089EE88
/* 000017 0x8089EE64 3059FFFF */ andi	$t9, $v0, 0XFFFF
/* 000018 0x8089EE68 24010001 */ li	$at, 1
/* 000019 0x8089EE6C 1061001C */ beq	$v1, $at, .L_8089EEE0
/* 000020 0x8089EE70 00026243 */ sra	$t4, $v0, 9
/* 000021 0x8089EE74 24010002 */ li	$at, 2
/* 000022 0x8089EE78 1061003F */ beq	$v1, $at, .L_8089EF78
/* 000023 0x8089EE7C 00024243 */ sra	$t0, $v0, 9
/* 000024 0x8089EE80 10000058 */ b	.L_8089EFE4
/* 000025 0x8089EE84 8FBF0014 */ lw	$ra, 0X14($sp)
.L_8089EE88:
/* 000026 0x8089EE88 00194243 */ sra	$t0, $t9, 9
/* 000027 0x8089EE8C 44882000 */ mtc1	$t0, $f4
/* 000028 0x8089EE90 44810000 */ mtc1	$at, $f0
/* 000029 0x8089EE94 00025083 */ sra	$t2, $v0, 2
/* 000030 0x8089EE98 468021A0 */ cvt.s.w	$f6, $f4
/* 000031 0x8089EE9C 314B007F */ andi	$t3, $t2, 0X7F
/* 000032 0x8089EEA0 448B5000 */ mtc1	$t3, $f10
/* 000033 0x8089EEA4 3C014F80 */ lui	$at, 0x4F80
/* 000034 0x8089EEA8 46805420 */ cvt.s.w	$f16, $f10
/* 000035 0x8089EEAC 46003202 */ mul.s	$f8, $f6, $f0
/* 000036 0x8089EEB0 05610004 */ bgez	$t3, .L_8089EEC4
/* 000037 0x8089EEB4 E4880148 */ swc1	$f8, 0X148($a0)
/* 000038 0x8089EEB8 44819000 */ mtc1	$at, $f18
/* 000039 0x8089EEBC 00000000 */ nop
/* 000040 0x8089EEC0 46128400 */ add.s	$f16, $f16, $f18
.L_8089EEC4:
/* 000041 0x8089EEC4 46008102 */ mul.s	$f4, $f16, $f0
/* 000042 0x8089EEC8 3C05808A */ lui	$a1, %hi(func_8089F17C)
/* 000043 0x8089EECC 24A5F17C */ addiu	$a1, $a1, %lo(func_8089F17C)
/* 000044 0x8089EED0 0C227B88 */ jal	func_8089EE20
/* 000045 0x8089EED4 E4840150 */ swc1	$f4, 0X150($a0)
/* 000046 0x8089EED8 10000042 */ b	.L_8089EFE4
/* 000047 0x8089EEDC 8FBF0014 */ lw	$ra, 0X14($sp)
.L_8089EEE0:
/* 000048 0x8089EEE0 318DFFFF */ andi	$t5, $t4, 0XFFFF
/* 000049 0x8089EEE4 448D3000 */ mtc1	$t5, $f6
/* 000050 0x8089EEE8 3C014220 */ lui	$at, 0x4220
/* 000051 0x8089EEEC 44810000 */ mtc1	$at, $f0
/* 000052 0x8089EEF0 05A10005 */ bgez	$t5, .L_8089EF08
/* 000053 0x8089EEF4 46803220 */ cvt.s.w	$f8, $f6
/* 000054 0x8089EEF8 3C014F80 */ lui	$at, 0x4F80
/* 000055 0x8089EEFC 44815000 */ mtc1	$at, $f10
/* 000056 0x8089EF00 00000000 */ nop
/* 000057 0x8089EF04 460A4200 */ add.s	$f8, $f8, $f10
.L_8089EF08:
/* 000058 0x8089EF08 46004482 */ mul.s	$f18, $f8, $f0
/* 000059 0x8089EF0C 00027883 */ sra	$t7, $v0, 2
/* 000060 0x8089EF10 31F8007F */ andi	$t8, $t7, 0X7F
/* 000061 0x8089EF14 44988000 */ mtc1	$t8, $f16
/* 000062 0x8089EF18 3C014F80 */ lui	$at, 0x4F80
/* 000063 0x8089EF1C 46808120 */ cvt.s.w	$f4, $f16
/* 000064 0x8089EF20 07010004 */ bgez	$t8, .L_8089EF34
/* 000065 0x8089EF24 E4920148 */ swc1	$f18, 0X148($a0)
/* 000066 0x8089EF28 44813000 */ mtc1	$at, $f6
/* 000067 0x8089EF2C 00000000 */ nop
/* 000068 0x8089EF30 46062100 */ add.s	$f4, $f4, $f6
.L_8089EF34:
/* 000069 0x8089EF34 46002282 */ mul.s	$f10, $f4, $f0
/* 000070 0x8089EF38 94990032 */ lhu	$t9, 0X32($a0)
/* 000071 0x8089EF3C 3C014F80 */ lui	$at, 0x4F80
/* 000072 0x8089EF40 44994000 */ mtc1	$t9, $f8
/* 000073 0x8089EF44 E48A0150 */ swc1	$f10, 0X150($a0)
/* 000074 0x8089EF48 07210004 */ bgez	$t9, .L_8089EF5C
/* 000075 0x8089EF4C 468044A0 */ cvt.s.w	$f18, $f8
/* 000076 0x8089EF50 44818000 */ mtc1	$at, $f16
/* 000077 0x8089EF54 00000000 */ nop
/* 000078 0x8089EF58 46109480 */ add.s	$f18, $f18, $f16
.L_8089EF5C:
/* 000079 0x8089EF5C 46009182 */ mul.s	$f6, $f18, $f0
/* 000080 0x8089EF60 3C05808A */ lui	$a1, %hi(func_8089F218)
/* 000081 0x8089EF64 24A5F218 */ addiu	$a1, $a1, %lo(func_8089F218)
/* 000082 0x8089EF68 0C227B88 */ jal	func_8089EE20
/* 000083 0x8089EF6C E486014C */ swc1	$f6, 0X14C($a0)
/* 000084 0x8089EF70 1000001C */ b	.L_8089EFE4
/* 000085 0x8089EF74 8FBF0014 */ lw	$ra, 0X14($sp)
.L_8089EF78:
/* 000086 0x8089EF78 3109FFFF */ andi	$t1, $t0, 0XFFFF
/* 000087 0x8089EF7C 44892000 */ mtc1	$t1, $f4
/* 000088 0x8089EF80 3C014220 */ lui	$at, 0x4220
/* 000089 0x8089EF84 44810000 */ mtc1	$at, $f0
/* 000090 0x8089EF88 05210005 */ bgez	$t1, .L_8089EFA0
/* 000091 0x8089EF8C 468022A0 */ cvt.s.w	$f10, $f4
/* 000092 0x8089EF90 3C014F80 */ lui	$at, 0x4F80
/* 000093 0x8089EF94 44814000 */ mtc1	$at, $f8
/* 000094 0x8089EF98 00000000 */ nop
/* 000095 0x8089EF9C 46085280 */ add.s	$f10, $f10, $f8
.L_8089EFA0:
/* 000096 0x8089EFA0 46005402 */ mul.s	$f16, $f10, $f0
/* 000097 0x8089EFA4 00025883 */ sra	$t3, $v0, 2
/* 000098 0x8089EFA8 316C007F */ andi	$t4, $t3, 0X7F
/* 000099 0x8089EFAC 448C9000 */ mtc1	$t4, $f18
/* 000100 0x8089EFB0 3C014F80 */ lui	$at, 0x4F80
/* 000101 0x8089EFB4 468091A0 */ cvt.s.w	$f6, $f18
/* 000102 0x8089EFB8 05810004 */ bgez	$t4, .L_8089EFCC
/* 000103 0x8089EFBC E4900148 */ swc1	$f16, 0X148($a0)
/* 000104 0x8089EFC0 44812000 */ mtc1	$at, $f4
/* 000105 0x8089EFC4 00000000 */ nop
/* 000106 0x8089EFC8 46043180 */ add.s	$f6, $f6, $f4
.L_8089EFCC:
/* 000107 0x8089EFCC 46003202 */ mul.s	$f8, $f6, $f0
/* 000108 0x8089EFD0 3C05808A */ lui	$a1, %hi(func_8089F2C4)
/* 000109 0x8089EFD4 24A5F2C4 */ addiu	$a1, $a1, %lo(func_8089F2C4)
/* 000110 0x8089EFD8 0C227B88 */ jal	func_8089EE20
/* 000111 0x8089EFDC E488014C */ swc1	$f8, 0X14C($a0)
/* 000112 0x8089EFE0 8FBF0014 */ lw	$ra, 0X14($sp)
.L_8089EFE4:
/* 000113 0x8089EFE4 27BD0018 */ addiu	$sp, $sp, 24
/* 000114 0x8089EFE8 03E00008 */ jr	$ra
/* 000115 0x8089EFEC 00000000 */ nop

glabel EnViewer_Destroy
/* 000116 0x8089EFF0 3C02808A */ lui	$v0, %hi(D_8089F3E0)
/* 000117 0x8089EFF4 2442F3E0 */ addiu	$v0, $v0, %lo(D_8089F3E0)
/* 000118 0x8089EFF8 AFA40000 */ sw	$a0, 0X0($sp)
/* 000119 0x8089EFFC AFA50004 */ sw	$a1, 0X4($sp)
/* 000120 0x8089F000 904E0000 */ lbu	$t6, 0X0($v0)
/* 000121 0x8089F004 25CFFFFF */ addiu	$t7, $t6, -1
/* 000122 0x8089F008 A04F0000 */ sb	$t7, 0X0($v0)
/* 000123 0x8089F00C 03E00008 */ jr	$ra
/* 000124 0x8089F010 00000000 */ nop

glabel func_8089F014
/* 000125 0x8089F014 3C013F80 */ lui	$at, 0x3F80
/* 000126 0x8089F018 44810000 */ mtc1	$at, $f0
/* 000127 0x8089F01C 44866000 */ mtc1	$a2, $f12
/* 000128 0x8089F020 3C010001 */ lui	$at, 0x0001
/* 000129 0x8089F024 460C003C */ c.lt.s	$f0, $f12
/* 000130 0x8089F028 00250821 */ addu	$at, $at, $a1
/* 000131 0x8089F02C 240E0002 */ li	$t6, 2
/* 000132 0x8089F030 45020004 */ bc1fl .L_8089F044
/* 000133 0x8089F034 44800000 */ mtc1	$zero, $f0
/* 000134 0x8089F038 10000008 */ b	.L_8089F05C
/* 000135 0x8089F03C 46000306 */ mov.s	$f12, $f0
/* 000136 0x8089F040 44800000 */ mtc1	$zero, $f0
.L_8089F044:
/* 000137 0x8089F044 00000000 */ nop
/* 000138 0x8089F048 4600603C */ c.lt.s	$f12, $f0
/* 000139 0x8089F04C 00000000 */ nop
/* 000140 0x8089F050 45020003 */ bc1fl .L_8089F060
/* 000141 0x8089F054 A02070C7 */ sb	$zero, 0X70C7($at)
/* 000142 0x8089F058 46000306 */ mov.s	$f12, $f0
.L_8089F05C:
/* 000143 0x8089F05C A02070C7 */ sb	$zero, 0X70C7($at)
.L_8089F060:
/* 000144 0x8089F060 3C010001 */ lui	$at, 0x0001
/* 000145 0x8089F064 00250821 */ addu	$at, $at, $a1
/* 000146 0x8089F068 A02E70E4 */ sb	$t6, 0X70E4($at)
/* 000147 0x8089F06C 848F0030 */ lh	$t7, 0X30($a0)
/* 000148 0x8089F070 3C010001 */ lui	$at, 0x0001
/* 000149 0x8089F074 00250821 */ addu	$at, $at, $a1
/* 000150 0x8089F078 A02F70C5 */ sb	$t7, 0X70C5($at)
/* 000151 0x8089F07C 84980034 */ lh	$t8, 0X34($a0)
/* 000152 0x8089F080 3C010001 */ lui	$at, 0x0001
/* 000153 0x8089F084 00250821 */ addu	$at, $at, $a1
/* 000154 0x8089F088 A03870C6 */ sb	$t8, 0X70C6($at)
/* 000155 0x8089F08C 3C010001 */ lui	$at, 0x0001
/* 000156 0x8089F090 00250821 */ addu	$at, $at, $a1
/* 000157 0x8089F094 E42C70E0 */ swc1	$f12, 0X70E0($at)
/* 000158 0x8089F098 03E00008 */ jr	$ra
/* 000159 0x8089F09C 00000000 */ nop

glabel func_8089F0A0
/* 000160 0x8089F0A0 27BDFFD8 */ addiu	$sp, $sp, -40
/* 000161 0x8089F0A4 3C02808A */ lui	$v0, %hi(D_8089F3E4)
/* 000162 0x8089F0A8 2442F3E4 */ addiu	$v0, $v0, %lo(D_8089F3E4)
/* 000163 0x8089F0AC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000164 0x8089F0B0 AFA40028 */ sw	$a0, 0X28($sp)
/* 000165 0x8089F0B4 00A03825 */ move	$a3, $a1
/* 000166 0x8089F0B8 904E0000 */ lbu	$t6, 0X0($v0)
/* 000167 0x8089F0BC 8CE31CCC */ lw	$v1, 0X1CCC($a3)
/* 000168 0x8089F0C0 3C18808A */ lui	$t8, %hi(D_8089F3E0)
/* 000169 0x8089F0C4 25CF0001 */ addiu	$t7, $t6, 1
/* 000170 0x8089F0C8 A04F0000 */ sb	$t7, 0X0($v0)
/* 000171 0x8089F0CC 9318F3E0 */ lbu	$t8, %lo(D_8089F3E0)($t8)
/* 000172 0x8089F0D0 31F900FF */ andi	$t9, $t7, 0XFF
/* 000173 0x8089F0D4 3C010001 */ lui	$at, 0x0001
/* 000174 0x8089F0D8 17190024 */ bne	$t8, $t9, .L_8089F16C
/* 000175 0x8089F0DC 00E14021 */ addu	$t0, $a3, $at
/* 000176 0x8089F0E0 910970C7 */ lbu	$t1, 0X70C7($t0)
/* 000177 0x8089F0E4 240100FF */ li	$at, 255
/* 000178 0x8089F0E8 240A00FF */ li	$t2, 255
/* 000179 0x8089F0EC 1121001F */ beq	$t1, $at, .L_8089F16C
/* 000180 0x8089F0F0 24E40830 */ addiu	$a0, $a3, 2096
/* 000181 0x8089F0F4 3C010001 */ lui	$at, 0x0001
/* 000182 0x8089F0F8 00270821 */ addu	$at, $at, $a3
/* 000183 0x8089F0FC A02A70C7 */ sb	$t2, 0X70C7($at)
/* 000184 0x8089F100 3C010001 */ lui	$at, 0x0001
/* 000185 0x8089F104 00270821 */ addu	$at, $at, $a3
/* 000186 0x8089F108 A02070E4 */ sb	$zero, 0X70E4($at)
/* 000187 0x8089F10C 3C013F80 */ lui	$at, 0x3F80
/* 000188 0x8089F110 44812000 */ mtc1	$at, $f4
/* 000189 0x8089F114 3C010001 */ lui	$at, 0x0001
/* 000190 0x8089F118 00270821 */ addu	$at, $at, $a3
/* 000191 0x8089F11C E42470E0 */ swc1	$f4, 0X70E0($at)
/* 000192 0x8089F120 90660085 */ lbu	$a2, 0X85($v1)
/* 000193 0x8089F124 8C650080 */ lw	$a1, 0X80($v1)
/* 000194 0x8089F128 AFA8001C */ sw	$t0, 0X1C($sp)
/* 000195 0x8089F12C 0C032727 */ jal	func_800C9C9C
/* 000196 0x8089F130 AFA7002C */ sw	$a3, 0X2C($sp)
/* 000197 0x8089F134 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000198 0x8089F138 0C03EAAD */ jal	func_800FAAB4
/* 000199 0x8089F13C 304500FF */ andi	$a1, $v0, 0XFF
/* 000200 0x8089F140 3C013F80 */ lui	$at, 0x3F80
/* 000201 0x8089F144 8FA7002C */ lw	$a3, 0X2C($sp)
/* 000202 0x8089F148 44813000 */ mtc1	$at, $f6
/* 000203 0x8089F14C 8FA8001C */ lw	$t0, 0X1C($sp)
/* 000204 0x8089F150 3C010001 */ lui	$at, 0x0001
/* 000205 0x8089F154 00270821 */ addu	$at, $at, $a3
/* 000206 0x8089F158 E42670E0 */ swc1	$f6, 0X70E0($at)
/* 000207 0x8089F15C 910B70C5 */ lbu	$t3, 0X70C5($t0)
/* 000208 0x8089F160 3C010001 */ lui	$at, 0x0001
/* 000209 0x8089F164 00270821 */ addu	$at, $at, $a3
/* 000210 0x8089F168 A02B70C6 */ sb	$t3, 0X70C6($at)
.L_8089F16C:
/* 000211 0x8089F16C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000212 0x8089F170 27BD0028 */ addiu	$sp, $sp, 40
/* 000213 0x8089F174 03E00008 */ jr	$ra
/* 000214 0x8089F178 00000000 */ nop

glabel func_8089F17C
/* 000215 0x8089F17C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000216 0x8089F180 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000217 0x8089F184 3C0F0002 */ lui	$t7, 0x0002
/* 000218 0x8089F188 01E57821 */ addu	$t7, $t7, $a1
/* 000219 0x8089F18C 81EF86E0 */ lb	$t7, -0X7920($t7)
/* 000220 0x8089F190 808E0003 */ lb	$t6, 0X3($a0)
/* 000221 0x8089F194 C4800098 */ lwc1	$f0, 0X98($a0)
/* 000222 0x8089F198 8CA21CCC */ lw	$v0, 0X1CCC($a1)
/* 000223 0x8089F19C 15CF0018 */ bne	$t6, $t7, .L_8089F200
/* 000224 0x8089F1A0 46000005 */ abs.s	$f0, $f0
/* 000225 0x8089F1A4 C4840148 */ lwc1	$f4, 0X148($a0)
/* 000226 0x8089F1A8 4604003E */ c.le.s	$f0, $f4
/* 000227 0x8089F1AC 00000000 */ nop
/* 000228 0x8089F1B0 45000013 */ bc1f .L_8089F200
/* 000229 0x8089F1B4 00000000 */ nop
/* 000230 0x8089F1B8 C4820150 */ lwc1	$f2, 0X150($a0)
/* 000231 0x8089F1BC C48C009C */ lwc1	$f12, 0X9C($a0)
/* 000232 0x8089F1C0 4602603E */ c.le.s	$f12, $f2
/* 000233 0x8089F1C4 00000000 */ nop
/* 000234 0x8089F1C8 4500000D */ bc1f .L_8089F200
/* 000235 0x8089F1CC 00000000 */ nop
/* 000236 0x8089F1D0 C4460028 */ lwc1	$f6, 0X28($v0)
/* 000237 0x8089F1D4 C4880028 */ lwc1	$f8, 0X28($a0)
/* 000238 0x8089F1D8 4606403E */ c.le.s	$f8, $f6
/* 000239 0x8089F1DC 00000000 */ nop
/* 000240 0x8089F1E0 45000007 */ bc1f .L_8089F200
/* 000241 0x8089F1E4 00000000 */ nop
/* 000242 0x8089F1E8 46026003 */ div.s	$f0, $f12, $f2
/* 000243 0x8089F1EC 44060000 */ mfc1	$a2, $f0
/* 000244 0x8089F1F0 0C227C05 */ jal	func_8089F014
/* 000245 0x8089F1F4 00000000 */ nop
/* 000246 0x8089F1F8 10000004 */ b	.L_8089F20C
/* 000247 0x8089F1FC 8FBF0014 */ lw	$ra, 0X14($sp)
.L_8089F200:
/* 000248 0x8089F200 0C227C28 */ jal	func_8089F0A0
/* 000249 0x8089F204 00000000 */ nop
/* 000250 0x8089F208 8FBF0014 */ lw	$ra, 0X14($sp)
.L_8089F20C:
/* 000251 0x8089F20C 27BD0018 */ addiu	$sp, $sp, 24
/* 000252 0x8089F210 03E00008 */ jr	$ra
/* 000253 0x8089F214 00000000 */ nop

glabel func_8089F218
/* 000254 0x8089F218 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000255 0x8089F21C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000256 0x8089F220 3C0F0002 */ lui	$t7, 0x0002
/* 000257 0x8089F224 C4800098 */ lwc1	$f0, 0X98($a0)
/* 000258 0x8089F228 01E57821 */ addu	$t7, $t7, $a1
/* 000259 0x8089F22C 81EF86E0 */ lb	$t7, -0X7920($t7)
/* 000260 0x8089F230 808E0003 */ lb	$t6, 0X3($a0)
/* 000261 0x8089F234 46000005 */ abs.s	$f0, $f0
/* 000262 0x8089F238 8CA21CCC */ lw	$v0, 0X1CCC($a1)
/* 000263 0x8089F23C 15CF001B */ bne	$t6, $t7, .L_8089F2AC
/* 000264 0x8089F240 46000386 */ mov.s	$f14, $f0
/* 000265 0x8089F244 C48C0148 */ lwc1	$f12, 0X148($a0)
/* 000266 0x8089F248 460C003E */ c.le.s	$f0, $f12
/* 000267 0x8089F24C 00000000 */ nop
/* 000268 0x8089F250 45000016 */ bc1f .L_8089F2AC
/* 000269 0x8089F254 00000000 */ nop
/* 000270 0x8089F258 C4840150 */ lwc1	$f4, 0X150($a0)
/* 000271 0x8089F25C C486009C */ lwc1	$f6, 0X9C($a0)
/* 000272 0x8089F260 4604303E */ c.le.s	$f6, $f4
/* 000273 0x8089F264 00000000 */ nop
/* 000274 0x8089F268 45000010 */ bc1f .L_8089F2AC
/* 000275 0x8089F26C 00000000 */ nop
/* 000276 0x8089F270 C4480028 */ lwc1	$f8, 0X28($v0)
/* 000277 0x8089F274 C48A0028 */ lwc1	$f10, 0X28($a0)
/* 000278 0x8089F278 4608503E */ c.le.s	$f10, $f8
/* 000279 0x8089F27C 00000000 */ nop
/* 000280 0x8089F280 4500000A */ bc1f .L_8089F2AC
/* 000281 0x8089F284 00000000 */ nop
/* 000282 0x8089F288 C480014C */ lwc1	$f0, 0X14C($a0)
/* 000283 0x8089F28C 46007401 */ sub.s	$f16, $f14, $f0
/* 000284 0x8089F290 46006481 */ sub.s	$f18, $f12, $f0
/* 000285 0x8089F294 46128083 */ div.s	$f2, $f16, $f18
/* 000286 0x8089F298 44061000 */ mfc1	$a2, $f2
/* 000287 0x8089F29C 0C227C05 */ jal	func_8089F014
/* 000288 0x8089F2A0 00000000 */ nop
/* 000289 0x8089F2A4 10000004 */ b	.L_8089F2B8
/* 000290 0x8089F2A8 8FBF0014 */ lw	$ra, 0X14($sp)
.L_8089F2AC:
/* 000291 0x8089F2AC 0C227C28 */ jal	func_8089F0A0
/* 000292 0x8089F2B0 00000000 */ nop
/* 000293 0x8089F2B4 8FBF0014 */ lw	$ra, 0X14($sp)
.L_8089F2B8:
/* 000294 0x8089F2B8 27BD0018 */ addiu	$sp, $sp, 24
/* 000295 0x8089F2BC 03E00008 */ jr	$ra
/* 000296 0x8089F2C0 00000000 */ nop

glabel func_8089F2C4
/* 000297 0x8089F2C4 27BDFFD0 */ addiu	$sp, $sp, -48
/* 000298 0x8089F2C8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000299 0x8089F2CC 00A03825 */ move	$a3, $a1
/* 000300 0x8089F2D0 8CE21CCC */ lw	$v0, 0X1CCC($a3)
/* 000301 0x8089F2D4 AFA70034 */ sw	$a3, 0X34($sp)
/* 000302 0x8089F2D8 AFA40030 */ sw	$a0, 0X30($sp)
/* 000303 0x8089F2DC 27A50020 */ addiu	$a1, $sp, 32
/* 000304 0x8089F2E0 0C02DB9B */ jal	Actor_CalcOffsetOrientedToDrawRotation
/* 000305 0x8089F2E4 24460024 */ addiu	$a2, $v0, 36
/* 000306 0x8089F2E8 8FA40030 */ lw	$a0, 0X30($sp)
/* 000307 0x8089F2EC 44802000 */ mtc1	$zero, $f4
/* 000308 0x8089F2F0 8FA70034 */ lw	$a3, 0X34($sp)
/* 000309 0x8089F2F4 C486014C */ lwc1	$f6, 0X14C($a0)
/* 000310 0x8089F2F8 3C0F0002 */ lui	$t7, 0x0002
/* 000311 0x8089F2FC 3C01808A */ lui	$at, %hi(D_8089F410)
/* 000312 0x8089F300 46062032 */ c.eq.s	$f4, $f6
/* 000313 0x8089F304 01E77821 */ addu	$t7, $t7, $a3
/* 000314 0x8089F308 45020004 */ bc1fl .L_8089F31C
/* 000315 0x8089F30C 808E0003 */ lb	$t6, 0X3($a0)
/* 000316 0x8089F310 C428F410 */ lwc1	$f8, %lo(D_8089F410)($at)
/* 000317 0x8089F314 E488014C */ swc1	$f8, 0X14C($a0)
/* 000318 0x8089F318 808E0003 */ lb	$t6, 0X3($a0)
.L_8089F31C:
/* 000319 0x8089F31C 81EF86E0 */ lb	$t7, -0X7920($t7)
/* 000320 0x8089F320 15CF0011 */ bne	$t6, $t7, .L_8089F368
/* 000321 0x8089F324 00000000 */ nop
/* 000322 0x8089F328 C4800148 */ lwc1	$f0, 0X148($a0)
/* 000323 0x8089F32C C7AA0020 */ lwc1	$f10, 0X20($sp)
/* 000324 0x8089F330 C7B00028 */ lwc1	$f16, 0X28($sp)
/* 000325 0x8089F334 46000005 */ abs.s	$f0, $f0
/* 000326 0x8089F338 4600503C */ c.lt.s	$f10, $f0
/* 000327 0x8089F33C 00000000 */ nop
/* 000328 0x8089F340 45000009 */ bc1f .L_8089F368
/* 000329 0x8089F344 00000000 */ nop
/* 000330 0x8089F348 C492014C */ lwc1	$f18, 0X14C($a0)
/* 000331 0x8089F34C 00E02825 */ move	$a1, $a3
/* 000332 0x8089F350 46128003 */ div.s	$f0, $f16, $f18
/* 000333 0x8089F354 44060000 */ mfc1	$a2, $f0
/* 000334 0x8089F358 0C227C05 */ jal	func_8089F014
/* 000335 0x8089F35C 00000000 */ nop
/* 000336 0x8089F360 10000004 */ b	.L_8089F374
/* 000337 0x8089F364 8FBF0014 */ lw	$ra, 0X14($sp)
.L_8089F368:
/* 000338 0x8089F368 0C227C28 */ jal	func_8089F0A0
/* 000339 0x8089F36C 00E02825 */ move	$a1, $a3
/* 000340 0x8089F370 8FBF0014 */ lw	$ra, 0X14($sp)
.L_8089F374:
/* 000341 0x8089F374 27BD0030 */ addiu	$sp, $sp, 48
/* 000342 0x8089F378 03E00008 */ jr	$ra
/* 000343 0x8089F37C 00000000 */ nop

glabel EnViewer_Update
/* 000344 0x8089F380 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000345 0x8089F384 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000346 0x8089F388 3C0E808A */ lui	$t6, %hi(D_8089F4D0)
/* 000347 0x8089F38C 8DCEF4D0 */ lw	$t6, %lo(D_8089F4D0)($t6)
/* 000348 0x8089F390 8CA2009C */ lw	$v0, 0X9C($a1)
/* 000349 0x8089F394 3C01808A */ lui	$at, %hi(D_8089F4D0)
/* 000350 0x8089F398 51C20005 */ beql	$t6, $v0, .L_8089F3B0
/* 000351 0x8089F39C 8C990144 */ lw	$t9, 0X144($a0)
/* 000352 0x8089F3A0 AC22F4D0 */ sw	$v0, %lo(D_8089F4D0)($at)
/* 000353 0x8089F3A4 3C01808A */ lui	$at, %hi(D_8089F3E4)
/* 000354 0x8089F3A8 A020F3E4 */ sb	$zero, %lo(D_8089F3E4)($at)
/* 000355 0x8089F3AC 8C990144 */ lw	$t9, 0X144($a0)
.L_8089F3B0:
/* 000356 0x8089F3B0 0320F809 */ jalr	$t9
/* 000357 0x8089F3B4 00000000 */ nop
/* 000358 0x8089F3B8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000359 0x8089F3BC 27BD0018 */ addiu	$sp, $sp, 24
/* 000360 0x8089F3C0 03E00008 */ jr	$ra
/* 000361 0x8089F3C4 00000000 */ nop

glabel EnViewer_Draw
/* 000362 0x8089F3C8 AFA40000 */ sw	$a0, 0X0($sp)
/* 000363 0x8089F3CC AFA50004 */ sw	$a1, 0X4($sp)
/* 000364 0x8089F3D0 03E00008 */ jr	$ra
/* 000365 0x8089F3D4 00000000 */ nop
/* 000366 0x8089F3D8 00000000 */ nop
/* 000367 0x8089F3DC 00000000 */ nop
