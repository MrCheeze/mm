.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80A3E690
/* 000192 0x80A3E690 */ .word	0x01580100
/* 000193 0x80A3E694 */ .word	0x00000090
/* 000194 0x80A3E698 */ .word	0x00010000
/* 000195 0x80A3E69C */ .word	0x00000148
/* 000196 0x80A3E6A0 */ .word	EnTest2_Init
/* 000197 0x80A3E6A4 */ .word	func_800BDFB0
/* 000198 0x80A3E6A8 */ .word	EnTest2_Update
/* 000199 0x80A3E6AC */ .word	0x00000000
glabel D_80A3E6B0
/* 000200 0x80A3E6B0 */ .word	0x06000040
glabel D_80A3E6B4
/* 000201 0x80A3E6B4 */ .word	0x00000000
/* 000202 0x80A3E6B8 */ .word	0x00000000
/* 000203 0x80A3E6BC */ .word	0x06001820
/* 000204 0x80A3E6C0 */ .word	0x00000000
/* 000205 0x80A3E6C4 */ .word	0x00000000
/* 000206 0x80A3E6C8 */ .word	0x060008C0
/* 000207 0x80A3E6CC */ .word	0x00000000
/* 000208 0x80A3E6D0 */ .word	0x00000000
/* 000209 0x80A3E6D4 */ .word	0x060016D8
/* 000210 0x80A3E6D8 */ .word	0x00000000
/* 000211 0x80A3E6DC */ .word	0x060017A8
/* 000212 0x80A3E6E0 */ .word	0x06002018
/* 000213 0x80A3E6E4 */ .word	0x00000000
/* 000214 0x80A3E6E8 */ .word	0x060020E8
/* 000215 0x80A3E6EC */ .word	0x06005268
/* 000216 0x80A3E6F0 */ .word	0x00000000
/* 000217 0x80A3E6F4 */ .word	0x06005338
/* 000218 0x80A3E6F8 */ .word	0x06000110
/* 000219 0x80A3E6FC */ .word	0x06000080
/* 000220 0x80A3E700 */ .word	0x00000000
/* 000221 0x80A3E704 */ .word	0x06000F70
/* 000222 0x80A3E708 */ .word	0x00000000
/* 000223 0x80A3E70C */ .word	0x00000000
/* 000224 0x80A3E710 */ .word	0x06001200
/* 000225 0x80A3E714 */ .word	0x00000000
/* 000226 0x80A3E718 */ .word	0x00000000
/* 000227 0x80A3E71C */ .word	0x06004928
/* 000228 0x80A3E720 */ .word	0x00000000
/* 000229 0x80A3E724 */ .word	0x060049F8
/* 000230 0x80A3E728 */ .word	0x06002978
/* 000231 0x80A3E72C */ .word	0x00000000
/* 000232 0x80A3E730 */ .word	0x06002A58
/* 000233 0x80A3E734 */ .word	0x06000D38
/* 000234 0x80A3E738 */ .word	0x00000000
/* 000235 0x80A3E73C */ .word	0x06000E48
/* 000236 0x80A3E740 */ .word	0x060035A8
/* 000237 0x80A3E744 */ .word	0x00000000
/* 000238 0x80A3E748 */ .word	0x06003888
glabel D_80A3E74C
/* 000239 0x80A3E74C */ .word	0xC0580001
/* 000240 0x80A3E750 */ .word	0xB0FC1F40
/* 000241 0x80A3E754 */ .word	0xB1000320
/* 000242 0x80A3E758 */ .word	0x310409C4
glabel D_80A3E75C
/* 000243 0x80A3E75C */ .word	0x0180017F
/* 000244 0x80A3E760 */ .word	0x00760190
/* 000245 0x80A3E764 */ .word	0x01900190
/* 000246 0x80A3E768 */ .word	0x01BC01E0
/* 000247 0x80A3E76C */ .word	0x01E00190
/* 000248 0x80A3E770 */ .word	0x01900190
/* 000249 0x80A3E774 */ .word	0x01900000
/* 000250 0x80A3E778 */ .word	0x00000000
/* 000251 0x80A3E77C */ .word	0x00000000
glabel enTest2OverlayInfo
/* 000252 0x80A3E780 */ .word	0x00000300
/* 000253 0x80A3E784 */ .word	0x000000F0
/* 000254 0x80A3E788 */ .word	0x00000000
/* 000255 0x80A3E78C */ .word	0x00000000
/* 000256 0x80A3E790 */ .word	0x00000012
glabel enTest2OverlayRelocations
/* 000257 0x80A3E794 */ .word	0x4500000C
/* 000258 0x80A3E798 */ .word	0x46000010
/* 000259 0x80A3E79C */ .word	0x45000078
/* 000260 0x80A3E7A0 */ .word	0x46000090
/* 000261 0x80A3E7A4 */ .word	0x450000C4
/* 000262 0x80A3E7A8 */ .word	0x460000D8
/* 000263 0x80A3E7AC */ .word	0x450000C8
/* 000264 0x80A3E7B0 */ .word	0x460000DC
/* 000265 0x80A3E7B4 */ .word	0x45000120
/* 000266 0x80A3E7B8 */ .word	0x46000130
/* 000267 0x80A3E7BC */ .word	0x450001B0
/* 000268 0x80A3E7C0 */ .word	0x460001C8
/* 000269 0x80A3E7C4 */ .word	0x45000278
/* 000270 0x80A3E7C8 */ .word	0x4600029C
/* 000271 0x80A3E7CC */ .word	0x450002C0
/* 000272 0x80A3E7D0 */ .word	0x460002DC
/* 000273 0x80A3E7D4 */ .word	0x82000010
/* 000274 0x80A3E7D8 */ .word	0x82000018
glabel enTest2OverlayInfoOffset
/* 000275 0x80A3E7DC */ .word	0x00000060
