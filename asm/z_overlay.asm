.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_801651B0
/* 196028 0x801651B0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 196029 0x801651B4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 196030 0x801651B8 00803025 */ move	$a2, $a0
/* 196031 0x801651BC 8CC40000 */ lw	$a0, 0X0($a2)
/* 196032 0x801651C0 3C0100FF */ lui	$at, 0x00FF
/* 196033 0x801651C4 3421FFFF */ ori	$at, $at, 0XFFFF
/* 196034 0x801651C8 AFA60018 */ sw	$a2, 0X18($sp)
/* 196035 0x801651CC AFA5001C */ sw	$a1, 0X1C($sp)
/* 196036 0x801651D0 0C040168 */ jal	Lib_PtrSegToK0Null
/* 196037 0x801651D4 00812024 */ and	$a0, $a0, $at
/* 196038 0x801651D8 8FA5001C */ lw	$a1, 0X1C($sp)
/* 196039 0x801651DC 1040000C */ beqz	$v0, .L_80165210
/* 196040 0x801651E0 8FA60018 */ lw	$a2, 0X18($sp)
/* 196041 0x801651E4 8CC30004 */ lw	$v1, 0X4($a2)
/* 196042 0x801651E8 00A3082B */ sltu	$at, $a1, $v1
/* 196043 0x801651EC 54200009 */ bnezl	$at, .L_80165214
/* 196044 0x801651F0 00A01025 */ move	$v0, $a1
/* 196045 0x801651F4 8CCE0008 */ lw	$t6, 0X8($a2)
/* 196046 0x801651F8 00437823 */ subu	$t7, $v0, $v1
/* 196047 0x801651FC 00AE082B */ sltu	$at, $a1, $t6
/* 196048 0x80165200 50200004 */ beqzl	$at, .L_80165214
/* 196049 0x80165204 00A01025 */ move	$v0, $a1
/* 196050 0x80165208 10000002 */ b	.L_80165214
/* 196051 0x8016520C 01E51021 */ addu	$v0, $t7, $a1
.L_80165210:
/* 196052 0x80165210 00A01025 */ move	$v0, $a1
.L_80165214:
/* 196053 0x80165214 8FBF0014 */ lw	$ra, 0X14($sp)
/* 196054 0x80165218 27BD0018 */ addiu	$sp, $sp, 24
/* 196055 0x8016521C 03E00008 */ jr	$ra
/* 196056 0x80165220 00000000 */ nop

glabel func_80165224
/* 196057 0x80165224 27BDFFD8 */ addiu	$sp, $sp, -40
/* 196058 0x80165228 AFB30020 */ sw	$s3, 0X20($sp)
/* 196059 0x8016522C AFB10018 */ sw	$s1, 0X18($sp)
/* 196060 0x80165230 00C08825 */ move	$s1, $a2
/* 196061 0x80165234 00809825 */ move	$s3, $a0
/* 196062 0x80165238 AFBF0024 */ sw	$ra, 0X24($sp)
/* 196063 0x8016523C AFB2001C */ sw	$s2, 0X1C($sp)
/* 196064 0x80165240 AFB00014 */ sw	$s0, 0X14($sp)
/* 196065 0x80165244 1A200009 */ blez	$s1, .L_8016526C
/* 196066 0x80165248 00A08025 */ move	$s0, $a1
/* 196067 0x8016524C 00117080 */ sll	$t6, $s1, 2
/* 196068 0x80165250 01C59021 */ addu	$s2, $t6, $a1
.L_80165254:
/* 196069 0x80165254 02602025 */ move	$a0, $s3
/* 196070 0x80165258 0C05946C */ jal	func_801651B0
/* 196071 0x8016525C 8E050000 */ lw	$a1, 0X0($s0)
/* 196072 0x80165260 26100004 */ addiu	$s0, $s0, 4
/* 196073 0x80165264 1612FFFB */ bne	$s0, $s2, .L_80165254
/* 196074 0x80165268 AE02FFFC */ sw	$v0, -0X4($s0)
.L_8016526C:
/* 196075 0x8016526C 8FBF0024 */ lw	$ra, 0X24($sp)
/* 196076 0x80165270 8FB00014 */ lw	$s0, 0X14($sp)
/* 196077 0x80165274 8FB10018 */ lw	$s1, 0X18($sp)
/* 196078 0x80165278 8FB2001C */ lw	$s2, 0X1C($sp)
/* 196079 0x8016527C 8FB30020 */ lw	$s3, 0X20($sp)
/* 196080 0x80165280 03E00008 */ jr	$ra
/* 196081 0x80165284 27BD0028 */ addiu	$sp, $sp, 40

glabel func_80165288
/* 196082 0x80165288 27BDFFD0 */ addiu	$sp, $sp, -48
/* 196083 0x8016528C AFB00020 */ sw	$s0, 0X20($sp)
/* 196084 0x80165290 00808025 */ move	$s0, $a0
/* 196085 0x80165294 AFBF0024 */ sw	$ra, 0X24($sp)
/* 196086 0x80165298 8E0E000C */ lw	$t6, 0XC($s0)
/* 196087 0x8016529C 3C0100FF */ lui	$at, 0x00FF
/* 196088 0x801652A0 55C00004 */ bnezl	$t6, .L_801652B4
/* 196089 0x801652A4 8E040000 */ lw	$a0, 0X0($s0)
/* 196090 0x801652A8 1000002F */ b	.L_80165368
/* 196091 0x801652AC 24020003 */ li	$v0, 3
/* 196092 0x801652B0 8E040000 */ lw	$a0, 0X0($s0)
.L_801652B4:
/* 196093 0x801652B4 3421FFFF */ ori	$at, $at, 0XFFFF
/* 196094 0x801652B8 0C040168 */ jal	Lib_PtrSegToK0Null
/* 196095 0x801652BC 00812024 */ and	$a0, $a0, $at
/* 196096 0x801652C0 54400020 */ bnezl	$v0, .L_80165344
/* 196097 0x801652C4 92020000 */ lbu	$v0, 0X0($s0)
/* 196098 0x801652C8 8E0F0008 */ lw	$t7, 0X8($s0)
/* 196099 0x801652CC 8E180004 */ lw	$t8, 0X4($s0)
/* 196100 0x801652D0 0C040B18 */ jal	zelda_malloc
/* 196101 0x801652D4 01F82023 */ subu	$a0, $t7, $t8
/* 196102 0x801652D8 14400003 */ bnez	$v0, .L_801652E8
/* 196103 0x801652DC 00401825 */ move	$v1, $v0
/* 196104 0x801652E0 10000021 */ b	.L_80165368
/* 196105 0x801652E4 2402FFFF */ li	$v0, -1
.L_801652E8:
/* 196106 0x801652E8 8E04000C */ lw	$a0, 0XC($s0)
/* 196107 0x801652EC 8E050010 */ lw	$a1, 0X10($s0)
/* 196108 0x801652F0 8E060004 */ lw	$a2, 0X4($s0)
/* 196109 0x801652F4 8E070008 */ lw	$a3, 0X8($s0)
/* 196110 0x801652F8 AFA30028 */ sw	$v1, 0X28($sp)
/* 196111 0x801652FC 0C021407 */ jal	Load2_LoadOverlay
/* 196112 0x80165300 AFA30010 */ sw	$v1, 0X10($sp)
/* 196113 0x80165304 0C040161 */ jal	Lib_PtrSegToK0
/* 196114 0x80165308 8FA40028 */ lw	$a0, 0X28($sp)
/* 196115 0x8016530C 8E030000 */ lw	$v1, 0X0($s0)
/* 196116 0x80165310 3C0100FF */ lui	$at, 0x00FF
/* 196117 0x80165314 3421FFFF */ ori	$at, $at, 0XFFFF
/* 196118 0x80165318 0041C824 */ and	$t9, $v0, $at
/* 196119 0x8016531C 03234026 */ xor	$t0, $t9, $v1
/* 196120 0x80165320 00084A00 */ sll	$t1, $t0, 8
/* 196121 0x80165324 00095202 */ srl	$t2, $t1, 8
/* 196122 0x80165328 01435826 */ xor	$t3, $t2, $v1
/* 196123 0x8016532C AE0B0000 */ sw	$t3, 0X0($s0)
/* 196124 0x80165330 240C0001 */ li	$t4, 1
/* 196125 0x80165334 A20C0000 */ sb	$t4, 0X0($s0)
/* 196126 0x80165338 1000000B */ b	.L_80165368
/* 196127 0x8016533C 00001025 */ move	$v0, $zero
/* 196128 0x80165340 92020000 */ lbu	$v0, 0X0($s0)
.L_80165344:
/* 196129 0x80165344 10400007 */ beqz	$v0, .L_80165364
/* 196130 0x80165348 24420001 */ addiu	$v0, $v0, 1
/* 196131 0x8016534C 14400003 */ bnez	$v0, .L_8016535C
/* 196132 0x80165350 A2020000 */ sb	$v0, 0X0($s0)
/* 196133 0x80165354 10000004 */ b	.L_80165368
/* 196134 0x80165358 24020002 */ li	$v0, 2
.L_8016535C:
/* 196135 0x8016535C 10000002 */ b	.L_80165368
/* 196136 0x80165360 24020001 */ li	$v0, 1
.L_80165364:
/* 196137 0x80165364 24020002 */ li	$v0, 2
.L_80165368:
/* 196138 0x80165368 8FBF0024 */ lw	$ra, 0X24($sp)
/* 196139 0x8016536C 8FB00020 */ lw	$s0, 0X20($sp)
/* 196140 0x80165370 27BD0030 */ addiu	$sp, $sp, 48
/* 196141 0x80165374 03E00008 */ jr	$ra
/* 196142 0x80165378 00000000 */ nop

glabel func_8016537C
/* 196143 0x8016537C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 196144 0x80165380 AFBF0014 */ sw	$ra, 0X14($sp)
/* 196145 0x80165384 00802825 */ move	$a1, $a0
/* 196146 0x80165388 8CAE000C */ lw	$t6, 0XC($a1)
/* 196147 0x8016538C 3C0100FF */ lui	$at, 0x00FF
/* 196148 0x80165390 3421FFFF */ ori	$at, $at, 0XFFFF
/* 196149 0x80165394 55C00004 */ bnezl	$t6, .L_801653A8
/* 196150 0x80165398 8CA40000 */ lw	$a0, 0X0($a1)
/* 196151 0x8016539C 10000022 */ b	.L_80165428
/* 196152 0x801653A0 24020003 */ li	$v0, 3
/* 196153 0x801653A4 8CA40000 */ lw	$a0, 0X0($a1)
.L_801653A8:
/* 196154 0x801653A8 AFA50018 */ sw	$a1, 0X18($sp)
/* 196155 0x801653AC 0C040168 */ jal	Lib_PtrSegToK0Null
/* 196156 0x801653B0 00812024 */ and	$a0, $a0, $at
/* 196157 0x801653B4 8FA50018 */ lw	$a1, 0X18($sp)
/* 196158 0x801653B8 1040001A */ beqz	$v0, .L_80165424
/* 196159 0x801653BC 00402025 */ move	$a0, $v0
/* 196160 0x801653C0 90A20000 */ lbu	$v0, 0X0($a1)
/* 196161 0x801653C4 10400015 */ beqz	$v0, .L_8016541C
/* 196162 0x801653C8 2442FFFF */ addiu	$v0, $v0, -1
/* 196163 0x801653CC 14400011 */ bnez	$v0, .L_80165414
/* 196164 0x801653D0 A0A20000 */ sb	$v0, 0X0($a1)
/* 196165 0x801653D4 0C040B38 */ jal	zelda_free
/* 196166 0x801653D8 AFA50018 */ sw	$a1, 0X18($sp)
/* 196167 0x801653DC 0C040161 */ jal	Lib_PtrSegToK0
/* 196168 0x801653E0 00002025 */ move	$a0, $zero
/* 196169 0x801653E4 8FA50018 */ lw	$a1, 0X18($sp)
/* 196170 0x801653E8 3C0100FF */ lui	$at, 0x00FF
/* 196171 0x801653EC 3421FFFF */ ori	$at, $at, 0XFFFF
/* 196172 0x801653F0 8CA30000 */ lw	$v1, 0X0($a1)
/* 196173 0x801653F4 00417824 */ and	$t7, $v0, $at
/* 196174 0x801653F8 00001025 */ move	$v0, $zero
/* 196175 0x801653FC 01E3C026 */ xor	$t8, $t7, $v1
/* 196176 0x80165400 0018CA00 */ sll	$t9, $t8, 8
/* 196177 0x80165404 00194202 */ srl	$t0, $t9, 8
/* 196178 0x80165408 01034826 */ xor	$t1, $t0, $v1
/* 196179 0x8016540C 10000006 */ b	.L_80165428
/* 196180 0x80165410 ACA90000 */ sw	$t1, 0X0($a1)
.L_80165414:
/* 196181 0x80165414 10000004 */ b	.L_80165428
/* 196182 0x80165418 24020001 */ li	$v0, 1
.L_8016541C:
/* 196183 0x8016541C 10000002 */ b	.L_80165428
/* 196184 0x80165420 24020002 */ li	$v0, 2
.L_80165424:
/* 196185 0x80165424 2402FFFF */ li	$v0, -1
.L_80165428:
/* 196186 0x80165428 8FBF0014 */ lw	$ra, 0X14($sp)
/* 196187 0x8016542C 27BD0018 */ addiu	$sp, $sp, 24
/* 196188 0x80165430 03E00008 */ jr	$ra
/* 196189 0x80165434 00000000 */ nop

glabel func_80165438
/* 196190 0x80165438 AC800000 */ sw	$zero, 0X0($a0)
/* 196191 0x8016543C 03E00008 */ jr	$ra
/* 196192 0x80165440 00000000 */ nop

glabel func_80165444
/* 196193 0x80165444 AC850004 */ sw	$a1, 0X4($a0)
/* 196194 0x80165448 AC860008 */ sw	$a2, 0X8($a0)
/* 196195 0x8016544C AC87000C */ sw	$a3, 0XC($a0)
/* 196196 0x80165450 8FAE0010 */ lw	$t6, 0X10($sp)
/* 196197 0x80165454 AC8E0010 */ sw	$t6, 0X10($a0)
/* 196198 0x80165458 03E00008 */ jr	$ra
/* 196199 0x8016545C 00000000 */ nop
