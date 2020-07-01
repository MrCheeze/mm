.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel D_80A4F700
/* 001548 0x80A4F700 */ .word	0x01640500
/* 001549 0x80A4F704 */ .word	0x00000005
/* 001550 0x80A4F708 */ .word	0x017A0000
/* 001551 0x80A4F70C */ .word	0x000001D4
/* 001552 0x80A4F710 */ .word	EnMkk_Init
/* 001553 0x80A4F714 */ .word	EnMkk_Destroy
/* 001554 0x80A4F718 */ .word	EnMkk_Update
/* 001555 0x80A4F71C */ .word	EnMkk_Draw
glabel D_80A4F720
/* 001556 0x80A4F720 */ .word	0x03100839
/* 001557 0x80A4F724 */ .word	0x10040000
/* 001558 0x80A4F728 */ .word	0x00000000
/* 001559 0x80A4F72C */ .word	0xF7CFFFFF
/* 001560 0x80A4F730 */ .word	0x00040000
/* 001561 0x80A4F734 */ .word	0xF7CFFFFF
/* 001562 0x80A4F738 */ .word	0x00000000
/* 001563 0x80A4F73C */ .word	0x09010100
/* 001564 0x80A4F740 */ .word	0x01000000
/* 001565 0x80A4F744 */ .word	0x00000000
glabel D_80A4F748
/* 001566 0x80A4F748 */ .word	0x000F0064
glabel D_80A4F74C
/* 001567 0x80A4F74C */ .word	0x0100000F
/* 001568 0x80A4F750 */ .word	0x001E0A00
glabel D_80A4F754
/* 001569 0x80A4F754 */ .word	0x01010101
/* 001570 0x80A4F758 */ .word	0x01010001
/* 001571 0x80A4F75C */ .word	0x01010102
/* 001572 0x80A4F760 */ .word	0x02020101
/* 001573 0x80A4F764 */ .word	0x01020101
/* 001574 0x80A4F768 */ .word	0x00000101
/* 001575 0x80A4F76C */ .word	0x01000000
/* 001576 0x80A4F770 */ .word	0x00000001
glabel D_80A4F774
/* 001577 0x80A4F774 */ .word	0xB874FE0C
/* 001578 0x80A4F778 */ .word	0xB078FFFB
/* 001579 0x80A4F77C */ .word	0x30540BB8
glabel D_80A4F780
/* 001580 0x80A4F780 */ .word	0xFAFAFAFF
glabel D_80A4F784
/* 001581 0x80A4F784 */ .word	0xB4B4B4FF
glabel D_80A4F788
/* 001582 0x80A4F788 */ .word	0x00000000
/* 001583 0x80A4F78C */ .word	0x3EE66666
/* 001584 0x80A4F790 */ .word	0x00000000
glabel D_80A4F794
/* 001585 0x80A4F794 */ .word	0x323232FF
/* 001586 0x80A4F798 */ .word	0xFFFFFFFF
glabel D_80A4F79C
/* 001587 0x80A4F79C */ .word	0xC8C8C8FF
/* 001588 0x80A4F7A0 */ .word	0xFFFFFFFF
glabel D_80A4F7A4
/* 001589 0x80A4F7A4 */ .word	0x06000030
/* 001590 0x80A4F7A8 */ .word	0x060000B0
/* 001591 0x80A4F7AC */ .word	0x060000C8
/* 001592 0x80A4F7B0 */ .word	0x06000140
/* 001593 0x80A4F7B4 */ .word	0x060001F0
/* 001594 0x80A4F7B8 */ .word	0x06000278
/* 001595 0x80A4F7BC */ .word	0x06000290
/* 001596 0x80A4F7C0 */ .word	0x06000310
glabel D_80A4F7C4
/* 001597 0x80A4F7C4 */ .word	0xFFFFFFFF
/* 001598 0x80A4F7C8 */ .word	0x808080FF
/* 001599 0x80A4F7CC */ .word	0x000000FF
/* 001600 0x80A4F7D0 */ .word	0x000000FF
/* 001601 0x80A4F7D4 */ .word	0x808080FF
/* 001602 0x80A4F7D8 */ .word	0xFFFFFFFF
/* 001603 0x80A4F7DC */ .word	0x00000000
glabel D_80A4F7E0
/* 001604 0x80A4F7E0 */ .word	0x46EA6000
glabel D_80A4F7E4
/* 001605 0x80A4F7E4 */ .word	0x3DCCCCCD
glabel D_80A4F7E8
/* 001606 0x80A4F7E8 */ .word	0x3ED67750
glabel D_80A4F7EC
/* 001607 0x80A4F7EC */ .word	0x4419999A
glabel D_80A4F7F0
/* 001608 0x80A4F7F0 */ .word	0xBFA66666
glabel D_80A4F7F4
/* 001609 0x80A4F7F4 */ .word	0xBF4CCCCD
glabel D_80A4F7F8
/* 001610 0x80A4F7F8 */ .word	0x3A83126F
glabel D_80A4F7FC
/* 001611 0x80A4F7FC */ .word	0x3A83126F
glabel D_80A4F800
/* 001612 0x80A4F800 */ .word	0x3F20D97C
glabel D_80A4F804
/* 001613 0x80A4F804 */ .word	0x4499999A
glabel D_80A4F808
/* 001614 0x80A4F808 */ .word	0x3F20D97C
glabel D_80A4F80C
/* 001615 0x80A4F80C */ .word	0x4499999A
glabel D_80A4F810
/* 001616 0x80A4F810 */ .word	0x3F20D97C
glabel D_80A4F814
/* 001617 0x80A4F814 */ .word	0x4499999A
glabel D_80A4F818
/* 001618 0x80A4F818 */ .word	0x3F20D97C
glabel D_80A4F81C
/* 001619 0x80A4F81C */ .word	0x4499999A
glabel D_80A4F820
/* 001620 0x80A4F820 */ .word	0x3D99999A
glabel D_80A4F824
/* 001621 0x80A4F824 */ .word	0x3E99999A
glabel D_80A4F828
/* 001622 0x80A4F828 */ .word	0x3E99999A
glabel D_80A4F82C
/* 001623 0x80A4F82C */ .word	0x3E99999A
glabel D_80A4F830
/* 001624 0x80A4F830 */ .word	0x3E99999A
glabel D_80A4F834
/* 001625 0x80A4F834 */ .word	0x3F59999A
/* 001626 0x80A4F838 */ .word	0x3F59999A
glabel D_80A4F83C
/* 001627 0x80A4F83C */ .word	0x3F59999A
glabel D_80A4F840
/* 001628 0x80A4F840 */ .word	0x40E73334
/* 001629 0x80A4F844 */ .word	0x00000000
/* 001630 0x80A4F848 */ .word	0x00000000
/* 001631 0x80A4F84C */ .word	0x00000000
glabel enMkkOverlayInfo
/* 001632 0x80A4F850 */ .word	0x00001830
/* 001633 0x80A4F854 */ .word	0x000000E0
/* 001634 0x80A4F858 */ .word	0x00000070
/* 001635 0x80A4F85C */ .word	0x00000000
/* 001636 0x80A4F860 */ .word	0x00000074
glabel enMkkOverlayRelocations
/* 001637 0x80A4F864 */ .word	0x45000014
/* 001638 0x80A4F868 */ .word	0x46000018
/* 001639 0x80A4F86C */ .word	0x45000024
/* 001640 0x80A4F870 */ .word	0x46000028
/* 001641 0x80A4F874 */ .word	0x4500003C
/* 001642 0x80A4F878 */ .word	0x46000040
/* 001643 0x80A4F87C */ .word	0x45000044
/* 001644 0x80A4F880 */ .word	0x46000050
/* 001645 0x80A4F884 */ .word	0x45000048
/* 001646 0x80A4F888 */ .word	0x4600004C
/* 001647 0x80A4F88C */ .word	0x4400015C
/* 001648 0x80A4F890 */ .word	0x45000168
/* 001649 0x80A4F894 */ .word	0x4600016C
/* 001650 0x80A4F898 */ .word	0x45000198
/* 001651 0x80A4F89C */ .word	0x4600019C
/* 001652 0x80A4F8A0 */ .word	0x440001B0
/* 001653 0x80A4F8A4 */ .word	0x45000208
/* 001654 0x80A4F8A8 */ .word	0x4600020C
/* 001655 0x80A4F8AC */ .word	0x4400029C
/* 001656 0x80A4F8B0 */ .word	0x450002DC
/* 001657 0x80A4F8B4 */ .word	0x460002E8
/* 001658 0x80A4F8B8 */ .word	0x44000344
/* 001659 0x80A4F8BC */ .word	0x4500039C
/* 001660 0x80A4F8C0 */ .word	0x460003C0
/* 001661 0x80A4F8C4 */ .word	0x4500037C
/* 001662 0x80A4F8C8 */ .word	0x46000390
/* 001663 0x80A4F8CC */ .word	0x45000380
/* 001664 0x80A4F8D0 */ .word	0x4600038C
/* 001665 0x80A4F8D4 */ .word	0x450003F0
/* 001666 0x80A4F8D8 */ .word	0x460003F8
/* 001667 0x80A4F8DC */ .word	0x440004A0
/* 001668 0x80A4F8E0 */ .word	0x4500058C
/* 001669 0x80A4F8E4 */ .word	0x46000590
/* 001670 0x80A4F8E8 */ .word	0x450005AC
/* 001671 0x80A4F8EC */ .word	0x460005B0
/* 001672 0x80A4F8F0 */ .word	0x440005FC
/* 001673 0x80A4F8F4 */ .word	0x440006A0
/* 001674 0x80A4F8F8 */ .word	0x45000720
/* 001675 0x80A4F8FC */ .word	0x46000724
/* 001676 0x80A4F900 */ .word	0x44000794
/* 001677 0x80A4F904 */ .word	0x45000820
/* 001678 0x80A4F908 */ .word	0x46000830
/* 001679 0x80A4F90C */ .word	0x45000834
/* 001680 0x80A4F910 */ .word	0x46000838
/* 001681 0x80A4F914 */ .word	0x450008A0
/* 001682 0x80A4F918 */ .word	0x460008CC
/* 001683 0x80A4F91C */ .word	0x450008C0
/* 001684 0x80A4F920 */ .word	0x460008C4
/* 001685 0x80A4F924 */ .word	0x44000944
/* 001686 0x80A4F928 */ .word	0x450008A8
/* 001687 0x80A4F92C */ .word	0x46000954
/* 001688 0x80A4F930 */ .word	0x450009BC
/* 001689 0x80A4F934 */ .word	0x460009C4
/* 001690 0x80A4F938 */ .word	0x45000A60
/* 001691 0x80A4F93C */ .word	0x46000A64
/* 001692 0x80A4F940 */ .word	0x45000B18
/* 001693 0x80A4F944 */ .word	0x46000B28
/* 001694 0x80A4F948 */ .word	0x45000B38
/* 001695 0x80A4F94C */ .word	0x46000B3C
/* 001696 0x80A4F950 */ .word	0x45000B88
/* 001697 0x80A4F954 */ .word	0x46000B98
/* 001698 0x80A4F958 */ .word	0x45000BA8
/* 001699 0x80A4F95C */ .word	0x46000BAC
/* 001700 0x80A4F960 */ .word	0x45000BF8
/* 001701 0x80A4F964 */ .word	0x46000C08
/* 001702 0x80A4F968 */ .word	0x45000C18
/* 001703 0x80A4F96C */ .word	0x46000C1C
/* 001704 0x80A4F970 */ .word	0x45000C68
/* 001705 0x80A4F974 */ .word	0x46000C78
/* 001706 0x80A4F978 */ .word	0x45000C88
/* 001707 0x80A4F97C */ .word	0x46000C8C
/* 001708 0x80A4F980 */ .word	0x44000D2C
/* 001709 0x80A4F984 */ .word	0x45000D78
/* 001710 0x80A4F988 */ .word	0x46000D7C
/* 001711 0x80A4F98C */ .word	0x44000DAC
/* 001712 0x80A4F990 */ .word	0x44000E0C
/* 001713 0x80A4F994 */ .word	0x45000F3C
/* 001714 0x80A4F998 */ .word	0x46000F44
/* 001715 0x80A4F99C */ .word	0x45000F40
/* 001716 0x80A4F9A0 */ .word	0x46000F48
/* 001717 0x80A4F9A4 */ .word	0x45000FE8
/* 001718 0x80A4F9A8 */ .word	0x46000FF4
/* 001719 0x80A4F9AC */ .word	0x45000FEC
/* 001720 0x80A4F9B0 */ .word	0x46000FF8
/* 001721 0x80A4F9B4 */ .word	0x4400100C
/* 001722 0x80A4F9B8 */ .word	0x4500106C
/* 001723 0x80A4F9BC */ .word	0x46001078
/* 001724 0x80A4F9C0 */ .word	0x45001070
/* 001725 0x80A4F9C4 */ .word	0x4600107C
/* 001726 0x80A4F9C8 */ .word	0x45001074
/* 001727 0x80A4F9CC */ .word	0x46001080
/* 001728 0x80A4F9D0 */ .word	0x44001124
/* 001729 0x80A4F9D4 */ .word	0x4500114C
/* 001730 0x80A4F9D8 */ .word	0x46001150
/* 001731 0x80A4F9DC */ .word	0x4500119C
/* 001732 0x80A4F9E0 */ .word	0x460011A0
/* 001733 0x80A4F9E4 */ .word	0x450011EC
/* 001734 0x80A4F9E8 */ .word	0x460011F0
/* 001735 0x80A4F9EC */ .word	0x4500123C
/* 001736 0x80A4F9F0 */ .word	0x46001240
/* 001737 0x80A4F9F4 */ .word	0x450012D4
/* 001738 0x80A4F9F8 */ .word	0x460012D8
/* 001739 0x80A4F9FC */ .word	0x45001320
/* 001740 0x80A4FA00 */ .word	0x46001324
/* 001741 0x80A4FA04 */ .word	0x4500149C
/* 001742 0x80A4FA08 */ .word	0x460014A0
/* 001743 0x80A4FA0C */ .word	0x45001508
/* 001744 0x80A4FA10 */ .word	0x4600150C
/* 001745 0x80A4FA14 */ .word	0x45001534
/* 001746 0x80A4FA18 */ .word	0x46001544
/* 001747 0x80A4FA1C */ .word	0x4500160C
/* 001748 0x80A4FA20 */ .word	0x46001610
/* 001749 0x80A4FA24 */ .word	0x82000010
/* 001750 0x80A4FA28 */ .word	0x82000014
/* 001751 0x80A4FA2C */ .word	0x82000018
/* 001752 0x80A4FA30 */ .word	0x8200001C
/* 001753 0x80A4FA34 */ .word	0x00000000
/* 001754 0x80A4FA38 */ .word	0x00000000
glabel enMkkOverlayInfoOffset
/* 001755 0x80A4FA3C */ .word	0x000001F0
