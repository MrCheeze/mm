glabel EffectSS_Delete
/* 010708 0x800B0210 27BDFFE8 */ addiu	$sp, $sp, -24
/* 010709 0x800B0214 AFBF0014 */ sw	$ra, 0X14($sp)
/* 010710 0x800B0218 00802825 */ move	$a1, $a0
/* 010711 0x800B021C 94A2005A */ lhu	$v0, 0X5A($a1)
/* 010712 0x800B0220 00A02025 */ move	$a0, $a1
/* 010713 0x800B0224 304E0002 */ andi	$t6, $v0, 0X2
/* 010714 0x800B0228 51C00006 */ beqzl	$t6, .L_800B0244
/* 010715 0x800B022C 304F0004 */ andi	$t7, $v0, 0X4
/* 010716 0x800B0230 0C069CB3 */ jal	func_801A72CC
/* 010717 0x800B0234 AFA50018 */ sw	$a1, 0X18($sp)
/* 010718 0x800B0238 8FA50018 */ lw	$a1, 0X18($sp)
/* 010719 0x800B023C 94A2005A */ lhu	$v0, 0X5A($a1)
/* 010720 0x800B0240 304F0004 */ andi	$t7, $v0, 0X4
.L_800B0244:
/* 010721 0x800B0244 11E00004 */ beqz	$t7, .L_800B0258
/* 010722 0x800B0248 24A4002C */ addiu	$a0, $a1, 44
/* 010723 0x800B024C 0C069CB3 */ jal	func_801A72CC
/* 010724 0x800B0250 AFA50018 */ sw	$a1, 0X18($sp)
/* 010725 0x800B0254 8FA50018 */ lw	$a1, 0X18($sp)
.L_800B0258:
/* 010726 0x800B0258 0C02C09C */ jal	EffectSS_ResetEntry
/* 010727 0x800B025C 00A02025 */ move	$a0, $a1
/* 010728 0x800B0260 8FBF0014 */ lw	$ra, 0X14($sp)
/* 010729 0x800B0264 27BD0018 */ addiu	$sp, $sp, 24
/* 010730 0x800B0268 03E00008 */ jr	$ra
/* 010731 0x800B026C 00000000 */ nop

