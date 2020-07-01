.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80BB4D70
/* 000160 0x80BB4D70 */ .word	0x023C0600
/* 000161 0x80BB4D74 */ .word	0x00000000
/* 000162 0x80BB4D78 */ .word	0x02180000
/* 000163 0x80BB4D7C */ .word	0x0000015C
/* 000164 0x80BB4D80 */ .word	ObjYasi_Init
/* 000165 0x80BB4D84 */ .word	ObjYasi_Destroy
/* 000166 0x80BB4D88 */ .word	ObjYasi_Update
/* 000167 0x80BB4D8C */ .word	ObjYasi_Draw
glabel D_80BB4D90
/* 000168 0x80BB4D90 */ .word	0xC8580064
/* 000169 0x80BB4D94 */ .word	0xB0FC0FA0
/* 000170 0x80BB4D98 */ .word	0xB1000190
/* 000171 0x80BB4D9C */ .word	0x31040320
glabel D_80BB4DA0
/* 000172 0x80BB4DA0 */ .word	0x3E4CCCCD
glabel D_80BB4DA4
/* 000173 0x80BB4DA4 */ .word	0x3DCCCCCD
glabel D_80BB4DA8
/* 000174 0x80BB4DA8 */ .word	0x3DA3D70A
glabel D_80BB4DAC
/* 000175 0x80BB4DAC */ .word	0x3DCCCCCD
glabel objYasiOverlayInfo
/* 000176 0x80BB4DB0 */ .word	0x00000280
/* 000177 0x80BB4DB4 */ .word	0x00000030
/* 000178 0x80BB4DB8 */ .word	0x00000010
/* 000179 0x80BB4DBC */ .word	0x00000000
/* 000180 0x80BB4DC0 */ .word	0x0000000E
glabel objYasiOverlayRelocations
/* 000181 0x80BB4DC4 */ .word	0x45000014
/* 000182 0x80BB4DC8 */ .word	0x46000018
/* 000183 0x80BB4DCC */ .word	0x4500004C
/* 000184 0x80BB4DD0 */ .word	0x4600005C
/* 000185 0x80BB4DD4 */ .word	0x45000158
/* 000186 0x80BB4DD8 */ .word	0x4600015C
/* 000187 0x80BB4DDC */ .word	0x45000168
/* 000188 0x80BB4DE0 */ .word	0x46000190
/* 000189 0x80BB4DE4 */ .word	0x4500023C
/* 000190 0x80BB4DE8 */ .word	0x46000240
/* 000191 0x80BB4DEC */ .word	0x82000010
/* 000192 0x80BB4DF0 */ .word	0x82000014
/* 000193 0x80BB4DF4 */ .word	0x82000018
/* 000194 0x80BB4DF8 */ .word	0x8200001C
glabel objYasiOverlayInfoOffset
/* 000195 0x80BB4DFC */ .word	0x00000050
