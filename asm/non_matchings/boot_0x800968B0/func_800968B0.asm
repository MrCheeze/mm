glabel func_800968B0
/* 023060 0x800968B0 90820000 */ lbu	$v0, 0X0($a0)
.L_800968B4:
/* 023061 0x800968B4 90A30000 */ lbu	$v1, 0X0($a1)
/* 023062 0x800968B8 24840001 */ addiu	$a0, $a0, 1
/* 023063 0x800968BC 24A50001 */ addiu	$a1, $a1, 1
/* 023064 0x800968C0 10620003 */ beq	$v1, $v0, .L_800968D0
/* 023065 0x800968C4 00403825 */ move	$a3, $v0
/* 023066 0x800968C8 03E00008 */ jr	$ra
/* 023067 0x800968CC 00E31023 */ subu	$v0, $a3, $v1
.L_800968D0:
/* 023068 0x800968D0 5440FFF8 */ bnezl	$v0, .L_800968B4
/* 023069 0x800968D4 90820000 */ lbu	$v0, 0X0($a0)
/* 023070 0x800968D8 00001025 */ move	$v0, $zero
/* 023071 0x800968DC 03E00008 */ jr	$ra
/* 023072 0x800968E0 00000000 */ nop
/* 023073 0x800968E4 00000000 */ nop
/* 023074 0x800968E8 00000000 */ nop
/* 023075 0x800968EC 00000000 */ nop
