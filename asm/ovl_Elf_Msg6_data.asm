.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80BA22E0
/* 000848 0x80BA22E0 */ .word	0x02320700
/* 000849 0x80BA22E4 */ .word	0x00000010
/* 000850 0x80BA22E8 */ .word	0x00010000
/* 000851 0x80BA22EC */ .word	0x00000148
/* 000852 0x80BA22F0 */ .word	ElfMsg6_Init
/* 000853 0x80BA22F4 */ .word	ElfMsg6_Destroy
/* 000854 0x80BA22F8 */ .word	ElfMsg6_Update
/* 000855 0x80BA22FC */ .word	0x00000000
glabel D_80BA2300
/* 000856 0x80BA2300 */ .word	0xC85803E8
/* 000857 0x80BA2304 */ .word	0x30FC03E8
/* 000858 0x80BA2308 */ .word	0x00000000
/* 000859 0x80BA230C */ .word	0x00000000
glabel D_80BA2310
/* 000860 0x80BA2310 */ .word	0x3ECCCCCD
glabel D_80BA2314
/* 000861 0x80BA2314 */ .word	0x3D23D70A
glabel D_80BA2318
/* 000862 0x80BA2318 */ .word	0x3ECCCCCD
glabel D_80BA231C
/* 000863 0x80BA231C */ .word	0x3D23D70A
glabel __switch_D_80BA2320
/* 000864 0x80BA2320 */ .word	.L_80BA194C
/* 000865 0x80BA2324 */ .word	.L_80BA1980
/* 000866 0x80BA2328 */ .word	.L_80BA1A4C
/* 000867 0x80BA232C */ .word	.L_80BA1AFC
/* 000868 0x80BA2330 */ .word	.L_80BA1B8C
/* 000869 0x80BA2334 */ .word	.L_80BA1BA4
/* 000870 0x80BA2338 */ .word	.L_80BA1BBC
/* 000871 0x80BA233C */ .word	0x00000000
glabel elfMsg6OverlayInfo
/* 000872 0x80BA2340 */ .word	0x00000D40
/* 000873 0x80BA2344 */ .word	0x00000030
/* 000874 0x80BA2348 */ .word	0x00000030
/* 000875 0x80BA234C */ .word	0x00000000
/* 000876 0x80BA2350 */ .word	0x00000032
glabel elfMsg6OverlayRelocations
/* 000877 0x80BA2354 */ .word	0x440001A4
/* 000878 0x80BA2358 */ .word	0x450002C4
/* 000879 0x80BA235C */ .word	0x460002C8
/* 000880 0x80BA2360 */ .word	0x450002E4
/* 000881 0x80BA2364 */ .word	0x46000304
/* 000882 0x80BA2368 */ .word	0x45000328
/* 000883 0x80BA236C */ .word	0x4600032C
/* 000884 0x80BA2370 */ .word	0x45000334
/* 000885 0x80BA2374 */ .word	0x46000344
/* 000886 0x80BA2378 */ .word	0x45000360
/* 000887 0x80BA237C */ .word	0x46000364
/* 000888 0x80BA2380 */ .word	0x45000398
/* 000889 0x80BA2384 */ .word	0x460003A0
/* 000890 0x80BA2388 */ .word	0x450003AC
/* 000891 0x80BA238C */ .word	0x460003B0
/* 000892 0x80BA2390 */ .word	0x440003C0
/* 000893 0x80BA2394 */ .word	0x450003E4
/* 000894 0x80BA2398 */ .word	0x460003E8
/* 000895 0x80BA239C */ .word	0x450004E8
/* 000896 0x80BA23A0 */ .word	0x46000550
/* 000897 0x80BA23A4 */ .word	0x450005B4
/* 000898 0x80BA23A8 */ .word	0x460005C0
/* 000899 0x80BA23AC */ .word	0x450005EC
/* 000900 0x80BA23B0 */ .word	0x460005F0
/* 000901 0x80BA23B4 */ .word	0x45000604
/* 000902 0x80BA23B8 */ .word	0x46000608
/* 000903 0x80BA23BC */ .word	0x4500061C
/* 000904 0x80BA23C0 */ .word	0x46000620
/* 000905 0x80BA23C4 */ .word	0x45000634
/* 000906 0x80BA23C8 */ .word	0x46000638
/* 000907 0x80BA23CC */ .word	0x4400081C
/* 000908 0x80BA23D0 */ .word	0x44000950
/* 000909 0x80BA23D4 */ .word	0x4400096C
/* 000910 0x80BA23D8 */ .word	0x44000A30
/* 000911 0x80BA23DC */ .word	0x44000B8C
/* 000912 0x80BA23E0 */ .word	0x44000BA0
/* 000913 0x80BA23E4 */ .word	0x44000BEC
/* 000914 0x80BA23E8 */ .word	0x44000C0C
/* 000915 0x80BA23EC */ .word	0x44000CE0
/* 000916 0x80BA23F0 */ .word	0x44000CF4
/* 000917 0x80BA23F4 */ .word	0x82000010
/* 000918 0x80BA23F8 */ .word	0x82000014
/* 000919 0x80BA23FC */ .word	0x82000018
/* 000920 0x80BA2400 */ .word	0xC2000010
/* 000921 0x80BA2404 */ .word	0xC2000014
/* 000922 0x80BA2408 */ .word	0xC2000018
/* 000923 0x80BA240C */ .word	0xC200001C
/* 000924 0x80BA2410 */ .word	0xC2000020
/* 000925 0x80BA2414 */ .word	0xC2000024
/* 000926 0x80BA2418 */ .word	0xC2000028
glabel elfMsg6OverlayInfoOffset
/* 000927 0x80BA241C */ .word	0x000000E0
