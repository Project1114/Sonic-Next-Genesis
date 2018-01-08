; ---------------------------------------------------------------------------
; Animation script - Orbinaut enemy
; ---------------------------------------------------------------------------
		dc.w byte_11EDA-Ani_obj60
		dc.w byte_11EDE-Ani_obj60
		dc.w byte_11EDF-Ani_obj60
byte_11EDA:	dc.b $F, 0, $FF, 0
byte_11EDE:	dc.b $F, 1, 2, $FE, 1, 0
byte_11EDF: dc.b 5, 3, 4, $FF
		even