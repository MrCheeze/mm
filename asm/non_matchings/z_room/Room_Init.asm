glabel Room_Init
/* 140052 0x8012E710 AFA40000 */ sw	$a0, 0X0($sp)
/* 140053 0x8012E714 240EFFFF */ li	$t6, -1
/* 140054 0x8012E718 240F0001 */ li	$t7, 1
/* 140055 0x8012E71C A0AE0000 */ sb	$t6, 0X0($a1)
/* 140056 0x8012E720 ACA0000C */ sw	$zero, 0XC($a1)
/* 140057 0x8012E724 A0AF0078 */ sb	$t7, 0X78($a1)
/* 140058 0x8012E728 A0A00079 */ sb	$zero, 0X79($a1)
/* 140059 0x8012E72C 00001025 */ move	$v0, $zero
/* 140060 0x8012E730 00A01825 */ move	$v1, $a1
/* 140061 0x8012E734 24040003 */ li	$a0, 3
.L_8012E738:
/* 140062 0x8012E738 24420001 */ addiu	$v0, $v0, 1
/* 140063 0x8012E73C 24630002 */ addiu	$v1, $v1, 2
/* 140064 0x8012E740 1444FFFD */ bne	$v0, $a0, .L_8012E738
/* 140065 0x8012E744 A4600078 */ sh	$zero, 0X78($v1)
/* 140066 0x8012E748 03E00008 */ jr	$ra
/* 140067 0x8012E74C 00000000 */ nop

