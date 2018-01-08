; ---------------------------------------------------------------------------
; Animation script - Shadow
; ---------------------------------------------------------------------------
		dc.w ShaAni_Walk-ShadowAniData
		dc.w ShaAni_Run-ShadowAniData
		dc.w ShaAni_Roll-ShadowAniData
		dc.w ShaAni_Roll2-ShadowAniData
		dc.w ShaAni_Push-ShadowAniData
		dc.w ShaAni_Wait-ShadowAniData
		dc.w ShaAni_Balance-ShadowAniData
		dc.w ShaAni_LookUp-ShadowAniData
		dc.w ShaAni_Duck-ShadowAniData
		dc.w ShaAni_SpinDash-ShadowAniData
		dc.w ShaAni_Pose-ShadowAniData
		dc.w ShaAni_Slide-ShadowAniData
		dc.w ShaAni_Fall-ShadowAniData
		dc.w ShaAni_Stop-ShadowAniData
		dc.w ShaAni_FrontBalance-ShadowAniData
		dc.w ShaAni_BackBalance-ShadowAniData
		dc.w ShaAni_Spring-ShadowAniData
		dc.w ShaAni_LZHang-ShadowAniData
		dc.w ShaAni_Leap1-ShadowAniData
		dc.w ShaAni_Leap2-ShadowAniData
		dc.w ShaAni_Surf-ShadowAniData
		dc.w ShaAni_Bubble-ShadowAniData
		dc.w ShaAni_Death1-ShadowAniData
		dc.w ShaAni_Drown-ShadowAniData
		dc.w ShaAni_Death2-ShadowAniData
		dc.w ShaAni_Shrink-ShadowAniData
		dc.w ShaAni_Hurt-ShadowAniData
		dc.w ShaAni_LZSlide-ShadowAniData
		dc.w ShaAni_Blank-ShadowAniData
		dc.w ShaAni_Float3-ShadowAniData
		dc.w ShaAni_Float4-ShadowAniData
ShaAni_Walk:	dc.b $FF, $49, $4A, $43, $44, $45, $46, $47, $48, $FF
ShaAni_Run:	dc.b $FF, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7A, $7B, $FF, $FF, $FF
ShaAni_Roll:	dc.b $FE, $2D, $2E, $2F, $30, $2C, $FF,	$FF
ShaAni_Roll2:	dc.b $FE, $2D, $2E, $2C, $2F, $30, $2C,	$FF
ShaAni_Push:	dc.b $FD, $33, $34, $35, $36, $FF, $FF,	$FF
ShaAni_Wait:	dc.b   5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
		dc.b  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
		dc.b  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 7, 7, 7, 7, 9, 9, 8, 8
		dc.b  9, 9, 8, 8, 9, 9, 8, 8, 9, 9, 8, 8, 9, 9, 8, 9, 9, 9, 8, 8
		dc.b  9, 9, 8, 8, 9, 9, $A, $A, $A, $A, $A, $A, $B, $B, $B, $B, $B, $B, $C, $D
		dc.b  $D, $D, $D, $D, $D, $C, $C, $FE, $35
ShaAni_Balance:	dc.b 7, $3A, $3B, $3C, $FF
ShaAni_LookUp:	dc.b 3,	$E, $F, $FE,1, 0
ShaAni_Duck:	dc.b 3, $17, $18, $FE,1, 0
ShaAni_SpinDash:	dc.b 0, $26, $27, $26, $28, $26, $29, $26, $2A, $26, $2B, $FF
ShaAni_Pose:	dc.b 7, 2, 3, 4, 5, $FE, 1,0
ShaAni_Slide:	dc.b $3F, $41, $FF, 0
ShaAni_Fall:	dc.b 5, $2D, $2E, $2F, $30, $6F, $FE, 1
ShaAni_Stop:	dc.b 7,	$10, $11, $12, $13, $FE,1, 0
ShaAni_FrontBalance:	dc.b 7, $3A, $3B, $3C, $FF
ShaAni_BackBalance:	dc.b 7, $14, $15, $16, $FF
ShaAni_Spring:	dc.b 5, $63, $64, $65, $66, $67, $68, $69, $6A, $6B, $6C, $6D, $6E, $FD, $C
ShaAni_LZHang:	dc.b 4,	$21, $FF
ShaAni_Leap1:	dc.b $F, $43, $43, $43,	$FE, 1
ShaAni_Leap2:	dc.b $F, $43, $44, $FE,	1, 0
ShaAni_Surf:	dc.b $FE, $2D, $2E, $2C, $2F, $30, $2C,	$FF
ShaAni_Bubble:	dc.b $FF, $12, $FF,	0, 0
ShaAni_Death1:	dc.b $20, $38, $FF, 0
ShaAni_Drown:	dc.b $2F, $39, $FF, 0
ShaAni_Death2:	dc.b 3,	$37, $FF, 0
ShaAni_Shrink:	dc.b 3,	$4E, $4F, $50, $51, $52, 0, $FE, 1, 0
ShaAni_Hurt:	dc.b 7,	$3E, $FF, 0
ShaAni_LZSlide:	dc.b 7, $3D, $3E, $FF
ShaAni_Blank:	dc.b $77, 0, $FD, 0
ShaAni_Float3:	dc.b 3,	$3C, $3D, $53, $3E, $54, $FF, 0
ShaAni_Float4:	dc.b 3,	$3C, $FD, 0
		even