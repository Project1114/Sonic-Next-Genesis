; ---------------------------------------------------------------------------
; Animation script - special stage entry effect from beta
; ---------------------------------------------------------------------------
		dc.w byte2_14356-Ani_obj4A
		dc.w byte2_1435E-Ani_obj4A
		dc.w byte2_14364-Ani_obj4A
		dc.w byte2_1437E-Ani_obj4A
		dc.w byte2_14398-Ani_obj4A
byte2_14356:	dc.b 1,	1, 0, 2, 0, 3, 0, $FF
byte2_1435E:	dc.b 3,	1, 2, 3, 4, 5, 6, 7, 8, $FF
byte2_14364:	dc.b 3, 9, $A, $B, $C, $FF
byte2_1437E:	dc.b 3, 9, 0, $A, $B, 0, $C, $FF
byte2_14398:	dc.b 3, 9, 0, $A, 0, $B, 0, $C, $FF
		even