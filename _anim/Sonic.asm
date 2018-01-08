; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
		dc.w SonAni_Walk-SonicAniData
		dc.w SonAni_Run-SonicAniData
		dc.w SonAni_Roll-SonicAniData
		dc.w SonAni_Roll2-SonicAniData
		dc.w SonAni_Push-SonicAniData
		dc.w SonAni_Wait-SonicAniData
		dc.w SonAni_Balance-SonicAniData
		dc.w SonAni_LookUp-SonicAniData
		dc.w SonAni_Duck-SonicAniData
		dc.w SonAni_SpinDash-SonicAniData
		dc.w SonAni_Pose-SonicAniData
		dc.w SonAni_Slide-SonicAniData
		dc.w SonAni_Fall-SonicAniData
		dc.w SonAni_Stop-SonicAniData
		dc.w SonAni_FrontBalance-SonicAniData
		dc.w SonAni_BackBalance-SonicAniData
		dc.w SonAni_Spring-SonicAniData
		dc.w SonAni_LZHang-SonicAniData
		dc.w SonAni_Leap1-SonicAniData
		dc.w SonAni_Leap2-SonicAniData
		dc.w SonAni_Surf-SonicAniData
		dc.w SonAni_Bubble-SonicAniData
		dc.w SonAni_Death1-SonicAniData
		dc.w SonAni_Drown-SonicAniData
		dc.w SonAni_Death2-SonicAniData
		dc.w SonAni_Shrink-SonicAniData
		dc.w SonAni_Hurt-SonicAniData
		dc.w SonAni_LZSlide-SonicAniData
		dc.w SonAni_Blank-SonicAniData
		dc.w SonAni_Wall-SonicAniData
		dc.w SonAni_Float4-SonicAniData
SonAni_Walk:	dc.b $FF, 7,8,1,2,3,4, 5, 6,$FF
SonAni_Run:	dc.b $FF,$21,$22,$23,$24,$FF,$FF,$FF,$FF,$FF
SonAni_Roll:	dc.b $FE,$97, $98, $99, $9A, $96, $FF, $FF
SonAni_Roll2:	dc.b $FE,$97, $98, $96, $99, $9A, $96, $FF
SonAni_Push:	dc.b $FD,$B6,	$B7, $B8, $B9,$FF,$FF,$FF,$FF,$FF
SonAni_Wait:
	dc.b   5, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA
		dc.b  $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA
		dc.b  $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA, $BB, $BC, $BC, $BD, $BD, $BE, $BE, $BD, $BD
		dc.b  $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE, $BD, $BD
		dc.b  $BE, $BE, $BD, $BD, $BE, $BE, $AD, $AD, $AD, $AD, $AD, $AD, $AE, $AE, $AE, $AE, $AE, $AE, $AF, $D9
		dc.b  $D9, $D9, $D9, $D9, $D9, $AF, $AF, $FE, $35
SonAni_Balance:	dc.b   7, $A1,	$A2, $A3, $FF
SonAni_LookUp:	dc.b   5, $C3,	$C4, $FE,   1
SonAni_Duck:	dc.b   5, $9B,	$9C, $FE,   1
SonAni_SpinDash:	dc.b 0, $86, $87, $86, $88, $86, $89, $86, $8A, $86, $8B, $FF
SonAni_Pose:	dc.b 	7, $B0,	$B2, $B2, $B2, $B2, $B2, $B2, $B1, $B2,	$B3, $B2, $FE,	 4
SonAni_Slide:	dc.b $3F, $62, $FF, 0
SonAni_Fall:	dc.b 5, $97, $98, $99, $9A, $DA, $FE, 1
SonAni_Stop:	dc.b   3, $9D,	$9E, $9F, $A0, $FD,   0 ; halt/skidding animation
SonAni_FrontBalance:	dc.b 7, $A1, $A2, $A3, $FF
SonAni_BackBalance:	dc.b 7, $A4, $A5, $A6, $FF
SonAni_Spring:	dc.b   5, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3A, $3B, $3C, $FD, $C
SonAni_LZHang:	dc.b   1,$AA,$AB,$FF
SonAni_Leap1:	dc.b $F, $43, $43, $43,	$FE, 1
SonAni_Leap2:	dc.b $F, $43, $44, $FE,	1, 0
SonAni_Surf:	dc.b 7, $C8, $C9, $CA, $CB, $CC, $CD, $CE, $CF, $FF
SonAni_Bubble:	dc.b  $B, $AC,	$AC,   3,   4, $FD,   0 ; breathe
SonAni_Death1:	dc.b $20,$A8,$FF
SonAni_Drown:	dc.b $20,$A9,$FF
SonAni_Death2:	dc.b $20,$A7,$FF
SonAni_Shrink:	dc.b 3,	$4E, $4F, $50, $51, $52, 0, $FE, 1, 0
SonAni_Hurt:	dc.b $40,$8D,$FF
SonAni_LZSlide:	dc.b   9,$D1,$D0,$FF
SonAni_Blank:	dc.b $77,  0,$FD,  0
SonAni_Wall:	dc.b 5,$DB,$DC,$DD,$DE,$FF ;$1D
SonAni_Float4:	dc.b 3,	$3C, $FD, 0
	even