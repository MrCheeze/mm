.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel osStartThread
/* 021972 0x800957B0 27BDFFD8 */ addiu	$sp, $sp, -40
/* 021973 0x800957B4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 021974 0x800957B8 AFA40028 */ sw	$a0, 0X28($sp)
/* 021975 0x800957BC AFB10018 */ sw	$s1, 0X18($sp)
/* 021976 0x800957C0 0C024698 */ jal	__osDisableInt
/* 021977 0x800957C4 AFB00014 */ sw	$s0, 0X14($sp)
/* 021978 0x800957C8 8FAE0028 */ lw	$t6, 0X28($sp)
/* 021979 0x800957CC 24010001 */ li	$at, 1
/* 021980 0x800957D0 00408025 */ move	$s0, $v0
/* 021981 0x800957D4 95D10010 */ lhu	$s1, 0X10($t6)
/* 021982 0x800957D8 1221000C */ beq	$s1, $at, .L_8009580C
/* 021983 0x800957DC 24010008 */ li	$at, 8
/* 021984 0x800957E0 1621002A */ bne	$s1, $at, .L_8009588C
/* 021985 0x800957E4 00000000 */ nop
/* 021986 0x800957E8 8FB80028 */ lw	$t8, 0X28($sp)
/* 021987 0x800957EC 240F0002 */ li	$t7, 2
/* 021988 0x800957F0 3C048009 */ lui	$a0, %hi(__osRunQueue)
/* 021989 0x800957F4 A70F0010 */ sh	$t7, 0X10($t8)
/* 021990 0x800957F8 8FA50028 */ lw	$a1, 0X28($sp)
/* 021991 0x800957FC 0C022491 */ jal	__osEnqueueThread
/* 021992 0x80095800 24847E18 */ addiu	$a0, $a0, %lo(__osRunQueue)
/* 021993 0x80095804 10000021 */ b	.L_8009588C
/* 021994 0x80095808 00000000 */ nop
.L_8009580C:
/* 021995 0x8009580C 8FB90028 */ lw	$t9, 0X28($sp)
/* 021996 0x80095810 8F280008 */ lw	$t0, 0X8($t9)
/* 021997 0x80095814 11000005 */ beqz	$t0, .L_8009582C
/* 021998 0x80095818 00000000 */ nop
/* 021999 0x8009581C 3C098009 */ lui	$t1, %hi(__osRunQueue)
/* 022000 0x80095820 25297E18 */ addiu	$t1, $t1, %lo(__osRunQueue)
/* 022001 0x80095824 1509000A */ bne	$t0, $t1, .L_80095850
/* 022002 0x80095828 00000000 */ nop
.L_8009582C:
/* 022003 0x8009582C 8FAB0028 */ lw	$t3, 0X28($sp)
/* 022004 0x80095830 240A0002 */ li	$t2, 2
/* 022005 0x80095834 3C048009 */ lui	$a0, %hi(__osRunQueue)
/* 022006 0x80095838 A56A0010 */ sh	$t2, 0X10($t3)
/* 022007 0x8009583C 8FA50028 */ lw	$a1, 0X28($sp)
/* 022008 0x80095840 0C022491 */ jal	__osEnqueueThread
/* 022009 0x80095844 24847E18 */ addiu	$a0, $a0, %lo(__osRunQueue)
/* 022010 0x80095848 10000010 */ b	.L_8009588C
/* 022011 0x8009584C 00000000 */ nop
.L_80095850:
/* 022012 0x80095850 8FAD0028 */ lw	$t5, 0X28($sp)
/* 022013 0x80095854 240C0008 */ li	$t4, 8
/* 022014 0x80095858 A5AC0010 */ sh	$t4, 0X10($t5)
/* 022015 0x8009585C 8FAE0028 */ lw	$t6, 0X28($sp)
/* 022016 0x80095860 8DC40008 */ lw	$a0, 0X8($t6)
/* 022017 0x80095864 0C022491 */ jal	__osEnqueueThread
/* 022018 0x80095868 01C02825 */ move	$a1, $t6
/* 022019 0x8009586C 8FAF0028 */ lw	$t7, 0X28($sp)
/* 022020 0x80095870 0C0224A3 */ jal	__osPopThread
/* 022021 0x80095874 8DE40008 */ lw	$a0, 0X8($t7)
/* 022022 0x80095878 00408825 */ move	$s1, $v0
/* 022023 0x8009587C 3C048009 */ lui	$a0, %hi(__osRunQueue)
/* 022024 0x80095880 24847E18 */ addiu	$a0, $a0, %lo(__osRunQueue)
/* 022025 0x80095884 0C022491 */ jal	__osEnqueueThread
/* 022026 0x80095888 02202825 */ move	$a1, $s1
.L_8009588C:
/* 022027 0x8009588C 3C188009 */ lui	$t8, %hi(__osRunningThread)
/* 022028 0x80095890 8F187E20 */ lw	$t8, %lo(__osRunningThread)($t8)
/* 022029 0x80095894 17000005 */ bnez	$t8, .L_800958AC
/* 022030 0x80095898 00000000 */ nop
/* 022031 0x8009589C 0C0224A9 */ jal	__osDispatchThread
/* 022032 0x800958A0 00000000 */ nop
/* 022033 0x800958A4 1000000F */ b	.L_800958E4
/* 022034 0x800958A8 00000000 */ nop
.L_800958AC:
/* 022035 0x800958AC 3C198009 */ lui	$t9, %hi(__osRunningThread)
/* 022036 0x800958B0 3C098009 */ lui	$t1, %hi(__osRunQueue)
/* 022037 0x800958B4 8D297E18 */ lw	$t1, %lo(__osRunQueue)($t1)
/* 022038 0x800958B8 8F397E20 */ lw	$t9, %lo(__osRunningThread)($t9)
/* 022039 0x800958BC 8D2A0004 */ lw	$t2, 0X4($t1)
/* 022040 0x800958C0 8F280004 */ lw	$t0, 0X4($t9)
/* 022041 0x800958C4 010A082A */ slt	$at, $t0, $t2
/* 022042 0x800958C8 10200006 */ beqz	$at, .L_800958E4
/* 022043 0x800958CC 00000000 */ nop
/* 022044 0x800958D0 240B0002 */ li	$t3, 2
/* 022045 0x800958D4 3C048009 */ lui	$a0, %hi(__osRunQueue)
/* 022046 0x800958D8 A72B0010 */ sh	$t3, 0X10($t9)
/* 022047 0x800958DC 0C022451 */ jal	__osEnqueueAndYield
/* 022048 0x800958E0 24847E18 */ addiu	$a0, $a0, %lo(__osRunQueue)
.L_800958E4:
/* 022049 0x800958E4 0C0246B4 */ jal	__osRestoreInt
/* 022050 0x800958E8 02002025 */ move	$a0, $s0
/* 022051 0x800958EC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 022052 0x800958F0 8FB00014 */ lw	$s0, 0X14($sp)
/* 022053 0x800958F4 8FB10018 */ lw	$s1, 0X18($sp)
/* 022054 0x800958F8 03E00008 */ jr	$ra
/* 022055 0x800958FC 27BD0028 */ addiu	$sp, $sp, 40
