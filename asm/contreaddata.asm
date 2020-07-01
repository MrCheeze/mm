.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel osContStartReadData
/* 010188 0x80089F90 27BDFFE0 */ addiu	$sp, $sp, -32
/* 010189 0x80089F94 AFBF0014 */ sw	$ra, 0X14($sp)
/* 010190 0x80089F98 0C0226BC */ jal	__osSiGetAccess
/* 010191 0x80089F9C AFA40020 */ sw	$a0, 0X20($sp)
/* 010192 0x80089FA0 3C0E800A */ lui	$t6, %hi(__osContLastCmd)
/* 010193 0x80089FA4 91CECF10 */ lbu	$t6, %lo(__osContLastCmd)($t6)
/* 010194 0x80089FA8 24010001 */ li	$at, 1
/* 010195 0x80089FAC 11C1000B */ beq	$t6, $at, .L_80089FDC
/* 010196 0x80089FB0 00000000 */ nop
/* 010197 0x80089FB4 0C022828 */ jal	__osPackReadData
/* 010198 0x80089FB8 00000000 */ nop
/* 010199 0x80089FBC 3C05800A */ lui	$a1, %hi(__osContPifRam)
/* 010200 0x80089FC0 24A5CED0 */ addiu	$a1, $a1, %lo(__osContPifRam)
/* 010201 0x80089FC4 0C022B5C */ jal	__osSiRawStartDma
/* 010202 0x80089FC8 24040001 */ li	$a0, 1
/* 010203 0x80089FCC 8FA40020 */ lw	$a0, 0X20($sp)
/* 010204 0x80089FD0 00002825 */ move	$a1, $zero
/* 010205 0x80089FD4 0C021FB4 */ jal	osRecvMesg
/* 010206 0x80089FD8 24060001 */ li	$a2, 1
.L_80089FDC:
/* 010207 0x80089FDC 3C05800A */ lui	$a1, %hi(__osContPifRam)
/* 010208 0x80089FE0 24A5CED0 */ addiu	$a1, $a1, %lo(__osContPifRam)
/* 010209 0x80089FE4 0C022B5C */ jal	__osSiRawStartDma
/* 010210 0x80089FE8 00002025 */ move	$a0, $zero
/* 010211 0x80089FEC 240F0001 */ li	$t7, 1
/* 010212 0x80089FF0 3C01800A */ lui	$at, %hi(__osContLastCmd)
/* 010213 0x80089FF4 AFA2001C */ sw	$v0, 0X1C($sp)
/* 010214 0x80089FF8 0C0226CD */ jal	__osSiRelAccess
/* 010215 0x80089FFC A02FCF10 */ sb	$t7, %lo(__osContLastCmd)($at)
/* 010216 0x8008A000 8FBF0014 */ lw	$ra, 0X14($sp)
/* 010217 0x8008A004 8FA2001C */ lw	$v0, 0X1C($sp)
/* 010218 0x8008A008 27BD0020 */ addiu	$sp, $sp, 32
/* 010219 0x8008A00C 03E00008 */ jr	$ra
/* 010220 0x8008A010 00000000 */ nop

glabel osContGetReadData
/* 010221 0x8008A014 3C05800A */ lui	$a1, %hi(__osMaxControllers)
/* 010222 0x8008A018 24A5CF11 */ addiu	$a1, $a1, %lo(__osMaxControllers)
/* 010223 0x8008A01C 90AE0000 */ lbu	$t6, 0X0($a1)
/* 010224 0x8008A020 3C02800A */ lui	$v0, %hi(__osContPifRam)
/* 010225 0x8008A024 27BDFFF0 */ addiu	$sp, $sp, -16
/* 010226 0x8008A028 2442CED0 */ addiu	$v0, $v0, %lo(__osContPifRam)
/* 010227 0x8008A02C 19C0001A */ blez	$t6, .L_8008A098
/* 010228 0x8008A030 00001825 */ move	$v1, $zero
/* 010229 0x8008A034 27A60004 */ addiu	$a2, $sp, 4
.L_8008A038:
/* 010230 0x8008A038 88410000 */ lwl	$at, 0X0($v0)
/* 010231 0x8008A03C 98410003 */ lwr	$at, 0X3($v0)
/* 010232 0x8008A040 ACC10000 */ sw	$at, 0X0($a2)
/* 010233 0x8008A044 88580004 */ lwl	$t8, 0X4($v0)
/* 010234 0x8008A048 98580007 */ lwr	$t8, 0X7($v0)
/* 010235 0x8008A04C ACD80004 */ sw	$t8, 0X4($a2)
/* 010236 0x8008A050 93B90006 */ lbu	$t9, 0X6($sp)
/* 010237 0x8008A054 332800C0 */ andi	$t0, $t9, 0XC0
/* 010238 0x8008A058 00084903 */ sra	$t1, $t0, 4
/* 010239 0x8008A05C 312A00FF */ andi	$t2, $t1, 0XFF
/* 010240 0x8008A060 15400007 */ bnez	$t2, .L_8008A080
/* 010241 0x8008A064 A0890004 */ sb	$t1, 0X4($a0)
/* 010242 0x8008A068 97AB0008 */ lhu	$t3, 0X8($sp)
/* 010243 0x8008A06C A48B0000 */ sh	$t3, 0X0($a0)
/* 010244 0x8008A070 83AC000A */ lb	$t4, 0XA($sp)
/* 010245 0x8008A074 A08C0002 */ sb	$t4, 0X2($a0)
/* 010246 0x8008A078 83AD000B */ lb	$t5, 0XB($sp)
/* 010247 0x8008A07C A08D0003 */ sb	$t5, 0X3($a0)
.L_8008A080:
/* 010248 0x8008A080 90AE0000 */ lbu	$t6, 0X0($a1)
/* 010249 0x8008A084 24630001 */ addiu	$v1, $v1, 1
/* 010250 0x8008A088 24420008 */ addiu	$v0, $v0, 8
/* 010251 0x8008A08C 006E082A */ slt	$at, $v1, $t6
/* 010252 0x8008A090 1420FFE9 */ bnez	$at, .L_8008A038
/* 010253 0x8008A094 24840006 */ addiu	$a0, $a0, 6
.L_8008A098:
/* 010254 0x8008A098 03E00008 */ jr	$ra
/* 010255 0x8008A09C 27BD0010 */ addiu	$sp, $sp, 16

glabel __osPackReadData
/* 010256 0x8008A0A0 3C05800A */ lui	$a1, %hi(__osContPifRam)
/* 010257 0x8008A0A4 24A5CED0 */ addiu	$a1, $a1, %lo(__osContPifRam)
/* 010258 0x8008A0A8 3C04800A */ lui	$a0, %hi(__osContPifRam)
/* 010259 0x8008A0AC 3C03800A */ lui	$v1, %hi(D_8009CF0C)
/* 010260 0x8008A0B0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 010261 0x8008A0B4 00A01025 */ move	$v0, $a1
/* 010262 0x8008A0B8 2463CF0C */ addiu	$v1, $v1, %lo(D_8009CF0C)
/* 010263 0x8008A0BC 2484CED0 */ addiu	$a0, $a0, %lo(__osContPifRam)
.L_8008A0C0:
/* 010264 0x8008A0C0 24840004 */ addiu	$a0, $a0, 4
/* 010265 0x8008A0C4 0083082B */ sltu	$at, $a0, $v1
/* 010266 0x8008A0C8 1420FFFD */ bnez	$at, .L_8008A0C0
/* 010267 0x8008A0CC AC80FFFC */ sw	$zero, -0X4($a0)
/* 010268 0x8008A0D0 3C04800A */ lui	$a0, %hi(__osMaxControllers)
/* 010269 0x8008A0D4 2484CF11 */ addiu	$a0, $a0, %lo(__osMaxControllers)
/* 010270 0x8008A0D8 908C0000 */ lbu	$t4, 0X0($a0)
/* 010271 0x8008A0DC 240E0001 */ li	$t6, 1
/* 010272 0x8008A0E0 240F00FF */ li	$t7, 255
/* 010273 0x8008A0E4 24180001 */ li	$t8, 1
/* 010274 0x8008A0E8 24190004 */ li	$t9, 4
/* 010275 0x8008A0EC 24080001 */ li	$t0, 1
/* 010276 0x8008A0F0 3409FFFF */ ori	$t1, $zero, 0XFFFF
/* 010277 0x8008A0F4 240AFFFF */ li	$t2, -1
/* 010278 0x8008A0F8 240BFFFF */ li	$t3, -1
/* 010279 0x8008A0FC ACAE003C */ sw	$t6, 0X3C($a1)
/* 010280 0x8008A100 A3AF000C */ sb	$t7, 0XC($sp)
/* 010281 0x8008A104 A3B8000D */ sb	$t8, 0XD($sp)
/* 010282 0x8008A108 A3B9000E */ sb	$t9, 0XE($sp)
/* 010283 0x8008A10C A3A8000F */ sb	$t0, 0XF($sp)
/* 010284 0x8008A110 A7A90010 */ sh	$t1, 0X10($sp)
/* 010285 0x8008A114 A3AA0012 */ sb	$t2, 0X12($sp)
/* 010286 0x8008A118 A3AB0013 */ sb	$t3, 0X13($sp)
/* 010287 0x8008A11C 1980000E */ blez	$t4, .L_8008A158
/* 010288 0x8008A120 00001825 */ move	$v1, $zero
/* 010289 0x8008A124 27A5000C */ addiu	$a1, $sp, 12
/* 010290 0x8008A128 8CA10000 */ lw	$at, 0X0($a1)
.L_8008A12C:
/* 010291 0x8008A12C 24630001 */ addiu	$v1, $v1, 1
/* 010292 0x8008A130 24420008 */ addiu	$v0, $v0, 8
/* 010293 0x8008A134 A841FFF8 */ swl	$at, -0X8($v0)
/* 010294 0x8008A138 B841FFFB */ swr	$at, -0X5($v0)
/* 010295 0x8008A13C 8CAE0004 */ lw	$t6, 0X4($a1)
/* 010296 0x8008A140 A84EFFFC */ swl	$t6, -0X4($v0)
/* 010297 0x8008A144 B84EFFFF */ swr	$t6, -0X1($v0)
/* 010298 0x8008A148 908F0000 */ lbu	$t7, 0X0($a0)
/* 010299 0x8008A14C 006F082A */ slt	$at, $v1, $t7
/* 010300 0x8008A150 5420FFF6 */ bnezl	$at, .L_8008A12C
/* 010301 0x8008A154 8CA10000 */ lw	$at, 0X0($a1)
.L_8008A158:
/* 010302 0x8008A158 241800FE */ li	$t8, 254
/* 010303 0x8008A15C A0580000 */ sb	$t8, 0X0($v0)
/* 010304 0x8008A160 03E00008 */ jr	$ra
/* 010305 0x8008A164 27BD0018 */ addiu	$sp, $sp, 24
/* 010306 0x8008A168 00000000 */ nop
/* 010307 0x8008A16C 00000000 */ nop
