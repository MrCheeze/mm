glabel BgCheck_AllocPolygonLinkedListNode
/* 026755 0x800BFCCC 8C820004 */ lw	$v0, 0X4($a0)
/* 026756 0x800BFCD0 8C8F0008 */ lw	$t7, 0X8($a0)
/* 026757 0x800BFCD4 3043FFFF */ andi	$v1, $v0, 0XFFFF
/* 026758 0x800BFCD8 244E0001 */ addiu	$t6, $v0, 1
/* 026759 0x800BFCDC 006F082A */ slt	$at, $v1, $t7
/* 026760 0x800BFCE0 14200003 */ bnez	$at, .L_800BFCF0
/* 026761 0x800BFCE4 AC8E0004 */ sw	$t6, 0X4($a0)
/* 026762 0x800BFCE8 03E00008 */ jr	$ra
/* 026763 0x800BFCEC 3402FFFF */ ori	$v0, $zero, 0XFFFF
.L_800BFCF0:
/* 026764 0x800BFCF0 00601025 */ move	$v0, $v1
/* 026765 0x800BFCF4 03E00008 */ jr	$ra
/* 026766 0x800BFCF8 00000000 */ nop

