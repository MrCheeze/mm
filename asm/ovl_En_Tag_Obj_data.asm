.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

/* 000036 0x80B12900 */ .word	0x0A000900
/* 000037 0x80B12904 */ .word	0x20010000
/* 000038 0x80B12908 */ .word	0x00000000
/* 000039 0x80B1290C */ .word	0x00000000
/* 000040 0x80B12910 */ .word	0x00000000
/* 000041 0x80B12914 */ .word	0xF7CFFFFF
/* 000042 0x80B12918 */ .word	0x00000000
/* 000043 0x80B1291C */ .word	0x00010000
/* 000044 0x80B12920 */ .word	0x0014001E
/* 000045 0x80B12924 */ .word	0x00000000
/* 000046 0x80B12928 */ .word	0x00000000
glabel D_80B1292C
/* 000047 0x80B1292C */ .word	0x01E10600
/* 000048 0x80B12930 */ .word	0x00000000
/* 000049 0x80B12934 */ .word	0x00010000
/* 000050 0x80B12938 */ .word	0x00000198
/* 000051 0x80B1293C */ .word	EnTagObj_Init
/* 000052 0x80B12940 */ .word	EnTagObj_Destroy
/* 000053 0x80B12944 */ .word	EnTagObj_Update
/* 000054 0x80B12948 */ .word	0x00000000
/* 000055 0x80B1294C */ .word	0x00000000
glabel enTagObjOverlayInfo
/* 000056 0x80B12950 */ .word	0x00000090
/* 000057 0x80B12954 */ .word	0x00000050
/* 000058 0x80B12958 */ .word	0x00000000
/* 000059 0x80B1295C */ .word	0x00000000
/* 000060 0x80B12960 */ .word	0x00000003
glabel enTagObjOverlayRelocations
/* 000061 0x80B12964 */ .word	0x8200003C
/* 000062 0x80B12968 */ .word	0x82000040
/* 000063 0x80B1296C */ .word	0x82000044
/* 000064 0x80B12970 */ .word	0x00000000
/* 000065 0x80B12974 */ .word	0x00000000
/* 000066 0x80B12978 */ .word	0x00000000
glabel enTagObjOverlayInfoOffset
/* 000067 0x80B1297C */ .word	0x00000030
