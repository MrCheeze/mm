glabel BgCheck_GetActorMeshHeader
/* 030811 0x800C3C2C 24010032 */ li	$at, 50
/* 030812 0x800C3C30 14A10003 */ bne	$a1, $at, .L_800C3C40
/* 030813 0x800C3C34 00000000 */ nop
/* 030814 0x800C3C38 03E00008 */ jr	$ra
/* 030815 0x800C3C3C 8C820000 */ lw	$v0, 0X0($a0)
.L_800C3C40:
/* 030816 0x800C3C40 04A00003 */ bltz	$a1, .L_800C3C50
/* 030817 0x800C3C44 28A10033 */ slti	$at, $a1, 51
/* 030818 0x800C3C48 14200003 */ bnez	$at, .L_800C3C58
/* 030819 0x800C3C4C 00057040 */ sll	$t6, $a1, 1
.L_800C3C50:
/* 030820 0x800C3C50 03E00008 */ jr	$ra
/* 030821 0x800C3C54 00001025 */ move	$v0, $zero
.L_800C3C58:
/* 030822 0x800C3C58 008E7821 */ addu	$t7, $a0, $t6
/* 030823 0x800C3C5C 95F813DC */ lhu	$t8, 0X13DC($t7)
/* 030824 0x800C3C60 00054080 */ sll	$t0, $a1, 2
/* 030825 0x800C3C64 01054023 */ subu	$t0, $t0, $a1
/* 030826 0x800C3C68 33190001 */ andi	$t9, $t8, 0X1
/* 030827 0x800C3C6C 17200003 */ bnez	$t9, .L_800C3C7C
/* 030828 0x800C3C70 000840C0 */ sll	$t0, $t0, 3
/* 030829 0x800C3C74 03E00008 */ jr	$ra
/* 030830 0x800C3C78 00001025 */ move	$v0, $zero
.L_800C3C7C:
/* 030831 0x800C3C7C 01054021 */ addu	$t0, $t0, $a1
/* 030832 0x800C3C80 00084080 */ sll	$t0, $t0, 2
/* 030833 0x800C3C84 00884821 */ addu	$t1, $a0, $t0
/* 030834 0x800C3C88 8D220058 */ lw	$v0, 0X58($t1)
/* 030835 0x800C3C8C 03E00008 */ jr	$ra
/* 030836 0x800C3C90 00000000 */ nop

