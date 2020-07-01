.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel EnWarptag_Init
/* 000000 0x809C0760 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000001 0x809C0764 AFB00018 */ sw	$s0, 0X18($sp)
/* 000002 0x809C0768 00808025 */ move	$s0, $a0
/* 000003 0x809C076C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000004 0x809C0770 AFA50024 */ sw	$a1, 0X24($sp)
/* 000005 0x809C0774 3C05809C */ lui	$a1, %hi(D_809C1008)
/* 000006 0x809C0778 24A51008 */ addiu	$a1, $a1, %lo(D_809C1008)
/* 000007 0x809C077C 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000008 0x809C0780 02002025 */ move	$a0, $s0
/* 000009 0x809C0784 02002025 */ move	$a0, $s0
/* 000010 0x809C0788 0C02D9D7 */ jal	Actor_SetHeight
/* 000011 0x809C078C 24050000 */ li	$a1, 0
/* 000012 0x809C0790 8602001C */ lh	$v0, 0X1C($s0)
/* 000013 0x809C0794 240103C0 */ li	$at, 960
/* 000014 0x809C0798 3C0B809C */ lui	$t3, %hi(func_809C09A0)
/* 000015 0x809C079C 304E03C0 */ andi	$t6, $v0, 0X3C0
/* 000016 0x809C07A0 15C1001A */ bne	$t6, $at, .L_809C080C
/* 000017 0x809C07A4 256B09A0 */ addiu	$t3, $t3, %lo(func_809C09A0)
/* 000018 0x809C07A8 8E0F0004 */ lw	$t7, 0X4($s0)
/* 000019 0x809C07AC 2401FFFE */ li	$at, -2
/* 000020 0x809C07B0 24050003 */ li	$a1, 3
/* 000021 0x809C07B4 01E1C024 */ and	$t8, $t7, $at
/* 000022 0x809C07B8 04410005 */ bgez	$v0, .L_809C07D0
/* 000023 0x809C07BC AE180004 */ sw	$t8, 0X4($s0)
/* 000024 0x809C07C0 3C19809C */ lui	$t9, %hi(func_809C08E0)
/* 000025 0x809C07C4 273908E0 */ addiu	$t9, $t9, %lo(func_809C08E0)
/* 000026 0x809C07C8 10000011 */ b	.L_809C0810
/* 000027 0x809C07CC AE190160 */ sw	$t9, 0X160($s0)
.L_809C07D0:
/* 000028 0x809C07D0 8FA40024 */ lw	$a0, 0X24($sp)
/* 000029 0x809C07D4 3C010001 */ lui	$at, 0x0001
/* 000030 0x809C07D8 34217D88 */ ori	$at, $at, 0X7D88
/* 000031 0x809C07DC 0C04BD82 */ jal	Scene_FindSceneObjectIndex
/* 000032 0x809C07E0 00812021 */ addu	$a0, $a0, $at
/* 000033 0x809C07E4 00024600 */ sll	$t0, $v0, 24
/* 000034 0x809C07E8 00084E03 */ sra	$t1, $t0, 24
/* 000035 0x809C07EC 05210003 */ bgez	$t1, .L_809C07FC
/* 000036 0x809C07F0 A202015C */ sb	$v0, 0X15C($s0)
/* 000037 0x809C07F4 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000038 0x809C07F8 02002025 */ move	$a0, $s0
.L_809C07FC:
/* 000039 0x809C07FC 3C0A809C */ lui	$t2, %hi(func_809C085C)
/* 000040 0x809C0800 254A085C */ addiu	$t2, $t2, %lo(func_809C085C)
/* 000041 0x809C0804 10000002 */ b	.L_809C0810
/* 000042 0x809C0808 AE0A0160 */ sw	$t2, 0X160($s0)
.L_809C080C:
/* 000043 0x809C080C AE0B0160 */ sw	$t3, 0X160($s0)
.L_809C0810:
/* 000044 0x809C0810 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000045 0x809C0814 8FB00018 */ lw	$s0, 0X18($sp)
/* 000046 0x809C0818 27BD0020 */ addiu	$sp, $sp, 32
/* 000047 0x809C081C 03E00008 */ jr	$ra
/* 000048 0x809C0820 00000000 */ nop

glabel EnWarptag_Destroy
/* 000049 0x809C0824 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000050 0x809C0828 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000051 0x809C082C AFA5001C */ sw	$a1, 0X1C($sp)
/* 000052 0x809C0830 00803825 */ move	$a3, $a0
/* 000053 0x809C0834 8CEE013C */ lw	$t6, 0X13C($a3)
/* 000054 0x809C0838 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000055 0x809C083C 11C00003 */ beqz	$t6, .L_809C084C
/* 000056 0x809C0840 24850880 */ addiu	$a1, $a0, 2176
/* 000057 0x809C0844 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000058 0x809C0848 8CE60144 */ lw	$a2, 0X144($a3)
.L_809C084C:
/* 000059 0x809C084C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000060 0x809C0850 27BD0018 */ addiu	$sp, $sp, 24
/* 000061 0x809C0854 03E00008 */ jr	$ra
/* 000062 0x809C0858 00000000 */ nop

glabel func_809C085C
/* 000063 0x809C085C 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000064 0x809C0860 AFB00018 */ sw	$s0, 0X18($sp)
/* 000065 0x809C0864 00808025 */ move	$s0, $a0
/* 000066 0x809C0868 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000067 0x809C086C AFA50024 */ sw	$a1, 0X24($sp)
/* 000068 0x809C0870 8FA40024 */ lw	$a0, 0X24($sp)
/* 000069 0x809C0874 3C010001 */ lui	$at, 0x0001
/* 000070 0x809C0878 34217D88 */ ori	$at, $at, 0X7D88
/* 000071 0x809C087C 8205015C */ lb	$a1, 0X15C($s0)
/* 000072 0x809C0880 0C04BD9A */ jal	Scene_IsObjectLoaded
/* 000073 0x809C0884 00812021 */ addu	$a0, $a0, $at
/* 000074 0x809C0888 10400010 */ beqz	$v0, .L_809C08CC
/* 000075 0x809C088C 3C0E809C */ lui	$t6, %hi(func_809C08E0)
/* 000076 0x809C0890 25CE08E0 */ addiu	$t6, $t6, %lo(func_809C08E0)
/* 000077 0x809C0894 AE0E0160 */ sw	$t6, 0X160($s0)
/* 000078 0x809C0898 02002025 */ move	$a0, $s0
/* 000079 0x809C089C 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000080 0x809C08A0 24050001 */ li	$a1, 1
/* 000081 0x809C08A4 3C060502 */ lui	$a2, 0x0502
/* 000082 0x809C08A8 24C6324C */ addiu	$a2, $a2, 12876
/* 000083 0x809C08AC 8FA40024 */ lw	$a0, 0X24($sp)
/* 000084 0x809C08B0 0C032B8D */ jal	BgCheck3_LoadMesh
/* 000085 0x809C08B4 02002825 */ move	$a1, $s0
/* 000086 0x809C08B8 820F015C */ lb	$t7, 0X15C($s0)
/* 000087 0x809C08BC 3C18809C */ lui	$t8, %hi(func_809C0F3C)
/* 000088 0x809C08C0 27180F3C */ addiu	$t8, $t8, %lo(func_809C0F3C)
/* 000089 0x809C08C4 AE18013C */ sw	$t8, 0X13C($s0)
/* 000090 0x809C08C8 A20F001E */ sb	$t7, 0X1E($s0)
.L_809C08CC:
/* 000091 0x809C08CC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000092 0x809C08D0 8FB00018 */ lw	$s0, 0X18($sp)
/* 000093 0x809C08D4 27BD0020 */ addiu	$sp, $sp, 32
/* 000094 0x809C08D8 03E00008 */ jr	$ra
/* 000095 0x809C08DC 00000000 */ nop

glabel func_809C08E0
/* 000096 0x809C08E0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000097 0x809C08E4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000098 0x809C08E8 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000099 0x809C08EC 00803825 */ move	$a3, $a0
/* 000100 0x809C08F0 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000101 0x809C08F4 0C048CF9 */ jal	func_801233E4
/* 000102 0x809C08F8 AFA70018 */ sw	$a3, 0X18($sp)
/* 000103 0x809C08FC 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000104 0x809C0900 14400023 */ bnez	$v0, .L_809C0990
/* 000105 0x809C0904 8FA70018 */ lw	$a3, 0X18($sp)
/* 000106 0x809C0908 3C0141F0 */ lui	$at, 0x41F0
/* 000107 0x809C090C 44812000 */ mtc1	$at, $f4
/* 000108 0x809C0910 C4E60098 */ lwc1	$f6, 0X98($a3)
/* 000109 0x809C0914 3C014120 */ lui	$at, 0x4120
/* 000110 0x809C0918 4604303E */ c.le.s	$f6, $f4
/* 000111 0x809C091C 00000000 */ nop
/* 000112 0x809C0920 4502001C */ bc1fl .L_809C0994
/* 000113 0x809C0924 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000114 0x809C0928 44814000 */ mtc1	$at, $f8
/* 000115 0x809C092C C4EA009C */ lwc1	$f10, 0X9C($a3)
/* 000116 0x809C0930 4608503E */ c.le.s	$f10, $f8
/* 000117 0x809C0934 00000000 */ nop
/* 000118 0x809C0938 45020016 */ bc1fl .L_809C0994
/* 000119 0x809C093C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000120 0x809C0940 84EE001C */ lh	$t6, 0X1C($a3)
/* 000121 0x809C0944 00002825 */ move	$a1, $zero
/* 000122 0x809C0948 2406000F */ li	$a2, 15
/* 000123 0x809C094C 05C1000A */ bgez	$t6, .L_809C0978
/* 000124 0x809C0950 00000000 */ nop
/* 000125 0x809C0954 00002825 */ move	$a1, $zero
/* 000126 0x809C0958 24060051 */ li	$a2, 81
/* 000127 0x809C095C 0C02DCA6 */ jal	func_800B7298
/* 000128 0x809C0960 AFA70018 */ sw	$a3, 0X18($sp)
/* 000129 0x809C0964 8FA70018 */ lw	$a3, 0X18($sp)
/* 000130 0x809C0968 3C0F809C */ lui	$t7, %hi(func_809C0E30)
/* 000131 0x809C096C 25EF0E30 */ addiu	$t7, $t7, %lo(func_809C0E30)
/* 000132 0x809C0970 10000007 */ b	.L_809C0990
/* 000133 0x809C0974 ACEF0160 */ sw	$t7, 0X160($a3)
.L_809C0978:
/* 000134 0x809C0978 0C02DCA6 */ jal	func_800B7298
/* 000135 0x809C097C AFA70018 */ sw	$a3, 0X18($sp)
/* 000136 0x809C0980 8FA70018 */ lw	$a3, 0X18($sp)
/* 000137 0x809C0984 3C18809C */ lui	$t8, %hi(func_809C0AB4)
/* 000138 0x809C0988 27180AB4 */ addiu	$t8, $t8, %lo(func_809C0AB4)
/* 000139 0x809C098C ACF80160 */ sw	$t8, 0X160($a3)
.L_809C0990:
/* 000140 0x809C0990 8FBF0014 */ lw	$ra, 0X14($sp)
.L_809C0994:
/* 000141 0x809C0994 27BD0018 */ addiu	$sp, $sp, 24
/* 000142 0x809C0998 03E00008 */ jr	$ra
/* 000143 0x809C099C 00000000 */ nop

glabel func_809C09A0
/* 000144 0x809C09A0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000145 0x809C09A4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000146 0x809C09A8 AFA40018 */ sw	$a0, 0X18($sp)
/* 000147 0x809C09AC 00A03825 */ move	$a3, $a1
/* 000148 0x809C09B0 8FA40018 */ lw	$a0, 0X18($sp)
/* 000149 0x809C09B4 00E02825 */ move	$a1, $a3
/* 000150 0x809C09B8 0C02E1C6 */ jal	func_800B8718
/* 000151 0x809C09BC AFA7001C */ sw	$a3, 0X1C($sp)
/* 000152 0x809C09C0 1040000F */ beqz	$v0, .L_809C0A00
/* 000153 0x809C09C4 8FA7001C */ lw	$a3, 0X1C($sp)
/* 000154 0x809C09C8 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000155 0x809C09CC 3C05809C */ lui	$a1, %hi(D_809C1000)
/* 000156 0x809C09D0 00E02025 */ move	$a0, $a3
/* 000157 0x809C09D4 85CF001C */ lh	$t7, 0X1C($t6)
/* 000158 0x809C09D8 000FC183 */ sra	$t8, $t7, 6
/* 000159 0x809C09DC 3319000F */ andi	$t9, $t8, 0XF
/* 000160 0x809C09E0 00B92821 */ addu	$a1, $a1, $t9
/* 000161 0x809C09E4 0C05490D */ jal	func_80152434
/* 000162 0x809C09E8 90A51000 */ lbu	$a1, %lo(D_809C1000)($a1)
/* 000163 0x809C09EC 8FA90018 */ lw	$t1, 0X18($sp)
/* 000164 0x809C09F0 3C08809C */ lui	$t0, %hi(func_809C0A20)
/* 000165 0x809C09F4 25080A20 */ addiu	$t0, $t0, %lo(func_809C0A20)
/* 000166 0x809C09F8 10000005 */ b	.L_809C0A10
/* 000167 0x809C09FC AD280160 */ sw	$t0, 0X160($t1)
.L_809C0A00:
/* 000168 0x809C0A00 8FA40018 */ lw	$a0, 0X18($sp)
/* 000169 0x809C0A04 00E02825 */ move	$a1, $a3
/* 000170 0x809C0A08 0C02E201 */ jal	func_800B8804
/* 000171 0x809C0A0C 3C064248 */ lui	$a2, 0x4248
.L_809C0A10:
/* 000172 0x809C0A10 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000173 0x809C0A14 27BD0018 */ addiu	$sp, $sp, 24
/* 000174 0x809C0A18 03E00008 */ jr	$ra
/* 000175 0x809C0A1C 00000000 */ nop

glabel func_809C0A20
/* 000176 0x809C0A20 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000177 0x809C0A24 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000178 0x809C0A28 AFA40018 */ sw	$a0, 0X18($sp)
/* 000179 0x809C0A2C 00A03825 */ move	$a3, $a1
/* 000180 0x809C0A30 3C020001 */ lui	$v0, 0x0001
/* 000181 0x809C0A34 00471021 */ addu	$v0, $v0, $a3
/* 000182 0x809C0A38 94426932 */ lhu	$v0, 0X6932($v0)
/* 000183 0x809C0A3C 24010009 */ li	$at, 9
/* 000184 0x809C0A40 00E02025 */ move	$a0, $a3
/* 000185 0x809C0A44 1441000D */ bne	$v0, $at, .L_809C0A7C
/* 000186 0x809C0A48 00002825 */ move	$a1, $zero
/* 000187 0x809C0A4C 0C02DCA6 */ jal	func_800B7298
/* 000188 0x809C0A50 24060007 */ li	$a2, 7
/* 000189 0x809C0A54 8FAF0018 */ lw	$t7, 0X18($sp)
/* 000190 0x809C0A58 3C0E809C */ lui	$t6, %hi(func_809C0AB4)
/* 000191 0x809C0A5C 25CE0AB4 */ addiu	$t6, $t6, %lo(func_809C0AB4)
/* 000192 0x809C0A60 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 000193 0x809C0A64 ADEE0160 */ sw	$t6, 0X160($t7)
/* 000194 0x809C0A68 00022400 */ sll	$a0, $v0, 16
/* 000195 0x809C0A6C 0C03C7EF */ jal	ActorCutscene_Stop
/* 000196 0x809C0A70 00042403 */ sra	$a0, $a0, 16
/* 000197 0x809C0A74 1000000C */ b	.L_809C0AA8
/* 000198 0x809C0A78 8FBF0014 */ lw	$ra, 0X14($sp)
.L_809C0A7C:
/* 000199 0x809C0A7C 28410002 */ slti	$at, $v0, 2
/* 000200 0x809C0A80 14200008 */ bnez	$at, .L_809C0AA4
/* 000201 0x809C0A84 24180004 */ li	$t8, 4
/* 000202 0x809C0A88 3C010001 */ lui	$at, 0x0001
/* 000203 0x809C0A8C 00270821 */ addu	$at, $at, $a3
/* 000204 0x809C0A90 A4386932 */ sh	$t8, 0X6932($at)
/* 000205 0x809C0A94 8FA80018 */ lw	$t0, 0X18($sp)
/* 000206 0x809C0A98 3C19809C */ lui	$t9, %hi(func_809C09A0)
/* 000207 0x809C0A9C 273909A0 */ addiu	$t9, $t9, %lo(func_809C09A0)
/* 000208 0x809C0AA0 AD190160 */ sw	$t9, 0X160($t0)
.L_809C0AA4:
/* 000209 0x809C0AA4 8FBF0014 */ lw	$ra, 0X14($sp)
.L_809C0AA8:
/* 000210 0x809C0AA8 27BD0018 */ addiu	$sp, $sp, 24
/* 000211 0x809C0AAC 03E00008 */ jr	$ra
/* 000212 0x809C0AB0 00000000 */ nop

glabel func_809C0AB4
/* 000213 0x809C0AB4 27BDFF80 */ addiu	$sp, $sp, -128
/* 000214 0x809C0AB8 AFB00024 */ sw	$s0, 0X24($sp)
/* 000215 0x809C0ABC 00808025 */ move	$s0, $a0
/* 000216 0x809C0AC0 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000217 0x809C0AC4 AFB10028 */ sw	$s1, 0X28($sp)
/* 000218 0x809C0AC8 AFA50084 */ sw	$a1, 0X84($sp)
/* 000219 0x809C0ACC 8FAE0084 */ lw	$t6, 0X84($sp)
/* 000220 0x809C0AD0 3C010001 */ lui	$at, 0x0001
/* 000221 0x809C0AD4 34218000 */ ori	$at, $at, 0X8000
/* 000222 0x809C0AD8 01C14821 */ addu	$t1, $t6, $at
/* 000223 0x809C0ADC 852F07A4 */ lh	$t7, 0X7A4($t1)
/* 000224 0x809C0AE0 8DD11CCC */ lw	$s1, 0X1CCC($t6)
/* 000225 0x809C0AE4 05E2001A */ bltzl	$t7, .L_809C0B50
/* 000226 0x809C0AE8 44809000 */ mtc1	$zero, $f18
/* 000227 0x809C0AEC 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 000228 0x809C0AF0 AFA90034 */ sw	$t1, 0X34($sp)
/* 000229 0x809C0AF4 8FA90034 */ lw	$t1, 0X34($sp)
/* 000230 0x809C0AF8 852407A4 */ lh	$a0, 0X7A4($t1)
/* 000231 0x809C0AFC 50440014 */ beql	$v0, $a0, .L_809C0B50
/* 000232 0x809C0B00 44809000 */ mtc1	$zero, $f18
/* 000233 0x809C0B04 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000234 0x809C0B08 AFA90034 */ sw	$t1, 0X34($sp)
/* 000235 0x809C0B0C 14400005 */ bnez	$v0, .L_809C0B24
/* 000236 0x809C0B10 8FA90034 */ lw	$t1, 0X34($sp)
/* 000237 0x809C0B14 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000238 0x809C0B18 852407A4 */ lh	$a0, 0X7A4($t1)
/* 000239 0x809C0B1C 100000C0 */ b	.L_809C0E20
/* 000240 0x809C0B20 8FBF002C */ lw	$ra, 0X2C($sp)
.L_809C0B24:
/* 000241 0x809C0B24 852407A4 */ lh	$a0, 0X7A4($t1)
/* 000242 0x809C0B28 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000243 0x809C0B2C 02002825 */ move	$a1, $s0
/* 000244 0x809C0B30 02202025 */ move	$a0, $s1
/* 000245 0x809C0B34 0C02E396 */ jal	func_800B8E58
/* 000246 0x809C0B38 240509A7 */ li	$a1, 2471
/* 000247 0x809C0B3C 0C05959B */ jal	func_8016566C
/* 000248 0x809C0B40 00002025 */ move	$a0, $zero
/* 000249 0x809C0B44 100000B6 */ b	.L_809C0E20
/* 000250 0x809C0B48 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000251 0x809C0B4C 44809000 */ mtc1	$zero, $f18
.L_809C0B50:
/* 000252 0x809C0B50 3C013F80 */ lui	$at, 0x3F80
/* 000253 0x809C0B54 C6100024 */ lwc1	$f16, 0X24($s0)
/* 000254 0x809C0B58 C6240024 */ lwc1	$f4, 0X24($s1)
/* 000255 0x809C0B5C C626002C */ lwc1	$f6, 0X2C($s1)
/* 000256 0x809C0B60 C608002C */ lwc1	$f8, 0X2C($s0)
/* 000257 0x809C0B64 46102301 */ sub.s	$f12, $f4, $f16
/* 000258 0x809C0B68 46083381 */ sub.s	$f14, $f6, $f8
/* 000259 0x809C0B6C 460C6282 */ mul.s	$f10, $f12, $f12
/* 000260 0x809C0B70 00000000 */ nop
/* 000261 0x809C0B74 460E7102 */ mul.s	$f4, $f14, $f14
/* 000262 0x809C0B78 46045000 */ add.s	$f0, $f10, $f4
/* 000263 0x809C0B7C 46000004 */ sqrt.s	$f0, $f0
/* 000264 0x809C0B80 46120032 */ c.eq.s	$f0, $f18
/* 000265 0x809C0B84 46000086 */ mov.s	$f2, $f0
/* 000266 0x809C0B88 4501000A */ bc1t .L_809C0BB4
/* 000267 0x809C0B8C 00000000 */ nop
/* 000268 0x809C0B90 44813000 */ mtc1	$at, $f6
/* 000269 0x809C0B94 00000000 */ nop
/* 000270 0x809C0B98 46060201 */ sub.s	$f8, $f0, $f6
/* 000271 0x809C0B9C 46004083 */ div.s	$f2, $f8, $f0
/* 000272 0x809C0BA0 4612103C */ c.lt.s	$f2, $f18
/* 000273 0x809C0BA4 00000000 */ nop
/* 000274 0x809C0BA8 45000002 */ bc1f .L_809C0BB4
/* 000275 0x809C0BAC 00000000 */ nop
/* 000276 0x809C0BB0 46009086 */ mov.s	$f2, $f18
.L_809C0BB4:
/* 000277 0x809C0BB4 46026282 */ mul.s	$f10, $f12, $f2
/* 000278 0x809C0BB8 2604015E */ addiu	$a0, $s0, 350
/* 000279 0x809C0BBC 24052710 */ li	$a1, 10000
/* 000280 0x809C0BC0 46027202 */ mul.s	$f8, $f14, $f2
/* 000281 0x809C0BC4 240600C8 */ li	$a2, 200
/* 000282 0x809C0BC8 460A8100 */ add.s	$f4, $f16, $f10
/* 000283 0x809C0BCC E6240024 */ swc1	$f4, 0X24($s1)
/* 000284 0x809C0BD0 C606002C */ lwc1	$f6, 0X2C($s0)
/* 000285 0x809C0BD4 46083280 */ add.s	$f10, $f6, $f8
/* 000286 0x809C0BD8 E62A002C */ swc1	$f10, 0X2C($s1)
/* 000287 0x809C0BDC 0C03FBCB */ jal	Lib_StepTowardsCheck_s
/* 000288 0x809C0BE0 AFA90034 */ sw	$t1, 0X34($sp)
/* 000289 0x809C0BE4 1040005C */ beqz	$v0, .L_809C0D58
/* 000290 0x809C0BE8 8FA90034 */ lw	$t1, 0X34($sp)
/* 000291 0x809C0BEC 8E380A74 */ lw	$t8, 0XA74($s1)
/* 000292 0x809C0BF0 3C01BF00 */ lui	$at, 0xBF00
/* 000293 0x809C0BF4 44812000 */ mtc1	$at, $f4
/* 000294 0x809C0BF8 37190001 */ ori	$t9, $t8, 0X1
/* 000295 0x809C0BFC AE390A74 */ sw	$t9, 0XA74($s1)
/* 000296 0x809C0C00 3C01C2A0 */ lui	$at, 0xC2A0
/* 000297 0x809C0C04 E6240074 */ swc1	$f4, 0X74($s1)
/* 000298 0x809C0C08 C606009C */ lwc1	$f6, 0X9C($s0)
/* 000299 0x809C0C0C 44814000 */ mtc1	$at, $f8
/* 000300 0x809C0C10 00000000 */ nop
/* 000301 0x809C0C14 4608303C */ c.lt.s	$f6, $f8
/* 000302 0x809C0C18 00000000 */ nop
/* 000303 0x809C0C1C 4502004F */ bc1fl .L_809C0D5C
/* 000304 0x809C0C20 862F00BE */ lh	$t7, 0XBE($s1)
/* 000305 0x809C0C24 860B001C */ lh	$t3, 0X1C($s0)
/* 000306 0x809C0C28 316C003F */ andi	$t4, $t3, 0X3F
/* 000307 0x809C0C2C AFAC0058 */ sw	$t4, 0X58($sp)
/* 000308 0x809C0C30 AFAC0068 */ sw	$t4, 0X68($sp)
/* 000309 0x809C0C34 860E0030 */ lh	$t6, 0X30($s0)
/* 000310 0x809C0C38 AFAE005C */ sw	$t6, 0X5C($sp)
/* 000311 0x809C0C3C 860F0032 */ lh	$t7, 0X32($s0)
/* 000312 0x809C0C40 AFAF0060 */ sw	$t7, 0X60($sp)
/* 000313 0x809C0C44 86180034 */ lh	$t8, 0X34($s0)
/* 000314 0x809C0C48 AFB80064 */ sw	$t8, 0X64($sp)
/* 000315 0x809C0C4C 8E19013C */ lw	$t9, 0X13C($s0)
/* 000316 0x809C0C50 53200004 */ beqzl	$t9, .L_809C0C64
/* 000317 0x809C0C54 9223014B */ lbu	$v1, 0X14B($s1)
/* 000318 0x809C0C58 10000002 */ b	.L_809C0C64
/* 000319 0x809C0C5C 00001825 */ move	$v1, $zero
/* 000320 0x809C0C60 9223014B */ lbu	$v1, 0X14B($s1)
.L_809C0C64:
/* 000321 0x809C0C64 00035880 */ sll	$t3, $v1, 2
/* 000322 0x809C0C68 03AB4021 */ addu	$t0, $sp, $t3
/* 000323 0x809C0C6C 8D080058 */ lw	$t0, 0X58($t0)
/* 000324 0x809C0C70 8D2C0850 */ lw	$t4, 0X850($t1)
/* 000325 0x809C0C74 3C0A801F */ lui	$t2, %hi(gSaveContext)
/* 000326 0x809C0C78 00086900 */ sll	$t5, $t0, 4
/* 000327 0x809C0C7C 018D1021 */ addu	$v0, $t4, $t5
/* 000328 0x809C0C80 844E0002 */ lh	$t6, 0X2($v0)
/* 000329 0x809C0C84 240103C0 */ li	$at, 960
/* 000330 0x809C0C88 8D4AF670 */ lw	$t2, %lo(gSaveContext)($t2)
/* 000331 0x809C0C8C 448E5000 */ mtc1	$t6, $f10
/* 000332 0x809C0C90 240308FF */ li	$v1, 2303
/* 000333 0x809C0C94 46805120 */ cvt.s.w	$f4, $f10
/* 000334 0x809C0C98 E7A40044 */ swc1	$f4, 0X44($sp)
/* 000335 0x809C0C9C 844F0004 */ lh	$t7, 0X4($v0)
/* 000336 0x809C0CA0 448F3000 */ mtc1	$t7, $f6
/* 000337 0x809C0CA4 00000000 */ nop
/* 000338 0x809C0CA8 46803220 */ cvt.s.w	$f8, $f6
/* 000339 0x809C0CAC E7A80048 */ swc1	$f8, 0X48($sp)
/* 000340 0x809C0CB0 84580006 */ lh	$t8, 0X6($v0)
/* 000341 0x809C0CB4 44985000 */ mtc1	$t8, $f10
/* 000342 0x809C0CB8 00000000 */ nop
/* 000343 0x809C0CBC 46805120 */ cvt.s.w	$f4, $f10
/* 000344 0x809C0CC0 E7A4004C */ swc1	$f4, 0X4C($sp)
/* 000345 0x809C0CC4 8619001C */ lh	$t9, 0X1C($s0)
/* 000346 0x809C0CC8 332B03C0 */ andi	$t3, $t9, 0X3C0
/* 000347 0x809C0CCC 15610003 */ bne	$t3, $at, .L_809C0CDC
/* 000348 0x809C0CD0 00000000 */ nop
/* 000349 0x809C0CD4 10000001 */ b	.L_809C0CDC
/* 000350 0x809C0CD8 240309FF */ li	$v1, 2559
.L_809C0CDC:
/* 000351 0x809C0CDC 8D2C085C */ lw	$t4, 0X85C($t1)
/* 000352 0x809C0CE0 00086840 */ sll	$t5, $t0, 1
/* 000353 0x809C0CE4 27AF0044 */ addiu	$t7, $sp, 68
/* 000354 0x809C0CE8 018D7021 */ addu	$t6, $t4, $t5
/* 000355 0x809C0CEC 91C70001 */ lbu	$a3, 0X1($t6)
/* 000356 0x809C0CF0 AFAF0014 */ sw	$t7, 0X14($sp)
/* 000357 0x809C0CF4 AFA30010 */ sw	$v1, 0X10($sp)
/* 000358 0x809C0CF8 8458000A */ lh	$t8, 0XA($v0)
/* 000359 0x809C0CFC 3C014334 */ lui	$at, 0x4334
/* 000360 0x809C0D00 44815000 */ mtc1	$at, $f10
/* 000361 0x809C0D04 0018C9C3 */ sra	$t9, $t8, 7
/* 000362 0x809C0D08 332B01FF */ andi	$t3, $t9, 0X1FF
/* 000363 0x809C0D0C 448B3000 */ mtc1	$t3, $f6
/* 000364 0x809C0D10 3C014700 */ lui	$at, 0x4700
/* 000365 0x809C0D14 8FA40084 */ lw	$a0, 0X84($sp)
/* 000366 0x809C0D18 46803220 */ cvt.s.w	$f8, $f6
/* 000367 0x809C0D1C 44813000 */ mtc1	$at, $f6
/* 000368 0x809C0D20 00002825 */ move	$a1, $zero
/* 000369 0x809C0D24 3146FFFF */ andi	$a2, $t2, 0XFFFF
/* 000370 0x809C0D28 460A4103 */ div.s	$f4, $f8, $f10
/* 000371 0x809C0D2C 46062202 */ mul.s	$f8, $f4, $f6
/* 000372 0x809C0D30 4600428D */ trunc.w.s	$f10, $f8
/* 000373 0x809C0D34 440D5000 */ mfc1	$t5, $f10
/* 000374 0x809C0D38 0C05A773 */ jal	func_80169DCC
/* 000375 0x809C0D3C AFAD0018 */ sw	$t5, 0X18($sp)
/* 000376 0x809C0D40 0C05A7BF */ jal	func_80169EFC
/* 000377 0x809C0D44 8FA40084 */ lw	$a0, 0X84($sp)
/* 000378 0x809C0D48 240EFFFB */ li	$t6, -5
/* 000379 0x809C0D4C 3C01801F */ lui	$at, %hi(gSaveContext + 0x3CB0)
/* 000380 0x809C0D50 0C0595A4 */ jal	func_80165690
/* 000381 0x809C0D54 AC2E3320 */ sw	$t6, %lo(gSaveContext + 0x3CB0)($at)
.L_809C0D58:
/* 000382 0x809C0D58 862F00BE */ lh	$t7, 0XBE($s1)
.L_809C0D5C:
/* 000383 0x809C0D5C 8618015E */ lh	$t8, 0X15E($s0)
/* 000384 0x809C0D60 01F8C821 */ addu	$t9, $t7, $t8
/* 000385 0x809C0D64 A63900BE */ sh	$t9, 0XBE($s1)
/* 000386 0x809C0D68 8602015E */ lh	$v0, 0X15E($s0)
/* 000387 0x809C0D6C 2442F060 */ addiu	$v0, $v0, -4000
/* 000388 0x809C0D70 04430003 */ bgezl	$v0, .L_809C0D80
/* 000389 0x809C0D74 44822000 */ mtc1	$v0, $f4
/* 000390 0x809C0D78 00001025 */ move	$v0, $zero
/* 000391 0x809C0D7C 44822000 */ mtc1	$v0, $f4
.L_809C0D80:
/* 000392 0x809C0D80 3C01809C */ lui	$at, %hi(D_809C1010)
/* 000393 0x809C0D84 C4281010 */ lwc1	$f8, %lo(D_809C1010)($at)
/* 000394 0x809C0D88 468021A0 */ cvt.s.w	$f6, $f4
/* 000395 0x809C0D8C 24040001 */ li	$a0, 1
/* 000396 0x809C0D90 3C014F00 */ lui	$at, 0x4F00
/* 000397 0x809C0D94 46083282 */ mul.s	$f10, $f6, $f8
/* 000398 0x809C0D98 444BF800 */ cfc1	$t3, $31
/* 000399 0x809C0D9C 44C4F800 */ ctc1	$a0, $31
/* 000400 0x809C0DA0 00000000 */ nop
/* 000401 0x809C0DA4 46005124 */ cvt.w.s	$f4, $f10
/* 000402 0x809C0DA8 4444F800 */ cfc1	$a0, $31
/* 000403 0x809C0DAC 00000000 */ nop
/* 000404 0x809C0DB0 30840078 */ andi	$a0, $a0, 0X78
/* 000405 0x809C0DB4 50800013 */ beqzl	$a0, .L_809C0E04
/* 000406 0x809C0DB8 44042000 */ mfc1	$a0, $f4
/* 000407 0x809C0DBC 44812000 */ mtc1	$at, $f4
/* 000408 0x809C0DC0 24040001 */ li	$a0, 1
/* 000409 0x809C0DC4 46045101 */ sub.s	$f4, $f10, $f4
/* 000410 0x809C0DC8 44C4F800 */ ctc1	$a0, $31
/* 000411 0x809C0DCC 00000000 */ nop
/* 000412 0x809C0DD0 46002124 */ cvt.w.s	$f4, $f4
/* 000413 0x809C0DD4 4444F800 */ cfc1	$a0, $31
/* 000414 0x809C0DD8 00000000 */ nop
/* 000415 0x809C0DDC 30840078 */ andi	$a0, $a0, 0X78
/* 000416 0x809C0DE0 14800005 */ bnez	$a0, .L_809C0DF8
/* 000417 0x809C0DE4 00000000 */ nop
/* 000418 0x809C0DE8 44042000 */ mfc1	$a0, $f4
/* 000419 0x809C0DEC 3C018000 */ lui	$at, 0x8000
/* 000420 0x809C0DF0 10000007 */ b	.L_809C0E10
/* 000421 0x809C0DF4 00812025 */ or	$a0, $a0, $at
.L_809C0DF8:
/* 000422 0x809C0DF8 10000005 */ b	.L_809C0E10
/* 000423 0x809C0DFC 2404FFFF */ li	$a0, -1
/* 000424 0x809C0E00 44042000 */ mfc1	$a0, $f4
.L_809C0E04:
/* 000425 0x809C0E04 00000000 */ nop
/* 000426 0x809C0E08 0480FFFB */ bltz	$a0, .L_809C0DF8
/* 000427 0x809C0E0C 00000000 */ nop
.L_809C0E10:
/* 000428 0x809C0E10 44CBF800 */ ctc1	$t3, $31
/* 000429 0x809C0E14 0C059596 */ jal	func_80165658
/* 000430 0x809C0E18 00000000 */ nop
/* 000431 0x809C0E1C 8FBF002C */ lw	$ra, 0X2C($sp)
.L_809C0E20:
/* 000432 0x809C0E20 8FB00024 */ lw	$s0, 0X24($sp)
/* 000433 0x809C0E24 8FB10028 */ lw	$s1, 0X28($sp)
/* 000434 0x809C0E28 03E00008 */ jr	$ra
/* 000435 0x809C0E2C 27BD0080 */ addiu	$sp, $sp, 128

glabel func_809C0E30
/* 000436 0x809C0E30 27BDFFE0 */ addiu	$sp, $sp, -32
/* 000437 0x809C0E34 AFB00018 */ sw	$s0, 0X18($sp)
/* 000438 0x809C0E38 00808025 */ move	$s0, $a0
/* 000439 0x809C0E3C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000440 0x809C0E40 AFA50024 */ sw	$a1, 0X24($sp)
/* 000441 0x809C0E44 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 000442 0x809C0E48 00000000 */ nop
/* 000443 0x809C0E4C 82040038 */ lb	$a0, 0X38($s0)
/* 000444 0x809C0E50 5044000C */ beql	$v0, $a0, .L_809C0E84
/* 000445 0x809C0E54 8602015E */ lh	$v0, 0X15E($s0)
/* 000446 0x809C0E58 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000447 0x809C0E5C 00000000 */ nop
/* 000448 0x809C0E60 10400005 */ beqz	$v0, .L_809C0E78
/* 000449 0x809C0E64 02002825 */ move	$a1, $s0
/* 000450 0x809C0E68 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000451 0x809C0E6C 82040038 */ lb	$a0, 0X38($s0)
/* 000452 0x809C0E70 10000004 */ b	.L_809C0E84
/* 000453 0x809C0E74 8602015E */ lh	$v0, 0X15E($s0)
.L_809C0E78:
/* 000454 0x809C0E78 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000455 0x809C0E7C 82040038 */ lb	$a0, 0X38($s0)
/* 000456 0x809C0E80 8602015E */ lh	$v0, 0X15E($s0)
.L_809C0E84:
/* 000457 0x809C0E84 3C0F0002 */ lui	$t7, 0x0002
/* 000458 0x809C0E88 3843000A */ xori	$v1, $v0, 0XA
/* 000459 0x809C0E8C 2C630001 */ sltiu	$v1, $v1, 1
/* 000460 0x809C0E90 244E0001 */ addiu	$t6, $v0, 1
/* 000461 0x809C0E94 1060001B */ beqz	$v1, .L_809C0F04
/* 000462 0x809C0E98 A60E015E */ sh	$t6, 0X15E($s0)
/* 000463 0x809C0E9C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000464 0x809C0EA0 8618001C */ lh	$t8, 0X1C($s0)
/* 000465 0x809C0EA4 3C010002 */ lui	$at, 0x0002
/* 000466 0x809C0EA8 01E47821 */ addu	$t7, $t7, $a0
/* 000467 0x809C0EAC 8DEF8860 */ lw	$t7, -0X77A0($t7)
/* 000468 0x809C0EB0 3319003F */ andi	$t9, $t8, 0X3F
/* 000469 0x809C0EB4 00194040 */ sll	$t0, $t9, 1
/* 000470 0x809C0EB8 01E84821 */ addu	$t1, $t7, $t0
/* 000471 0x809C0EBC 952A0000 */ lhu	$t2, 0X0($t1)
/* 000472 0x809C0EC0 00240821 */ addu	$at, $at, $a0
/* 000473 0x809C0EC4 0C04C1A9 */ jal	func_801306A4
/* 000474 0x809C0EC8 A42A887A */ sh	$t2, -0X7786($at)
/* 000475 0x809C0ECC 8FAC0024 */ lw	$t4, 0X24($sp)
/* 000476 0x809C0ED0 3C010002 */ lui	$at, 0x0002
/* 000477 0x809C0ED4 240B0014 */ li	$t3, 20
/* 000478 0x809C0ED8 002C0821 */ addu	$at, $at, $t4
/* 000479 0x809C0EDC A02B8875 */ sb	$t3, -0X778B($at)
/* 000480 0x809C0EE0 0C067C4A */ jal	func_8019F128
/* 000481 0x809C0EE4 24045805 */ li	$a0, 22533
/* 000482 0x809C0EE8 0C069016 */ jal	func_801A4058
/* 000483 0x809C0EEC 24040005 */ li	$a0, 5
/* 000484 0x809C0EF0 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000485 0x809C0EF4 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000486 0x809C0EF8 240300FF */ li	$v1, 255
/* 000487 0x809C0EFC A0433F16 */ sb	$v1, 0X3F16($v0)
/* 000488 0x809C0F00 A0433F17 */ sb	$v1, 0X3F17($v0)
.L_809C0F04:
/* 000489 0x809C0F04 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000490 0x809C0F08 8FB00018 */ lw	$s0, 0X18($sp)
/* 000491 0x809C0F0C 27BD0020 */ addiu	$sp, $sp, 32
/* 000492 0x809C0F10 03E00008 */ jr	$ra
/* 000493 0x809C0F14 00000000 */ nop

glabel EnWarptag_Update
/* 000494 0x809C0F18 27BDFFE8 */ addiu	$sp, $sp, -24
/* 000495 0x809C0F1C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000496 0x809C0F20 8C990160 */ lw	$t9, 0X160($a0)
/* 000497 0x809C0F24 0320F809 */ jalr	$t9
/* 000498 0x809C0F28 00000000 */ nop
/* 000499 0x809C0F2C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000500 0x809C0F30 27BD0018 */ addiu	$sp, $sp, 24
/* 000501 0x809C0F34 03E00008 */ jr	$ra
/* 000502 0x809C0F38 00000000 */ nop

glabel func_809C0F3C
/* 000503 0x809C0F3C 27BDFFD0 */ addiu	$sp, $sp, -48
/* 000504 0x809C0F40 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000505 0x809C0F44 AFB00018 */ sw	$s0, 0X18($sp)
/* 000506 0x809C0F48 AFA40030 */ sw	$a0, 0X30($sp)
/* 000507 0x809C0F4C AFA50034 */ sw	$a1, 0X34($sp)
/* 000508 0x809C0F50 8FAE0034 */ lw	$t6, 0X34($sp)
/* 000509 0x809C0F54 8DC40000 */ lw	$a0, 0X0($t6)
/* 000510 0x809C0F58 0C04B0A3 */ jal	func_8012C28C
/* 000511 0x809C0F5C 00808025 */ move	$s0, $a0
/* 000512 0x809C0F60 3C040502 */ lui	$a0, 0x0502
/* 000513 0x809C0F64 0C040141 */ jal	Lib_PtrSegToVirt
/* 000514 0x809C0F68 24843008 */ addiu	$a0, $a0, 12296
/* 000515 0x809C0F6C 8FA40034 */ lw	$a0, 0X34($sp)
/* 000516 0x809C0F70 0C04C5D6 */ jal	SceneProc_DrawAllSceneAnimatedTextures
/* 000517 0x809C0F74 00402825 */ move	$a1, $v0
/* 000518 0x809C0F78 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 000519 0x809C0F7C 3C18DA38 */ lui	$t8, 0xDA38
/* 000520 0x809C0F80 37180003 */ ori	$t8, $t8, 0X3
/* 000521 0x809C0F84 244F0008 */ addiu	$t7, $v0, 8
/* 000522 0x809C0F88 AE0F02B0 */ sw	$t7, 0X2B0($s0)
/* 000523 0x809C0F8C AC580000 */ sw	$t8, 0X0($v0)
/* 000524 0x809C0F90 8FB90034 */ lw	$t9, 0X34($sp)
/* 000525 0x809C0F94 8F240000 */ lw	$a0, 0X0($t9)
/* 000526 0x809C0F98 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000527 0x809C0F9C AFA20024 */ sw	$v0, 0X24($sp)
/* 000528 0x809C0FA0 8FA30024 */ lw	$v1, 0X24($sp)
/* 000529 0x809C0FA4 3C09DE00 */ lui	$t1, 0xDE00
/* 000530 0x809C0FA8 AC620004 */ sw	$v0, 0X4($v1)
/* 000531 0x809C0FAC 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 000532 0x809C0FB0 3C0A0502 */ lui	$t2, 0x0502
/* 000533 0x809C0FB4 254A1EF0 */ addiu	$t2, $t2, 7920
/* 000534 0x809C0FB8 24480008 */ addiu	$t0, $v0, 8
/* 000535 0x809C0FBC AE0802B0 */ sw	$t0, 0X2B0($s0)
/* 000536 0x809C0FC0 AC4A0004 */ sw	$t2, 0X4($v0)
/* 000537 0x809C0FC4 AC490000 */ sw	$t1, 0X0($v0)
/* 000538 0x809C0FC8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000539 0x809C0FCC 8FB00018 */ lw	$s0, 0X18($sp)
/* 000540 0x809C0FD0 27BD0030 */ addiu	$sp, $sp, 48
/* 000541 0x809C0FD4 03E00008 */ jr	$ra
/* 000542 0x809C0FD8 00000000 */ nop
/* 000543 0x809C0FDC 00000000 */ nop
