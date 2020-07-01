.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80B16840
/* 001068 0x80B16840 */ .word	0x01E40000
/* 001069 0x80B16844 */ .word	0x00000010
/* 001070 0x80B16848 */ .word	0x01C70000
/* 001071 0x80B1684C */ .word	0x000001CC
/* 001072 0x80B16850 */ .word	BgHakuginSwitch_Init
/* 001073 0x80B16854 */ .word	BgHakuginSwitch_Destroy
/* 001074 0x80B16858 */ .word	BgHakuginSwitch_Update
/* 001075 0x80B1685C */ .word	BgHakuginSwitch_Draw
glabel D_80B16860
/* 001076 0x80B16860 */ .word	0x0A000900
/* 001077 0x80B16864 */ .word	0x00010000
/* 001078 0x80B16868 */ .word	0x00000000
/* 001079 0x80B1686C */ .word	0x00000000
/* 001080 0x80B16870 */ .word	0x00000000
/* 001081 0x80B16874 */ .word	0x00000400
/* 001082 0x80B16878 */ .word	0x00000000
/* 001083 0x80B1687C */ .word	0x00010000
/* 001084 0x80B16880 */ .word	0x003C000A
/* 001085 0x80B16884 */ .word	0x00B40000
/* 001086 0x80B16888 */ .word	0x00000000
glabel D_80B1688C
/* 001087 0x80B1688C */ .word	0xC31C0000
/* 001088 0x80B16890 */ .word	0xC3320000
/* 001089 0x80B16894 */ .word	0x40C00000
/* 001090 0x80B16898 */ .word	0x41200000
/* 001091 0x80B1689C */ .word	0x06000268
/* 001092 0x80B168A0 */ .word	0xB4000000
/* 001093 0x80B168A4 */ .word	0xC2700000
/* 001094 0x80B168A8 */ .word	0xC3320000
/* 001095 0x80B168AC */ .word	0x40C00000
/* 001096 0x80B168B0 */ .word	0x41200000
/* 001097 0x80B168B4 */ .word	0x06000268
/* 001098 0x80B168B8 */ .word	0x32000000
/* 001099 0x80B168BC */ .word	0xC2700000
/* 001100 0x80B168C0 */ .word	0xC3320000
/* 001101 0x80B168C4 */ .word	0x40C00000
/* 001102 0x80B168C8 */ .word	0x41200000
/* 001103 0x80B168CC */ .word	0x06000268
/* 001104 0x80B168D0 */ .word	0x31000000
/* 001105 0x80B168D4 */ .word	0xC2F00000
/* 001106 0x80B168D8 */ .word	0xC3320000
/* 001107 0x80B168DC */ .word	0x40C00000
/* 001108 0x80B168E0 */ .word	0x41200000
/* 001109 0x80B168E4 */ .word	0x060007D8
/* 001110 0x80B168E8 */ .word	0x3A000000
/* 001111 0x80B168EC */ .word	0xC31C0000
/* 001112 0x80B168F0 */ .word	0xC3320000
/* 001113 0x80B168F4 */ .word	0x40C00000
/* 001114 0x80B168F8 */ .word	0x41200000
/* 001115 0x80B168FC */ .word	0x060007D8
/* 001116 0x80B16900 */ .word	0xB4000000
glabel D_80B16904
/* 001117 0x80B16904 */ .word	0xB0FC0FA0
/* 001118 0x80B16908 */ .word	0xB1000096
/* 001119 0x80B1690C */ .word	0x31040082
glabel D_80B16910
/* 001120 0x80B16910 */ .word	0xC8580064
/* 001121 0x80B16914 */ .word	0xB0FC0FA0
/* 001122 0x80B16918 */ .word	0xB1000104
/* 001123 0x80B1691C */ .word	0x31040168
glabel D_80B16920
/* 001124 0x80B16920 */ .word	0x3D8F5C29
glabel D_80B16924
/* 001125 0x80B16924 */ .word	0x3C83126F
glabel D_80B16928
/* 001126 0x80B16928 */ .word	0xBE570A3D
glabel D_80B1692C
/* 001127 0x80B1692C */ .word	0xBDA3D70A
glabel D_80B16930
/* 001128 0x80B16930 */ .word	0xBDE147AE
/* 001129 0x80B16934 */ .word	0x00000000
/* 001130 0x80B16938 */ .word	0x00000000
/* 001131 0x80B1693C */ .word	0x00000000
glabel bgHakuginSwitchOverlayInfo
/* 001132 0x80B16940 */ .word	0x000010B0
/* 001133 0x80B16944 */ .word	0x000000E0
/* 001134 0x80B16948 */ .word	0x00000020
/* 001135 0x80B1694C */ .word	0x00000010
/* 001136 0x80B16950 */ .word	0x00000064
glabel bgHakuginSwitchOverlayRelocations
/* 001137 0x80B16954 */ .word	0x450000DC
/* 001138 0x80B16958 */ .word	0x460000E4
/* 001139 0x80B1695C */ .word	0x45000110
/* 001140 0x80B16960 */ .word	0x46000114
/* 001141 0x80B16964 */ .word	0x45000120
/* 001142 0x80B16968 */ .word	0x46000124
/* 001143 0x80B1696C */ .word	0x45000128
/* 001144 0x80B16970 */ .word	0x46000134
/* 001145 0x80B16974 */ .word	0x44000198
/* 001146 0x80B16978 */ .word	0x440001A8
/* 001147 0x80B1697C */ .word	0x450001C0
/* 001148 0x80B16980 */ .word	0x460001C4
/* 001149 0x80B16984 */ .word	0x450001D4
/* 001150 0x80B16988 */ .word	0x460001D8
/* 001151 0x80B1698C */ .word	0x44000238
/* 001152 0x80B16990 */ .word	0x44000248
/* 001153 0x80B16994 */ .word	0x450002BC
/* 001154 0x80B16998 */ .word	0x460002C0
/* 001155 0x80B1699C */ .word	0x450002EC
/* 001156 0x80B169A0 */ .word	0x460002F0
/* 001157 0x80B169A4 */ .word	0x45000394
/* 001158 0x80B169A8 */ .word	0x46000398
/* 001159 0x80B169AC */ .word	0x450003B8
/* 001160 0x80B169B0 */ .word	0x460003C8
/* 001161 0x80B169B4 */ .word	0x450003F8
/* 001162 0x80B169B8 */ .word	0x460003FC
/* 001163 0x80B169BC */ .word	0x45000540
/* 001164 0x80B169C0 */ .word	0x4600055C
/* 001165 0x80B169C4 */ .word	0x450005E8
/* 001166 0x80B169C8 */ .word	0x460005FC
/* 001167 0x80B169CC */ .word	0x450005EC
/* 001168 0x80B169D0 */ .word	0x460005F4
/* 001169 0x80B169D4 */ .word	0x44000614
/* 001170 0x80B169D8 */ .word	0x44000624
/* 001171 0x80B169DC */ .word	0x4500068C
/* 001172 0x80B169E0 */ .word	0x46000690
/* 001173 0x80B169E4 */ .word	0x440006BC
/* 001174 0x80B169E8 */ .word	0x450006C8
/* 001175 0x80B169EC */ .word	0x460006CC
/* 001176 0x80B169F0 */ .word	0x45000700
/* 001177 0x80B169F4 */ .word	0x46000704
/* 001178 0x80B169F8 */ .word	0x4400076C
/* 001179 0x80B169FC */ .word	0x44000790
/* 001180 0x80B16A00 */ .word	0x450007B4
/* 001181 0x80B16A04 */ .word	0x460007B8
/* 001182 0x80B16A08 */ .word	0x450007D8
/* 001183 0x80B16A0C */ .word	0x460007DC
/* 001184 0x80B16A10 */ .word	0x4500080C
/* 001185 0x80B16A14 */ .word	0x46000810
/* 001186 0x80B16A18 */ .word	0x45000894
/* 001187 0x80B16A1C */ .word	0x46000898
/* 001188 0x80B16A20 */ .word	0x450008A0
/* 001189 0x80B16A24 */ .word	0x460008A4
/* 001190 0x80B16A28 */ .word	0x440008B4
/* 001191 0x80B16A2C */ .word	0x440008C4
/* 001192 0x80B16A30 */ .word	0x450008EC
/* 001193 0x80B16A34 */ .word	0x460008F0
/* 001194 0x80B16A38 */ .word	0x4400091C
/* 001195 0x80B16A3C */ .word	0x45000928
/* 001196 0x80B16A40 */ .word	0x46000930
/* 001197 0x80B16A44 */ .word	0x45000960
/* 001198 0x80B16A48 */ .word	0x46000964
/* 001199 0x80B16A4C */ .word	0x440009B4
/* 001200 0x80B16A50 */ .word	0x440009D8
/* 001201 0x80B16A54 */ .word	0x450009F0
/* 001202 0x80B16A58 */ .word	0x460009F4
/* 001203 0x80B16A5C */ .word	0x45000B00
/* 001204 0x80B16A60 */ .word	0x46000B04
/* 001205 0x80B16A64 */ .word	0x45000BC8
/* 001206 0x80B16A68 */ .word	0x46000BCC
/* 001207 0x80B16A6C */ .word	0x44000BD8
/* 001208 0x80B16A70 */ .word	0x44000BE8
/* 001209 0x80B16A74 */ .word	0x44000C44
/* 001210 0x80B16A78 */ .word	0x45000C50
/* 001211 0x80B16A7C */ .word	0x46000C54
/* 001212 0x80B16A80 */ .word	0x44000CE8
/* 001213 0x80B16A84 */ .word	0x45000D74
/* 001214 0x80B16A88 */ .word	0x46000D78
/* 001215 0x80B16A8C */ .word	0x45000DC8
/* 001216 0x80B16A90 */ .word	0x46000DDC
/* 001217 0x80B16A94 */ .word	0x44000DE4
/* 001218 0x80B16A98 */ .word	0x44000DF4
/* 001219 0x80B16A9C */ .word	0x44000E20
/* 001220 0x80B16AA0 */ .word	0x45000E2C
/* 001221 0x80B16AA4 */ .word	0x46000E34
/* 001222 0x80B16AA8 */ .word	0x44000E80
/* 001223 0x80B16AAC */ .word	0x45000ECC
/* 001224 0x80B16AB0 */ .word	0x46000ED0
/* 001225 0x80B16AB4 */ .word	0x45000ED8
/* 001226 0x80B16AB8 */ .word	0x46000EDC
/* 001227 0x80B16ABC */ .word	0x45000F5C
/* 001228 0x80B16AC0 */ .word	0x46000F60
/* 001229 0x80B16AC4 */ .word	0x45000F7C
/* 001230 0x80B16AC8 */ .word	0x46000F80
/* 001231 0x80B16ACC */ .word	0x45000FCC
/* 001232 0x80B16AD0 */ .word	0x46000FD0
/* 001233 0x80B16AD4 */ .word	0x82000010
/* 001234 0x80B16AD8 */ .word	0x82000014
/* 001235 0x80B16ADC */ .word	0x82000018
/* 001236 0x80B16AE0 */ .word	0x8200001C
/* 001237 0x80B16AE4 */ .word	0x00000000
/* 001238 0x80B16AE8 */ .word	0x00000000
glabel bgHakuginSwitchOverlayInfoOffset
/* 001239 0x80B16AEC */ .word	0x000001B0
