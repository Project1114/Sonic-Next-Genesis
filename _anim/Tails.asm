; ---------------------------------------------------------------------------
; Animation script - Tails
; ---------------------------------------------------------------------------
		dc.w TaiAni_Walk-TailsAniData
		dc.w TaiAni_Run-TailsAniData
		dc.w TaiAni_Roll-TailsAniData
		dc.w TaiAni_Roll2-TailsAniData
		dc.w TaiAni_Push-TailsAniData
		dc.w TaiAni_Wait-TailsAniData
		dc.w TaiAni_Balance-TailsAniData
		dc.w TaiAni_LookUp-TailsAniData
		dc.w TaiAni_Duck-TailsAniData
		dc.w TaiAni_SpinDash-TailsAniData
		dc.w TaiAni_Pose-TailsAniData
		dc.w TaiAni_Slide-TailsAniData
		dc.w TaiAni_Fall1-TailsAniData
		dc.w TaiAni_Stop-TailsAniData
		dc.w TaiAni_Fall2-TailsAniData
		dc.w TaiAni_FastRun-TailsAniData
		dc.w TaiAni_Spring-TailsAniData
		dc.w TaiAni_LZHang-TailsAniData
		dc.w TaiAni_Whip-TailsAniData
		dc.w TaiAni_Blank-TailsAniData
		dc.w TaiAni_Surf-TailsAniData
		dc.w TaiAni_Bubble-TailsAniData
		dc.w TaiAni_Death1-TailsAniData
		dc.w TaiAni_Drown-TailsAniData
		dc.w TaiAni_Death2-TailsAniData
		dc.w TaiAni_Shrink-TailsAniData
		dc.w TaiAni_Hurt-TailsAniData
		dc.w TaiAni_LZSlide-TailsAniData
		dc.w TaiAni_Blank-TailsAniData
		dc.w TaiAni_Fly1-TailsAniData
		dc.w TaiAni_Fly2-TailsAniData
		dc.w TaiAni_CarryRise-TailsAniData
		dc.w TaiAni_Carry-TailsAniData
		dc.w TaiAni_Tired-TailsAniData
		dc.w TaiAni_Swim1-TailsAniData
		dc.w TaiAni_Swim2-TailsAniData
		dc.w TaiAni_SwimFall-TailsAniData
		dc.w TaiAni_SwimTired-TailsAniData
TaiAni_Walk:	dc.b  $FF,   7,	  8,   1,   2,	 3,   4,   5,	6, $FF
TaiAni_Run:	dc.b $FF, $21,	$22, $23, $24, $FF, $FF, $FF, $FF, $FF
TaiAni_Roll:	dc.b 1, $96,	$97, $98, $FF
TaiAni_Roll2:	dc.b 0, $96,	$97, $98, $FF
TaiAni_Push:	dc.b  $FD, $A9,	$AA, $AB, $AC, $FF, $FF, $FF, $FF, $FF
TaiAni_Wait:	dc.b    7, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AF, $AE, $AD, $AD, $AD, $AD, $AD, $AD, $AD
		dc.b  $AD, $AF, $AE, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1
		dc.b  $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B2, $B3, $B4, $B3, $B4, $B3, $B4, $B3, $B4, $B3, $B4, $B2
		dc.b  $FE, $1C
TaiAni_Balance:	dc.b    9, $9A, $9A, $9B, $9B, $9A, $9A, $9B, $9B, $9A, $9A, $9B, $9B, $9A, $9A, $9B, $9B, $9A, $9A, $9B
		dc.b  $9B, $9A, $9B, $FF
TaiAni_LookUp:	dc.b $3F, $B0,	$FF	
TaiAni_Duck:	dc.b $3F, $99,	$FF	
TaiAni_SpinDash:	dc.b 0, $86,	$87, $88, $FF
TaiAni_Pose:	dc.b $F, $A5,	$A6, $FE,   1
TaiAni_Slide:	dc.b 3, $8E,	$8F, $8E, $8F, $FD,   0	
TaiAni_Fall1:	dc.b 1, $96, $97, $98, $96, $97, $98, $FD, $E, 0
TaiAni_Stop:	dc.b 3, $8E,	$8F, $8E, $8F, $FD,   0	
TaiAni_Spring:	dc.b 3, $8B,	$8C, $FF
TaiAni_LZHang:	dc.b 1, $9D,	$9E, $FF
TaiAni_Whip:	dc.b 3, $CB, $CC, $CD, $CE, $CF, $D0, $D1, $FD, $B
TaiAni_Fall2:	dc.b 5, $C9, $CA, $FF
TaiAni_FastRun:	dc.b  $FF, $D2,	$D3, $FF, $FF, $FF, $FF, $FF, $FF, $FF
TaiAni_Leap2:	dc.b $F, $43, $44, $FE,	1, 0
TaiAni_Surf:	dc.b 9, $B5,	$B6, $B7, $B8, $B9, $BA, $BB, $BC, $F
TaiAni_Bubble:	dc.b $B, $9F,	$9F,   3,   4, $FD,   0	
TaiAni_Death1:	dc.b $20, $9C,	$FF
TaiAni_Drown:	dc.b $2F, $9C,	$FF
TaiAni_Death2:	dc.b 3, $9C,	$FF	
TaiAni_Shrink:	dc.b 3,	$4E, $4F, $50, $51, $52, 0, $FE, 1, 0
TaiAni_Hurt:	dc.b $40, $8A,	$FF	
TaiAni_LZSlide:	dc.b 3, $8E,	$8F, $8E, $8F, $FD,   0
TaiAni_Blank:	dc.b $77, 0, $FD, 0
TaiAni_Fly1:	dc.b  $1F, $A0,	$FF	
TaiAni_Fly2:	dc.b  $1F, $A0,	$FF	
TaiAni_CarryRise:	dc.b  $1F, $A2,	$FF	
TaiAni_Carry:	dc.b  $1F, $A1,	$FF	
TaiAni_Tired:	dc.b   $B, $A3,	$A4, $FF 
TaiAni_Swim1:	dc.b	7, $BD,	$BE, $BF, $C0, $C1, $FF	
TaiAni_Swim2:	dc.b	3, $BD,	$BE, $BF, $C0, $C1, $FF	
TaiAni_SwimFall:	dc.b	4, $C7,	$C8, $FF 
TaiAni_SwimTired:	dc.b   $B, $C2,	$C5, $C6, $FF 
		even