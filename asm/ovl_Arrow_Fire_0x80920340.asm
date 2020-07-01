.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel FireArrow_SetUpdateFunc
/* 000000 0x80920340 AC850258 */ sw	$a1, 0X258($a0)
/* 000001 0x80920344 03E00008 */ jr	$ra
/* 000002 0x80920348 00000000 */ nop

glabel ArrowFire_Init
/* 000003 0x8092034C 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000004 0x80920350 AFB00018 */ sw	$s0, 0X18($sp)
/* 000005 0x80920354 00808025 */ move	$s0, $a0
/* 000006 0x80920358 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000007 0x8092035C AFA50024 */ sw	$a1, 0X24($sp)
/* 000008 0x80920360 3C058092 */ lui	$a1, %hi(fireArrowActorInitVars)
/* 000009 0x80920364 24A52280 */ addiu	$a1, $a1, %lo(fireArrowActorInitVars)
/* 000010 0x80920368 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000011 0x8092036C 02002025 */ move	$a0, $s0
/* 000012 0x80920370 3C013F80 */ lui	$at, 0x3F80
/* 000013 0x80920374 44812000 */ mtc1	$at, $f4
/* 000014 0x80920378 3C058092 */ lui	$a1, %hi(FireArrow_Update1)
/* 000015 0x8092037C A600025C */ sh	$zero, 0X25C($s0)
/* 000016 0x80920380 24A50440 */ addiu	$a1, $a1, %lo(FireArrow_Update1)
/* 000017 0x80920384 02002025 */ move	$a0, $s0
/* 000018 0x80920388 0C2480D0 */ jal	FireArrow_SetUpdateFunc
/* 000019 0x8092038C E6040250 */ swc1	$f4, 0X250($s0)
/* 000020 0x80920390 3C053C23 */ lui	$a1, 0x3C23
/* 000021 0x80920394 34A5D70A */ ori	$a1, $a1, 0XD70A
/* 000022 0x80920398 0C02D9F8 */ jal	Actor_SetScale
/* 000023 0x8092039C 02002025 */ move	$a0, $s0
/* 000024 0x809203A0 44803000 */ mtc1	$zero, $f6
/* 000025 0x809203A4 240E00A0 */ li	$t6, 160
/* 000026 0x809203A8 A20E0260 */ sb	$t6, 0X260($s0)
/* 000027 0x809203AC A600025E */ sh	$zero, 0X25E($s0)
/* 000028 0x809203B0 3C078092 */ lui	$a3, %hi(D_80922230)
/* 000029 0x809203B4 E6060254 */ swc1	$f6, 0X254($s0)
/* 000030 0x809203B8 8FA40024 */ lw	$a0, 0X24($sp)
/* 000031 0x809203BC 24E72230 */ addiu	$a3, $a3, %lo(D_80922230)
/* 000032 0x809203C0 26050144 */ addiu	$a1, $s0, 324
/* 000033 0x809203C4 0C0387E2 */ jal	Collision_InitQuad
/* 000034 0x809203C8 02003025 */ move	$a2, $s0
/* 000035 0x809203CC 3C078092 */ lui	$a3, %hi(D_80922230)
/* 000036 0x809203D0 24E72230 */ addiu	$a3, $a3, %lo(D_80922230)
/* 000037 0x809203D4 8FA40024 */ lw	$a0, 0X24($sp)
/* 000038 0x809203D8 260501C4 */ addiu	$a1, $s0, 452
/* 000039 0x809203DC 0C0387E2 */ jal	Collision_InitQuad
/* 000040 0x809203E0 02003025 */ move	$a2, $s0
/* 000041 0x809203E4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000042 0x809203E8 8FB00018 */ lw	$s0, 0X18($sp)
/* 000043 0x809203EC 27BD0020 */ addiu	$sp, $sp, 32
/* 000044 0x809203F0 03E00008 */ jr	$ra
/* 000045 0x809203F4 00000000 */ nop

glabel ArrowFire_Destroy
/* 000046 0x809203F8 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000047 0x809203FC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000048 0x80920400 AFA40018 */ sw	$a0, 0X18($sp)
/* 000049 0x80920404 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000050 0x80920408 0C045757 */ jal	func_80115D5C
/* 000051 0x8092040C 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000052 0x80920410 8FA50018 */ lw	$a1, 0X18($sp)
/* 000053 0x80920414 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000054 0x80920418 0C03879A */ jal	Collision_FiniQuad
/* 000055 0x8092041C 24A50144 */ addiu	$a1, $a1, 324
/* 000056 0x80920420 8FA50018 */ lw	$a1, 0X18($sp)
/* 000057 0x80920424 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000058 0x80920428 0C03879A */ jal	Collision_FiniQuad
/* 000059 0x8092042C 24A501C4 */ addiu	$a1, $a1, 452
/* 000060 0x80920430 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000061 0x80920434 27BD0018 */ addiu	$sp, $sp, 24
/* 000062 0x80920438 03E00008 */ jr	$ra
/* 000063 0x8092043C 00000000 */ nop

glabel FireArrow_Update1
/* 000064 0x80920440 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000065 0x80920444 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000066 0x80920448 AFA50024 */ sw	$a1, 0X24($sp)
/* 000067 0x8092044C 8C820120 */ lw	$v0, 0X120($a0)
/* 000068 0x80920450 10400004 */ beqz	$v0, .L_80920464
/* 000069 0x80920454 00000000 */ nop
/* 000070 0x80920458 8C4E0138 */ lw	$t6, 0X138($v0)
/* 000071 0x8092045C 55C00006 */ bnezl	$t6, .L_80920478
/* 000072 0x80920460 8483025C */ lh	$v1, 0X25C($a0)
.L_80920464:
/* 000073 0x80920464 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000074 0x80920468 00000000 */ nop
/* 000075 0x8092046C 1000002E */ b	.L_80920528
/* 000076 0x80920470 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000077 0x80920474 8483025C */ lh	$v1, 0X25C($a0)
.L_80920478:
/* 000078 0x80920478 2861000A */ slti	$at, $v1, 10
/* 000079 0x8092047C 10200002 */ beqz	$at, .L_80920488
/* 000080 0x80920480 246F0001 */ addiu	$t7, $v1, 1
/* 000081 0x80920484 A48F025C */ sh	$t7, 0X25C($a0)
.L_80920488:
/* 000082 0x80920488 8C590024 */ lw	$t9, 0X24($v0)
/* 000083 0x8092048C 24830024 */ addiu	$v1, $a0, 36
/* 000084 0x80920490 2405007D */ li	$a1, 125
/* 000085 0x80920494 AC790000 */ sw	$t9, 0X0($v1)
/* 000086 0x80920498 8C580028 */ lw	$t8, 0X28($v0)
/* 000087 0x8092049C AC780004 */ sw	$t8, 0X4($v1)
/* 000088 0x809204A0 8C59002C */ lw	$t9, 0X2C($v0)
/* 000089 0x809204A4 AC790008 */ sw	$t9, 0X8($v1)
/* 000090 0x809204A8 884900BC */ lwl	$t1, 0XBC($v0)
/* 000091 0x809204AC 984900BF */ lwr	$t1, 0XBF($v0)
/* 000092 0x809204B0 A88900BC */ swl	$t1, 0XBC($a0)
/* 000093 0x809204B4 B88900BF */ swr	$t1, 0XBF($a0)
/* 000094 0x809204B8 944900C0 */ lhu	$t1, 0XC0($v0)
/* 000095 0x809204BC A48900C0 */ sh	$t1, 0XC0($a0)
/* 000096 0x809204C0 AFA40020 */ sw	$a0, 0X20($sp)
/* 000097 0x809204C4 AFA30018 */ sw	$v1, 0X18($sp)
/* 000098 0x809204C8 0C02E404 */ jal	func_800B9010
/* 000099 0x809204CC AFA2001C */ sw	$v0, 0X1C($sp)
/* 000100 0x809204D0 8FA2001C */ lw	$v0, 0X1C($sp)
/* 000101 0x809204D4 8FA30018 */ lw	$v1, 0X18($sp)
/* 000102 0x809204D8 8FA40020 */ lw	$a0, 0X20($sp)
/* 000103 0x809204DC 8C4A0120 */ lw	$t2, 0X120($v0)
/* 000104 0x809204E0 55400011 */ bnezl	$t2, .L_80920528
/* 000105 0x809204E4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000106 0x809204E8 8C6C0000 */ lw	$t4, 0X0($v1)
/* 000107 0x809204EC 240D000A */ li	$t5, 10
/* 000108 0x809204F0 3C058092 */ lui	$a1, %hi(FireArrow_Update2)
/* 000109 0x809204F4 AC8C0244 */ sw	$t4, 0X244($a0)
/* 000110 0x809204F8 8C6B0004 */ lw	$t3, 0X4($v1)
/* 000111 0x809204FC 24A507A0 */ addiu	$a1, $a1, %lo(FireArrow_Update2)
/* 000112 0x80920500 AC8B0248 */ sw	$t3, 0X248($a0)
/* 000113 0x80920504 8C6C0008 */ lw	$t4, 0X8($v1)
/* 000114 0x80920508 A48D025C */ sh	$t5, 0X25C($a0)
/* 000115 0x8092050C AC8C024C */ sw	$t4, 0X24C($a0)
/* 000116 0x80920510 0C2480D0 */ jal	FireArrow_SetUpdateFunc
/* 000117 0x80920514 AFA40020 */ sw	$a0, 0X20($sp)
/* 000118 0x80920518 8FA40020 */ lw	$a0, 0X20($sp)
/* 000119 0x8092051C 240E00FF */ li	$t6, 255
/* 000120 0x80920520 A08E0260 */ sb	$t6, 0X260($a0)
/* 000121 0x80920524 8FBF0014 */ lw	$ra, 0X14($sp)
.L_80920528:
/* 000122 0x80920528 27BD0020 */ addiu	$sp, $sp, 32
/* 000123 0x8092052C 03E00008 */ jr	$ra
/* 000124 0x80920530 00000000 */ nop

glabel FireArrow_Lerp
/* 000125 0x80920534 44866000 */ mtc1	$a2, $f12
/* 000126 0x80920538 00000000 */ nop
/* 000127 0x8092053C C4800000 */ lwc1	$f0, 0X0($a0)
/* 000128 0x80920540 C4A40000 */ lwc1	$f4, 0X0($a1)
/* 000129 0x80920544 C4820004 */ lwc1	$f2, 0X4($a0)
/* 000130 0x80920548 C48E0008 */ lwc1	$f14, 0X8($a0)
/* 000131 0x8092054C 46002181 */ sub.s	$f6, $f4, $f0
/* 000132 0x80920550 460C3202 */ mul.s	$f8, $f6, $f12
/* 000133 0x80920554 46080280 */ add.s	$f10, $f0, $f8
/* 000134 0x80920558 E48A0000 */ swc1	$f10, 0X0($a0)
/* 000135 0x8092055C C4B00004 */ lwc1	$f16, 0X4($a1)
/* 000136 0x80920560 46028481 */ sub.s	$f18, $f16, $f2
/* 000137 0x80920564 460C9102 */ mul.s	$f4, $f18, $f12
/* 000138 0x80920568 46041180 */ add.s	$f6, $f2, $f4
/* 000139 0x8092056C E4860004 */ swc1	$f6, 0X4($a0)
/* 000140 0x80920570 C4A80008 */ lwc1	$f8, 0X8($a1)
/* 000141 0x80920574 460E4281 */ sub.s	$f10, $f8, $f14
/* 000142 0x80920578 460C5402 */ mul.s	$f16, $f10, $f12
/* 000143 0x8092057C 46107480 */ add.s	$f18, $f14, $f16
/* 000144 0x80920580 E4920008 */ swc1	$f18, 0X8($a0)
/* 000145 0x80920584 03E00008 */ jr	$ra
/* 000146 0x80920588 00000000 */ nop

glabel FireArrow_Update3
/* 000147 0x8092058C 27BDFFD8 */ addiu	$sp, $sp, -40
/* 000148 0x80920590 3C014248 */ lui	$at, 0x4248
/* 000149 0x80920594 44811000 */ mtc1	$at, $f2
/* 000150 0x80920598 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000151 0x8092059C AFA5002C */ sw	$a1, 0X2C($sp)
/* 000152 0x809205A0 00803825 */ move	$a3, $a0
/* 000153 0x809205A4 C4E000F8 */ lwc1	$f0, 0XF8($a3)
/* 000154 0x809205A8 3C018092 */ lui	$at, %hi(D_809222F0)
/* 000155 0x809205AC 4602003C */ c.lt.s	$f0, $f2
/* 000156 0x809205B0 00000000 */ nop
/* 000157 0x809205B4 45000005 */ bc1f .L_809205CC
/* 000158 0x809205B8 00000000 */ nop
/* 000159 0x809205BC 3C014120 */ lui	$at, 0x4120
/* 000160 0x809205C0 44816000 */ mtc1	$at, $f12
/* 000161 0x809205C4 10000012 */ b	.L_80920610
/* 000162 0x809205C8 94E3025E */ lhu	$v1, 0X25E($a3)
.L_809205CC:
/* 000163 0x809205CC C42422F0 */ lwc1	$f4, %lo(D_809222F0)($at)
/* 000164 0x809205D0 3C018092 */ lui	$at, %hi(D_809222F4)
/* 000165 0x809205D4 4600203C */ c.lt.s	$f4, $f0
/* 000166 0x809205D8 00000000 */ nop
/* 000167 0x809205DC 45020006 */ bc1fl .L_809205F8
/* 000168 0x809205E0 46020181 */ sub.s	$f6, $f0, $f2
/* 000169 0x809205E4 3C01439B */ lui	$at, 0x439B
/* 000170 0x809205E8 44816000 */ mtc1	$at, $f12
/* 000171 0x809205EC 10000008 */ b	.L_80920610
/* 000172 0x809205F0 94E3025E */ lhu	$v1, 0X25E($a3)
/* 000173 0x809205F4 46020181 */ sub.s	$f6, $f0, $f2
.L_809205F8:
/* 000174 0x809205F8 C42822F4 */ lwc1	$f8, %lo(D_809222F4)($at)
/* 000175 0x809205FC 3C014120 */ lui	$at, 0x4120
/* 000176 0x80920600 44818000 */ mtc1	$at, $f16
/* 000177 0x80920604 46083282 */ mul.s	$f10, $f6, $f8
/* 000178 0x80920608 46105300 */ add.s	$f12, $f10, $f16
/* 000179 0x8092060C 94E3025E */ lhu	$v1, 0X25E($a3)
.L_80920610:
/* 000180 0x80920610 240A00FF */ li	$t2, 255
/* 000181 0x80920614 00E02025 */ move	$a0, $a3
/* 000182 0x80920618 10600029 */ beqz	$v1, .L_809206C0
/* 000183 0x8092061C 246EFFFF */ addiu	$t6, $v1, -1
/* 000184 0x80920620 31C3FFFF */ andi	$v1, $t6, 0XFFFF
/* 000185 0x80920624 28610008 */ slti	$at, $v1, 8
/* 000186 0x80920628 A4EE025E */ sh	$t6, 0X25E($a3)
/* 000187 0x8092062C 14200024 */ bnez	$at, .L_809206C0
/* 000188 0x80920630 00601025 */ move	$v0, $v1
/* 000189 0x80920634 244FFFF8 */ addiu	$t7, $v0, -8
/* 000190 0x80920638 448F9000 */ mtc1	$t7, $f18
/* 000191 0x8092063C 3C018092 */ lui	$at, %hi(D_809222F8)
/* 000192 0x80920640 C42622F8 */ lwc1	$f6, %lo(D_809222F8)($at)
/* 000193 0x80920644 46809120 */ cvt.s.w	$f4, $f18
/* 000194 0x80920648 3C013F80 */ lui	$at, 0x3F80
/* 000195 0x8092064C 44814000 */ mtc1	$at, $f8
/* 000196 0x80920650 3C014120 */ lui	$at, 0x4120
/* 000197 0x80920654 44819000 */ mtc1	$at, $f18
/* 000198 0x80920658 3C014000 */ lui	$at, 0x4000
/* 000199 0x8092065C 46062002 */ mul.s	$f0, $f4, $f6
/* 000200 0x80920660 C4E20250 */ lwc1	$f2, 0X250($a3)
/* 000201 0x80920664 000240C0 */ sll	$t0, $v0, 3
/* 000202 0x80920668 01024021 */ addu	$t0, $t0, $v0
/* 000203 0x8092066C 00084080 */ sll	$t0, $t0, 2
/* 000204 0x80920670 01024023 */ subu	$t0, $t0, $v0
/* 000205 0x80920674 2509FEE8 */ addiu	$t1, $t0, -280
/* 000206 0x80920678 46000002 */ mul.s	$f0, $f0, $f0
/* 000207 0x8092067C 46004281 */ sub.s	$f10, $f8, $f0
/* 000208 0x80920680 44814000 */ mtc1	$at, $f8
/* 000209 0x80920684 3C018092 */ lui	$at, %hi(D_809222FC)
/* 000210 0x80920688 460C5402 */ mul.s	$f16, $f10, $f12
/* 000211 0x8092068C 46024281 */ sub.s	$f10, $f8, $f2
/* 000212 0x80920690 46128100 */ add.s	$f4, $f16, $f18
/* 000213 0x80920694 4600218D */ trunc.w.s	$f6, $f4
/* 000214 0x80920698 44193000 */ mfc1	$t9, $f6
/* 000215 0x8092069C 00000000 */ nop
/* 000216 0x809206A0 A4F9025C */ sh	$t9, 0X25C($a3)
/* 000217 0x809206A4 C43022FC */ lwc1	$f16, %lo(D_809222FC)($at)
/* 000218 0x809206A8 28410010 */ slti	$at, $v0, 16
/* 000219 0x809206AC 46105482 */ mul.s	$f18, $f10, $f16
/* 000220 0x809206B0 46121100 */ add.s	$f4, $f2, $f18
/* 000221 0x809206B4 10200002 */ beqz	$at, .L_809206C0
/* 000222 0x809206B8 E4E40250 */ swc1	$f4, 0X250($a3)
/* 000223 0x809206BC A0E90260 */ sb	$t1, 0X260($a3)
.L_809206C0:
/* 000224 0x809206C0 28610009 */ slti	$at, $v1, 9
/* 000225 0x809206C4 1420000E */ bnez	$at, .L_80920700
/* 000226 0x809206C8 00601025 */ move	$v0, $v1
/* 000227 0x809206CC 3C013F80 */ lui	$at, 0x3F80
/* 000228 0x809206D0 44813000 */ mtc1	$at, $f6
/* 000229 0x809206D4 C4E00254 */ lwc1	$f0, 0X254($a3)
/* 000230 0x809206D8 3C013E80 */ lui	$at, 0x3E80
/* 000231 0x809206DC 4606003C */ c.lt.s	$f0, $f6
/* 000232 0x809206E0 00000000 */ nop
/* 000233 0x809206E4 45020012 */ bc1fl .L_80920730
/* 000234 0x809206E8 28410008 */ slti	$at, $v0, 8
/* 000235 0x809206EC 44814000 */ mtc1	$at, $f8
/* 000236 0x809206F0 94E2025E */ lhu	$v0, 0X25E($a3)
/* 000237 0x809206F4 46080280 */ add.s	$f10, $f0, $f8
/* 000238 0x809206F8 1000000C */ b	.L_8092072C
/* 000239 0x809206FC E4EA0254 */ swc1	$f10, 0X254($a3)
.L_80920700:
/* 000240 0x80920700 C4E00254 */ lwc1	$f0, 0X254($a3)
/* 000241 0x80920704 44808000 */ mtc1	$zero, $f16
/* 000242 0x80920708 3C013E00 */ lui	$at, 0x3E00
/* 000243 0x8092070C 4600803C */ c.lt.s	$f16, $f0
/* 000244 0x80920710 00000000 */ nop
/* 000245 0x80920714 45020006 */ bc1fl .L_80920730
/* 000246 0x80920718 28410008 */ slti	$at, $v0, 8
/* 000247 0x8092071C 44819000 */ mtc1	$at, $f18
/* 000248 0x80920720 94E2025E */ lhu	$v0, 0X25E($a3)
/* 000249 0x80920724 46120101 */ sub.s	$f4, $f0, $f18
/* 000250 0x80920728 E4E40254 */ swc1	$f4, 0X254($a3)
.L_8092072C:
/* 000251 0x8092072C 28410008 */ slti	$at, $v0, 8
.L_80920730:
/* 000252 0x80920730 10200003 */ beqz	$at, .L_80920740
/* 000253 0x80920734 00000000 */ nop
/* 000254 0x80920738 A0E00260 */ sb	$zero, 0X260($a3)
/* 000255 0x8092073C 94E2025E */ lhu	$v0, 0X25E($a3)
.L_80920740:
/* 000256 0x80920740 14400005 */ bnez	$v0, .L_80920758
/* 000257 0x80920744 2841000D */ slti	$at, $v0, 13
/* 000258 0x80920748 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000259 0x8092074C A4EA025E */ sh	$t2, 0X25E($a3)
/* 000260 0x80920750 10000010 */ b	.L_80920794
/* 000261 0x80920754 8FBF0014 */ lw	$ra, 0X14($sp)
.L_80920758:
/* 000262 0x80920758 1420000D */ bnez	$at, .L_80920790
/* 000263 0x8092075C 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000264 0x80920760 3C010001 */ lui	$at, 0x0001
/* 000265 0x80920764 34218884 */ ori	$at, $at, 0X8884
/* 000266 0x80920768 00812821 */ addu	$a1, $a0, $at
/* 000267 0x8092076C AFA50018 */ sw	$a1, 0X18($sp)
/* 000268 0x80920770 24E60144 */ addiu	$a2, $a3, 324
/* 000269 0x80920774 0C038956 */ jal	Collision_AddAT
/* 000270 0x80920778 AFA70028 */ sw	$a3, 0X28($sp)
/* 000271 0x8092077C 8FA70028 */ lw	$a3, 0X28($sp)
/* 000272 0x80920780 8FA50018 */ lw	$a1, 0X18($sp)
/* 000273 0x80920784 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000274 0x80920788 0C038956 */ jal	Collision_AddAT
/* 000275 0x8092078C 24E601C4 */ addiu	$a2, $a3, 452
.L_80920790:
/* 000276 0x80920790 8FBF0014 */ lw	$ra, 0X14($sp)
.L_80920794:
/* 000277 0x80920794 27BD0028 */ addiu	$sp, $sp, 40
/* 000278 0x80920798 03E00008 */ jr	$ra
/* 000279 0x8092079C 00000000 */ nop

glabel FireArrow_Update2
/* 000280 0x809207A0 27BDFFC8 */ addiu	$sp, $sp, -56
/* 000281 0x809207A4 AFB00018 */ sw	$s0, 0X18($sp)
/* 000282 0x809207A8 00808025 */ move	$s0, $a0
/* 000283 0x809207AC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000284 0x809207B0 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000285 0x809207B4 8E020120 */ lw	$v0, 0X120($s0)
/* 000286 0x809207B8 10400004 */ beqz	$v0, .L_809207CC
/* 000287 0x809207BC 00000000 */ nop
/* 000288 0x809207C0 8C4E0138 */ lw	$t6, 0X138($v0)
/* 000289 0x809207C4 55C00006 */ bnezl	$t6, .L_809207E0
/* 000290 0x809207C8 8C580024 */ lw	$t8, 0X24($v0)
.L_809207CC:
/* 000291 0x809207CC 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000292 0x809207D0 02002025 */ move	$a0, $s0
/* 000293 0x809207D4 10000043 */ b	.L_809208E4
/* 000294 0x809207D8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000295 0x809207DC 8C580024 */ lw	$t8, 0X24($v0)
.L_809207E0:
/* 000296 0x809207E0 26050024 */ addiu	$a1, $s0, 36
/* 000297 0x809207E4 26040244 */ addiu	$a0, $s0, 580
/* 000298 0x809207E8 ACB80000 */ sw	$t8, 0X0($a1)
/* 000299 0x809207EC 8C4F0028 */ lw	$t7, 0X28($v0)
/* 000300 0x809207F0 ACAF0004 */ sw	$t7, 0X4($a1)
/* 000301 0x809207F4 8C58002C */ lw	$t8, 0X2C($v0)
/* 000302 0x809207F8 ACB80008 */ sw	$t8, 0X8($a1)
/* 000303 0x809207FC 884800BC */ lwl	$t0, 0XBC($v0)
/* 000304 0x80920800 984800BF */ lwr	$t0, 0XBF($v0)
/* 000305 0x80920804 AA0800BC */ swl	$t0, 0XBC($s0)
/* 000306 0x80920808 BA0800BF */ swr	$t0, 0XBF($s0)
/* 000307 0x8092080C 944800C0 */ lhu	$t0, 0XC0($v0)
/* 000308 0x80920810 A60800C0 */ sh	$t0, 0XC0($s0)
/* 000309 0x80920814 AFA50028 */ sw	$a1, 0X28($sp)
/* 000310 0x80920818 AFA40024 */ sw	$a0, 0X24($sp)
/* 000311 0x8092081C 0C03FE21 */ jal	Math_Vec3f_DistXYZ
/* 000312 0x80920820 AFA20034 */ sw	$v0, 0X34($sp)
/* 000313 0x80920824 3C013F80 */ lui	$at, 0x3F80
/* 000314 0x80920828 44816000 */ mtc1	$at, $f12
/* 000315 0x8092082C 3C018092 */ lui	$at, %hi(D_80922300)
/* 000316 0x80920830 C4242300 */ lwc1	$f4, %lo(D_80922300)($at)
/* 000317 0x80920834 8FA20034 */ lw	$v0, 0X34($sp)
/* 000318 0x80920838 8FA40024 */ lw	$a0, 0X24($sp)
/* 000319 0x8092083C 46040082 */ mul.s	$f2, $f0, $f4
/* 000320 0x80920840 8FA50028 */ lw	$a1, 0X28($sp)
/* 000321 0x80920844 3C063D4C */ lui	$a2, 0x3D4C
/* 000322 0x80920848 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 000323 0x8092084C 460C103C */ c.lt.s	$f2, $f12
/* 000324 0x80920850 E6020250 */ swc1	$f2, 0X250($s0)
/* 000325 0x80920854 45000002 */ bc1f .L_80920860
/* 000326 0x80920858 00000000 */ nop
/* 000327 0x8092085C E60C0250 */ swc1	$f12, 0X250($s0)
.L_80920860:
/* 000328 0x80920860 0C24814D */ jal	FireArrow_Lerp
/* 000329 0x80920864 AFA20034 */ sw	$v0, 0X34($sp)
/* 000330 0x80920868 8FA20034 */ lw	$v0, 0X34($sp)
/* 000331 0x8092086C 02002025 */ move	$a0, $s0
/* 000332 0x80920870 90490261 */ lbu	$t1, 0X261($v0)
/* 000333 0x80920874 312A0001 */ andi	$t2, $t1, 0X1
/* 000334 0x80920878 5140000D */ beqzl	$t2, .L_809208B0
/* 000335 0x8092087C 904D0260 */ lbu	$t5, 0X260($v0)
/* 000336 0x80920880 0C02E3B2 */ jal	func_800B8EC8
/* 000337 0x80920884 2405183A */ li	$a1, 6202
/* 000338 0x80920888 3C058092 */ lui	$a1, %hi(FireArrow_Update3)
/* 000339 0x8092088C 24A5058C */ addiu	$a1, $a1, %lo(FireArrow_Update3)
/* 000340 0x80920890 0C2480D0 */ jal	FireArrow_SetUpdateFunc
/* 000341 0x80920894 02002025 */ move	$a0, $s0
/* 000342 0x80920898 240B0020 */ li	$t3, 32
/* 000343 0x8092089C 240C00FF */ li	$t4, 255
/* 000344 0x809208A0 A60B025E */ sh	$t3, 0X25E($s0)
/* 000345 0x809208A4 1000000E */ b	.L_809208E0
/* 000346 0x809208A8 A20C0260 */ sb	$t4, 0X260($s0)
/* 000347 0x809208AC 904D0260 */ lbu	$t5, 0X260($v0)
.L_809208B0:
/* 000348 0x809208B0 29A10022 */ slti	$at, $t5, 34
/* 000349 0x809208B4 5020000B */ beqzl	$at, .L_809208E4
/* 000350 0x809208B8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000351 0x809208BC 92020260 */ lbu	$v0, 0X260($s0)
/* 000352 0x809208C0 28410023 */ slti	$at, $v0, 35
/* 000353 0x809208C4 10200005 */ beqz	$at, .L_809208DC
/* 000354 0x809208C8 244EFFE7 */ addiu	$t6, $v0, -25
/* 000355 0x809208CC 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000356 0x809208D0 02002025 */ move	$a0, $s0
/* 000357 0x809208D4 10000003 */ b	.L_809208E4
/* 000358 0x809208D8 8FBF001C */ lw	$ra, 0X1C($sp)
.L_809208DC:
/* 000359 0x809208DC A20E0260 */ sb	$t6, 0X260($s0)
.L_809208E0:
/* 000360 0x809208E0 8FBF001C */ lw	$ra, 0X1C($sp)
.L_809208E4:
/* 000361 0x809208E4 8FB00018 */ lw	$s0, 0X18($sp)
/* 000362 0x809208E8 27BD0038 */ addiu	$sp, $sp, 56
/* 000363 0x809208EC 03E00008 */ jr	$ra
/* 000364 0x809208F0 00000000 */ nop

glabel ArrowFire_Update
/* 000365 0x809208F4 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000366 0x809208F8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000367 0x809208FC 3C020001 */ lui	$v0, 0x0001
/* 000368 0x80920900 00451021 */ addu	$v0, $v0, $a1
/* 000369 0x80920904 9042682A */ lbu	$v0, 0X682A($v0)
/* 000370 0x80920908 2401000E */ li	$at, 14
/* 000371 0x8092090C 10410003 */ beq	$v0, $at, .L_8092091C
/* 000372 0x80920910 24010012 */ li	$at, 18
/* 000373 0x80920914 54410006 */ bnel	$v0, $at, .L_80920930
/* 000374 0x80920918 8C990258 */ lw	$t9, 0X258($a0)
.L_8092091C:
/* 000375 0x8092091C 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000376 0x80920920 00000000 */ nop
/* 000377 0x80920924 10000005 */ b	.L_8092093C
/* 000378 0x80920928 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000379 0x8092092C 8C990258 */ lw	$t9, 0X258($a0)
.L_80920930:
/* 000380 0x80920930 0320F809 */ jalr	$t9
/* 000381 0x80920934 00000000 */ nop
/* 000382 0x80920938 8FBF0014 */ lw	$ra, 0X14($sp)
.L_8092093C:
/* 000383 0x8092093C 27BD0018 */ addiu	$sp, $sp, 24
/* 000384 0x80920940 03E00008 */ jr	$ra
/* 000385 0x80920944 00000000 */ nop

glabel func_80920948
/* 000386 0x80920948 27BDFFB0 */ addiu	$sp, $sp, -80
/* 000387 0x8092094C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000388 0x80920950 AFA40050 */ sw	$a0, 0X50($sp)
/* 000389 0x80920954 3C048092 */ lui	$a0, %hi(D_80922284)
/* 000390 0x80920958 24842284 */ addiu	$a0, $a0, %lo(D_80922284)
/* 000391 0x8092095C 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000392 0x80920960 27A50044 */ addiu	$a1, $sp, 68
/* 000393 0x80920964 3C048092 */ lui	$a0, %hi(D_80922290)
/* 000394 0x80920968 24842290 */ addiu	$a0, $a0, %lo(D_80922290)
/* 000395 0x8092096C 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000396 0x80920970 27A50038 */ addiu	$a1, $sp, 56
/* 000397 0x80920974 3C048092 */ lui	$a0, %hi(D_8092229C)
/* 000398 0x80920978 2484229C */ addiu	$a0, $a0, %lo(D_8092229C)
/* 000399 0x8092097C 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000400 0x80920980 27A5002C */ addiu	$a1, $sp, 44
/* 000401 0x80920984 3C048092 */ lui	$a0, %hi(D_809222A8)
/* 000402 0x80920988 248422A8 */ addiu	$a0, $a0, %lo(D_809222A8)
/* 000403 0x8092098C 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000404 0x80920990 27A50020 */ addiu	$a1, $sp, 32
/* 000405 0x80920994 8FA40050 */ lw	$a0, 0X50($sp)
/* 000406 0x80920998 27AE0020 */ addiu	$t6, $sp, 32
/* 000407 0x8092099C AFAE0010 */ sw	$t6, 0X10($sp)
/* 000408 0x809209A0 27A50044 */ addiu	$a1, $sp, 68
/* 000409 0x809209A4 27A60038 */ addiu	$a2, $sp, 56
/* 000410 0x809209A8 27A7002C */ addiu	$a3, $sp, 44
/* 000411 0x809209AC 0C039F97 */ jal	Collision_QuadSetCoords
/* 000412 0x809209B0 24840144 */ addiu	$a0, $a0, 324
/* 000413 0x809209B4 3C048092 */ lui	$a0, %hi(D_809222B4)
/* 000414 0x809209B8 248422B4 */ addiu	$a0, $a0, %lo(D_809222B4)
/* 000415 0x809209BC 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000416 0x809209C0 27A50044 */ addiu	$a1, $sp, 68
/* 000417 0x809209C4 3C048092 */ lui	$a0, %hi(D_809222C0)
/* 000418 0x809209C8 248422C0 */ addiu	$a0, $a0, %lo(D_809222C0)
/* 000419 0x809209CC 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000420 0x809209D0 27A50038 */ addiu	$a1, $sp, 56
/* 000421 0x809209D4 3C048092 */ lui	$a0, %hi(D_809222CC)
/* 000422 0x809209D8 248422CC */ addiu	$a0, $a0, %lo(D_809222CC)
/* 000423 0x809209DC 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000424 0x809209E0 27A5002C */ addiu	$a1, $sp, 44
/* 000425 0x809209E4 3C048092 */ lui	$a0, %hi(D_809222D8)
/* 000426 0x809209E8 248422D8 */ addiu	$a0, $a0, %lo(D_809222D8)
/* 000427 0x809209EC 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000428 0x809209F0 27A50020 */ addiu	$a1, $sp, 32
/* 000429 0x809209F4 8FA40050 */ lw	$a0, 0X50($sp)
/* 000430 0x809209F8 27AF0020 */ addiu	$t7, $sp, 32
/* 000431 0x809209FC AFAF0010 */ sw	$t7, 0X10($sp)
/* 000432 0x80920A00 27A50044 */ addiu	$a1, $sp, 68
/* 000433 0x80920A04 27A60038 */ addiu	$a2, $sp, 56
/* 000434 0x80920A08 27A7002C */ addiu	$a3, $sp, 44
/* 000435 0x80920A0C 0C039F97 */ jal	Collision_QuadSetCoords
/* 000436 0x80920A10 248401C4 */ addiu	$a0, $a0, 452
/* 000437 0x80920A14 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000438 0x80920A18 27BD0050 */ addiu	$sp, $sp, 80
/* 000439 0x80920A1C 03E00008 */ jr	$ra
/* 000440 0x80920A20 00000000 */ nop

glabel ArrowFire_Draw
/* 000441 0x80920A24 27BDFF80 */ addiu	$sp, $sp, -128
/* 000442 0x80920A28 AFBF003C */ sw	$ra, 0X3C($sp)
/* 000443 0x80920A2C AFB00038 */ sw	$s0, 0X38($sp)
/* 000444 0x80920A30 8CAE009C */ lw	$t6, 0X9C($a1)
/* 000445 0x80920A34 AFAE0074 */ sw	$t6, 0X74($sp)
/* 000446 0x80920A38 8C830120 */ lw	$v1, 0X120($a0)
/* 000447 0x80920A3C 506000E7 */ beqzl	$v1, .L_80920DDC
/* 000448 0x80920A40 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000449 0x80920A44 8C6F0138 */ lw	$t7, 0X138($v1)
/* 000450 0x80920A48 51E000E4 */ beqzl	$t7, .L_80920DDC
/* 000451 0x80920A4C 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000452 0x80920A50 9498025E */ lhu	$t8, 0X25E($a0)
/* 000453 0x80920A54 00003825 */ move	$a3, $zero
/* 000454 0x80920A58 2B0100FF */ slti	$at, $t8, 255
/* 000455 0x80920A5C 502000DF */ beqzl	$at, .L_80920DDC
/* 000456 0x80920A60 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000457 0x80920A64 90790261 */ lbu	$t9, 0X261($v1)
/* 000458 0x80920A68 332B0002 */ andi	$t3, $t9, 0X2
/* 000459 0x80920A6C 51600004 */ beqzl	$t3, .L_80920A80
/* 000460 0x80920A70 00601025 */ move	$v0, $v1
/* 000461 0x80920A74 10000002 */ b	.L_80920A80
/* 000462 0x80920A78 00801025 */ move	$v0, $a0
/* 000463 0x80920A7C 00601025 */ move	$v0, $v1
.L_80920A80:
/* 000464 0x80920A80 8CB00000 */ lw	$s0, 0X0($a1)
/* 000465 0x80920A84 C44C0024 */ lwc1	$f12, 0X24($v0)
/* 000466 0x80920A88 C44E0028 */ lwc1	$f14, 0X28($v0)
/* 000467 0x80920A8C 8C46002C */ lw	$a2, 0X2C($v0)
/* 000468 0x80920A90 AFA50084 */ sw	$a1, 0X84($sp)
/* 000469 0x80920A94 AFA40080 */ sw	$a0, 0X80($sp)
/* 000470 0x80920A98 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000471 0x80920A9C AFA2006C */ sw	$v0, 0X6C($sp)
/* 000472 0x80920AA0 8FA2006C */ lw	$v0, 0X6C($sp)
/* 000473 0x80920AA4 24050001 */ li	$a1, 1
/* 000474 0x80920AA8 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000475 0x80920AAC 844400BE */ lh	$a0, 0XBE($v0)
/* 000476 0x80920AB0 8FA2006C */ lw	$v0, 0X6C($sp)
/* 000477 0x80920AB4 24050001 */ li	$a1, 1
/* 000478 0x80920AB8 0C06011E */ jal	SysMatrix_InsertXRotation_s
/* 000479 0x80920ABC 844400BC */ lh	$a0, 0XBC($v0)
/* 000480 0x80920AC0 8FA2006C */ lw	$v0, 0X6C($sp)
/* 000481 0x80920AC4 24050001 */ li	$a1, 1
/* 000482 0x80920AC8 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 000483 0x80920ACC 844400C0 */ lh	$a0, 0XC0($v0)
/* 000484 0x80920AD0 3C018092 */ lui	$at, %hi(D_80922304)
/* 000485 0x80920AD4 C42C2304 */ lwc1	$f12, %lo(D_80922304)($at)
/* 000486 0x80920AD8 24070001 */ li	$a3, 1
/* 000487 0x80920ADC 44066000 */ mfc1	$a2, $f12
/* 000488 0x80920AE0 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000489 0x80920AE4 46006386 */ mov.s	$f14, $f12
/* 000490 0x80920AE8 8FAC0080 */ lw	$t4, 0X80($sp)
/* 000491 0x80920AEC 44802000 */ mtc1	$zero, $f4
/* 000492 0x80920AF0 C5860254 */ lwc1	$f6, 0X254($t4)
/* 000493 0x80920AF4 4606203C */ c.lt.s	$f4, $f6
/* 000494 0x80920AF8 00000000 */ nop
/* 000495 0x80920AFC 45020033 */ bc1fl .L_80920BCC
/* 000496 0x80920B00 8FAF0084 */ lw	$t7, 0X84($sp)
/* 000497 0x80920B04 0C04AFF1 */ jal	func_8012BFC4
/* 000498 0x80920B08 8E0402C0 */ lw	$a0, 0X2C0($s0)
/* 000499 0x80920B0C AE0202C0 */ sw	$v0, 0X2C0($s0)
/* 000500 0x80920B10 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000501 0x80920B14 3C0EFA00 */ lui	$t6, 0xFA00
/* 000502 0x80920B18 3C014220 */ lui	$at, 0x4220
/* 000503 0x80920B1C 244D0008 */ addiu	$t5, $v0, 8
/* 000504 0x80920B20 AE0D02C0 */ sw	$t5, 0X2C0($s0)
/* 000505 0x80920B24 AC4E0000 */ sw	$t6, 0X0($v0)
/* 000506 0x80920B28 8FAF0080 */ lw	$t7, 0X80($sp)
/* 000507 0x80920B2C 44814000 */ mtc1	$at, $f8
/* 000508 0x80920B30 3C014316 */ lui	$at, 0x4316
/* 000509 0x80920B34 C5E00254 */ lwc1	$f0, 0X254($t7)
/* 000510 0x80920B38 44819000 */ mtc1	$at, $f18
/* 000511 0x80920B3C 3C0EE300 */ lui	$t6, 0xE300
/* 000512 0x80920B40 46080282 */ mul.s	$f10, $f0, $f8
/* 000513 0x80920B44 00000000 */ nop
/* 000514 0x80920B48 46009102 */ mul.s	$f4, $f18, $f0
/* 000515 0x80920B4C 4600540D */ trunc.w.s	$f16, $f10
/* 000516 0x80920B50 4600218D */ trunc.w.s	$f6, $f4
/* 000517 0x80920B54 440C8000 */ mfc1	$t4, $f16
/* 000518 0x80920B58 44183000 */ mfc1	$t8, $f6
/* 000519 0x80920B5C 000C6E00 */ sll	$t5, $t4, 24
/* 000520 0x80920B60 331900FF */ andi	$t9, $t8, 0XFF
/* 000521 0x80920B64 01B95825 */ or	$t3, $t5, $t9
/* 000522 0x80920B68 AC4B0004 */ sw	$t3, 0X4($v0)
/* 000523 0x80920B6C 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000524 0x80920B70 35CE1A01 */ ori	$t6, $t6, 0X1A01
/* 000525 0x80920B74 240F0030 */ li	$t7, 48
/* 000526 0x80920B78 244C0008 */ addiu	$t4, $v0, 8
/* 000527 0x80920B7C AE0C02C0 */ sw	$t4, 0X2C0($s0)
/* 000528 0x80920B80 AC4F0004 */ sw	$t7, 0X4($v0)
/* 000529 0x80920B84 AC4E0000 */ sw	$t6, 0X0($v0)
/* 000530 0x80920B88 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000531 0x80920B8C 3C0DE300 */ lui	$t5, 0xE300
/* 000532 0x80920B90 35AD1801 */ ori	$t5, $t5, 0X1801
/* 000533 0x80920B94 24580008 */ addiu	$t8, $v0, 8
/* 000534 0x80920B98 AE1802C0 */ sw	$t8, 0X2C0($s0)
/* 000535 0x80920B9C 241900C0 */ li	$t9, 192
/* 000536 0x80920BA0 AC590004 */ sw	$t9, 0X4($v0)
/* 000537 0x80920BA4 AC4D0000 */ sw	$t5, 0X0($v0)
/* 000538 0x80920BA8 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000539 0x80920BAC 3C0E0E00 */ lui	$t6, 0x0E00
/* 000540 0x80920BB0 25CE02E0 */ addiu	$t6, $t6, 736
/* 000541 0x80920BB4 244B0008 */ addiu	$t3, $v0, 8
/* 000542 0x80920BB8 AE0B02C0 */ sw	$t3, 0X2C0($s0)
/* 000543 0x80920BBC 3C0CDE00 */ lui	$t4, 0xDE00
/* 000544 0x80920BC0 AC4C0000 */ sw	$t4, 0X0($v0)
/* 000545 0x80920BC4 AC4E0004 */ sw	$t6, 0X4($v0)
/* 000546 0x80920BC8 8FAF0084 */ lw	$t7, 0X84($sp)
.L_80920BCC:
/* 000547 0x80920BCC 0C04B0B7 */ jal	func_8012C2DC
/* 000548 0x80920BD0 8DE40000 */ lw	$a0, 0X0($t7)
/* 000549 0x80920BD4 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000550 0x80920BD8 3C0DFA00 */ lui	$t5, 0xFA00
/* 000551 0x80920BDC 35AD8080 */ ori	$t5, $t5, 0X8080
/* 000552 0x80920BE0 24580008 */ addiu	$t8, $v0, 8
/* 000553 0x80920BE4 AE1802C0 */ sw	$t8, 0X2C0($s0)
/* 000554 0x80920BE8 AC4D0000 */ sw	$t5, 0X0($v0)
/* 000555 0x80920BEC 8FB90080 */ lw	$t9, 0X80($sp)
/* 000556 0x80920BF0 3C01FFC8 */ lui	$at, 0xFFC8
/* 000557 0x80920BF4 3C18FB00 */ lui	$t8, 0xFB00
/* 000558 0x80920BF8 932C0260 */ lbu	$t4, 0X260($t9)
/* 000559 0x80920BFC 24044000 */ li	$a0, 16384
/* 000560 0x80920C00 00002825 */ move	$a1, $zero
/* 000561 0x80920C04 01817025 */ or	$t6, $t4, $at
/* 000562 0x80920C08 AC4E0004 */ sw	$t6, 0X4($v0)
/* 000563 0x80920C0C 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000564 0x80920C10 3C0DFF00 */ lui	$t5, 0xFF00
/* 000565 0x80920C14 35AD0080 */ ori	$t5, $t5, 0X80
/* 000566 0x80920C18 244F0008 */ addiu	$t7, $v0, 8
/* 000567 0x80920C1C AE0F02C0 */ sw	$t7, 0X2C0($s0)
/* 000568 0x80920C20 AC4D0004 */ sw	$t5, 0X4($v0)
/* 000569 0x80920C24 AC580000 */ sw	$t8, 0X0($v0)
/* 000570 0x80920C28 00003025 */ move	$a2, $zero
/* 000571 0x80920C2C 0C06040F */ jal	SysMatrix_InsertRotation
/* 000572 0x80920C30 24070001 */ li	$a3, 1
/* 000573 0x80920C34 8FB90080 */ lw	$t9, 0X80($sp)
/* 000574 0x80920C38 972B025E */ lhu	$t3, 0X25E($t9)
/* 000575 0x80920C3C 51600009 */ beqzl	$t3, .L_80920C64
/* 000576 0x80920C40 44806000 */ mtc1	$zero, $f12
/* 000577 0x80920C44 44806000 */ mtc1	$zero, $f12
/* 000578 0x80920C48 24070001 */ li	$a3, 1
/* 000579 0x80920C4C 44066000 */ mfc1	$a2, $f12
/* 000580 0x80920C50 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000581 0x80920C54 46006386 */ mov.s	$f14, $f12
/* 000582 0x80920C58 10000008 */ b	.L_80920C7C
/* 000583 0x80920C5C 8FAC0080 */ lw	$t4, 0X80($sp)
/* 000584 0x80920C60 44806000 */ mtc1	$zero, $f12
.L_80920C64:
/* 000585 0x80920C64 3C018092 */ lui	$at, %hi(D_80922308)
/* 000586 0x80920C68 C42E2308 */ lwc1	$f14, %lo(D_80922308)($at)
/* 000587 0x80920C6C 24060000 */ li	$a2, 0
/* 000588 0x80920C70 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000589 0x80920C74 24070001 */ li	$a3, 1
/* 000590 0x80920C78 8FAC0080 */ lw	$t4, 0X80($sp)
.L_80920C7C:
/* 000591 0x80920C7C 3C018092 */ lui	$at, %hi(D_8092230C)
/* 000592 0x80920C80 C430230C */ lwc1	$f16, %lo(D_8092230C)($at)
/* 000593 0x80920C84 858E025C */ lh	$t6, 0X25C($t4)
/* 000594 0x80920C88 3C014080 */ lui	$at, 0x4080
/* 000595 0x80920C8C 44812000 */ mtc1	$at, $f4
/* 000596 0x80920C90 448E4000 */ mtc1	$t6, $f8
/* 000597 0x80920C94 C5920250 */ lwc1	$f18, 0X250($t4)
/* 000598 0x80920C98 24070001 */ li	$a3, 1
/* 000599 0x80920C9C 468042A0 */ cvt.s.w	$f10, $f8
/* 000600 0x80920CA0 46105302 */ mul.s	$f12, $f10, $f16
/* 000601 0x80920CA4 44066000 */ mfc1	$a2, $f12
/* 000602 0x80920CA8 46049382 */ mul.s	$f14, $f18, $f4
/* 000603 0x80920CAC 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000604 0x80920CB0 00000000 */ nop
/* 000605 0x80920CB4 44806000 */ mtc1	$zero, $f12
/* 000606 0x80920CB8 3C01C42F */ lui	$at, 0xC42F
/* 000607 0x80920CBC 44817000 */ mtc1	$at, $f14
/* 000608 0x80920CC0 44066000 */ mfc1	$a2, $f12
/* 000609 0x80920CC4 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000610 0x80920CC8 24070001 */ li	$a3, 1
/* 000611 0x80920CCC 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000612 0x80920CD0 3C18DA38 */ lui	$t8, 0xDA38
/* 000613 0x80920CD4 37180003 */ ori	$t8, $t8, 0X3
/* 000614 0x80920CD8 244F0008 */ addiu	$t7, $v0, 8
/* 000615 0x80920CDC AE0F02C0 */ sw	$t7, 0X2C0($s0)
/* 000616 0x80920CE0 AC580000 */ sw	$t8, 0X0($v0)
/* 000617 0x80920CE4 8FAD0084 */ lw	$t5, 0X84($sp)
/* 000618 0x80920CE8 8DA40000 */ lw	$a0, 0X0($t5)
/* 000619 0x80920CEC 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000620 0x80920CF0 AFA20048 */ sw	$v0, 0X48($sp)
/* 000621 0x80920CF4 8FA30048 */ lw	$v1, 0X48($sp)
/* 000622 0x80920CF8 AC620004 */ sw	$v0, 0X4($v1)
/* 000623 0x80920CFC 0C248252 */ jal	func_80920948
/* 000624 0x80920D00 8FA40080 */ lw	$a0, 0X80($sp)
/* 000625 0x80920D04 3C09DE00 */ lui	$t1, 0xDE00
/* 000626 0x80920D08 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000627 0x80920D0C 3C0B8092 */ lui	$t3, %hi(D_809220A0)
/* 000628 0x80920D10 256B20A0 */ addiu	$t3, $t3, %lo(D_809220A0)
/* 000629 0x80920D14 24590008 */ addiu	$t9, $v0, 8
/* 000630 0x80920D18 AE1902C0 */ sw	$t9, 0X2C0($s0)
/* 000631 0x80920D1C AC4B0004 */ sw	$t3, 0X4($v0)
/* 000632 0x80920D20 AC490000 */ sw	$t1, 0X0($v0)
/* 000633 0x80920D24 240800FF */ li	$t0, 255
/* 000634 0x80920D28 8FAA0074 */ lw	$t2, 0X74($sp)
/* 000635 0x80920D2C 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000636 0x80920D30 000A7840 */ sll	$t7, $t2, 1
/* 000637 0x80920D34 31F800FF */ andi	$t8, $t7, 0XFF
/* 000638 0x80920D38 244E0008 */ addiu	$t6, $v0, 8
/* 000639 0x80920D3C AE0E02C0 */ sw	$t6, 0X2C0($s0)
/* 000640 0x80920D40 AC490000 */ sw	$t1, 0X0($v0)
/* 000641 0x80920D44 8FAC0084 */ lw	$t4, 0X84($sp)
/* 000642 0x80920D48 000A7880 */ sll	$t7, $t2, 2
/* 000643 0x80920D4C 01EA7821 */ addu	$t7, $t7, $t2
/* 000644 0x80920D50 8D840000 */ lw	$a0, 0X0($t4)
/* 000645 0x80920D54 240D0040 */ li	$t5, 64
/* 000646 0x80920D58 AFAD0010 */ sw	$t5, 0X10($sp)
/* 000647 0x80920D5C 000F7840 */ sll	$t7, $t7, 1
/* 000648 0x80920D60 314E00FF */ andi	$t6, $t2, 0XFF
/* 000649 0x80920D64 01183023 */ subu	$a2, $t0, $t8
/* 000650 0x80920D68 24190020 */ li	$t9, 32
/* 000651 0x80920D6C 240B0001 */ li	$t3, 1
/* 000652 0x80920D70 AFAB0018 */ sw	$t3, 0X18($sp)
/* 000653 0x80920D74 AFB90014 */ sw	$t9, 0X14($sp)
/* 000654 0x80920D78 31F801FF */ andi	$t8, $t7, 0X1FF
/* 000655 0x80920D7C 010E6023 */ subu	$t4, $t0, $t6
/* 000656 0x80920D80 240D01FF */ li	$t5, 511
/* 000657 0x80920D84 01B8C823 */ subu	$t9, $t5, $t8
/* 000658 0x80920D88 240E0040 */ li	$t6, 64
/* 000659 0x80920D8C 240B0040 */ li	$t3, 64
/* 000660 0x80920D90 AFAB0024 */ sw	$t3, 0X24($sp)
/* 000661 0x80920D94 AFAE0028 */ sw	$t6, 0X28($sp)
/* 000662 0x80920D98 AFB90020 */ sw	$t9, 0X20($sp)
/* 000663 0x80920D9C AFAC001C */ sw	$t4, 0X1C($sp)
/* 000664 0x80920DA0 00002825 */ move	$a1, $zero
/* 000665 0x80920DA4 00003825 */ move	$a3, $zero
/* 000666 0x80920DA8 0C04B2F4 */ jal	Gfx_TwoTexScroll
/* 000667 0x80920DAC AFA20040 */ sw	$v0, 0X40($sp)
/* 000668 0x80920DB0 8FA30040 */ lw	$v1, 0X40($sp)
/* 000669 0x80920DB4 3C0FDE00 */ lui	$t7, 0xDE00
/* 000670 0x80920DB8 AC620004 */ sw	$v0, 0X4($v1)
/* 000671 0x80920DBC 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000672 0x80920DC0 3C0D8092 */ lui	$t5, %hi(D_80922150)
/* 000673 0x80920DC4 25AD2150 */ addiu	$t5, $t5, %lo(D_80922150)
/* 000674 0x80920DC8 244C0008 */ addiu	$t4, $v0, 8
/* 000675 0x80920DCC AE0C02C0 */ sw	$t4, 0X2C0($s0)
/* 000676 0x80920DD0 AC4D0004 */ sw	$t5, 0X4($v0)
/* 000677 0x80920DD4 AC4F0000 */ sw	$t7, 0X0($v0)
/* 000678 0x80920DD8 8FBF003C */ lw	$ra, 0X3C($sp)
.L_80920DDC:
/* 000679 0x80920DDC 8FB00038 */ lw	$s0, 0X38($sp)
/* 000680 0x80920DE0 27BD0080 */ addiu	$sp, $sp, 128
/* 000681 0x80920DE4 03E00008 */ jr	$ra
/* 000682 0x80920DE8 00000000 */ nop
/* 000683 0x80920DEC 00000000 */ nop
