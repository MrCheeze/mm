.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_801B9F20
/* 282904 0x801B9F20 */ .word	0x10010102
/* 282905 0x801B9F24 */ .word	0xE001F210
/* 282906 0x801B9F28 */ .word	0xF1F2F222
/* 282907 0x801B9F2C */ .word	0x01010000
/* 282908 0x801B9F30 */ .word	0x00220000
/* 282909 0x801B9F34 */ .word	0x00000102
/* 282910 0x801B9F38 */ .word	0x02000000
/* 282911 0x801B9F3C */ .word	0x00000000
/* 282912 0x801B9F40 */ .word	0x10010102
/* 282913 0x801B9F44 */ .word	0xE001F210
/* 282914 0x801B9F48 */ .word	0xF1F2F222
/* 282915 0x801B9F4C */ .word	0x01010000
/* 282916 0x801B9F50 */ .word	0x00220000
/* 282917 0x801B9F54 */ .word	0x00000102
/* 282918 0x801B9F58 */ .word	0x02000000
/* 282919 0x801B9F5C */ .word	0x00000000
/* 282920 0x801B9F60 */ .word	0x10020102
/* 282921 0x801B9F64 */ .word	0x10020202
/* 282922 0x801B9F68 */ .word	0x01020404
/* 282923 0x801B9F6C */ .word	0x04040000
/* 282924 0x801B9F70 */ .word	0x00040300
/* 282925 0x801B9F74 */ .word	0x00000102
/* 282926 0x801B9F78 */ .word	0x04020408
/* 282927 0x801B9F7C */ .word	0x00000000
/* 282928 0x801B9F80 */ .word	0x10010102
/* 282929 0x801B9F84 */ .word	0x01010101
/* 282930 0x801B9F88 */ .word	0x01010101
/* 282931 0x801B9F8C */ .word	0x01010101
/* 282932 0x801B9F90 */ .word	0x01010101
/* 282933 0x801B9F94 */ .word	0x00000202
/* 282934 0x801B9F98 */ .word	0x02020202
/* 282935 0x801B9F9C */ .word	0x00000000
/* 282936 0x801B9FA0 */ .word	0x10020102
/* 282937 0x801B9FA4 */ .word	0x01020202
/* 282938 0x801B9FA8 */ .word	0x01020404
/* 282939 0x801B9FAC */ .word	0x04040000
/* 282940 0x801B9FB0 */ .word	0x00000000
/* 282941 0x801B9FB4 */ .word	0x00000102
/* 282942 0x801B9FB8 */ .word	0x04020408
/* 282943 0x801B9FBC */ .word	0x00000000
/* 282944 0x801B9FC0 */ .word	0x10010100
/* 282945 0x801B9FC4 */ .word	0x10010110
/* 282946 0x801B9FC8 */ .word	0x01010101
/* 282947 0x801B9FCC */ .word	0x31010000
/* 282948 0x801B9FD0 */ .word	0x00003100
/* 282949 0x801B9FD4 */ .word	0x00000101
/* 282950 0x801B9FD8 */ .word	0x01000000
/* 282951 0x801B9FDC */ .word	0x00000000
/* 282952 0x801B9FE0 */ .word	0x00030006
/* 282953 0x801B9FE4 */ .word	0x00040400
/* 282954 0x801B9FE8 */ .word	0x02060006
/* 282955 0x801B9FEC */ .word	0x00000000
/* 282956 0x801B9FF0 */ .word	0x00040000
/* 282957 0x801B9FF4 */ .word	0x00000000
/* 282958 0x801B9FF8 */ .word	0x00000000
/* 282959 0x801B9FFC */ .word	0x00000000
/* 282960 0x801BA000 */ .word	0x00030006
/* 282961 0x801BA004 */ .word	0x00040400
/* 282962 0x801BA008 */ .word	0x02060006
/* 282963 0x801BA00C */ .word	0x06000000
/* 282964 0x801BA010 */ .word	0x00040400
/* 282965 0x801BA014 */ .word	0x00000000
/* 282966 0x801BA018 */ .word	0x00000000
/* 282967 0x801BA01C */ .word	0x00000000
/* 282968 0x801BA020 */ .word	0x00030000
/* 282969 0x801BA024 */ .word	0x00040400
/* 282970 0x801BA028 */ .word	0x02000000
/* 282971 0x801BA02C */ .word	0x00000000
/* 282972 0x801BA030 */ .word	0x00040400
/* 282973 0x801BA034 */ .word	0x00000000
/* 282974 0x801BA038 */ .word	0x00000000
/* 282975 0x801BA03C */ .word	0x00000000
/* 282976 0x801BA040 */ .word	0x00020000
/* 282977 0x801BA044 */ .word	0x01000202
/* 282978 0x801BA048 */ .word	0x01020400
/* 282979 0x801BA04C */ .word	0x04000000
/* 282980 0x801BA050 */ .word	0x00040000
/* 282981 0x801BA054 */ .word	0x00000102
/* 282982 0x801BA058 */ .word	0x04020408
/* 282983 0x801BA05C */ .word	0x00000000
/* 282984 0x801BA060 */ .word	0x100100E2
/* 282985 0x801BA064 */ .word	0x10010210
/* 282986 0x801BA068 */ .word	0xF1F2F222
/* 282987 0x801BA06C */ .word	0x32010000
/* 282988 0x801BA070 */ .word	0x00223200
/* 282989 0x801BA074 */ .word	0x00000102
/* 282990 0x801BA078 */ .word	0x02000000
/* 282991 0x801BA07C */ .word	0x00000000
/* 282992 0x801BA080 */ .word	0x00000000
/* 282993 0x801BA084 */ .word	0x00000000
/* 282994 0x801BA088 */ .word	0x09000000
/* 282995 0x801BA08C */ .word	0x00000000
/* 282996 0x801BA090 */ .word	0x00000000
/* 282997 0x801BA094 */ .word	0x00000000
/* 282998 0x801BA098 */ .word	0x00000000
/* 282999 0x801BA09C */ .word	0x00000000
/* 283000 0x801BA0A0 */ .word	0x00010000
/* 283001 0x801BA0A4 */ .word	0x00040400
/* 283002 0x801BA0A8 */ .word	0x02040400
/* 283003 0x801BA0AC */ .word	0x00000000
/* 283004 0x801BA0B0 */ .word	0x00040400
/* 283005 0x801BA0B4 */ .word	0x00000000
/* 283006 0x801BA0B8 */ .word	0x00000000
/* 283007 0x801BA0BC */ .word	0x00000000
/* 283008 0x801BA0C0 */ .word	0x10010102
/* 283009 0x801BA0C4 */ .word	0x10010210
/* 283010 0x801BA0C8 */ .word	0x01020222
/* 283011 0x801BA0CC */ .word	0x01010000
/* 283012 0x801BA0D0 */ .word	0x00220000
/* 283013 0x801BA0D4 */ .word	0x00000101
/* 283014 0x801BA0D8 */ .word	0x01000000
/* 283015 0x801BA0DC */ .word	0x00000000
/* 283016 0x801BA0E0 */ .word	0x01020102
/* 283017 0x801BA0E4 */ .word	0x01020202
/* 283018 0x801BA0E8 */ .word	0x01020404
/* 283019 0x801BA0EC */ .word	0x04040000
/* 283020 0x801BA0F0 */ .word	0x00040000
/* 283021 0x801BA0F4 */ .word	0x00000102
/* 283022 0x801BA0F8 */ .word	0x04020408
/* 283023 0x801BA0FC */ .word	0x00000000
/* 283024 0x801BA100 */ .word	0x00000000
/* 283025 0x801BA104 */ .word	0x00000000
/* 283026 0x801BA108 */ .word	0x00000000
/* 283027 0x801BA10C */ .word	0x00000000
/* 283028 0x801BA110 */ .word	0x00000000
/* 283029 0x801BA114 */ .word	0x00000000
/* 283030 0x801BA118 */ .word	0x00000000
/* 283031 0x801BA11C */ .word	0x00000000
/* 283032 0x801BA120 */ .word	0x00020102
/* 283033 0x801BA124 */ .word	0x01020202
/* 283034 0x801BA128 */ .word	0x01020404
/* 283035 0x801BA12C */ .word	0x04040000
/* 283036 0x801BA130 */ .word	0x00040000
/* 283037 0x801BA134 */ .word	0x00000102
/* 283038 0x801BA138 */ .word	0x04020408
/* 283039 0x801BA13C */ .word	0x00000000
/* 283040 0x801BA140 */ .word	0x01010101
/* 283041 0x801BA144 */ .word	0x01010101
/* 283042 0x801BA148 */ .word	0x01010101
/* 283043 0x801BA14C */ .word	0x01010101
/* 283044 0x801BA150 */ .word	0x01010101
/* 283045 0x801BA154 */ .word	0x00000000
/* 283046 0x801BA158 */ .word	0x00000000
/* 283047 0x801BA15C */ .word	0x00000000
/* 283048 0x801BA160 */ .word	0x01010101
/* 283049 0x801BA164 */ .word	0x01010101
/* 283050 0x801BA168 */ .word	0x01010101
/* 283051 0x801BA16C */ .word	0x01010101
/* 283052 0x801BA170 */ .word	0x01010101
/* 283053 0x801BA174 */ .word	0x00000000
/* 283054 0x801BA178 */ .word	0x00000000
/* 283055 0x801BA17C */ .word	0x00000000
/* 283056 0x801BA180 */ .word	0x10010002
/* 283057 0x801BA184 */ .word	0x10010210
/* 283058 0x801BA188 */ .word	0xF1F2F222
/* 283059 0x801BA18C */ .word	0x32010000
/* 283060 0x801BA190 */ .word	0x00223200
/* 283061 0x801BA194 */ .word	0x00000102
/* 283062 0x801BA198 */ .word	0x02000000
/* 283063 0x801BA19C */ .word	0x00000000
/* 283064 0x801BA1A0 */ .word	0x100101F2
/* 283065 0x801BA1A4 */ .word	0xE001D210
/* 283066 0x801BA1A8 */ .word	0x01020200
/* 283067 0x801BA1AC */ .word	0x32000000
/* 283068 0x801BA1B0 */ .word	0x00003200
/* 283069 0x801BA1B4 */ .word	0x00000102
/* 283070 0x801BA1B8 */ .word	0x02000000
/* 283071 0x801BA1BC */ .word	0x00000000
/* 283072 0x801BA1C0 */ .word	0x100100F0
/* 283073 0x801BA1C4 */ .word	0x1001F010
/* 283074 0x801BA1C8 */ .word	0x01020200
/* 283075 0x801BA1CC */ .word	0x12000000
/* 283076 0x801BA1D0 */ .word	0x00001200
/* 283077 0x801BA1D4 */ .word	0x00000100
/* 283078 0x801BA1D8 */ .word	0x00000000
/* 283079 0x801BA1DC */ .word	0x00000000
/* 283080 0x801BA1E0 */ .word	0x01010101
/* 283081 0x801BA1E4 */ .word	0x01010101
/* 283082 0x801BA1E8 */ .word	0x01010101
/* 283083 0x801BA1EC */ .word	0x01010101
/* 283084 0x801BA1F0 */ .word	0x01010101
/* 283085 0x801BA1F4 */ .word	0x01010101
/* 283086 0x801BA1F8 */ .word	0x01010101
/* 283087 0x801BA1FC */ .word	0x01010101
glabel gDamageMultipliers
/* 283088 0x801BA200 */ .word	0x00000000
/* 283089 0x801BA204 */ .word	0x3F800000
/* 283090 0x801BA208 */ .word	0x40000000
/* 283091 0x801BA20C */ .word	0x3F000000
/* 283092 0x801BA210 */ .word	0x3E800000
/* 283093 0x801BA214 */ .word	0x40400000
/* 283094 0x801BA218 */ .word	0x40800000
/* 283095 0x801BA21C */ .word	0x3F800000
/* 283096 0x801BA220 */ .word	0x3F800000
/* 283097 0x801BA224 */ .word	0x3F800000
/* 283098 0x801BA228 */ .word	0x3F800000
/* 283099 0x801BA22C */ .word	0x3F800000
/* 283100 0x801BA230 */ .word	0x3F800000
/* 283101 0x801BA234 */ .word	0x3F800000
/* 283102 0x801BA238 */ .word	0x3F800000
/* 283103 0x801BA23C */ .word	0x3F800000
glabel defaultColCommon
/* 283104 0x801BA240 */ .word	0x00000000
/* 283105 0x801BA244 */ .word	0x00000000
/* 283106 0x801BA248 */ .word	0x00000000
/* 283107 0x801BA24C */ .word	0x00000000
/* 283108 0x801BA250 */ .word	0x00000000
/* 283109 0x801BA254 */ .word	0x03050000
glabel defaultColTouch
/* 283110 0x801BA258 */ .word	0x00000000
/* 283111 0x801BA25C */ .word	0x00000000
glabel defaultColBump
/* 283112 0x801BA260 */ .word	0xF7CFFFFF
/* 283113 0x801BA264 */ .word	0x00000000
/* 283114 0x801BA268 */ .word	0x00000000
glabel defaultColBodyInfo
/* 283115 0x801BA26C */ .word	0x00000000
/* 283116 0x801BA270 */ .word	0x00000000
/* 283117 0x801BA274 */ .word	0xF7CFFFFF
/* 283118 0x801BA278 */ .word	0x00000000
/* 283119 0x801BA27C */ .word	0x00000000
/* 283120 0x801BA280 */ .word	0x00000000
/* 283121 0x801BA284 */ .word	0x00000000
/* 283122 0x801BA288 */ .word	0x00000000
/* 283123 0x801BA28C */ .word	0x00000000
/* 283124 0x801BA290 */ .word	0x00000000
glabel defaultColSphereInfo
/* 283125 0x801BA294 */ .word	0x00000000
/* 283126 0x801BA298 */ .word	0x00000000
/* 283127 0x801BA29C */ .word	0x00000000
/* 283128 0x801BA2A0 */ .word	0x00000000
/* 283129 0x801BA2A4 */ .word	0x00000000
/* 283130 0x801BA2A8 */ .word	0x00000000
glabel defaultColCylinderInfo
/* 283131 0x801BA2AC */ .word	0x00000000
/* 283132 0x801BA2B0 */ .word	0x00000000
/* 283133 0x801BA2B4 */ .word	0x00000000
glabel defaultColTriParams
/* 283134 0x801BA2B8 */ .word	0x00000000
/* 283135 0x801BA2BC */ .word	0x00000000
/* 283136 0x801BA2C0 */ .word	0x00000000
/* 283137 0x801BA2C4 */ .word	0x00000000
/* 283138 0x801BA2C8 */ .word	0x00000000
/* 283139 0x801BA2CC */ .word	0x00000000
/* 283140 0x801BA2D0 */ .word	0x00000000
/* 283141 0x801BA2D4 */ .word	0x00000000
/* 283142 0x801BA2D8 */ .word	0x00000000
/* 283143 0x801BA2DC */ .word	0x00000000
/* 283144 0x801BA2E0 */ .word	0x00000000
/* 283145 0x801BA2E4 */ .word	0x00000000
/* 283146 0x801BA2E8 */ .word	0x00000000
glabel defaultColQuadParams
/* 283147 0x801BA2EC */ .word	0x00000000
/* 283148 0x801BA2F0 */ .word	0x00000000
/* 283149 0x801BA2F4 */ .word	0x00000000
/* 283150 0x801BA2F8 */ .word	0x00000000
/* 283151 0x801BA2FC */ .word	0x00000000
/* 283152 0x801BA300 */ .word	0x00000000
/* 283153 0x801BA304 */ .word	0x00000000
/* 283154 0x801BA308 */ .word	0x00000000
/* 283155 0x801BA30C */ .word	0x00000000
/* 283156 0x801BA310 */ .word	0x00000000
/* 283157 0x801BA314 */ .word	0x00000000
/* 283158 0x801BA318 */ .word	0x00000000
/* 283159 0x801BA31C */ .word	0x00000000
/* 283160 0x801BA320 */ .word	0x00000000
/* 283161 0x801BA324 */ .word	0x00000000
/* 283162 0x801BA328 */ .word	0x7E967699
glabel D_801BA32C
/* 283163 0x801BA32C */ .word	0x00000000
/* 283164 0x801BA330 */ .word	0x00000000
/* 283165 0x801BA334 */ .word	0x00000000
glabel collisionAddATFuncs
/* 283166 0x801BA338 */ .word	Collision_ResetSphereGroupForAT
/* 283167 0x801BA33C */ .word	Collision_ResetCylinderForAT
/* 283168 0x801BA340 */ .word	Collision_ResetTriGroupForAT
/* 283169 0x801BA344 */ .word	Collision_ResetQuadForAT
/* 283170 0x801BA348 */ .word	Collision_ResetSphereForAT
glabel collisionAddACFuncs
/* 283171 0x801BA34C */ .word	Collision_ResetSphereGroupForAC
/* 283172 0x801BA350 */ .word	Collision_ResetCylinderForAC
/* 283173 0x801BA354 */ .word	Collision_ResetTriGroupForAC
/* 283174 0x801BA358 */ .word	Collision_ResetQuadForAC
/* 283175 0x801BA35C */ .word	Collision_ResetSphereForAC
glabel collisionAddOTFuncs
/* 283176 0x801BA360 */ .word	Collision_ResetSphereGroupForOT
/* 283177 0x801BA364 */ .word	Collision_ReseCylinderForOT
/* 283178 0x801BA368 */ .word	Collision_ResetTriGroupForOT
/* 283179 0x801BA36C */ .word	Collision_ResetQuadForOT
/* 283180 0x801BA370 */ .word	Collision_ResetSphereForOT
glabel D_801BA374
/* 283181 0x801BA374 */ .word	func_800E2C08
/* 283182 0x801BA378 */ .word	func_800E2C1C
/* 283183 0x801BA37C */ .word	func_800E2D88
/* 283184 0x801BA380 */ .word	func_800E2EF4
/* 283185 0x801BA384 */ .word	func_800E2F30
/* 283186 0x801BA388 */ .word	func_800E2F54
glabel D_801BA38C
/* 283187 0x801BA38C */ .byte	0x01
glabel D_801BA38D
/* 283187 0x801BA38C */ .byte	0x00
/* 283187 0x801BA38C */ .short	0x0001
/* 283188 0x801BA390 */ .word	0x02010000
/* 283189 0x801BA394 */ .word	0x03050002
/* 283190 0x801BA398 */ .word	0x02000400
/* 283191 0x801BA39C */ .word	0x01020003
/* 283192 0x801BA3A0 */ .word	0x00050003
/* 283193 0x801BA3A4 */ .word	0x00030004
glabel D_801BA3A8
/* 283194 0x801BA3A8 */ .word	func_800E60C0
/* 283195 0x801BA3AC */ .word	func_800E61A0
/* 283196 0x801BA3B0 */ .word	func_800E6238
/* 283197 0x801BA3B4 */ .word	func_800E6320
/* 283198 0x801BA3B8 */ .word	func_800E63B8
glabel collisionFuncTableATwithAC
/* 283199 0x801BA3BC */ .word	Collision_SphereGroupWithSphereGroupAC
/* 283200 0x801BA3C0 */ .word	Collision_SphereGroupWithCylinderAC
/* 283201 0x801BA3C4 */ .word	Collision_SphereGroupWithTriGroupAC
/* 283202 0x801BA3C8 */ .word	Collision_SphereGroupWithQuadAC
/* 283203 0x801BA3CC */ .word	Collision_SphereGroupWithSphereAC
/* 283204 0x801BA3D0 */ .word	Collision_CylinderWithSphereGroupAC
/* 283205 0x801BA3D4 */ .word	Collision_CylinderWithCylinderAC
/* 283206 0x801BA3D8 */ .word	Collision_CylinderWithTriGroupAC
/* 283207 0x801BA3DC */ .word	Collision_CylinderWithQuadAC
/* 283208 0x801BA3E0 */ .word	Collision_CylinderWithSphereAC
/* 283209 0x801BA3E4 */ .word	Collision_TriGroupWithSphereGroupAC
/* 283210 0x801BA3E8 */ .word	Collision_TriGroupWithCylinderAC
/* 283211 0x801BA3EC */ .word	Collision_TriGroupWithTriGroupAC
/* 283212 0x801BA3F0 */ .word	Collision_TriGroupWithQuad
/* 283213 0x801BA3F4 */ .word	Collision_TriGroupWithSphereAC
/* 283214 0x801BA3F8 */ .word	Collision_QuadWithSphereGroupAC
/* 283215 0x801BA3FC */ .word	Collision_QuadWithCylinderAC
/* 283216 0x801BA400 */ .word	Collision_QuadWithTriGroupAC
/* 283217 0x801BA404 */ .word	Collision_QuadWithQuadAC
/* 283218 0x801BA408 */ .word	Collision_QuadWithSphereAC
/* 283219 0x801BA40C */ .word	Collision_SphereWithSphereGroupAC
/* 283220 0x801BA410 */ .word	Collision_SphereWithCylinderAC
/* 283221 0x801BA414 */ .word	Collision_SphereWithTriGroupAC
/* 283222 0x801BA418 */ .word	Collision_SphereWithQuadAC
/* 283223 0x801BA41C */ .word	Collision_SphereWithSphereAC
glabel collisionFuncTableOTwithOT
/* 283224 0x801BA420 */ .word	Collision_SphereGroupWithSphereGroupOT
/* 283225 0x801BA424 */ .word	Collision_SphereGroupWithCylinderOT
/* 283226 0x801BA428 */ .word	0x00000000
/* 283227 0x801BA42C */ .word	0x00000000
/* 283228 0x801BA430 */ .word	Collision_SphereGroupWithSphereOT
/* 283229 0x801BA434 */ .word	Collision_CylinderWithSphereGroupOT
/* 283230 0x801BA438 */ .word	Collision_CylinderWithCylinderOT
/* 283231 0x801BA43C */ .word	0x00000000
/* 283232 0x801BA440 */ .word	0x00000000
/* 283233 0x801BA444 */ .word	Collision_CylinderWithSphereOT
/* 283234 0x801BA448 */ .word	0x00000000
/* 283235 0x801BA44C */ .word	0x00000000
/* 283236 0x801BA450 */ .word	0x00000000
/* 283237 0x801BA454 */ .word	0x00000000
/* 283238 0x801BA458 */ .word	0x00000000
/* 283239 0x801BA45C */ .word	0x00000000
/* 283240 0x801BA460 */ .word	0x00000000
/* 283241 0x801BA464 */ .word	0x00000000
/* 283242 0x801BA468 */ .word	0x00000000
/* 283243 0x801BA46C */ .word	0x00000000
/* 283244 0x801BA470 */ .word	Collision_SphereWithSphereGroupOT
/* 283245 0x801BA474 */ .word	Collision_SphereWithCylinderOT
/* 283246 0x801BA478 */ .word	0x00000000
/* 283247 0x801BA47C */ .word	0x00000000
/* 283248 0x801BA480 */ .word	Collision_SphereWithSphereOT
glabel D_801BA484
/* 283249 0x801BA484 */ .word	0x00000000
/* 283250 0x801BA488 */ .word	0x00000000
/* 283251 0x801BA48C */ .word	0x00000000
/* 283252 0x801BA490 */ .word	0x00000000
/* 283253 0x801BA494 */ .word	0x000A000A
/* 283254 0x801BA498 */ .word	0x0000FF08
/* 283255 0x801BA49C */ .word	0x00000000
glabel D_801BA4A0
/* 283256 0x801BA4A0 */ .word	func_800E77EC
/* 283257 0x801BA4A4 */ .word	func_800E7894
/* 283258 0x801BA4A8 */ .word	func_800E78B4
/* 283259 0x801BA4AC */ .word	func_800E7948
/* 283260 0x801BA4B0 */ .word	func_800E7968
glabel D_801BA4B4
/* 283261 0x801BA4B4 */ .word	func_800E7A48
/* 283262 0x801BA4B8 */ .word	func_800E7B54
/* 283263 0x801BA4BC */ .word	0x00000000
/* 283264 0x801BA4C0 */ .word	0x00000000
/* 283265 0x801BA4C4 */ .word	func_800E7BCC
glabel D_801BA4C8
/* 283266 0x801BA4C8 */ .word	0x10000000
/* 283267 0x801BA4CC */ .word	0x00000000
/* 283268 0x801BA4D0 */ .word	0x00C8FFFF
/* 283269 0x801BA4D4 */ .word	0xFFFFFFFF
/* 283270 0x801BA4D8 */ .word	0xFFFF80FF
/* 283271 0x801BA4DC */ .word	0xFFFF00FF
/* 283272 0x801BA4E0 */ .word	0xFF4000C8
/* 283273 0x801BA4E4 */ .word	0xFF0000FF
/* 283274 0x801BA4E8 */ .word	0x40066666
/* 283275 0x801BA4EC */ .word	0x420C0000
/* 283276 0x801BA4F0 */ .word	0x41F00000
/* 283277 0x801BA4F4 */ .short	0x0800
glabel D_801BA4F6
/* 283277 0x801BA4F4 */ .short	0x0000
glabel D_801BA4F8
/* 283278 0x801BA4F8 */ .short	0x0000
glabel D_801BA4FA
/* 283278 0x801BA4F8 */ .short	0x0000
/* 283279 0x801BA4FC */ .word	0x0080FF00
/* 283280 0x801BA500 */ .word	0x012C0000
/* 283281 0x801BA504 */ .word	0x00000001
glabel D_801BA508
/* 283282 0x801BA508 */ .word	0x10000000
/* 283283 0x801BA50C */ .word	0x00000000
/* 283284 0x801BA510 */ .word	0x00C8FFFF
/* 283285 0x801BA514 */ .word	0xFFFFFFFF
/* 283286 0x801BA518 */ .word	0xFFFF80FF
/* 283287 0x801BA51C */ .word	0xFFFF00FF
/* 283288 0x801BA520 */ .word	0xFF4000C8
/* 283289 0x801BA524 */ .word	0xFF0000FF
/* 283290 0x801BA528 */ .word	0x40066666
/* 283291 0x801BA52C */ .word	0x420C0000
/* 283292 0x801BA530 */ .word	0x41F00000
/* 283293 0x801BA534 */ .short	0x0800
glabel D_801BA536
/* 283293 0x801BA534 */ .short	0x0000
glabel D_801BA538
/* 283294 0x801BA538 */ .short	0x0000
glabel D_801BA53A
/* 283294 0x801BA538 */ .short	0x0000
/* 283295 0x801BA53C */ .word	0x0080FF00
/* 283296 0x801BA540 */ .word	0x012C0000
/* 283297 0x801BA544 */ .word	0x00000000
/* 283298 0x801BA548 */ .word	0x00000000
/* 283299 0x801BA54C */ .word	0x00000000
