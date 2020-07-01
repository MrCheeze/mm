.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80B282D0
/* 000148 0x80B282D0 */ .word	0x01F00700
/* 000149 0x80B282D4 */ .word	0x00000000
/* 000150 0x80B282D8 */ .word	0x01C90000
/* 000151 0x80B282DC */ .word	0x000001AC
/* 000152 0x80B282E0 */ .word	BgBotihasira_Init
/* 000153 0x80B282E4 */ .word	BgBotihasira_Destroy
/* 000154 0x80B282E8 */ .word	BgBotihasira_Update
/* 000155 0x80B282EC */ .word	BgBotihasira_Draw
glabel D_80B282F0
/* 000156 0x80B282F0 */ .word	0x09000939
/* 000157 0x80B282F4 */ .word	0x10010000
/* 000158 0x80B282F8 */ .word	0x02000000
/* 000159 0x80B282FC */ .word	0xF7CFFFFF
/* 000160 0x80B28300 */ .word	0x00000000
/* 000161 0x80B28304 */ .word	0xF7CFFFFF
/* 000162 0x80B28308 */ .word	0x00000000
/* 000163 0x80B2830C */ .word	0x00010100
/* 000164 0x80B28310 */ .word	0x001B0050
/* 000165 0x80B28314 */ .word	0x00000000
/* 000166 0x80B28318 */ .word	0x00000000
/* 000167 0x80B2831C */ .word	0x00000000
glabel D_80B28320
/* 000168 0x80B28320 */ .word	0x3DCCCCCD
/* 000169 0x80B28324 */ .word	0x00000000
/* 000170 0x80B28328 */ .word	0x00000000
/* 000171 0x80B2832C */ .word	0x00000000
glabel bgBotihasiraOverlayInfo
/* 000172 0x80B28330 */ .word	0x00000250
/* 000173 0x80B28334 */ .word	0x00000050
/* 000174 0x80B28338 */ .word	0x00000010
/* 000175 0x80B2833C */ .word	0x00000000
/* 000176 0x80B28340 */ .word	0x0000000A
glabel bgBotihasiraOverlayRelocations
/* 000177 0x80B28344 */ .word	0x45000064
/* 000178 0x80B28348 */ .word	0x4600006C
/* 000179 0x80B2834C */ .word	0x45000070
/* 000180 0x80B28350 */ .word	0x46000074
/* 000181 0x80B28354 */ .word	0x45000078
/* 000182 0x80B28358 */ .word	0x4600007C
/* 000183 0x80B2835C */ .word	0x82000010
/* 000184 0x80B28360 */ .word	0x82000014
/* 000185 0x80B28364 */ .word	0x82000018
/* 000186 0x80B28368 */ .word	0x8200001C
glabel bgBotihasiraOverlayInfoOffset
/* 000187 0x80B2836C */ .word	0x00000040
