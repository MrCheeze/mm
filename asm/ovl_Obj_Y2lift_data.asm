.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80B9A920
/* 000180 0x80B9A920 */ .word	0x022A0100
/* 000181 0x80B9A924 */ .word	0x00000010
/* 000182 0x80B9A928 */ .word	0x020E0000
/* 000183 0x80B9A92C */ .word	0x00000160
/* 000184 0x80B9A930 */ .word	ObjY2lift_Init
/* 000185 0x80B9A934 */ .word	ObjY2lift_Destroy
/* 000186 0x80B9A938 */ .word	ObjY2lift_Update
/* 000187 0x80B9A93C */ .word	ObjY2lift_Draw
glabel D_80B9A940
/* 000188 0x80B9A940 */ .word	0xC8580064
/* 000189 0x80B9A944 */ .word	0xB0FC0FA0
/* 000190 0x80B9A948 */ .word	0xB1000320
/* 000191 0x80B9A94C */ .word	0x31040320
glabel objY2liftOverlayInfo
/* 000192 0x80B9A950 */ .word	0x000002D0
/* 000193 0x80B9A954 */ .word	0x00000030
/* 000194 0x80B9A958 */ .word	0x00000000
/* 000195 0x80B9A95C */ .word	0x00000000
/* 000196 0x80B9A960 */ .word	0x00000006
glabel objY2liftOverlayRelocations
/* 000197 0x80B9A964 */ .word	0x45000010
/* 000198 0x80B9A968 */ .word	0x46000014
/* 000199 0x80B9A96C */ .word	0x82000010
/* 000200 0x80B9A970 */ .word	0x82000014
/* 000201 0x80B9A974 */ .word	0x82000018
/* 000202 0x80B9A978 */ .word	0x8200001C
glabel objY2liftOverlayInfoOffset
/* 000203 0x80B9A97C */ .word	0x00000030
