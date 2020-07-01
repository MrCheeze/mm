.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel EffKamejimaWave_Init
/* 000000 0x80BCEB20 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000001 0x80BCEB24 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80BCEB28 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000003 0x80BCEB2C 3C053E4C */ lui	$a1, 0x3E4C
/* 000004 0x80BCEB30 34A5CCCD */ ori	$a1, $a1, 0XCCCD
/* 000005 0x80BCEB34 0C02D9F8 */ jal	Actor_SetScale
/* 000006 0x80BCEB38 AFA40018 */ sw	$a0, 0X18($sp)
/* 000007 0x80BCEB3C 8FA40018 */ lw	$a0, 0X18($sp)
/* 000008 0x80BCEB40 44802000 */ mtc1	$zero, $f4
/* 000009 0x80BCEB44 24010001 */ li	$at, 1
/* 000010 0x80BCEB48 848E001C */ lh	$t6, 0X1C($a0)
/* 000011 0x80BCEB4C 3C0880BD */ lui	$t0, %hi(func_80BCEC6C)
/* 000012 0x80BCEB50 2508EC6C */ addiu	$t0, $t0, %lo(func_80BCEC6C)
/* 000013 0x80BCEB54 31CF000F */ andi	$t7, $t6, 0XF
/* 000014 0x80BCEB58 15E10008 */ bne	$t7, $at, .L_80BCEB7C
/* 000015 0x80BCEB5C E484005C */ swc1	$f4, 0X5C($a0)
/* 000016 0x80BCEB60 3C1880BD */ lui	$t8, %hi(func_80BCEDE0)
/* 000017 0x80BCEB64 2718EDE0 */ addiu	$t8, $t8, %lo(func_80BCEDE0)
/* 000018 0x80BCEB68 AC98014C */ sw	$t8, 0X14C($a0)
/* 000019 0x80BCEB6C 241900FF */ li	$t9, 255
/* 000020 0x80BCEB70 3C0180BD */ lui	$at, %hi(D_80BCF1C0)
/* 000021 0x80BCEB74 10000005 */ b	.L_80BCEB8C
/* 000022 0x80BCEB78 A439F1C0 */ sh	$t9, %lo(D_80BCF1C0)($at)
.L_80BCEB7C:
/* 000023 0x80BCEB7C AC88014C */ sw	$t0, 0X14C($a0)
/* 000024 0x80BCEB80 240900FF */ li	$t1, 255
/* 000025 0x80BCEB84 3C0180BD */ lui	$at, %hi(D_80BCF1C0)
/* 000026 0x80BCEB88 A429F1C0 */ sh	$t1, %lo(D_80BCF1C0)($at)
.L_80BCEB8C:
/* 000027 0x80BCEB8C 3C040600 */ lui	$a0, 0x0600
/* 000028 0x80BCEB90 0C040141 */ jal	Lib_PtrSegToVirt
/* 000029 0x80BCEB94 24841AF0 */ addiu	$a0, $a0, 6896
/* 000030 0x80BCEB98 3C0180BD */ lui	$at, %hi(D_80BCF1C4)
/* 000031 0x80BCEB9C AC22F1C4 */ sw	$v0, %lo(D_80BCF1C4)($at)
/* 000032 0x80BCEBA0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000033 0x80BCEBA4 27BD0018 */ addiu	$sp, $sp, 24
/* 000034 0x80BCEBA8 03E00008 */ jr	$ra
/* 000035 0x80BCEBAC 00000000 */ nop

glabel EffKamejimaWave_Destroy
/* 000036 0x80BCEBB0 AFA40000 */ sw	$a0, 0X0($sp)
/* 000037 0x80BCEBB4 AFA50004 */ sw	$a1, 0X4($sp)
/* 000038 0x80BCEBB8 03E00008 */ jr	$ra
/* 000039 0x80BCEBBC 00000000 */ nop

glabel func_80BCEBC0
/* 000040 0x80BCEBC0 3C0180BD */ lui	$at, %hi(D_80BCF0B0)
/* 000041 0x80BCEBC4 44806000 */ mtc1	$zero, $f12
/* 000042 0x80BCEBC8 C422F0B0 */ lwc1	$f2, %lo(D_80BCF0B0)($at)
/* 000043 0x80BCEBCC AFA50004 */ sw	$a1, 0X4($sp)
/* 000044 0x80BCEBD0 C4800144 */ lwc1	$f0, 0X144($a0)
/* 000045 0x80BCEBD4 C484005C */ lwc1	$f4, 0X5C($a0)
/* 000046 0x80BCEBD8 848E00BC */ lh	$t6, 0XBC($a0)
/* 000047 0x80BCEBDC 46020201 */ sub.s	$f8, $f0, $f2
/* 000048 0x80BCEBE0 3C1880BD */ lui	$t8, %hi(func_80BCEC6C)
/* 000049 0x80BCEBE4 25CF0064 */ addiu	$t7, $t6, 100
/* 000050 0x80BCEBE8 46002180 */ add.s	$f6, $f4, $f0
/* 000051 0x80BCEBEC E4880144 */ swc1	$f8, 0X144($a0)
/* 000052 0x80BCEBF0 C4800144 */ lwc1	$f0, 0X144($a0)
/* 000053 0x80BCEBF4 A48F00BC */ sh	$t7, 0XBC($a0)
/* 000054 0x80BCEBF8 E486005C */ swc1	$f6, 0X5C($a0)
/* 000055 0x80BCEBFC 460C003C */ c.lt.s	$f0, $f12
/* 000056 0x80BCEC00 3C0180BD */ lui	$at, %hi(D_80BCF0B4)
/* 000057 0x80BCEC04 2718EC6C */ addiu	$t8, $t8, %lo(func_80BCEC6C)
/* 000058 0x80BCEC08 45000005 */ bc1f .L_80BCEC20
/* 000059 0x80BCEC0C 00000000 */ nop
/* 000060 0x80BCEC10 C48A0058 */ lwc1	$f10, 0X58($a0)
/* 000061 0x80BCEC14 C4800144 */ lwc1	$f0, 0X144($a0)
/* 000062 0x80BCEC18 46025400 */ add.s	$f16, $f10, $f2
/* 000063 0x80BCEC1C E4900058 */ swc1	$f16, 0X58($a0)
.L_80BCEC20:
/* 000064 0x80BCEC20 C422F0B4 */ lwc1	$f2, %lo(D_80BCF0B4)($at)
/* 000065 0x80BCEC24 3C0180BD */ lui	$at, %hi(D_80BCF0B8)
/* 000066 0x80BCEC28 4602003C */ c.lt.s	$f0, $f2
/* 000067 0x80BCEC2C 00000000 */ nop
/* 000068 0x80BCEC30 45020003 */ bc1fl .L_80BCEC40
/* 000069 0x80BCEC34 C492005C */ lwc1	$f18, 0X5C($a0)
/* 000070 0x80BCEC38 E4820144 */ swc1	$f2, 0X144($a0)
/* 000071 0x80BCEC3C C492005C */ lwc1	$f18, 0X5C($a0)
.L_80BCEC40:
/* 000072 0x80BCEC40 460C903C */ c.lt.s	$f18, $f12
/* 000073 0x80BCEC44 00000000 */ nop
/* 000074 0x80BCEC48 45000006 */ bc1f .L_80BCEC64
/* 000075 0x80BCEC4C 00000000 */ nop
/* 000076 0x80BCEC50 E48C005C */ swc1	$f12, 0X5C($a0)
/* 000077 0x80BCEC54 C424F0B8 */ lwc1	$f4, %lo(D_80BCF0B8)($at)
/* 000078 0x80BCEC58 AC98014C */ sw	$t8, 0X14C($a0)
/* 000079 0x80BCEC5C AC80013C */ sw	$zero, 0X13C($a0)
/* 000080 0x80BCEC60 E4840058 */ swc1	$f4, 0X58($a0)
.L_80BCEC64:
/* 000081 0x80BCEC64 03E00008 */ jr	$ra
/* 000082 0x80BCEC68 00000000 */ nop

glabel func_80BCEC6C
/* 000083 0x80BCEC6C 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000084 0x80BCEC70 AFB10018 */ sw	$s1, 0X18($sp)
/* 000085 0x80BCEC74 AFB00014 */ sw	$s0, 0X14($sp)
/* 000086 0x80BCEC78 00808025 */ move	$s0, $a0
/* 000087 0x80BCEC7C 00A08825 */ move	$s1, $a1
/* 000088 0x80BCEC80 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000089 0x80BCEC84 02202025 */ move	$a0, $s1
/* 000090 0x80BCEC88 0C03B8A7 */ jal	func_800EE29C
/* 000091 0x80BCEC8C 240501E0 */ li	$a1, 480
/* 000092 0x80BCEC90 10400022 */ beqz	$v0, .L_80BCED1C
/* 000093 0x80BCEC94 02202025 */ move	$a0, $s1
/* 000094 0x80BCEC98 0C03B880 */ jal	func_800EE200
/* 000095 0x80BCEC9C 240501E0 */ li	$a1, 480
/* 000096 0x80BCECA0 02002025 */ move	$a0, $s0
/* 000097 0x80BCECA4 02202825 */ move	$a1, $s1
/* 000098 0x80BCECA8 0C03B7C9 */ jal	func_800EDF24
/* 000099 0x80BCECAC 00403025 */ move	$a2, $v0
/* 000100 0x80BCECB0 02202025 */ move	$a0, $s1
/* 000101 0x80BCECB4 0C03B880 */ jal	func_800EE200
/* 000102 0x80BCECB8 240501E0 */ li	$a1, 480
/* 000103 0x80BCECBC 00027080 */ sll	$t6, $v0, 2
/* 000104 0x80BCECC0 022E7821 */ addu	$t7, $s1, $t6
/* 000105 0x80BCECC4 8DF81F4C */ lw	$t8, 0X1F4C($t7)
/* 000106 0x80BCECC8 24010002 */ li	$at, 2
/* 000107 0x80BCECCC 3C0880BD */ lui	$t0, %hi(func_80BCEBC0)
/* 000108 0x80BCECD0 97190000 */ lhu	$t9, 0X0($t8)
/* 000109 0x80BCECD4 3C0980BD */ lui	$t1, %hi(func_80BCEF0C)
/* 000110 0x80BCECD8 2508EBC0 */ addiu	$t0, $t0, %lo(func_80BCEBC0)
/* 000111 0x80BCECDC 17210010 */ bne	$t9, $at, .L_80BCED20
/* 000112 0x80BCECE0 2529EF0C */ addiu	$t1, $t1, %lo(func_80BCEF0C)
/* 000113 0x80BCECE4 3C0180BD */ lui	$at, %hi(D_80BCF0BC)
/* 000114 0x80BCECE8 C424F0BC */ lwc1	$f4, %lo(D_80BCF0BC)($at)
/* 000115 0x80BCECEC AE08014C */ sw	$t0, 0X14C($s0)
/* 000116 0x80BCECF0 AE09013C */ sw	$t1, 0X13C($s0)
/* 000117 0x80BCECF4 3C0180BD */ lui	$at, %hi(D_80BCF1C0)
/* 000118 0x80BCECF8 240A00FF */ li	$t2, 255
/* 000119 0x80BCECFC E6040144 */ swc1	$f4, 0X144($s0)
/* 000120 0x80BCED00 A42AF1C0 */ sh	$t2, %lo(D_80BCF1C0)($at)
/* 000121 0x80BCED04 A60000BC */ sh	$zero, 0XBC($s0)
/* 000122 0x80BCED08 02002025 */ move	$a0, $s0
/* 000123 0x80BCED0C 0C02E3B2 */ jal	func_800B8EC8
/* 000124 0x80BCED10 240528D7 */ li	$a1, 10455
/* 000125 0x80BCED14 10000003 */ b	.L_80BCED24
/* 000126 0x80BCED18 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80BCED1C:
/* 000127 0x80BCED1C AE00013C */ sw	$zero, 0X13C($s0)
.L_80BCED20:
/* 000128 0x80BCED20 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80BCED24:
/* 000129 0x80BCED24 8FB00014 */ lw	$s0, 0X14($sp)
/* 000130 0x80BCED28 8FB10018 */ lw	$s1, 0X18($sp)
/* 000131 0x80BCED2C 03E00008 */ jr	$ra
/* 000132 0x80BCED30 27BD0020 */ addiu	$sp, $sp, 32

glabel func_80BCED34
/* 000133 0x80BCED34 3C0180BD */ lui	$at, %hi(D_80BCF0C0)
/* 000134 0x80BCED38 44806000 */ mtc1	$zero, $f12
/* 000135 0x80BCED3C C422F0C0 */ lwc1	$f2, %lo(D_80BCF0C0)($at)
/* 000136 0x80BCED40 AFA50004 */ sw	$a1, 0X4($sp)
/* 000137 0x80BCED44 C4800144 */ lwc1	$f0, 0X144($a0)
/* 000138 0x80BCED48 C484005C */ lwc1	$f4, 0X5C($a0)
/* 000139 0x80BCED4C 848E00BC */ lh	$t6, 0XBC($a0)
/* 000140 0x80BCED50 46020201 */ sub.s	$f8, $f0, $f2
/* 000141 0x80BCED54 3C0380BD */ lui	$v1, %hi(D_80BCF1C0)
/* 000142 0x80BCED58 25CF008C */ addiu	$t7, $t6, 140
/* 000143 0x80BCED5C 46002180 */ add.s	$f6, $f4, $f0
/* 000144 0x80BCED60 E4880144 */ swc1	$f8, 0X144($a0)
/* 000145 0x80BCED64 C4800144 */ lwc1	$f0, 0X144($a0)
/* 000146 0x80BCED68 A48F00BC */ sh	$t7, 0XBC($a0)
/* 000147 0x80BCED6C E486005C */ swc1	$f6, 0X5C($a0)
/* 000148 0x80BCED70 460C003C */ c.lt.s	$f0, $f12
/* 000149 0x80BCED74 2463F1C0 */ addiu	$v1, $v1, %lo(D_80BCF1C0)
/* 000150 0x80BCED78 45020006 */ bc1fl .L_80BCED94
/* 000151 0x80BCED7C 460C003C */ c.lt.s	$f0, $f12
/* 000152 0x80BCED80 C48A0058 */ lwc1	$f10, 0X58($a0)
/* 000153 0x80BCED84 C4800144 */ lwc1	$f0, 0X144($a0)
/* 000154 0x80BCED88 46025400 */ add.s	$f16, $f10, $f2
/* 000155 0x80BCED8C E4900058 */ swc1	$f16, 0X58($a0)
/* 000156 0x80BCED90 460C003C */ c.lt.s	$f0, $f12
.L_80BCED94:
/* 000157 0x80BCED94 00000000 */ nop
/* 000158 0x80BCED98 45020005 */ bc1fl .L_80BCEDB0
/* 000159 0x80BCED9C 84620000 */ lh	$v0, 0X0($v1)
/* 000160 0x80BCEDA0 44809000 */ mtc1	$zero, $f18
/* 000161 0x80BCEDA4 00000000 */ nop
/* 000162 0x80BCEDA8 E4920144 */ swc1	$f18, 0X144($a0)
/* 000163 0x80BCEDAC 84620000 */ lh	$v0, 0X0($v1)
.L_80BCEDB0:
/* 000164 0x80BCEDB0 28410004 */ slti	$at, $v0, 4
/* 000165 0x80BCEDB4 14200003 */ bnez	$at, .L_80BCEDC4
/* 000166 0x80BCEDB8 2458FFFC */ addiu	$t8, $v0, -4
/* 000167 0x80BCEDBC 03E00008 */ jr	$ra
/* 000168 0x80BCEDC0 A4780000 */ sh	$t8, 0X0($v1)
.L_80BCEDC4:
/* 000169 0x80BCEDC4 3C1980BD */ lui	$t9, %hi(func_80BCEDE0)
/* 000170 0x80BCEDC8 2739EDE0 */ addiu	$t9, $t9, %lo(func_80BCEDE0)
/* 000171 0x80BCEDCC E48C005C */ swc1	$f12, 0X5C($a0)
/* 000172 0x80BCEDD0 AC99014C */ sw	$t9, 0X14C($a0)
/* 000173 0x80BCEDD4 AC80013C */ sw	$zero, 0X13C($a0)
/* 000174 0x80BCEDD8 03E00008 */ jr	$ra
/* 000175 0x80BCEDDC 00000000 */ nop

glabel func_80BCEDE0
/* 000176 0x80BCEDE0 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000177 0x80BCEDE4 AFB10018 */ sw	$s1, 0X18($sp)
/* 000178 0x80BCEDE8 AFB00014 */ sw	$s0, 0X14($sp)
/* 000179 0x80BCEDEC 00808025 */ move	$s0, $a0
/* 000180 0x80BCEDF0 00A08825 */ move	$s1, $a1
/* 000181 0x80BCEDF4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000182 0x80BCEDF8 02202025 */ move	$a0, $s1
/* 000183 0x80BCEDFC 0C03B8A7 */ jal	func_800EE29C
/* 000184 0x80BCEE00 240501F6 */ li	$a1, 502
/* 000185 0x80BCEE04 1040001E */ beqz	$v0, .L_80BCEE80
/* 000186 0x80BCEE08 02202025 */ move	$a0, $s1
/* 000187 0x80BCEE0C 0C03B880 */ jal	func_800EE200
/* 000188 0x80BCEE10 240501F6 */ li	$a1, 502
/* 000189 0x80BCEE14 02002025 */ move	$a0, $s0
/* 000190 0x80BCEE18 02202825 */ move	$a1, $s1
/* 000191 0x80BCEE1C 0C03B7C9 */ jal	func_800EDF24
/* 000192 0x80BCEE20 00403025 */ move	$a2, $v0
/* 000193 0x80BCEE24 02202025 */ move	$a0, $s1
/* 000194 0x80BCEE28 0C03B880 */ jal	func_800EE200
/* 000195 0x80BCEE2C 240501F6 */ li	$a1, 502
/* 000196 0x80BCEE30 00027080 */ sll	$t6, $v0, 2
/* 000197 0x80BCEE34 022E7821 */ addu	$t7, $s1, $t6
/* 000198 0x80BCEE38 8DF81F4C */ lw	$t8, 0X1F4C($t7)
/* 000199 0x80BCEE3C 24010002 */ li	$at, 2
/* 000200 0x80BCEE40 3C0880BD */ lui	$t0, %hi(func_80BCED34)
/* 000201 0x80BCEE44 97190000 */ lhu	$t9, 0X0($t8)
/* 000202 0x80BCEE48 2508ED34 */ addiu	$t0, $t0, %lo(func_80BCED34)
/* 000203 0x80BCEE4C 3C0980BD */ lui	$t1, %hi(func_80BCEF0C)
/* 000204 0x80BCEE50 1721000C */ bne	$t9, $at, .L_80BCEE84
/* 000205 0x80BCEE54 3C0180BD */ lui	$at, %hi(D_80BCF0C4)
/* 000206 0x80BCEE58 C424F0C4 */ lwc1	$f4, %lo(D_80BCF0C4)($at)
/* 000207 0x80BCEE5C 3C0180BD */ lui	$at, %hi(D_80BCF0C8)
/* 000208 0x80BCEE60 2529EF0C */ addiu	$t1, $t1, %lo(func_80BCEF0C)
/* 000209 0x80BCEE64 E6040144 */ swc1	$f4, 0X144($s0)
/* 000210 0x80BCEE68 C426F0C8 */ lwc1	$f6, %lo(D_80BCF0C8)($at)
/* 000211 0x80BCEE6C AE08014C */ sw	$t0, 0X14C($s0)
/* 000212 0x80BCEE70 AE09013C */ sw	$t1, 0X13C($s0)
/* 000213 0x80BCEE74 A60000BC */ sh	$zero, 0XBC($s0)
/* 000214 0x80BCEE78 10000002 */ b	.L_80BCEE84
/* 000215 0x80BCEE7C E6060058 */ swc1	$f6, 0X58($s0)
.L_80BCEE80:
/* 000216 0x80BCEE80 AE00013C */ sw	$zero, 0X13C($s0)
.L_80BCEE84:
/* 000217 0x80BCEE84 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000218 0x80BCEE88 8FB00014 */ lw	$s0, 0X14($sp)
/* 000219 0x80BCEE8C 8FB10018 */ lw	$s1, 0X18($sp)
/* 000220 0x80BCEE90 03E00008 */ jr	$ra
/* 000221 0x80BCEE94 27BD0020 */ addiu	$sp, $sp, 32

glabel EffKamejimaWave_Update
/* 000222 0x80BCEE98 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000223 0x80BCEE9C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000224 0x80BCEEA0 8C99014C */ lw	$t9, 0X14C($a0)
/* 000225 0x80BCEEA4 0320F809 */ jalr	$t9
/* 000226 0x80BCEEA8 00000000 */ nop
/* 000227 0x80BCEEAC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000228 0x80BCEEB0 27BD0018 */ addiu	$sp, $sp, 24
/* 000229 0x80BCEEB4 03E00008 */ jr	$ra
/* 000230 0x80BCEEB8 00000000 */ nop

glabel func_80BCEEBC
/* 000231 0x80BCEEBC 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000232 0x80BCEEC0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000233 0x80BCEEC4 AFA40018 */ sw	$a0, 0X18($sp)
/* 000234 0x80BCEEC8 308500FF */ andi	$a1, $a0, 0XFF
/* 000235 0x80BCEECC 3C040600 */ lui	$a0, 0x0600
/* 000236 0x80BCEED0 24840000 */ addiu	$a0, $a0, 0
/* 000237 0x80BCEED4 0C040141 */ jal	Lib_PtrSegToVirt
/* 000238 0x80BCEED8 A3A5001B */ sb	$a1, 0X1B($sp)
/* 000239 0x80BCEEDC 93A5001B */ lbu	$a1, 0X1B($sp)
/* 000240 0x80BCEEE0 A045002F */ sb	$a1, 0X2F($v0)
/* 000241 0x80BCEEE4 A045006F */ sb	$a1, 0X6F($v0)
/* 000242 0x80BCEEE8 A045008F */ sb	$a1, 0X8F($v0)
/* 000243 0x80BCEEEC A045009F */ sb	$a1, 0X9F($v0)
/* 000244 0x80BCEEF0 A04500CF */ sb	$a1, 0XCF($v0)
/* 000245 0x80BCEEF4 A045010F */ sb	$a1, 0X10F($v0)
/* 000246 0x80BCEEF8 A045012F */ sb	$a1, 0X12F($v0)
/* 000247 0x80BCEEFC A045013F */ sb	$a1, 0X13F($v0)
/* 000248 0x80BCEF00 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000249 0x80BCEF04 03E00008 */ jr	$ra
/* 000250 0x80BCEF08 27BD0018 */ addiu	$sp, $sp, 24

glabel func_80BCEF0C
/* 000251 0x80BCEF0C 27BDFFC0 */ addiu	$sp, $sp, -64
/* 000252 0x80BCEF10 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000253 0x80BCEF14 AFB00018 */ sw	$s0, 0X18($sp)
/* 000254 0x80BCEF18 AFA40040 */ sw	$a0, 0X40($sp)
/* 000255 0x80BCEF1C AFA50044 */ sw	$a1, 0X44($sp)
/* 000256 0x80BCEF20 3C0480BD */ lui	$a0, %hi(D_80BCF090)
/* 000257 0x80BCEF24 2484F090 */ addiu	$a0, $a0, %lo(D_80BCF090)
/* 000258 0x80BCEF28 0C03F9EA */ jal	func_800FE7A8
/* 000259 0x80BCEF2C 27A5003C */ addiu	$a1, $sp, 60
/* 000260 0x80BCEF30 3C0480BD */ lui	$a0, %hi(D_80BCF0A0)
/* 000261 0x80BCEF34 2484F0A0 */ addiu	$a0, $a0, %lo(D_80BCF0A0)
/* 000262 0x80BCEF38 0C03F9EA */ jal	func_800FE7A8
/* 000263 0x80BCEF3C 27A50038 */ addiu	$a1, $sp, 56
/* 000264 0x80BCEF40 3C0480BD */ lui	$a0, %hi(D_80BCF1C1)
/* 000265 0x80BCEF44 0C2F3BAF */ jal	func_80BCEEBC
/* 000266 0x80BCEF48 9084F1C1 */ lbu	$a0, %lo(D_80BCF1C1)($a0)
/* 000267 0x80BCEF4C 8FAE0044 */ lw	$t6, 0X44($sp)
/* 000268 0x80BCEF50 8DC40000 */ lw	$a0, 0X0($t6)
/* 000269 0x80BCEF54 0C04B0B7 */ jal	func_8012C2DC
/* 000270 0x80BCEF58 00808025 */ move	$s0, $a0
/* 000271 0x80BCEF5C 3C0140A0 */ lui	$at, 0x40A0
/* 000272 0x80BCEF60 44817000 */ mtc1	$at, $f14
/* 000273 0x80BCEF64 3C0140C0 */ lui	$at, 0x40C0
/* 000274 0x80BCEF68 44816000 */ mtc1	$at, $f12
/* 000275 0x80BCEF6C 44067000 */ mfc1	$a2, $f14
/* 000276 0x80BCEF70 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000277 0x80BCEF74 24070001 */ li	$a3, 1
/* 000278 0x80BCEF78 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000279 0x80BCEF7C 3C18DA38 */ lui	$t8, 0xDA38
/* 000280 0x80BCEF80 37180003 */ ori	$t8, $t8, 0X3
/* 000281 0x80BCEF84 244F0008 */ addiu	$t7, $v0, 8
/* 000282 0x80BCEF88 AE0F02C0 */ sw	$t7, 0X2C0($s0)
/* 000283 0x80BCEF8C AC580000 */ sw	$t8, 0X0($v0)
/* 000284 0x80BCEF90 8FB90044 */ lw	$t9, 0X44($sp)
/* 000285 0x80BCEF94 8F240000 */ lw	$a0, 0X0($t9)
/* 000286 0x80BCEF98 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000287 0x80BCEF9C AFA2002C */ sw	$v0, 0X2C($sp)
/* 000288 0x80BCEFA0 8FA3002C */ lw	$v1, 0X2C($sp)
/* 000289 0x80BCEFA4 3C0580BD */ lui	$a1, %hi(D_80BCF1C4)
/* 000290 0x80BCEFA8 AC620004 */ sw	$v0, 0X4($v1)
/* 000291 0x80BCEFAC 8FA40044 */ lw	$a0, 0X44($sp)
/* 000292 0x80BCEFB0 0C04C5D6 */ jal	SceneProc_DrawAllSceneAnimatedTextures
/* 000293 0x80BCEFB4 8CA5F1C4 */ lw	$a1, %lo(D_80BCF1C4)($a1)
/* 000294 0x80BCEFB8 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000295 0x80BCEFBC 3C09FA00 */ lui	$t1, 0xFA00
/* 000296 0x80BCEFC0 35290080 */ ori	$t1, $t1, 0X80
/* 000297 0x80BCEFC4 24480008 */ addiu	$t0, $v0, 8
/* 000298 0x80BCEFC8 AE0802C0 */ sw	$t0, 0X2C0($s0)
/* 000299 0x80BCEFCC AC490000 */ sw	$t1, 0X0($v0)
/* 000300 0x80BCEFD0 93AE003D */ lbu	$t6, 0X3D($sp)
/* 000301 0x80BCEFD4 93AB003C */ lbu	$t3, 0X3C($sp)
/* 000302 0x80BCEFD8 93A8003E */ lbu	$t0, 0X3E($sp)
/* 000303 0x80BCEFDC 000E7C00 */ sll	$t7, $t6, 16
/* 000304 0x80BCEFE0 000B6600 */ sll	$t4, $t3, 24
/* 000305 0x80BCEFE4 018FC025 */ or	$t8, $t4, $t7
/* 000306 0x80BCEFE8 00084A00 */ sll	$t1, $t0, 8
/* 000307 0x80BCEFEC 03095025 */ or	$t2, $t8, $t1
/* 000308 0x80BCEFF0 354B00FF */ ori	$t3, $t2, 0XFF
/* 000309 0x80BCEFF4 AC4B0004 */ sw	$t3, 0X4($v0)
/* 000310 0x80BCEFF8 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000311 0x80BCEFFC 3C0EFB00 */ lui	$t6, 0xFB00
/* 000312 0x80BCF000 244D0008 */ addiu	$t5, $v0, 8
/* 000313 0x80BCF004 AE0D02C0 */ sw	$t5, 0X2C0($s0)
/* 000314 0x80BCF008 AC4E0000 */ sw	$t6, 0X0($v0)
/* 000315 0x80BCF00C 93B80039 */ lbu	$t8, 0X39($sp)
/* 000316 0x80BCF010 93AF0038 */ lbu	$t7, 0X38($sp)
/* 000317 0x80BCF014 93AD003A */ lbu	$t5, 0X3A($sp)
/* 000318 0x80BCF018 00184C00 */ sll	$t1, $t8, 16
/* 000319 0x80BCF01C 000FCE00 */ sll	$t9, $t7, 24
/* 000320 0x80BCF020 03295025 */ or	$t2, $t9, $t1
/* 000321 0x80BCF024 000D7200 */ sll	$t6, $t5, 8
/* 000322 0x80BCF028 014E6025 */ or	$t4, $t2, $t6
/* 000323 0x80BCF02C 358F00FF */ ori	$t7, $t4, 0XFF
/* 000324 0x80BCF030 AC4F0004 */ sw	$t7, 0X4($v0)
/* 000325 0x80BCF034 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000326 0x80BCF038 3C190600 */ lui	$t9, 0x0600
/* 000327 0x80BCF03C 27390140 */ addiu	$t9, $t9, 320
/* 000328 0x80BCF040 24480008 */ addiu	$t0, $v0, 8
/* 000329 0x80BCF044 AE0802C0 */ sw	$t0, 0X2C0($s0)
/* 000330 0x80BCF048 3C18DE00 */ lui	$t8, 0xDE00
/* 000331 0x80BCF04C AC580000 */ sw	$t8, 0X0($v0)
/* 000332 0x80BCF050 AC590004 */ sw	$t9, 0X4($v0)
/* 000333 0x80BCF054 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000334 0x80BCF058 8FB00018 */ lw	$s0, 0X18($sp)
/* 000335 0x80BCF05C 27BD0040 */ addiu	$sp, $sp, 64
/* 000336 0x80BCF060 03E00008 */ jr	$ra
/* 000337 0x80BCF064 00000000 */ nop
/* 000338 0x80BCF068 00000000 */ nop
/* 000339 0x80BCF06C 00000000 */ nop
