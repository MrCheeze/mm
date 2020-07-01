.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80A521A0
/* 000812 0x80A521A0 */ .word	0x00000000
glabel D_80A521A4
/* 000813 0x80A521A4 */ .word	0x01690400
/* 000814 0x80A521A8 */ .word	0x00000009
/* 000815 0x80A521AC */ .word	0x00010000
/* 000816 0x80A521B0 */ .word	0x000002A4
/* 000817 0x80A521B4 */ .word	EnDnk_Init
/* 000818 0x80A521B8 */ .word	EnDnk_Destroy
/* 000819 0x80A521BC */ .word	EnDnk_Update
/* 000820 0x80A521C0 */ .word	0x00000000
glabel D_80A521C4
/* 000821 0x80A521C4 */ .word	0x00000939
/* 000822 0x80A521C8 */ .word	0x10010000
/* 000823 0x80A521CC */ .word	0x01000000
/* 000824 0x80A521D0 */ .word	0x00000000
/* 000825 0x80A521D4 */ .word	0x00000000
/* 000826 0x80A521D8 */ .word	0xF7CFFFFF
/* 000827 0x80A521DC */ .word	0x00000000
/* 000828 0x80A521E0 */ .word	0x00010100
/* 000829 0x80A521E4 */ .word	0x0012002E
/* 000830 0x80A521E8 */ .word	0x00000000
/* 000831 0x80A521EC */ .word	0x00000000
glabel D_80A521F0
/* 000832 0x80A521F0 */ .word	0x01000000
/* 000833 0x80A521F4 */ .word	0x00000000
/* 000834 0x80A521F8 */ .word	0xFF000000
glabel D_80A521FC
/* 000835 0x80A521FC */ .word	0x01010101
/* 000836 0x80A52200 */ .word	0x01010101
/* 000837 0x80A52204 */ .word	0x01010101
/* 000838 0x80A52208 */ .word	0x01010101
/* 000839 0x80A5220C */ .word	0x01010101
/* 000840 0x80A52210 */ .word	0x01010101
/* 000841 0x80A52214 */ .word	0x01010101
/* 000842 0x80A52218 */ .word	0x01010101
glabel D_80A5221C
/* 000843 0x80A5221C */ .word	0x06000B70
/* 000844 0x80A52220 */ .word	0x3F800000
/* 000845 0x80A52224 */ .word	0x0000FFFF
/* 000846 0x80A52228 */ .word	0x02000000
/* 000847 0x80A5222C */ .word	0x06000B70
/* 000848 0x80A52230 */ .word	0x3F800000
/* 000849 0x80A52234 */ .word	0x0000FFFF
/* 000850 0x80A52238 */ .word	0x0200FFFC
/* 000851 0x80A5223C */ .word	0x06002A08
/* 000852 0x80A52240 */ .word	0x3F800000
/* 000853 0x80A52244 */ .word	0x0000FFFF
/* 000854 0x80A52248 */ .word	0x0000FFFC
/* 000855 0x80A5224C */ .word	0x0600031C
/* 000856 0x80A52250 */ .word	0x3F800000
/* 000857 0x80A52254 */ .word	0x0000FFFF
/* 000858 0x80A52258 */ .word	0x0000FFFC
/* 000859 0x80A5225C */ .word	0x06000430
/* 000860 0x80A52260 */ .word	0x3F800000
/* 000861 0x80A52264 */ .word	0xFFFFFFFF
/* 000862 0x80A52268 */ .word	0x02000000
/* 000863 0x80A5226C */ .word	0x06000430
/* 000864 0x80A52270 */ .word	0x3F800000
/* 000865 0x80A52274 */ .word	0x0000FFFF
/* 000866 0x80A52278 */ .word	0x0200FFFC
/* 000867 0x80A5227C */ .word	0x06000894
/* 000868 0x80A52280 */ .word	0x3F800000
/* 000869 0x80A52284 */ .word	0x0000FFFF
/* 000870 0x80A52288 */ .word	0x0200FFFC
/* 000871 0x80A5228C */ .word	0x06002B6C
/* 000872 0x80A52290 */ .word	0x3F800000
/* 000873 0x80A52294 */ .word	0x0000FFFF
/* 000874 0x80A52298 */ .word	0x00000000
/* 000875 0x80A5229C */ .word	0x06002B6C
/* 000876 0x80A522A0 */ .word	0x3F800000
/* 000877 0x80A522A4 */ .word	0x0000FFFF
/* 000878 0x80A522A8 */ .word	0x0000FFFC
/* 000879 0x80A522AC */ .word	0x060006CC
/* 000880 0x80A522B0 */ .word	0x3F800000
/* 000881 0x80A522B4 */ .word	0x0000FFFF
/* 000882 0x80A522B8 */ .word	0x0000FFFC
/* 000883 0x80A522BC */ .word	0x06000168
/* 000884 0x80A522C0 */ .word	0x3F800000
/* 000885 0x80A522C4 */ .word	0x0000FFFF
/* 000886 0x80A522C8 */ .word	0x0200FFFC
/* 000887 0x80A522CC */ .word	0x060024CC
/* 000888 0x80A522D0 */ .word	0x3F800000
/* 000889 0x80A522D4 */ .word	0xFFFFFFFF
/* 000890 0x80A522D8 */ .word	0x02000000
/* 000891 0x80A522DC */ .word	0x060024CC
/* 000892 0x80A522E0 */ .word	0x3F800000
/* 000893 0x80A522E4 */ .word	0x0000FFFF
/* 000894 0x80A522E8 */ .word	0x0200FFFC
/* 000895 0x80A522EC */ .word	0x060026C4
/* 000896 0x80A522F0 */ .word	0x3F800000
/* 000897 0x80A522F4 */ .word	0x0000FFFF
/* 000898 0x80A522F8 */ .word	0x0200FFFC
/* 000899 0x80A522FC */ .word	0x06002894
/* 000900 0x80A52300 */ .word	0x3F800000
/* 000901 0x80A52304 */ .word	0x0000FFFF
/* 000902 0x80A52308 */ .word	0x0200FFFC
/* 000903 0x80A5230C */ .word	0x06002B90
/* 000904 0x80A52310 */ .word	0x3F800000
/* 000905 0x80A52314 */ .word	0x0000FFFF
/* 000906 0x80A52318 */ .word	0x0200FFFC
/* 000907 0x80A5231C */ .word	0x06002F7C
/* 000908 0x80A52320 */ .word	0x3F800000
/* 000909 0x80A52324 */ .word	0x0000FFFF
/* 000910 0x80A52328 */ .word	0x00000000
/* 000911 0x80A5232C */ .word	0x06002F7C
/* 000912 0x80A52330 */ .word	0x3F800000
/* 000913 0x80A52334 */ .word	0x0000FFFF
/* 000914 0x80A52338 */ .word	0x0000FFFC
/* 000915 0x80A5233C */ .word	0x06003128
/* 000916 0x80A52340 */ .word	0x3F800000
/* 000917 0x80A52344 */ .word	0x0000FFFF
/* 000918 0x80A52348 */ .word	0x00000000
/* 000919 0x80A5234C */ .word	0x06003128
/* 000920 0x80A52350 */ .word	0x3F800000
/* 000921 0x80A52354 */ .word	0x0000FFFF
/* 000922 0x80A52358 */ .word	0x0000FFFC
/* 000923 0x80A5235C */ .word	0x060029BC
/* 000924 0x80A52360 */ .word	0x3F800000
/* 000925 0x80A52364 */ .word	0x0000FFFF
/* 000926 0x80A52368 */ .word	0x0000FFFC
/* 000927 0x80A5236C */ .word	0x06002E84
/* 000928 0x80A52370 */ .word	0x3F800000
/* 000929 0x80A52374 */ .word	0x0000FFFF
/* 000930 0x80A52378 */ .word	0x0000FFFC
/* 000931 0x80A5237C */ .word	0x06000168
/* 000932 0x80A52380 */ .word	0x3F800000
/* 000933 0x80A52384 */ .word	0x0000FFFF
/* 000934 0x80A52388 */ .word	0x0000FFFC
/* 000935 0x80A5238C */ .word	0x0600259C
/* 000936 0x80A52390 */ .word	0x3F800000
/* 000937 0x80A52394 */ .word	0x0000FFFF
/* 000938 0x80A52398 */ .word	0x0200FFFC
/* 000939 0x80A5239C */ .word	0x06002A5C
/* 000940 0x80A523A0 */ .word	0x3F800000
/* 000941 0x80A523A4 */ .word	0x0000FFFF
/* 000942 0x80A523A8 */ .word	0x02000000
/* 000943 0x80A523AC */ .word	0x06002A5C
/* 000944 0x80A523B0 */ .word	0x3F800000
/* 000945 0x80A523B4 */ .word	0x0000FFFF
/* 000946 0x80A523B8 */ .word	0x0200FFFC
/* 000947 0x80A523BC */ .word	0x06002BD4
/* 000948 0x80A523C0 */ .word	0x3F800000
/* 000949 0x80A523C4 */ .word	0x0000FFFF
/* 000950 0x80A523C8 */ .word	0x0200FFFC
/* 000951 0x80A523CC */ .word	0x06002DD4
/* 000952 0x80A523D0 */ .word	0x3F800000
/* 000953 0x80A523D4 */ .word	0x0000FFFF
/* 000954 0x80A523D8 */ .word	0x0200FFFC
/* 000955 0x80A523DC */ .word	0x06002FA4
/* 000956 0x80A523E0 */ .word	0x3F800000
/* 000957 0x80A523E4 */ .word	0x0000FFFF
/* 000958 0x80A523E8 */ .word	0x0000FFFC
/* 000959 0x80A523EC */ .word	0x06003180
/* 000960 0x80A523F0 */ .word	0x3F800000
/* 000961 0x80A523F4 */ .word	0x0000FFFF
/* 000962 0x80A523F8 */ .word	0x0200FFFC
/* 000963 0x80A523FC */ .word	0x0600326C
/* 000964 0x80A52400 */ .word	0x3F800000
/* 000965 0x80A52404 */ .word	0x0000FFFF
/* 000966 0x80A52408 */ .word	0x00000000
/* 000967 0x80A5240C */ .word	0x0600326C
/* 000968 0x80A52410 */ .word	0x3F800000
/* 000969 0x80A52414 */ .word	0x0000FFFF
/* 000970 0x80A52418 */ .word	0x0000FFFC
/* 000971 0x80A5241C */ .word	0x060033E4
/* 000972 0x80A52420 */ .word	0x3F800000
/* 000973 0x80A52424 */ .word	0x0000FFFF
/* 000974 0x80A52428 */ .word	0x0000FFFC
/* 000975 0x80A5242C */ .word	0x06003780
/* 000976 0x80A52430 */ .word	0x3F800000
/* 000977 0x80A52434 */ .word	0x0000FFFF
/* 000978 0x80A52438 */ .word	0x00000000
/* 000979 0x80A5243C */ .word	0x06003780
/* 000980 0x80A52440 */ .word	0x3F800000
/* 000981 0x80A52444 */ .word	0x0000FFFF
/* 000982 0x80A52448 */ .word	0x0000FFFC
/* 000983 0x80A5244C */ .word	0x06002950
/* 000984 0x80A52450 */ .word	0x3F800000
/* 000985 0x80A52454 */ .word	0x0000FFFF
/* 000986 0x80A52458 */ .word	0x00000000
glabel D_80A5245C
/* 000987 0x80A5245C */ .word	0x06001680
/* 000988 0x80A52460 */ .word	0x06001700
/* 000989 0x80A52464 */ .word	0x06001780
/* 000990 0x80A52468 */ .word	0x00000000
/* 000991 0x80A5246C */ .word	0x00000000
glabel enDnkOverlayInfo
/* 000992 0x80A52470 */ .word	0x00000CB0
/* 000993 0x80A52474 */ .word	0x000002D0
/* 000994 0x80A52478 */ .word	0x00000000
/* 000995 0x80A5247C */ .word	0x00000000
/* 000996 0x80A52480 */ .word	0x00000027
glabel enDnkOverlayRelocations
/* 000997 0x80A52484 */ .word	0x4500002C
/* 000998 0x80A52488 */ .word	0x46000030
/* 000999 0x80A5248C */ .word	0x45000194
/* 001000 0x80A52490 */ .word	0x460001B0
/* 001001 0x80A52494 */ .word	0x44000240
/* 001002 0x80A52498 */ .word	0x44000284
/* 001003 0x80A5249C */ .word	0x440002C8
/* 001004 0x80A524A0 */ .word	0x450002E0
/* 001005 0x80A524A4 */ .word	0x460002E4
/* 001006 0x80A524A8 */ .word	0x450002F8
/* 001007 0x80A524AC */ .word	0x46000304
/* 001008 0x80A524B0 */ .word	0x450002FC
/* 001009 0x80A524B4 */ .word	0x46000300
/* 001010 0x80A524B8 */ .word	0x45000330
/* 001011 0x80A524BC */ .word	0x46000340
/* 001012 0x80A524C0 */ .word	0x45000318
/* 001013 0x80A524C4 */ .word	0x46000324
/* 001014 0x80A524C8 */ .word	0x4500046C
/* 001015 0x80A524CC */ .word	0x46000470
/* 001016 0x80A524D0 */ .word	0x4500048C
/* 001017 0x80A524D4 */ .word	0x46000490
/* 001018 0x80A524D8 */ .word	0x44000518
/* 001019 0x80A524DC */ .word	0x4400056C
/* 001020 0x80A524E0 */ .word	0x4500080C
/* 001021 0x80A524E4 */ .word	0x4600081C
/* 001022 0x80A524E8 */ .word	0x45000840
/* 001023 0x80A524EC */ .word	0x46000874
/* 001024 0x80A524F0 */ .word	0x45000854
/* 001025 0x80A524F4 */ .word	0x46000858
/* 001026 0x80A524F8 */ .word	0x45000AF8
/* 001027 0x80A524FC */ .word	0x46000B08
/* 001028 0x80A52500 */ .word	0x45000AF0
/* 001029 0x80A52504 */ .word	0x46000AF4
/* 001030 0x80A52508 */ .word	0x44000B5C
/* 001031 0x80A5250C */ .word	0x44000B6C
/* 001032 0x80A52510 */ .word	0x44000C90
/* 001033 0x80A52514 */ .word	0x82000014
/* 001034 0x80A52518 */ .word	0x82000018
/* 001035 0x80A5251C */ .word	0x8200001C
/* 001036 0x80A52520 */ .word	0x00000000
/* 001037 0x80A52524 */ .word	0x00000000
/* 001038 0x80A52528 */ .word	0x00000000
glabel enDnkOverlayInfoOffset
/* 001039 0x80A5252C */ .word	0x000000C0
