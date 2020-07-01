.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_8093E810
/* 000252 0x8093E810 */ .word	0x00970000
/* 000253 0x8093E814 */ .word	0x0A000010
/* 000254 0x8093E818 */ .word	0x00010000
/* 000255 0x8093E81C */ .word	0x0000015C
/* 000256 0x8093E820 */ .word	EnOkarinaTag_Init
/* 000257 0x8093E824 */ .word	EnOkarinaTag_Destroy
/* 000258 0x8093E828 */ .word	EnOkarinaTag_Update
/* 000259 0x8093E82C */ .word	0x00000000
glabel D_8093E830
/* 000260 0x8093E830 */ .word	0x47435000
glabel D_8093E834
/* 000261 0x8093E834 */ .word	0x47435000
/* 000262 0x8093E838 */ .word	0x00000000
/* 000263 0x8093E83C */ .word	0x00000000
glabel enOkarinaTagOverlayInfo
/* 000264 0x8093E840 */ .word	0x000003F0
/* 000265 0x8093E844 */ .word	0x00000020
/* 000266 0x8093E848 */ .word	0x00000010
/* 000267 0x8093E84C */ .word	0x00000000
/* 000268 0x8093E850 */ .word	0x0000000F
glabel enOkarinaTagOverlayRelocations
/* 000269 0x8093E854 */ .word	0x450000AC
/* 000270 0x8093E858 */ .word	0x460000C4
/* 000271 0x8093E85C */ .word	0x450001B0
/* 000272 0x8093E860 */ .word	0x460001B4
/* 000273 0x8093E864 */ .word	0x4500021C
/* 000274 0x8093E868 */ .word	0x46000228
/* 000275 0x8093E86C */ .word	0x45000234
/* 000276 0x8093E870 */ .word	0x46000248
/* 000277 0x8093E874 */ .word	0x45000290
/* 000278 0x8093E878 */ .word	0x4600029C
/* 000279 0x8093E87C */ .word	0x450003A8
/* 000280 0x8093E880 */ .word	0x460003AC
/* 000281 0x8093E884 */ .word	0x82000010
/* 000282 0x8093E888 */ .word	0x82000014
/* 000283 0x8093E88C */ .word	0x82000018
/* 000284 0x8093E890 */ .word	0x00000000
/* 000285 0x8093E894 */ .word	0x00000000
/* 000286 0x8093E898 */ .word	0x00000000
glabel enOkarinaTagOverlayInfoOffset
/* 000287 0x8093E89C */ .word	0x00000060
