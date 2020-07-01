.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel CIC6105_Nop80081820
/* 001520 0x80081820 03E00008 */ jr	$ra
/* 001521 0x80081824 00000000 */ nop

glabel CIC6105_Nop80081828
/* 001522 0x80081828 03E00008 */ jr	$ra
/* 001523 0x8008182C 00000000 */ nop

glabel CIC6105_PrintRomInfo
/* 001524 0x80081830 27BDFFE8 */ addiu	$sp, $sp, -24
/* 001525 0x80081834 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001526 0x80081838 3C06800A */ lui	$a2, %hi(D_80098280)
/* 001527 0x8008183C 3C0EA404 */ lui	$t6, 0xA404
/* 001528 0x80081840 8DC70010 */ lw	$a3, 0X10($t6)
/* 001529 0x80081844 24C68280 */ addiu	$a2, $a2, %lo(D_80098280)
/* 001530 0x80081848 24040050 */ li	$a0, 80
/* 001531 0x8008184C 0C021207 */ jal	FaultDrawer_DrawText
/* 001532 0x80081850 240500C8 */ li	$a1, 200
/* 001533 0x80081854 3C06800A */ lui	$a2, %hi(D_80098290)
/* 001534 0x80081858 3C07800A */ lui	$a3, %hi(D_800994D0)
/* 001535 0x8008185C 24E794D0 */ addiu	$a3, $a3, %lo(D_800994D0)
/* 001536 0x80081860 24C68290 */ addiu	$a2, $a2, %lo(D_80098290)
/* 001537 0x80081864 24040028 */ li	$a0, 40
/* 001538 0x80081868 0C021207 */ jal	FaultDrawer_DrawText
/* 001539 0x8008186C 240500B8 */ li	$a1, 184
/* 001540 0x80081870 3C06800A */ lui	$a2, %hi(D_800982A4)
/* 001541 0x80081874 3C07800A */ lui	$a3, %hi(D_800994DC)
/* 001542 0x80081878 24E794DC */ addiu	$a3, $a3, %lo(D_800994DC)
/* 001543 0x8008187C 24C682A4 */ addiu	$a2, $a2, %lo(D_800982A4)
/* 001544 0x80081880 24040038 */ li	$a0, 56
/* 001545 0x80081884 0C021207 */ jal	FaultDrawer_DrawText
/* 001546 0x80081888 240500C0 */ li	$a1, 192
/* 001547 0x8008188C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001548 0x80081890 27BD0018 */ addiu	$sp, $sp, 24
/* 001549 0x80081894 03E00008 */ jr	$ra
/* 001550 0x80081898 00000000 */ nop

glabel CIC6105_AddRomInfoFaultPage
/* 001551 0x8008189C 27BDFFE8 */ addiu	$sp, $sp, -24
/* 001552 0x800818A0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001553 0x800818A4 3C04800A */ lui	$a0, %hi(romInfoFaultClient)
/* 001554 0x800818A8 3C058008 */ lui	$a1, %hi(CIC6105_PrintRomInfo)
/* 001555 0x800818AC 24A51830 */ addiu	$a1, $a1, %lo(CIC6105_PrintRomInfo)
/* 001556 0x800818B0 2484BE38 */ addiu	$a0, $a0, %lo(romInfoFaultClient)
/* 001557 0x800818B4 00003025 */ move	$a2, $zero
/* 001558 0x800818B8 0C02067C */ jal	Fault_AddClient
/* 001559 0x800818BC 00003825 */ move	$a3, $zero
/* 001560 0x800818C0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001561 0x800818C4 27BD0018 */ addiu	$sp, $sp, 24
/* 001562 0x800818C8 03E00008 */ jr	$ra
/* 001563 0x800818CC 00000000 */ nop

glabel CIC6105_RemoveRomInfoFaultPage
/* 001564 0x800818D0 27BDFFE8 */ addiu	$sp, $sp, -24
/* 001565 0x800818D4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001566 0x800818D8 3C04800A */ lui	$a0, %hi(romInfoFaultClient)
/* 001567 0x800818DC 0C0206B5 */ jal	Fault_RemoveClient
/* 001568 0x800818E0 2484BE38 */ addiu	$a0, $a0, %lo(romInfoFaultClient)
/* 001569 0x800818E4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001570 0x800818E8 27BD0018 */ addiu	$sp, $sp, 24
/* 001571 0x800818EC 03E00008 */ jr	$ra
/* 001572 0x800818F0 00000000 */ nop

glabel func_800818F4
/* 001573 0x800818F4 3C0EA030 */ lui	$t6, 0xA030
/* 001574 0x800818F8 8DCFB1F4 */ lw	$t7, -0X4E0C($t6)
/* 001575 0x800818FC 3C01800A */ lui	$at, %hi(D_8009BE30)
/* 001576 0x80081900 3C18A030 */ lui	$t8, 0xA030
/* 001577 0x80081904 AC2FBE30 */ sw	$t7, %lo(D_8009BE30)($at)
/* 001578 0x80081908 8F19E1C0 */ lw	$t9, -0X1E40($t8)
/* 001579 0x8008190C 3C01800A */ lui	$at, %hi(D_8009BE34)
/* 001580 0x80081910 AC39BE34 */ sw	$t9, %lo(D_8009BE34)($at)
/* 001581 0x80081914 03E00008 */ jr	$ra
/* 001582 0x80081918 00000000 */ nop
/* 001583 0x8008191C 00000000 */ nop
