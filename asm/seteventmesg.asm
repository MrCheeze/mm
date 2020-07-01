.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel osSetEventMesg
/* 013688 0x8008D640 27BDFFD8 */ addiu	$sp, $sp, -40
/* 013689 0x8008D644 AFBF001C */ sw	$ra, 0X1C($sp)
/* 013690 0x8008D648 AFA40028 */ sw	$a0, 0X28($sp)
/* 013691 0x8008D64C AFA5002C */ sw	$a1, 0X2C($sp)
/* 013692 0x8008D650 AFA60030 */ sw	$a2, 0X30($sp)
/* 013693 0x8008D654 0C024698 */ jal	__osDisableInt
/* 013694 0x8008D658 AFB00018 */ sw	$s0, 0X18($sp)
/* 013695 0x8008D65C 8FAE0028 */ lw	$t6, 0X28($sp)
/* 013696 0x8008D660 3C18800A */ lui	$t8, %hi(__osEventStateTab)
/* 013697 0x8008D664 8FA8002C */ lw	$t0, 0X2C($sp)
/* 013698 0x8008D668 2718E510 */ addiu	$t8, $t8, %lo(__osEventStateTab)
/* 013699 0x8008D66C 000E78C0 */ sll	$t7, $t6, 3
/* 013700 0x8008D670 01F8C821 */ addu	$t9, $t7, $t8
/* 013701 0x8008D674 AFB90020 */ sw	$t9, 0X20($sp)
/* 013702 0x8008D678 AF280000 */ sw	$t0, 0X0($t9)
/* 013703 0x8008D67C 8FAA0020 */ lw	$t2, 0X20($sp)
/* 013704 0x8008D680 8FA90030 */ lw	$t1, 0X30($sp)
/* 013705 0x8008D684 2401000E */ li	$at, 14
/* 013706 0x8008D688 00408025 */ move	$s0, $v0
/* 013707 0x8008D68C AD490004 */ sw	$t1, 0X4($t2)
/* 013708 0x8008D690 8FAB0028 */ lw	$t3, 0X28($sp)
/* 013709 0x8008D694 15610010 */ bne	$t3, $at, .L_8008D6D8
/* 013710 0x8008D698 00000000 */ nop
/* 013711 0x8008D69C 3C0C8009 */ lui	$t4, %hi(__osShutdown)
/* 013712 0x8008D6A0 8D8C7E5C */ lw	$t4, %lo(__osShutdown)($t4)
/* 013713 0x8008D6A4 11800009 */ beqz	$t4, .L_8008D6CC
/* 013714 0x8008D6A8 00000000 */ nop
/* 013715 0x8008D6AC 3C0D8009 */ lui	$t5, %hi(D_80097F10)
/* 013716 0x8008D6B0 8DAD7F10 */ lw	$t5, %lo(D_80097F10)($t5)
/* 013717 0x8008D6B4 15A00005 */ bnez	$t5, .L_8008D6CC
/* 013718 0x8008D6B8 00000000 */ nop
/* 013719 0x8008D6BC 8FA4002C */ lw	$a0, 0X2C($sp)
/* 013720 0x8008D6C0 8FA50030 */ lw	$a1, 0X30($sp)
/* 013721 0x8008D6C4 0C021EC4 */ jal	osSendMesg
/* 013722 0x8008D6C8 00003025 */ move	$a2, $zero
.L_8008D6CC:
/* 013723 0x8008D6CC 240E0001 */ li	$t6, 1
/* 013724 0x8008D6D0 3C018009 */ lui	$at, %hi(D_80097F10)
/* 013725 0x8008D6D4 AC2E7F10 */ sw	$t6, %lo(D_80097F10)($at)
.L_8008D6D8:
/* 013726 0x8008D6D8 0C0246B4 */ jal	__osRestoreInt
/* 013727 0x8008D6DC 02002025 */ move	$a0, $s0
/* 013728 0x8008D6E0 8FBF001C */ lw	$ra, 0X1C($sp)
/* 013729 0x8008D6E4 8FB00018 */ lw	$s0, 0X18($sp)
/* 013730 0x8008D6E8 27BD0028 */ addiu	$sp, $sp, 40
/* 013731 0x8008D6EC 03E00008 */ jr	$ra
/* 013732 0x8008D6F0 00000000 */ nop
/* 013733 0x8008D6F4 00000000 */ nop
/* 013734 0x8008D6F8 00000000 */ nop
/* 013735 0x8008D6FC 00000000 */ nop
