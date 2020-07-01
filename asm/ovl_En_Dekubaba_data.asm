.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_808B4D40
/* 003716 0x808B4D40 */ .word	0x00330500
/* 003717 0x808B4D44 */ .word	0x00000405
/* 003718 0x808B4D48 */ .word	0x00310000
/* 003719 0x808B4D4C */ .word	0x0000041C
/* 003720 0x808B4D50 */ .word	EnDekubaba_Init
/* 003721 0x808B4D54 */ .word	EnDekubaba_Destroy
/* 003722 0x808B4D58 */ .word	EnDekubaba_Update
/* 003723 0x808B4D5C */ .word	EnDekubaba_Draw
glabel D_808B4D60
/* 003724 0x808B4D60 */ .word	0x00000000
/* 003725 0x808B4D64 */ .word	0xF7CFFFFF
/* 003726 0x808B4D68 */ .word	0x00080000
/* 003727 0x808B4D6C */ .word	0xF7CFFFFF
/* 003728 0x808B4D70 */ .word	0x00000000
/* 003729 0x808B4D74 */ .word	0x09050100
/* 003730 0x808B4D78 */ .word	0x01000000
/* 003731 0x808B4D7C */ .word	0x006403E8
/* 003732 0x808B4D80 */ .word	0x000F0064
/* 003733 0x808B4D84 */ .word	0x00000000
/* 003734 0x808B4D88 */ .word	0x00000000
/* 003735 0x808B4D8C */ .word	0x00000000
/* 003736 0x808B4D90 */ .word	0xF7CFFFFF
/* 003737 0x808B4D94 */ .word	0x00000000
/* 003738 0x808B4D98 */ .word	0x00000100
/* 003739 0x808B4D9C */ .word	0x33000000
/* 003740 0x808B4DA0 */ .word	0x000005DC
/* 003741 0x808B4DA4 */ .word	0x00080064
/* 003742 0x808B4DA8 */ .word	0x00000000
/* 003743 0x808B4DAC */ .word	0x00000000
/* 003744 0x808B4DB0 */ .word	0x00000000
/* 003745 0x808B4DB4 */ .word	0xF7CFFFFF
/* 003746 0x808B4DB8 */ .word	0x00000000
/* 003747 0x808B4DBC */ .word	0x00000000
/* 003748 0x808B4DC0 */ .word	0x34000000
/* 003749 0x808B4DC4 */ .word	0x000001F4
/* 003750 0x808B4DC8 */ .word	0x00080064
/* 003751 0x808B4DCC */ .word	0x00000000
/* 003752 0x808B4DD0 */ .word	0x00000000
/* 003753 0x808B4DD4 */ .word	0x00000000
/* 003754 0x808B4DD8 */ .word	0xF7CFFFFF
/* 003755 0x808B4DDC */ .word	0x00000000
/* 003756 0x808B4DE0 */ .word	0x00000000
/* 003757 0x808B4DE4 */ .word	0x35000000
/* 003758 0x808B4DE8 */ .word	0x000005DC
/* 003759 0x808B4DEC */ .word	0x00080064
/* 003760 0x808B4DF0 */ .word	0x00000000
/* 003761 0x808B4DF4 */ .word	0x00000000
/* 003762 0x808B4DF8 */ .word	0x00000000
/* 003763 0x808B4DFC */ .word	0xF7CFFFFF
/* 003764 0x808B4E00 */ .word	0x00000000
/* 003765 0x808B4E04 */ .word	0x00000000
/* 003766 0x808B4E08 */ .word	0x36000000
/* 003767 0x808B4E0C */ .word	0x000001F4
/* 003768 0x808B4E10 */ .word	0x00080064
/* 003769 0x808B4E14 */ .word	0x00000000
/* 003770 0x808B4E18 */ .word	0x00000000
/* 003771 0x808B4E1C */ .word	0x00000000
/* 003772 0x808B4E20 */ .word	0xF7CFFFFF
/* 003773 0x808B4E24 */ .word	0x00000000
/* 003774 0x808B4E28 */ .word	0x00000000
/* 003775 0x808B4E2C */ .word	0x37000000
/* 003776 0x808B4E30 */ .word	0x000005DC
/* 003777 0x808B4E34 */ .word	0x00080064
/* 003778 0x808B4E38 */ .word	0x00000000
/* 003779 0x808B4E3C */ .word	0x00000000
/* 003780 0x808B4E40 */ .word	0x00000000
/* 003781 0x808B4E44 */ .word	0xF7CFFFFF
/* 003782 0x808B4E48 */ .word	0x00000000
/* 003783 0x808B4E4C */ .word	0x00000000
/* 003784 0x808B4E50 */ .word	0x38000000
/* 003785 0x808B4E54 */ .word	0x000001F4
/* 003786 0x808B4E58 */ .word	0x00080064
glabel D_808B4E5C
/* 003787 0x808B4E5C */ .word	0x06110939
/* 003788 0x808B4E60 */ .word	0x10000000
/* 003789 0x808B4E64 */ .word	0x00000007
/* 003790 0x808B4E68 */ .word	D_808B4D60
glabel D_808B4E6C
/* 003791 0x808B4E6C */ .word	0x02000019
/* 003792 0x808B4E70 */ .word	0x0019FF00
glabel D_808B4E74
/* 003793 0x808B4E74 */ .word	0x10030101
/* 003794 0x808B4E78 */ .word	0xF10300D0
/* 003795 0x808B4E7C */ .word	0x02F10421
/* 003796 0x808B4E80 */ .word	0x334301F1
/* 003797 0x808B4E84 */ .word	0x03021050
/* 003798 0x808B4E88 */ .word	0x00000101
/* 003799 0x808B4E8C */ .word	0xF1000000
/* 003800 0x808B4E90 */ .word	0x00000001
glabel D_808B4E94
/* 003801 0x808B4E94 */ .word	0x305405DC
glabel D_808B4E98
/* 003802 0x808B4E98 */ .word	0x69FF69FF
glabel D_808B4E9C
/* 003803 0x808B4E9C */ .word	0x96FA9600
glabel D_808B4EA0
/* 003804 0x808B4EA0 */ .word	0x06001330
/* 003805 0x808B4EA4 */ .word	0x06001628
/* 003806 0x808B4EA8 */ .word	0x06001828
/* 003807 0x808B4EAC */ .word	0x00000000
glabel D_808B4EB0
/* 003808 0x808B4EB0 */ .word	0x3E99999A
glabel D_808B4EB4
/* 003809 0x808B4EB4 */ .word	0x3E4CCCCD
glabel D_808B4EB8
/* 003810 0x808B4EB8 */ .word	0x3C23D70A
glabel D_808B4EBC
/* 003811 0x808B4EBC */ .word	0x3D888889
glabel D_808B4EC0
/* 003812 0x808B4EC0 */ .word	0x3C23D70A
glabel D_808B4EC4
/* 003813 0x808B4EC4 */ .word	0x3F333333
glabel D_808B4EC8
/* 003814 0x808B4EC8 */ .word	0x3D888889
glabel D_808B4ECC
/* 003815 0x808B4ECC */ .word	0x40490FDB
glabel D_808B4ED0
/* 003816 0x808B4ED0 */ .word	0x3C23D70A
glabel D_808B4ED4
/* 003817 0x808B4ED4 */ .word	0x3D088889
glabel D_808B4ED8
/* 003818 0x808B4ED8 */ .word	0x3F333333
glabel D_808B4EDC
/* 003819 0x808B4EDC */ .word	0x3D072B02
glabel D_808B4EE0
/* 003820 0x808B4EE0 */ .word	0x40490FDB
glabel D_808B4EE4
/* 003821 0x808B4EE4 */ .word	0x3C23D70A
glabel D_808B4EE8
/* 003822 0x808B4EE8 */ .word	0xBF4CCCCD
glabel D_808B4EEC
/* 003823 0x808B4EEC */ .word	0x3DCCCCCD
glabel D_808B4EF0
/* 003824 0x808B4EF0 */ .word	0x3BA3D70A
glabel D_808B4EF4
/* 003825 0x808B4EF4 */ .word	0x3DCCCCCD
glabel D_808B4EF8
/* 003826 0x808B4EF8 */ .word	0x3C23D70A
glabel D_808B4EFC
/* 003827 0x808B4EFC */ .word	0x3F4CCCCD
glabel D_808B4F00
/* 003828 0x808B4F00 */ .word	0x471C4000
glabel D_808B4F04
/* 003829 0x808B4F04 */ .word	0x3C23D70A
glabel D_808B4F08
/* 003830 0x808B4F08 */ .word	0x3C23D70A
glabel D_808B4F0C
/* 003831 0x808B4F0C */ .word	0x3E19999A
glabel D_808B4F10
/* 003832 0x808B4F10 */ .word	0x3C23D70A
/* 003833 0x808B4F14 */ .word	0x00000000
/* 003834 0x808B4F18 */ .word	0x00000000
/* 003835 0x808B4F1C */ .word	0x00000000
glabel enDekubabaOverlayInfo
/* 003836 0x808B4F20 */ .word	0x00003A10
/* 003837 0x808B4F24 */ .word	0x00000170
/* 003838 0x808B4F28 */ .word	0x00000070
/* 003839 0x808B4F2C */ .word	0x00000000
/* 003840 0x808B4F30 */ .word	0x000000BB
glabel enDekubabaOverlayRelocations
/* 003841 0x808B4F34 */ .word	0x45000014
/* 003842 0x808B4F38 */ .word	0x46000018
/* 003843 0x808B4F3C */ .word	0x45000070
/* 003844 0x808B4F40 */ .word	0x46000078
/* 003845 0x808B4F44 */ .word	0x45000090
/* 003846 0x808B4F48 */ .word	0x4600009C
/* 003847 0x808B4F4C */ .word	0x45000094
/* 003848 0x808B4F50 */ .word	0x46000098
/* 003849 0x808B4F54 */ .word	0x450000B0
/* 003850 0x808B4F58 */ .word	0x460000B8
/* 003851 0x808B4F5C */ .word	0x450000C4
/* 003852 0x808B4F60 */ .word	0x460000C8
/* 003853 0x808B4F64 */ .word	0x440001B0
/* 003854 0x808B4F68 */ .word	0x45000520
/* 003855 0x808B4F6C */ .word	0x46000524
/* 003856 0x808B4F70 */ .word	0x4500052C
/* 003857 0x808B4F74 */ .word	0x46000530
/* 003858 0x808B4F78 */ .word	0x450005A8
/* 003859 0x808B4F7C */ .word	0x460005C8
/* 003860 0x808B4F80 */ .word	0x45000724
/* 003861 0x808B4F84 */ .word	0x46000728
/* 003862 0x808B4F88 */ .word	0x44000878
/* 003863 0x808B4F8C */ .word	0x450008C0
/* 003864 0x808B4F90 */ .word	0x460008C4
/* 003865 0x808B4F94 */ .word	0x450009A0
/* 003866 0x808B4F98 */ .word	0x460009A4
/* 003867 0x808B4F9C */ .word	0x45000A10
/* 003868 0x808B4FA0 */ .word	0x46000A18
/* 003869 0x808B4FA4 */ .word	0x45000A60
/* 003870 0x808B4FA8 */ .word	0x46000A6C
/* 003871 0x808B4FAC */ .word	0x45000A70
/* 003872 0x808B4FB0 */ .word	0x46000A78
/* 003873 0x808B4FB4 */ .word	0x45000A7C
/* 003874 0x808B4FB8 */ .word	0x46000AA0
/* 003875 0x808B4FBC */ .word	0x44000DFC
/* 003876 0x808B4FC0 */ .word	0x44000E0C
/* 003877 0x808B4FC4 */ .word	0x45000EBC
/* 003878 0x808B4FC8 */ .word	0x46000EC0
/* 003879 0x808B4FCC */ .word	0x45000F40
/* 003880 0x808B4FD0 */ .word	0x46000F44
/* 003881 0x808B4FD4 */ .word	0x45000F50
/* 003882 0x808B4FD8 */ .word	0x46000F5C
/* 003883 0x808B4FDC */ .word	0x45000F94
/* 003884 0x808B4FE0 */ .word	0x46000F98
/* 003885 0x808B4FE4 */ .word	0x45000FA0
/* 003886 0x808B4FE8 */ .word	0x46000FA4
/* 003887 0x808B4FEC */ .word	0x45000FAC
/* 003888 0x808B4FF0 */ .word	0x46000FD0
/* 003889 0x808B4FF4 */ .word	0x440012BC
/* 003890 0x808B4FF8 */ .word	0x45001314
/* 003891 0x808B4FFC */ .word	0x46001318
/* 003892 0x808B5000 */ .word	0x440014D4
/* 003893 0x808B5004 */ .word	0x44001508
/* 003894 0x808B5008 */ .word	0x44001544
/* 003895 0x808B500C */ .word	0x45001564
/* 003896 0x808B5010 */ .word	0x4600156C
/* 003897 0x808B5014 */ .word	0x4400162C
/* 003898 0x808B5018 */ .word	0x44001634
/* 003899 0x808B501C */ .word	0x45001674
/* 003900 0x808B5020 */ .word	0x46001678
/* 003901 0x808B5024 */ .word	0x450017EC
/* 003902 0x808B5028 */ .word	0x460017FC
/* 003903 0x808B502C */ .word	0x450017F0
/* 003904 0x808B5030 */ .word	0x460017F8
/* 003905 0x808B5034 */ .word	0x4400185C
/* 003906 0x808B5038 */ .word	0x440018F4
/* 003907 0x808B503C */ .word	0x45001968
/* 003908 0x808B5040 */ .word	0x4600196C
/* 003909 0x808B5044 */ .word	0x44001C9C
/* 003910 0x808B5048 */ .word	0x44001CAC
/* 003911 0x808B504C */ .word	0x44001CF8
/* 003912 0x808B5050 */ .word	0x45001D20
/* 003913 0x808B5054 */ .word	0x46001D28
/* 003914 0x808B5058 */ .word	0x44001E1C
/* 003915 0x808B505C */ .word	0x44001E24
/* 003916 0x808B5060 */ .word	0x45001E70
/* 003917 0x808B5064 */ .word	0x46001E80
/* 003918 0x808B5068 */ .word	0x45001F30
/* 003919 0x808B506C */ .word	0x46001F34
/* 003920 0x808B5070 */ .word	0x44001FD4
/* 003921 0x808B5074 */ .word	0x4400201C
/* 003922 0x808B5078 */ .word	0x4400202C
/* 003923 0x808B507C */ .word	0x4400203C
/* 003924 0x808B5080 */ .word	0x44002044
/* 003925 0x808B5084 */ .word	0x45002068
/* 003926 0x808B5088 */ .word	0x46002070
/* 003927 0x808B508C */ .word	0x450020A0
/* 003928 0x808B5090 */ .word	0x460020A4
/* 003929 0x808B5094 */ .word	0x4500210C
/* 003930 0x808B5098 */ .word	0x46002110
/* 003931 0x808B509C */ .word	0x450021E0
/* 003932 0x808B50A0 */ .word	0x460021E4
/* 003933 0x808B50A4 */ .word	0x44002400
/* 003934 0x808B50A8 */ .word	0x45002494
/* 003935 0x808B50AC */ .word	0x46002498
/* 003936 0x808B50B0 */ .word	0x450024F4
/* 003937 0x808B50B4 */ .word	0x460024F8
/* 003938 0x808B50B8 */ .word	0x45002500
/* 003939 0x808B50BC */ .word	0x46002504
/* 003940 0x808B50C0 */ .word	0x450027F0
/* 003941 0x808B50C4 */ .word	0x460027F4
/* 003942 0x808B50C8 */ .word	0x4400285C
/* 003943 0x808B50CC */ .word	0x4400288C
/* 003944 0x808B50D0 */ .word	0x4400289C
/* 003945 0x808B50D4 */ .word	0x440028D4
/* 003946 0x808B50D8 */ .word	0x450028FC
/* 003947 0x808B50DC */ .word	0x46002900
/* 003948 0x808B50E0 */ .word	0x45002988
/* 003949 0x808B50E4 */ .word	0x4600298C
/* 003950 0x808B50E8 */ .word	0x44002A10
/* 003951 0x808B50EC */ .word	0x44002A20
/* 003952 0x808B50F0 */ .word	0x44002A28
/* 003953 0x808B50F4 */ .word	0x44002A50
/* 003954 0x808B50F8 */ .word	0x45002A5C
/* 003955 0x808B50FC */ .word	0x46002A60
/* 003956 0x808B5100 */ .word	0x44002A9C
/* 003957 0x808B5104 */ .word	0x44002AB8
/* 003958 0x808B5108 */ .word	0x44002AE8
/* 003959 0x808B510C */ .word	0x44002AF8
/* 003960 0x808B5110 */ .word	0x45002B88
/* 003961 0x808B5114 */ .word	0x46002B90
/* 003962 0x808B5118 */ .word	0x44002CD4
/* 003963 0x808B511C */ .word	0x45002CE4
/* 003964 0x808B5120 */ .word	0x46002CE8
/* 003965 0x808B5124 */ .word	0x44002D14
/* 003966 0x808B5128 */ .word	0x44002D30
/* 003967 0x808B512C */ .word	0x44002D50
/* 003968 0x808B5130 */ .word	0x44002D60
/* 003969 0x808B5134 */ .word	0x45002D6C
/* 003970 0x808B5138 */ .word	0x46002D70
/* 003971 0x808B513C */ .word	0x44002D94
/* 003972 0x808B5140 */ .word	0x44002DA4
/* 003973 0x808B5144 */ .word	0x44002DD0
/* 003974 0x808B5148 */ .word	0x44002DE0
/* 003975 0x808B514C */ .word	0x44002DFC
/* 003976 0x808B5150 */ .word	0x44002E18
/* 003977 0x808B5154 */ .word	0x44002E34
/* 003978 0x808B5158 */ .word	0x44002E44
/* 003979 0x808B515C */ .word	0x44002E50
/* 003980 0x808B5160 */ .word	0x45002E7C
/* 003981 0x808B5164 */ .word	0x46002E8C
/* 003982 0x808B5168 */ .word	0x45002EB4
/* 003983 0x808B516C */ .word	0x46002EB8
/* 003984 0x808B5170 */ .word	0x45002EC0
/* 003985 0x808B5174 */ .word	0x46002EC4
/* 003986 0x808B5178 */ .word	0x44002EE8
/* 003987 0x808B517C */ .word	0x44002FF8
/* 003988 0x808B5180 */ .word	0x44003004
/* 003989 0x808B5184 */ .word	0x45003024
/* 003990 0x808B5188 */ .word	0x46003028
/* 003991 0x808B518C */ .word	0x45003078
/* 003992 0x808B5190 */ .word	0x46003080
/* 003993 0x808B5194 */ .word	0x45003030
/* 003994 0x808B5198 */ .word	0x46003084
/* 003995 0x808B519C */ .word	0x450030D0
/* 003996 0x808B51A0 */ .word	0x460030D4
/* 003997 0x808B51A4 */ .word	0x45003238
/* 003998 0x808B51A8 */ .word	0x4600323C
/* 003999 0x808B51AC */ .word	0x45003374
/* 004000 0x808B51B0 */ .word	0x46003378
/* 004001 0x808B51B4 */ .word	0x45003398
/* 004002 0x808B51B8 */ .word	0x4600339C
/* 004003 0x808B51BC */ .word	0x450033DC
/* 004004 0x808B51C0 */ .word	0x460033E0
/* 004005 0x808B51C4 */ .word	0x4500351C
/* 004006 0x808B51C8 */ .word	0x46003520
/* 004007 0x808B51CC */ .word	0x45003704
/* 004008 0x808B51D0 */ .word	0x46003708
/* 004009 0x808B51D4 */ .word	0x45003804
/* 004010 0x808B51D8 */ .word	0x46003808
/* 004011 0x808B51DC */ .word	0x45003814
/* 004012 0x808B51E0 */ .word	0x46003818
/* 004013 0x808B51E4 */ .word	0x45003838
/* 004014 0x808B51E8 */ .word	0x4600383C
/* 004015 0x808B51EC */ .word	0x4400384C
/* 004016 0x808B51F0 */ .word	0x4400385C
/* 004017 0x808B51F4 */ .word	0x45003864
/* 004018 0x808B51F8 */ .word	0x46003868
/* 004019 0x808B51FC */ .word	0x45003904
/* 004020 0x808B5200 */ .word	0x46003908
/* 004021 0x808B5204 */ .word	0x44003914
/* 004022 0x808B5208 */ .word	0x4400392C
/* 004023 0x808B520C */ .word	0x82000010
/* 004024 0x808B5210 */ .word	0x82000014
/* 004025 0x808B5214 */ .word	0x82000018
/* 004026 0x808B5218 */ .word	0x8200001C
/* 004027 0x808B521C */ .word	0x82000128
/* 004028 0x808B5220 */ .word	0x00000000
/* 004029 0x808B5224 */ .word	0x00000000
/* 004030 0x808B5228 */ .word	0x00000000
glabel enDekubabaOverlayInfoOffset
/* 004031 0x808B522C */ .word	0x00000310
