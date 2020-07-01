.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel osCartRomInit
/* 018992 0x80092920 27BDFFE0 */ addiu	$sp, $sp, -32
/* 018993 0x80092924 AFBF001C */ sw	$ra, 0X1C($sp)
/* 018994 0x80092928 0C023078 */ jal	__osPiGetAccess
/* 018995 0x8009292C AFB00018 */ sw	$s0, 0X18($sp)
/* 018996 0x80092930 3C0E800A */ lui	$t6, %hi(D_800980D0)
/* 018997 0x80092934 8DCE80D0 */ lw	$t6, %lo(D_800980D0)($t6)
/* 018998 0x80092938 3C10800A */ lui	$s0, %hi(CartRomHandle)
/* 018999 0x8009293C 2610E610 */ addiu	$s0, $s0, %lo(CartRomHandle)
/* 019000 0x80092940 15C00006 */ bnez	$t6, .L_8009295C
/* 019001 0x80092944 3C01800A */ lui	$at, %hi(D_800980D0)
/* 019002 0x80092948 0C023089 */ jal	__osPiRelAccess
/* 019003 0x8009294C 00000000 */ nop
/* 019004 0x80092950 3C10800A */ lui	$s0, %hi(CartRomHandle)
/* 019005 0x80092954 10000042 */ b	.L_80092A60
/* 019006 0x80092958 2602E610 */ addiu	$v0, $s0, %lo(CartRomHandle)
.L_8009295C:
/* 019007 0x8009295C AC2080D0 */ sw	$zero, %lo(D_800980D0)($at)
/* 019008 0x80092960 3C0FB000 */ lui	$t7, 0xB000
/* 019009 0x80092964 3C04800A */ lui	$a0, %hi(CartRomHandle + 0x14)
/* 019010 0x80092968 A2000004 */ sb	$zero, 0X4($s0)
/* 019011 0x8009296C AE0F000C */ sw	$t7, 0XC($s0)
/* 019012 0x80092970 A2000009 */ sb	$zero, 0X9($s0)
/* 019013 0x80092974 AE000010 */ sw	$zero, 0X10($s0)
/* 019014 0x80092978 2484E624 */ addiu	$a0, $a0, %lo(CartRomHandle + 0x14)
/* 019015 0x8009297C 0C02258C */ jal	bzero
/* 019016 0x80092980 24050060 */ li	$a1, 96
/* 019017 0x80092984 3C03A460 */ lui	$v1, 0xA460
/* 019018 0x80092988 34630010 */ ori	$v1, $v1, 0X10
/* 019019 0x8009298C 8C620000 */ lw	$v0, 0X0($v1)
/* 019020 0x80092990 3C07A460 */ lui	$a3, 0xA460
/* 019021 0x80092994 34E70014 */ ori	$a3, $a3, 0X14
/* 019022 0x80092998 30580003 */ andi	$t8, $v0, 0X3
/* 019023 0x8009299C 13000005 */ beqz	$t8, .L_800929B4
/* 019024 0x800929A0 3C08A460 */ lui	$t0, 0xA460
/* 019025 0x800929A4 8C620000 */ lw	$v0, 0X0($v1)
.L_800929A8:
/* 019026 0x800929A8 30590003 */ andi	$t9, $v0, 0X3
/* 019027 0x800929AC 5720FFFE */ bnezl	$t9, .L_800929A8
/* 019028 0x800929B0 8C620000 */ lw	$v0, 0X0($v1)
.L_800929B4:
/* 019029 0x800929B4 8CE30000 */ lw	$v1, 0X0($a3)
/* 019030 0x800929B8 3508001C */ ori	$t0, $t0, 0X1C
/* 019031 0x800929BC 3C09A460 */ lui	$t1, 0xA460
/* 019032 0x800929C0 8D040000 */ lw	$a0, 0X0($t0)
/* 019033 0x800929C4 35290020 */ ori	$t1, $t1, 0X20
/* 019034 0x800929C8 3C0AA460 */ lui	$t2, 0xA460
/* 019035 0x800929CC 8D250000 */ lw	$a1, 0X0($t1)
/* 019036 0x800929D0 354A0018 */ ori	$t2, $t2, 0X18
/* 019037 0x800929D4 8D460000 */ lw	$a2, 0X0($t2)
/* 019038 0x800929D8 240B00FF */ li	$t3, 255
/* 019039 0x800929DC ACEB0000 */ sw	$t3, 0X0($a3)
/* 019040 0x800929E0 AD000000 */ sw	$zero, 0X0($t0)
/* 019041 0x800929E4 240C0003 */ li	$t4, 3
/* 019042 0x800929E8 AD2C0000 */ sw	$t4, 0X0($t1)
/* 019043 0x800929EC AD4B0000 */ sw	$t3, 0X0($t2)
/* 019044 0x800929F0 8E0D000C */ lw	$t5, 0XC($s0)
/* 019045 0x800929F4 3C01A000 */ lui	$at, 0xA000
/* 019046 0x800929F8 01A17025 */ or	$t6, $t5, $at
/* 019047 0x800929FC 8DC20000 */ lw	$v0, 0X0($t6)
/* 019048 0x80092A00 0002C402 */ srl	$t8, $v0, 16
/* 019049 0x80092A04 00026502 */ srl	$t4, $v0, 20
/* 019050 0x80092A08 3319000F */ andi	$t9, $t8, 0XF
/* 019051 0x80092A0C 318D000F */ andi	$t5, $t4, 0XF
/* 019052 0x80092A10 00027A02 */ srl	$t7, $v0, 8
/* 019053 0x80092A14 A2190006 */ sb	$t9, 0X6($s0)
/* 019054 0x80092A18 A20D0007 */ sb	$t5, 0X7($s0)
/* 019055 0x80092A1C A20F0008 */ sb	$t7, 0X8($s0)
/* 019056 0x80092A20 A2020005 */ sb	$v0, 0X5($s0)
/* 019057 0x80092A24 ACE30000 */ sw	$v1, 0X0($a3)
/* 019058 0x80092A28 AD040000 */ sw	$a0, 0X0($t0)
/* 019059 0x80092A2C AD250000 */ sw	$a1, 0X0($t1)
/* 019060 0x80092A30 0C024698 */ jal	__osDisableInt
/* 019061 0x80092A34 AD460000 */ sw	$a2, 0X0($t2)
/* 019062 0x80092A38 3C038009 */ lui	$v1, %hi(__osPiTable)
/* 019063 0x80092A3C 24637E8C */ addiu	$v1, $v1, %lo(__osPiTable)
/* 019064 0x80092A40 8C780000 */ lw	$t8, 0X0($v1)
/* 019065 0x80092A44 AC700000 */ sw	$s0, 0X0($v1)
/* 019066 0x80092A48 00402025 */ move	$a0, $v0
/* 019067 0x80092A4C 0C0246B4 */ jal	__osRestoreInt
/* 019068 0x80092A50 AE180000 */ sw	$t8, 0X0($s0)
/* 019069 0x80092A54 0C023089 */ jal	__osPiRelAccess
/* 019070 0x80092A58 00000000 */ nop
/* 019071 0x80092A5C 02001025 */ move	$v0, $s0
.L_80092A60:
/* 019072 0x80092A60 8FBF001C */ lw	$ra, 0X1C($sp)
/* 019073 0x80092A64 8FB00018 */ lw	$s0, 0X18($sp)
/* 019074 0x80092A68 27BD0020 */ addiu	$sp, $sp, 32
/* 019075 0x80092A6C 03E00008 */ jr	$ra
/* 019076 0x80092A70 00000000 */ nop
/* 019077 0x80092A74 00000000 */ nop
/* 019078 0x80092A78 00000000 */ nop
/* 019079 0x80092A7C 00000000 */ nop
