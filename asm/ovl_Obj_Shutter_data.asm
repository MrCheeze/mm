.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80A38110
/* 000144 0x80A38110 */ .word	0x01510600
/* 000145 0x80A38114 */ .word	0x00000030
/* 000146 0x80A38118 */ .word	0x016D0000
/* 000147 0x80A3811C */ .word	0x0000014C
/* 000148 0x80A38120 */ .word	ObjShutter_Init
/* 000149 0x80A38124 */ .word	ObjShutter_Destroy
/* 000150 0x80A38128 */ .word	ObjShutter_Update
/* 000151 0x80A3812C */ .word	ObjShutter_Draw
glabel D_80A38130
/* 000152 0x80A38130 */ .word	0x020A0014
/* 000153 0x80A38134 */ .word	0x00030400
/* 000154 0x80A38138 */ .word	0x02040001
/* 000155 0x80A3813C */ .word	0x00000000
glabel D_80A38140
/* 000156 0x80A38140 */ .word	0x3F4CCCCD
glabel D_80A38144
/* 000157 0x80A38144 */ .word	0x3DCCCCCD
/* 000158 0x80A38148 */ .word	0x00000000
/* 000159 0x80A3814C */ .word	0x00000000
glabel objShutterOverlayInfo
/* 000160 0x80A38150 */ .word	0x00000240
/* 000161 0x80A38154 */ .word	0x00000030
/* 000162 0x80A38158 */ .word	0x00000010
/* 000163 0x80A3815C */ .word	0x00000000
/* 000164 0x80A38160 */ .word	0x0000000A
glabel objShutterOverlayRelocations
/* 000165 0x80A38164 */ .word	0x45000030
/* 000166 0x80A38168 */ .word	0x46000034
/* 000167 0x80A3816C */ .word	0x45000100
/* 000168 0x80A38170 */ .word	0x4600012C
/* 000169 0x80A38174 */ .word	0x4500019C
/* 000170 0x80A38178 */ .word	0x460001A0
/* 000171 0x80A3817C */ .word	0x82000010
/* 000172 0x80A38180 */ .word	0x82000014
/* 000173 0x80A38184 */ .word	0x82000018
/* 000174 0x80A38188 */ .word	0x8200001C
glabel objShutterOverlayInfoOffset
/* 000175 0x80A3818C */ .word	0x00000040
