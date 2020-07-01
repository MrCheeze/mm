.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80AE9800
/* 000804 0x80AE9800 */ .word	0x01C80600
/* 000805 0x80AE9804 */ .word	0x00000000
/* 000806 0x80AE9808 */ .word	0x01AD0000
/* 000807 0x80AE980C */ .word	0x000001E4
/* 000808 0x80AE9810 */ .word	ObjBigicicle_Init
/* 000809 0x80AE9814 */ .word	ObjBigicicle_Destroy
/* 000810 0x80AE9818 */ .word	ObjBigicicle_Update
/* 000811 0x80AE981C */ .word	ObjBigicicle_Draw
glabel D_80AE9820
/* 000812 0x80AE9820 */ .word	0x0C000939
/* 000813 0x80AE9824 */ .word	0x20010000
/* 000814 0x80AE9828 */ .word	0x00000000
/* 000815 0x80AE982C */ .word	0x00000000
/* 000816 0x80AE9830 */ .word	0x00000000
/* 000817 0x80AE9834 */ .word	0x00003820
/* 000818 0x80AE9838 */ .word	0x00000000
/* 000819 0x80AE983C */ .word	0x00010100
/* 000820 0x80AE9840 */ .word	0x00170044
/* 000821 0x80AE9844 */ .word	0xFFD80000
/* 000822 0x80AE9848 */ .word	0x00000000
glabel D_80AE984C
/* 000823 0x80AE984C */ .word	0x0C000D39
/* 000824 0x80AE9850 */ .word	0x20010000
/* 000825 0x80AE9854 */ .word	0x00000000
/* 000826 0x80AE9858 */ .word	0x00000000
/* 000827 0x80AE985C */ .word	0x00000000
/* 000828 0x80AE9860 */ .word	0xF7CFFFFF
/* 000829 0x80AE9864 */ .word	0x00000000
/* 000830 0x80AE9868 */ .word	0x00010100
/* 000831 0x80AE986C */ .word	0x001F005A
/* 000832 0x80AE9870 */ .word	0xFF6A0000
/* 000833 0x80AE9874 */ .word	0x00000000
glabel D_80AE9878
/* 000834 0x80AE9878 */ .word	0x06001678
glabel D_80AE987C
/* 000835 0x80AE987C */ .word	0x00000000
/* 000836 0x80AE9880 */ .word	0xBF800000
/* 000837 0x80AE9884 */ .word	0x00000000
glabel D_80AE9888
/* 000838 0x80AE9888 */ .word	0xB074FFFE
/* 000839 0x80AE988C */ .word	0x30FC15E0
glabel D_80AE9890
/* 000840 0x80AE9890 */ .word	0x00000000
glabel D_80AE9894
/* 000841 0x80AE9894 */ .word	0xFAFAFAFF
glabel D_80AE9898
/* 000842 0x80AE9898 */ .word	0xB4B4B4FF
glabel D_80AE989C
/* 000843 0x80AE989C */ .word	0x06001D10
/* 000844 0x80AE98A0 */ .word	0x06002530
/* 000845 0x80AE98A4 */ .word	0x06002C20
glabel D_80AE98A8
/* 000846 0x80AE98A8 */ .word	0x06000B20
/* 000847 0x80AE98AC */ .word	0x06000D60
/* 000848 0x80AE98B0 */ .word	0x06000F40
/* 000849 0x80AE98B4 */ .word	0x00000000
/* 000850 0x80AE98B8 */ .word	0x00000000
/* 000851 0x80AE98BC */ .word	0x00000000
glabel D_80AE98C0
/* 000852 0x80AE98C0 */ .word	0x3A83126F
glabel D_80AE98C4
/* 000853 0x80AE98C4 */ .word	0x3C888889
glabel D_80AE98C8
/* 000854 0x80AE98C8 */ .word	0x41855555
glabel D_80AE98CC
/* 000855 0x80AE98CC */ .word	0x45034000
glabel D_80AE98D0
/* 000856 0x80AE98D0 */ .word	0x3CA3D70A
glabel D_80AE98D4
/* 000857 0x80AE98D4 */ .word	0x3CA3D70A
glabel D_80AE98D8
/* 000858 0x80AE98D8 */ .word	0x41855555
glabel D_80AE98DC
/* 000859 0x80AE98DC */ .word	0x3D4CCCCD
glabel D_80AE98E0
/* 000860 0x80AE98E0 */ .word	0x45034000
/* 000861 0x80AE98E4 */ .word	0x00000000
/* 000862 0x80AE98E8 */ .word	0x00000000
/* 000863 0x80AE98EC */ .word	0x00000000
glabel objBigicicleOverlayInfo
/* 000864 0x80AE98F0 */ .word	0x00000C90
/* 000865 0x80AE98F4 */ .word	0x000000C0
/* 000866 0x80AE98F8 */ .word	0x00000030
/* 000867 0x80AE98FC */ .word	0x00000000
/* 000868 0x80AE9900 */ .word	0x00000044
glabel objBigicicleOverlayRelocations
/* 000869 0x80AE9904 */ .word	0x45000014
/* 000870 0x80AE9908 */ .word	0x46000018
/* 000871 0x80AE990C */ .word	0x4500004C
/* 000872 0x80AE9910 */ .word	0x46000050
/* 000873 0x80AE9914 */ .word	0x45000088
/* 000874 0x80AE9918 */ .word	0x4600008C
/* 000875 0x80AE991C */ .word	0x45000094
/* 000876 0x80AE9920 */ .word	0x4600009C
/* 000877 0x80AE9924 */ .word	0x450000D4
/* 000878 0x80AE9928 */ .word	0x460000D8
/* 000879 0x80AE992C */ .word	0x450001E0
/* 000880 0x80AE9930 */ .word	0x460001E4
/* 000881 0x80AE9934 */ .word	0x450001E8
/* 000882 0x80AE9938 */ .word	0x460001F8
/* 000883 0x80AE993C */ .word	0x450001FC
/* 000884 0x80AE9940 */ .word	0x46000200
/* 000885 0x80AE9944 */ .word	0x45000204
/* 000886 0x80AE9948 */ .word	0x4600020C
/* 000887 0x80AE994C */ .word	0x45000210
/* 000888 0x80AE9950 */ .word	0x46000214
/* 000889 0x80AE9954 */ .word	0x450002BC
/* 000890 0x80AE9958 */ .word	0x460002C0
/* 000891 0x80AE995C */ .word	0x450002F0
/* 000892 0x80AE9960 */ .word	0x460002FC
/* 000893 0x80AE9964 */ .word	0x450004D4
/* 000894 0x80AE9968 */ .word	0x460004D8
/* 000895 0x80AE996C */ .word	0x440004E4
/* 000896 0x80AE9970 */ .word	0x450004F0
/* 000897 0x80AE9974 */ .word	0x460004FC
/* 000898 0x80AE9978 */ .word	0x4400055C
/* 000899 0x80AE997C */ .word	0x45000574
/* 000900 0x80AE9980 */ .word	0x46000578
/* 000901 0x80AE9984 */ .word	0x45000594
/* 000902 0x80AE9988 */ .word	0x46000598
/* 000903 0x80AE998C */ .word	0x450005E0
/* 000904 0x80AE9990 */ .word	0x460005E4
/* 000905 0x80AE9994 */ .word	0x45000654
/* 000906 0x80AE9998 */ .word	0x46000658
/* 000907 0x80AE999C */ .word	0x45000690
/* 000908 0x80AE99A0 */ .word	0x46000694
/* 000909 0x80AE99A4 */ .word	0x450006C8
/* 000910 0x80AE99A8 */ .word	0x460006CC
/* 000911 0x80AE99AC */ .word	0x450007C0
/* 000912 0x80AE99B0 */ .word	0x460007C4
/* 000913 0x80AE99B4 */ .word	0x450007E0
/* 000914 0x80AE99B8 */ .word	0x460007E4
/* 000915 0x80AE99BC */ .word	0x45000874
/* 000916 0x80AE99C0 */ .word	0x46000878
/* 000917 0x80AE99C4 */ .word	0x450008A8
/* 000918 0x80AE99C8 */ .word	0x460008B4
/* 000919 0x80AE99CC */ .word	0x45000A38
/* 000920 0x80AE99D0 */ .word	0x46000A3C
/* 000921 0x80AE99D4 */ .word	0x45000AD4
/* 000922 0x80AE99D8 */ .word	0x46000AD8
/* 000923 0x80AE99DC */ .word	0x45000B54
/* 000924 0x80AE99E0 */ .word	0x46000B70
/* 000925 0x80AE99E4 */ .word	0x45000B58
/* 000926 0x80AE99E8 */ .word	0x46000B68
/* 000927 0x80AE99EC */ .word	0x45000C24
/* 000928 0x80AE99F0 */ .word	0x46000C3C
/* 000929 0x80AE99F4 */ .word	0x45000C44
/* 000930 0x80AE99F8 */ .word	0x46000C5C
/* 000931 0x80AE99FC */ .word	0x45000C60
/* 000932 0x80AE9A00 */ .word	0x46000C64
/* 000933 0x80AE9A04 */ .word	0x82000010
/* 000934 0x80AE9A08 */ .word	0x82000014
/* 000935 0x80AE9A0C */ .word	0x82000018
/* 000936 0x80AE9A10 */ .word	0x8200001C
/* 000937 0x80AE9A14 */ .word	0x00000000
/* 000938 0x80AE9A18 */ .word	0x00000000
glabel objBigicicleOverlayInfoOffset
/* 000939 0x80AE9A1C */ .word	0x00000130
