glabel BgCheck_ActorMeshInit
/* 032954 0x800C5DA8 27BDFFE0 */ addiu	$sp, $sp, -32
/* 032955 0x800C5DAC AFB00018 */ sw	$s0, 0X18($sp)
/* 032956 0x800C5DB0 00A08025 */ move	$s0, $a1
/* 032957 0x800C5DB4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 032958 0x800C5DB8 AFA40020 */ sw	$a0, 0X20($sp)
/* 032959 0x800C5DBC AE000000 */ sw	$zero, 0X0($s0)
/* 032960 0x800C5DC0 AE000004 */ sw	$zero, 0X4($s0)
/* 032961 0x800C5DC4 0C0316F4 */ jal	BgCheck_ActorMeshParamsInit
/* 032962 0x800C5DC8 26040014 */ addiu	$a0, $s0, 20
/* 032963 0x800C5DCC 0C0316F4 */ jal	BgCheck_ActorMeshParamsInit
/* 032964 0x800C5DD0 26040034 */ addiu	$a0, $s0, 52
/* 032965 0x800C5DD4 0C03175C */ jal	BgCheck_ActorMeshPolyListsInit
/* 032966 0x800C5DD8 26040008 */ addiu	$a0, $s0, 8
/* 032967 0x800C5DDC 0C031764 */ jal	BgCheck_ActorMeshVerticesIndexInit
/* 032968 0x800C5DE0 26040010 */ addiu	$a0, $s0, 16
/* 032969 0x800C5DE4 0C031767 */ jal	BgCheck_ActorMeshWaterboxesIndexInit
/* 032970 0x800C5DE8 26040012 */ addiu	$a0, $s0, 18
/* 032971 0x800C5DEC A6000058 */ sh	$zero, 0X58($s0)
/* 032972 0x800C5DF0 86020058 */ lh	$v0, 0X58($s0)
/* 032973 0x800C5DF4 A600005A */ sh	$zero, 0X5A($s0)
/* 032974 0x800C5DF8 A6020056 */ sh	$v0, 0X56($s0)
/* 032975 0x800C5DFC A6020054 */ sh	$v0, 0X54($s0)
/* 032976 0x800C5E00 8FBF001C */ lw	$ra, 0X1C($sp)
/* 032977 0x800C5E04 8FB00018 */ lw	$s0, 0X18($sp)
/* 032978 0x800C5E08 03E00008 */ jr	$ra
/* 032979 0x800C5E0C 27BD0020 */ addiu	$sp, $sp, 32

