.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel EnOnpuman_Init
/* 000000 0x80B11E60 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000001 0x80B11E64 AFB00018 */ sw	$s0, 0X18($sp)
/* 000002 0x80B11E68 00808025 */ move	$s0, $a0
/* 000003 0x80B11E6C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000004 0x80B11E70 AFA50024 */ sw	$a1, 0X24($sp)
/* 000005 0x80B11E74 3C06800B */ lui	$a2, %hi(func_800B3FC0)
/* 000006 0x80B11E78 24C63FC0 */ addiu	$a2, $a2, %lo(func_800B3FC0)
/* 000007 0x80B11E7C 260400BC */ addiu	$a0, $s0, 188
/* 000008 0x80B11E80 24050000 */ li	$a1, 0
/* 000009 0x80B11E84 0C02CEE9 */ jal	Actor_SetDrawParams
/* 000010 0x80B11E88 3C074210 */ lui	$a3, 0x4210
/* 000011 0x80B11E8C 8E0E0004 */ lw	$t6, 0X4($s0)
/* 000012 0x80B11E90 3C010200 */ lui	$at, 0x0200
/* 000013 0x80B11E94 3C0780B1 */ lui	$a3, %hi(D_80B12390)
/* 000014 0x80B11E98 01C17825 */ or	$t7, $t6, $at
/* 000015 0x80B11E9C AE0F0004 */ sw	$t7, 0X4($s0)
/* 000016 0x80B11EA0 8FA40024 */ lw	$a0, 0X24($sp)
/* 000017 0x80B11EA4 24E72390 */ addiu	$a3, $a3, %lo(D_80B12390)
/* 000018 0x80B11EA8 26050254 */ addiu	$a1, $s0, 596
/* 000019 0x80B11EAC 0C0384DD */ jal	Collision_InitCylinder
/* 000020 0x80B11EB0 02003025 */ move	$a2, $s0
/* 000021 0x80B11EB4 241800FF */ li	$t8, 255
/* 000022 0x80B11EB8 3C053C23 */ lui	$a1, 0x3C23
/* 000023 0x80B11EBC A21800B6 */ sb	$t8, 0XB6($s0)
/* 000024 0x80B11EC0 34A5D70A */ ori	$a1, $a1, 0XD70A
/* 000025 0x80B11EC4 0C02D9F8 */ jal	Actor_SetScale
/* 000026 0x80B11EC8 02002025 */ move	$a0, $s0
/* 000027 0x80B11ECC 3C01C120 */ lui	$at, 0xC120
/* 000028 0x80B11ED0 44810000 */ mtc1	$at, $f0
/* 000029 0x80B11ED4 3C01C0A0 */ lui	$at, 0xC0A0
/* 000030 0x80B11ED8 44812000 */ mtc1	$at, $f4
/* 000031 0x80B11EDC 3C0880B1 */ lui	$t0, %hi(func_80B121D8)
/* 000032 0x80B11EE0 24190006 */ li	$t9, 6
/* 000033 0x80B11EE4 250821D8 */ addiu	$t0, $t0, %lo(func_80B121D8)
/* 000034 0x80B11EE8 A219001F */ sb	$t9, 0X1F($s0)
/* 000035 0x80B11EEC A60002A4 */ sh	$zero, 0X2A4($s0)
/* 000036 0x80B11EF0 AE0002A0 */ sw	$zero, 0X2A0($s0)
/* 000037 0x80B11EF4 AE0802A8 */ sw	$t0, 0X2A8($s0)
/* 000038 0x80B11EF8 E6000068 */ swc1	$f0, 0X68($s0)
/* 000039 0x80B11EFC E6000078 */ swc1	$f0, 0X78($s0)
/* 000040 0x80B11F00 E6040074 */ swc1	$f4, 0X74($s0)
/* 000041 0x80B11F04 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000042 0x80B11F08 8FB00018 */ lw	$s0, 0X18($sp)
/* 000043 0x80B11F0C 27BD0020 */ addiu	$sp, $sp, 32
/* 000044 0x80B11F10 03E00008 */ jr	$ra
/* 000045 0x80B11F14 00000000 */ nop

glabel EnOnpuman_Destroy
/* 000046 0x80B11F18 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000047 0x80B11F1C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000048 0x80B11F20 00803025 */ move	$a2, $a0
/* 000049 0x80B11F24 00A03825 */ move	$a3, $a1
/* 000050 0x80B11F28 00E02025 */ move	$a0, $a3
/* 000051 0x80B11F2C 0C03847B */ jal	Collision_FiniCylinder
/* 000052 0x80B11F30 24C50254 */ addiu	$a1, $a2, 596
/* 000053 0x80B11F34 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000054 0x80B11F38 27BD0018 */ addiu	$sp, $sp, 24
/* 000055 0x80B11F3C 03E00008 */ jr	$ra
/* 000056 0x80B11F40 00000000 */ nop

glabel func_80B11F44
/* 000057 0x80B11F44 8C831D08 */ lw	$v1, 0X1D08($a0)
/* 000058 0x80B11F48 00001025 */ move	$v0, $zero
/* 000059 0x80B11F4C 10600008 */ beqz	$v1, .L_80B11F70
/* 000060 0x80B11F50 00000000 */ nop
/* 000061 0x80B11F54 846E0000 */ lh	$t6, 0X0($v1)
/* 000062 0x80B11F58 240101D6 */ li	$at, 470
/* 000063 0x80B11F5C 11C10002 */ beq	$t6, $at, .L_80B11F68
/* 000064 0x80B11F60 00000000 */ nop
/* 000065 0x80B11F64 8C63012C */ lw	$v1, 0X12C($v1)
.L_80B11F68:
/* 000066 0x80B11F68 03E00008 */ jr	$ra
/* 000067 0x80B11F6C 00601025 */ move	$v0, $v1
.L_80B11F70:
/* 000068 0x80B11F70 03E00008 */ jr	$ra
/* 000069 0x80B11F74 00000000 */ nop

glabel func_80B11F78
/* 000070 0x80B11F78 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000071 0x80B11F7C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000072 0x80B11F80 00803025 */ move	$a2, $a0
/* 000073 0x80B11F84 3C020001 */ lui	$v0, 0x0001
/* 000074 0x80B11F88 00451021 */ addu	$v0, $v0, $a1
/* 000075 0x80B11F8C 94426932 */ lhu	$v0, 0X6932($v0)
/* 000076 0x80B11F90 24010004 */ li	$at, 4
/* 000077 0x80B11F94 3C0E80B1 */ lui	$t6, %hi(func_80B121D8)
/* 000078 0x80B11F98 5441000B */ bnel	$v0, $at, .L_80B11FC8
/* 000079 0x80B11F9C 24010003 */ li	$at, 3
/* 000080 0x80B11FA0 80C40038 */ lb	$a0, 0X38($a2)
/* 000081 0x80B11FA4 25CE21D8 */ addiu	$t6, $t6, %lo(func_80B121D8)
/* 000082 0x80B11FA8 2401FFFF */ li	$at, -1
/* 000083 0x80B11FAC 1081001B */ beq	$a0, $at, .L_80B1201C
/* 000084 0x80B11FB0 ACCE02A8 */ sw	$t6, 0X2A8($a2)
/* 000085 0x80B11FB4 0C03C7EF */ jal	ActorCutscene_Stop
/* 000086 0x80B11FB8 00000000 */ nop
/* 000087 0x80B11FBC 10000018 */ b	.L_80B12020
/* 000088 0x80B11FC0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000089 0x80B11FC4 24010003 */ li	$at, 3
.L_80B11FC8:
/* 000090 0x80B11FC8 14410014 */ bne	$v0, $at, .L_80B1201C
/* 000091 0x80B11FCC 24044802 */ li	$a0, 18434
/* 000092 0x80B11FD0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000093 0x80B11FD4 0C067C32 */ jal	play_sound
/* 000094 0x80B11FD8 AFA60018 */ sw	$a2, 0X18($sp)
/* 000095 0x80B11FDC 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000096 0x80B11FE0 8FA60018 */ lw	$a2, 0X18($sp)
/* 000097 0x80B11FE4 3C010001 */ lui	$at, 0x0001
/* 000098 0x80B11FE8 240F0004 */ li	$t7, 4
/* 000099 0x80B11FEC 00250821 */ addu	$at, $at, $a1
/* 000100 0x80B11FF0 A42F6932 */ sh	$t7, 0X6932($at)
/* 000101 0x80B11FF4 80C40038 */ lb	$a0, 0X38($a2)
/* 000102 0x80B11FF8 2401FFFF */ li	$at, -1
/* 000103 0x80B11FFC 10810004 */ beq	$a0, $at, .L_80B12010
/* 000104 0x80B12000 00000000 */ nop
/* 000105 0x80B12004 0C03C7EF */ jal	ActorCutscene_Stop
/* 000106 0x80B12008 AFA60018 */ sw	$a2, 0X18($sp)
/* 000107 0x80B1200C 8FA60018 */ lw	$a2, 0X18($sp)
.L_80B12010:
/* 000108 0x80B12010 3C1880B1 */ lui	$t8, %hi(func_80B121D8)
/* 000109 0x80B12014 271821D8 */ addiu	$t8, $t8, %lo(func_80B121D8)
/* 000110 0x80B12018 ACD802A8 */ sw	$t8, 0X2A8($a2)
.L_80B1201C:
/* 000111 0x80B1201C 8FBF0014 */ lw	$ra, 0X14($sp)
.L_80B12020:
/* 000112 0x80B12020 27BD0018 */ addiu	$sp, $sp, 24
/* 000113 0x80B12024 03E00008 */ jr	$ra
/* 000114 0x80B12028 00000000 */ nop

glabel func_80B1202C
/* 000115 0x80B1202C 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000116 0x80B12030 AFB00018 */ sw	$s0, 0X18($sp)
/* 000117 0x80B12034 00808025 */ move	$s0, $a0
/* 000118 0x80B12038 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000119 0x80B1203C 00A03025 */ move	$a2, $a1
/* 000120 0x80B12040 24C44908 */ addiu	$a0, $a2, 18696
/* 000121 0x80B12044 0C054926 */ jal	func_80152498
/* 000122 0x80B12048 AFA60024 */ sw	$a2, 0X24($sp)
/* 000123 0x80B1204C 24010005 */ li	$at, 5
/* 000124 0x80B12050 1441002C */ bne	$v0, $at, .L_80B12104
/* 000125 0x80B12054 8FA60024 */ lw	$a2, 0X24($sp)
/* 000126 0x80B12058 00C02025 */ move	$a0, $a2
/* 000127 0x80B1205C 0C051D89 */ jal	func_80147624
/* 000128 0x80B12060 AFA60024 */ sw	$a2, 0X24($sp)
/* 000129 0x80B12064 10400027 */ beqz	$v0, .L_80B12104
/* 000130 0x80B12068 8FA60024 */ lw	$a2, 0X24($sp)
/* 000131 0x80B1206C 3C020001 */ lui	$v0, 0x0001
/* 000132 0x80B12070 00461021 */ addu	$v0, $v0, $a2
/* 000133 0x80B12074 9442680C */ lhu	$v0, 0X680C($v0)
/* 000134 0x80B12078 240108D4 */ li	$at, 2260
/* 000135 0x80B1207C 10410008 */ beq	$v0, $at, .L_80B120A0
/* 000136 0x80B12080 240108D6 */ li	$at, 2262
/* 000137 0x80B12084 10410016 */ beq	$v0, $at, .L_80B120E0
/* 000138 0x80B12088 3C1980B1 */ lui	$t9, %hi(func_80B11F78)
/* 000139 0x80B1208C 240108DA */ li	$at, 2266
/* 000140 0x80B12090 1041000B */ beq	$v0, $at, .L_80B120C0
/* 000141 0x80B12094 00C02025 */ move	$a0, $a2
/* 000142 0x80B12098 1000001B */ b	.L_80B12108
/* 000143 0x80B1209C 960202A4 */ lhu	$v0, 0X2A4($s0)
.L_80B120A0:
/* 000144 0x80B120A0 960E02A4 */ lhu	$t6, 0X2A4($s0)
/* 000145 0x80B120A4 00C02025 */ move	$a0, $a2
/* 000146 0x80B120A8 240508DA */ li	$a1, 2266
/* 000147 0x80B120AC 35CF0001 */ ori	$t7, $t6, 0X1
/* 000148 0x80B120B0 0C05464E */ jal	func_80151938
/* 000149 0x80B120B4 A60F02A4 */ sh	$t7, 0X2A4($s0)
/* 000150 0x80B120B8 10000013 */ b	.L_80B12108
/* 000151 0x80B120BC 960202A4 */ lhu	$v0, 0X2A4($s0)
.L_80B120C0:
/* 000152 0x80B120C0 0C05464E */ jal	func_80151938
/* 000153 0x80B120C4 240508D6 */ li	$a1, 2262
/* 000154 0x80B120C8 8E0202A0 */ lw	$v0, 0X2A0($s0)
/* 000155 0x80B120CC 24180050 */ li	$t8, 80
/* 000156 0x80B120D0 5040000D */ beqzl	$v0, .L_80B12108
/* 000157 0x80B120D4 960202A4 */ lhu	$v0, 0X2A4($s0)
/* 000158 0x80B120D8 1000000A */ b	.L_80B12104
/* 000159 0x80B120DC A4580014 */ sh	$t8, 0X14($v0)
.L_80B120E0:
/* 000160 0x80B120E0 27391F78 */ addiu	$t9, $t9, %lo(func_80B11F78)
/* 000161 0x80B120E4 AE1902A8 */ sw	$t9, 0X2A8($s0)
/* 000162 0x80B120E8 00C02025 */ move	$a0, $a2
/* 000163 0x80B120EC 0C05490D */ jal	func_80152434
/* 000164 0x80B120F0 2405003A */ li	$a1, 58
/* 000165 0x80B120F4 8E0202A0 */ lw	$v0, 0X2A0($s0)
/* 000166 0x80B120F8 50400003 */ beqzl	$v0, .L_80B12108
/* 000167 0x80B120FC 960202A4 */ lhu	$v0, 0X2A4($s0)
/* 000168 0x80B12100 A4400014 */ sh	$zero, 0X14($v0)
.L_80B12104:
/* 000169 0x80B12104 960202A4 */ lhu	$v0, 0X2A4($s0)
.L_80B12108:
/* 000170 0x80B12108 30480001 */ andi	$t0, $v0, 0X1
/* 000171 0x80B1210C 51000017 */ beqzl	$t0, .L_80B1216C
/* 000172 0x80B12110 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000173 0x80B12114 82040038 */ lb	$a0, 0X38($s0)
/* 000174 0x80B12118 2401FFFF */ li	$at, -1
/* 000175 0x80B1211C 3049FFFE */ andi	$t1, $v0, 0XFFFE
/* 000176 0x80B12120 14810003 */ bne	$a0, $at, .L_80B12130
/* 000177 0x80B12124 00000000 */ nop
/* 000178 0x80B12128 1000000F */ b	.L_80B12168
/* 000179 0x80B1212C A60902A4 */ sh	$t1, 0X2A4($s0)
.L_80B12130:
/* 000180 0x80B12130 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000181 0x80B12134 00000000 */ nop
/* 000182 0x80B12138 10400009 */ beqz	$v0, .L_80B12160
/* 000183 0x80B1213C 00000000 */ nop
/* 000184 0x80B12140 960A02A4 */ lhu	$t2, 0X2A4($s0)
/* 000185 0x80B12144 82040038 */ lb	$a0, 0X38($s0)
/* 000186 0x80B12148 02002825 */ move	$a1, $s0
/* 000187 0x80B1214C 314BFFFE */ andi	$t3, $t2, 0XFFFE
/* 000188 0x80B12150 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000189 0x80B12154 A60B02A4 */ sh	$t3, 0X2A4($s0)
/* 000190 0x80B12158 10000004 */ b	.L_80B1216C
/* 000191 0x80B1215C 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80B12160:
/* 000192 0x80B12160 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000193 0x80B12164 82040038 */ lb	$a0, 0X38($s0)
.L_80B12168:
/* 000194 0x80B12168 8FBF001C */ lw	$ra, 0X1C($sp)
.L_80B1216C:
/* 000195 0x80B1216C 8FB00018 */ lw	$s0, 0X18($sp)
/* 000196 0x80B12170 27BD0020 */ addiu	$sp, $sp, 32
/* 000197 0x80B12174 03E00008 */ jr	$ra
/* 000198 0x80B12178 00000000 */ nop

glabel func_80B1217C
/* 000199 0x80B1217C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000200 0x80B12180 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000201 0x80B12184 AFA40018 */ sw	$a0, 0X18($sp)
/* 000202 0x80B12188 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000203 0x80B1218C 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000204 0x80B12190 0C054926 */ jal	func_80152498
/* 000205 0x80B12194 24844908 */ addiu	$a0, $a0, 18696
/* 000206 0x80B12198 24010005 */ li	$at, 5
/* 000207 0x80B1219C 5441000B */ bnel	$v0, $at, .L_80B121CC
/* 000208 0x80B121A0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000209 0x80B121A4 0C051D89 */ jal	func_80147624
/* 000210 0x80B121A8 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000211 0x80B121AC 10400006 */ beqz	$v0, .L_80B121C8
/* 000212 0x80B121B0 8FAF0018 */ lw	$t7, 0X18($sp)
/* 000213 0x80B121B4 3C0E80B1 */ lui	$t6, %hi(func_80B121D8)
/* 000214 0x80B121B8 25CE21D8 */ addiu	$t6, $t6, %lo(func_80B121D8)
/* 000215 0x80B121BC ADEE02A8 */ sw	$t6, 0X2A8($t7)
/* 000216 0x80B121C0 0C051DED */ jal	func_801477B4
/* 000217 0x80B121C4 8FA4001C */ lw	$a0, 0X1C($sp)
.L_80B121C8:
/* 000218 0x80B121C8 8FBF0014 */ lw	$ra, 0X14($sp)
.L_80B121CC:
/* 000219 0x80B121CC 27BD0018 */ addiu	$sp, $sp, 24
/* 000220 0x80B121D0 03E00008 */ jr	$ra
/* 000221 0x80B121D4 00000000 */ nop

glabel func_80B121D8
/* 000222 0x80B121D8 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000223 0x80B121DC AFB10018 */ sw	$s1, 0X18($sp)
/* 000224 0x80B121E0 AFB00014 */ sw	$s0, 0X14($sp)
/* 000225 0x80B121E4 00808025 */ move	$s0, $a0
/* 000226 0x80B121E8 00A08825 */ move	$s1, $a1
/* 000227 0x80B121EC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000228 0x80B121F0 02002025 */ move	$a0, $s0
/* 000229 0x80B121F4 0C02E1C6 */ jal	func_800B8718
/* 000230 0x80B121F8 02202825 */ move	$a1, $s1
/* 000231 0x80B121FC 1040000C */ beqz	$v0, .L_80B12230
/* 000232 0x80B12200 02002025 */ move	$a0, $s0
/* 000233 0x80B12204 3C0E80B1 */ lui	$t6, %hi(func_80B1202C)
/* 000234 0x80B12208 25CE202C */ addiu	$t6, $t6, %lo(func_80B1202C)
/* 000235 0x80B1220C AE0E02A8 */ sw	$t6, 0X2A8($s0)
/* 000236 0x80B12210 02202025 */ move	$a0, $s1
/* 000237 0x80B12214 240508D4 */ li	$a1, 2260
/* 000238 0x80B12218 0C05462C */ jal	func_801518B0
/* 000239 0x80B1221C 00003025 */ move	$a2, $zero
/* 000240 0x80B12220 0C2C47D1 */ jal	func_80B11F44
/* 000241 0x80B12224 02202025 */ move	$a0, $s1
/* 000242 0x80B12228 10000026 */ b	.L_80B122C4
/* 000243 0x80B1222C AE0202A0 */ sw	$v0, 0X2A0($s0)
.L_80B12230:
/* 000244 0x80B12230 0C02E134 */ jal	func_800B84D0
/* 000245 0x80B12234 02202825 */ move	$a1, $s1
/* 000246 0x80B12238 10400005 */ beqz	$v0, .L_80B12250
/* 000247 0x80B1223C 3C014348 */ lui	$at, 0x4348
/* 000248 0x80B12240 3C0F80B1 */ lui	$t7, %hi(func_80B1217C)
/* 000249 0x80B12244 25EF217C */ addiu	$t7, $t7, %lo(func_80B1217C)
/* 000250 0x80B12248 1000001E */ b	.L_80B122C4
/* 000251 0x80B1224C AE0F02A8 */ sw	$t7, 0X2A8($s0)
.L_80B12250:
/* 000252 0x80B12250 C6040098 */ lwc1	$f4, 0X98($s0)
/* 000253 0x80B12254 44813000 */ mtc1	$at, $f6
/* 000254 0x80B12258 86180092 */ lh	$t8, 0X92($s0)
/* 000255 0x80B1225C 861900BE */ lh	$t9, 0XBE($s0)
/* 000256 0x80B12260 4606203C */ c.lt.s	$f4, $f6
/* 000257 0x80B12264 03191023 */ subu	$v0, $t8, $t9
/* 000258 0x80B12268 00021400 */ sll	$v0, $v0, 16
/* 000259 0x80B1226C 45000015 */ bc1f .L_80B122C4
/* 000260 0x80B12270 00021403 */ sra	$v0, $v0, 16
/* 000261 0x80B12274 04410003 */ bgez	$v0, .L_80B12284
/* 000262 0x80B12278 00401825 */ move	$v1, $v0
/* 000263 0x80B1227C 10000001 */ b	.L_80B12284
/* 000264 0x80B12280 00021823 */ negu	$v1, $v0
.L_80B12284:
/* 000265 0x80B12284 28614301 */ slti	$at, $v1, 17153
/* 000266 0x80B12288 1020000E */ beqz	$at, .L_80B122C4
/* 000267 0x80B1228C 240808D3 */ li	$t0, 2259
/* 000268 0x80B12290 A6080116 */ sh	$t0, 0X116($s0)
/* 000269 0x80B12294 02002025 */ move	$a0, $s0
/* 000270 0x80B12298 02202825 */ move	$a1, $s1
/* 000271 0x80B1229C 0C02E185 */ jal	func_800B8614
/* 000272 0x80B122A0 3C0642C8 */ lui	$a2, 0x42C8
/* 000273 0x80B122A4 3C0142C8 */ lui	$at, 0x42C8
/* 000274 0x80B122A8 44810000 */ mtc1	$at, $f0
/* 000275 0x80B122AC 02002025 */ move	$a0, $s0
/* 000276 0x80B122B0 02202825 */ move	$a1, $s1
/* 000277 0x80B122B4 44060000 */ mfc1	$a2, $f0
/* 000278 0x80B122B8 44070000 */ mfc1	$a3, $f0
/* 000279 0x80B122BC 0C02E1D3 */ jal	func_800B874C
/* 000280 0x80B122C0 00000000 */ nop
.L_80B122C4:
/* 000281 0x80B122C4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000282 0x80B122C8 8FB00014 */ lw	$s0, 0X14($sp)
/* 000283 0x80B122CC 8FB10018 */ lw	$s1, 0X18($sp)
/* 000284 0x80B122D0 03E00008 */ jr	$ra
/* 000285 0x80B122D4 27BD0020 */ addiu	$sp, $sp, 32

glabel EnOnpuman_Update
/* 000286 0x80B122D8 27BDFFC8 */ addiu	$sp, $sp, -56
/* 000287 0x80B122DC AFB00020 */ sw	$s0, 0X20($sp)
/* 000288 0x80B122E0 00808025 */ move	$s0, $a0
/* 000289 0x80B122E4 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000290 0x80B122E8 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000291 0x80B122EC 26060254 */ addiu	$a2, $s0, 596
/* 000292 0x80B122F0 00C02825 */ move	$a1, $a2
/* 000293 0x80B122F4 AFA6002C */ sw	$a2, 0X2C($sp)
/* 000294 0x80B122F8 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000295 0x80B122FC 02002025 */ move	$a0, $s0
/* 000296 0x80B12300 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000297 0x80B12304 3C010001 */ lui	$at, 0x0001
/* 000298 0x80B12308 34218884 */ ori	$at, $at, 0X8884
/* 000299 0x80B1230C 8FA6002C */ lw	$a2, 0X2C($sp)
/* 000300 0x80B12310 0C038A4A */ jal	Collision_AddOT
/* 000301 0x80B12314 00812821 */ addu	$a1, $a0, $at
/* 000302 0x80B12318 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 000303 0x80B1231C 02002025 */ move	$a0, $s0
/* 000304 0x80B12320 44800000 */ mtc1	$zero, $f0
/* 000305 0x80B12324 240E0004 */ li	$t6, 4
/* 000306 0x80B12328 AFAE0014 */ sw	$t6, 0X14($sp)
/* 000307 0x80B1232C 44060000 */ mfc1	$a2, $f0
/* 000308 0x80B12330 44070000 */ mfc1	$a3, $f0
/* 000309 0x80B12334 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000310 0x80B12338 02002825 */ move	$a1, $s0
/* 000311 0x80B1233C 0C02DE2E */ jal	func_800B78B8
/* 000312 0x80B12340 E7A00010 */ swc1	$f0, 0X10($sp)
/* 000313 0x80B12344 8E1902A8 */ lw	$t9, 0X2A8($s0)
/* 000314 0x80B12348 02002025 */ move	$a0, $s0
/* 000315 0x80B1234C 8FA5003C */ lw	$a1, 0X3C($sp)
/* 000316 0x80B12350 0320F809 */ jalr	$t9
/* 000317 0x80B12354 00000000 */ nop
/* 000318 0x80B12358 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000319 0x80B1235C 8FB00020 */ lw	$s0, 0X20($sp)
/* 000320 0x80B12360 27BD0038 */ addiu	$sp, $sp, 56
/* 000321 0x80B12364 03E00008 */ jr	$ra
/* 000322 0x80B12368 00000000 */ nop
/* 000323 0x80B1236C 00000000 */ nop
