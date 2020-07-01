.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80090810
/* 016876 0x80090810 27BDFFD8 */ addiu	$sp, $sp, -40
/* 016877 0x80090814 3C02800A */ lui	$v0, %hi(__osPfsPifRam)
/* 016878 0x80090818 AFBF0014 */ sw	$ra, 0X14($sp)
/* 016879 0x8009081C 2442E5D0 */ addiu	$v0, $v0, %lo(__osPfsPifRam)
/* 016880 0x80090820 AFA40028 */ sw	$a0, 0X28($sp)
/* 016881 0x80090824 AFA2001C */ sw	$v0, 0X1C($sp)
/* 016882 0x80090828 0C0226BC */ jal	__osSiGetAccess
/* 016883 0x8009082C AFA5002C */ sw	$a1, 0X2C($sp)
/* 016884 0x80090830 8FA5002C */ lw	$a1, 0X2C($sp)
/* 016885 0x80090834 3C07800A */ lui	$a3, %hi(__osPfsPifRam)
/* 016886 0x80090838 24E7E5D0 */ addiu	$a3, $a3, %lo(__osPfsPifRam)
/* 016887 0x8009083C 240E0001 */ li	$t6, 1
/* 016888 0x80090840 8FA2001C */ lw	$v0, 0X1C($sp)
/* 016889 0x80090844 ACEE003C */ sw	$t6, 0X3C($a3)
/* 016890 0x80090848 18A00010 */ blez	$a1, .L_8009088C
/* 016891 0x8009084C 00001825 */ move	$v1, $zero
/* 016892 0x80090850 30A60003 */ andi	$a2, $a1, 0X3
/* 016893 0x80090854 10C00006 */ beqz	$a2, .L_80090870
/* 016894 0x80090858 00C02025 */ move	$a0, $a2
.L_8009085C:
/* 016895 0x8009085C 24630001 */ addiu	$v1, $v1, 1
/* 016896 0x80090860 A0400000 */ sb	$zero, 0X0($v0)
/* 016897 0x80090864 1483FFFD */ bne	$a0, $v1, .L_8009085C
/* 016898 0x80090868 24420001 */ addiu	$v0, $v0, 1
/* 016899 0x8009086C 10650007 */ beq	$v1, $a1, .L_8009088C
.L_80090870:
/* 016900 0x80090870 24630004 */ addiu	$v1, $v1, 4
/* 016901 0x80090874 A0400001 */ sb	$zero, 0X1($v0)
/* 016902 0x80090878 A0400002 */ sb	$zero, 0X2($v0)
/* 016903 0x8009087C A0400003 */ sb	$zero, 0X3($v0)
/* 016904 0x80090880 24420004 */ addiu	$v0, $v0, 4
/* 016905 0x80090884 1465FFFA */ bne	$v1, $a1, .L_80090870
/* 016906 0x80090888 A040FFFC */ sb	$zero, -0X4($v0)
.L_8009088C:
/* 016907 0x8009088C 240F00FD */ li	$t7, 253
/* 016908 0x80090890 241800FE */ li	$t8, 254
/* 016909 0x80090894 A04F0000 */ sb	$t7, 0X0($v0)
/* 016910 0x80090898 24420001 */ addiu	$v0, $v0, 1
/* 016911 0x8009089C A0580000 */ sb	$t8, 0X0($v0)
/* 016912 0x800908A0 24040001 */ li	$a0, 1
/* 016913 0x800908A4 0C022B5C */ jal	__osSiRawStartDma
/* 016914 0x800908A8 00E02825 */ move	$a1, $a3
/* 016915 0x800908AC 8FA40028 */ lw	$a0, 0X28($sp)
/* 016916 0x800908B0 00002825 */ move	$a1, $zero
/* 016917 0x800908B4 0C021FB4 */ jal	osRecvMesg
/* 016918 0x800908B8 24060001 */ li	$a2, 1
/* 016919 0x800908BC 3C05800A */ lui	$a1, %hi(__osPfsPifRam)
/* 016920 0x800908C0 24A5E5D0 */ addiu	$a1, $a1, %lo(__osPfsPifRam)
/* 016921 0x800908C4 0C022B5C */ jal	__osSiRawStartDma
/* 016922 0x800908C8 00002025 */ move	$a0, $zero
/* 016923 0x800908CC AFA20020 */ sw	$v0, 0X20($sp)
/* 016924 0x800908D0 8FA40028 */ lw	$a0, 0X28($sp)
/* 016925 0x800908D4 00002825 */ move	$a1, $zero
/* 016926 0x800908D8 0C021FB4 */ jal	osRecvMesg
/* 016927 0x800908DC 24060001 */ li	$a2, 1
/* 016928 0x800908E0 0C0226CD */ jal	__osSiRelAccess
/* 016929 0x800908E4 00000000 */ nop
/* 016930 0x800908E8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 016931 0x800908EC 8FA20020 */ lw	$v0, 0X20($sp)
/* 016932 0x800908F0 27BD0028 */ addiu	$sp, $sp, 40
/* 016933 0x800908F4 03E00008 */ jr	$ra
/* 016934 0x800908F8 00000000 */ nop
/* 016935 0x800908FC 00000000 */ nop
