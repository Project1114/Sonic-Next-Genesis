; ---------------------------------------------------------------------------
; Animation script - special stage entry effect from beta
; ---------------------------------------------------------------------------
		dc.w SSRing-Ani_obj4B
		dc.w SSFlash-Ani_obj4B
SSRing:		dc.b 7,	0, 1, 2, 3, 4, 5, 6, 7, 8, 9, $A, $B, $FE, 4, 3, 2, 1
SSFlash:	dc.b 9, $C, $D, $E, $F, $10, $11, $FF
		even