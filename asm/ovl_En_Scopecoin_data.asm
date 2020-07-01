.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80BFD260
/* 000176 0x80BFD260 */ .word	0x027C0400
/* 000177 0x80BFD264 */ .word	0x00000030
/* 000178 0x80BFD268 */ .word	0x00010000
/* 000179 0x80BFD26C */ .word	0x0000014C
/* 000180 0x80BFD270 */ .word	EnScopecoin_Init
/* 000181 0x80BFD274 */ .word	EnScopecoin_Destroy
/* 000182 0x80BFD278 */ .word	EnScopecoin_Update
/* 000183 0x80BFD27C */ .word	EnScopecoin_Draw
glabel D_80BFD280
/* 000184 0x80BFD280 */ .word	0x04061FC0
/* 000185 0x80BFD284 */ .word	0x04061FE0
/* 000186 0x80BFD288 */ .word	0x04062000
/* 000187 0x80BFD28C */ .word	0x04062040
/* 000188 0x80BFD290 */ .word	0x04062020
/* 000189 0x80BFD294 */ .word	0x04062060
/* 000190 0x80BFD298 */ .word	0x04062000
/* 000191 0x80BFD29C */ .word	0x00000000
glabel enScopecoinOverlayInfo
/* 000192 0x80BFD2A0 */ .word	0x000002C0
/* 000193 0x80BFD2A4 */ .word	0x00000040
/* 000194 0x80BFD2A8 */ .word	0x00000000
/* 000195 0x80BFD2AC */ .word	0x00000000
/* 000196 0x80BFD2B0 */ .word	0x0000000A
glabel enScopecoinOverlayRelocations
/* 000197 0x80BFD2B4 */ .word	0x45000130
/* 000198 0x80BFD2B8 */ .word	0x46000134
/* 000199 0x80BFD2BC */ .word	0x45000168
/* 000200 0x80BFD2C0 */ .word	0x4600017C
/* 000201 0x80BFD2C4 */ .word	0x4500025C
/* 000202 0x80BFD2C8 */ .word	0x46000274
/* 000203 0x80BFD2CC */ .word	0x82000010
/* 000204 0x80BFD2D0 */ .word	0x82000014
/* 000205 0x80BFD2D4 */ .word	0x82000018
/* 000206 0x80BFD2D8 */ .word	0x8200001C
glabel enScopecoinOverlayInfoOffset
/* 000207 0x80BFD2DC */ .word	0x00000040
