glabel func_800B6FC8
/* 017730 0x800B6FC8 8C8E0A6C */ lw	$t6, 0XA6C($a0)
/* 017731 0x800B6FCC 3C014200 */ lui	$at, 0x4200
/* 017732 0x800B6FD0 000E7A00 */ sll	$t7, $t6, 8
/* 017733 0x800B6FD4 05E30005 */ bgezl	$t7, .L_800B6FEC
/* 017734 0x800B6FD8 44801000 */ mtc1	$zero, $f2
/* 017735 0x800B6FDC 44811000 */ mtc1	$at, $f2
/* 017736 0x800B6FE0 10000004 */ b	.L_800B6FF4
/* 017737 0x800B6FE4 9098014B */ lbu	$t8, 0X14B($a0)
/* 017738 0x800B6FE8 44801000 */ mtc1	$zero, $f2
.L_800B6FEC:
/* 017739 0x800B6FEC 00000000 */ nop
/* 017740 0x800B6FF0 9098014B */ lbu	$t8, 0X14B($a0)
.L_800B6FF4:
/* 017741 0x800B6FF4 2F010005 */ sltiu	$at, $t8, 5
/* 017742 0x800B6FF8 10200006 */ beqz	$at, .L_800B7014
/* 017743 0x800B6FFC 0018C080 */ sll	$t8, $t8, 2
/* 017744 0x800B7000 3C01801E */ lui	$at, %hi(__switch_D_801DCA58)
/* 017745 0x800B7004 00380821 */ addu	$at, $at, $t8
/* 017746 0x800B7008 8C38CA58 */ lw	$t8, %lo(__switch_D_801DCA58)($at)
/* 017747 0x800B700C 03000008 */ jr	$t8
/* 017748 0x800B7010 00000000 */ nop
glabel .L_800B7014
/* 017749 0x800B7014 3C0142F8 */ lui	$at, 0x42F8
/* 017750 0x800B7018 44812000 */ mtc1	$at, $f4
/* 017751 0x800B701C 03E00008 */ jr	$ra
/* 017752 0x800B7020 46041000 */ add.s	$f0, $f2, $f4
glabel .L_800B7024
/* 017753 0x800B7024 8C990A74 */ lw	$t9, 0XA74($a0)
/* 017754 0x800B7028 3C0142A0 */ lui	$at, 0x42A0
/* 017755 0x800B702C 33281000 */ andi	$t0, $t9, 0X1000
/* 017756 0x800B7030 51000006 */ beqzl	$t0, .L_800B704C
/* 017757 0x800B7034 44816000 */ mtc1	$at, $f12
/* 017758 0x800B7038 3C014208 */ lui	$at, 0x4208
/* 017759 0x800B703C 44816000 */ mtc1	$at, $f12
/* 017760 0x800B7040 03E00008 */ jr	$ra
/* 017761 0x800B7044 46026000 */ add.s	$f0, $f12, $f2
/* 017762 0x800B7048 44816000 */ mtc1	$at, $f12
.L_800B704C:
/* 017763 0x800B704C 00000000 */ nop
/* 017764 0x800B7050 03E00008 */ jr	$ra
/* 017765 0x800B7054 46026000 */ add.s	$f0, $f12, $f2
glabel .L_800B7058
/* 017766 0x800B7058 3C014288 */ lui	$at, 0x4288
/* 017767 0x800B705C 44813000 */ mtc1	$at, $f6
/* 017768 0x800B7060 03E00008 */ jr	$ra
/* 017769 0x800B7064 46061000 */ add.s	$f0, $f2, $f6
glabel .L_800B7068
/* 017770 0x800B7068 3C014210 */ lui	$at, 0x4210
/* 017771 0x800B706C 44814000 */ mtc1	$at, $f8
/* 017772 0x800B7070 03E00008 */ jr	$ra
/* 017773 0x800B7074 46081000 */ add.s	$f0, $f2, $f8
glabel .L_800B7078
/* 017774 0x800B7078 3C014230 */ lui	$at, 0x4230
/* 017775 0x800B707C 44815000 */ mtc1	$at, $f10
/* 017776 0x800B7080 00000000 */ nop
/* 017777 0x800B7084 460A1000 */ add.s	$f0, $f2, $f10
/* 017778 0x800B7088 03E00008 */ jr	$ra
/* 017779 0x800B708C 00000000 */ nop

