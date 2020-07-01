.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel osAiSetFrequency
/* 017060 0x80090AF0 3C058009 */ lui	$a1, %hi(osViClock)
/* 017061 0x80090AF4 24A57E58 */ addiu	$a1, $a1, %lo(osViClock)
/* 017062 0x80090AF8 8CAE0000 */ lw	$t6, 0X0($a1)
/* 017063 0x80090AFC 44844000 */ mtc1	$a0, $f8
/* 017064 0x80090B00 3C014F80 */ lui	$at, 0x4F80
/* 017065 0x80090B04 448E2000 */ mtc1	$t6, $f4
/* 017066 0x80090B08 468042A0 */ cvt.s.w	$f10, $f8
/* 017067 0x80090B0C 04810004 */ bgez	$a0, .L_80090B20
/* 017068 0x80090B10 468021A0 */ cvt.s.w	$f6, $f4
/* 017069 0x80090B14 44818000 */ mtc1	$at, $f16
/* 017070 0x80090B18 00000000 */ nop
/* 017071 0x80090B1C 46105280 */ add.s	$f10, $f10, $f16
.L_80090B20:
/* 017072 0x80090B20 460A3483 */ div.s	$f18, $f6, $f10
/* 017073 0x80090B24 3C013F00 */ lui	$at, 0x3F00
/* 017074 0x80090B28 44812000 */ mtc1	$at, $f4
/* 017075 0x80090B2C 24030001 */ li	$v1, 1
/* 017076 0x80090B30 3C014F00 */ lui	$at, 0x4F00
/* 017077 0x80090B34 3C08A450 */ lui	$t0, 0xA450
/* 017078 0x80090B38 3C0AA450 */ lui	$t2, 0xA450
/* 017079 0x80090B3C 46049000 */ add.s	$f0, $f18, $f4
/* 017080 0x80090B40 444FF800 */ cfc1	$t7, $31
/* 017081 0x80090B44 44C3F800 */ ctc1	$v1, $31
/* 017082 0x80090B48 00000000 */ nop
/* 017083 0x80090B4C 46000224 */ cvt.w.s	$f8, $f0
/* 017084 0x80090B50 4443F800 */ cfc1	$v1, $31
/* 017085 0x80090B54 00000000 */ nop
/* 017086 0x80090B58 30630078 */ andi	$v1, $v1, 0X78
/* 017087 0x80090B5C 50600013 */ beqzl	$v1, .L_80090BAC
/* 017088 0x80090B60 44034000 */ mfc1	$v1, $f8
/* 017089 0x80090B64 44814000 */ mtc1	$at, $f8
/* 017090 0x80090B68 24030001 */ li	$v1, 1
/* 017091 0x80090B6C 46080201 */ sub.s	$f8, $f0, $f8
/* 017092 0x80090B70 44C3F800 */ ctc1	$v1, $31
/* 017093 0x80090B74 00000000 */ nop
/* 017094 0x80090B78 46004224 */ cvt.w.s	$f8, $f8
/* 017095 0x80090B7C 4443F800 */ cfc1	$v1, $31
/* 017096 0x80090B80 00000000 */ nop
/* 017097 0x80090B84 30630078 */ andi	$v1, $v1, 0X78
/* 017098 0x80090B88 14600005 */ bnez	$v1, .L_80090BA0
/* 017099 0x80090B8C 00000000 */ nop
/* 017100 0x80090B90 44034000 */ mfc1	$v1, $f8
/* 017101 0x80090B94 3C018000 */ lui	$at, 0x8000
/* 017102 0x80090B98 10000007 */ b	.L_80090BB8
/* 017103 0x80090B9C 00611825 */ or	$v1, $v1, $at
.L_80090BA0:
/* 017104 0x80090BA0 10000005 */ b	.L_80090BB8
/* 017105 0x80090BA4 2403FFFF */ li	$v1, -1
/* 017106 0x80090BA8 44034000 */ mfc1	$v1, $f8
.L_80090BAC:
/* 017107 0x80090BAC 00000000 */ nop
/* 017108 0x80090BB0 0460FFFB */ bltz	$v1, .L_80090BA0
/* 017109 0x80090BB4 00000000 */ nop
.L_80090BB8:
/* 017110 0x80090BB8 44CFF800 */ ctc1	$t7, $31
/* 017111 0x80090BBC 2C610084 */ sltiu	$at, $v1, 132
/* 017112 0x80090BC0 10200003 */ beqz	$at, .L_80090BD0
/* 017113 0x80090BC4 2479FFFF */ addiu	$t9, $v1, -1
/* 017114 0x80090BC8 03E00008 */ jr	$ra
/* 017115 0x80090BCC 2402FFFF */ li	$v0, -1
.L_80090BD0:
/* 017116 0x80090BD0 24010042 */ li	$at, 66
/* 017117 0x80090BD4 0061001B */ divu	$zero, $v1, $at
/* 017118 0x80090BD8 00001012 */ mflo	$v0
/* 017119 0x80090BDC 305800FF */ andi	$t8, $v0, 0XFF
/* 017120 0x80090BE0 2B010011 */ slti	$at, $t8, 17
/* 017121 0x80090BE4 14200002 */ bnez	$at, .L_80090BF0
/* 017122 0x80090BE8 304400FF */ andi	$a0, $v0, 0XFF
/* 017123 0x80090BEC 24040010 */ li	$a0, 16
.L_80090BF0:
/* 017124 0x80090BF0 AD190010 */ sw	$t9, 0X10($t0)
/* 017125 0x80090BF4 2489FFFF */ addiu	$t1, $a0, -1
/* 017126 0x80090BF8 AD490014 */ sw	$t1, 0X14($t2)
/* 017127 0x80090BFC 8CAB0000 */ lw	$t3, 0X0($a1)
/* 017128 0x80090C00 0163001A */ div	$zero, $t3, $v1
/* 017129 0x80090C04 00001012 */ mflo	$v0
/* 017130 0x80090C08 14600002 */ bnez	$v1, .L_80090C14
/* 017131 0x80090C0C 00000000 */ nop
/* 017132 0x80090C10 0007000D */ break	0x00007
.L_80090C14:
/* 017133 0x80090C14 2401FFFF */ li	$at, -1
/* 017134 0x80090C18 14610004 */ bne	$v1, $at, .L_80090C2C
/* 017135 0x80090C1C 3C018000 */ lui	$at, 0x8000
/* 017136 0x80090C20 15610002 */ bne	$t3, $at, .L_80090C2C
/* 017137 0x80090C24 00000000 */ nop
/* 017138 0x80090C28 0006000D */ break	0x00006
.L_80090C2C:
/* 017139 0x80090C2C 03E00008 */ jr	$ra
/* 017140 0x80090C30 00000000 */ nop
/* 017141 0x80090C34 00000000 */ nop
/* 017142 0x80090C38 00000000 */ nop
/* 017143 0x80090C3C 00000000 */ nop
