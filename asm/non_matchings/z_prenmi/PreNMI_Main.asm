glabel PreNMI_Main
/* 135502 0x80129FF8 27BDFFE8 */ addiu	$sp, $sp, -24
/* 135503 0x80129FFC AFBF0014 */ sw	$ra, 0X14($sp)
/* 135504 0x8012A000 AFA40018 */ sw	$a0, 0X18($sp)
/* 135505 0x8012A004 0C04A7C1 */ jal	PreNMI_Update
/* 135506 0x8012A008 8FA40018 */ lw	$a0, 0X18($sp)
/* 135507 0x8012A00C 0C04A7D3 */ jal	PreNMI_Draw
/* 135508 0x8012A010 8FA40018 */ lw	$a0, 0X18($sp)
/* 135509 0x8012A014 8FAF0018 */ lw	$t7, 0X18($sp)
/* 135510 0x8012A018 240E0001 */ li	$t6, 1
/* 135511 0x8012A01C A1EE00A3 */ sb	$t6, 0XA3($t7)
/* 135512 0x8012A020 8FBF0014 */ lw	$ra, 0X14($sp)
/* 135513 0x8012A024 03E00008 */ jr	$ra
/* 135514 0x8012A028 27BD0018 */ addiu	$sp, $sp, 24

