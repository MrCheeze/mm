.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel gBitFlags
/* 290972 0x801C1D30 */ .word	0x00000001
/* 290973 0x801C1D34 */ .word	0x00000002
/* 290974 0x801C1D38 */ .word	0x00000004
/* 290975 0x801C1D3C */ .word	0x00000008
/* 290976 0x801C1D40 */ .word	0x00000010
/* 290977 0x801C1D44 */ .word	0x00000020
/* 290978 0x801C1D48 */ .word	0x00000040
/* 290979 0x801C1D4C */ .word	0x00000080
/* 290980 0x801C1D50 */ .word	0x00000100
/* 290981 0x801C1D54 */ .word	0x00000200
/* 290982 0x801C1D58 */ .word	0x00000400
/* 290983 0x801C1D5C */ .word	0x00000800
/* 290984 0x801C1D60 */ .word	0x00001000
/* 290985 0x801C1D64 */ .word	0x00002000
/* 290986 0x801C1D68 */ .word	0x00004000
/* 290987 0x801C1D6C */ .word	0x00008000
/* 290988 0x801C1D70 */ .word	0x00010000
/* 290989 0x801C1D74 */ .word	0x00020000
/* 290990 0x801C1D78 */ .word	0x00040000
/* 290991 0x801C1D7C */ .word	0x00080000
/* 290992 0x801C1D80 */ .word	0x00100000
/* 290993 0x801C1D84 */ .word	0x00200000
/* 290994 0x801C1D88 */ .word	0x00400000
/* 290995 0x801C1D8C */ .word	0x00800000
/* 290996 0x801C1D90 */ .word	0x01000000
/* 290997 0x801C1D94 */ .word	0x02000000
/* 290998 0x801C1D98 */ .word	0x04000000
/* 290999 0x801C1D9C */ .word	0x08000000
/* 291000 0x801C1DA0 */ .word	0x10000000
/* 291001 0x801C1DA4 */ .word	0x20000000
/* 291002 0x801C1DA8 */ .word	0x40000000
/* 291003 0x801C1DAC */ .word	0x80000000
glabel D_801C1DB0
/* 291004 0x801C1DB0 */ .short	0x000F
glabel D_801C1DB2
/* 291004 0x801C1DB0 */ .short	0x00F0
glabel D_801C1DB4
/* 291005 0x801C1DB4 */ .word	0x0F00F000
glabel D_801C1DB8
/* 291006 0x801C1DB8 */ .short	0xFFF0
glabel D_801C1DBA
/* 291006 0x801C1DB8 */ .short	0xFF0F
/* 291007 0x801C1DBC */ .word	0xF0FF0FFF
glabel D_801C1DC0
/* 291008 0x801C1DC0 */ .word	0x00000007
glabel D_801C1DC4
/* 291009 0x801C1DC4 */ .word	0x00000038
/* 291010 0x801C1DC8 */ .word	0x000001C0
/* 291011 0x801C1DCC */ .word	0x00000E00
glabel D_801C1DD0
/* 291012 0x801C1DD0 */ .word	0x00003000
/* 291013 0x801C1DD4 */ .word	0x0001C000
glabel D_801C1DD8
/* 291014 0x801C1DD8 */ .word	0x000E0000
glabel D_801C1DDC
/* 291015 0x801C1DDC */ .word	0x00700000
glabel D_801C1DE0
/* 291016 0x801C1DE0 */ .word	0xFFFFFFF8
/* 291017 0x801C1DE4 */ .word	0xFFFFFFC7
/* 291018 0x801C1DE8 */ .word	0xFFFFFE3F
/* 291019 0x801C1DEC */ .word	0xFFFFF1FF
/* 291020 0x801C1DF0 */ .word	0xFFFFCFFF
/* 291021 0x801C1DF4 */ .word	0xFFFE3FFF
/* 291022 0x801C1DF8 */ .word	0xFFF1FFFF
/* 291023 0x801C1DFC */ .word	0xFF8FFFFF
glabel D_801C1E00
/* 291024 0x801C1E00 */ .byte	0x00
glabel D_801C1E01
/* 291024 0x801C1E00 */ .byte	0x04
glabel D_801C1E02
/* 291024 0x801C1E00 */ .short	0x080C
glabel D_801C1E04
/* 291025 0x801C1E04 */ .byte	0x00
glabel D_801C1E05
/* 291025 0x801C1E04 */ .byte	0x03
/* 291025 0x801C1E04 */ .short	0x0609
glabel D_801C1E08
/* 291026 0x801C1E08 */ .short	0x0C0E
glabel D_801C1E0A
/* 291026 0x801C1E08 */ .byte	0x11
glabel D_801C1E0B
/* 291026 0x801C1E08 */ .byte	0x14
glabel D_801C1E0C
/* 291027 0x801C1E0C */ .short	0x0000
glabel D_801C1E0E
/* 291027 0x801C1E0C */ .short	0x001E
glabel D_801C1E10
/* 291028 0x801C1E10 */ .short	0x0028
glabel D_801C1E12
/* 291028 0x801C1E10 */ .short	0x0032
glabel D_801C1E14
/* 291029 0x801C1E14 */ .short	0x0000
glabel D_801C1E16
/* 291029 0x801C1E14 */ .short	0x0014
glabel D_801C1E18
/* 291030 0x801C1E18 */ .short	0x001E
glabel D_801C1E1A
/* 291030 0x801C1E18 */ .short	0x0028
/* 291031 0x801C1E1C */ .word	0x00000000
/* 291032 0x801C1E20 */ .word	0x00000000
/* 291033 0x801C1E24 */ .word	0x00000000
/* 291034 0x801C1E28 */ .word	0x00000000
glabel D_801C1E2C
/* 291035 0x801C1E2C */ .word	0x006300C8
/* 291036 0x801C1E30 */ .word	0x01F401F4
/* 291037 0x801C1E34 */ .word	0x0000001E
/* 291038 0x801C1E38 */ .word	0x00280032
glabel D_801C1E3C
/* 291039 0x801C1E3C */ .word	0x0000000A
glabel D_801C1E40
/* 291040 0x801C1E40 */ .short	0x0014
glabel D_801C1E42
/* 291040 0x801C1E40 */ .short	0x001E
glabel D_801C1E44
/* 291041 0x801C1E44 */ .word	0x00000014
glabel D_801C1E48
/* 291042 0x801C1E48 */ .short	0x001E
glabel D_801C1E4A
/* 291042 0x801C1E48 */ .short	0x0028
/* 291043 0x801C1E4C */ .word	0x000000FF
/* 291044 0x801C1E50 */ .word	0x0000FF00
/* 291045 0x801C1E54 */ .word	0x00FF0000
/* 291046 0x801C1E58 */ .word	0xFF000000
/* 291047 0x801C1E5C */ .word	0x00000000
/* 291048 0x801C1E60 */ .word	0x00000008
/* 291049 0x801C1E64 */ .word	0x00000010
/* 291050 0x801C1E68 */ .word	0x00000018
glabel D_801C1E6C
/* 291051 0x801C1E6C */ .word	0x08000000
/* 291052 0x801C1E70 */ .word	0x08001000
/* 291053 0x801C1E74 */ .word	0x08002000
/* 291054 0x801C1E78 */ .word	0x08003000
/* 291055 0x801C1E7C */ .word	0x08004000
/* 291056 0x801C1E80 */ .word	0x08005000
/* 291057 0x801C1E84 */ .word	0x08006000
/* 291058 0x801C1E88 */ .word	0x08007000
/* 291059 0x801C1E8C */ .word	0x08008000
/* 291060 0x801C1E90 */ .word	0x08009000
/* 291061 0x801C1E94 */ .word	0x0800A000
/* 291062 0x801C1E98 */ .word	0x0800B000
/* 291063 0x801C1E9C */ .word	0x0800C000
/* 291064 0x801C1EA0 */ .word	0x0800D000
/* 291065 0x801C1EA4 */ .word	0x0800E000
/* 291066 0x801C1EA8 */ .word	0x0800F000
/* 291067 0x801C1EAC */ .word	0x08010000
/* 291068 0x801C1EB0 */ .word	0x08011000
/* 291069 0x801C1EB4 */ .word	0x08012000
/* 291070 0x801C1EB8 */ .word	0x08013000
/* 291071 0x801C1EBC */ .word	0x08014000
/* 291072 0x801C1EC0 */ .word	0x08015000
/* 291073 0x801C1EC4 */ .word	0x08016000
/* 291074 0x801C1EC8 */ .word	0x08017000
/* 291075 0x801C1ECC */ .word	0x08018000
/* 291076 0x801C1ED0 */ .word	0x08019000
/* 291077 0x801C1ED4 */ .word	0x0801A000
/* 291078 0x801C1ED8 */ .word	0x0801B000
/* 291079 0x801C1EDC */ .word	0x0801C000
/* 291080 0x801C1EE0 */ .word	0x0801D000
/* 291081 0x801C1EE4 */ .word	0x0801E000
/* 291082 0x801C1EE8 */ .word	0x0801F000
/* 291083 0x801C1EEC */ .word	0x08020000
/* 291084 0x801C1EF0 */ .word	0x08021000
/* 291085 0x801C1EF4 */ .word	0x08022000
/* 291086 0x801C1EF8 */ .word	0x08023000
/* 291087 0x801C1EFC */ .word	0x08024000
/* 291088 0x801C1F00 */ .word	0x08025000
/* 291089 0x801C1F04 */ .word	0x08026000
/* 291090 0x801C1F08 */ .word	0x08027000
/* 291091 0x801C1F0C */ .word	0x08028000
/* 291092 0x801C1F10 */ .word	0x08029000
/* 291093 0x801C1F14 */ .word	0x0802A000
/* 291094 0x801C1F18 */ .word	0x0802B000
/* 291095 0x801C1F1C */ .word	0x0802C000
/* 291096 0x801C1F20 */ .word	0x0802D000
/* 291097 0x801C1F24 */ .word	0x0802E000
/* 291098 0x801C1F28 */ .word	0x0802F000
/* 291099 0x801C1F2C */ .word	0x08030000
/* 291100 0x801C1F30 */ .word	0x08031000
/* 291101 0x801C1F34 */ .word	0x08032000
/* 291102 0x801C1F38 */ .word	0x08033000
/* 291103 0x801C1F3C */ .word	0x08034000
/* 291104 0x801C1F40 */ .word	0x08035000
/* 291105 0x801C1F44 */ .word	0x08036000
/* 291106 0x801C1F48 */ .word	0x08037000
/* 291107 0x801C1F4C */ .word	0x08038000
/* 291108 0x801C1F50 */ .word	0x08039000
/* 291109 0x801C1F54 */ .word	0x0803A000
/* 291110 0x801C1F58 */ .word	0x0803B000
/* 291111 0x801C1F5C */ .word	0x0803C000
/* 291112 0x801C1F60 */ .word	0x0803D000
/* 291113 0x801C1F64 */ .word	0x0803E000
/* 291114 0x801C1F68 */ .word	0x0803F000
/* 291115 0x801C1F6C */ .word	0x08040000
/* 291116 0x801C1F70 */ .word	0x08041000
/* 291117 0x801C1F74 */ .word	0x08042000
/* 291118 0x801C1F78 */ .word	0x08043000
/* 291119 0x801C1F7C */ .word	0x08044000
/* 291120 0x801C1F80 */ .word	0x08045000
/* 291121 0x801C1F84 */ .word	0x08046000
/* 291122 0x801C1F88 */ .word	0x08047000
/* 291123 0x801C1F8C */ .word	0x08048000
/* 291124 0x801C1F90 */ .word	0x08049000
/* 291125 0x801C1F94 */ .word	0x0804A000
/* 291126 0x801C1F98 */ .word	0x0804B000
glabel D_801C1F9C
/* 291127 0x801C1F9C */ .word	0x0804C000
/* 291128 0x801C1FA0 */ .word	0x0804D000
/* 291129 0x801C1FA4 */ .word	0x0804E000
/* 291130 0x801C1FA8 */ .word	0x0804F000
glabel D_801C1FAC
/* 291131 0x801C1FAC */ .word	0x08050000
/* 291132 0x801C1FB0 */ .word	0x08051000
/* 291133 0x801C1FB4 */ .word	0x08052000
/* 291134 0x801C1FB8 */ .word	0x08053000
/* 291135 0x801C1FBC */ .word	0x08054000
/* 291136 0x801C1FC0 */ .word	0x08055000
/* 291137 0x801C1FC4 */ .word	0x08056000
/* 291138 0x801C1FC8 */ .word	0x08057000
/* 291139 0x801C1FCC */ .word	0x08058000
/* 291140 0x801C1FD0 */ .word	0x08059000
/* 291141 0x801C1FD4 */ .word	0x0805A000
/* 291142 0x801C1FD8 */ .word	0x0805B000
/* 291143 0x801C1FDC */ .word	0x0805C000
glabel D_801C1FE0
/* 291144 0x801C1FE0 */ .word	0x0805D000
/* 291145 0x801C1FE4 */ .word	0x0805E000
/* 291146 0x801C1FE8 */ .word	0x0805F000
/* 291147 0x801C1FEC */ .word	0x08060000
/* 291148 0x801C1FF0 */ .word	0x08062000
/* 291149 0x801C1FF4 */ .word	0x08062000
/* 291150 0x801C1FF8 */ .word	0x08062000
/* 291151 0x801C1FFC */ .word	0x08062000
/* 291152 0x801C2000 */ .word	0x08062000
/* 291153 0x801C2004 */ .word	0x08062000
/* 291154 0x801C2008 */ .word	0x08062000
/* 291155 0x801C200C */ .word	0x08062000
/* 291156 0x801C2010 */ .word	0x08062000
/* 291157 0x801C2014 */ .word	0x08062000
/* 291158 0x801C2018 */ .word	0x08062000
/* 291159 0x801C201C */ .word	0x08062000
/* 291160 0x801C2020 */ .word	0x08061000
/* 291161 0x801C2024 */ .word	0x09000000
/* 291162 0x801C2028 */ .word	0x09000900
/* 291163 0x801C202C */ .word	0x09001200
/* 291164 0x801C2030 */ .word	0x08062000
/* 291165 0x801C2034 */ .word	0x08062000
/* 291166 0x801C2038 */ .word	0x08062000
/* 291167 0x801C203C */ .word	0x09003600
/* 291168 0x801C2040 */ .word	0x09004800
/* 291169 0x801C2044 */ .word	0x09003F00
/* 291170 0x801C2048 */ .word	0x09005100
/* 291171 0x801C204C */ .word	0x09005A00
/* 291172 0x801C2050 */ .word	0x09006300
glabel D_801C2054
/* 291173 0x801C2054 */ .word	0x09006C00
/* 291174 0x801C2058 */ .word	0x08062180
/* 291175 0x801C205C */ .word	0x08062A80
/* 291176 0x801C2060 */ .word	0x08063380
/* 291177 0x801C2064 */ .word	0x020028A0
/* 291178 0x801C2068 */ .word	0x020025A0
/* 291179 0x801C206C */ .word	0x020027A0
/* 291180 0x801C2070 */ .word	0x020026A0
/* 291181 0x801C2074 */ .word	0x020024A0
glabel D_801C2078
/* 291182 0x801C2078 */ .byte	0x00
glabel D_801C2079
/* 291182 0x801C2078 */ .byte	0x01
glabel D_801C207A
/* 291182 0x801C2078 */ .short	0x0203
/* 291183 0x801C207C */ .short	0x0405
glabel D_801C207E
/* 291183 0x801C207C */ .byte	0x06
glabel D_801C207F
/* 291183 0x801C207C */ .byte	0x07
glabel D_801C2080
/* 291184 0x801C2080 */ .byte	0x08
glabel D_801C2081
/* 291184 0x801C2080 */ .byte	0x09
glabel D_801C2082
/* 291184 0x801C2080 */ .short	0x0A0B
glabel D_801C2084
/* 291185 0x801C2084 */ .byte	0x0C
glabel D_801C2085
/* 291185 0x801C2084 */ .byte	0x0D
/* 291185 0x801C2084 */ .short	0x0E0F
glabel D_801C2088
/* 291186 0x801C2088 */ .short	0x1012
glabel D_801C208A
/* 291186 0x801C2088 */ .short	0x1212
/* 291187 0x801C208C */ .short	0x1212
glabel D_801C208E
/* 291187 0x801C208C */ .short	0x1212
glabel D_801C2090
/* 291188 0x801C2090 */ .word	0x12121212
/* 291189 0x801C2094 */ .word	0x12121212
/* 291190 0x801C2098 */ .short	0x1212
glabel D_801C209A
/* 291190 0x801C2098 */ .short	0x1212
glabel D_801C209C
/* 291191 0x801C209C */ .byte	0x12
glabel D_801C209D
/* 291191 0x801C209C */ .byte	0x12
glabel D_801C209E
/* 291191 0x801C209C */ .short	0x1212
