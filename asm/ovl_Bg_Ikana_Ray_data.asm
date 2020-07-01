.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel bgIkanaRayInitData
/* 000132 0x80BD55D0 */ .word	0x02560600
/* 000133 0x80BD55D4 */ .word	0x00000000
/* 000134 0x80BD55D8 */ .word	0x02030000
/* 000135 0x80BD55DC */ .word	0x00000198
/* 000136 0x80BD55E0 */ .word	BgIkanaRay_Init
/* 000137 0x80BD55E4 */ .word	BgIkanaRay_Destroy
/* 000138 0x80BD55E8 */ .word	BgIkanaRay_Update
/* 000139 0x80BD55EC */ .word	BgIkanaRay_Draw
glabel bgIkanaRayCylinderInit
/* 000140 0x80BD55F0 */ .word	0x0A210000
/* 000141 0x80BD55F4 */ .word	0x00010000
/* 000142 0x80BD55F8 */ .word	0x00000000
/* 000143 0x80BD55FC */ .word	0x00200000
/* 000144 0x80BD5600 */ .word	0x00000000
/* 000145 0x80BD5604 */ .word	0x00000000
/* 000146 0x80BD5608 */ .word	0x00000000
/* 000147 0x80BD560C */ .word	0x19000100
/* 000148 0x80BD5610 */ .word	0x005A01A4
/* 000149 0x80BD5614 */ .word	0xFE5C0000
/* 000150 0x80BD5618 */ .word	0x00000000
glabel bgIkanaRayCompInit
/* 000151 0x80BD561C */ .word	0xB0FC0FA0
/* 000152 0x80BD5620 */ .word	0xB10003E8
/* 000153 0x80BD5624 */ .word	0xB10403E8
/* 000154 0x80BD5628 */ .word	0x48580064
/* 000155 0x80BD562C */ .word	0x00000000
glabel bgIkanaRayOverlayInfo
/* 000156 0x80BD5630 */ .word	0x00000210
/* 000157 0x80BD5634 */ .word	0x00000060
/* 000158 0x80BD5638 */ .word	0x00000000
/* 000159 0x80BD563C */ .word	0x00000000
/* 000160 0x80BD5640 */ .word	0x00000011
glabel bgIkanaRayOverlayRelocations
/* 000161 0x80BD5644 */ .word	0x45000014
/* 000162 0x80BD5648 */ .word	0x46000018
/* 000163 0x80BD564C */ .word	0x45000034
/* 000164 0x80BD5650 */ .word	0x46000038
/* 000165 0x80BD5654 */ .word	0x44000080
/* 000166 0x80BD5658 */ .word	0x44000090
/* 000167 0x80BD565C */ .word	0x450000DC
/* 000168 0x80BD5660 */ .word	0x460000E0
/* 000169 0x80BD5664 */ .word	0x44000128
/* 000170 0x80BD5668 */ .word	0x45000144
/* 000171 0x80BD566C */ .word	0x46000150
/* 000172 0x80BD5670 */ .word	0x4500014C
/* 000173 0x80BD5674 */ .word	0x46000154
/* 000174 0x80BD5678 */ .word	0x82000010
/* 000175 0x80BD567C */ .word	0x82000014
/* 000176 0x80BD5680 */ .word	0x82000018
/* 000177 0x80BD5684 */ .word	0x8200001C
/* 000178 0x80BD5688 */ .word	0x00000000
glabel bgIkanaRayOverlayInfoOffset
/* 000179 0x80BD568C */ .word	0x00000060
