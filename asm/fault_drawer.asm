.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel FaultDrawer_SetOsSyncPrintfEnabled
/* 003988 0x80083EB0 3C0E8009 */ lui	$t6, %hi(sFaultDrawContext)
/* 003989 0x80083EB4 8DCE6BE0 */ lw	$t6, %lo(sFaultDrawContext)($t6)
/* 003990 0x80083EB8 A1C40035 */ sb	$a0, 0X35($t6)
/* 003991 0x80083EBC 03E00008 */ jr	$ra
/* 003992 0x80083EC0 00000000 */ nop

glabel FaultDrawer_DrawRecImpl
/* 003993 0x80083EC4 3C18FFFA */ lui	$t8, 0xFFFA
/* 003994 0x80083EC8 03A07825 */ move	$t7, $sp
/* 003995 0x80083ECC 27BDFFE8 */ addiu	$sp, $sp, -24
/* 003996 0x80083ED0 37185A5A */ ori	$t8, $t8, 0X5A5A
.L_80083ED4:
/* 003997 0x80083ED4 25EFFFF8 */ addiu	$t7, $t7, -8
/* 003998 0x80083ED8 ADF80000 */ sw	$t8, 0X0($t7)
/* 003999 0x80083EDC 15FDFFFD */ bne	$t7, $sp, .L_80083ED4
/* 004000 0x80083EE0 ADF80004 */ sw	$t8, 0X4($t7)
/* 004001 0x80083EE4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 004002 0x80083EE8 3C0C8009 */ lui	$t4, %hi(sFaultDrawContext)
/* 004003 0x80083EEC 8D8C6BE0 */ lw	$t4, %lo(sFaultDrawContext)($t4)
/* 004004 0x80083EF0 00C41823 */ subu	$v1, $a2, $a0
/* 004005 0x80083EF4 00E55823 */ subu	$t3, $a3, $a1
/* 004006 0x80083EF8 95890004 */ lhu	$t1, 0X4($t4)
/* 004007 0x80083EFC 958E0006 */ lhu	$t6, 0X6($t4)
/* 004008 0x80083F00 24630001 */ addiu	$v1, $v1, 1
/* 004009 0x80083F04 256B0001 */ addiu	$t3, $t3, 1
/* 004010 0x80083F08 01241023 */ subu	$v0, $t1, $a0
/* 004011 0x80083F0C 00604025 */ move	$t0, $v1
/* 004012 0x80083F10 01605025 */ move	$t2, $t3
/* 004013 0x80083F14 1840002F */ blez	$v0, .L_80083FD4
/* 004014 0x80083F18 01C56823 */ subu	$t5, $t6, $a1
/* 004015 0x80083F1C 19A0002D */ blez	$t5, .L_80083FD4
/* 004016 0x80083F20 0043082A */ slt	$at, $v0, $v1
/* 004017 0x80083F24 50200003 */ beqzl	$at, .L_80083F34
/* 004018 0x80083F28 01AB082A */ slt	$at, $t5, $t3
/* 004019 0x80083F2C 00404025 */ move	$t0, $v0
/* 004020 0x80083F30 01AB082A */ slt	$at, $t5, $t3
.L_80083F34:
/* 004021 0x80083F34 10200002 */ beqz	$at, .L_80083F40
/* 004022 0x80083F38 00000000 */ nop
/* 004023 0x80083F3C 01A05025 */ move	$t2, $t5
.L_80083F40:
/* 004024 0x80083F40 01250019 */ multu	$t1, $a1
/* 004025 0x80083F44 8D8F0000 */ lw	$t7, 0X0($t4)
/* 004026 0x80083F48 00003825 */ move	$a3, $zero
/* 004027 0x80083F4C 0000C012 */ mflo	$t8
/* 004028 0x80083F50 0018C840 */ sll	$t9, $t8, 1
/* 004029 0x80083F54 0004C040 */ sll	$t8, $a0, 1
/* 004030 0x80083F58 01F97021 */ addu	$t6, $t7, $t9
/* 004031 0x80083F5C 1940001B */ blez	$t2, .L_80083FCC
/* 004032 0x80083F60 01D81021 */ addu	$v0, $t6, $t8
/* 004033 0x80083F64 97A4002A */ lhu	$a0, 0X2A($sp)
.L_80083F68:
/* 004034 0x80083F68 19000013 */ blez	$t0, .L_80083FB8
/* 004035 0x80083F6C 00001825 */ move	$v1, $zero
/* 004036 0x80083F70 31060003 */ andi	$a2, $t0, 0X3
/* 004037 0x80083F74 10C00007 */ beqz	$a2, .L_80083F94
/* 004038 0x80083F78 3C0F8009 */ lui	$t7, %hi(sFaultDrawContext)
/* 004039 0x80083F7C 00C02825 */ move	$a1, $a2
.L_80083F80:
/* 004040 0x80083F80 24630001 */ addiu	$v1, $v1, 1
/* 004041 0x80083F84 A4440000 */ sh	$a0, 0X0($v0)
/* 004042 0x80083F88 14A3FFFD */ bne	$a1, $v1, .L_80083F80
/* 004043 0x80083F8C 24420002 */ addiu	$v0, $v0, 2
/* 004044 0x80083F90 10680007 */ beq	$v1, $t0, .L_80083FB0
.L_80083F94:
/* 004045 0x80083F94 24630004 */ addiu	$v1, $v1, 4
/* 004046 0x80083F98 A4440002 */ sh	$a0, 0X2($v0)
/* 004047 0x80083F9C A4440004 */ sh	$a0, 0X4($v0)
/* 004048 0x80083FA0 A4440006 */ sh	$a0, 0X6($v0)
/* 004049 0x80083FA4 24420008 */ addiu	$v0, $v0, 8
/* 004050 0x80083FA8 1468FFFA */ bne	$v1, $t0, .L_80083F94
/* 004051 0x80083FAC A444FFF8 */ sh	$a0, -0X8($v0)
.L_80083FB0:
/* 004052 0x80083FB0 8DEF6BE0 */ lw	$t7, %lo(sFaultDrawContext)($t7)
/* 004053 0x80083FB4 95E90004 */ lhu	$t1, 0X4($t7)
.L_80083FB8:
/* 004054 0x80083FB8 0128C823 */ subu	$t9, $t1, $t0
/* 004055 0x80083FBC 24E70001 */ addiu	$a3, $a3, 1
/* 004056 0x80083FC0 00197040 */ sll	$t6, $t9, 1
/* 004057 0x80083FC4 14EAFFE8 */ bne	$a3, $t2, .L_80083F68
/* 004058 0x80083FC8 004E1021 */ addu	$v0, $v0, $t6
.L_80083FCC:
/* 004059 0x80083FCC 0C025570 */ jal	osWritebackDCacheAll
/* 004060 0x80083FD0 00000000 */ nop
.L_80083FD4:
/* 004061 0x80083FD4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 004062 0x80083FD8 27BD0018 */ addiu	$sp, $sp, 24
/* 004063 0x80083FDC 03E00008 */ jr	$ra
/* 004064 0x80083FE0 00000000 */ nop

glabel FaultDrawer_DrawChar
/* 004065 0x80083FE4 AFA40000 */ sw	$a0, 0X0($sp)
/* 004066 0x80083FE8 308400FF */ andi	$a0, $a0, 0XFF
/* 004067 0x80083FEC 3C038009 */ lui	$v1, %hi(sFaultDrawContext)
/* 004068 0x80083FF0 8C636BE0 */ lw	$v1, %lo(sFaultDrawContext)($v1)
/* 004069 0x80083FF4 00803025 */ move	$a2, $a0
/* 004070 0x80083FF8 30D80004 */ andi	$t8, $a2, 0X4
/* 004071 0x80083FFC 94650016 */ lhu	$a1, 0X16($v1)
/* 004072 0x80084000 94690004 */ lhu	$t1, 0X4($v1)
/* 004073 0x80084004 0018C883 */ sra	$t9, $t8, 2
/* 004074 0x80084008 8C780018 */ lw	$t8, 0X18($v1)
/* 004075 0x8008400C 01250019 */ multu	$t1, $a1
/* 004076 0x80084010 94620014 */ lhu	$v0, 0X14($v1)
/* 004077 0x80084014 04C10003 */ bgez	$a2, .L_80084024
/* 004078 0x80084018 000670C3 */ sra	$t6, $a2, 3
/* 004079 0x8008401C 24C10007 */ addiu	$at, $a2, 7
/* 004080 0x80084020 000170C3 */ sra	$t6, $at, 3
.L_80084024:
/* 004081 0x80084024 000E7900 */ sll	$t7, $t6, 4
/* 004082 0x80084028 01F96821 */ addu	$t5, $t7, $t9
/* 004083 0x8008402C 000D7080 */ sll	$t6, $t5, 2
/* 004084 0x80084030 0000C812 */ mflo	$t9
/* 004085 0x80084034 00196840 */ sll	$t5, $t9, 1
/* 004086 0x80084038 8C6F0000 */ lw	$t7, 0X0($v1)
/* 004087 0x8008403C 9479000C */ lhu	$t9, 0XC($v1)
/* 004088 0x80084040 030E3821 */ addu	$a3, $t8, $t6
/* 004089 0x80084044 00027040 */ sll	$t6, $v0, 1
/* 004090 0x80084048 01EDC021 */ addu	$t8, $t7, $t5
/* 004091 0x8008404C 0059082A */ slt	$at, $v0, $t9
/* 004092 0x80084050 14200041 */ bnez	$at, .L_80084158
/* 004093 0x80084054 030E4021 */ addu	$t0, $t8, $t6
/* 004094 0x80084058 9064001C */ lbu	$a0, 0X1C($v1)
/* 004095 0x8008405C 946F000E */ lhu	$t7, 0XE($v1)
/* 004096 0x80084060 00826821 */ addu	$t5, $a0, $v0
/* 004097 0x80084064 25B8FFFF */ addiu	$t8, $t5, -1
/* 004098 0x80084068 01F8082A */ slt	$at, $t7, $t8
/* 004099 0x8008406C 1420003A */ bnez	$at, .L_80084158
/* 004100 0x80084070 00000000 */ nop
/* 004101 0x80084074 946E0008 */ lhu	$t6, 0X8($v1)
/* 004102 0x80084078 00AE082A */ slt	$at, $a1, $t6
/* 004103 0x8008407C 14200036 */ bnez	$at, .L_80084158
/* 004104 0x80084080 00000000 */ nop
/* 004105 0x80084084 9062001D */ lbu	$v0, 0X1D($v1)
/* 004106 0x80084088 9479000A */ lhu	$t9, 0XA($v1)
/* 004107 0x8008408C 00456821 */ addu	$t5, $v0, $a1
/* 004108 0x80084090 25AFFFFF */ addiu	$t7, $t5, -1
/* 004109 0x80084094 032F082A */ slt	$at, $t9, $t7
/* 004110 0x80084098 1420002F */ bnez	$at, .L_80084158
/* 004111 0x8008409C 00000000 */ nop
/* 004112 0x800840A0 1840002D */ blez	$v0, .L_80084158
/* 004113 0x800840A4 00002825 */ move	$a1, $zero
/* 004114 0x800840A8 04C10004 */ bgez	$a2, .L_800840BC
/* 004115 0x800840AC 30D80003 */ andi	$t8, $a2, 0X3
/* 004116 0x800840B0 13000002 */ beqz	$t8, .L_800840BC
/* 004117 0x800840B4 00000000 */ nop
/* 004118 0x800840B8 2718FFFC */ addiu	$t8, $t8, -4
.L_800840BC:
/* 004119 0x800840BC 3C0E1000 */ lui	$t6, 0x1000
/* 004120 0x800840C0 030E6004 */ sllv	$t4, $t6, $t8
/* 004121 0x800840C4 01803025 */ move	$a2, $t4
.L_800840C8:
/* 004122 0x800840C8 8CEA0000 */ lw	$t2, 0X0($a3)
/* 004123 0x800840CC 1880001B */ blez	$a0, .L_8008413C
/* 004124 0x800840D0 00005825 */ move	$t3, $zero
.L_800840D4:
/* 004125 0x800840D4 00CA6824 */ and	$t5, $a2, $t2
/* 004126 0x800840D8 11A00008 */ beqz	$t5, .L_800840FC
/* 004127 0x800840DC 000B7840 */ sll	$t7, $t3, 1
/* 004128 0x800840E0 94790010 */ lhu	$t9, 0X10($v1)
/* 004129 0x800840E4 010F7021 */ addu	$t6, $t0, $t7
/* 004130 0x800840E8 3C038009 */ lui	$v1, %hi(sFaultDrawContext)
/* 004131 0x800840EC A5D90000 */ sh	$t9, 0X0($t6)
/* 004132 0x800840F0 8C636BE0 */ lw	$v1, %lo(sFaultDrawContext)($v1)
/* 004133 0x800840F4 1000000B */ b	.L_80084124
/* 004134 0x800840F8 9064001C */ lbu	$a0, 0X1C($v1)
.L_800840FC:
/* 004135 0x800840FC 94620012 */ lhu	$v0, 0X12($v1)
/* 004136 0x80084100 000B6840 */ sll	$t5, $t3, 1
/* 004137 0x80084104 010D7821 */ addu	$t7, $t0, $t5
/* 004138 0x80084108 30580001 */ andi	$t8, $v0, 0X1
/* 004139 0x8008410C 53000006 */ beqzl	$t8, .L_80084128
/* 004140 0x80084110 256B0001 */ addiu	$t3, $t3, 1
/* 004141 0x80084114 A5E20000 */ sh	$v0, 0X0($t7)
/* 004142 0x80084118 3C038009 */ lui	$v1, %hi(sFaultDrawContext)
/* 004143 0x8008411C 8C636BE0 */ lw	$v1, %lo(sFaultDrawContext)($v1)
/* 004144 0x80084120 9064001C */ lbu	$a0, 0X1C($v1)
.L_80084124:
/* 004145 0x80084124 256B0001 */ addiu	$t3, $t3, 1
.L_80084128:
/* 004146 0x80084128 0164082A */ slt	$at, $t3, $a0
/* 004147 0x8008412C 1420FFE9 */ bnez	$at, .L_800840D4
/* 004148 0x80084130 00063102 */ srl	$a2, $a2, 4
/* 004149 0x80084134 94690004 */ lhu	$t1, 0X4($v1)
/* 004150 0x80084138 9062001D */ lbu	$v0, 0X1D($v1)
.L_8008413C:
/* 004151 0x8008413C 0009C840 */ sll	$t9, $t1, 1
/* 004152 0x80084140 01194021 */ addu	$t0, $t0, $t9
/* 004153 0x80084144 24E70008 */ addiu	$a3, $a3, 8
/* 004154 0x80084148 24A50001 */ addiu	$a1, $a1, 1
/* 004155 0x8008414C 00A2082A */ slt	$at, $a1, $v0
/* 004156 0x80084150 5420FFDD */ bnezl	$at, .L_800840C8
/* 004157 0x80084154 01803025 */ move	$a2, $t4
.L_80084158:
/* 004158 0x80084158 03E00008 */ jr	$ra
/* 004159 0x8008415C 00000000 */ nop

glabel FaultDrawer_ColorToPrintColor
/* 004160 0x80084160 AFA40000 */ sw	$a0, 0X0($sp)
/* 004161 0x80084164 3084FFFF */ andi	$a0, $a0, 0XFFFF
/* 004162 0x80084168 3C058009 */ lui	$a1, %hi(sFaultDrawContext)
/* 004163 0x8008416C 8CA56BE0 */ lw	$a1, %lo(sFaultDrawContext)($a1)
/* 004164 0x80084170 00801025 */ move	$v0, $a0
/* 004165 0x80084174 94AE0020 */ lhu	$t6, 0X20($a1)
/* 004166 0x80084178 00A01825 */ move	$v1, $a1
/* 004167 0x8008417C 548E0004 */ bnel	$a0, $t6, .L_80084190
/* 004168 0x80084180 946F0022 */ lhu	$t7, 0X22($v1)
/* 004169 0x80084184 03E00008 */ jr	$ra
/* 004170 0x80084188 00001025 */ move	$v0, $zero
/* 004171 0x8008418C 946F0022 */ lhu	$t7, 0X22($v1)
.L_80084190:
/* 004172 0x80084190 24A40004 */ addiu	$a0, $a1, 4
/* 004173 0x80084194 2405000A */ li	$a1, 10
/* 004174 0x80084198 144F0003 */ bne	$v0, $t7, .L_800841A8
/* 004175 0x8008419C 24030002 */ li	$v1, 2
/* 004176 0x800841A0 03E00008 */ jr	$ra
/* 004177 0x800841A4 24020001 */ li	$v0, 1
.L_800841A8:
/* 004178 0x800841A8 94980020 */ lhu	$t8, 0X20($a0)
/* 004179 0x800841AC 54580004 */ bnel	$v0, $t8, .L_800841C0
/* 004180 0x800841B0 94990022 */ lhu	$t9, 0X22($a0)
/* 004181 0x800841B4 03E00008 */ jr	$ra
/* 004182 0x800841B8 00601025 */ move	$v0, $v1
/* 004183 0x800841BC 94990022 */ lhu	$t9, 0X22($a0)
.L_800841C0:
/* 004184 0x800841C0 54590004 */ bnel	$v0, $t9, .L_800841D4
/* 004185 0x800841C4 94880024 */ lhu	$t0, 0X24($a0)
/* 004186 0x800841C8 03E00008 */ jr	$ra
/* 004187 0x800841CC 24620001 */ addiu	$v0, $v1, 1
/* 004188 0x800841D0 94880024 */ lhu	$t0, 0X24($a0)
.L_800841D4:
/* 004189 0x800841D4 54480004 */ bnel	$v0, $t0, .L_800841E8
/* 004190 0x800841D8 94890026 */ lhu	$t1, 0X26($a0)
/* 004191 0x800841DC 03E00008 */ jr	$ra
/* 004192 0x800841E0 24620002 */ addiu	$v0, $v1, 2
/* 004193 0x800841E4 94890026 */ lhu	$t1, 0X26($a0)
.L_800841E8:
/* 004194 0x800841E8 54490004 */ bnel	$v0, $t1, .L_800841FC
/* 004195 0x800841EC 24630004 */ addiu	$v1, $v1, 4
/* 004196 0x800841F0 03E00008 */ jr	$ra
/* 004197 0x800841F4 24620003 */ addiu	$v0, $v1, 3
/* 004198 0x800841F8 24630004 */ addiu	$v1, $v1, 4
.L_800841FC:
/* 004199 0x800841FC 1465FFEA */ bne	$v1, $a1, .L_800841A8
/* 004200 0x80084200 24840008 */ addiu	$a0, $a0, 8
/* 004201 0x80084204 2402FFFF */ li	$v0, -1
/* 004202 0x80084208 03E00008 */ jr	$ra
/* 004203 0x8008420C 00000000 */ nop

glabel FaultDrawer_UpdatePrintColor
/* 004204 0x80084210 3C08FFFA */ lui	$t0, 0xFFFA
/* 004205 0x80084214 03A04825 */ move	$t1, $sp
/* 004206 0x80084218 27BDFFE8 */ addiu	$sp, $sp, -24
/* 004207 0x8008421C 35085A5A */ ori	$t0, $t0, 0X5A5A
.L_80084220:
/* 004208 0x80084220 2529FFF8 */ addiu	$t1, $t1, -8
/* 004209 0x80084224 AD280000 */ sw	$t0, 0X0($t1)
/* 004210 0x80084228 153DFFFD */ bne	$t1, $sp, .L_80084220
/* 004211 0x8008422C AD280004 */ sw	$t0, 0X4($t1)
/* 004212 0x80084230 AFBF0014 */ sw	$ra, 0X14($sp)
/* 004213 0x80084234 3C0E8009 */ lui	$t6, %hi(sFaultDrawContext)
/* 004214 0x80084238 8DCE6BE0 */ lw	$t6, %lo(sFaultDrawContext)($t6)
/* 004215 0x8008423C 3C04800A */ lui	$a0, %hi(D_80099050)
/* 004216 0x80084240 91CF0035 */ lbu	$t7, 0X35($t6)
/* 004217 0x80084244 51E0001A */ beqzl	$t7, .L_800842B0
/* 004218 0x80084248 8FBF0014 */ lw	$ra, 0X14($sp)
/* 004219 0x8008424C 0C02064F */ jal	Fault_Log
/* 004220 0x80084250 24849050 */ addiu	$a0, $a0, %lo(D_80099050)
/* 004221 0x80084254 3C188009 */ lui	$t8, %hi(sFaultDrawContext)
/* 004222 0x80084258 8F186BE0 */ lw	$t8, %lo(sFaultDrawContext)($t8)
/* 004223 0x8008425C 0C021058 */ jal	FaultDrawer_ColorToPrintColor
/* 004224 0x80084260 97040010 */ lhu	$a0, 0X10($t8)
/* 004225 0x80084264 04400006 */ bltz	$v0, .L_80084280
/* 004226 0x80084268 00402825 */ move	$a1, $v0
/* 004227 0x8008426C 28410008 */ slti	$at, $v0, 8
/* 004228 0x80084270 10200003 */ beqz	$at, .L_80084280
/* 004229 0x80084274 3C04800A */ lui	$a0, %hi(D_80099054)
/* 004230 0x80084278 0C02064F */ jal	Fault_Log
/* 004231 0x8008427C 24849054 */ addiu	$a0, $a0, %lo(D_80099054)
.L_80084280:
/* 004232 0x80084280 3C198009 */ lui	$t9, %hi(sFaultDrawContext)
/* 004233 0x80084284 8F396BE0 */ lw	$t9, %lo(sFaultDrawContext)($t9)
/* 004234 0x80084288 0C021058 */ jal	FaultDrawer_ColorToPrintColor
/* 004235 0x8008428C 97240012 */ lhu	$a0, 0X12($t9)
/* 004236 0x80084290 04400006 */ bltz	$v0, .L_800842AC
/* 004237 0x80084294 00402825 */ move	$a1, $v0
/* 004238 0x80084298 28410008 */ slti	$at, $v0, 8
/* 004239 0x8008429C 10200003 */ beqz	$at, .L_800842AC
/* 004240 0x800842A0 3C04800A */ lui	$a0, %hi(D_8009905C)
/* 004241 0x800842A4 0C02064F */ jal	Fault_Log
/* 004242 0x800842A8 2484905C */ addiu	$a0, $a0, %lo(D_8009905C)
.L_800842AC:
/* 004243 0x800842AC 8FBF0014 */ lw	$ra, 0X14($sp)
.L_800842B0:
/* 004244 0x800842B0 27BD0018 */ addiu	$sp, $sp, 24
/* 004245 0x800842B4 03E00008 */ jr	$ra
/* 004246 0x800842B8 00000000 */ nop

glabel FaultDrawer_SetForeColor
/* 004247 0x800842BC 3C0FFFFA */ lui	$t7, 0xFFFA
/* 004248 0x800842C0 03A0C025 */ move	$t8, $sp
/* 004249 0x800842C4 27BDFFE8 */ addiu	$sp, $sp, -24
/* 004250 0x800842C8 35EF5A5A */ ori	$t7, $t7, 0X5A5A
.L_800842CC:
/* 004251 0x800842CC 2718FFF8 */ addiu	$t8, $t8, -8
/* 004252 0x800842D0 AF0F0000 */ sw	$t7, 0X0($t8)
/* 004253 0x800842D4 171DFFFD */ bne	$t8, $sp, .L_800842CC
/* 004254 0x800842D8 AF0F0004 */ sw	$t7, 0X4($t8)
/* 004255 0x800842DC AFA40018 */ sw	$a0, 0X18($sp)
/* 004256 0x800842E0 3084FFFF */ andi	$a0, $a0, 0XFFFF
/* 004257 0x800842E4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 004258 0x800842E8 3C0E8009 */ lui	$t6, %hi(sFaultDrawContext)
/* 004259 0x800842EC 8DCE6BE0 */ lw	$t6, %lo(sFaultDrawContext)($t6)
/* 004260 0x800842F0 0C021084 */ jal	FaultDrawer_UpdatePrintColor
/* 004261 0x800842F4 A5C40010 */ sh	$a0, 0X10($t6)
/* 004262 0x800842F8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 004263 0x800842FC 27BD0018 */ addiu	$sp, $sp, 24
/* 004264 0x80084300 03E00008 */ jr	$ra
/* 004265 0x80084304 00000000 */ nop

glabel FaultDrawer_SetBackColor
/* 004266 0x80084308 3C0FFFFA */ lui	$t7, 0xFFFA
/* 004267 0x8008430C 03A0C025 */ move	$t8, $sp
/* 004268 0x80084310 27BDFFE8 */ addiu	$sp, $sp, -24
/* 004269 0x80084314 35EF5A5A */ ori	$t7, $t7, 0X5A5A
.L_80084318:
/* 004270 0x80084318 2718FFF8 */ addiu	$t8, $t8, -8
/* 004271 0x8008431C AF0F0000 */ sw	$t7, 0X0($t8)
/* 004272 0x80084320 171DFFFD */ bne	$t8, $sp, .L_80084318
/* 004273 0x80084324 AF0F0004 */ sw	$t7, 0X4($t8)
/* 004274 0x80084328 AFA40018 */ sw	$a0, 0X18($sp)
/* 004275 0x8008432C 3084FFFF */ andi	$a0, $a0, 0XFFFF
/* 004276 0x80084330 AFBF0014 */ sw	$ra, 0X14($sp)
/* 004277 0x80084334 3C0E8009 */ lui	$t6, %hi(sFaultDrawContext)
/* 004278 0x80084338 8DCE6BE0 */ lw	$t6, %lo(sFaultDrawContext)($t6)
/* 004279 0x8008433C 0C021084 */ jal	FaultDrawer_UpdatePrintColor
/* 004280 0x80084340 A5C40012 */ sh	$a0, 0X12($t6)
/* 004281 0x80084344 8FBF0014 */ lw	$ra, 0X14($sp)
/* 004282 0x80084348 27BD0018 */ addiu	$sp, $sp, 24
/* 004283 0x8008434C 03E00008 */ jr	$ra
/* 004284 0x80084350 00000000 */ nop

glabel FaultDrawer_SetFontColor
/* 004285 0x80084354 3C0EFFFA */ lui	$t6, 0xFFFA
/* 004286 0x80084358 03A07825 */ move	$t7, $sp
/* 004287 0x8008435C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 004288 0x80084360 35CE5A5A */ ori	$t6, $t6, 0X5A5A
.L_80084364:
/* 004289 0x80084364 25EFFFF8 */ addiu	$t7, $t7, -8
/* 004290 0x80084368 ADEE0000 */ sw	$t6, 0X0($t7)
/* 004291 0x8008436C 15FDFFFD */ bne	$t7, $sp, .L_80084364
/* 004292 0x80084370 ADEE0004 */ sw	$t6, 0X4($t7)
/* 004293 0x80084374 AFBF0014 */ sw	$ra, 0X14($sp)
/* 004294 0x80084378 AFA40018 */ sw	$a0, 0X18($sp)
/* 004295 0x8008437C 3085FFFF */ andi	$a1, $a0, 0XFFFF
/* 004296 0x80084380 34A40001 */ ori	$a0, $a1, 0X1
/* 004297 0x80084384 0C0210AF */ jal	FaultDrawer_SetForeColor
/* 004298 0x80084388 3084FFFF */ andi	$a0, $a0, 0XFFFF
/* 004299 0x8008438C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 004300 0x80084390 27BD0018 */ addiu	$sp, $sp, 24
/* 004301 0x80084394 03E00008 */ jr	$ra
/* 004302 0x80084398 00000000 */ nop

glabel FaultDrawer_SetCharPad
/* 004303 0x8008439C AFA40000 */ sw	$a0, 0X0($sp)
/* 004304 0x800843A0 AFA50004 */ sw	$a1, 0X4($sp)
/* 004305 0x800843A4 00052E00 */ sll	$a1, $a1, 24
/* 004306 0x800843A8 00042600 */ sll	$a0, $a0, 24
/* 004307 0x800843AC 3C028009 */ lui	$v0, %hi(sFaultDrawContext)
/* 004308 0x800843B0 24426BE0 */ addiu	$v0, $v0, %lo(sFaultDrawContext)
/* 004309 0x800843B4 00042603 */ sra	$a0, $a0, 24
/* 004310 0x800843B8 00052E03 */ sra	$a1, $a1, 24
/* 004311 0x800843BC 8C4E0000 */ lw	$t6, 0X0($v0)
/* 004312 0x800843C0 A1C4001E */ sb	$a0, 0X1E($t6)
/* 004313 0x800843C4 8C4F0000 */ lw	$t7, 0X0($v0)
/* 004314 0x800843C8 A1E5001F */ sb	$a1, 0X1F($t7)
/* 004315 0x800843CC 03E00008 */ jr	$ra
/* 004316 0x800843D0 00000000 */ nop

glabel FaultDrawer_SetCursor
/* 004317 0x800843D4 3C0AFFFA */ lui	$t2, 0xFFFA
/* 004318 0x800843D8 03A05825 */ move	$t3, $sp
/* 004319 0x800843DC 27BDFFE8 */ addiu	$sp, $sp, -24
/* 004320 0x800843E0 354A5A5A */ ori	$t2, $t2, 0X5A5A
.L_800843E4:
/* 004321 0x800843E4 256BFFF8 */ addiu	$t3, $t3, -8
/* 004322 0x800843E8 AD6A0000 */ sw	$t2, 0X0($t3)
/* 004323 0x800843EC 157DFFFD */ bne	$t3, $sp, .L_800843E4
/* 004324 0x800843F0 AD6A0004 */ sw	$t2, 0X4($t3)
/* 004325 0x800843F4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 004326 0x800843F8 AFA40018 */ sw	$a0, 0X18($sp)
/* 004327 0x800843FC AFA5001C */ sw	$a1, 0X1C($sp)
/* 004328 0x80084400 3C028009 */ lui	$v0, %hi(sFaultDrawContext)
/* 004329 0x80084404 8C426BE0 */ lw	$v0, %lo(sFaultDrawContext)($v0)
/* 004330 0x80084408 3C04800A */ lui	$a0, %hi(D_80099064)
/* 004331 0x8008440C 24849064 */ addiu	$a0, $a0, %lo(D_80099064)
/* 004332 0x80084410 904E0035 */ lbu	$t6, 0X35($v0)
/* 004333 0x80084414 8FAF001C */ lw	$t7, 0X1C($sp)
/* 004334 0x80084418 8FAB0018 */ lw	$t3, 0X18($sp)
/* 004335 0x8008441C 51C00026 */ beqzl	$t6, .L_800844B8
/* 004336 0x80084420 8FA80018 */ lw	$t0, 0X18($sp)
/* 004337 0x80084424 94580008 */ lhu	$t8, 0X8($v0)
/* 004338 0x80084428 9048001D */ lbu	$t0, 0X1D($v0)
/* 004339 0x8008442C 8049001F */ lb	$t1, 0X1F($v0)
/* 004340 0x80084430 01F8C823 */ subu	$t9, $t7, $t8
/* 004341 0x80084434 804F001E */ lb	$t7, 0X1E($v0)
/* 004342 0x80084438 01095021 */ addu	$t2, $t0, $t1
/* 004343 0x8008443C 032A001A */ div	$zero, $t9, $t2
/* 004344 0x80084440 944C000C */ lhu	$t4, 0XC($v0)
/* 004345 0x80084444 904E001C */ lbu	$t6, 0X1C($v0)
/* 004346 0x80084448 00002812 */ mflo	$a1
/* 004347 0x8008444C 016C6823 */ subu	$t5, $t3, $t4
/* 004348 0x80084450 01CFC021 */ addu	$t8, $t6, $t7
/* 004349 0x80084454 01B8001A */ div	$zero, $t5, $t8
/* 004350 0x80084458 15400002 */ bnez	$t2, .L_80084464
/* 004351 0x8008445C 00000000 */ nop
/* 004352 0x80084460 0007000D */ break	0x00007
.L_80084464:
/* 004353 0x80084464 2401FFFF */ li	$at, -1
/* 004354 0x80084468 15410004 */ bne	$t2, $at, .L_8008447C
/* 004355 0x8008446C 3C018000 */ lui	$at, 0x8000
/* 004356 0x80084470 17210002 */ bne	$t9, $at, .L_8008447C
/* 004357 0x80084474 00000000 */ nop
/* 004358 0x80084478 0006000D */ break	0x00006
.L_8008447C:
/* 004359 0x8008447C 00003012 */ mflo	$a2
/* 004360 0x80084480 17000002 */ bnez	$t8, .L_8008448C
/* 004361 0x80084484 00000000 */ nop
/* 004362 0x80084488 0007000D */ break	0x00007
.L_8008448C:
/* 004363 0x8008448C 2401FFFF */ li	$at, -1
/* 004364 0x80084490 17010004 */ bne	$t8, $at, .L_800844A4
/* 004365 0x80084494 3C018000 */ lui	$at, 0x8000
/* 004366 0x80084498 15A10002 */ bne	$t5, $at, .L_800844A4
/* 004367 0x8008449C 00000000 */ nop
/* 004368 0x800844A0 0006000D */ break	0x00006
.L_800844A4:
/* 004369 0x800844A4 0C02064F */ jal	Fault_Log
/* 004370 0x800844A8 00000000 */ nop
/* 004371 0x800844AC 3C028009 */ lui	$v0, %hi(sFaultDrawContext)
/* 004372 0x800844B0 8C426BE0 */ lw	$v0, %lo(sFaultDrawContext)($v0)
/* 004373 0x800844B4 8FA80018 */ lw	$t0, 0X18($sp)
.L_800844B8:
/* 004374 0x800844B8 3C198009 */ lui	$t9, %hi(sFaultDrawContext)
/* 004375 0x800844BC A4480014 */ sh	$t0, 0X14($v0)
/* 004376 0x800844C0 8F396BE0 */ lw	$t9, %lo(sFaultDrawContext)($t9)
/* 004377 0x800844C4 8FA9001C */ lw	$t1, 0X1C($sp)
/* 004378 0x800844C8 A7290016 */ sh	$t1, 0X16($t9)
/* 004379 0x800844CC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 004380 0x800844D0 03E00008 */ jr	$ra
/* 004381 0x800844D4 27BD0018 */ addiu	$sp, $sp, 24

glabel FaultDrawer_FillScreen
/* 004382 0x800844D8 3C19FFFA */ lui	$t9, 0xFFFA
/* 004383 0x800844DC 03A04025 */ move	$t0, $sp
/* 004384 0x800844E0 27BDFFE0 */ addiu	$sp, $sp, -32
/* 004385 0x800844E4 37395A5A */ ori	$t9, $t9, 0X5A5A
.L_800844E8:
/* 004386 0x800844E8 2508FFF8 */ addiu	$t0, $t0, -8
/* 004387 0x800844EC AD190000 */ sw	$t9, 0X0($t0)
/* 004388 0x800844F0 151DFFFD */ bne	$t0, $sp, .L_800844E8
/* 004389 0x800844F4 AD190004 */ sw	$t9, 0X4($t0)
/* 004390 0x800844F8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 004391 0x800844FC 3C028009 */ lui	$v0, %hi(sFaultDrawContext)
/* 004392 0x80084500 8C426BE0 */ lw	$v0, %lo(sFaultDrawContext)($v0)
/* 004393 0x80084504 3C04800A */ lui	$a0, %hi(D_80099070)
/* 004394 0x80084508 904E0035 */ lbu	$t6, 0X35($v0)
/* 004395 0x8008450C 51C00006 */ beqzl	$t6, .L_80084528
/* 004396 0x80084510 944F0012 */ lhu	$t7, 0X12($v0)
/* 004397 0x80084514 0C02064F */ jal	Fault_Log
/* 004398 0x80084518 24849070 */ addiu	$a0, $a0, %lo(D_80099070)
/* 004399 0x8008451C 3C028009 */ lui	$v0, %hi(sFaultDrawContext)
/* 004400 0x80084520 8C426BE0 */ lw	$v0, %lo(sFaultDrawContext)($v0)
/* 004401 0x80084524 944F0012 */ lhu	$t7, 0X12($v0)
.L_80084528:
/* 004402 0x80084528 9444000C */ lhu	$a0, 0XC($v0)
/* 004403 0x8008452C 94450008 */ lhu	$a1, 0X8($v0)
/* 004404 0x80084530 9446000E */ lhu	$a2, 0XE($v0)
/* 004405 0x80084534 9447000A */ lhu	$a3, 0XA($v0)
/* 004406 0x80084538 35F80001 */ ori	$t8, $t7, 0X1
/* 004407 0x8008453C 0C020FB1 */ jal	FaultDrawer_DrawRecImpl
/* 004408 0x80084540 AFB80010 */ sw	$t8, 0X10($sp)
/* 004409 0x80084544 3C028009 */ lui	$v0, %hi(sFaultDrawContext)
/* 004410 0x80084548 8C426BE0 */ lw	$v0, %lo(sFaultDrawContext)($v0)
/* 004411 0x8008454C 9444000C */ lhu	$a0, 0XC($v0)
/* 004412 0x80084550 0C0210F5 */ jal	FaultDrawer_SetCursor
/* 004413 0x80084554 94450008 */ lhu	$a1, 0X8($v0)
/* 004414 0x80084558 8FBF001C */ lw	$ra, 0X1C($sp)
/* 004415 0x8008455C 27BD0020 */ addiu	$sp, $sp, 32
/* 004416 0x80084560 03E00008 */ jr	$ra
/* 004417 0x80084564 00000000 */ nop

glabel FaultDrawer_FormatStringFunc
/* 004418 0x80084568 3C0BFFFA */ lui	$t3, 0xFFFA
/* 004419 0x8008456C 03A06025 */ move	$t4, $sp
/* 004420 0x80084570 27BDFFC8 */ addiu	$sp, $sp, -56
/* 004421 0x80084574 356B5A5A */ ori	$t3, $t3, 0X5A5A
.L_80084578:
/* 004422 0x80084578 258CFFF8 */ addiu	$t4, $t4, -8
/* 004423 0x8008457C AD8B0000 */ sw	$t3, 0X0($t4)
/* 004424 0x80084580 159DFFFD */ bne	$t4, $sp, .L_80084578
/* 004425 0x80084584 AD8B0004 */ sw	$t3, 0X4($t4)
/* 004426 0x80084588 AFB2001C */ sw	$s2, 0X1C($sp)
/* 004427 0x8008458C AFB10018 */ sw	$s1, 0X18($sp)
/* 004428 0x80084590 00A08825 */ move	$s1, $a1
/* 004429 0x80084594 00C09025 */ move	$s2, $a2
/* 004430 0x80084598 AFBF0034 */ sw	$ra, 0X34($sp)
/* 004431 0x8008459C AFB70030 */ sw	$s7, 0X30($sp)
/* 004432 0x800845A0 AFB6002C */ sw	$s6, 0X2C($sp)
/* 004433 0x800845A4 AFB50028 */ sw	$s5, 0X28($sp)
/* 004434 0x800845A8 AFB40024 */ sw	$s4, 0X24($sp)
/* 004435 0x800845AC AFB30020 */ sw	$s3, 0X20($sp)
/* 004436 0x800845B0 AFB00014 */ sw	$s0, 0X14($sp)
/* 004437 0x800845B4 AFA40038 */ sw	$a0, 0X38($sp)
/* 004438 0x800845B8 12400062 */ beqz	$s2, .L_80084744
/* 004439 0x800845BC 3C17800A */ lui	$s7, %hi(D_80099078)
/* 004440 0x800845C0 3C15800A */ lui	$s5, %hi(D_8009907C)
/* 004441 0x800845C4 3C108009 */ lui	$s0, %hi(sFaultDrawContext)
/* 004442 0x800845C8 26106BE0 */ addiu	$s0, $s0, %lo(sFaultDrawContext)
/* 004443 0x800845CC 26B5907C */ addiu	$s5, $s5, %lo(D_8009907C)
/* 004444 0x800845D0 26F79078 */ addiu	$s7, $s7, %lo(D_80099078)
/* 004445 0x800845D4 24160001 */ li	$s6, 1
/* 004446 0x800845D8 2414001A */ li	$s4, 26
/* 004447 0x800845DC 2413000A */ li	$s3, 10
.L_800845E0:
/* 004448 0x800845E0 8E020000 */ lw	$v0, 0X0($s0)
/* 004449 0x800845E4 904E0034 */ lbu	$t6, 0X34($v0)
/* 004450 0x800845E8 51C00010 */ beqzl	$t6, .L_8008462C
/* 004451 0x800845EC 92240000 */ lbu	$a0, 0X0($s1)
/* 004452 0x800845F0 A0400034 */ sb	$zero, 0X34($v0)
/* 004453 0x800845F4 92250000 */ lbu	$a1, 0X0($s1)
/* 004454 0x800845F8 28A10031 */ slti	$at, $a1, 49
/* 004455 0x800845FC 1420002B */ bnez	$at, .L_800846AC
/* 004456 0x80084600 28A1003A */ slti	$at, $a1, 58
/* 004457 0x80084604 5020002A */ beqzl	$at, .L_800846B0
/* 004458 0x80084608 8E020000 */ lw	$v0, 0X0($s0)
/* 004459 0x8008460C 8E0F0000 */ lw	$t7, 0X0($s0)
/* 004460 0x80084610 0005C040 */ sll	$t8, $a1, 1
/* 004461 0x80084614 01F8C821 */ addu	$t9, $t7, $t8
/* 004462 0x80084618 0C0210AF */ jal	FaultDrawer_SetForeColor
/* 004463 0x8008461C 9724FFC0 */ lhu	$a0, -0X40($t9)
/* 004464 0x80084620 10000023 */ b	.L_800846B0
/* 004465 0x80084624 8E020000 */ lw	$v0, 0X0($s0)
/* 004466 0x80084628 92240000 */ lbu	$a0, 0X0($s1)
.L_8008462C:
/* 004467 0x8008462C 10930005 */ beq	$a0, $s3, .L_80084644
/* 004468 0x80084630 00802825 */ move	$a1, $a0
/* 004469 0x80084634 1094000C */ beq	$a0, $s4, .L_80084668
/* 004470 0x80084638 00000000 */ nop
/* 004471 0x8008463C 1000000D */ b	.L_80084674
/* 004472 0x80084640 904A0035 */ lbu	$t2, 0X35($v0)
.L_80084644:
/* 004473 0x80084644 90480035 */ lbu	$t0, 0X35($v0)
/* 004474 0x80084648 51000005 */ beqzl	$t0, .L_80084660
/* 004475 0x8008464C 94490004 */ lhu	$t1, 0X4($v0)
/* 004476 0x80084650 0C02064F */ jal	Fault_Log
/* 004477 0x80084654 02E02025 */ move	$a0, $s7
/* 004478 0x80084658 8E020000 */ lw	$v0, 0X0($s0)
/* 004479 0x8008465C 94490004 */ lhu	$t1, 0X4($v0)
.L_80084660:
/* 004480 0x80084660 10000012 */ b	.L_800846AC
/* 004481 0x80084664 A4490014 */ sh	$t1, 0X14($v0)
.L_80084668:
/* 004482 0x80084668 10000010 */ b	.L_800846AC
/* 004483 0x8008466C A0560034 */ sb	$s6, 0X34($v0)
/* 004484 0x80084670 904A0035 */ lbu	$t2, 0X35($v0)
.L_80084674:
/* 004485 0x80084674 11400004 */ beqz	$t2, .L_80084688
/* 004486 0x80084678 00000000 */ nop
/* 004487 0x8008467C 0C02064F */ jal	Fault_Log
/* 004488 0x80084680 02A02025 */ move	$a0, $s5
/* 004489 0x80084684 92240000 */ lbu	$a0, 0X0($s1)
.L_80084688:
/* 004490 0x80084688 0C020FF9 */ jal	FaultDrawer_DrawChar
/* 004491 0x8008468C 00000000 */ nop
/* 004492 0x80084690 8E020000 */ lw	$v0, 0X0($s0)
/* 004493 0x80084694 944B0014 */ lhu	$t3, 0X14($v0)
/* 004494 0x80084698 904C001C */ lbu	$t4, 0X1C($v0)
/* 004495 0x8008469C 804E001E */ lb	$t6, 0X1E($v0)
/* 004496 0x800846A0 016C6821 */ addu	$t5, $t3, $t4
/* 004497 0x800846A4 01AE7821 */ addu	$t7, $t5, $t6
/* 004498 0x800846A8 A44F0014 */ sh	$t7, 0X14($v0)
.L_800846AC:
/* 004499 0x800846AC 8E020000 */ lw	$v0, 0X0($s0)
.L_800846B0:
/* 004500 0x800846B0 9459000E */ lhu	$t9, 0XE($v0)
/* 004501 0x800846B4 9048001C */ lbu	$t0, 0X1C($v0)
/* 004502 0x800846B8 94580014 */ lhu	$t8, 0X14($v0)
/* 004503 0x800846BC 03284823 */ subu	$t1, $t9, $t0
/* 004504 0x800846C0 0309082A */ slt	$at, $t8, $t1
/* 004505 0x800846C4 5420001D */ bnezl	$at, .L_8008473C
/* 004506 0x800846C8 2652FFFF */ addiu	$s2, $s2, -1
/* 004507 0x800846CC 944A000C */ lhu	$t2, 0XC($v0)
/* 004508 0x800846D0 A44A0014 */ sh	$t2, 0X14($v0)
/* 004509 0x800846D4 8E020000 */ lw	$v0, 0X0($s0)
/* 004510 0x800846D8 944B0016 */ lhu	$t3, 0X16($v0)
/* 004511 0x800846DC 904C001D */ lbu	$t4, 0X1D($v0)
/* 004512 0x800846E0 804E001F */ lb	$t6, 0X1F($v0)
/* 004513 0x800846E4 016C6821 */ addu	$t5, $t3, $t4
/* 004514 0x800846E8 01AE7821 */ addu	$t7, $t5, $t6
/* 004515 0x800846EC A44F0016 */ sh	$t7, 0X16($v0)
/* 004516 0x800846F0 8E020000 */ lw	$v0, 0X0($s0)
/* 004517 0x800846F4 9448000A */ lhu	$t0, 0XA($v0)
/* 004518 0x800846F8 9058001D */ lbu	$t8, 0X1D($v0)
/* 004519 0x800846FC 94590016 */ lhu	$t9, 0X16($v0)
/* 004520 0x80084700 01184823 */ subu	$t1, $t0, $t8
/* 004521 0x80084704 0329082A */ slt	$at, $t9, $t1
/* 004522 0x80084708 5420000C */ bnezl	$at, .L_8008473C
/* 004523 0x8008470C 2652FFFF */ addiu	$s2, $s2, -1
/* 004524 0x80084710 8C430038 */ lw	$v1, 0X38($v0)
/* 004525 0x80084714 50600007 */ beqzl	$v1, .L_80084734
/* 004526 0x80084718 944A0008 */ lhu	$t2, 0X8($v0)
/* 004527 0x8008471C 0060F809 */ jalr	$v1
/* 004528 0x80084720 00000000 */ nop
/* 004529 0x80084724 0C021136 */ jal	FaultDrawer_FillScreen
/* 004530 0x80084728 00000000 */ nop
/* 004531 0x8008472C 8E020000 */ lw	$v0, 0X0($s0)
/* 004532 0x80084730 944A0008 */ lhu	$t2, 0X8($v0)
.L_80084734:
/* 004533 0x80084734 A44A0016 */ sh	$t2, 0X16($v0)
/* 004534 0x80084738 2652FFFF */ addiu	$s2, $s2, -1
.L_8008473C:
/* 004535 0x8008473C 1640FFA8 */ bnez	$s2, .L_800845E0
/* 004536 0x80084740 26310001 */ addiu	$s1, $s1, 1
.L_80084744:
/* 004537 0x80084744 0C025570 */ jal	osWritebackDCacheAll
/* 004538 0x80084748 00000000 */ nop
/* 004539 0x8008474C 8FA20038 */ lw	$v0, 0X38($sp)
/* 004540 0x80084750 8FBF0034 */ lw	$ra, 0X34($sp)
/* 004541 0x80084754 8FB00014 */ lw	$s0, 0X14($sp)
/* 004542 0x80084758 8FB10018 */ lw	$s1, 0X18($sp)
/* 004543 0x8008475C 8FB2001C */ lw	$s2, 0X1C($sp)
/* 004544 0x80084760 8FB30020 */ lw	$s3, 0X20($sp)
/* 004545 0x80084764 8FB40024 */ lw	$s4, 0X24($sp)
/* 004546 0x80084768 8FB50028 */ lw	$s5, 0X28($sp)
/* 004547 0x8008476C 8FB6002C */ lw	$s6, 0X2C($sp)
/* 004548 0x80084770 8FB70030 */ lw	$s7, 0X30($sp)
/* 004549 0x80084774 03E00008 */ jr	$ra
/* 004550 0x80084778 27BD0038 */ addiu	$sp, $sp, 56

glabel FaultDrawer_VPrintf
/* 004551 0x8008477C 3C0EFFFA */ lui	$t6, 0xFFFA
/* 004552 0x80084780 03A07825 */ move	$t7, $sp
/* 004553 0x80084784 27BDFFE8 */ addiu	$sp, $sp, -24
/* 004554 0x80084788 35CE5A5A */ ori	$t6, $t6, 0X5A5A
.L_8008478C:
/* 004555 0x8008478C 25EFFFF8 */ addiu	$t7, $t7, -8
/* 004556 0x80084790 ADEE0000 */ sw	$t6, 0X0($t7)
/* 004557 0x80084794 15FDFFFD */ bne	$t7, $sp, .L_8008478C
/* 004558 0x80084798 ADEE0004 */ sw	$t6, 0X4($t7)
/* 004559 0x8008479C AFBF0014 */ sw	$ra, 0X14($sp)
/* 004560 0x800847A0 00803025 */ move	$a2, $a0
/* 004561 0x800847A4 00A03825 */ move	$a3, $a1
/* 004562 0x800847A8 3C048008 */ lui	$a0, %hi(FaultDrawer_FormatStringFunc)
/* 004563 0x800847AC 3C058009 */ lui	$a1, %hi(sFaultDrawContext)
/* 004564 0x800847B0 8CA56BE0 */ lw	$a1, %lo(sFaultDrawContext)($a1)
/* 004565 0x800847B4 0C023814 */ jal	_Printf
/* 004566 0x800847B8 24844568 */ addiu	$a0, $a0, %lo(FaultDrawer_FormatStringFunc)
/* 004567 0x800847BC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 004568 0x800847C0 27BD0018 */ addiu	$sp, $sp, 24
/* 004569 0x800847C4 03E00008 */ jr	$ra
/* 004570 0x800847C8 00000000 */ nop

glabel FaultDrawer_Printf
/* 004571 0x800847CC 3C0EFFFA */ lui	$t6, 0xFFFA
/* 004572 0x800847D0 03A07825 */ move	$t7, $sp
/* 004573 0x800847D4 27BDFFE0 */ addiu	$sp, $sp, -32
/* 004574 0x800847D8 35CE5A5A */ ori	$t6, $t6, 0X5A5A
.L_800847DC:
/* 004575 0x800847DC 25EFFFF8 */ addiu	$t7, $t7, -8
/* 004576 0x800847E0 ADEE0000 */ sw	$t6, 0X0($t7)
/* 004577 0x800847E4 15FDFFFD */ bne	$t7, $sp, .L_800847DC
/* 004578 0x800847E8 ADEE0004 */ sw	$t6, 0X4($t7)
/* 004579 0x800847EC AFBF0014 */ sw	$ra, 0X14($sp)
/* 004580 0x800847F0 AFA40020 */ sw	$a0, 0X20($sp)
/* 004581 0x800847F4 AFA50024 */ sw	$a1, 0X24($sp)
/* 004582 0x800847F8 AFA60028 */ sw	$a2, 0X28($sp)
/* 004583 0x800847FC AFA7002C */ sw	$a3, 0X2C($sp)
/* 004584 0x80084800 8FA40020 */ lw	$a0, 0X20($sp)
/* 004585 0x80084804 0C0211DF */ jal	FaultDrawer_VPrintf
/* 004586 0x80084808 27A50024 */ addiu	$a1, $sp, 36
/* 004587 0x8008480C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 004588 0x80084810 27BD0020 */ addiu	$sp, $sp, 32
/* 004589 0x80084814 03E00008 */ jr	$ra
/* 004590 0x80084818 00000000 */ nop

glabel FaultDrawer_DrawText
/* 004591 0x8008481C 3C0EFFFA */ lui	$t6, 0xFFFA
/* 004592 0x80084820 03A07825 */ move	$t7, $sp
/* 004593 0x80084824 27BDFFE0 */ addiu	$sp, $sp, -32
/* 004594 0x80084828 35CE5A5A */ ori	$t6, $t6, 0X5A5A
.L_8008482C:
/* 004595 0x8008482C 25EFFFF8 */ addiu	$t7, $t7, -8
/* 004596 0x80084830 ADEE0000 */ sw	$t6, 0X0($t7)
/* 004597 0x80084834 15FDFFFD */ bne	$t7, $sp, .L_8008482C
/* 004598 0x80084838 ADEE0004 */ sw	$t6, 0X4($t7)
/* 004599 0x8008483C AFBF0014 */ sw	$ra, 0X14($sp)
/* 004600 0x80084840 AFA60028 */ sw	$a2, 0X28($sp)
/* 004601 0x80084844 AFA7002C */ sw	$a3, 0X2C($sp)
/* 004602 0x80084848 0C0210F5 */ jal	FaultDrawer_SetCursor
/* 004603 0x8008484C 00000000 */ nop
/* 004604 0x80084850 8FA40028 */ lw	$a0, 0X28($sp)
/* 004605 0x80084854 0C0211DF */ jal	FaultDrawer_VPrintf
/* 004606 0x80084858 27A5002C */ addiu	$a1, $sp, 44
/* 004607 0x8008485C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 004608 0x80084860 27BD0020 */ addiu	$sp, $sp, 32
/* 004609 0x80084864 03E00008 */ jr	$ra
/* 004610 0x80084868 00000000 */ nop

glabel FaultDrawer_SetDrawerFB
/* 004611 0x8008486C AFA50004 */ sw	$a1, 0X4($sp)
/* 004612 0x80084870 AFA60008 */ sw	$a2, 0X8($sp)
/* 004613 0x80084874 3C028009 */ lui	$v0, %hi(sFaultDrawContext)
/* 004614 0x80084878 24426BE0 */ addiu	$v0, $v0, %lo(sFaultDrawContext)
/* 004615 0x8008487C 30C6FFFF */ andi	$a2, $a2, 0XFFFF
/* 004616 0x80084880 30A5FFFF */ andi	$a1, $a1, 0XFFFF
/* 004617 0x80084884 8C4E0000 */ lw	$t6, 0X0($v0)
/* 004618 0x80084888 ADC40000 */ sw	$a0, 0X0($t6)
/* 004619 0x8008488C 8C4F0000 */ lw	$t7, 0X0($v0)
/* 004620 0x80084890 A5E50004 */ sh	$a1, 0X4($t7)
/* 004621 0x80084894 8C580000 */ lw	$t8, 0X0($v0)
/* 004622 0x80084898 A7060006 */ sh	$a2, 0X6($t8)
/* 004623 0x8008489C 03E00008 */ jr	$ra
/* 004624 0x800848A0 00000000 */ nop

glabel FaultDrawer_SetInputCallback
/* 004625 0x800848A4 3C0E8009 */ lui	$t6, %hi(sFaultDrawContext)
/* 004626 0x800848A8 8DCE6BE0 */ lw	$t6, %lo(sFaultDrawContext)($t6)
/* 004627 0x800848AC ADC40038 */ sw	$a0, 0X38($t6)
/* 004628 0x800848B0 03E00008 */ jr	$ra
/* 004629 0x800848B4 00000000 */ nop

glabel FaultDrawer_Init
/* 004630 0x800848B8 3C09FFFA */ lui	$t1, 0xFFFA
/* 004631 0x800848BC 03A05025 */ move	$t2, $sp
/* 004632 0x800848C0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 004633 0x800848C4 35295A5A */ ori	$t1, $t1, 0X5A5A
.L_800848C8:
/* 004634 0x800848C8 254AFFF8 */ addiu	$t2, $t2, -8
/* 004635 0x800848CC AD490000 */ sw	$t1, 0X0($t2)
/* 004636 0x800848D0 155DFFFD */ bne	$t2, $sp, .L_800848C8
/* 004637 0x800848D4 AD490004 */ sw	$t1, 0X4($t2)
/* 004638 0x800848D8 3C028009 */ lui	$v0, %hi(sFaultDrawContext)
/* 004639 0x800848DC 24426BE0 */ addiu	$v0, $v0, %lo(sFaultDrawContext)
/* 004640 0x800848E0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 004641 0x800848E4 3C0E800A */ lui	$t6, %hi(sFaultDrawerStruct)
/* 004642 0x800848E8 25C5CCD0 */ addiu	$a1, $t6, %lo(sFaultDrawerStruct)
/* 004643 0x800848EC 3C048009 */ lui	$a0, %hi(sFaultDrawerDefault)
/* 004644 0x800848F0 AC450000 */ sw	$a1, 0X0($v0)
/* 004645 0x800848F4 24846BE4 */ addiu	$a0, $a0, %lo(sFaultDrawerDefault)
/* 004646 0x800848F8 0C0244B0 */ jal	_bcopy
/* 004647 0x800848FC 2406003C */ li	$a2, 60
/* 004648 0x80084900 3C0F8000 */ lui	$t7, %hi(osMemSize)
/* 004649 0x80084904 8DEF0318 */ lw	$t7, %lo(osMemSize)($t7)
/* 004650 0x80084908 3C018000 */ lui	$at, 0x8000
/* 004651 0x8008490C 3C088009 */ lui	$t0, %hi(sFaultDrawContext)
/* 004652 0x80084910 01E1C025 */ or	$t8, $t7, $at
/* 004653 0x80084914 8D086BE0 */ lw	$t0, %lo(sFaultDrawContext)($t0)
/* 004654 0x80084918 3C01FFFD */ lui	$at, 0xFFFD
/* 004655 0x8008491C 3421A800 */ ori	$at, $at, 0XA800
/* 004656 0x80084920 0301C821 */ addu	$t9, $t8, $at
/* 004657 0x80084924 AD190000 */ sw	$t9, 0X0($t0)
/* 004658 0x80084928 8FBF0014 */ lw	$ra, 0X14($sp)
/* 004659 0x8008492C 27BD0018 */ addiu	$sp, $sp, 24
/* 004660 0x80084930 03E00008 */ jr	$ra
/* 004661 0x80084934 00000000 */ nop
/* 004662 0x80084938 00000000 */ nop
/* 004663 0x8008493C 00000000 */ nop
