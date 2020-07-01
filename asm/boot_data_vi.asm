.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel osViModeNtscLan1
/* 024536 0x80097FC0 */ .word	0x02000000
/* 024537 0x80097FC4 */ .word	0x0000311E
/* 024538 0x80097FC8 */ .word	0x00000140
/* 024539 0x80097FCC */ .word	0x03E52239
/* 024540 0x80097FD0 */ .word	0x0000020D
/* 024541 0x80097FD4 */ .word	0x00000C15
/* 024542 0x80097FD8 */ .word	0x0C150C15
/* 024543 0x80097FDC */ .word	0x006C02EC
/* 024544 0x80097FE0 */ .word	0x00000200
/* 024545 0x80097FE4 */ .word	0x00000000
/* 024546 0x80097FE8 */ .word	0x00000280
/* 024547 0x80097FEC */ .word	0x00000400
/* 024548 0x80097FF0 */ .word	0x002501FF
/* 024549 0x80097FF4 */ .word	0x000E0204
/* 024550 0x80097FF8 */ .word	0x00000002
/* 024551 0x80097FFC */ .word	0x00000280
/* 024552 0x80098000 */ .word	0x00000400
/* 024553 0x80098004 */ .word	0x002501FF
/* 024554 0x80098008 */ .word	0x000E0204
/* 024555 0x8009800C */ .word	0x00000002
glabel osViModeMpalLan1
/* 024556 0x80098010 */ .word	0x1E000000
/* 024557 0x80098014 */ .word	0x0000311E
/* 024558 0x80098018 */ .word	0x00000140
/* 024559 0x8009801C */ .word	0x04651E39
/* 024560 0x80098020 */ .word	0x0000020D
/* 024561 0x80098024 */ .word	0x00040C11
/* 024562 0x80098028 */ .word	0x0C190C1A
/* 024563 0x8009802C */ .word	0x006C02EC
/* 024564 0x80098030 */ .word	0x00000200
/* 024565 0x80098034 */ .word	0x00000000
/* 024566 0x80098038 */ .word	0x00000280
/* 024567 0x8009803C */ .word	0x00000400
/* 024568 0x80098040 */ .word	0x002501FF
/* 024569 0x80098044 */ .word	0x000E0204
/* 024570 0x80098048 */ .word	0x00000002
/* 024571 0x8009804C */ .word	0x00000280
/* 024572 0x80098050 */ .word	0x00000400
/* 024573 0x80098054 */ .word	0x002501FF
/* 024574 0x80098058 */ .word	0x000E0204
/* 024575 0x8009805C */ .word	0x00000002
glabel D_80098060
/* 024576 0x80098060 */ .word	0x00000000
/* 024577 0x80098064 */ .word	0x00000000
/* 024578 0x80098068 */ .word	0x00000000
/* 024579 0x8009806C */ .word	0x00000000
/* 024580 0x80098070 */ .word	0x00000000
/* 024581 0x80098074 */ .word	0x00000000
/* 024582 0x80098078 */ .word	0x00000000
/* 024583 0x8009807C */ .word	0x00000000
/* 024584 0x80098080 */ .word	0x00000000
/* 024585 0x80098084 */ .word	0x00000000
/* 024586 0x80098088 */ .word	0x00000000
/* 024587 0x8009808C */ .word	0x00000000
/* 024588 0x80098090 */ .word	0x00000000
/* 024589 0x80098094 */ .word	0x00000000
/* 024590 0x80098098 */ .word	0x00000000
/* 024591 0x8009809C */ .word	0x00000000
/* 024592 0x800980A0 */ .word	0x00000000
/* 024593 0x800980A4 */ .word	0x00000000
/* 024594 0x800980A8 */ .word	0x00000000
/* 024595 0x800980AC */ .word	0x00000000
/* 024596 0x800980B0 */ .word	0x00000000
/* 024597 0x800980B4 */ .word	0x00000000
/* 024598 0x800980B8 */ .word	0x00000000
/* 024599 0x800980BC */ .word	0x00000000
glabel __osViCurr
/* 024600 0x800980C0 */ .word	D_80098060
glabel __osViNext
/* 024601 0x800980C4 */ .word	0x80098090
/* 024602 0x800980C8 */ .word	0x00000000
/* 024603 0x800980CC */ .word	0x00000000
