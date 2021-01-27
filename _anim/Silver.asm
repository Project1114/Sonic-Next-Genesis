; ---------------------------------------------------------------------------
; Animation script - Silver
; ---------------------------------------------------------------------------
		dc.w SilAni_Walk-SilverAniData
		dc.w SilAni_Fly-SilverAniData
		dc.w SilAni_Levitate-SilverAniData
		dc.w SilAni_VSpring-SilverAniData
		dc.w SilAni_Push-SilverAniData
		dc.w SilAni_Wait-SilverAniData
		dc.w SilAni_Balance-SilverAniData
		dc.w SilAni_LookUp-SilverAniData
		dc.w SilAni_Duck-SilverAniData
		dc.w SilAni_Dash-SilverAniData
		dc.w SilAni_Pose-SilverAniData
		dc.w SilAni_Slide-SilverAniData
		dc.w SilAni_Fall-SilverAniData
		dc.w SilAni_Stop-SilverAniData
		dc.w SilAni_Jump-SilverAniData
		dc.w SilAni_PsyWalk-SilverAniData
		dc.w SilAni_Spring-SilverAniData
		dc.w SilAni_LZHang-SilverAniData
		dc.w SilAni_Psy-SilverAniData
		dc.w SilAni_Surf-SilverAniData
		dc.w SilAni_Bubble-SilverAniData
		dc.w SilAni_Death1-SilverAniData
		dc.w SilAni_Drown-SilverAniData
		dc.w SilAni_Death2-SilverAniData
		dc.w SilAni_Shrink-SilverAniData
		dc.w SilAni_Hurt-SilverAniData
		dc.w SilAni_LZSlide-SilverAniData
		dc.w SilAni_Blank-SilverAniData
		dc.w SilAni_Psy2-SilverAniData
		dc.w SilAni_Levitate-SilverAniData	; spawning
SilAni_Walk:	dc.b $FF, $1F, $20, $19, $1A, $1B, $1C,	$1D, $1E, $FF
SilAni_Fly:	dc.b $FF, $58, $59, $FF, $FF, $FF, $FF, $FF, $FF, $FF
SilAni_Levitate:	dc.b 3, $43, $FF
SilAni_VSpring:	dc.b 5, $42, $43, $FF
SilAni_Push:	dc.b $FD,$4B, $4C, $FF,$FF,$FF,$FF,$FF
SilAni_Wait:
	dc.b   5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
		dc.b  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
		dc.b  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 3, 3, 4, 4, 5, 5, 4, 4
		dc.b  5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 4, 4
		dc.b  5, 5, 4, 4, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 8, 9
		dc.b  9, 9, 9, 9, 9, 8, 8, $FE, $35
SilAni_Balance:	dc.b   7, $4E,	$4F, $FF
SilAni_LookUp:	dc.b 3,	$44, $45, $FE,1, 0
SilAni_Duck:	dc.b 3, $54, $56, $57, $FE,1
SilAni_Dash:	dc.b 1,$56,$FF
SilAni_Pose:	dc.b 	7, $39,	$3A, $3B, $3C, $3D, $3E, $FE,	 1, 0
SilAni_Slide:	dc.b $3F, 0, $FF, 0
SilAni_Fall:	dc.b 3, $47, $48, $49, $4A, $FE, 2, 0
SilAni_Stop:	dc.b   3, $39, $FD,   0 ; halt/skidding animation
SilAni_Jump:	dc.b 3, $46, $46, $46, $46, $47, $48, $49, $4A, $FE, 2, 0
SilAni_PsyWalk:	dc.b $FF, $60, $61, $62, $63, $64, $65,	$66, $67, $FF
SilAni_Spring:	dc.b   $20,$46,$FF,0
SilAni_LZHang:	dc.b   1,$4B,$FF
SilAni_Psy:		dc.b 3, $3F, $40, $41, $FE, 1
SilAni_Leap1:	dc.b $F, 0,	$FE, 1
SilAni_Leap2:	dc.b $F, 0, $FE,	1, 0
SilAni_Surf:	dc.b $FE,$D, $E, $F, $10, $FF
SilAni_Bubble:	dc.b  $B, $4D, $FD,   0 ; breathe
SilAni_Death1:	dc.b $20,$52,$FF
SilAni_Drown:	dc.b $20,$4D,$FF
SilAni_Death2:	dc.b $20,$52,$FF
SilAni_Shrink:	dc.b 3,	0, $FE, 1, 0
SilAni_Hurt:	dc.b $40,$4F,$FF
SilAni_LZSlide:	dc.b   7,$50, 51, $FF
SilAni_Blank:	dc.b $77,  0,$FD,  0
SilAni_Psy2:	dc.b 3,	$41, $FF, 0
SilAni_Float4:	dc.b 3,	0, $FD, 0
	even