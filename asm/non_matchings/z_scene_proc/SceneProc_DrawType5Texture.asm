glabel SceneProc_DrawType5Texture
/* 143024 0x80131580 27BDFFE0 */ addiu	$sp, $sp, -32
/* 143025 0x80131584 AFBF0014 */ sw	$ra, 0X14($sp)
/* 143026 0x80131588 AFA40020 */ sw	$a0, 0X20($sp)
/* 143027 0x8013158C AFA50024 */ sw	$a1, 0X24($sp)
/* 143028 0x80131590 AFA60028 */ sw	$a2, 0X28($sp)
/* 143029 0x80131594 8FAE0028 */ lw	$t6, 0X28($sp)
/* 143030 0x80131598 0C040141 */ jal	Lib_PtrSegToVirt
/* 143031 0x8013159C 8DC40004 */ lw	$a0, 0X4($t6)
/* 143032 0x801315A0 8FAF0028 */ lw	$t7, 0X28($sp)
/* 143033 0x801315A4 AFA20018 */ sw	$v0, 0X18($sp)
/* 143034 0x801315A8 0C040141 */ jal	Lib_PtrSegToVirt
/* 143035 0x801315AC 8DE40008 */ lw	$a0, 0X8($t7)
/* 143036 0x801315B0 8FB90028 */ lw	$t9, 0X28($sp)
/* 143037 0x801315B4 3C18801F */ lui	$t8, %hi(gSceneProcStep)
/* 143038 0x801315B8 8F185AA0 */ lw	$t8, %lo(gSceneProcStep)($t8)
/* 143039 0x801315BC 97280000 */ lhu	$t0, 0X0($t9)
/* 143040 0x801315C0 8FA90018 */ lw	$t1, 0X18($sp)
/* 143041 0x801315C4 0308001A */ div	$zero, $t8, $t0
/* 143042 0x801315C8 00001810 */ mfhi	$v1
/* 143043 0x801315CC 00435021 */ addu	$t2, $v0, $v1
/* 143044 0x801315D0 914B0000 */ lbu	$t3, 0X0($t2)
/* 143045 0x801315D4 15000002 */ bnez	$t0, .L_801315E0
/* 143046 0x801315D8 00000000 */ nop
/* 143047 0x801315DC 0007000D */ break	0x00007
.L_801315E0:
/* 143048 0x801315E0 2401FFFF */ li	$at, -1
/* 143049 0x801315E4 15010004 */ bne	$t0, $at, .L_801315F8
/* 143050 0x801315E8 3C018000 */ lui	$at, 0x8000
/* 143051 0x801315EC 17010002 */ bne	$t8, $at, .L_801315F8
/* 143052 0x801315F0 00000000 */ nop
/* 143053 0x801315F4 0006000D */ break	0x00006
.L_801315F8:
/* 143054 0x801315F8 000B6080 */ sll	$t4, $t3, 2
/* 143055 0x801315FC 012C6821 */ addu	$t5, $t1, $t4
/* 143056 0x80131600 0C040141 */ jal	Lib_PtrSegToVirt
/* 143057 0x80131604 8DA40000 */ lw	$a0, 0X0($t5)
/* 143058 0x80131608 3C05801F */ lui	$a1, %hi(gSceneProcFlags)
/* 143059 0x8013160C 8CA55AA4 */ lw	$a1, %lo(gSceneProcFlags)($a1)
/* 143060 0x80131610 8FAE0020 */ lw	$t6, 0X20($sp)
/* 143061 0x80131614 30AF0001 */ andi	$t7, $a1, 0X1
/* 143062 0x80131618 11E0000D */ beqz	$t7, .L_80131650
/* 143063 0x8013161C 8DC60000 */ lw	$a2, 0X0($t6)
/* 143064 0x80131620 8CC402B0 */ lw	$a0, 0X2B0($a2)
/* 143065 0x80131624 3C01DB06 */ lui	$at, 0xDB06
/* 143066 0x80131628 3C05801F */ lui	$a1, %hi(gSceneProcFlags)
/* 143067 0x8013162C 24990008 */ addiu	$t9, $a0, 8
/* 143068 0x80131630 ACD902B0 */ sw	$t9, 0X2B0($a2)
/* 143069 0x80131634 8FB80024 */ lw	$t8, 0X24($sp)
/* 143070 0x80131638 AC820004 */ sw	$v0, 0X4($a0)
/* 143071 0x8013163C 00184080 */ sll	$t0, $t8, 2
/* 143072 0x80131640 310AFFFF */ andi	$t2, $t0, 0XFFFF
/* 143073 0x80131644 01415825 */ or	$t3, $t2, $at
/* 143074 0x80131648 AC8B0000 */ sw	$t3, 0X0($a0)
/* 143075 0x8013164C 8CA55AA4 */ lw	$a1, %lo(gSceneProcFlags)($a1)
.L_80131650:
/* 143076 0x80131650 30A90002 */ andi	$t1, $a1, 0X2
/* 143077 0x80131654 1120000A */ beqz	$t1, .L_80131680
/* 143078 0x80131658 8FA50024 */ lw	$a1, 0X24($sp)
/* 143079 0x8013165C 00052880 */ sll	$a1, $a1, 2
/* 143080 0x80131660 30A5FFFF */ andi	$a1, $a1, 0XFFFF
/* 143081 0x80131664 3C01DB06 */ lui	$at, 0xDB06
/* 143082 0x80131668 00A12825 */ or	$a1, $a1, $at
/* 143083 0x8013166C 8CC402C0 */ lw	$a0, 0X2C0($a2)
/* 143084 0x80131670 248C0008 */ addiu	$t4, $a0, 8
/* 143085 0x80131674 ACCC02C0 */ sw	$t4, 0X2C0($a2)
/* 143086 0x80131678 AC820004 */ sw	$v0, 0X4($a0)
/* 143087 0x8013167C AC850000 */ sw	$a1, 0X0($a0)
.L_80131680:
/* 143088 0x80131680 8FBF0014 */ lw	$ra, 0X14($sp)
/* 143089 0x80131684 27BD0020 */ addiu	$sp, $sp, 32
/* 143090 0x80131688 03E00008 */ jr	$ra
/* 143091 0x8013168C 00000000 */ nop

