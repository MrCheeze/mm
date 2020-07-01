.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_808B8120
/* 000880 0x808B8120 */ .word	0x00360700
/* 000881 0x808B8124 */ .word	0x00000030
/* 000882 0x808B8128 */ .word	0x00010000
/* 000883 0x808B812C */ .word	0x00000164
/* 000884 0x808B8130 */ .word	BgBreakwall_Init
/* 000885 0x808B8134 */ .word	0x00000000
/* 000886 0x808B8138 */ .word	BgBreakwall_Update
/* 000887 0x808B813C */ .word	0x00000000
glabel D_808B8140
/* 000888 0x808B8140 */ .word	0x01450000
/* 000889 0x808B8144 */ .word	0x060001A0
/* 000890 0x808B8148 */ .word	0x00000000
/* 000891 0x808B814C */ .word	0x00000000
/* 000892 0x808B8150 */ .word	0x00000000
/* 000893 0x808B8154 */ .word	func_808B7380
/* 000894 0x808B8158 */ .word	func_808B77D0
/* 000895 0x808B815C */ .word	0x00000000
/* 000896 0x808B8160 */ .word	0x00760000
/* 000897 0x808B8164 */ .word	0x06000F98
/* 000898 0x808B8168 */ .word	0x06000EB0
/* 000899 0x808B816C */ .word	0x06002090
/* 000900 0x808B8170 */ .word	0x00000000
/* 000901 0x808B8174 */ .word	func_808B73C4
/* 000902 0x808B8178 */ .word	func_808B77D0
/* 000903 0x808B817C */ .word	0x00000000
/* 000904 0x808B8180 */ .word	0x017E0000
/* 000905 0x808B8184 */ .word	0x060027D8
/* 000906 0x808B8188 */ .word	0x00000000
/* 000907 0x808B818C */ .word	0x06004290
/* 000908 0x808B8190 */ .word	0x00000000
/* 000909 0x808B8194 */ .word	func_808B73FC
/* 000910 0x808B8198 */ .word	func_808B77D0
/* 000911 0x808B819C */ .word	0x00000000
/* 000912 0x808B81A0 */ .word	0x017E0000
/* 000913 0x808B81A4 */ .word	0x060044A8
/* 000914 0x808B81A8 */ .word	0x00000000
/* 000915 0x808B81AC */ .word	0x00000000
/* 000916 0x808B81B0 */ .word	0x00000000
/* 000917 0x808B81B4 */ .word	func_808B736C
/* 000918 0x808B81B8 */ .word	func_808B77D0
/* 000919 0x808B81BC */ .word	0x00000000
/* 000920 0x808B81C0 */ .word	0x02080000
/* 000921 0x808B81C4 */ .word	0x06000A50
/* 000922 0x808B81C8 */ .word	0x00000000
/* 000923 0x808B81CC */ .word	0x00000000
/* 000924 0x808B81D0 */ .word	0x00000000
/* 000925 0x808B81D4 */ .word	func_808B7410
/* 000926 0x808B81D8 */ .word	func_808B77E0
/* 000927 0x808B81DC */ .word	0x00000000
/* 000928 0x808B81E0 */ .word	0x02080000
/* 000929 0x808B81E4 */ .word	0x06001870
/* 000930 0x808B81E8 */ .word	0x00000000
/* 000931 0x808B81EC */ .word	0x00000000
/* 000932 0x808B81F0 */ .word	0x06002948
/* 000933 0x808B81F4 */ .word	func_808B7460
/* 000934 0x808B81F8 */ .word	func_808B782C
/* 000935 0x808B81FC */ .word	0x00000000
/* 000936 0x808B8200 */ .word	0x02170000
/* 000937 0x808B8204 */ .word	0x00000000
/* 000938 0x808B8208 */ .word	0x06002A40
/* 000939 0x808B820C */ .word	0x06003368
/* 000940 0x808B8210 */ .word	0x00000000
/* 000941 0x808B8214 */ .word	func_808B74A8
/* 000942 0x808B8218 */ .word	func_808B78A4
/* 000943 0x808B821C */ .word	func_808B7A90
/* 000944 0x808B8220 */ .word	0x02170000
/* 000945 0x808B8224 */ .word	0x00000000
/* 000946 0x808B8228 */ .word	0x00000000
/* 000947 0x808B822C */ .word	0x06002890
/* 000948 0x808B8230 */ .word	0x00000000
/* 000949 0x808B8234 */ .word	func_808B736C
/* 000950 0x808B8238 */ .word	func_808B78DC
/* 000951 0x808B823C */ .word	func_808B7B54
/* 000952 0x808B8240 */ .word	0x01950000
/* 000953 0x808B8244 */ .word	0x06000F58
/* 000954 0x808B8248 */ .word	0x00000000
/* 000955 0x808B824C */ .word	0x06002E28
/* 000956 0x808B8250 */ .word	0x060033E8
/* 000957 0x808B8254 */ .word	func_808B74D8
/* 000958 0x808B8258 */ .word	func_808B7914
/* 000959 0x808B825C */ .word	0x00000000
/* 000960 0x808B8260 */ .word	0x02360000
/* 000961 0x808B8264 */ .word	0x00000000
/* 000962 0x808B8268 */ .word	0x0600AB10
/* 000963 0x808B826C */ .word	0x0600BCC8
/* 000964 0x808B8270 */ .word	0x00000000
/* 000965 0x808B8274 */ .word	func_808B751C
/* 000966 0x808B8278 */ .word	func_808B7A10
/* 000967 0x808B827C */ .word	func_808B7D34
/* 000968 0x808B8280 */ .word	0x020E0000
/* 000969 0x808B8284 */ .word	0x0600AD50
/* 000970 0x808B8288 */ .word	0x00000000
/* 000971 0x808B828C */ .word	0x00000000
/* 000972 0x808B8290 */ .word	0x0600B868
/* 000973 0x808B8294 */ .word	func_808B736C
/* 000974 0x808B8298 */ .word	func_808B77D0
/* 000975 0x808B829C */ .word	0x00000000
/* 000976 0x808B82A0 */ .word	0x02360000
/* 000977 0x808B82A4 */ .word	0x00000000
/* 000978 0x808B82A8 */ .word	0x0600AEC0
/* 000979 0x808B82AC */ .word	0x0600BCB8
/* 000980 0x808B82B0 */ .word	0x00000000
/* 000981 0x808B82B4 */ .word	func_808B751C
/* 000982 0x808B82B8 */ .word	func_808B7A10
/* 000983 0x808B82BC */ .word	func_808B7D34
/* 000984 0x808B82C0 */ .word	0x01BF0000
/* 000985 0x808B82C4 */ .word	0x060013F0
/* 000986 0x808B82C8 */ .word	0x00000000
/* 000987 0x808B82CC */ .word	0x00000000
/* 000988 0x808B82D0 */ .word	0x06001EB8
/* 000989 0x808B82D4 */ .word	func_808B736C
/* 000990 0x808B82D8 */ .word	func_808B77D0
/* 000991 0x808B82DC */ .word	0x00000000
glabel D_808B82E0
/* 000992 0x808B82E0 */ .word	0xC0580001
/* 000993 0x808B82E4 */ .word	0xB0FC0FA0
/* 000994 0x808B82E8 */ .word	0xB1000190
/* 000995 0x808B82EC */ .word	0x31040320
glabel D_808B82F0
/* 000996 0x808B82F0 */ .word	0xFFE6F0FF
/* 000997 0x808B82F4 */ .word	0xFFFFFFFF
/* 000998 0x808B82F8 */ .word	0xFFE6DCFF
/* 000999 0x808B82FC */ .word	0x5078A0FF
glabel D_808B8300
/* 001000 0x808B8300 */ .word	0x8C3C46FF
/* 001001 0x808B8304 */ .word	0x329696FF
/* 001002 0x808B8308 */ .word	0x8C3C32FF
/* 001003 0x808B830C */ .word	0x1E28A0FF
glabel D_808B8310
/* 001004 0x808B8310 */ .word	0xD2A0B4FF
/* 001005 0x808B8314 */ .word	0x7896A0FF
/* 001006 0x808B8318 */ .word	0xD2AAA0FF
/* 001007 0x808B831C */ .word	0x466478FF
glabel D_808B8320
/* 001008 0x808B8320 */ .word	0xFFF0FFFF
/* 001009 0x808B8324 */ .word	0xFFFFFFFF
/* 001010 0x808B8328 */ .word	0xFFFFF0FF
/* 001011 0x808B832C */ .word	0x96AAB4FF
glabel D_808B8330
/* 001012 0x808B8330 */ .word	0x3C1428FF
/* 001013 0x808B8334 */ .word	0x003232FF
/* 001014 0x808B8338 */ .word	0x3C1E1EFF
/* 001015 0x808B833C */ .word	0x00141EFF
glabel D_808B8340
/* 001016 0x808B8340 */ .word	0xA0788CFF
/* 001017 0x808B8344 */ .word	0x64A096FF
/* 001018 0x808B8348 */ .word	0xA09678FF
/* 001019 0x808B834C */ .word	0x3C6E6EFF
glabel D_808B8350
/* 001020 0x808B8350 */ .word	0x3DCCCCCD
glabel D_808B8354
/* 001021 0x808B8354 */ .word	0x3DCCCCCD
glabel D_808B8358
/* 001022 0x808B8358 */ .word	0x3D75C28F
/* 001023 0x808B835C */ .word	0x00000000
glabel bgBreakwallOverlayInfo
/* 001024 0x808B8360 */ .word	0x00000DC0
/* 001025 0x808B8364 */ .word	0x00000230
/* 001026 0x808B8368 */ .word	0x00000010
/* 001027 0x808B836C */ .word	0x00000000
/* 001028 0x808B8370 */ .word	0x00000046
glabel bgBreakwallOverlayRelocations
/* 001029 0x808B8374 */ .word	0x45000124
/* 001030 0x808B8378 */ .word	0x46000128
/* 001031 0x808B837C */ .word	0x45000268
/* 001032 0x808B8380 */ .word	0x4600026C
/* 001033 0x808B8384 */ .word	0x4500027C
/* 001034 0x808B8388 */ .word	0x46000284
/* 001035 0x808B838C */ .word	0x450002EC
/* 001036 0x808B8390 */ .word	0x460002F4
/* 001037 0x808B8394 */ .word	0x440002F0
/* 001038 0x808B8398 */ .word	0x45000330
/* 001039 0x808B839C */ .word	0x46000334
/* 001040 0x808B83A0 */ .word	0x450003A0
/* 001041 0x808B83A4 */ .word	0x460003B8
/* 001042 0x808B83A8 */ .word	0x450003AC
/* 001043 0x808B83AC */ .word	0x460003BC
/* 001044 0x808B83B0 */ .word	0x44000448
/* 001045 0x808B83B4 */ .word	0x45000450
/* 001046 0x808B83B8 */ .word	0x46000454
/* 001047 0x808B83BC */ .word	0x450004A8
/* 001048 0x808B83C0 */ .word	0x460004AC
/* 001049 0x808B83C4 */ .word	0x45000504
/* 001050 0x808B83C8 */ .word	0x46000508
/* 001051 0x808B83CC */ .word	0x4500050C
/* 001052 0x808B83D0 */ .word	0x46000510
/* 001053 0x808B83D4 */ .word	0x45000744
/* 001054 0x808B83D8 */ .word	0x46000748
/* 001055 0x808B83DC */ .word	0x45000758
/* 001056 0x808B83E0 */ .word	0x4600075C
/* 001057 0x808B83E4 */ .word	0x45000844
/* 001058 0x808B83E8 */ .word	0x46000848
/* 001059 0x808B83EC */ .word	0x45000858
/* 001060 0x808B83F0 */ .word	0x4600085C
/* 001061 0x808B83F4 */ .word	0x450008B0
/* 001062 0x808B83F8 */ .word	0x46000908
/* 001063 0x808B83FC */ .word	0x45000914
/* 001064 0x808B8400 */ .word	0x46000918
/* 001065 0x808B8404 */ .word	0x45000CA4
/* 001066 0x808B8408 */ .word	0x46000CA8
/* 001067 0x808B840C */ .word	0x82000010
/* 001068 0x808B8410 */ .word	0x82000018
/* 001069 0x808B8414 */ .word	0x82000034
/* 001070 0x808B8418 */ .word	0x82000038
/* 001071 0x808B841C */ .word	0x82000054
/* 001072 0x808B8420 */ .word	0x82000058
/* 001073 0x808B8424 */ .word	0x82000074
/* 001074 0x808B8428 */ .word	0x82000078
/* 001075 0x808B842C */ .word	0x82000094
/* 001076 0x808B8430 */ .word	0x82000098
/* 001077 0x808B8434 */ .word	0x820000B4
/* 001078 0x808B8438 */ .word	0x820000B8
/* 001079 0x808B843C */ .word	0x820000D4
/* 001080 0x808B8440 */ .word	0x820000D8
/* 001081 0x808B8444 */ .word	0x820000F4
/* 001082 0x808B8448 */ .word	0x820000F8
/* 001083 0x808B844C */ .word	0x820000FC
/* 001084 0x808B8450 */ .word	0x82000114
/* 001085 0x808B8454 */ .word	0x82000118
/* 001086 0x808B8458 */ .word	0x8200011C
/* 001087 0x808B845C */ .word	0x82000134
/* 001088 0x808B8460 */ .word	0x82000138
/* 001089 0x808B8464 */ .word	0x82000154
/* 001090 0x808B8468 */ .word	0x82000158
/* 001091 0x808B846C */ .word	0x8200015C
/* 001092 0x808B8470 */ .word	0x82000174
/* 001093 0x808B8474 */ .word	0x82000178
/* 001094 0x808B8478 */ .word	0x82000194
/* 001095 0x808B847C */ .word	0x82000198
/* 001096 0x808B8480 */ .word	0x8200019C
/* 001097 0x808B8484 */ .word	0x820001B4
/* 001098 0x808B8488 */ .word	0x820001B8
glabel bgBreakwallOverlayInfoOffset
/* 001099 0x808B848C */ .word	0x00000130
