; ---------------------------------------------------------------------------
; Animation script - signpost
; ---------------------------------------------------------------------------
		dc.w byte_ED24-Ani_obj0D
		dc.w byte_ED28-Ani_obj0D
		dc.w byte_ED34-Ani_obj0D
byte_ED24:	dc.b $F, 0, $FF, 0
byte_ED28:	dc.b 1,	0, 1, 2, 3, $FF
byte_ED34:	dc.b 1,	0, 1, 2, 3, 4, $FE,1
		even