glabel BgCheck_GetActorOfMesh
/* 033250 0x800C6248 27BDFFE8 */ addiu	$sp, $sp, -24
/* 033251 0x800C624C AFBF0014 */ sw	$ra, 0X14($sp)
/* 033252 0x800C6250 AFA40018 */ sw	$a0, 0X18($sp)
/* 033253 0x800C6254 00A02025 */ move	$a0, $a1
/* 033254 0x800C6258 0C031809 */ jal	BgCheck_IsActorMeshIndexValid
/* 033255 0x800C625C AFA5001C */ sw	$a1, 0X1C($sp)
/* 033256 0x800C6260 8FA30018 */ lw	$v1, 0X18($sp)
/* 033257 0x800C6264 10400009 */ beqz	$v0, .L_800C628C
/* 033258 0x800C6268 8FA5001C */ lw	$a1, 0X1C($sp)
/* 033259 0x800C626C 00057040 */ sll	$t6, $a1, 1
/* 033260 0x800C6270 006E7821 */ addu	$t7, $v1, $t6
/* 033261 0x800C6274 95E213DC */ lhu	$v0, 0X13DC($t7)
/* 033262 0x800C6278 30580001 */ andi	$t8, $v0, 0X1
/* 033263 0x800C627C 13000003 */ beqz	$t8, .L_800C628C
/* 033264 0x800C6280 30590002 */ andi	$t9, $v0, 0X2
/* 033265 0x800C6284 13200003 */ beqz	$t9, .L_800C6294
/* 033266 0x800C6288 00054080 */ sll	$t0, $a1, 2
.L_800C628C:
/* 033267 0x800C628C 10000007 */ b	.L_800C62AC
/* 033268 0x800C6290 00001025 */ move	$v0, $zero
.L_800C6294:
/* 033269 0x800C6294 01054023 */ subu	$t0, $t0, $a1
/* 033270 0x800C6298 000840C0 */ sll	$t0, $t0, 3
/* 033271 0x800C629C 01054021 */ addu	$t0, $t0, $a1
/* 033272 0x800C62A0 00084080 */ sll	$t0, $t0, 2
/* 033273 0x800C62A4 00684821 */ addu	$t1, $v1, $t0
/* 033274 0x800C62A8 8D220054 */ lw	$v0, 0X54($t1)
.L_800C62AC:
/* 033275 0x800C62AC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 033276 0x800C62B0 27BD0018 */ addiu	$sp, $sp, 24
/* 033277 0x800C62B4 03E00008 */ jr	$ra
/* 033278 0x800C62B8 00000000 */ nop

