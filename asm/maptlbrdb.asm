.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel osMapTLBRdb
/* 020200 0x80093C00 40085000 */ mfc0	$t0, $10
/* 020201 0x80093C04 2409001F */ li	$t1, 31
/* 020202 0x80093C08 40890000 */ mtc0	$t1, $0
/* 020203 0x80093C0C 40802800 */ mtc0	$zero, $5
/* 020204 0x80093C10 240A0017 */ li	$t2, 23
/* 020205 0x80093C14 3C09C000 */ lui	$t1, 0xC000
/* 020206 0x80093C18 40895000 */ mtc0	$t1, $10
/* 020207 0x80093C1C 3C098000 */ lui	$t1, 0x8000
/* 020208 0x80093C20 00095982 */ srl	$t3, $t1, 6
/* 020209 0x80093C24 016A5825 */ or	$t3, $t3, $t2
/* 020210 0x80093C28 408B1000 */ mtc0	$t3, $2
/* 020211 0x80093C2C 24090001 */ li	$t1, 1
/* 020212 0x80093C30 40891800 */ mtc0	$t1, $3
/* 020213 0x80093C34 00000000 */ nop
/* 020214 0x80093C38 42000002 */ tlbwi
/* 020215 0x80093C3C 00000000 */ nop
/* 020216 0x80093C40 00000000 */ nop
/* 020217 0x80093C44 00000000 */ nop
/* 020218 0x80093C48 00000000 */ nop
/* 020219 0x80093C4C 40885000 */ mtc0	$t0, $10
/* 020220 0x80093C50 03E00008 */ jr	$ra
/* 020221 0x80093C54 00000000 */ nop
/* 020222 0x80093C58 00000000 */ nop
/* 020223 0x80093C5C 00000000 */ nop
