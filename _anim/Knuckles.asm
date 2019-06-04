; ---------------------------------------------------------------------------
; Animation script - Knuckles
; ---------------------------------------------------------------------------
		dc.w KnuAni_Walk-KnucklesAniData
		dc.w KnuAni_Run-KnucklesAniData
		dc.w KnuAni_Roll-KnucklesAniData
		dc.w KnuAni_Roll2-KnucklesAniData
		dc.w KnuAni_Push-KnucklesAniData
		dc.w KnuAni_Wait-KnucklesAniData
		dc.w KnuAni_Balance-KnucklesAniData
		dc.w KnuAni_LookUp-KnucklesAniData
		dc.w KnuAni_Duck-KnucklesAniData
		dc.w KnuAni_SpinDash-KnucklesAniData
		dc.w KnuAni_Pose-KnucklesAniData
		dc.w KnuAni_Slide-KnucklesAniData
		dc.w KnuAni_Fall-KnucklesAniData
		dc.w KnuAni_Stop-KnucklesAniData
		dc.w KnuAni_Balance-KnucklesAniData
		dc.w KnuAni_Balance-KnucklesAniData
		dc.w KnuAni_Spring-KnucklesAniData
		dc.w KnuAni_LZHang-KnucklesAniData
		dc.w KnuAni_GetUp-KnucklesAniData
		dc.w KnuAni_Ducked-KnucklesAniData
		dc.w KnuAni_Surf-KnucklesAniData
		dc.w KnuAni_Bubble-KnucklesAniData
		dc.w KnuAni_Death1-KnucklesAniData
		dc.w KnuAni_Drown-KnucklesAniData
		dc.w KnuAni_Death2-KnucklesAniData
		dc.w KnuAni_Shrink-KnucklesAniData
		dc.w KnuAni_Hurt-KnucklesAniData
		dc.w KnuAni_LZSlide-KnucklesAniData
		dc.w KnuAni_Glide-KnucklesAniData
KnuAni_Walk:	dc.b  $FF,   7,	  8,   1,   2,	 3,   4,   5,	6, $FF
KnuAni_Run:	dc.b $FF, $21,	$22, $23, $24, $FF, $FF, $FF, $FF, $FF
KnuAni_Roll:	dc.b $FE, $9A,	$96, $9A, $97, $9A, $98, $9A, $99, $FF
KnuAni_Roll2:	dc.b $FE, $9A,	$96, $9A, $97, $9A, $98, $9A, $99, $FF
KnuAni_Push:	dc.b $FD, $CE,	$CF, $D0, $D1, $FF, $FF, $FF, $FF, $FF
KnuAni_Wait:	dc.b    5, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56
		dc.b  $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56
		dc.b  $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $56, $D2, $D2, $D2, $D3, $D3, $D3, $D2, $D2, $D2
		dc.b  $D3, $D3, $D3, $D2, $D2, $D2, $D3, $D3, $D3, $D2, $D2, $D2, $D3, $D3, $D3, $D2, $D2, $D2, $D3, $D3
		dc.b  $D3, $D2, $D2, $D2, $D3, $D3, $D3, $D2, $D2, $D2, $D3, $D3, $D3, $D2, $D2, $D2, $D3, $D3, $D3, $D2
		dc.b  $D2, $D2, $D3, $D3, $D3, $D4, $D4, $D4, $D4, $D4, $D7, $D8, $D9, $DA, $DB, $D8, $D9, $DA, $DB, $D8
		dc.b  $D9, $DA, $DB, $D8, $D9, $DA, $DB, $D8, $D9, $DA, $DB, $D8, $D9, $DA, $DB, $D8, $D9, $DA, $DB, $D8
		dc.b  $D9, $DA, $DB, $DC, $DD, $DC, $DD, $DE, $DE, $D8, $D7, $FF
KnuAni_Balance:	dc.b	3, $9F, $9F, $A0, $A0, $A1, $A1, $A2, $A2, $A3, $A3, $A4, $A4, $A5, $A5, $A5, $A5, $A5, $A5, $A5
		dc.b  $A5, $A5, $A5, $A5, $A5, $A5, $A5, $A5, $A6, $A6, $A6, $A7, $A7, $A7, $A8, $A8, $A9, $A9, $AA, $AA
		dc.b  $FE,   6
KnuAni_LookUp:	dc.b 5, $D5,	$D6, $FE,   1
KnuAni_Duck:	dc.b 5, $9B,	$9C, $FE,   1
KnuAni_SpinDash:	dc.b 0, $86,	$87, $86, $88, $86, $89, $86, $8A, $86,	$8B, $FF
KnuAni_Pose:	dc.b 7, $B1,	$B3, $B3, $B3, $B3, $B3, $B3, $B2, $B3,	$B4, $B3, $FE,	 0
KnuAni_Slide:	dc.b 3, $8E,	$8F, $8E, $8F, $FD,   0	
KnuAni_Fall:	dc.b	7, $CA,	$CB, $FE,   1
KnuAni_Stop:	dc.b 3, $9D,	$9E, $9F, $A0, $FD,   0
KnuAni_Spring:	dc.b $2F, $8E,	$FD,   0
KnuAni_LZHang:	dc.b 1, $AE,	$AF, $FF
KnuAni_Leap1:	dc.b $F, $43, $43, $43,	$FE, 1
KnuAni_Leap2:	dc.b $F, $43, $44, $FE,	1, 0
KnuAni_Surf:	dc.b 5, $C0,	$C1, $C2, $C3, $C4, $C5, $C6, $C7, $C8,	$C9, $FF
KnuAni_Bubble:	dc.b $B, $B0,	$B0,   3,   4, $FD,   0
KnuAni_Death1:	dc.b $20, $AC,	$FF
KnuAni_Drown:	dc.b $2F, $AD,	$FF
KnuAni_Death2:	dc.b $20, $AB,	$FF
KnuAni_Shrink:	dc.b 3,	$4E, $4F, $50, $51, $52, 0, $FE, 1, 0
KnuAni_Hurt:	dc.b $40, $8D,	$FF
KnuAni_LZSlide:	dc.b 9, $8C,	$FF
KnuAni_Blank:	dc.b $77, 0, $FD, 0
KnuAni_GetUp:	dc.b   $F, $CD,	$FD,   0
KnuAni_Ducked:	dc.b   $F, $9C,	$FD,   0
KnuAni_Glide:	dc.b  $1F, $C0,	$FF
		even