.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80C07C80
/* 000000 0x80C07C80 308E0001 */ andi	$t6, $a0, 0X1
/* 000001 0x80C07C84 15C00008 */ bnez	$t6, .L_80C07CA8
/* 000002 0x80C07C88 0004C843 */ sra	$t9, $a0, 1
/* 000003 0x80C07C8C 00047843 */ sra	$t7, $a0, 1
/* 000004 0x80C07C90 000FC080 */ sll	$t8, $t7, 2
/* 000005 0x80C07C94 3C03801F */ lui	$v1, %hi(gSaveContext + 0xE88)
/* 000006 0x80C07C98 00781821 */ addu	$v1, $v1, $t8
/* 000007 0x80C07C9C 8C6304F8 */ lw	$v1, %lo(gSaveContext + 0xE88)($v1)
/* 000008 0x80C07CA0 10000008 */ b	.L_80C07CC4
/* 000009 0x80C07CA4 3063FFFF */ andi	$v1, $v1, 0XFFFF
.L_80C07CA8:
/* 000010 0x80C07CA8 00194080 */ sll	$t0, $t9, 2
/* 000011 0x80C07CAC 3C03801F */ lui	$v1, %hi(gSaveContext + 0xE88)
/* 000012 0x80C07CB0 00681821 */ addu	$v1, $v1, $t0
/* 000013 0x80C07CB4 8C6304F8 */ lw	$v1, %lo(gSaveContext + 0xE88)($v1)
/* 000014 0x80C07CB8 3C01FFFF */ lui	$at, 0xFFFF
/* 000015 0x80C07CBC 00611824 */ and	$v1, $v1, $at
/* 000016 0x80C07CC0 00031C02 */ srl	$v1, $v1, 16
.L_80C07CC4:
/* 000017 0x80C07CC4 24621AAA */ addiu	$v0, $v1, 6826
/* 000018 0x80C07CC8 03E00008 */ jr	$ra
/* 000019 0x80C07CCC 00000000 */ nop

glabel func_80C07CD0
/* 000020 0x80C07CD0 27BDFFD0 */ addiu	$sp, $sp, -48
/* 000021 0x80C07CD4 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000022 0x80C07CD8 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000023 0x80C07CDC AFBF0024 */ sw	$ra, 0X24($sp)
/* 000024 0x80C07CE0 AFB20020 */ sw	$s2, 0X20($sp)
/* 000025 0x80C07CE4 AFB1001C */ sw	$s1, 0X1C($sp)
/* 000026 0x80C07CE8 AFB00018 */ sw	$s0, 0X18($sp)
/* 000027 0x80C07CEC 8C620018 */ lw	$v0, 0X18($v1)
/* 000028 0x80C07CF0 24010005 */ li	$at, 5
/* 000029 0x80C07CF4 0041001A */ div	$zero, $v0, $at
/* 000030 0x80C07CF8 00001010 */ mfhi	$v0
/* 000031 0x80C07CFC 24010001 */ li	$at, 1
/* 000032 0x80C07D00 1C400003 */ bgtz	$v0, .L_80C07D10
/* 000033 0x80C07D04 00000000 */ nop
/* 000034 0x80C07D08 10000028 */ b	.L_80C07DAC
/* 000035 0x80C07D0C 00001025 */ move	$v0, $zero
.L_80C07D10:
/* 000036 0x80C07D10 54410020 */ bnel	$v0, $at, .L_80C07D94
/* 000037 0x80C07D14 90780F0E */ lbu	$t8, 0XF0E($v1)
/* 000038 0x80C07D18 9462000C */ lhu	$v0, 0XC($v1)
/* 000039 0x80C07D1C 28411AAA */ slti	$at, $v0, 6826
/* 000040 0x80C07D20 14200003 */ bnez	$at, .L_80C07D30
/* 000041 0x80C07D24 28414000 */ slti	$at, $v0, 16384
/* 000042 0x80C07D28 54200004 */ bnezl	$at, .L_80C07D3C
/* 000043 0x80C07D2C 28413800 */ slti	$at, $v0, 14336
.L_80C07D30:
/* 000044 0x80C07D30 1000001E */ b	.L_80C07DAC
/* 000045 0x80C07D34 00001025 */ move	$v0, $zero
/* 000046 0x80C07D38 28413800 */ slti	$at, $v0, 14336
.L_80C07D3C:
/* 000047 0x80C07D3C 10200014 */ beqz	$at, .L_80C07D90
/* 000048 0x80C07D40 24113800 */ li	$s1, 14336
/* 000049 0x80C07D44 00008025 */ move	$s0, $zero
/* 000050 0x80C07D48 AFA2002C */ sw	$v0, 0X2C($sp)
/* 000051 0x80C07D4C 24120008 */ li	$s2, 8
.L_80C07D50:
/* 000052 0x80C07D50 0C301F20 */ jal	func_80C07C80
/* 000053 0x80C07D54 02002025 */ move	$a0, $s0
/* 000054 0x80C07D58 0051082A */ slt	$at, $v0, $s1
/* 000055 0x80C07D5C 10200002 */ beqz	$at, .L_80C07D68
/* 000056 0x80C07D60 26100001 */ addiu	$s0, $s0, 1
/* 000057 0x80C07D64 00408825 */ move	$s1, $v0
.L_80C07D68:
/* 000058 0x80C07D68 1612FFF9 */ bne	$s0, $s2, .L_80C07D50
/* 000059 0x80C07D6C 00000000 */ nop
/* 000060 0x80C07D70 8FAE002C */ lw	$t6, 0X2C($sp)
/* 000061 0x80C07D74 262F0E11 */ addiu	$t7, $s1, 3601
/* 000062 0x80C07D78 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000063 0x80C07D7C 01CF082A */ slt	$at, $t6, $t7
/* 000064 0x80C07D80 10200003 */ beqz	$at, .L_80C07D90
/* 000065 0x80C07D84 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000066 0x80C07D88 10000008 */ b	.L_80C07DAC
/* 000067 0x80C07D8C 00001025 */ move	$v0, $zero
.L_80C07D90:
/* 000068 0x80C07D90 90780F0E */ lbu	$t8, 0XF0E($v1)
.L_80C07D94:
/* 000069 0x80C07D94 24020001 */ li	$v0, 1
/* 000070 0x80C07D98 33190001 */ andi	$t9, $t8, 0X1
/* 000071 0x80C07D9C 13200003 */ beqz	$t9, .L_80C07DAC
/* 000072 0x80C07DA0 00000000 */ nop
/* 000073 0x80C07DA4 10000001 */ b	.L_80C07DAC
/* 000074 0x80C07DA8 00001025 */ move	$v0, $zero
.L_80C07DAC:
/* 000075 0x80C07DAC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000076 0x80C07DB0 8FB00018 */ lw	$s0, 0X18($sp)
/* 000077 0x80C07DB4 8FB1001C */ lw	$s1, 0X1C($sp)
/* 000078 0x80C07DB8 8FB20020 */ lw	$s2, 0X20($sp)
/* 000079 0x80C07DBC 03E00008 */ jr	$ra
/* 000080 0x80C07DC0 27BD0030 */ addiu	$sp, $sp, 48

glabel func_80C07DC4
/* 000081 0x80C07DC4 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000082 0x80C07DC8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000083 0x80C07DCC AFA40018 */ sw	$a0, 0X18($sp)
/* 000084 0x80C07DD0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000085 0x80C07DD4 0C301F34 */ jal	func_80C07CD0
/* 000086 0x80C07DD8 00000000 */ nop
/* 000087 0x80C07DDC 50400004 */ beqzl	$v0, .L_80C07DF0
/* 000088 0x80C07DE0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000089 0x80C07DE4 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000090 0x80C07DE8 8FA40018 */ lw	$a0, 0X18($sp)
/* 000091 0x80C07DEC 8FBF0014 */ lw	$ra, 0X14($sp)
.L_80C07DF0:
/* 000092 0x80C07DF0 27BD0018 */ addiu	$sp, $sp, 24
/* 000093 0x80C07DF4 03E00008 */ jr	$ra
/* 000094 0x80C07DF8 00000000 */ nop

glabel func_80C07DFC
/* 000095 0x80C07DFC 27BDFFF0 */ addiu	$sp, $sp, -16
/* 000096 0x80C07E00 8FAE0020 */ lw	$t6, 0X20($sp)
/* 000097 0x80C07E04 8FAF0024 */ lw	$t7, 0X24($sp)
/* 000098 0x80C07E08 C48C0000 */ lwc1	$f12, 0X0($a0)
/* 000099 0x80C07E0C 448E2000 */ mtc1	$t6, $f4
/* 000100 0x80C07E10 448F4000 */ mtc1	$t7, $f8
/* 000101 0x80C07E14 8FB80028 */ lw	$t8, 0X28($sp)
/* 000102 0x80C07E18 468021A0 */ cvt.s.w	$f6, $f4
/* 000103 0x80C07E1C C4C40000 */ lwc1	$f4, 0X0($a2)
/* 000104 0x80C07E20 468042A0 */ cvt.s.w	$f10, $f8
/* 000105 0x80C07E24 460C2201 */ sub.s	$f8, $f4, $f12
/* 000106 0x80C07E28 460A3003 */ div.s	$f0, $f6, $f10
/* 000107 0x80C07E2C 46004182 */ mul.s	$f6, $f8, $f0
/* 000108 0x80C07E30 460C3280 */ add.s	$f10, $f6, $f12
/* 000109 0x80C07E34 E70A0000 */ swc1	$f10, 0X0($t8)
/* 000110 0x80C07E38 C4C40004 */ lwc1	$f4, 0X4($a2)
/* 000111 0x80C07E3C C48E0004 */ lwc1	$f14, 0X4($a0)
/* 000112 0x80C07E40 8FB90028 */ lw	$t9, 0X28($sp)
/* 000113 0x80C07E44 460E2201 */ sub.s	$f8, $f4, $f14
/* 000114 0x80C07E48 46004182 */ mul.s	$f6, $f8, $f0
/* 000115 0x80C07E4C 460E3280 */ add.s	$f10, $f6, $f14
/* 000116 0x80C07E50 E72A0004 */ swc1	$f10, 0X4($t9)
/* 000117 0x80C07E54 C4C40008 */ lwc1	$f4, 0X8($a2)
/* 000118 0x80C07E58 C4900008 */ lwc1	$f16, 0X8($a0)
/* 000119 0x80C07E5C 8FA80028 */ lw	$t0, 0X28($sp)
/* 000120 0x80C07E60 46102201 */ sub.s	$f8, $f4, $f16
/* 000121 0x80C07E64 46004182 */ mul.s	$f6, $f8, $f0
/* 000122 0x80C07E68 46103280 */ add.s	$f10, $f6, $f16
/* 000123 0x80C07E6C E50A0008 */ swc1	$f10, 0X8($t0)
/* 000124 0x80C07E70 84EA0000 */ lh	$t2, 0X0($a3)
/* 000125 0x80C07E74 84A90000 */ lh	$t1, 0X0($a1)
/* 000126 0x80C07E78 8FAD002C */ lw	$t5, 0X2C($sp)
/* 000127 0x80C07E7C 448A4000 */ mtc1	$t2, $f8
/* 000128 0x80C07E80 44892000 */ mtc1	$t1, $f4
/* 000129 0x80C07E84 468041A0 */ cvt.s.w	$f6, $f8
/* 000130 0x80C07E88 468024A0 */ cvt.s.w	$f18, $f4
/* 000131 0x80C07E8C 46123281 */ sub.s	$f10, $f6, $f18
/* 000132 0x80C07E90 46005102 */ mul.s	$f4, $f10, $f0
/* 000133 0x80C07E94 46122200 */ add.s	$f8, $f4, $f18
/* 000134 0x80C07E98 4600418D */ trunc.w.s	$f6, $f8
/* 000135 0x80C07E9C 440C3000 */ mfc1	$t4, $f6
/* 000136 0x80C07EA0 00000000 */ nop
/* 000137 0x80C07EA4 A5AC0000 */ sh	$t4, 0X0($t5)
/* 000138 0x80C07EA8 84AE0002 */ lh	$t6, 0X2($a1)
/* 000139 0x80C07EAC 8FA8002C */ lw	$t0, 0X2C($sp)
/* 000140 0x80C07EB0 448E5000 */ mtc1	$t6, $f10
/* 000141 0x80C07EB4 00000000 */ nop
/* 000142 0x80C07EB8 46805120 */ cvt.s.w	$f4, $f10
/* 000143 0x80C07EBC E7A40004 */ swc1	$f4, 0X4($sp)
/* 000144 0x80C07EC0 84EF0002 */ lh	$t7, 0X2($a3)
/* 000145 0x80C07EC4 C7AA0004 */ lwc1	$f10, 0X4($sp)
/* 000146 0x80C07EC8 448F4000 */ mtc1	$t7, $f8
/* 000147 0x80C07ECC 00000000 */ nop
/* 000148 0x80C07ED0 468041A0 */ cvt.s.w	$f6, $f8
/* 000149 0x80C07ED4 460A3101 */ sub.s	$f4, $f6, $f10
/* 000150 0x80C07ED8 46002202 */ mul.s	$f8, $f4, $f0
/* 000151 0x80C07EDC 460A4180 */ add.s	$f6, $f8, $f10
/* 000152 0x80C07EE0 4600310D */ trunc.w.s	$f4, $f6
/* 000153 0x80C07EE4 44192000 */ mfc1	$t9, $f4
/* 000154 0x80C07EE8 00000000 */ nop
/* 000155 0x80C07EEC A5190002 */ sh	$t9, 0X2($t0)
/* 000156 0x80C07EF0 84EA0004 */ lh	$t2, 0X4($a3)
/* 000157 0x80C07EF4 84A90004 */ lh	$t1, 0X4($a1)
/* 000158 0x80C07EF8 8FAD002C */ lw	$t5, 0X2C($sp)
/* 000159 0x80C07EFC 448A5000 */ mtc1	$t2, $f10
/* 000160 0x80C07F00 44894000 */ mtc1	$t1, $f8
/* 000161 0x80C07F04 468051A0 */ cvt.s.w	$f6, $f10
/* 000162 0x80C07F08 468040A0 */ cvt.s.w	$f2, $f8
/* 000163 0x80C07F0C 46023101 */ sub.s	$f4, $f6, $f2
/* 000164 0x80C07F10 46002202 */ mul.s	$f8, $f4, $f0
/* 000165 0x80C07F14 46024280 */ add.s	$f10, $f8, $f2
/* 000166 0x80C07F18 4600518D */ trunc.w.s	$f6, $f10
/* 000167 0x80C07F1C 440C3000 */ mfc1	$t4, $f6
/* 000168 0x80C07F20 00000000 */ nop
/* 000169 0x80C07F24 A5AC0004 */ sh	$t4, 0X4($t5)
/* 000170 0x80C07F28 03E00008 */ jr	$ra
/* 000171 0x80C07F2C 27BD0010 */ addiu	$sp, $sp, 16

glabel func_80C07F30
/* 000172 0x80C07F30 27BDFF58 */ addiu	$sp, $sp, -168
/* 000173 0x80C07F34 AFB5005C */ sw	$s5, 0X5C($sp)
/* 000174 0x80C07F38 0080A825 */ move	$s5, $a0
/* 000175 0x80C07F3C AFBF006C */ sw	$ra, 0X6C($sp)
/* 000176 0x80C07F40 AFBE0068 */ sw	$fp, 0X68($sp)
/* 000177 0x80C07F44 AFB70064 */ sw	$s7, 0X64($sp)
/* 000178 0x80C07F48 AFB60060 */ sw	$s6, 0X60($sp)
/* 000179 0x80C07F4C AFB40058 */ sw	$s4, 0X58($sp)
/* 000180 0x80C07F50 AFB30054 */ sw	$s3, 0X54($sp)
/* 000181 0x80C07F54 AFB20050 */ sw	$s2, 0X50($sp)
/* 000182 0x80C07F58 AFB1004C */ sw	$s1, 0X4C($sp)
/* 000183 0x80C07F5C AFB00048 */ sw	$s0, 0X48($sp)
/* 000184 0x80C07F60 F7BA0040 */ sdc1	$f26, 0X40($sp)
/* 000185 0x80C07F64 F7B80038 */ sdc1	$f24, 0X38($sp)
/* 000186 0x80C07F68 F7B60030 */ sdc1	$f22, 0X30($sp)
/* 000187 0x80C07F6C F7B40028 */ sdc1	$f20, 0X28($sp)
/* 000188 0x80C07F70 AFA500AC */ sw	$a1, 0XAC($sp)
/* 000189 0x80C07F74 3C014198 */ lui	$at, 0x4198
/* 000190 0x80C07F78 4481D000 */ mtc1	$at, $f26
/* 000191 0x80C07F7C 3C0140A0 */ lui	$at, 0x40A0
/* 000192 0x80C07F80 4481B000 */ mtc1	$at, $f22
/* 000193 0x80C07F84 3C01457A */ lui	$at, 0x457A
/* 000194 0x80C07F88 3C0E80C1 */ lui	$t6, %hi(D_80C08660)
/* 000195 0x80C07F8C 25CE8660 */ addiu	$t6, $t6, %lo(D_80C08660)
/* 000196 0x80C07F90 3C1780C1 */ lui	$s7, %hi(D_80C0866C)
/* 000197 0x80C07F94 3C1E801D */ lui	$fp, %hi(D_801D15B0)
/* 000198 0x80C07F98 4481A000 */ mtc1	$at, $f20
/* 000199 0x80C07F9C 4480C000 */ mtc1	$zero, $f24
/* 000200 0x80C07FA0 27DE15B0 */ addiu	$fp, $fp, %lo(D_801D15B0)
/* 000201 0x80C07FA4 26F7866C */ addiu	$s7, $s7, %lo(D_80C0866C)
/* 000202 0x80C07FA8 AFAE0088 */ sw	$t6, 0X88($sp)
/* 000203 0x80C07FAC AFB50090 */ sw	$s5, 0X90($sp)
/* 000204 0x80C07FB0 26B60710 */ addiu	$s6, $s5, 1808
/* 000205 0x80C07FB4 AFA00080 */ sw	$zero, 0X80($sp)
.L_80C07FB8:
/* 000206 0x80C07FB8 8FAF0080 */ lw	$t7, 0X80($sp)
/* 000207 0x80C07FBC 00008825 */ move	$s1, $zero
/* 000208 0x80C07FC0 02AF8021 */ addu	$s0, $s5, $t7
/* 000209 0x80C07FC4 26120168 */ addiu	$s2, $s0, 360
/* 000210 0x80C07FC8 26130180 */ addiu	$s3, $s0, 384
/* 000211 0x80C07FCC 26140174 */ addiu	$s4, $s0, 372
.L_80C07FD0:
/* 000212 0x80C07FD0 8FB80080 */ lw	$t8, 0X80($sp)
/* 000213 0x80C07FD4 2401006C */ li	$at, 108
/* 000214 0x80C07FD8 02C02025 */ move	$a0, $s6
/* 000215 0x80C07FDC 1301000F */ beq	$t8, $at, .L_80C0801C
/* 000216 0x80C07FE0 02E02825 */ move	$a1, $s7
/* 000217 0x80C07FE4 8FA60090 */ lw	$a2, 0X90($sp)
/* 000218 0x80C07FE8 8FA70088 */ lw	$a3, 0X88($sp)
/* 000219 0x80C07FEC 2419000A */ li	$t9, 10
/* 000220 0x80C07FF0 AFB90014 */ sw	$t9, 0X14($sp)
/* 000221 0x80C07FF4 02C02025 */ move	$a0, $s6
/* 000222 0x80C07FF8 02E02825 */ move	$a1, $s7
/* 000223 0x80C07FFC AFB10010 */ sw	$s1, 0X10($sp)
/* 000224 0x80C08000 AFB20018 */ sw	$s2, 0X18($sp)
/* 000225 0x80C08004 AFB3001C */ sw	$s3, 0X1C($sp)
/* 000226 0x80C08008 24C6071C */ addiu	$a2, $a2, 1820
/* 000227 0x80C0800C 0C301F7F */ jal	func_80C07DFC
/* 000228 0x80C08010 24E70020 */ addiu	$a3, $a3, 32
/* 000229 0x80C08014 1000000B */ b	.L_80C08044
/* 000230 0x80C08018 24090064 */ li	$t1, 100
.L_80C0801C:
/* 000231 0x80C0801C 3C0780C1 */ lui	$a3, %hi(D_80C0866C)
/* 000232 0x80C08020 2408000A */ li	$t0, 10
/* 000233 0x80C08024 AFA80014 */ sw	$t0, 0X14($sp)
/* 000234 0x80C08028 24E7866C */ addiu	$a3, $a3, %lo(D_80C0866C)
/* 000235 0x80C0802C 26A60710 */ addiu	$a2, $s5, 1808
/* 000236 0x80C08030 AFB10010 */ sw	$s1, 0X10($sp)
/* 000237 0x80C08034 AFB20018 */ sw	$s2, 0X18($sp)
/* 000238 0x80C08038 0C301F7F */ jal	func_80C07DFC
/* 000239 0x80C0803C AFB3001C */ sw	$s3, 0X1C($sp)
/* 000240 0x80C08040 24090064 */ li	$t1, 100
.L_80C08044:
/* 000241 0x80C08044 240A001E */ li	$t2, 30
/* 000242 0x80C08048 240B0007 */ li	$t3, 7
/* 000243 0x80C0804C AFAB0018 */ sw	$t3, 0X18($sp)
/* 000244 0x80C08050 AFAA0014 */ sw	$t2, 0X14($sp)
/* 000245 0x80C08054 AFA90010 */ sw	$t1, 0X10($sp)
/* 000246 0x80C08058 8FA400AC */ lw	$a0, 0XAC($sp)
/* 000247 0x80C0805C 02402825 */ move	$a1, $s2
/* 000248 0x80C08060 03C03025 */ move	$a2, $fp
/* 000249 0x80C08064 0C02C4BC */ jal	func_800B12F0
/* 000250 0x80C08068 03C03825 */ move	$a3, $fp
/* 000251 0x80C0806C 0C021BE8 */ jal	rand
/* 000252 0x80C08070 00000000 */ nop
/* 000253 0x80C08074 00026403 */ sra	$t4, $v0, 16
/* 000254 0x80C08078 A60C0182 */ sh	$t4, 0X182($s0)
/* 000255 0x80C0807C C6A60708 */ lwc1	$f6, 0X708($s5)
/* 000256 0x80C08080 C6040168 */ lwc1	$f4, 0X168($s0)
/* 000257 0x80C08084 E7B80098 */ swc1	$f24, 0X98($sp)
/* 000258 0x80C08088 27A40094 */ addiu	$a0, $sp, 148
/* 000259 0x80C0808C 46062201 */ sub.s	$f8, $f4, $f6
/* 000260 0x80C08090 E7A80094 */ swc1	$f8, 0X94($sp)
/* 000261 0x80C08094 C6B0070C */ lwc1	$f16, 0X70C($s5)
/* 000262 0x80C08098 C60A0170 */ lwc1	$f10, 0X170($s0)
/* 000263 0x80C0809C 46105481 */ sub.s	$f18, $f10, $f16
/* 000264 0x80C080A0 0C05E57C */ jal	Math3D_Normalize
/* 000265 0x80C080A4 E7B2009C */ swc1	$f18, 0X9C($sp)
/* 000266 0x80C080A8 C7A40094 */ lwc1	$f4, 0X94($sp)
/* 000267 0x80C080AC C7A8009C */ lwc1	$f8, 0X9C($sp)
/* 000268 0x80C080B0 E7BA0098 */ swc1	$f26, 0X98($sp)
/* 000269 0x80C080B4 46162182 */ mul.s	$f6, $f4, $f22
/* 000270 0x80C080B8 27AD0094 */ addiu	$t5, $sp, 148
/* 000271 0x80C080BC 46164282 */ mul.s	$f10, $f8, $f22
/* 000272 0x80C080C0 E7A60094 */ swc1	$f6, 0X94($sp)
/* 000273 0x80C080C4 E7AA009C */ swc1	$f10, 0X9C($sp)
/* 000274 0x80C080C8 8DAF0000 */ lw	$t7, 0X0($t5)
/* 000275 0x80C080CC AE8F0000 */ sw	$t7, 0X0($s4)
/* 000276 0x80C080D0 8DAE0004 */ lw	$t6, 0X4($t5)
/* 000277 0x80C080D4 AE8E0004 */ sw	$t6, 0X4($s4)
/* 000278 0x80C080D8 8DAF0008 */ lw	$t7, 0X8($t5)
/* 000279 0x80C080DC 0C021C0C */ jal	randPlusMinusPoint5
/* 000280 0x80C080E0 AE8F0008 */ sw	$t7, 0X8($s4)
/* 000281 0x80C080E4 46140402 */ mul.s	$f16, $f0, $f20
/* 000282 0x80C080E8 4600848D */ trunc.w.s	$f18, $f16
/* 000283 0x80C080EC 44199000 */ mfc1	$t9, $f18
/* 000284 0x80C080F0 0C021C0C */ jal	randPlusMinusPoint5
/* 000285 0x80C080F4 A6190186 */ sh	$t9, 0X186($s0)
/* 000286 0x80C080F8 46140102 */ mul.s	$f4, $f0, $f20
/* 000287 0x80C080FC 4600218D */ trunc.w.s	$f6, $f4
/* 000288 0x80C08100 44093000 */ mfc1	$t1, $f6
/* 000289 0x80C08104 0C021C0C */ jal	randPlusMinusPoint5
/* 000290 0x80C08108 A6090188 */ sh	$t1, 0X188($s0)
/* 000291 0x80C0810C 46140202 */ mul.s	$f8, $f0, $f20
/* 000292 0x80C08110 26310001 */ addiu	$s1, $s1, 1
/* 000293 0x80C08114 2401000A */ li	$at, 10
/* 000294 0x80C08118 26100090 */ addiu	$s0, $s0, 144
/* 000295 0x80C0811C 26520090 */ addiu	$s2, $s2, 144
/* 000296 0x80C08120 26730090 */ addiu	$s3, $s3, 144
/* 000297 0x80C08124 26940090 */ addiu	$s4, $s4, 144
/* 000298 0x80C08128 4600428D */ trunc.w.s	$f10, $f8
/* 000299 0x80C0812C 440B5000 */ mfc1	$t3, $f10
/* 000300 0x80C08130 1621FFA7 */ bne	$s1, $at, .L_80C07FD0
/* 000301 0x80C08134 A60B00FA */ sh	$t3, 0XFA($s0)
/* 000302 0x80C08138 8FAC0090 */ lw	$t4, 0X90($sp)
/* 000303 0x80C0813C 8FAE0088 */ lw	$t6, 0X88($sp)
/* 000304 0x80C08140 8FB80080 */ lw	$t8, 0X80($sp)
/* 000305 0x80C08144 24010090 */ li	$at, 144
/* 000306 0x80C08148 258D000C */ addiu	$t5, $t4, 12
/* 000307 0x80C0814C 25CF0014 */ addiu	$t7, $t6, 20
/* 000308 0x80C08150 27190024 */ addiu	$t9, $t8, 36
/* 000309 0x80C08154 AFB90080 */ sw	$t9, 0X80($sp)
/* 000310 0x80C08158 AFAF0088 */ sw	$t7, 0X88($sp)
/* 000311 0x80C0815C AFAD0090 */ sw	$t5, 0X90($sp)
/* 000312 0x80C08160 26D6000C */ addiu	$s6, $s6, 12
/* 000313 0x80C08164 1721FF94 */ bne	$t9, $at, .L_80C07FB8
/* 000314 0x80C08168 26F70014 */ addiu	$s7, $s7, 20
/* 000315 0x80C0816C 02A02025 */ move	$a0, $s5
/* 000316 0x80C08170 0C02E3B2 */ jal	func_800B8EC8
/* 000317 0x80C08174 24052928 */ li	$a1, 10536
/* 000318 0x80C08178 8EA80744 */ lw	$t0, 0X744($s5)
/* 000319 0x80C0817C AEA00740 */ sw	$zero, 0X740($s5)
/* 000320 0x80C08180 35090004 */ ori	$t1, $t0, 0X4
/* 000321 0x80C08184 AEA90744 */ sw	$t1, 0X744($s5)
/* 000322 0x80C08188 8FBF006C */ lw	$ra, 0X6C($sp)
/* 000323 0x80C0818C D7B40028 */ ldc1	$f20, 0X28($sp)
/* 000324 0x80C08190 D7B60030 */ ldc1	$f22, 0X30($sp)
/* 000325 0x80C08194 D7B80038 */ ldc1	$f24, 0X38($sp)
/* 000326 0x80C08198 D7BA0040 */ ldc1	$f26, 0X40($sp)
/* 000327 0x80C0819C 8FB00048 */ lw	$s0, 0X48($sp)
/* 000328 0x80C081A0 8FB1004C */ lw	$s1, 0X4C($sp)
/* 000329 0x80C081A4 8FB20050 */ lw	$s2, 0X50($sp)
/* 000330 0x80C081A8 8FB30054 */ lw	$s3, 0X54($sp)
/* 000331 0x80C081AC 8FB40058 */ lw	$s4, 0X58($sp)
/* 000332 0x80C081B0 8FB5005C */ lw	$s5, 0X5C($sp)
/* 000333 0x80C081B4 8FB60060 */ lw	$s6, 0X60($sp)
/* 000334 0x80C081B8 8FB70064 */ lw	$s7, 0X64($sp)
/* 000335 0x80C081BC 8FBE0068 */ lw	$fp, 0X68($sp)
/* 000336 0x80C081C0 03E00008 */ jr	$ra
/* 000337 0x80C081C4 27BD00A8 */ addiu	$sp, $sp, 168

glabel func_80C081C8
/* 000338 0x80C081C8 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000339 0x80C081CC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000340 0x80C081D0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000341 0x80C081D4 00803025 */ move	$a2, $a0
/* 000342 0x80C081D8 8CCE0744 */ lw	$t6, 0X744($a2)
/* 000343 0x80C081DC 8CC20740 */ lw	$v0, 0X740($a2)
/* 000344 0x80C081E0 00002825 */ move	$a1, $zero
/* 000345 0x80C081E4 35CF0001 */ ori	$t7, $t6, 0X1
/* 000346 0x80C081E8 28410047 */ slti	$at, $v0, 71
/* 000347 0x80C081EC 1020002A */ beqz	$at, .L_80C08298
/* 000348 0x80C081F0 ACCF0744 */ sw	$t7, 0X744($a2)
/* 000349 0x80C081F4 3C0180C1 */ lui	$at, %hi(D_80C086C0)
/* 000350 0x80C081F8 C42086C0 */ lwc1	$f0, %lo(D_80C086C0)($at)
/* 000351 0x80C081FC 24070090 */ li	$a3, 144
/* 000352 0x80C08200 2404000A */ li	$a0, 10
/* 000353 0x80C08204 00001825 */ move	$v1, $zero
.L_80C08208:
/* 000354 0x80C08208 00C51021 */ addu	$v0, $a2, $a1
.L_80C0820C:
/* 000355 0x80C0820C C4440178 */ lwc1	$f4, 0X178($v0)
/* 000356 0x80C08210 C4480168 */ lwc1	$f8, 0X168($v0)
/* 000357 0x80C08214 C44A0174 */ lwc1	$f10, 0X174($v0)
/* 000358 0x80C08218 46002180 */ add.s	$f6, $f4, $f0
/* 000359 0x80C0821C C452016C */ lwc1	$f18, 0X16C($v0)
/* 000360 0x80C08220 84580180 */ lh	$t8, 0X180($v0)
/* 000361 0x80C08224 460A4400 */ add.s	$f16, $f8, $f10
/* 000362 0x80C08228 E4460178 */ swc1	$f6, 0X178($v0)
/* 000363 0x80C0822C C4440178 */ lwc1	$f4, 0X178($v0)
/* 000364 0x80C08230 C44A017C */ lwc1	$f10, 0X17C($v0)
/* 000365 0x80C08234 C4480170 */ lwc1	$f8, 0X170($v0)
/* 000366 0x80C08238 84590186 */ lh	$t9, 0X186($v0)
/* 000367 0x80C0823C 84490182 */ lh	$t1, 0X182($v0)
/* 000368 0x80C08240 844A0188 */ lh	$t2, 0X188($v0)
/* 000369 0x80C08244 844C0184 */ lh	$t4, 0X184($v0)
/* 000370 0x80C08248 844D018A */ lh	$t5, 0X18A($v0)
/* 000371 0x80C0824C E4500168 */ swc1	$f16, 0X168($v0)
/* 000372 0x80C08250 46049180 */ add.s	$f6, $f18, $f4
/* 000373 0x80C08254 24630001 */ addiu	$v1, $v1, 1
/* 000374 0x80C08258 03194021 */ addu	$t0, $t8, $t9
/* 000375 0x80C0825C 460A4400 */ add.s	$f16, $f8, $f10
/* 000376 0x80C08260 012A5821 */ addu	$t3, $t1, $t2
/* 000377 0x80C08264 018D7021 */ addu	$t6, $t4, $t5
/* 000378 0x80C08268 24420090 */ addiu	$v0, $v0, 144
/* 000379 0x80C0826C E44600DC */ swc1	$f6, 0XDC($v0)
/* 000380 0x80C08270 E45000E0 */ swc1	$f16, 0XE0($v0)
/* 000381 0x80C08274 A44800F0 */ sh	$t0, 0XF0($v0)
/* 000382 0x80C08278 A44B00F2 */ sh	$t3, 0XF2($v0)
/* 000383 0x80C0827C 1464FFE3 */ bne	$v1, $a0, .L_80C0820C
/* 000384 0x80C08280 A44E00F4 */ sh	$t6, 0XF4($v0)
/* 000385 0x80C08284 24A50024 */ addiu	$a1, $a1, 36
/* 000386 0x80C08288 54A7FFDF */ bnel	$a1, $a3, .L_80C08208
/* 000387 0x80C0828C 00001825 */ move	$v1, $zero
/* 000388 0x80C08290 10000008 */ b	.L_80C082B4
/* 000389 0x80C08294 8CC20740 */ lw	$v0, 0X740($a2)
.L_80C08298:
/* 000390 0x80C08298 28410046 */ slti	$at, $v0, 70
/* 000391 0x80C0829C 14200005 */ bnez	$at, .L_80C082B4
/* 000392 0x80C082A0 00C02025 */ move	$a0, $a2
/* 000393 0x80C082A4 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000394 0x80C082A8 AFA60018 */ sw	$a2, 0X18($sp)
/* 000395 0x80C082AC 8FA60018 */ lw	$a2, 0X18($sp)
/* 000396 0x80C082B0 8CC20740 */ lw	$v0, 0X740($a2)
.L_80C082B4:
/* 000397 0x80C082B4 244F0001 */ addiu	$t7, $v0, 1
/* 000398 0x80C082B8 ACCF0740 */ sw	$t7, 0X740($a2)
/* 000399 0x80C082BC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000400 0x80C082C0 27BD0018 */ addiu	$sp, $sp, 24
/* 000401 0x80C082C4 03E00008 */ jr	$ra
/* 000402 0x80C082C8 00000000 */ nop

glabel func_80C082CC
/* 000403 0x80C082CC AFA50004 */ sw	$a1, 0X4($sp)
/* 000404 0x80C082D0 240EFFFF */ li	$t6, -1
/* 000405 0x80C082D4 AC8E0164 */ sw	$t6, 0X164($a0)
/* 000406 0x80C082D8 03E00008 */ jr	$ra
/* 000407 0x80C082DC 00000000 */ nop

glabel func_80C082E0
/* 000408 0x80C082E0 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000409 0x80C082E4 AFB00018 */ sw	$s0, 0X18($sp)
/* 000410 0x80C082E8 00808025 */ move	$s0, $a0
/* 000411 0x80C082EC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000412 0x80C082F0 AFA50024 */ sw	$a1, 0X24($sp)
/* 000413 0x80C082F4 8FA40024 */ lw	$a0, 0X24($sp)
/* 000414 0x80C082F8 0C03B8A7 */ jal	func_800EE29C
/* 000415 0x80C082FC 24050228 */ li	$a1, 552
/* 000416 0x80C08300 10400015 */ beqz	$v0, .L_80C08358
/* 000417 0x80C08304 8FA40024 */ lw	$a0, 0X24($sp)
/* 000418 0x80C08308 0C03B880 */ jal	func_800EE200
/* 000419 0x80C0830C 24050228 */ li	$a1, 552
/* 000420 0x80C08310 AE020160 */ sw	$v0, 0X160($s0)
/* 000421 0x80C08314 8FAE0024 */ lw	$t6, 0X24($sp)
/* 000422 0x80C08318 00027880 */ sll	$t7, $v0, 2
/* 000423 0x80C0831C 8E190164 */ lw	$t9, 0X164($s0)
/* 000424 0x80C08320 01CFC021 */ addu	$t8, $t6, $t7
/* 000425 0x80C08324 8F031F4C */ lw	$v1, 0X1F4C($t8)
/* 000426 0x80C08328 24010002 */ li	$at, 2
/* 000427 0x80C0832C 94640000 */ lhu	$a0, 0X0($v1)
/* 000428 0x80C08330 5099000A */ beql	$a0, $t9, .L_80C0835C
/* 000429 0x80C08334 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000430 0x80C08338 14810007 */ bne	$a0, $at, .L_80C08358
/* 000431 0x80C0833C AE040164 */ sw	$a0, 0X164($s0)
/* 000432 0x80C08340 02002025 */ move	$a0, $s0
/* 000433 0x80C08344 0C301FCC */ jal	func_80C07F30
/* 000434 0x80C08348 8FA50024 */ lw	$a1, 0X24($sp)
/* 000435 0x80C0834C 3C0980C1 */ lui	$t1, %hi(func_80C081C8)
/* 000436 0x80C08350 252981C8 */ addiu	$t1, $t1, %lo(func_80C081C8)
/* 000437 0x80C08354 AE09015C */ sw	$t1, 0X15C($s0)
.L_80C08358:
/* 000438 0x80C08358 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80C0835C:
/* 000439 0x80C0835C 8FB00018 */ lw	$s0, 0X18($sp)
/* 000440 0x80C08360 27BD0020 */ addiu	$sp, $sp, 32
/* 000441 0x80C08364 03E00008 */ jr	$ra
/* 000442 0x80C08368 00000000 */ nop

glabel ObjUsiyane_Init
/* 000443 0x80C0836C 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000444 0x80C08370 AFB00018 */ sw	$s0, 0X18($sp)
/* 000445 0x80C08374 00808025 */ move	$s0, $a0
/* 000446 0x80C08378 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000447 0x80C0837C AFA50024 */ sw	$a1, 0X24($sp)
/* 000448 0x80C08380 3C0580C1 */ lui	$a1, %hi(D_80C086B0)
/* 000449 0x80C08384 24A586B0 */ addiu	$a1, $a1, %lo(D_80C086B0)
/* 000450 0x80C08388 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000451 0x80C0838C 02002025 */ move	$a0, $s0
/* 000452 0x80C08390 3C053DCC */ lui	$a1, 0x3DCC
/* 000453 0x80C08394 34A5CCCD */ ori	$a1, $a1, 0XCCCD
/* 000454 0x80C08398 0C02D9F8 */ jal	Actor_SetScale
/* 000455 0x80C0839C 02002025 */ move	$a0, $s0
/* 000456 0x80C083A0 AE000744 */ sw	$zero, 0X744($s0)
/* 000457 0x80C083A4 02002025 */ move	$a0, $s0
/* 000458 0x80C083A8 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000459 0x80C083AC 00002825 */ move	$a1, $zero
/* 000460 0x80C083B0 3C060600 */ lui	$a2, 0x0600
/* 000461 0x80C083B4 24C622AC */ addiu	$a2, $a2, 8876
/* 000462 0x80C083B8 8FA40024 */ lw	$a0, 0X24($sp)
/* 000463 0x80C083BC 0C032B8D */ jal	BgCheck3_LoadMesh
/* 000464 0x80C083C0 02002825 */ move	$a1, $s0
/* 000465 0x80C083C4 8602001C */ lh	$v0, 0X1C($s0)
/* 000466 0x80C083C8 3C0E80C0 */ lui	$t6, %hi(func_80C07DC4)
/* 000467 0x80C083CC 24010001 */ li	$at, 1
/* 000468 0x80C083D0 3042000F */ andi	$v0, $v0, 0XF
/* 000469 0x80C083D4 10400005 */ beqz	$v0, .L_80C083EC
/* 000470 0x80C083D8 25CE7DC4 */ addiu	$t6, $t6, %lo(func_80C07DC4)
/* 000471 0x80C083DC 10410005 */ beq	$v0, $at, .L_80C083F4
/* 000472 0x80C083E0 02002025 */ move	$a0, $s0
/* 000473 0x80C083E4 10000009 */ b	.L_80C0840C
/* 000474 0x80C083E8 00000000 */ nop
.L_80C083EC:
/* 000475 0x80C083EC 10000009 */ b	.L_80C08414
/* 000476 0x80C083F0 AE0E015C */ sw	$t6, 0X15C($s0)
.L_80C083F4:
/* 000477 0x80C083F4 0C3020B3 */ jal	func_80C082CC
/* 000478 0x80C083F8 8FA50024 */ lw	$a1, 0X24($sp)
/* 000479 0x80C083FC 3C0F80C1 */ lui	$t7, %hi(func_80C082E0)
/* 000480 0x80C08400 25EF82E0 */ addiu	$t7, $t7, %lo(func_80C082E0)
/* 000481 0x80C08404 10000003 */ b	.L_80C08414
/* 000482 0x80C08408 AE0F015C */ sw	$t7, 0X15C($s0)
.L_80C0840C:
/* 000483 0x80C0840C 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000484 0x80C08410 02002025 */ move	$a0, $s0
.L_80C08414:
/* 000485 0x80C08414 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000486 0x80C08418 8FB00018 */ lw	$s0, 0X18($sp)
/* 000487 0x80C0841C 27BD0020 */ addiu	$sp, $sp, 32
/* 000488 0x80C08420 03E00008 */ jr	$ra
/* 000489 0x80C08424 00000000 */ nop

glabel ObjUsiyane_Destroy
/* 000490 0x80C08428 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000491 0x80C0842C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000492 0x80C08430 AFA40018 */ sw	$a0, 0X18($sp)
/* 000493 0x80C08434 00A03825 */ move	$a3, $a1
/* 000494 0x80C08438 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000495 0x80C0843C 00E02025 */ move	$a0, $a3
/* 000496 0x80C08440 24E50880 */ addiu	$a1, $a3, 2176
/* 000497 0x80C08444 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000498 0x80C08448 8DC60144 */ lw	$a2, 0X144($t6)
/* 000499 0x80C0844C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000500 0x80C08450 27BD0018 */ addiu	$sp, $sp, 24
/* 000501 0x80C08454 03E00008 */ jr	$ra
/* 000502 0x80C08458 00000000 */ nop

glabel ObjUsiyane_Update
/* 000503 0x80C0845C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000504 0x80C08460 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000505 0x80C08464 8C99015C */ lw	$t9, 0X15C($a0)
/* 000506 0x80C08468 0320F809 */ jalr	$t9
/* 000507 0x80C0846C 00000000 */ nop
/* 000508 0x80C08470 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000509 0x80C08474 27BD0018 */ addiu	$sp, $sp, 24
/* 000510 0x80C08478 03E00008 */ jr	$ra
/* 000511 0x80C0847C 00000000 */ nop

glabel ObjUsiyane_Draw
/* 000512 0x80C08480 27BDFF38 */ addiu	$sp, $sp, -200
/* 000513 0x80C08484 AFB60050 */ sw	$s6, 0X50($sp)
/* 000514 0x80C08488 AFB5004C */ sw	$s5, 0X4C($sp)
/* 000515 0x80C0848C 0080A825 */ move	$s5, $a0
/* 000516 0x80C08490 00A0B025 */ move	$s6, $a1
/* 000517 0x80C08494 AFBF005C */ sw	$ra, 0X5C($sp)
/* 000518 0x80C08498 AFBE0058 */ sw	$fp, 0X58($sp)
/* 000519 0x80C0849C AFB70054 */ sw	$s7, 0X54($sp)
/* 000520 0x80C084A0 AFB40048 */ sw	$s4, 0X48($sp)
/* 000521 0x80C084A4 AFB30044 */ sw	$s3, 0X44($sp)
/* 000522 0x80C084A8 AFB20040 */ sw	$s2, 0X40($sp)
/* 000523 0x80C084AC AFB1003C */ sw	$s1, 0X3C($sp)
/* 000524 0x80C084B0 AFB00038 */ sw	$s0, 0X38($sp)
/* 000525 0x80C084B4 F7B40030 */ sdc1	$f20, 0X30($sp)
/* 000526 0x80C084B8 8EA20744 */ lw	$v0, 0X744($s5)
/* 000527 0x80C084BC 02C02025 */ move	$a0, $s6
/* 000528 0x80C084C0 3C050600 */ lui	$a1, 0x0600
/* 000529 0x80C084C4 304E0001 */ andi	$t6, $v0, 0X1
/* 000530 0x80C084C8 55C00005 */ bnezl	$t6, .L_80C084E0
/* 000531 0x80C084CC 304F0002 */ andi	$t7, $v0, 0X2
/* 000532 0x80C084D0 0C02F7F0 */ jal	func_800BDFC0
/* 000533 0x80C084D4 24A50838 */ addiu	$a1, $a1, 2104
/* 000534 0x80C084D8 8EA20744 */ lw	$v0, 0X744($s5)
/* 000535 0x80C084DC 304F0002 */ andi	$t7, $v0, 0X2
.L_80C084E0:
/* 000536 0x80C084E0 15E0001A */ bnez	$t7, .L_80C0854C
/* 000537 0x80C084E4 3C1080C1 */ lui	$s0, %hi(D_80C08660)
/* 000538 0x80C084E8 3C13801D */ lui	$s3, %hi(D_801D15B0)
/* 000539 0x80C084EC 267315B0 */ addiu	$s3, $s3, %lo(D_801D15B0)
/* 000540 0x80C084F0 26108660 */ addiu	$s0, $s0, %lo(D_80C08660)
/* 000541 0x80C084F4 00008825 */ move	$s1, $zero
/* 000542 0x80C084F8 26B20710 */ addiu	$s2, $s5, 1808
/* 000543 0x80C084FC 24170030 */ li	$s7, 48
/* 000544 0x80C08500 27B40074 */ addiu	$s4, $sp, 116
.L_80C08504:
/* 000545 0x80C08504 02002025 */ move	$a0, $s0
/* 000546 0x80C08508 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000547 0x80C0850C 02402825 */ move	$a1, $s2
/* 000548 0x80C08510 02602025 */ move	$a0, $s3
/* 000549 0x80C08514 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000550 0x80C08518 02802825 */ move	$a1, $s4
/* 000551 0x80C0851C C7A40074 */ lwc1	$f4, 0X74($sp)
/* 000552 0x80C08520 26100014 */ addiu	$s0, $s0, 20
/* 000553 0x80C08524 2631000C */ addiu	$s1, $s1, 12
/* 000554 0x80C08528 E6A40708 */ swc1	$f4, 0X708($s5)
/* 000555 0x80C0852C C7A6007C */ lwc1	$f6, 0X7C($sp)
/* 000556 0x80C08530 E6A6070C */ swc1	$f6, 0X70C($s5)
/* 000557 0x80C08534 1637FFF3 */ bne	$s1, $s7, .L_80C08504
/* 000558 0x80C08538 2652000C */ addiu	$s2, $s2, 12
/* 000559 0x80C0853C 8EB80744 */ lw	$t8, 0X744($s5)
/* 000560 0x80C08540 37190002 */ ori	$t9, $t8, 0X2
/* 000561 0x80C08544 AEB90744 */ sw	$t9, 0X744($s5)
/* 000562 0x80C08548 8EA20744 */ lw	$v0, 0X744($s5)
.L_80C0854C:
/* 000563 0x80C0854C 30480004 */ andi	$t0, $v0, 0X4
/* 000564 0x80C08550 1100002C */ beqz	$t0, .L_80C08604
/* 000565 0x80C08554 30490008 */ andi	$t1, $v0, 0X8
/* 000566 0x80C08558 1520002A */ bnez	$t1, .L_80C08604
/* 000567 0x80C0855C 0000B825 */ move	$s7, $zero
/* 000568 0x80C08560 3C0180C1 */ lui	$at, %hi(D_80C086C4)
/* 000569 0x80C08564 3C130600 */ lui	$s3, 0x0600
/* 000570 0x80C08568 26730098 */ addiu	$s3, $s3, 152
/* 000571 0x80C0856C C43486C4 */ lwc1	$f20, %lo(D_80C086C4)($at)
/* 000572 0x80C08570 241E0090 */ li	$fp, 144
/* 000573 0x80C08574 2414000A */ li	$s4, 10
/* 000574 0x80C08578 27B20084 */ addiu	$s2, $sp, 132
/* 000575 0x80C0857C 00008825 */ move	$s1, $zero
.L_80C08580:
/* 000576 0x80C08580 02B78021 */ addu	$s0, $s5, $s7
.L_80C08584:
/* 000577 0x80C08584 0C060067 */ jal	SysMatrix_StatePush
/* 000578 0x80C08588 00000000 */ nop
/* 000579 0x80C0858C 860A0180 */ lh	$t2, 0X180($s0)
/* 000580 0x80C08590 4405A000 */ mfc1	$a1, $f20
/* 000581 0x80C08594 4406A000 */ mfc1	$a2, $f20
/* 000582 0x80C08598 AFAA0010 */ sw	$t2, 0X10($sp)
/* 000583 0x80C0859C 860B0182 */ lh	$t3, 0X182($s0)
/* 000584 0x80C085A0 4407A000 */ mfc1	$a3, $f20
/* 000585 0x80C085A4 02402025 */ move	$a0, $s2
/* 000586 0x80C085A8 AFAB0014 */ sw	$t3, 0X14($sp)
/* 000587 0x80C085AC 860C0184 */ lh	$t4, 0X184($s0)
/* 000588 0x80C085B0 AFAC0018 */ sw	$t4, 0X18($sp)
/* 000589 0x80C085B4 C6080168 */ lwc1	$f8, 0X168($s0)
/* 000590 0x80C085B8 E7A8001C */ swc1	$f8, 0X1C($sp)
/* 000591 0x80C085BC C60A016C */ lwc1	$f10, 0X16C($s0)
/* 000592 0x80C085C0 E7AA0020 */ swc1	$f10, 0X20($sp)
/* 000593 0x80C085C4 C6100170 */ lwc1	$f16, 0X170($s0)
/* 000594 0x80C085C8 0C04E604 */ jal	Matrix_MakeTranslationRotationZYXScale
/* 000595 0x80C085CC E7B00024 */ swc1	$f16, 0X24($sp)
/* 000596 0x80C085D0 0C060083 */ jal	SysMatrix_SetCurrentState
/* 000597 0x80C085D4 02402025 */ move	$a0, $s2
/* 000598 0x80C085D8 02C02025 */ move	$a0, $s6
/* 000599 0x80C085DC 0C02F7F0 */ jal	func_800BDFC0
/* 000600 0x80C085E0 02602825 */ move	$a1, $s3
/* 000601 0x80C085E4 0C060073 */ jal	SysMatrix_StatePop
/* 000602 0x80C085E8 00000000 */ nop
/* 000603 0x80C085EC 26310001 */ addiu	$s1, $s1, 1
/* 000604 0x80C085F0 1634FFE4 */ bne	$s1, $s4, .L_80C08584
/* 000605 0x80C085F4 26100090 */ addiu	$s0, $s0, 144
/* 000606 0x80C085F8 26F70024 */ addiu	$s7, $s7, 36
/* 000607 0x80C085FC 56FEFFE0 */ bnel	$s7, $fp, .L_80C08580
/* 000608 0x80C08600 00008825 */ move	$s1, $zero
.L_80C08604:
/* 000609 0x80C08604 8FBF005C */ lw	$ra, 0X5C($sp)
/* 000610 0x80C08608 D7B40030 */ ldc1	$f20, 0X30($sp)
/* 000611 0x80C0860C 8FB00038 */ lw	$s0, 0X38($sp)
/* 000612 0x80C08610 8FB1003C */ lw	$s1, 0X3C($sp)
/* 000613 0x80C08614 8FB20040 */ lw	$s2, 0X40($sp)
/* 000614 0x80C08618 8FB30044 */ lw	$s3, 0X44($sp)
/* 000615 0x80C0861C 8FB40048 */ lw	$s4, 0X48($sp)
/* 000616 0x80C08620 8FB5004C */ lw	$s5, 0X4C($sp)
/* 000617 0x80C08624 8FB60050 */ lw	$s6, 0X50($sp)
/* 000618 0x80C08628 8FB70054 */ lw	$s7, 0X54($sp)
/* 000619 0x80C0862C 8FBE0058 */ lw	$fp, 0X58($sp)
/* 000620 0x80C08630 03E00008 */ jr	$ra
/* 000621 0x80C08634 27BD00C8 */ addiu	$sp, $sp, 200
/* 000622 0x80C08638 00000000 */ nop
/* 000623 0x80C0863C 00000000 */ nop
