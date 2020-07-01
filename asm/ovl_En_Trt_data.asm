.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80A8FE10
/* 004520 0x80A8FE10 */ .word	0x0600DE68
/* 004521 0x80A8FE14 */ .word	0x3F800000
/* 004522 0x80A8FE18 */ .word	0x0000FFFF
/* 004523 0x80A8FE1C */ .word	0x02000000
/* 004524 0x80A8FE20 */ .word	0x0600EE98
/* 004525 0x80A8FE24 */ .word	0x3F800000
/* 004526 0x80A8FE28 */ .word	0x0000FFFF
/* 004527 0x80A8FE2C */ .word	0x02000000
/* 004528 0x80A8FE30 */ .word	0x0600FD34
/* 004529 0x80A8FE34 */ .word	0x3F800000
/* 004530 0x80A8FE38 */ .word	0x0000FFFF
/* 004531 0x80A8FE3C */ .word	0x00000000
/* 004532 0x80A8FE40 */ .word	0x060030EC
/* 004533 0x80A8FE44 */ .word	0x3F800000
/* 004534 0x80A8FE48 */ .word	0x0000FFFF
/* 004535 0x80A8FE4C */ .word	0x02000000
/* 004536 0x80A8FE50 */ .word	0x06003D78
/* 004537 0x80A8FE54 */ .word	0x3F800000
/* 004538 0x80A8FE58 */ .word	0x0000FFFF
/* 004539 0x80A8FE5C */ .word	0x02000000
/* 004540 0x80A8FE60 */ .word	0x0600D52C
/* 004541 0x80A8FE64 */ .word	0x3F800000
/* 004542 0x80A8FE68 */ .word	0x0000FFFF
/* 004543 0x80A8FE6C */ .word	0x00000000
/* 004544 0x80A8FE70 */ .word	0x06000A44
/* 004545 0x80A8FE74 */ .word	0x3F800000
/* 004546 0x80A8FE78 */ .word	0x0000FFFF
/* 004547 0x80A8FE7C */ .word	0x00000000
/* 004548 0x80A8FE80 */ .word	0x06001EF4
/* 004549 0x80A8FE84 */ .word	0x3F800000
/* 004550 0x80A8FE88 */ .word	0x0000FFFF
/* 004551 0x80A8FE8C */ .word	0x00000000
/* 004552 0x80A8FE90 */ .word	0x06002224
/* 004553 0x80A8FE94 */ .word	0x3F800000
/* 004554 0x80A8FE98 */ .word	0x0000FFFF
/* 004555 0x80A8FE9C */ .word	0x00000000
/* 004556 0x80A8FEA0 */ .word	0x06002CB0
/* 004557 0x80A8FEA4 */ .word	0x3F800000
/* 004558 0x80A8FEA8 */ .word	0x0000FFFF
/* 004559 0x80A8FEAC */ .word	0x00000000
glabel D_80A8FEB0
/* 004560 0x80A8FEB0 */ .word	0x01880400
/* 004561 0x80A8FEB4 */ .word	0x00000009
/* 004562 0x80A8FEB8 */ .word	0x018F0000
/* 004563 0x80A8FEBC */ .word	0x00000430
/* 004564 0x80A8FEC0 */ .word	EnTrt_Init
/* 004565 0x80A8FEC4 */ .word	EnTrt_Destroy
/* 004566 0x80A8FEC8 */ .word	EnTrt_Update
/* 004567 0x80A8FECC */ .word	EnTrt_Draw
glabel D_80A8FED0
/* 004568 0x80A8FED0 */ .word	0x3C03126F
glabel D_80A8FED4
/* 004569 0x80A8FED4 */ .word	0x00000018
/* 004570 0x80A8FED8 */ .word	0x0020FFDC
/* 004571 0x80A8FEDC */ .word	0x00010006
/* 004572 0x80A8FEE0 */ .word	0x0020FFDC
/* 004573 0x80A8FEE4 */ .word	0x0002FFF4
/* 004574 0x80A8FEE8 */ .word	0x0020FFDC
glabel D_80A8FEEC
/* 004575 0x80A8FEEC */ .word	0x40C00000
glabel D_80A8FEF0
/* 004576 0x80A8FEF0 */ .word	0x420C0000
glabel D_80A8FEF4
/* 004577 0x80A8FEF4 */ .word	0xC1400000
glabel D_80A8FEF8
/* 004578 0x80A8FEF8 */ .word	0x305401F4
glabel D_80A8FEFC
/* 004579 0x80A8FEFC */ .word	0x0600B0B8
/* 004580 0x80A8FF00 */ .word	0x0600B8B8
/* 004581 0x80A8FF04 */ .word	0x0600C0B8
/* 004582 0x80A8FF08 */ .word	0x00000000
/* 004583 0x80A8FF0C */ .word	0x00000000
/* 004584 0x80A8FF10 */ .word	0x2E2E2F7A
/* 004585 0x80A8FF14 */ .word	0x5F656E5F
/* 004586 0x80A8FF18 */ .word	0x7472742E
/* 004587 0x80A8FF1C */ .word	0x63000000
/* 004588 0x80A8FF20 */ .word	0x2E2E2F7A
/* 004589 0x80A8FF24 */ .word	0x5F656E5F
/* 004590 0x80A8FF28 */ .word	0x7472742E
/* 004591 0x80A8FF2C */ .word	0x63000000
glabel D_80A8FF30
/* 004592 0x80A8FF30 */ .word	0x3F99999A
glabel __switch_D_80A8FF34
/* 004593 0x80A8FF34 */ .word	.L_80A8CD8C
/* 004594 0x80A8FF38 */ .word	.L_80A8CE04
/* 004595 0x80A8FF3C */ .word	.L_80A8CE58
/* 004596 0x80A8FF40 */ .word	.L_80A8CE78
/* 004597 0x80A8FF44 */ .word	.L_80A8CE98
/* 004598 0x80A8FF48 */ .word	.L_80A8CEB8
glabel D_80A8FF4C
/* 004599 0x80A8FF4C */ .word	0x3F59999A
glabel D_80A8FF50
/* 004600 0x80A8FF50 */ .word	0x3E19999A
glabel D_80A8FF54
/* 004601 0x80A8FF54 */ .word	0x3D4CCCCD
glabel D_80A8FF58
/* 004602 0x80A8FF58 */ .word	0x3D4CCCCD
glabel D_80A8FF5C
/* 004603 0x80A8FF5C */ .word	0x3D4CCCCD
glabel D_80A8FF60
/* 004604 0x80A8FF60 */ .word	0x3D4CCCCD
glabel D_80A8FF64
/* 004605 0x80A8FF64 */ .word	0x3DCCCCCD
glabel D_80A8FF68
/* 004606 0x80A8FF68 */ .word	0x3F99999A
glabel D_80A8FF6C
/* 004607 0x80A8FF6C */ .word	0x3E4CCCCD
glabel enTrtOverlayInfo
/* 004608 0x80A8FF70 */ .word	0x000046A0
/* 004609 0x80A8FF74 */ .word	0x00000100
/* 004610 0x80A8FF78 */ .word	0x00000060
/* 004611 0x80A8FF7C */ .word	0x00000000
/* 004612 0x80A8FF80 */ .word	0x00000107
glabel enTrtOverlayRelocations
/* 004613 0x80A8FF84 */ .word	0x45000290
/* 004614 0x80A8FF88 */ .word	0x460002B4
/* 004615 0x80A8FF8C */ .word	0x450004A8
/* 004616 0x80A8FF90 */ .word	0x460004E0
/* 004617 0x80A8FF94 */ .word	0x450004AC
/* 004618 0x80A8FF98 */ .word	0x460004E4
/* 004619 0x80A8FF9C */ .word	0x44000544
/* 004620 0x80A8FFA0 */ .word	0x4400058C
/* 004621 0x80A8FFA4 */ .word	0x450005DC
/* 004622 0x80A8FFA8 */ .word	0x460005E8
/* 004623 0x80A8FFAC */ .word	0x440005F4
/* 004624 0x80A8FFB0 */ .word	0x45000638
/* 004625 0x80A8FFB4 */ .word	0x46000640
/* 004626 0x80A8FFB8 */ .word	0x44000844
/* 004627 0x80A8FFBC */ .word	0x44000854
/* 004628 0x80A8FFC0 */ .word	0x440008AC
/* 004629 0x80A8FFC4 */ .word	0x450009C4
/* 004630 0x80A8FFC8 */ .word	0x460009CC
/* 004631 0x80A8FFCC */ .word	0x440009DC
/* 004632 0x80A8FFD0 */ .word	0x45000A3C
/* 004633 0x80A8FFD4 */ .word	0x46000A40
/* 004634 0x80A8FFD8 */ .word	0x44000B00
/* 004635 0x80A8FFDC */ .word	0x45000BC4
/* 004636 0x80A8FFE0 */ .word	0x46000BD0
/* 004637 0x80A8FFE4 */ .word	0x45000C08
/* 004638 0x80A8FFE8 */ .word	0x46000C0C
/* 004639 0x80A8FFEC */ .word	0x44000C38
/* 004640 0x80A8FFF0 */ .word	0x44000C78
/* 004641 0x80A8FFF4 */ .word	0x45000C6C
/* 004642 0x80A8FFF8 */ .word	0x46000C88
/* 004643 0x80A8FFFC */ .word	0x45000CB0
/* 004644 0x80A90000 */ .word	0x46000CB4
/* 004645 0x80A90004 */ .word	0x44000CEC
/* 004646 0x80A90008 */ .word	0x45000D7C
/* 004647 0x80A9000C */ .word	0x46000D80
/* 004648 0x80A90010 */ .word	0x45000E5C
/* 004649 0x80A90014 */ .word	0x46000E68
/* 004650 0x80A90018 */ .word	0x45000EBC
/* 004651 0x80A9001C */ .word	0x46000EC0
/* 004652 0x80A90020 */ .word	0x44000F14
/* 004653 0x80A90024 */ .word	0x44000F40
/* 004654 0x80A90028 */ .word	0x44000FA0
/* 004655 0x80A9002C */ .word	0x44000FBC
/* 004656 0x80A90030 */ .word	0x440010A0
/* 004657 0x80A90034 */ .word	0x440010C0
/* 004658 0x80A90038 */ .word	0x440010E0
/* 004659 0x80A9003C */ .word	0x450010F4
/* 004660 0x80A90040 */ .word	0x460010F8
/* 004661 0x80A90044 */ .word	0x440011D0
/* 004662 0x80A90048 */ .word	0x450011D8
/* 004663 0x80A9004C */ .word	0x460011DC
/* 004664 0x80A90050 */ .word	0x440011E4
/* 004665 0x80A90054 */ .word	0x44001250
/* 004666 0x80A90058 */ .word	0x440012E8
/* 004667 0x80A9005C */ .word	0x44001300
/* 004668 0x80A90060 */ .word	0x44001338
/* 004669 0x80A90064 */ .word	0x45001354
/* 004670 0x80A90068 */ .word	0x46001358
/* 004671 0x80A9006C */ .word	0x440013C8
/* 004672 0x80A90070 */ .word	0x44001408
/* 004673 0x80A90074 */ .word	0x44001434
/* 004674 0x80A90078 */ .word	0x44001444
/* 004675 0x80A9007C */ .word	0x4400145C
/* 004676 0x80A90080 */ .word	0x45001520
/* 004677 0x80A90084 */ .word	0x46001524
/* 004678 0x80A90088 */ .word	0x45001564
/* 004679 0x80A9008C */ .word	0x46001568
/* 004680 0x80A90090 */ .word	0x450015A0
/* 004681 0x80A90094 */ .word	0x460015A4
/* 004682 0x80A90098 */ .word	0x45001608
/* 004683 0x80A9009C */ .word	0x46001610
/* 004684 0x80A900A0 */ .word	0x44001664
/* 004685 0x80A900A4 */ .word	0x440016B8
/* 004686 0x80A900A8 */ .word	0x440016F8
/* 004687 0x80A900AC */ .word	0x44001718
/* 004688 0x80A900B0 */ .word	0x44001738
/* 004689 0x80A900B4 */ .word	0x44001758
/* 004690 0x80A900B8 */ .word	0x440017B0
/* 004691 0x80A900BC */ .word	0x440017E4
/* 004692 0x80A900C0 */ .word	0x4400182C
/* 004693 0x80A900C4 */ .word	0x4400184C
/* 004694 0x80A900C8 */ .word	0x440018A4
/* 004695 0x80A900CC */ .word	0x440018D4
/* 004696 0x80A900D0 */ .word	0x45001AD0
/* 004697 0x80A900D4 */ .word	0x46001AE0
/* 004698 0x80A900D8 */ .word	0x45001B94
/* 004699 0x80A900DC */ .word	0x46001BA0
/* 004700 0x80A900E0 */ .word	0x44001BA4
/* 004701 0x80A900E4 */ .word	0x45001BB0
/* 004702 0x80A900E8 */ .word	0x46001BBC
/* 004703 0x80A900EC */ .word	0x45001BB4
/* 004704 0x80A900F0 */ .word	0x46001BC0
/* 004705 0x80A900F4 */ .word	0x45001D14
/* 004706 0x80A900F8 */ .word	0x46001D18
/* 004707 0x80A900FC */ .word	0x44001D20
/* 004708 0x80A90100 */ .word	0x45001D28
/* 004709 0x80A90104 */ .word	0x46001D30
/* 004710 0x80A90108 */ .word	0x45001D2C
/* 004711 0x80A9010C */ .word	0x46001D38
/* 004712 0x80A90110 */ .word	0x45001DF0
/* 004713 0x80A90114 */ .word	0x46001DF4
/* 004714 0x80A90118 */ .word	0x45001E08
/* 004715 0x80A9011C */ .word	0x46001E0C
/* 004716 0x80A90120 */ .word	0x44001E14
/* 004717 0x80A90124 */ .word	0x45001E1C
/* 004718 0x80A90128 */ .word	0x46001E28
/* 004719 0x80A9012C */ .word	0x45001F40
/* 004720 0x80A90130 */ .word	0x46001F44
/* 004721 0x80A90134 */ .word	0x44001F50
/* 004722 0x80A90138 */ .word	0x45001F58
/* 004723 0x80A9013C */ .word	0x46001F60
/* 004724 0x80A90140 */ .word	0x45001F38
/* 004725 0x80A90144 */ .word	0x46001F8C
/* 004726 0x80A90148 */ .word	0x45001FD4
/* 004727 0x80A9014C */ .word	0x46001FDC
/* 004728 0x80A90150 */ .word	0x44001FE4
/* 004729 0x80A90154 */ .word	0x4500209C
/* 004730 0x80A90158 */ .word	0x460020A4
/* 004731 0x80A9015C */ .word	0x4500205C
/* 004732 0x80A90160 */ .word	0x460020B8
/* 004733 0x80A90164 */ .word	0x450020CC
/* 004734 0x80A90168 */ .word	0x460020D4
/* 004735 0x80A9016C */ .word	0x45002024
/* 004736 0x80A90170 */ .word	0x460020E8
/* 004737 0x80A90174 */ .word	0x45002030
/* 004738 0x80A90178 */ .word	0x460020F4
/* 004739 0x80A9017C */ .word	0x4500217C
/* 004740 0x80A90180 */ .word	0x4600219C
/* 004741 0x80A90184 */ .word	0x440021A0
/* 004742 0x80A90188 */ .word	0x450021A8
/* 004743 0x80A9018C */ .word	0x460021B0
/* 004744 0x80A90190 */ .word	0x4500220C
/* 004745 0x80A90194 */ .word	0x46002214
/* 004746 0x80A90198 */ .word	0x4400221C
/* 004747 0x80A9019C */ .word	0x45002234
/* 004748 0x80A901A0 */ .word	0x4600223C
/* 004749 0x80A901A4 */ .word	0x4500227C
/* 004750 0x80A901A8 */ .word	0x46002280
/* 004751 0x80A901AC */ .word	0x450022E0
/* 004752 0x80A901B0 */ .word	0x460022E4
/* 004753 0x80A901B4 */ .word	0x4500231C
/* 004754 0x80A901B8 */ .word	0x46002320
/* 004755 0x80A901BC */ .word	0x450023D4
/* 004756 0x80A901C0 */ .word	0x460023DC
/* 004757 0x80A901C4 */ .word	0x45002418
/* 004758 0x80A901C8 */ .word	0x4600241C
/* 004759 0x80A901CC */ .word	0x4500249C
/* 004760 0x80A901D0 */ .word	0x460024A4
/* 004761 0x80A901D4 */ .word	0x440025D8
/* 004762 0x80A901D8 */ .word	0x4400278C
/* 004763 0x80A901DC */ .word	0x440027F4
/* 004764 0x80A901E0 */ .word	0x44002824
/* 004765 0x80A901E4 */ .word	0x4500286C
/* 004766 0x80A901E8 */ .word	0x46002870
/* 004767 0x80A901EC */ .word	0x450028FC
/* 004768 0x80A901F0 */ .word	0x46002900
/* 004769 0x80A901F4 */ .word	0x440029B0
/* 004770 0x80A901F8 */ .word	0x440029E0
/* 004771 0x80A901FC */ .word	0x44002A58
/* 004772 0x80A90200 */ .word	0x44002A88
/* 004773 0x80A90204 */ .word	0x44002AB4
/* 004774 0x80A90208 */ .word	0x44002AE0
/* 004775 0x80A9020C */ .word	0x45002B04
/* 004776 0x80A90210 */ .word	0x46002B08
/* 004777 0x80A90214 */ .word	0x45002B1C
/* 004778 0x80A90218 */ .word	0x46002B24
/* 004779 0x80A9021C */ .word	0x45002B34
/* 004780 0x80A90220 */ .word	0x46002B54
/* 004781 0x80A90224 */ .word	0x46002B70
/* 004782 0x80A90228 */ .word	0x44002BA8
/* 004783 0x80A9022C */ .word	0x45002BF0
/* 004784 0x80A90230 */ .word	0x46002BF4
/* 004785 0x80A90234 */ .word	0x44002C1C
/* 004786 0x80A90238 */ .word	0x45002C84
/* 004787 0x80A9023C */ .word	0x46002C88
/* 004788 0x80A90240 */ .word	0x44002CAC
/* 004789 0x80A90244 */ .word	0x45002CE8
/* 004790 0x80A90248 */ .word	0x46002CF8
/* 004791 0x80A9024C */ .word	0x45002CEC
/* 004792 0x80A90250 */ .word	0x46002CF4
/* 004793 0x80A90254 */ .word	0x45002D84
/* 004794 0x80A90258 */ .word	0x46002D88
/* 004795 0x80A9025C */ .word	0x45002D70
/* 004796 0x80A90260 */ .word	0x46002DB8
/* 004797 0x80A90264 */ .word	0x45002E50
/* 004798 0x80A90268 */ .word	0x46002E54
/* 004799 0x80A9026C */ .word	0x45002E84
/* 004800 0x80A90270 */ .word	0x46002E88
/* 004801 0x80A90274 */ .word	0x45002EC0
/* 004802 0x80A90278 */ .word	0x46002EC4
/* 004803 0x80A9027C */ .word	0x44003148
/* 004804 0x80A90280 */ .word	0x44003194
/* 004805 0x80A90284 */ .word	0x440031C4
/* 004806 0x80A90288 */ .word	0x44003200
/* 004807 0x80A9028C */ .word	0x4500320C
/* 004808 0x80A90290 */ .word	0x46003210
/* 004809 0x80A90294 */ .word	0x440032B4
/* 004810 0x80A90298 */ .word	0x45003328
/* 004811 0x80A9029C */ .word	0x4600332C
/* 004812 0x80A902A0 */ .word	0x450032F8
/* 004813 0x80A902A4 */ .word	0x46003368
/* 004814 0x80A902A8 */ .word	0x450033C0
/* 004815 0x80A902AC */ .word	0x460033C4
/* 004816 0x80A902B0 */ .word	0x450033EC
/* 004817 0x80A902B4 */ .word	0x460033F0
/* 004818 0x80A902B8 */ .word	0x45003448
/* 004819 0x80A902BC */ .word	0x4600344C
/* 004820 0x80A902C0 */ .word	0x44003508
/* 004821 0x80A902C4 */ .word	0x4500357C
/* 004822 0x80A902C8 */ .word	0x4600358C
/* 004823 0x80A902CC */ .word	0x440035E4
/* 004824 0x80A902D0 */ .word	0x44003614
/* 004825 0x80A902D4 */ .word	0x45003670
/* 004826 0x80A902D8 */ .word	0x46003680
/* 004827 0x80A902DC */ .word	0x45003690
/* 004828 0x80A902E0 */ .word	0x46003698
/* 004829 0x80A902E4 */ .word	0x450036C4
/* 004830 0x80A902E8 */ .word	0x460036D0
/* 004831 0x80A902EC */ .word	0x45003788
/* 004832 0x80A902F0 */ .word	0x460037B8
/* 004833 0x80A902F4 */ .word	0x450037C4
/* 004834 0x80A902F8 */ .word	0x460037C8
/* 004835 0x80A902FC */ .word	0x440037D0
/* 004836 0x80A90300 */ .word	0x450037D8
/* 004837 0x80A90304 */ .word	0x460037E4
/* 004838 0x80A90308 */ .word	0x44003E2C
/* 004839 0x80A9030C */ .word	0x44003E94
/* 004840 0x80A90310 */ .word	0x44003FC4
/* 004841 0x80A90314 */ .word	0x44004020
/* 004842 0x80A90318 */ .word	0x4500404C
/* 004843 0x80A9031C */ .word	0x46004050
/* 004844 0x80A90320 */ .word	0x44004060
/* 004845 0x80A90324 */ .word	0x440040E0
/* 004846 0x80A90328 */ .word	0x440040E8
/* 004847 0x80A9032C */ .word	0x440040F0
/* 004848 0x80A90330 */ .word	0x440040F8
/* 004849 0x80A90334 */ .word	0x44004104
/* 004850 0x80A90338 */ .word	0x44004138
/* 004851 0x80A9033C */ .word	0x450043D0
/* 004852 0x80A90340 */ .word	0x460043D4
/* 004853 0x80A90344 */ .word	0x4400448C
/* 004854 0x80A90348 */ .word	0x450045B4
/* 004855 0x80A9034C */ .word	0x460045C4
/* 004856 0x80A90350 */ .word	0x450045F8
/* 004857 0x80A90354 */ .word	0x4600460C
/* 004858 0x80A90358 */ .word	0x45004614
/* 004859 0x80A9035C */ .word	0x46004618
/* 004860 0x80A90360 */ .word	0x4500462C
/* 004861 0x80A90364 */ .word	0x46004638
/* 004862 0x80A90368 */ .word	0x45004630
/* 004863 0x80A9036C */ .word	0x46004634
/* 004864 0x80A90370 */ .word	0x44004670
/* 004865 0x80A90374 */ .word	0x4400467C
/* 004866 0x80A90378 */ .word	0x820000B0
/* 004867 0x80A9037C */ .word	0x820000B4
/* 004868 0x80A90380 */ .word	0x820000B8
/* 004869 0x80A90384 */ .word	0x820000BC
/* 004870 0x80A90388 */ .word	0xC2000024
/* 004871 0x80A9038C */ .word	0xC2000028
/* 004872 0x80A90390 */ .word	0xC200002C
/* 004873 0x80A90394 */ .word	0xC2000030
/* 004874 0x80A90398 */ .word	0xC2000034
/* 004875 0x80A9039C */ .word	0xC2000038
/* 004876 0x80A903A0 */ .word	0x00000000
/* 004877 0x80A903A4 */ .word	0x00000000
/* 004878 0x80A903A8 */ .word	0x00000000
glabel enTrtOverlayInfoOffset
/* 004879 0x80A903AC */ .word	0x00000440
