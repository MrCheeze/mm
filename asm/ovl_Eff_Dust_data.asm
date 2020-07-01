.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80919D90
/* 001172 0x80919D90 */ .word	0x007B0400
/* 001173 0x80919D94 */ .word	0x00000030
/* 001174 0x80919D98 */ .word	0x00010000
/* 001175 0x80919D9C */ .word	0x00000560
/* 001176 0x80919DA0 */ .word	EffDust_Init
/* 001177 0x80919DA4 */ .word	EffDust_Destroy
/* 001178 0x80919DA8 */ .word	EffDust_Update
/* 001179 0x80919DAC */ .word	EffDust_Draw
glabel D_80919DB0
/* 001180 0x80919DB0 */ .word	0xDF000000
/* 001181 0x80919DB4 */ .word	0x00000000
/* 001182 0x80919DB8 */ .word	0x00000000
/* 001183 0x80919DBC */ .word	0x00000000
glabel __switch_D_80919DC0
/* 001184 0x80919DC0 */ .word	.L_80918BFC
/* 001185 0x80919DC4 */ .word	.L_80918C38
/* 001186 0x80919DC8 */ .word	.L_80918C7C
/* 001187 0x80919DCC */ .word	.L_80918C7C
/* 001188 0x80919DD0 */ .word	.L_80918CB8
/* 001189 0x80919DD4 */ .word	.L_80918CF4
glabel D_80919DD8
/* 001190 0x80919DD8 */ .word	0x3E4CCCCD
glabel D_80919DDC
/* 001191 0x80919DDC */ .word	0x3F4CCCCD
glabel D_80919DE0
/* 001192 0x80919DE0 */ .word	0x3D4CCCCD
glabel D_80919DE4
/* 001193 0x80919DE4 */ .word	0x3CF5C28F
glabel D_80919DE8
/* 001194 0x80919DE8 */ .word	0x3E4CCCCD
glabel D_80919DEC
/* 001195 0x80919DEC */ .word	0x3DCCCCCD
glabel D_80919DF0
/* 001196 0x80919DF0 */ .word	0x453B8000
glabel D_80919DF4
/* 001197 0x80919DF4 */ .word	0x458CA000
glabel D_80919DF8
/* 001198 0x80919DF8 */ .word	0x451C4000
glabel D_80919DFC
/* 001199 0x80919DFC */ .word	0x4604D000
glabel D_80919E00
/* 001200 0x80919E00 */ .word	0x44D48000
glabel D_80919E04
/* 001201 0x80919E04 */ .word	0x459C4000
glabel D_80919E08
/* 001202 0x80919E08 */ .word	0x3F59999A
/* 001203 0x80919E0C */ .word	0x00000000
glabel effDustOverlayInfo
/* 001204 0x80919E10 */ .word	0x00001250
/* 001205 0x80919E14 */ .word	0x00000030
/* 001206 0x80919E18 */ .word	0x00000050
/* 001207 0x80919E1C */ .word	0x00000000
/* 001208 0x80919E20 */ .word	0x0000003F
glabel effDustOverlayRelocations
/* 001209 0x80919E24 */ .word	0x4400008C
/* 001210 0x80919E28 */ .word	0x450000A8
/* 001211 0x80919E2C */ .word	0x460000B0
/* 001212 0x80919E30 */ .word	0x450000C4
/* 001213 0x80919E34 */ .word	0x460000CC
/* 001214 0x80919E38 */ .word	0x450000C8
/* 001215 0x80919E3C */ .word	0x460000D0
/* 001216 0x80919E40 */ .word	0x450000DC
/* 001217 0x80919E44 */ .word	0x460000EC
/* 001218 0x80919E48 */ .word	0x45000100
/* 001219 0x80919E4C */ .word	0x46000104
/* 001220 0x80919E50 */ .word	0x45000110
/* 001221 0x80919E54 */ .word	0x46000118
/* 001222 0x80919E58 */ .word	0x45000114
/* 001223 0x80919E5C */ .word	0x4600011C
/* 001224 0x80919E60 */ .word	0x4500014C
/* 001225 0x80919E64 */ .word	0x46000154
/* 001226 0x80919E68 */ .word	0x45000150
/* 001227 0x80919E6C */ .word	0x46000158
/* 001228 0x80919E70 */ .word	0x45000188
/* 001229 0x80919E74 */ .word	0x46000190
/* 001230 0x80919E78 */ .word	0x4500018C
/* 001231 0x80919E7C */ .word	0x46000194
/* 001232 0x80919E80 */ .word	0x450001C4
/* 001233 0x80919E84 */ .word	0x460001CC
/* 001234 0x80919E88 */ .word	0x450001C8
/* 001235 0x80919E8C */ .word	0x460001D0
/* 001236 0x80919E90 */ .word	0x45000274
/* 001237 0x80919E94 */ .word	0x4600027C
/* 001238 0x80919E98 */ .word	0x450004F8
/* 001239 0x80919E9C */ .word	0x46000500
/* 001240 0x80919EA0 */ .word	0x45000790
/* 001241 0x80919EA4 */ .word	0x46000794
/* 001242 0x80919EA8 */ .word	0x45000834
/* 001243 0x80919EAC */ .word	0x46000838
/* 001244 0x80919EB0 */ .word	0x450008D8
/* 001245 0x80919EB4 */ .word	0x460008F0
/* 001246 0x80919EB8 */ .word	0x45000978
/* 001247 0x80919EBC */ .word	0x4600097C
/* 001248 0x80919EC0 */ .word	0x45000A30
/* 001249 0x80919EC4 */ .word	0x46000A34
/* 001250 0x80919EC8 */ .word	0x45000AE8
/* 001251 0x80919ECC */ .word	0x46000AEC
/* 001252 0x80919ED0 */ .word	0x45000AF4
/* 001253 0x80919ED4 */ .word	0x46000AFC
/* 001254 0x80919ED8 */ .word	0x45000B00
/* 001255 0x80919EDC */ .word	0x46000B18
/* 001256 0x80919EE0 */ .word	0x45000D0C
/* 001257 0x80919EE4 */ .word	0x46000D18
/* 001258 0x80919EE8 */ .word	0x45000F58
/* 001259 0x80919EEC */ .word	0x46000F5C
/* 001260 0x80919EF0 */ .word	0x45000FC8
/* 001261 0x80919EF4 */ .word	0x46000FCC
/* 001262 0x80919EF8 */ .word	0x82000010
/* 001263 0x80919EFC */ .word	0x82000014
/* 001264 0x80919F00 */ .word	0x82000018
/* 001265 0x80919F04 */ .word	0x8200001C
/* 001266 0x80919F08 */ .word	0xC2000000
/* 001267 0x80919F0C */ .word	0xC2000004
/* 001268 0x80919F10 */ .word	0xC2000008
/* 001269 0x80919F14 */ .word	0xC200000C
/* 001270 0x80919F18 */ .word	0xC2000010
/* 001271 0x80919F1C */ .word	0xC2000014
/* 001272 0x80919F20 */ .word	0x00000000
/* 001273 0x80919F24 */ .word	0x00000000
/* 001274 0x80919F28 */ .word	0x00000000
glabel effDustOverlayInfoOffset
/* 001275 0x80919F2C */ .word	0x00000120
