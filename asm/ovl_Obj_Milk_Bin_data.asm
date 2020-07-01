.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80C09030
/* 000124 0x80C09030 */ .word	0x028B0600
/* 000125 0x80C09034 */ .word	0x00000000
/* 000126 0x80C09038 */ .word	0x02610000
/* 000127 0x80C0903C */ .word	0x0000019C
/* 000128 0x80C09040 */ .word	ObjMilkBin_Init
/* 000129 0x80C09044 */ .word	ObjMilkBin_Destroy
/* 000130 0x80C09048 */ .word	ObjMilkBin_Update
/* 000131 0x80C0904C */ .word	ObjMilkBin_Draw
glabel D_80C09050
/* 000132 0x80C09050 */ .word	0x0C000939
/* 000133 0x80C09054 */ .word	0x20010000
/* 000134 0x80C09058 */ .word	0x00000000
/* 000135 0x80C0905C */ .word	0x00000000
/* 000136 0x80C09060 */ .word	0x00000000
/* 000137 0x80C09064 */ .word	0xF7CFFFFF
/* 000138 0x80C09068 */ .word	0x00000000
/* 000139 0x80C0906C */ .word	0x00010100
/* 000140 0x80C09070 */ .word	0x000C001E
/* 000141 0x80C09074 */ .word	0x00000000
/* 000142 0x80C09078 */ .word	0x00000000
/* 000143 0x80C0907C */ .word	0x00000000
glabel D_80C09080
/* 000144 0x80C09080 */ .word	0x44898000
/* 000145 0x80C09084 */ .word	0x00000000
/* 000146 0x80C09088 */ .word	0x00000000
/* 000147 0x80C0908C */ .word	0x00000000
glabel objMilkBinOverlayInfo
/* 000148 0x80C09090 */ .word	0x000001F0
/* 000149 0x80C09094 */ .word	0x00000050
/* 000150 0x80C09098 */ .word	0x00000010
/* 000151 0x80C0909C */ .word	0x00000000
/* 000152 0x80C090A0 */ .word	0x00000008
glabel objMilkBinOverlayRelocations
/* 000153 0x80C090A4 */ .word	0x45000014
/* 000154 0x80C090A8 */ .word	0x46000018
/* 000155 0x80C090AC */ .word	0x4500003C
/* 000156 0x80C090B0 */ .word	0x46000040
/* 000157 0x80C090B4 */ .word	0x82000010
/* 000158 0x80C090B8 */ .word	0x82000014
/* 000159 0x80C090BC */ .word	0x82000018
/* 000160 0x80C090C0 */ .word	0x8200001C
/* 000161 0x80C090C4 */ .word	0x00000000
/* 000162 0x80C090C8 */ .word	0x00000000
glabel objMilkBinOverlayInfoOffset
/* 000163 0x80C090CC */ .word	0x00000040
