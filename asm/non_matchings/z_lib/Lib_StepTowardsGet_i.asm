glabel Lib_StepTowardsGet_i
/* 091329 0x800FEDC4 00A4082A */ slt	$at, $a1, $a0
/* 091330 0x800FEDC8 14200007 */ bnez	$at, .L_800FEDE8
/* 091331 0x800FEDCC 00861823 */ subu	$v1, $a0, $a2
/* 091332 0x800FEDD0 00861821 */ addu	$v1, $a0, $a2
/* 091333 0x800FEDD4 00A3082A */ slt	$at, $a1, $v1
/* 091334 0x800FEDD8 54200009 */ bnezl	$at, .L_800FEE00
/* 091335 0x800FEDDC 00A01025 */ move	$v0, $a1
/* 091336 0x800FEDE0 03E00008 */ jr	$ra
/* 091337 0x800FEDE4 00601025 */ move	$v0, $v1
.L_800FEDE8:
/* 091338 0x800FEDE8 0065082A */ slt	$at, $v1, $a1
/* 091339 0x800FEDEC 54200004 */ bnezl	$at, .L_800FEE00
/* 091340 0x800FEDF0 00A01025 */ move	$v0, $a1
/* 091341 0x800FEDF4 03E00008 */ jr	$ra
/* 091342 0x800FEDF8 00601025 */ move	$v0, $v1
/* 091343 0x800FEDFC 00A01025 */ move	$v0, $a1
.L_800FEE00:
/* 091344 0x800FEE00 03E00008 */ jr	$ra
/* 091345 0x800FEE04 00000000 */ nop

