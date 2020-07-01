.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel ObjShutter_Init
/* 000000 0x80A37ED0 AFA40000 */ sw	$a0, 0X0($sp)
/* 000001 0x80A37ED4 AFA50004 */ sw	$a1, 0X4($sp)
/* 000002 0x80A37ED8 03E00008 */ jr	$ra
/* 000003 0x80A37EDC 00000000 */ nop

glabel ObjShutter_Destroy
/* 000004 0x80A37EE0 AFA40000 */ sw	$a0, 0X0($sp)
/* 000005 0x80A37EE4 AFA50004 */ sw	$a1, 0X4($sp)
/* 000006 0x80A37EE8 03E00008 */ jr	$ra
/* 000007 0x80A37EEC 00000000 */ nop

glabel ObjShutter_Update
/* 000008 0x80A37EF0 27BDFFC8 */ addiu	$sp, $sp, -56
/* 000009 0x80A37EF4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000010 0x80A37EF8 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000011 0x80A37EFC 00803825 */ move	$a3, $a0
/* 000012 0x80A37F00 3C0580A4 */ lui	$a1, %hi(D_80A38130)
/* 000013 0x80A37F04 24A58130 */ addiu	$a1, $a1, %lo(D_80A38130)
/* 000014 0x80A37F08 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000015 0x80A37F0C 27A60020 */ addiu	$a2, $sp, 32
/* 000016 0x80A37F10 0C04CC0E */ jal	func_80133038
/* 000017 0x80A37F14 AFA70038 */ sw	$a3, 0X38($sp)
/* 000018 0x80A37F18 93A20020 */ lbu	$v0, 0X20($sp)
/* 000019 0x80A37F1C 24010001 */ li	$at, 1
/* 000020 0x80A37F20 8FA70038 */ lw	$a3, 0X38($sp)
/* 000021 0x80A37F24 5441001C */ bnel	$v0, $at, .L_80A37F98
/* 000022 0x80A37F28 90F80144 */ lbu	$t8, 0X144($a3)
/* 000023 0x80A37F2C 90EE0144 */ lbu	$t6, 0X144($a3)
/* 000024 0x80A37F30 3C0142A0 */ lui	$at, 0x42A0
/* 000025 0x80A37F34 44811000 */ mtc1	$at, $f2
/* 000026 0x80A37F38 504E0005 */ beql	$v0, $t6, .L_80A37F50
/* 000027 0x80A37F3C C4E00148 */ lwc1	$f0, 0X148($a3)
/* 000028 0x80A37F40 44807000 */ mtc1	$zero, $f14
/* 000029 0x80A37F44 00000000 */ nop
/* 000030 0x80A37F48 E4EE0068 */ swc1	$f14, 0X68($a3)
/* 000031 0x80A37F4C C4E00148 */ lwc1	$f0, 0X148($a3)
.L_80A37F50:
/* 000032 0x80A37F50 44807000 */ mtc1	$zero, $f14
/* 000033 0x80A37F54 4600103E */ c.le.s	$f2, $f0
/* 000034 0x80A37F58 00000000 */ nop
/* 000035 0x80A37F5C 45030006 */ bc1tl .L_80A37F78
/* 000036 0x80A37F60 E4EE0068 */ swc1	$f14, 0X68($a3)
/* 000037 0x80A37F64 90EF0144 */ lbu	$t7, 0X144($a3)
/* 000038 0x80A37F68 3C014120 */ lui	$at, 0x4120
/* 000039 0x80A37F6C 55E00005 */ bnezl	$t7, .L_80A37F84
/* 000040 0x80A37F70 44812000 */ mtc1	$at, $f4
/* 000041 0x80A37F74 E4EE0068 */ swc1	$f14, 0X68($a3)
.L_80A37F78:
/* 000042 0x80A37F78 1000002B */ b	.L_80A38028
/* 000043 0x80A37F7C E4E20148 */ swc1	$f2, 0X148($a3)
/* 000044 0x80A37F80 44812000 */ mtc1	$at, $f4
.L_80A37F84:
/* 000045 0x80A37F84 00000000 */ nop
/* 000046 0x80A37F88 46040180 */ add.s	$f6, $f0, $f4
/* 000047 0x80A37F8C 10000026 */ b	.L_80A38028
/* 000048 0x80A37F90 E4E60148 */ swc1	$f6, 0X148($a3)
/* 000049 0x80A37F94 90F80144 */ lbu	$t8, 0X144($a3)
.L_80A37F98:
/* 000050 0x80A37F98 3C014040 */ lui	$at, 0x4040
/* 000051 0x80A37F9C 50580005 */ beql	$v0, $t8, .L_80A37FB4
/* 000052 0x80A37FA0 44807000 */ mtc1	$zero, $f14
/* 000053 0x80A37FA4 44807000 */ mtc1	$zero, $f14
/* 000054 0x80A37FA8 00000000 */ nop
/* 000055 0x80A37FAC E4EE0068 */ swc1	$f14, 0X68($a3)
/* 000056 0x80A37FB0 44807000 */ mtc1	$zero, $f14
.L_80A37FB4:
/* 000057 0x80A37FB4 C4E00148 */ lwc1	$f0, 0X148($a3)
/* 000058 0x80A37FB8 46007032 */ c.eq.s	$f14, $f0
/* 000059 0x80A37FBC 00000000 */ nop
/* 000060 0x80A37FC0 4503001A */ bc1tl .L_80A3802C
/* 000061 0x80A37FC4 93A90020 */ lbu	$t1, 0X20($sp)
/* 000062 0x80A37FC8 C4E80068 */ lwc1	$f8, 0X68($a3)
/* 000063 0x80A37FCC 44815000 */ mtc1	$at, $f10
/* 000064 0x80A37FD0 3C0180A4 */ lui	$at, %hi(D_80A38140)
/* 000065 0x80A37FD4 460A4401 */ sub.s	$f16, $f8, $f10
/* 000066 0x80A37FD8 E4F00068 */ swc1	$f16, 0X68($a3)
/* 000067 0x80A37FDC C4EC0068 */ lwc1	$f12, 0X68($a3)
/* 000068 0x80A37FE0 460C0480 */ add.s	$f18, $f0, $f12
/* 000069 0x80A37FE4 E4F20148 */ swc1	$f18, 0X148($a3)
/* 000070 0x80A37FE8 C4E40148 */ lwc1	$f4, 0X148($a3)
/* 000071 0x80A37FEC 460E203E */ c.le.s	$f4, $f14
/* 000072 0x80A37FF0 00000000 */ nop
/* 000073 0x80A37FF4 4502000D */ bc1fl .L_80A3802C
/* 000074 0x80A37FF8 93A90020 */ lbu	$t1, 0X20($sp)
/* 000075 0x80A37FFC C4268140 */ lwc1	$f6, %lo(D_80A38140)($at)
/* 000076 0x80A38000 46006005 */ abs.s	$f0, $f12
/* 000077 0x80A38004 46060082 */ mul.s	$f2, $f0, $f6
/* 000078 0x80A38008 4600120D */ trunc.w.s	$f8, $f2
/* 000079 0x80A3800C E4E20068 */ swc1	$f2, 0X68($a3)
/* 000080 0x80A38010 44084000 */ mfc1	$t0, $f8
/* 000081 0x80A38014 00000000 */ nop
/* 000082 0x80A38018 55000004 */ bnezl	$t0, .L_80A3802C
/* 000083 0x80A3801C 93A90020 */ lbu	$t1, 0X20($sp)
/* 000084 0x80A38020 E4EE0068 */ swc1	$f14, 0X68($a3)
/* 000085 0x80A38024 E4EE0148 */ swc1	$f14, 0X148($a3)
.L_80A38028:
/* 000086 0x80A38028 93A90020 */ lbu	$t1, 0X20($sp)
.L_80A3802C:
/* 000087 0x80A3802C A0E90144 */ sb	$t1, 0X144($a3)
/* 000088 0x80A38030 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000089 0x80A38034 03E00008 */ jr	$ra
/* 000090 0x80A38038 27BD0038 */ addiu	$sp, $sp, 56

glabel ObjShutter_Draw
/* 000091 0x80A3803C 27BDFFD0 */ addiu	$sp, $sp, -48
/* 000092 0x80A38040 AFB00018 */ sw	$s0, 0X18($sp)
/* 000093 0x80A38044 00808025 */ move	$s0, $a0
/* 000094 0x80A38048 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000095 0x80A3804C AFA50034 */ sw	$a1, 0X34($sp)
/* 000096 0x80A38050 C6040028 */ lwc1	$f4, 0X28($s0)
/* 000097 0x80A38054 C6060148 */ lwc1	$f6, 0X148($s0)
/* 000098 0x80A38058 C60C0024 */ lwc1	$f12, 0X24($s0)
/* 000099 0x80A3805C 8E06002C */ lw	$a2, 0X2C($s0)
/* 000100 0x80A38060 00003825 */ move	$a3, $zero
/* 000101 0x80A38064 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000102 0x80A38068 46062380 */ add.s	$f14, $f4, $f6
/* 000103 0x80A3806C 3C0180A4 */ lui	$at, %hi(D_80A38144)
/* 000104 0x80A38070 C42C8144 */ lwc1	$f12, %lo(D_80A38144)($at)
/* 000105 0x80A38074 24070001 */ li	$a3, 1
/* 000106 0x80A38078 44066000 */ mfc1	$a2, $f12
/* 000107 0x80A3807C 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000108 0x80A38080 46006386 */ mov.s	$f14, $f12
/* 000109 0x80A38084 86040032 */ lh	$a0, 0X32($s0)
/* 000110 0x80A38088 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000111 0x80A3808C 24050001 */ li	$a1, 1
/* 000112 0x80A38090 8FAE0034 */ lw	$t6, 0X34($sp)
/* 000113 0x80A38094 8DC40000 */ lw	$a0, 0X0($t6)
/* 000114 0x80A38098 0C04B0A3 */ jal	func_8012C28C
/* 000115 0x80A3809C 00808025 */ move	$s0, $a0
/* 000116 0x80A380A0 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 000117 0x80A380A4 3C18DA38 */ lui	$t8, 0xDA38
/* 000118 0x80A380A8 37180003 */ ori	$t8, $t8, 0X3
/* 000119 0x80A380AC 244F0008 */ addiu	$t7, $v0, 8
/* 000120 0x80A380B0 AE0F02B0 */ sw	$t7, 0X2B0($s0)
/* 000121 0x80A380B4 AC580000 */ sw	$t8, 0X0($v0)
/* 000122 0x80A380B8 8FB90034 */ lw	$t9, 0X34($sp)
/* 000123 0x80A380BC 8F240000 */ lw	$a0, 0X0($t9)
/* 000124 0x80A380C0 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000125 0x80A380C4 AFA20020 */ sw	$v0, 0X20($sp)
/* 000126 0x80A380C8 8FA30020 */ lw	$v1, 0X20($sp)
/* 000127 0x80A380CC 3C09DE00 */ lui	$t1, 0xDE00
/* 000128 0x80A380D0 AC620004 */ sw	$v0, 0X4($v1)
/* 000129 0x80A380D4 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 000130 0x80A380D8 3C0A0600 */ lui	$t2, 0x0600
/* 000131 0x80A380DC 254A11E0 */ addiu	$t2, $t2, 4576
/* 000132 0x80A380E0 24480008 */ addiu	$t0, $v0, 8
/* 000133 0x80A380E4 AE0802B0 */ sw	$t0, 0X2B0($s0)
/* 000134 0x80A380E8 AC4A0004 */ sw	$t2, 0X4($v0)
/* 000135 0x80A380EC AC490000 */ sw	$t1, 0X0($v0)
/* 000136 0x80A380F0 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000137 0x80A380F4 8FB00018 */ lw	$s0, 0X18($sp)
/* 000138 0x80A380F8 27BD0030 */ addiu	$sp, $sp, 48
/* 000139 0x80A380FC 03E00008 */ jr	$ra
/* 000140 0x80A38100 00000000 */ nop
/* 000141 0x80A38104 00000000 */ nop
/* 000142 0x80A38108 00000000 */ nop
/* 000143 0x80A3810C 00000000 */ nop
