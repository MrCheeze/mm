glabel func_800BB604
/* 022225 0x800BB604 27BDFF68 */ addiu	$sp, $sp, -152
/* 022226 0x800BB608 AFB5004C */ sw	$s5, 0X4C($sp)
/* 022227 0x800BB60C AFB40048 */ sw	$s4, 0X48($sp)
/* 022228 0x800BB610 00C0A025 */ move	$s4, $a2
/* 022229 0x800BB614 0080A825 */ move	$s5, $a0
/* 022230 0x800BB618 AFBF005C */ sw	$ra, 0X5C($sp)
/* 022231 0x800BB61C AFBE0058 */ sw	$fp, 0X58($sp)
/* 022232 0x800BB620 AFB70054 */ sw	$s7, 0X54($sp)
/* 022233 0x800BB624 AFB60050 */ sw	$s6, 0X50($sp)
/* 022234 0x800BB628 AFB30044 */ sw	$s3, 0X44($sp)
/* 022235 0x800BB62C AFB20040 */ sw	$s2, 0X40($sp)
/* 022236 0x800BB630 AFB1003C */ sw	$s1, 0X3C($sp)
/* 022237 0x800BB634 AFB00038 */ sw	$s0, 0X38($sp)
/* 022238 0x800BB638 F7B40030 */ sdc1	$f20, 0X30($sp)
/* 022239 0x800BB63C AFA5009C */ sw	$a1, 0X9C($sp)
/* 022240 0x800BB640 8FAE009C */ lw	$t6, 0X9C($sp)
/* 022241 0x800BB644 00071080 */ sll	$v0, $a3, 2
/* 022242 0x800BB648 00471023 */ subu	$v0, $v0, $a3
/* 022243 0x800BB64C 00021080 */ sll	$v0, $v0, 2
/* 022244 0x800BB650 01C27821 */ addu	$t7, $t6, $v0
/* 022245 0x800BB654 8DF00014 */ lw	$s0, 0X14($t7)
/* 022246 0x800BB658 8E980730 */ lw	$t8, 0X730($s4)
/* 022247 0x800BB65C 3C1E801F */ lui	$fp, %hi(D_801ED8D0)
/* 022248 0x800BB660 12000095 */ beqz	$s0, .L_800BB8B8
/* 022249 0x800BB664 AFB8008C */ sw	$t8, 0X8C($sp)
/* 022250 0x800BB668 3C17801F */ lui	$s7, %hi(D_801ED8C8)
/* 022251 0x800BB66C 3C16801F */ lui	$s6, %hi(D_801ED8CC)
/* 022252 0x800BB670 26D6D8CC */ addiu	$s6, $s6, %lo(D_801ED8CC)
/* 022253 0x800BB674 26F7D8C8 */ addiu	$s7, $s7, %lo(D_801ED8C8)
/* 022254 0x800BB678 AFA20068 */ sw	$v0, 0X68($sp)
/* 022255 0x800BB67C 27DED8D0 */ addiu	$fp, $fp, %lo(D_801ED8D0)
/* 022256 0x800BB680 8E190138 */ lw	$t9, 0X138($s0)
.L_800BB684:
/* 022257 0x800BB684 5320008A */ beqzl	$t9, .L_800BB8B0
/* 022258 0x800BB688 8E10012C */ lw	$s0, 0X12C($s0)
/* 022259 0x800BB68C 52140088 */ beql	$s0, $s4, .L_800BB8B0
/* 022260 0x800BB690 8E10012C */ lw	$s0, 0X12C($s0)
/* 022261 0x800BB694 8E020004 */ lw	$v0, 0X4($s0)
/* 022262 0x800BB698 3C014000 */ lui	$at, 0x4000
/* 022263 0x800BB69C 34210001 */ ori	$at, $at, 0X1
/* 022264 0x800BB6A0 00414024 */ and	$t0, $v0, $at
/* 022265 0x800BB6A4 11000081 */ beqz	$t0, .L_800BB8AC
/* 022266 0x800BB6A8 8FA90068 */ lw	$t1, 0X68($sp)
/* 022267 0x800BB6AC 2401003C */ li	$at, 60
/* 022268 0x800BB6B0 15210013 */ bne	$t1, $at, .L_800BB700
/* 022269 0x800BB6B4 304A0005 */ andi	$t2, $v0, 0X5
/* 022270 0x800BB6B8 24010005 */ li	$at, 5
/* 022271 0x800BB6BC 15410010 */ bne	$t2, $at, .L_800BB700
/* 022272 0x800BB6C0 3C01801E */ lui	$at, %hi(D_801DCAA8)
/* 022273 0x800BB6C4 C424CAA8 */ lwc1	$f4, %lo(D_801DCAA8)($at)
/* 022274 0x800BB6C8 C6000094 */ lwc1	$f0, 0X94($s0)
/* 022275 0x800BB6CC 4604003C */ c.lt.s	$f0, $f4
/* 022276 0x800BB6D0 00000000 */ nop
/* 022277 0x800BB6D4 4502000B */ bc1fl .L_800BB704
/* 022278 0x800BB6D8 8FAC008C */ lw	$t4, 0X8C($sp)
/* 022279 0x800BB6DC C6C60000 */ lwc1	$f6, 0X0($s6)
/* 022280 0x800BB6E0 8FAB009C */ lw	$t3, 0X9C($sp)
/* 022281 0x800BB6E4 4606003C */ c.lt.s	$f0, $f6
/* 022282 0x800BB6E8 00000000 */ nop
/* 022283 0x800BB6EC 45020005 */ bc1fl .L_800BB704
/* 022284 0x800BB6F0 8FAC008C */ lw	$t4, 0X8C($sp)
/* 022285 0x800BB6F4 AD7001B0 */ sw	$s0, 0X1B0($t3)
/* 022286 0x800BB6F8 C6080094 */ lwc1	$f8, 0X94($s0)
/* 022287 0x800BB6FC E6C80000 */ swc1	$f8, 0X0($s6)
.L_800BB700:
/* 022288 0x800BB700 8FAC008C */ lw	$t4, 0X8C($sp)
.L_800BB704:
/* 022289 0x800BB704 02002025 */ move	$a0, $s0
/* 022290 0x800BB708 02802825 */ move	$a1, $s4
/* 022291 0x800BB70C 160C0005 */ bne	$s0, $t4, .L_800BB724
/* 022292 0x800BB710 3C06801F */ lui	$a2, %hi(D_801ED8DC)
/* 022293 0x800BB714 8E0D0004 */ lw	$t5, 0X4($s0)
/* 022294 0x800BB718 000D7300 */ sll	$t6, $t5, 12
/* 022295 0x800BB71C 05C30064 */ bgezl	$t6, .L_800BB8B0
/* 022296 0x800BB720 8E10012C */ lw	$s0, 0X12C($s0)
.L_800BB724:
/* 022297 0x800BB724 0C02E0BB */ jal	func_800B82EC
/* 022298 0x800BB728 84C6D8DC */ lh	$a2, %lo(D_801ED8DC)($a2)
/* 022299 0x800BB72C 8E020004 */ lw	$v0, 0X4($s0)
/* 022300 0x800BB730 46000506 */ mov.s	$f20, $f0
/* 022301 0x800BB734 3C014000 */ lui	$at, 0x4000
/* 022302 0x800BB738 30520001 */ andi	$s2, $v0, 0X1
/* 022303 0x800BB73C 0012902B */ sltu	$s2, $zero, $s2
/* 022304 0x800BB740 52400009 */ beqzl	$s2, .L_800BB768
/* 022305 0x800BB744 02409825 */ move	$s3, $s2
/* 022306 0x800BB748 C6EA0000 */ lwc1	$f10, 0X0($s7)
/* 022307 0x800BB74C 00009025 */ move	$s2, $zero
/* 022308 0x800BB750 460A003C */ c.lt.s	$f0, $f10
/* 022309 0x800BB754 00000000 */ nop
/* 022310 0x800BB758 45020003 */ bc1fl .L_800BB768
/* 022311 0x800BB75C 02409825 */ move	$s3, $s2
/* 022312 0x800BB760 24120001 */ li	$s2, 1
/* 022313 0x800BB764 02409825 */ move	$s3, $s2
.L_800BB768:
/* 022314 0x800BB768 00419024 */ and	$s2, $v0, $at
/* 022315 0x800BB76C 0012902B */ sltu	$s2, $zero, $s2
/* 022316 0x800BB770 12400008 */ beqz	$s2, .L_800BB794
/* 022317 0x800BB774 00000000 */ nop
/* 022318 0x800BB778 C7D00000 */ lwc1	$f16, 0X0($fp)
/* 022319 0x800BB77C 00009025 */ move	$s2, $zero
/* 022320 0x800BB780 4610003C */ c.lt.s	$f0, $f16
/* 022321 0x800BB784 00000000 */ nop
/* 022322 0x800BB788 45000002 */ bc1f .L_800BB794
/* 022323 0x800BB78C 00000000 */ nop
/* 022324 0x800BB790 24120001 */ li	$s2, 1
.L_800BB794:
/* 022325 0x800BB794 56600004 */ bnezl	$s3, .L_800BB7A8
/* 022326 0x800BB798 4405A000 */ mfc1	$a1, $f20
/* 022327 0x800BB79C 52400044 */ beqzl	$s2, .L_800BB8B0
/* 022328 0x800BB7A0 8E10012C */ lw	$s0, 0X12C($s0)
/* 022329 0x800BB7A4 4405A000 */ mfc1	$a1, $f20
.L_800BB7A8:
/* 022330 0x800BB7A8 0C02E0EF */ jal	func_800B83BC
/* 022331 0x800BB7AC 02002025 */ move	$a0, $s0
/* 022332 0x800BB7B0 1040003E */ beqz	$v0, .L_800BB8AC
/* 022333 0x800BB7B4 02A02025 */ move	$a0, $s5
/* 022334 0x800BB7B8 0C02ED67 */ jal	func_800BB59C
/* 022335 0x800BB7BC 02002825 */ move	$a1, $s0
/* 022336 0x800BB7C0 1040003A */ beqz	$v0, .L_800BB8AC
/* 022337 0x800BB7C4 26B10830 */ addiu	$s1, $s5, 2096
/* 022338 0x800BB7C8 27AF0080 */ addiu	$t7, $sp, 128
/* 022339 0x800BB7CC 24180001 */ li	$t8, 1
/* 022340 0x800BB7D0 24190001 */ li	$t9, 1
/* 022341 0x800BB7D4 24080001 */ li	$t0, 1
/* 022342 0x800BB7D8 24090001 */ li	$t1, 1
/* 022343 0x800BB7DC 27AA007C */ addiu	$t2, $sp, 124
/* 022344 0x800BB7E0 AFAA0024 */ sw	$t2, 0X24($sp)
/* 022345 0x800BB7E4 AFA90020 */ sw	$t1, 0X20($sp)
/* 022346 0x800BB7E8 AFA8001C */ sw	$t0, 0X1C($sp)
/* 022347 0x800BB7EC AFB90018 */ sw	$t9, 0X18($sp)
/* 022348 0x800BB7F0 AFB80014 */ sw	$t8, 0X14($sp)
/* 022349 0x800BB7F4 AFAF0010 */ sw	$t7, 0X10($sp)
/* 022350 0x800BB7F8 02202025 */ move	$a0, $s1
/* 022351 0x800BB7FC 2685003C */ addiu	$a1, $s4, 60
/* 022352 0x800BB800 2606003C */ addiu	$a2, $s0, 60
/* 022353 0x800BB804 0C03152B */ jal	func_800C54AC
/* 022354 0x800BB808 27A70070 */ addiu	$a3, $sp, 112
/* 022355 0x800BB80C 10400006 */ beqz	$v0, .L_800BB828
/* 022356 0x800BB810 02202025 */ move	$a0, $s1
/* 022357 0x800BB814 8FA50080 */ lw	$a1, 0X80($sp)
/* 022358 0x800BB818 0C032754 */ jal	func_800C9D50
/* 022359 0x800BB81C 8FA6007C */ lw	$a2, 0X7C($sp)
/* 022360 0x800BB820 50400023 */ beqzl	$v0, .L_800BB8B0
/* 022361 0x800BB824 8E10012C */ lw	$s0, 0X12C($s0)
.L_800BB828:
/* 022362 0x800BB828 92020115 */ lbu	$v0, 0X115($s0)
/* 022363 0x800BB82C 10400017 */ beqz	$v0, .L_800BB88C
/* 022364 0x800BB830 00000000 */ nop
/* 022365 0x800BB834 12600009 */ beqz	$s3, .L_800BB85C
/* 022366 0x800BB838 3C0B801F */ lui	$t3, %hi(D_801ED8D4)
/* 022367 0x800BB83C 8D6BD8D4 */ lw	$t3, %lo(D_801ED8D4)($t3)
/* 022368 0x800BB840 004B082A */ slt	$at, $v0, $t3
/* 022369 0x800BB844 10200005 */ beqz	$at, .L_800BB85C
/* 022370 0x800BB848 3C01801F */ lui	$at, %hi(D_801ED8BC)
/* 022371 0x800BB84C AC30D8BC */ sw	$s0, %lo(D_801ED8BC)($at)
/* 022372 0x800BB850 920C0115 */ lbu	$t4, 0X115($s0)
/* 022373 0x800BB854 3C01801F */ lui	$at, %hi(D_801ED8D4)
/* 022374 0x800BB858 AC2CD8D4 */ sw	$t4, %lo(D_801ED8D4)($at)
.L_800BB85C:
/* 022375 0x800BB85C 12400013 */ beqz	$s2, .L_800BB8AC
/* 022376 0x800BB860 3C0E801F */ lui	$t6, %hi(D_801ED8D8)
/* 022377 0x800BB864 920D0115 */ lbu	$t5, 0X115($s0)
/* 022378 0x800BB868 8DCED8D8 */ lw	$t6, %lo(D_801ED8D8)($t6)
/* 022379 0x800BB86C 01AE082A */ slt	$at, $t5, $t6
/* 022380 0x800BB870 1020000E */ beqz	$at, .L_800BB8AC
/* 022381 0x800BB874 3C01801F */ lui	$at, %hi(D_801ED8C4)
/* 022382 0x800BB878 AC30D8C4 */ sw	$s0, %lo(D_801ED8C4)($at)
/* 022383 0x800BB87C 920F0115 */ lbu	$t7, 0X115($s0)
/* 022384 0x800BB880 3C01801F */ lui	$at, %hi(D_801ED8D8)
/* 022385 0x800BB884 10000009 */ b	.L_800BB8AC
/* 022386 0x800BB888 AC2FD8D8 */ sw	$t7, %lo(D_801ED8D8)($at)
.L_800BB88C:
/* 022387 0x800BB88C 12600003 */ beqz	$s3, .L_800BB89C
/* 022388 0x800BB890 3C01801F */ lui	$at, %hi(D_801ED8B8)
/* 022389 0x800BB894 AC30D8B8 */ sw	$s0, %lo(D_801ED8B8)($at)
/* 022390 0x800BB898 E6F40000 */ swc1	$f20, 0X0($s7)
.L_800BB89C:
/* 022391 0x800BB89C 12400003 */ beqz	$s2, .L_800BB8AC
/* 022392 0x800BB8A0 3C01801F */ lui	$at, %hi(D_801ED8C0)
/* 022393 0x800BB8A4 AC30D8C0 */ sw	$s0, %lo(D_801ED8C0)($at)
/* 022394 0x800BB8A8 E7D40000 */ swc1	$f20, 0X0($fp)
.L_800BB8AC:
/* 022395 0x800BB8AC 8E10012C */ lw	$s0, 0X12C($s0)
.L_800BB8B0:
/* 022396 0x800BB8B0 5600FF74 */ bnezl	$s0, .L_800BB684
/* 022397 0x800BB8B4 8E190138 */ lw	$t9, 0X138($s0)
.L_800BB8B8:
/* 022398 0x800BB8B8 8FBF005C */ lw	$ra, 0X5C($sp)
/* 022399 0x800BB8BC D7B40030 */ ldc1	$f20, 0X30($sp)
/* 022400 0x800BB8C0 8FB00038 */ lw	$s0, 0X38($sp)
/* 022401 0x800BB8C4 8FB1003C */ lw	$s1, 0X3C($sp)
/* 022402 0x800BB8C8 8FB20040 */ lw	$s2, 0X40($sp)
/* 022403 0x800BB8CC 8FB30044 */ lw	$s3, 0X44($sp)
/* 022404 0x800BB8D0 8FB40048 */ lw	$s4, 0X48($sp)
/* 022405 0x800BB8D4 8FB5004C */ lw	$s5, 0X4C($sp)
/* 022406 0x800BB8D8 8FB60050 */ lw	$s6, 0X50($sp)
/* 022407 0x800BB8DC 8FB70054 */ lw	$s7, 0X54($sp)
/* 022408 0x800BB8E0 8FBE0058 */ lw	$fp, 0X58($sp)
/* 022409 0x800BB8E4 03E00008 */ jr	$ra
/* 022410 0x800BB8E8 27BD0098 */ addiu	$sp, $sp, 152

