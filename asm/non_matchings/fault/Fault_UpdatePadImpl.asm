glabel Fault_UpdatePadImpl
/* 001937 0x80081EA4 3C0EFFFA */ lui	$t6, 0xFFFA
/* 001938 0x80081EA8 03A07825 */ move	$t7, $sp
/* 001939 0x80081EAC 27BDFFE8 */ addiu	$sp, $sp, -24
/* 001940 0x80081EB0 35CE5A5A */ ori	$t6, $t6, 0X5A5A
.L_80081EB4:
/* 001941 0x80081EB4 25EFFFF8 */ addiu	$t7, $t7, -8
/* 001942 0x80081EB8 ADEE0000 */ sw	$t6, 0X0($t7)
/* 001943 0x80081EBC 15FDFFFD */ bne	$t7, $sp, .L_80081EB4
/* 001944 0x80081EC0 ADEE0004 */ sw	$t6, 0X4($t7)
/* 001945 0x80081EC4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001946 0x80081EC8 3C02800A */ lui	$v0, %hi(faultCtxt)
/* 001947 0x80081ECC 8C42BE50 */ lw	$v0, %lo(faultCtxt)($v0)
/* 001948 0x80081ED0 8C5907D4 */ lw	$t9, 0X7D4($v0)
/* 001949 0x80081ED4 244407E4 */ addiu	$a0, $v0, 2020
/* 001950 0x80081ED8 0320F809 */ jalr	$t9
/* 001951 0x80081EDC 00000000 */ nop
/* 001952 0x80081EE0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001953 0x80081EE4 27BD0018 */ addiu	$sp, $sp, 24
/* 001954 0x80081EE8 03E00008 */ jr	$ra
/* 001955 0x80081EEC 00000000 */ nop

